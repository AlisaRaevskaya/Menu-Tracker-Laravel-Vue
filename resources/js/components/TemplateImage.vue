<template>
  <div class="col-md-12 text-center">
    <div class="menuHolder menuTemp" style="">
      <h5>TEMPLATE MENU</h5>
      <h6>{{ menu_name }}</h6>
      <!-- <img :src="addImagePath(image_name)" /> -->
    <img :src="'../../../storage/images/MenuThumbnails/' + image_name + '.png'" v-bind:alt="image_name">
      <br />
    </div>
  </div>
</template>
<script>
export default {
  props: {
    menu_name: String,
    image_name: String,
  },
  data() {
    return {
         image_url: ""
    }
  },
  methods: {
    addImagePath(name) {
      return "storage/images/MenuThumbnails/" + name + ".png";
      //name// ? require("../../../public/storage/images/MenuThumbnails/" + name + ".png") : "";
    },
  },
  computed: {
    imageInclude() {
      this.image_url = "storage/images/" + this.image_name + ".png";
    },
    getImgUrl(pic) {
    //  return require('../storage/images/MenuThumbnails/'+ pic + ".png")
  }
  },
};
</script>