import axios from 'axios';

export default {
	namespaced: true,
	state: {
		sections: [],
        menu: {}
	},
	getters: {
		all: state => state.sections,
		indexById: state => id => state.sections.findIndex(item => item.id == id),
        getMenu: state=>state.menu
	},
    //computed
	mutations: {
		updateMenuSections(state, data) {
            state.sections = data.sections;
            state.menu = data.menu;
        },
	},
    //methods
	actions: {
		getMenuSections({commit}, id) {
            // fetch sections
            axios.get('/api/menu-sections/' + id )
                .then((response) => {
                    console.log(response);
                    commit('updateMenuSections', response.data);
                })
                .catch((error) => console.log('Section error'));
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
// } run dev
