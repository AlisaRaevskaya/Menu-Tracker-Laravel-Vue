import axios from "axios";

export default {
    namespaced: true,
    state: {
        sections: [],
        section: {},
        message: ""
    },
    getters: {
        all: (state) => state.sections,
        indexById: (state) => (id) => state.sections.findIndex((item) => item.id == id),
        sectionById:(state)=>(id)=>state.sections.filter((item) => item.id == id),
        getSection: (state) => state.section,
    },
    //computed
    mutations: {
        updateMenuSections(state, data) {
            state.sections = data.sections;
        },
        setSection(state, section) {
            state.section = {...section};
        },
        saveSection(state, data){
            state.message = data.message;
        }
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
     
        setSection({ commit }, section) {
            commit("setSection", section);
        },
        saveSection({ commit }, section){
            axios
                .post("/api/menu-sections/", section)
                .then((response) => {
                    commit("saveSection", response.data);
                })
                .catch(e => {
                    this.errors = e.data.errors;
                  });
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
