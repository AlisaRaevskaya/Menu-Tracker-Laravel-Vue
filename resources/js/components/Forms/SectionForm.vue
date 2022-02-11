<template>
  <app-modal
    v-show="ModalStatus"
    @close="closeModal"
    :hasForm="true"
    @submitForm="submitSectionForm"
  >
    <template v-slot:body>
      <div class="form-group">
         <label for="title" class="control-label">Title</label>
        <Field
          :value="section.title"
          :rules="isRequired"
          type="text"
          name="section_title"
          class="form-control"
        />
        <ErrorMessage name="menu_field" class="pr-1 display-block color-red" />
      </div>
      <div class="form-group">
        <label for="subtitle" class="control-label">Subtitle</label>
        <textarea
          class="form-control"
          rows="3"
          id="subtitle"
          name="subtitle"
          type="text"
          :value="section.subtitle"
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
              :value="section.price"
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
    </template>
    <template v-slot:footer>
      <button class="btn btn-default" @click="closeModal">Cancel</button>
      <button class="btn btn-primary ml-1" @click="ok">Ok</button>
    </template>
  </app-modal>
</template>

<script>
import AppModal from "../../components/Modals/Modal.vue";
import { Field, ErrorMessage } from "vee-validate";
import { mapGetters, mapActions, mapState } from "vuex";

export default {
  props:{
    section:{}
  },
  components: {
    AppModal,
    Field,
    ErrorMessage,
  },
  methods: {
    closeModal() {
      this.setModalStatus(0);
    },
    ok() {
      this.$emit("ok");
    },
    submitSectionForm() {
      // this.saveMenu(this.menu_object);
      //   this.setModalStatus(0);
    },
    ...mapActions("modal", ["setModalStatus"]),
  },
  computed: {
    ...mapGetters("modal", { ModalStatus: "getModalStatus" }),
  },
};
</script>
