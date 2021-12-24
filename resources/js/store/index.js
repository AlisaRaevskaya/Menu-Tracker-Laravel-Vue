import { createStore } from 'vuex'

import menu_types from './menu_types';
import files from './files';
import concepts from './concepts';


const store = createStore({
	modules: {
		menu_types,
		files,
		concepts
	},
	strict: process.env.NODE_ENV !== 'production'
});

export default store;