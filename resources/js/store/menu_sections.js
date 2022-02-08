import axios from "axios";

export default {
    namespaced: true,
    state: {
        sections: [],
        section_id: Number,
    },
    getters: {
        all: (state) => state.sections,
        indexById: (state) => (id) => state.sections.findIndex((item) => item.id == id),
        sectionById:(state)=>(id)=>state.sections.filter((item) => item.id == id),
        sectionId: (state) => state.section_id,
    },
    //computed
    mutations: {
        updateMenuSections(state, data) {
            state.sections = data.sections;
        },
        setSectionId(state, id) {
            state.section_id = id;
        },
    },
    //methods
    actions: {
        getMenuSections({ commit }, id) {
            // fetch sections
            axios
                .get("/api/menu-sections/" + id)
                .then((response) => {
                    console.log(response);
                    commit("updateMenuSections", response.data );
                })
                .catch((error) => console.log("Section error"));
        },
        // getAllMenuSections({ commit }, id) {
        //     // fetch sections
        //     axios
        //         .get("/api/menu-sections/" + id)
        //         .then((response) => {
        //             console.log(response);
        //             commit("updateAllMenuSections", response.data);
        //         })
        //         .catch((error) => console.log("Section error"));
        // },
        setSectionId({ commit }, id) {
            commit("setSectionId", id);
        },
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
// } run dev
