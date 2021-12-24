import menu_sections from "../jsons/tbl_menu_sections.json";

export default {
	namespaced: true,
	state: {
		sections: getMenuSections()
	},
	getters: {
		all: state => state.sections,
		indexById: state => id => state.sections.findIndex(item => item.id == id),
		getAllMenuSections: (state) => id => state.sections.filter(item => item.id_menu == id)
	},
    //computed
	mutations: {
		
	},
    //methods
	actions: {
		
	}
    //async
}
function getMenuSections(){
return menu_sections
}