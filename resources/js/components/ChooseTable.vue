<template>
 <app-modal :chosen_menu="chosen_menu" v-if="isShown" :shortname="shortname" :branch_name="branch_name"></app-modal>
  <div class="col-12-lg bordered mt-2" v-show="!isShown">
    <h5 class="pt-1">CHOOSE HOW TO BUILD YOUR MENU</h5>
    <div class="row pt-1">
      <div class="col-2-md"></div>

      <div class="col-4-md" style="">
        <div class="form-group text-left">
          <label class="control-label startLabel" for="loja"
            >Create From Template</label
          >
          <button
            type="button"
            name="menu_saved_design_add"
            class="btn btn-default btn-block biggerBtn"
            @click="showModal()"
          >
            START
          </button>
        </div>
      </div>

      <div class="col-md-4 menu_saved_design_outter" style="">
        <div class="form-group text-left">
          <label class="control-label startLabel selectIcon" for="loja"
            >Create From Saved Design</label
          >
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
import AppModal from "../components/Modal.vue";

export default {
  components: {
    AppModal,
  },
    props: {
    chosen_menu: String,
    shortname: String,
    branch_name:String,
  },
  data() {
    return {
      isShown: false,
    };
  },
  methods: {
    showModal() {
      this.isShown = true;
    },
  },
};
</script>
