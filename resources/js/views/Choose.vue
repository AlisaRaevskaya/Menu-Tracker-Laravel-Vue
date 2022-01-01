<template>
  <div class="container">
    <h2 class="mt-1 mb-1 text-uppercase">Choose New Menu</h2>
    <hr class="divider" />
    <h3 class="mb-2 mt-2 text-uppercase">Choose your Concept</h3>
    <ul class="row justify-space-between mb-2">
      <li v-for="branch in branches" :key="branch.id" class="col-4-xl gap-2">
        <router-link
          :to="{
            name: 'menu',
            params: { branch: branch.slug },
          }"
        >
          <img :src="addImagePath(branch.slug)" v-bind:alt="branch.slug" />
        </router-link>
      </li>
    </ul>
  </div>
</template>

<script>
import { mapGetters, mapActions } from "vuex";

export default {
  methods: {
    addImagePath(name) {
      return "/storage/images/choose/" + name + ".png";
    },
     ...mapActions('branches', ['getBranches'])
  },
  computed: {
    ...mapGetters("branches", { branches: "all" }),
    ...mapGetters("menu_types", { types: "all" }),
  },
  created() {
    this.getBranches();
  },
};
</script>
