<template>
  <app-breadcrumbs></app-breadcrumbs>
  <div class="editBlock pb-1">
    <h4>EDIT MENU</h4>
    <p>
      Click to edit the menu title and edit sections, use the icons to edit,
      move items, and delete.<br />
      To edit the header or footer, hover over the item for options.
    </p>
  </div>

  <component
    v-bind:is="template"
    :menu_type="menu_type"
    :menu="getMenu"
    :sections="sections"
  ></component>

  <div class="edit-modal">
    <app-section-form></app-section-form>
  </div>

  <app-action-footer></app-action-footer>
</template>

<script>
import AppBreadcrumbs from "../components/Breadcrumbs.vue";
import AppActionFooter from "../components/ActionFooter.vue";
import AppSectionForm from "../components/Forms/SectionForm.vue";

import { mapGetters, mapActions, mapState } from "vuex";
import azulindaHalf from "../templates/azulindaHalf.vue";
import azulindaFull from "../templates/azulindaFull.vue";

export default {
  components: {
    AppBreadcrumbs,
    AppActionFooter,
    azulindaHalf,
    azulindaFull,
    AppSectionForm
  },
  data() {
    return {
      template: "",
      menu_type: {},
      menu: {},
    };
  },
  methods: {
    ...mapActions("menu_sections", ["getMenuSections"]),
  },
  computed: {
    ...mapGetters("menu_types", ["getTemplateName"]),
    ...mapGetters("menu_types", ["getTypeByShortName"]),

    ...mapGetters("menu_sections", { sections: "all" }),

    // ...mapGetters("menu_sections", { section: "getSection" }),
    ...mapGetters("menus", ["getMenu"]),
  },
  created() {
    this.menu = this.getMenu;
    this.menu_type = this.getTypeByShortName(this.$route.params.menu_shortname);
    this.template = this.getTemplateName(this.$route.params.menu_shortname);
  },
  mounted() {
  this.getMenuSections(this.menu_type.id);
  },
};
</script>

<style>
.modal-fade-enter,
.modal-fade-leave-to {
  opacity: 0;
}

.modal-fade-enter-active,
.modal-fade-leave-active {
  transition: opacity 0.5s ease;
}
</style>
