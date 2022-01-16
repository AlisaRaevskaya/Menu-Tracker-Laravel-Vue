<template>
  <div :class="setSectionClass(section.style)">
    <div class="section-title">
      <h3>{{ section.title }}</h3>
      <h4>{{ section.subtitle }}</h4>
      <!-- {{section.field_order}} -->
      <div
        v-for="menu_item in menu_items_array"
        :key="menu_item.id"
        :class="setItemClass(menu_item.style)"
      >
        <app-menu-item :menu_item="menu_item" :field_order="section.field_order"></app-menu-item>
      </div>
    </div>
  </div>
</template>
<script>

import AppMenuItem from "../EditMenucomponents/MenuItem.vue";

export default {
  components: {
    AppMenuItem,
  },
  props: {
    menu_items_array: Array,
    section: {},
  },
  methods: {
    setItemClass(arg) {
      return "item-outter_" + arg;
    },
    setSectionClass(arg) {
      return "menu_section_" + arg;
    },
    computed: {},
  },
};
</script>