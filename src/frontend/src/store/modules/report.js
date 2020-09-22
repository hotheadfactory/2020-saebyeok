import { SET_REPORT_CATEGORIES } from '@/store/shared/mutationTypes';
import {
  FETCH_REPORT_CATEGORIES,
  CREATE_ARTICLE_REPORT,
  CREATE_COMMENT_REPORT
} from '@/store/shared/actionTypes';
import ReportService from '@/api/modules/report';

const state = {
  reportCategories: []
};

const getters = {
  reportCategories(state) {
    return state.reportCategories;
  }
};

const mutations = {
  [SET_REPORT_CATEGORIES](state, reportCategories) {
    state.reportCategories = reportCategories;
  }
};

const actions = {
  async [FETCH_REPORT_CATEGORIES]({ commit }) {
    return ReportService.getCategories()
      .then(({ data }) => {
        commit(SET_REPORT_CATEGORIES, data);
      })
      .catch(error => commit('catchError', error));
  },
  async [CREATE_ARTICLE_REPORT]({ commit }, report) {
    return ReportService.createArticleReport(report).catch(error =>
      commit('catchError', error)
    );
  },
  async [CREATE_COMMENT_REPORT]({ commit }, report) {
    return ReportService.createCommentReport(report).catch(error =>
      commit('catchError', error)
    );
  }
};

export default {
  state,
  getters,
  actions,
  mutations
};
