import axios from "axios";

export default {
	namespaced: true,
	state: {
		branches:[]
	},
	getters: {
		all: state => state.branches,
        getBranchName: state=>slug=>state.branches.find(item=>item.slug == slug).name,
		getBranchId: state=>slug =>state.branches.find(item=>item.slug == slug).id,
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
