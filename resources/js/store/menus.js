import axios from "axios";

export default {
	namespaced: true,
	state: {
		menus: [],
		menu_name: "",
		message: ""
	},
	getters: {
		all: state => Object.values(state.menus),
		oneById: state => id => state.menus[id],
		getMenuName: state=>state.menu_name,
		getMessage: state=>state.message
	},
    //computed
	mutations: {
		// setItems(state, menus){
		// 	let map = {};

		// 	menus.forEach(pr => {
		// 		map[pr.id.toString()] = pr;
		// 	});

		// 	state.items = map;
		// },

		addMenu(state, message ){
			state.message = message;
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
		addMenu({commit}, menu_object) {
			axios.post('api/menus/', menu_object)
			.then((response) => {
				commit('addMenu', response.data);
			})
			.catch((error) => {
				 error.response.status;
			}).finally(() => {
				//Perform action in always
			})}
		}
}
