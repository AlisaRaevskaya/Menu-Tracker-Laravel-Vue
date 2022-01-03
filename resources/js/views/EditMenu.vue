<template>
  <app-breadcrumbs></app-breadcrumbs>

  <div class="editBlock">
    <h4>EDIT MENU</h4>
    <h3>{{getMenuName}}</h3>
    <p>
      Click to edit the menu title and edit sections, use the icons to edit,
      move items, and delete.<br />
      To edit the header or footer, hover over the item for options.
    </p>

    <!-- <button class="editBlock__close js-editBlock-close">Close</button> -->
  </div>
<component v-bind:is="template" :menu_item="menu_item"></component>

</template>

<script>
import AppBreadcrumbs from "../components/Breadcrumbs.vue";
import { mapGetters, mapActions } from "vuex";
import LaluceDrinks from "../templates/LaluceDrinks.vue";

export default {
  components: {
    AppBreadcrumbs,
    LaluceDrinks
  },
  data() {
    return {
      template: "",
      menu_item: ""
    };
  },
  methods:{
  },
  computed: {
    ...mapGetters("menu_types", ["getTemplateName"]),
    ...mapGetters("menu_types", ["getItemByShortName"]),
     ...mapGetters("menus", ["getMenuName"]),
  },
  created() {
    this.template = this.getTemplateName(this.$route.params.menu_type_name);
    this.menu_item = this.getItemByShortName(this.$route.params.menu_type_name);
  },
};
</script>