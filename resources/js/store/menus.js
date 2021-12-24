import menus from "../jsons/tbl_menu.json";

export default {
	namespaced: true,
	state: {
		menus: getMenus()
	},
	getters: {
		all: state => Object.values(state.menus),
		oneById: state => id => state.menus[id],
		
		// indexById: state=>id 
	},
    //computed
	mutations: {
		setItems(state, menus){
			let map = {};

			menus.forEach(pr => {
				map[pr.id.toString()] = pr;
			});

			state.items = map;
		}
		
	},
    //methods
	actions: {

	}
    //async
}
function getMenus(){
return menus
}