<template>
  <app-breadcrumbs></app-breadcrumbs>
  <div class="editBlock pb-1">
    <h4>EDIT MENU</h4>
    <p>
      Click to edit the menu title and edit sections, use the icons to edit,
      move items, and delete.<br />
      To edit the header or footer, hover over the item for options.
    </p>
    {{template}}
  </div>

<component
    v-bind:is="template"
    :menu_type="menu_type"
    :menu="getMenu"
  ></component> 

  <div class="edit-modal">
    <app-modal v-show="ModalStatus" @close="closeModal">
      {{ sectionById(sectionId) }}
      <template v-slot:body>
        <form name="section_edit">
          <div class="form-group">
            <label for="title" class="control-label"
              >Title {{ sectionId }}</label>
            <input
              class="form-control"
              id="title"
              name="title"
              type="text"
              value="COCKTAILS"
            />
          </div>
          <div class="form-group">
            <label for="subtitle" class="control-label">Subtitle</label>
            <textarea
              class="form-control"
              rows="3"
              id="subtitle"
              name="subtitle"
              type="text"
            ></textarea>
          </div>
          <div class="row justify-space-between">
            <div class="col-4-sm">
              <div class="form-group">
                <label for="title" class="control-label">Section Price</label>
                <input
                  class="form-control"
                  id="section_price"
                  name="section_price"
                  type="text"
                  value=""
                />
              </div>
            </div>
            <div class="col-6-sm">
              <div class="form-group">
                <label class="control-label" for="origem">Style</label>
                <select id="style" name="style" class="form-control">
                  <option value="No_Style">No_Style</option>
                  <option value="No_Style">No_Style</option>
                  <option value="Boxed">Boxed</option>
                  <option value="Orange_Box">Orange_Box</option>
                  <option value="Side_by_Side">Side_by_Side</option>
                  <option value="Small_Title">Small_Title</option>
                  <option value="Short_Spaces">Short_Spaces</option>
                  <option value="BoxedCocktails">BoxedCocktails</option>
                  <option value="BoxedSweets">BoxedSweets</option>
                </select>
              </div>
            </div>
          </div>
        </form>
      </template>
      <template v-slot:footer>
        <button class="btn btn-default" @click="closeModal">Cancel</button>
        <button class="btn btn-primary ml-1" @click="ok">Ok</button>
      </template>
    </app-modal>
  </div>

  <app-action-footer></app-action-footer>
</template>

<script>
import AppBreadcrumbs from "../components/Breadcrumbs.vue";
import AppActionFooter from "../components/ActionFooter.vue";
import AppModal from "../components/Modals/Modal.vue";
import { mapGetters, mapActions } from "vuex";

import azulindaHalf from "../templates/azulindaHalf.vue";
import azulindaFull from "../templates/azulindaFull.vue";

export default {
  components: {
    AppBreadcrumbs,
    AppActionFooter,
    azulindaHalf,
    azulindaFull,
    AppModal,
  },
  data() {
    return {
      template: "",
      menu_type: {},
      menu: {}
    };
  },
  methods: {
    ...mapActions("menu_sections", ["getMenuSections"]),
    ...mapActions("modal", ["setModalStatus"]),
    closeModal() {
      this.setModalStatus(0);
    },
    ok() {
      this.$emit("ok");
    },
  },
  computed: {
    ...mapGetters("menu_types", ["getTemplateName"]),
    ...mapGetters("menu_types", ["getTypeByShortName"]),

    ...mapGetters("menu_sections", { sections: "all" }),

    ...mapGetters("modal", { ModalStatus: "getModalStatus" }),

    // ...mapGetters("menu_sections", ["sectionId"]),
    ...mapGetters("menu_sections", ["sectionById"]),
    ...mapGetters("menus", ["getMenu"] ),
  },
  created() {
    this.menu = this.getMenu;
    this.menu_type = this.getTypeByShortName(this.$route.params.menu_shortname);
    this.template = this.getTemplateName(this.$route.params.menu_shortname); 
  },
  mounted(){
 this.getMenuSections(this.menu_type.id);
  }
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
