<template>
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <div class="bootstrap-dialog-close-button" style="display: block">
          <header class="modal-header">
            <slot name="header"></slot>
            <button type="button" class="btn-close" @click="close">x</button>
          </header>
        </div>
      </div>
      <div class="modal-body">
        <form name="design_add">
          <div class="modalPadding">
            <h4>Confirm Meal Period And Name</h4>
            <div>
              <span class="control-label modal-title pr-2">Type</span><br />
              <div class="bg-light-gray p-1 modal-field">
                {{ chosen_menu }}{{ branch_name }}
              </div>
            </div>
            <div class="mt-1 row">
              <label class="control-label modal-title pr-2" for="menu_name"
                >Name</label
              ><input
                type="text"
                id="menu_name"
                name="menu_name"
                class="form-control p-1 modal-field"
                v-model="menu_name"
              />
            </div>
            {{getMenuName}}
          </div>
        </form>
      </div>
      <div class="modal-footer" style="display: block">
        <div class="bootstrap-dialog-footer">
          <div class="bootstrap-dialog-footer-buttons">
            <button
              class="btn btn-primary"
              @click="redirectPage"
            >
              Get Started
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters, mapActions } from "vuex";

export default {
  props: {
    chosen_menu: String,
    shortname: String,
    branch_name: String,
  },
  data() {
    return {
      menu_name: "",
    };
  },
  methods: {
    close() {
      this.$emit("close");
    },
    redirectPage() {
      this.$router.push({
        name: "menu_edit",
        params: { branch: this.branch_name, menu_type_name: this.shortname },
      });
    },
    ...mapActions("menus", ["updateMenuName"]),
  },
  computed:{
      ...mapGetters("menus", ["getMenuName"]),
  },
  watch: {
    menu_name() {
      console.log(this.menu_name);
    },
  },
  updated(){
    this.updateMenuName(this.menu_name);
   
  }
};
</script>