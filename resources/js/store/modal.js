
export default {
    namespaced: true,
    state: {
        isModalVisible: false,
        section_id: Number,
    },
    getters: {
        getSectionId: (state) => state.section_id,
        getModalStatus: (state) => state.isModalVisible,
    },
    //computed
    mutations: {
        setSectionId(state, id) {
            state.section_id = id;
        },
        setModalStatus(state, status) {
            state.isModalVisible = Boolean(status);
        },
    },
    //methods
    actions: {
        setSectionId({ commit }, id) {
            commit("setSectionId", id);
        },
        setModalStatus({ commit }, status) {
            commit("setModalStatus", status);
        },
    },
};
