
export default {
	namespaced: true,
	state: {
		types: [],
		menu_type_id: ""
	},
	getters: {
		all: state => state.types,
		indexById: state => id => state.types.findIndex(item => item.branch_id == id),
		getMenuTypes: (state) => id => state.types.filter(item => item.branch_id == id),
		getItemByShortName: (state) => shortname => state.types.find(item => item.shortname == shortname),
		// getItemName: (state) => shortname => state.types.find(item => item.shortname == shortname).name,
		getTemplateName: (state, getters) => shortname => getters.getItemByShortName(shortname).template,
		getTypeId: state=>state.menu_type_id	
		// indexById: state=>id 
	},
    //computed
	mutations: {
		updateMenuTypes(state, types) {
            state.types = types;
		},
		updateChosenMenuTypeId(state, id) {
            state.menu_type_id = id;
        },
	},
    //methods
	actions: {
		getAllMenuTypes({commit}, branch ) {
            // fetch types
            axios.get('/api/start/'+ branch)
                .then((response) => {
                    commit('updateMenuTypes', response.data);
                })
                .catch((error) => console.error(error));
        },
		setMenuTypeId ({ commit }, id){
			commit('updateChosenMenuTypeId', id)
		  }
	}
    //async
}