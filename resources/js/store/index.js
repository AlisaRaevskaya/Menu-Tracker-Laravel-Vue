import { createStore } from 'vuex'

import menu_types from './menu_types';
import files from './files';
import branches from './branches';


const store = createStore({
	modules: {
		menu_types,
		files,
		branches
	},
	strict: process.env.NODE_ENV !== 'production'
});

export default store;