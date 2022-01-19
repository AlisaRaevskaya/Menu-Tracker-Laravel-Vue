<template>
  <div class="row justify-flex-end">
    <span class="flaticon-write" >
      <font-awesome-icon icon="edit"
    /></span>
    <span class="flaticon-paper">
      <font-awesome-icon icon="copy"
    /></span>
    <span
      class="flaticon-download"
    >
      <font-awesome-icon icon="long-arrow-alt-down"
    /></span>
    <span
      class="flaticon-rubbish-bin"
      ><font-awesome-icon icon="trash-alt"
    /></span>
  </div>
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
  components: {
    FontAwesomeIcon,
  },
  props: {
    menu_item: {},
    field_order: String,
  },
  data(){
    return{
      isShown : false
    }
  }
};
</script>