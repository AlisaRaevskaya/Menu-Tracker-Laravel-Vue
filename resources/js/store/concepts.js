import concepts_data from "../jsons/concepts.json";

export default {
	namespaced: true,
	state: {
		concepts: getConcepts(),
		branches:[]
	},
	getters: {
		all: state => state.concepts,
		getConcept: state=>concept=>state.concepts.find(item=>item.slug == concept).code,
		// indexById: state => id => state.items.findIndex(item => item.id == id),
		//arr.reduce(function(sum, current) {return sum + current
		//names.map(function(name) {return name.length;});
		//arr.map(function (x) { return x * x });
		getBranch: (state, getters) => concept=> getters.getConcept(concept).find(item=>item == item.code)
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
            // fetch the categories and attached products from the api
            axios.get('/choose')
                .then((response) => {
                    commit('updateBranches', response.data);
                })
                .catch((error) => console.error(error));
        },
        // clearCart({commit}) {
        //     commit('updateCart', []);
        // }
    }
    //async
}
function getConcepts(){
return concepts_data;
}

// created() {
// 	store.dispatch('getCategories')
// 		.then(_ => {})
// 		.catch((error) => console.error(error));
// }