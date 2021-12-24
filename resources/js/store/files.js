import files from '../jsons/files.json';

export default {
	namespaced: true,
	state: {
		items: files 
	},
	getters: {
		all: state => state.files 
	},
	mutations: {
		
	},
	actions: {
		
	}
}
