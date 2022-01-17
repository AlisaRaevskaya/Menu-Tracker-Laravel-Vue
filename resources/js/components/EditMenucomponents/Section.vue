<template>
    <div :class="setSectionClass(section.style)">
        <div
            class="row justify-flex-end"
            v-show="!isShown"
        >
            <span class="flaticon-write" onclick="section_edit('103');">
                <font-awesome-icon icon="edit"
            /></span>
            <span
                class="flaticon-paper"
                onclick="section_clone('103', 'left', '0');"
            >
                <font-awesome-icon icon="copy"
            /></span>
            <span
                class="flaticon-download"
                onclick="section_movedown('103', 'left', '0');"
            >
                <font-awesome-icon icon="long-arrow-alt-down"
            /></span>
            <span
                class="flaticon-rubbish-bin"
                onclick="section_remove('103', 'left', '0');"
                ><font-awesome-icon icon="trash-alt"
            /></span>
        </div>
        <div class="section-title">
            <h3>{{ section.title }}</h3>
            <h4>{{ section.subtitle }}</h4>
            <!-- {{section.field_order}} -->
            <div
                v-for="menu_item in menu_items_array"
                :key="menu_item.id"
                :class="setItemClass(menu_item.style)"
            >
                <app-menu-item
                    :menu_item="menu_item"
                    :field_order="section.field_order"
                ></app-menu-item>
            </div>
        </div>
    </div>
</template>
<script>
import AppMenuItem from "../EditMenucomponents/MenuItem.vue";

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
        AppMenuItem,
        FontAwesomeIcon,
    },
    props: {
        menu_items_array: Array,
        section: {},
    },
    data() {
        return {
            isShown: false,
        };
    },
    methods: {
        setItemClass(arg) {
            return "item-outter_" + arg;
        },
        setSectionClass(arg) {
            return "menu_section_" + arg;
        },
        computed: {
            setShownAsTrue() {
                this.isShown = !this.isShown;
            },
        },
    },
};
</script>
