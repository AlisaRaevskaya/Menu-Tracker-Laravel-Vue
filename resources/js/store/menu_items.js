import axios from "axios";

export default {
    namespaced: true,
    state: {
        menu_items: [],
    },
    getters: {
        all: (state) => state.menu_items,
        indexById: (state) => (id) => state.menu_items.findIndex((item) => item.id == id),
    },
    //computed
    mutations: {
        updateMenuItems(state, menu_items) {
            state.menu_items = menu_items;
        },
    },
    //methods
    actions: {
        getMenuItems({ commit }, id) {
            // fetch branches
            axios
                .get("/api/menu-items/" + id)
                .then((response) => {
                    console.log(response);
                    commit("updateMenuItems", response.data);
                })
                .catch((error) => console.log("IdSection error"));
        },
        // async getMenuItems({ commit }) {
        //     try {
        //         const res = await axios.get("/api/menu-items/" + id);
        //         if (res.status == 200) {
        //             commit("updateMenuItems", res.data);
        //         } else {
        //             commit("setError", new Error("Something went wrong."));
        //         }
        //     } catch (e) {
        //         commit("setError", e);
        //     }
        // },
    },
};

// async  showData({commit}) {

//  try {
//   const res = await axios.get(
//             `https://api.nytimes.com/svc/movies/v2/reviews/picks.json?api-key=${state.token}`
//         );
//   if (res.status == 200) {
//       commit("getDataFromApi",res.data);
//    }else {
//     commit("setError",new Error("Something went wrong."));
//    }
// }
// catch(e){
//   commit("setError",e);
// }
// }
