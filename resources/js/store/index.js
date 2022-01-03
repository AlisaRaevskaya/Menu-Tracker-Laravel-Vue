import { createStore } from 'vuex'

import menu_types from './menu_types';
import files from './files';
import branches from './branches';
import menus from './menus';
import menu_items from './menu_items';
import menu_sections from './menu_sections';

const store = createStore({
	modules: {
		branches,
		menu_types,
		menu_items,
		menu_sections,
		menus,
		files,
	},
	strict: process.env.NODE_ENV !== 'production'
});

export default store;