import axios from 'axios';

export default {
	namespaced: true,
	state: {
		sections: [],
		chosen_sections: [],
	},
	getters: {
		all: state => state.sections,
        allChosen:state=>state.chosen_sections,
        allSectionIds: state=>state.chosen_sections.map(item =>item === item.id),
		indexById: state => id => state.sections.findIndex(item => item.id == id),
		getsAllMenuSections: (state) => id => state.sections.filter(item => item.id_menu == id)
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
            axios.get('/api/menu-sections/' + id )
                .then((response) => {
                    console.log(response);
                    commit('updateMenuSections', response.data);
                })
                .catch((error) => console.log('IdSection error'));
        },
		getAllMenuSections({commit}) {
            // fetch branchess
            axios.get('/api/menu-sections/all')
                .then((response) => {
					console.log(response.data);
                    commit('updateAllMenuSections', response.data);
                })
                .catch((error) => console.log('getAllSections error'));
        },
	}
}

// async  showData({commit}) {

//  try {
//   const res = await axios.get(
//             `https://api.nytimes.com/svc/movies/v2/reviews/picks.json?api-key=${state.token}`
//         );
//   if (res.status == 200) {
//       commit("getDataFromApi",res.data);
//    }else {
//     commit("setError",new Error("Something went wrong."));
//    }
// }
// catch(e){
//   commit("setError",e);
// }
// }