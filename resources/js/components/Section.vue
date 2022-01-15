<template>
  <div :class="setSectionClass(section.style)">
    <div class="section-title">
      <h3>{{ section.title }}</h3>
      <h4>{{ section.subtitle }}</h4>
      <!-- {{section.field_order}} -->
      <div v-for="menu_item in menu_items_array"
        :key="menu_item.id"
        :class="setItemClass(menu_item.style)">
        <div class="item-title ">
          <p>{{ menu_item.title }}</p>
        </div>
        <div class="item-subtitle pb-1">
          <p>{{ menu_item.subtitle }}</p>
        </div>
        <div class="item-price">
          <p>{{ menu_item.price }}</p>
        </div>
        <div class="item-modifier">
          <p>{{ menu_item.modifier }}</p>
        </div>
        <div class="item-mod_text">
          <p>{{ menu_item.mod_text }}</p>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  props: {
    menu_items_array: [],
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