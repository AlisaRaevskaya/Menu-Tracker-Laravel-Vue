<template>
  <div class="container">
    <div class="container-fluid formContainer">
      <form id="loader">
        <div class="print-box">
          <div class="print-outter">
            <div class="print-lines">
              <div class="print-inner">
                <!-- layout -->
                <div class="menu-headline">Menu Title: {{ menu_name }}</div>
                <div class="menu-subtitle">Menu Title 2: {{ menu.title2 }}</div>
                <div class="menu-bg">Menu Type: {{ menu_type.name }}</div>
                <!-- layout.end -->

                <div class="row">
                  <div class="col-6-md col-6-xl col-6-sm">
                    <div v-for="section in sections" :key="section.id">
                      <div v-if="section.side === 'left'">
                        <app-section
                          :menu_items_array="getMenuItem(menu_items, setId(section.id))"
                          :section="section"
                        ></app-section>
                      </div>
                    </div>
                  </div>
                  <div class="col-6-md col-6-xl col-6-sm">
                    <div v-for="section in sections" :key="section.id">
                      <div v-if="section.side === 'right'">
                        <app-section :menu_items_array="getMenuItem(menu_items, setId(section.id))"
                          :section="section"
                        ></app-section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>

  <div class="col-sm-6 col-sm-push-6">
    <div class="footer-inner">
      <ul class="footer-icons">
        <li>
          <span class="bullet veg"></span>
          <font-awesome-icon icon="phone"/>VEGETARIAN
        </li>
        <li><span class="bullet gf"></span><font-awesome-icon icon="user-secret" /> Gluten-free</li>
      </ul>
      <div class="menu_notice_wrap outter-edit rel style1">
        <div class="menu_footer_notice">
          {{ menu.footer_notice }}
        </div>

        <span class="inner-edit"
          ><span
            class="flaticon-write"
            onclick="edit_menu2('12', 'footer_notice', 'textarea');"
          ></span
        ></span>
      </div>

      <div class="menu_notice_wrap2 outter-edit rel style1">
        <div class="menu_footer_notice2">
          {{ menu.footer_notice2 }}
          <span class="inner-edit"
            ><span
              class="flaticon-write"
              onclick="edit_menu2('12', 'footer_notice2', 'textarea');"
            ></span
          ></span>
        </div>

        <div class="menu_watermark"> Menu-Watermark: {{ menu.watermark }}</div>
      </div>
    </div>
  </div>
</template>

<script>
import { mapGetters, mapActions, mapState } from "vuex";
import AppSection from "../components/EditMenucomponents/Section.vue";

import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';
import { library } from "@fortawesome/fontawesome-svg-core";
import { faPhone } from "@fortawesome/free-solid-svg-icons";
import { faUserSecret } from '@fortawesome/free-solid-svg-icons'
import { faFlag } from "@fortawesome/free-solid-svg-icons";
import { faAppleAlt } from "@fortawesome/free-solid-svg-icons";

library.add(faPhone);
library.add(faUserSecret);
library.add(faFlag);
library.add(faAppleAlt);

export default {
  props: {
    menu_type: {},
    menu_name: "",
  },
  components: {
    AppSection,
    FontAwesomeIcon
  },
  data() {
    return {
      section_items: [],
    };
  },
  methods: {
    ...mapActions("menu_sections", ["getMenuSections"]),
    ...mapActions("menu_items", ["getAllMenuItems"]),

    setSectionClass(arg) {
      return "menu_section_" + arg;
    },
    getMenuItem(items, id) {
      return items.filter((item) => item.section_id == id);
    },
    setId(id) {
      return parseInt(id);
    },
  },
  computed: {
    ...mapGetters("menu_sections", { sections: "all" }),
    ...mapGetters("menu_items", { menu_items: "all" }),
    ...mapGetters("menu_sections", { menu: "getMenu" }),

    validId() {
      return /^[1-9]+\d*$/.test(this.strId);
    },
  },
  created() {
    this.getMenuSections(this.menu_type.id);
    this.getAllMenuItems();
  },
};
</script>