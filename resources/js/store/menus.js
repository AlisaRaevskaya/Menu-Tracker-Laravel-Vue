import axios from "axios";

export default {
	namespaced: true,
	state: {
		menus: [],
		menu_name: ""
	},
	getters: {
		all: state => Object.values(state.menus),
		oneById: state => id => state.menus[id],
		getMenuName: state=> state.menu_name
	},
    //computed
	mutations: {
		setItems(state, menus){
			let map = {};

			menus.forEach(pr => {
				map[pr.id.toString()] = pr;
			});

			state.items = map;
		},

		updateMenuName(state, menu_name ){
			state.menu_name = menu_name;
		}
	},
    //methods
	actions: {
		// setMenuName({commit}) {
		// axios.post('/menus/save_name', this.menu_name)
		// .then((res) => {
		// 	commit('updateMenuName', this.menu_name);
		// })
		// .catch((error) => {
		// 	// error.response.status Check status code
		// }).finally(() => {
		// 	//Perform action in always
		// })}
		updateMenuName: ({ commit }, menu_name) => commit('updateMenuName', menu_name)
	}
}


