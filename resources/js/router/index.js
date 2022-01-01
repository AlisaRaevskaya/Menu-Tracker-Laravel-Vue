import { createRouter, createWebHistory } from "vue-router";

import Account from "../views/Account.vue";
import Choose from "../views/Choose";
import Home from "../views/Home";
import MyMenus from "../views/MyMenus";
import StartMenu from "../views/StartMenu";
import E404 from "../views/E404";
import EditMenu from "../views/EditMenu";

const routes = [
  { name: "home", path: "/", component: Home },
  { name: "choose", path: "/choose", component: Choose },
  { name: "account", path: "/account", component: Account },
  { name: "mymenus", path: "/mymenus", component: MyMenus },
  { name: "menu", path: "/start/:branch", component: StartMenu, props: true },
  { name: "menu_edit", path: "/menus/:branch/:menu_name", component: EditMenu, props: true },
  { path: "/:any(.*)", component: E404 },
];

const router = createRouter({
  // 4. Provide the history implementation to use. We are using the hash history for simplicity here.
  history: createWebHistory(),
  routes, // short for `routes: routes`
});

export default router;