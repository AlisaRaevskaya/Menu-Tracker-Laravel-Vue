<template>
    <div class="choose-modal">
        <app-modal
            v-show="isShown"
            @close="closeModal"
            :hasForm="true"
            @submitForm="submitForm"
        >
            <template v-slot:body>
                <div>
                    <h4>Confirm Meal Period And Name</h4>
                    <div>
                        <span class="control-label pr-2">Type</span><br />
                        <div class="bg-light-gray p-1">
                            {{ chosen_menu_type }}
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="mt-1 row">
                            <label class="control-label pr-2">Name</label>
                            <Field v-model="menu_object.menu_name" :rules="isRequired" type="text" name="menu_field" class="form-control p-1"/>
                            <ErrorMessage name="menu_field" class="pr-1 display-block color-red"/>
                        </div>
                    </div>
                    {{ setTypeId }}
                    {{ getMessage }}
                </div>
            </template>
            <template v-slot:footer>
                <!-- <button class="btn btn-primary" type="submit" @click="redirectPage"> <-- -->
                <button class="btn btn-primary" type="submit">
                    Get Started
                </button>
            </template>
        </app-modal>
    </div>
    <div class="col-12-lg bordered mt-2" v-show="!isShown">
        <h5 class="pt-1">CHOOSE HOW TO BUILD YOUR MENU</h5>

        <div class="row justify-space-around pb-1">
            <div class="col-4-sm">
                <div class="form-group text-left">
                    <label class="control-label startLabel"
                        >Create From Template</label
                    >
                    <button
                        type="button"
                        name="menu_saved_design_add"
                        class="btn btn-default btn-block biggerBtn"
                        @click="showModal"
                    >
                        START
                    </button>
                </div>
            </div>
            <div class="col-4-sm menu_saved_design_outter">
                <div class="form-group text-left">
                    <label class="control-label"
                        >Create From Saved Design</label
                    >
                    <select
                        id="menu_saved_design"
                        name="menu_saved_design"
                        class="form-control"
                    >
                        <option value="" name="">Select One</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
import AppModal from "../components/Modals/Modal.vue";
import { mapGetters, mapActions } from "vuex";
import { Field, ErrorMessage } from "vee-validate";

export default {
    props: {
        chosen_menu_type: String,
        chosen_menu_type_id: Number,
        shortname: String,
        branch_name: String,
    },
    components: {
        AppModal,
        Field,
        ErrorMessage,
    },
    data() {
        return {
            isShown: false,
            message: "",
            menu_object: {
                menu_name: "",
                user_id: 1,
                type_id: "",
            },
        };
    },
    methods: {
        isRequired(value) {
            if (value && value.trim()) {
                return true;
            }
            return "This field is required";
        },
        // redirectPage() {
        //   this.$router.push({
        //     name: "menu_edit",
        //     params: { branch: this.branch_name, menu_shortname: this.shortname },
        //   });
        // },
        ...mapActions("menus", ["addMenu"]),
        closeModal() {
            this.isShown = false;
        },
        showModal() {
            this.isShown = true;
        },
        submitForm() {
            this.addMenu(this.menu_object);
          
            setTimeout(() => {
              this.$router.push({
                name: "menu_edit",
                params: { branch: this.branch_name, menu_shortname: this.shortname },
              });
            }, 1500);
        },
    },
    computed: {
        ...mapGetters("menus", ["getMenuName"]),
        ...mapGetters("menus", ["getMessage"]),

        setTypeId() {
            this.menu_object.type_id = this.chosen_menu_type_id;
        },
    }
};
</script>

       <!-- <input
                type="text"
                id="menu_name"
                name="menu_name"
                class="form-control p-1 modal-field"
                required
                v-model="menu_object.menu_name"
              /> -->