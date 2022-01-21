
export default {
    namespaced: true,
    state: {
        isModalVisible: false,
    },
    getters: {
        getModalStatus: (state) => state.isModalVisible,
    },
    //computed
    mutations: {
        setModalStatus(state, status) {
            state.isModalVisible = Boolean(status);
        },
    },
    //methods
    actions: {
        setModalStatus({ commit }, status) {
            commit("setModalStatus", status);
        },
    },
};
