<template>
  <div class="wrapper">
    <app-header></app-header>
    <main class="page-main">
      <router-view></router-view>
    </main>
   
    <app-footer></app-footer>
  </div>
</template>

<script>
import AppHeader from "../components/Header.vue";
import AppFooter from "../components/Footer.vue";
import { mapGetters, mapActions } from "vuex";

export default {
  name: "App",
  components: {
    AppHeader,
    AppFooter,
  }
  
};
</script>

