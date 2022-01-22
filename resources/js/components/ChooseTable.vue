<template>
  <div class="choose-modal">
    <app-modal v-show="isShown" @close="closeModal">
      <template v-slot:body>
        <form name="design_add">
          <div>
            <h4>Confirm Meal Period And Name</h4>
            <div>
              <span class="control-label pr-2">Type</span><br />
              <div class="bg-light-gray p-1 ">
                {{ chosen_menu }}
              </div>
            </div>
            <div class="form-group">
              <div class="mt-1 row">
                <label
                  class="control-label modal-title pr-2"
                  for="{{menu_name}}"
                  >Name</label
                >
                <input
                  type="text"
                  id="menu_name"
                  name="menu_name"
                  class="form-control p-1 modal-field"
                  v-model="menu_name"
                />
              </div>
            </div>
            {{ getMenuName }}
          </div>
        </form>
      </template>

      <template v-slot:footer>
        <button class="btn btn-primary" @click="redirectPage">
          Get Started
        </button></template
      >
    </app-modal>
  </div>
  <div class="col-12-lg bordered mt-2" v-show="!isShown">
    <h5 class="pt-1">CHOOSE HOW TO BUILD YOUR MENU</h5>

    <div class="row justify-space-around pb-1">
      <div class="col-4-sm">
        <div class="form-group text-left">
          <label class="control-label startLabel" for="loja">Create From Template</label>
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
      <div class="col-4-sm menu_saved_design_outter" >
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
import AppModal from "../components/Modals/Modal.vue";
import { mapGetters, mapActions } from "vuex";

export default {
  props: {
    chosen_menu: String,
    shortname: String,
    branch_name: String,
  },
  components: {
    AppModal,
  },
  data() {
    return {
      menu_name: "",
      isShown: false,
    };
  },
  methods: {
    redirectPage() {
      this.$router.push({
        name: "menu_edit",
        params: { branch: this.branch_name, menu_shortname: this.shortname },
      });
    },
    ...mapActions("menus", ["updateMenuName"]),
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
  updated() {
    this.updateMenuName(this.menu_name);
  },
};
</script>
