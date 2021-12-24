import concepts_data from "../jsons/concepts.json";

export default {
	namespaced: true,
	state: {
		concepts: getConcepts()
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
		
	},
    //methods
	actions: {
		
	}
    //async
}
function getConcepts(){
return concepts_data;
}