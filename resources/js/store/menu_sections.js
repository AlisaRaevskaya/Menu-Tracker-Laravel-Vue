import axios from 'axios';

export default {
	namespaced: true,
	state: {
		sections: [],
		chosen_sections: [],
	},
	getters: {
		all: state => state.sections,
		indexById: state => id => state.sections.findIndex(item => item.id == id),
		getAllMenuSections: (state) => id => state.sections.filter(item => item.id_menu == id)
	},
    //computed
	mutations: {
		updateMenuSections(state, menu_sections) {
            state.chosen_sections = menu_sections;
        },
		updateAllMenuSections(state, menu_sections) {
            state.sections = menu_sections;
        },
	},
    //methods
	actions: {
		getMenuSections({commit}, id) {
            // fetch branches
            axios.get(`api/menu-sections/${id}`)
                .then((response) => {
					console.log(response.data);
                    commit('updateMenuSections', response.data);
                })
                .catch((error) => console.error(error));
        },
		getAllMenuSections({commit}) {
            // fetch branches
            axios.get('api/menu-section/index')
                .then((response) => {
					console.log(response.data);
                    commit('updateAllMenuSections', response.data);
                })
                .catch((error) => console.error(error));
        },
	}
}