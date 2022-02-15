<template>
  <app-modal
    v-show="ModalStatus"
    @close="closeModal"
    :hasForm="true"
    @submitForm="submitSectionForm"
  >
    <template v-slot:body>
      <div class="form-group">
        {{ section.title }}
        <label for="title" class="control-label">Title</label>
        <Field
          v-model="section.title"
          :rules="isRequired"
          type="text"
          name="section_title"
          class="form-control"
        />

        <ErrorMessage
          name="section_title"
          class="pr-1 display-block color-red"
        />
      </div>
      <div class="form-group">
        <label for="subtitle" class="control-label">Subtitle</label>
        <Field
          type="textarea"
          v-model="section.subtitle"
          name="section_subtitle"
          class="form-control"
        />
        <ErrorMessage
          name="section_subtitle"
          class="pr-1 display-block color-red"
        />
      </div>
      <div class="row justify-space-between">
        <div class="col-4-sm">
          <div class="form-group">
            <label for="title" class="control-label">Section Price</label>

            <Field
              v-model="section.price"
              :rules="isRequired"
              type="text"
              name="section_price"
              class="form-control"
            />
            <ErrorMessage
              name="section_price"
              class="pr-1 display-block color-red"
            />
          </div>
        </div>
        <div class="col-6-sm">
          <div class="form-group">
            <label class="control-label" for="origem">Style</label>
            <Field name="style" as="select" class="form-control">
              <option value="No_Style" disabled>No_Style</option>
              <option value="No_Style">No_Style</option>
              <option value="Boxed">Boxed</option>
              <option value="Orange_Box">Orange_Box</option>
              <option value="Side_by_Side">Side_by_Side</option>
              <option value="Small_Title">Small_Title</option>
              <option value="Short_Spaces">Short_Spaces</option>
              <option value="BoxedCocktails">BoxedCocktails</option>
              <option value="BoxedSweets">BoxedSweets</option>
              <!-- <option v-for="drink in drinks" :key="drink" :value="drink" :selected="value && value.includes(drink)">{{ drink }}</option> -->
            </Field>
          </div>
        </div>
        <!-- <Field
          v-model="menu_type_id"
          type="text"
          class="form-control display-none"
        />
        <Field
          v-model="menu_id"
          type="text"
          class="form-control display-none"
        /> -->
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
  props: {
    menu_type_id: Object,
    menu_id: Object,
  },
  components: {
    AppModal,
    Field,
    ErrorMessage,
  },
  data() {
    return {
      // section: {},
    };
  },
  methods: {
    ...mapActions("modal", ["setModalStatus"]),
    ...mapActions("menu_sections", ["saveSection"]),
    closeModal() {
      this.setModalStatus(0);
    },
    isRequired(value) {
      if (value && value.trim()) {
        return true;
      }
      return "This field is required";
    },
    ok() {
      this.$emit("ok");
    },
    submitSectionForm(value) {
      // this.saveSection(value);
      // this.closeModal();
    },
  },
  computed: {
    ...mapGetters("modal", { ModalStatus: "getModalStatus" }),
    ...mapGetters("menu_sections", { section: "getSection" }),
  },
};
</script>
