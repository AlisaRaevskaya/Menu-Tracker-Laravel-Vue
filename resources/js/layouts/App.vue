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

export default {
  name: "App",
  components: {
    AppHeader,
    AppFooter,
  },
};
</script>

<style lang="scss">
// @import "/sass/app.scss";
// @import "./src/assets/sass/app.scss";
</style>
