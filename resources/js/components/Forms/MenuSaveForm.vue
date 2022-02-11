<template>
  <app-modal
    v-show="isShown"
    @close="closeModal"
    :hasForm="true"
    @submitForm="submitForm"
  >
    <template v-slot:body>
      <div>
        <h4>Confirm Meal Period And Name</h4>
        <div>
          <span class="control-label pr-2">Type</span><br />
          <div class="bg-light-gray p-1">
            {{ chosen_menu_type }}
          </div>
        </div>
        <div class="form-group">
          <div class="mt-1 row">
            <label class="control-label pr-2">Name</label>
            <Field
              v-model="menu_object.menu_name"
              :rules="isRequired"
              type="text"
              name="menu_field"
              class="form-control p-1"
            />
            <ErrorMessage
              name="menu_field"
              class="pr-1 display-block color-red"
            />
          </div>
        </div>
        {{ setTypeId }}
        {{ getMessage }}
      </div>
    </template>
    <template v-slot:footer>
      <!-- <button class="btn btn-primary" type="submit" @click="redirectPage"> <-- -->
      <button class="btn btn-primary" type="submit">Get Started</button>
    </template>
  </app-modal>
</template>

<script>
import AppModal from "../Modals/Modal.vue";
import { Field, ErrorMessage } from "vee-validate";
import { mapGetters, mapActions } from "vuex";

export default {
  props: {
    isShown: Boolean,
    chosen_menu_type: String,
    chosen_menu_type_id: Number,
    shortname: String,
    branch_name: String,
  },
  components: {
    AppModal,
    Field,
    ErrorMessage,
  },
  data() {
    return {
      message: "",
      menu_object: {
        menu_name: "",
        user_id: 1,
        type_id: "",
      },
    };
  },
  methods: {
    ...mapActions("menus", ["addMenu"]),
    isRequired(value) {
      if (value && value.trim()) {
        return true;
      }
      return "This field is required";
    },
    // closeModal() {
    //   this.isShown = false;
    // },
    // showModal() {
    //   this.isShown = true;
    // },

    submitForm() {
      this.addMenu(this.menu_object);

      setTimeout(() => {
        this.redirectPage;
      }, 1000);
    },
  },
  computed: {
    redirectPage() {
      this.$router.push({
        name: "menu_edit",
        params: { branch: this.branch_name, menu_shortname: this.shortname },
      });
    },
    ...mapGetters("menus", ["getMessage"]),
    setTypeId() {
      this.menu_object.type_id = this.chosen_menu_type_id;
    },
  },
};
</script>