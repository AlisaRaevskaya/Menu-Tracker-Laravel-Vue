<template>
  <div class="item-title">
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
</template>
<script>
export default {
  props: {
    menu_item: {},
    field_order: String,
  },
};
</script>