<template>
  <div class="container">
    <div class="container-fluid formContainer">
      <form id="loader">
        <div class="print-box">
          <div class="print-outter">
            <div class="print-lines">
              <div class="print-inner">
                <!-- layout -->
                <div class="menu-headline">{{ menu_name }}</div>
                <div class="menu-bg">{{ menu_item.name }}</div>
                <!-- layout.end -->
                <div class="row">
                  <div class="col-6-md col-6-xl col-6-sm">
                    <div v-for="section in sections" :key="section.id">
                      <div v-if="section.side === 'left'">
                        <div :class="setSectionClass(section.style)">
                          <div class="section-title">
                            <h3>{{ section.title }}</h3>
                            {{ getMenuItem(menu_items, setId(section.id)) }}
                            {{section.id}}
                            <!-- {{menu_items}} -->
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-6-md col-6-xl col-6-sm">
                    <div v-for="section in sections" :key="section.id">
                      <div v-if="section.side === 'right'">
                         <div :class="setSectionClass(section.style)">
                          <div class="section-title">
                            <h3>{{ section.title }}</h3>
                            {{ getMenuItem(menu_items, setId(section.id)) }}
                          </div>
                        </div>
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
  <div class="Action print-hide"></div>
</template>

<script>
import { mapGetters, mapActions, mapState } from "vuex";

export default {
  props: {
    menu_item: {},
    menu_name: "",
  },
  data() {
    return {
      section_items: [],
    };
  },
  methods: {
    ...mapActions("menu_sections", ["getMenuSections"]),
    ...mapActions("menu_sections", ["getAllMenuSections"]),
    ...mapActions("menu_items", ["getAllMenuItems"]),

    setSectionClass(arg) {
      return "menu_section_" + arg;
    },
    getMenuItem(items, id) {
     return items.filter((item) => item.id == id);
    },
    setId(id) {
      return parseInt(id);
    },
  },
  computed: {
    ...mapGetters("menu_sections", ["all"]),
    ...mapGetters("menu_sections", { sections: "allChosen" }),
    ...mapGetters("menu_items", { menu_items: "all" }),
    validId() {
      return /^[1-9]+\d*$/.test(this.strId);
    },
  },
  created() {
    this.getAllMenuSections();
    this.getMenuSections(this.menu_item.id);
    this.getAllMenuItems();
  },
};
</script>