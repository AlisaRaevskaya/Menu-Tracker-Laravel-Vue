import axios from "axios";

export default {
	namespaced: true,
	state: {
		branches:[]
	},
	getters: {
		all: state => state.branches,
	    indexById: state => id => state.branches.findIndex(item => item.id == id),
		// getBranchBySlug: state=> slug =>state.branches.find(item=>item.slug == slug),
        getBranchName: state=>slug=>state.branches.find(item=>item.slug == slug).name,
		getBranchId: state=>slug =>state.branches.find(item=>item.slug == slug).id,
		//getBranch: (state, getters) => concept=> getters.getConcept(concept).find(item=>item == item.code)
        // getBranch: (state, getters) => concept=> getters.getConcept(concept).find(item=>item == item.code)
	},
    //computed
	mutations: {
		updateBranches(state, branches) {
            state.branches = branches;
        },
	},
    //methods
	actions: {
        getBranches({commit}) {
            // fetch branches
            axios.get('/api/choose')
                .then((response) => {
                    commit('updateBranches', response.data);
                })
                .catch((error) => console.error(error));
        }
    }
}
