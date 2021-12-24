/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue').default;

import { createApp } from 'vue'
import App from './layouts/App.vue'
import router from './router/index.js'
import store from './store'

const app = createApp(App);
app.use(store);
app.use(router);
app.mount('#app')
