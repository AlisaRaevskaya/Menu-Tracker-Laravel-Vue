<template>
  <app-breadcrumbs></app-breadcrumbs>
  <div class="editBlock">
    <h4>EDIT MENU</h4>
    <h3>{{ getMenuName }}</h3>
    <p>
      Click to edit the menu title and edit sections, use the icons to edit,
      move items, and delete.<br />
      To edit the header or footer, hover over the item for options.
    </p>

    <!-- <button class="editBlock__close js-editBlock-close">Close</button> -->
  </div>
  <component
    v-bind:is="template"
    :menu_type="menu_type"
    :menu_name="getMenuName"
  ></component>
</template>

<script>
import AppBreadcrumbs from "../components/Breadcrumbs.vue";
import { mapGetters, mapActions } from "vuex";

import azulindaHalf from "../templates/azulindaHalf.vue";
import azulindaFull from "../templates/azulindaFull.vue";

export default {
  components: {
    AppBreadcrumbs,
    azulindaHalf,
    azulindaFull,
  },
  data() {
    return {
      template: "",
      menu_type: {},
    };
  },
  methods: {
    ...mapActions("menu_sections", ["getMenuSections"]),
  },
  computed: {
    ...mapGetters("menu_types", ["getTemplateName"]),
    ...mapGetters("menu_types", ["getTypeByShortName"]),
    ...mapGetters("menus", ["getMenuName"]),
    ...mapGetters("menu_sections", { sections: "all" }),
  },
  created() {
    this.menu_type = this.getTypeByShortName(this.$route.params.menu_shortname);
    this.template = this.getTemplateName(this.$route.params.menu_shortname);
    this.getMenuSections;
  },
};
</script>