<template>
  <div class="choose-modal">
    <app-menu-save-form
      :chosen_menu_type="chosen_menu_type"
      :isShown="isShown"
      :branch_name="branch_name"
      :shortname="shortname"
      :chosen_menu_type_id ="chosen_menu_type_id"
    ></app-menu-save-form>
  </div>
  <div class="col-12-lg bordered mt-2" v-show="!isShown">
    <h5 class="pt-1">CHOOSE HOW TO BUILD YOUR MENU</h5>

    <div class="row justify-space-around pb-1">
      <div class="col-4-sm">
        <div class="form-group text-left">
          <label class="control-label startLabel">Create From Template</label>
          <button
            type="button"
            name="menu_saved_design_add"
            class="btn btn-default btn-block biggerBtn"
            @click="showModal"
          >
            START
          </button>
        </div>
      </div>
      <div class="col-4-sm menu_saved_design_outter">
        <div class="form-group text-left">
          <label class="control-label">Create From Saved Design</label>
          <select
            id="menu_saved_design"
            name="menu_saved_design"
            class="form-control"
          >
            <option value="" name="">Select One</option>
          </select>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters, mapActions } from "vuex";

import AppMenuSaveForm from "../components/Forms/MenuSaveForm.vue";

export default {
  props: {
    chosen_menu_type: String,
    chosen_menu_type_id: Number,
    shortname: String,
    branch_name: String,
  },
  data() {
    return {
      isShown: false,
    };
  },
  components: {
    AppMenuSaveForm,
  },
  methods: {
    closeModal() {
      this.isShown = false;
    },
    showModal() {
      this.isShown = true;
    },
  },
  computed: {
    ...mapGetters("menus", ["getMenuName"]),
  },
};
</script>
