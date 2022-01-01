
export default {
	namespaced: true,
	state: {
		types: []
	},
	getters: {
		all: state => state.types,
		indexById: state => id => state.types.findIndex(item => item.branch_id == id),
		getMenuTypes: (state) => id => state.types.filter(item => item.branch_id == id),
		getItemByShortName: (state) => shortname => state.types.find(item => item.shortname == shortname),
		getTemplateName: (state, getters) => shortname => getters.getItemByShortName(shortname).template,	
		// indexById: state=>id 
	},
    //computed
	mutations: {
		updateMenuTypes(state, types) {
            state.types = types;
		}
	},
    //methods
	actions: {
		getAllMenuTypes({commit}) {
            // fetch types
            axios.get('/api/start/{branch}')
                .then((response) => {
                    commit('updateMenuTypes', response.data);
                })
                .catch((error) => console.error(error));
        },
	}
    //async
}