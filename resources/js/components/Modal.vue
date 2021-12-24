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
              <div class="bg-gray p-1 modal-field">{{chosen_menu}}{{concept_name}}</div>
            </div>
            <div class="mt-1 row">
              <label class="control-label modal-title pr-2" for="menu_name"
                >Name</label
              ><input
                type="text"
                id="menu_name"
                name="menu_name"
                class="form-control p-1 modal-field"
                value=""
              />
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer" style="display: block">
        <div class="bootstrap-dialog-footer">
          <div class="bootstrap-dialog-footer-buttons">
            <button class="btn btn-primary" @click="redirectPage">Get Started</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    chosen_menu: String,
    shortname: String,
    concept_name: String
  },
  methods: {
    close() {
      this.$emit("close");
    },
    redirectPage(){
      this.$router.push({ name:'menu_edit', params: { concept: this.concept_name, menu_name: this.shortname }});   
    }
  },
};
</script>