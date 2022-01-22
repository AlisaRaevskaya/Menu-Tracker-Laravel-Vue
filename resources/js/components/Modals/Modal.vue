<template>
  <transition name="modal-fade">
    <div class="modal-backdrop">
      <div class="modal">
        <div class="modal-header">
          <div class="dialog-header">
            <slot name="header">
              <button type="button" class="btn-close" @click="close">x</button>
            </slot>
          </div>
        </div>
        <div class="modal-body">
          <div class="dialog-body">
            <div class="dialog-message">
              <slot name="body">This is the default body! </slot>
            </div>
          </div>
        </div>
        <div class="modal-footer" style="display: block">
          <div class="dialog-footer">
            <slot name="footer"> This is the deafult footer ! </slot>
          </div>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>
import { FontAwesomeIcon } from "@fortawesome/vue-fontawesome";
import { library } from "@fortawesome/fontawesome-svg-core";
import { faEdit } from "@fortawesome/free-solid-svg-icons";
import { faTrashAlt } from "@fortawesome/free-solid-svg-icons";
import { faLongArrowAltDown } from "@fortawesome/free-solid-svg-icons";
import { faCopy } from "@fortawesome/free-solid-svg-icons";

library.add(faEdit);
library.add(faTrashAlt);
library.add(faLongArrowAltDown);
library.add(faCopy);

export default {
  props: {
    section_id: Number,
  },
  components: {
    FontAwesomeIcon,
  },
  methods: {
    close() {
      this.$emit("close");
    },
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
