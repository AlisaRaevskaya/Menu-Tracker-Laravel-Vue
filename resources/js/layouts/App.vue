<template>
  <div class="wrapper">
    <app-header></app-header>
    <main class="page-main">
      <router-view></router-view>
    </main>
    <app-modal
      v-show="ModalStatus"
      @close="closeModal"
      :section_id="section_id"
    ></app-modal>
    <app-footer></app-footer>
  </div>
</template>

<script>
import AppHeader from "../components/Header.vue";
import AppFooter from "../components/Footer.vue";
import AppModal from "../components/Modals/ModalSection.vue";
import { mapGetters, mapActions } from "vuex";

export default {
  name: "App",
  components: {
    AppHeader,
    AppFooter,
    AppModal,
  },
  data() {
    return {};
  },
  methods: {
    ...mapActions("modal", ["setModalStatus"]),
    closeModal() {
      this.setModalStatus(0);
    },
  },
  computed: {
    ...mapGetters("modal", { ModalStatus: "getModalStatus" }),
    ...mapGetters("modal", { section_id: "getSectionId" }),
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
