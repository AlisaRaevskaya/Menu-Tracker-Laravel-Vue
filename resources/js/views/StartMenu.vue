<template>
  <app-breadcrumbs></app-breadcrumbs>
  <div class="container">
    <h2 class="mt-1 mb-1 text-uppercase">Choose New Menu</h2>
    <div>
      <div class="text-left">
        <label class="control-label" for="loja">Select Meal Period</label>
        {{ setMenus }}
{{getTypeId}}
        <select
          id="menu_type"
          name="menu_type"
          class="form-control mt-2"
          v-model="selected"
        >
          <option disabled value="">Select Template</option>

          <option
            v-for="menu in menus"
            :key="menu.id"
            :value="{
              menu_id: menu.id,
              shortname: menu.shortname,
              name: menu.name,
            }"
          >
            {{ menu.name }}
          </option>
        </select>
        <div>
          <span>Chosen: {{ selected.menu_id }}</span>
        </div>
      </div>
      <div v-show="isSelected">
        <choose-table
          :chosen_menu="selected.name"
          :shortname="selected.shortname"
          :branch_name="this.$route.params.branch"
        ></choose-table>
        <template-image
          :menu_name="selected.name"
          :image_name="selected.shortname"
        ></template-image>
      </div>
    </div>
  </div>
</template>

<script>
import AppBreadcrumbs from "../components/Breadcrumbs.vue";
import TemplateImage from "../components/TemplateImage.vue";
import ChooseTable from "../components/ChooseTable.vue";
import { mapGetters, mapActions } from "vuex";

export default {
  components: {
    AppBreadcrumbs,
    TemplateImage,
    ChooseTable,
  },
  data() {
    return {
      menus: [],
      selected: {},
    };
  },
  methods: {
    ...mapActions("menu_types", ["getAllMenuTypes"]),
    ...mapActions("menu_types", ["setMenuTypeId"]),
  },
  computed: {
    ...mapGetters("menu_types", { types: "all" }),
    ...mapGetters("menu_types", ["getMenuTypes"]),
    ...mapGetters("menu_types", ["getTypeId"]),

    // ...mapGetters("branches", ["getBranchName"]),
    ...mapGetters("branches", ["getBranchId"]),
    //get menu objects

    getBranchName() {
      return this.menus.find((item) => item.name);
    },
    isSelected() {
      return Object.keys(this.selected).length > 0;
    },
    strId() {
      return this.getBranchId(this.$route.params.branch);
    },
    validId() {
      return /^[1-9]+\d*$/.test(this.strId);
    },
    getId() {
      return parseInt(this.strId);
    },
    getMenus() {
      return this.getMenuTypes(this.getId);
    },
    setMenus() {
      this.getMenus ? (this.menus = this.getMenus) : (this.menus = "  ");
    },
  },
  created() {
    this.getAllMenuTypes();
    // this.setMenus;
  },
  updated(){
 this.setMenuTypeId(this.selected.menu_id);
  }
  
};
</script>