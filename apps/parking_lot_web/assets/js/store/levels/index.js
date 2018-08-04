import api from './api'
import * as types from "./mutation-types"

const namespaced = true

const state = {
  levels: []
}

const getters = {
  levels: state => state.levels
}

const actions = {
  fetchLevels({commit}) {
    api.fetchLevels().then(
      (response) => {
        let levels = response.data

        commit(types.SET_LEVELS, {levels})
      },
      (error) => {}
    )
  }
}

const mutations = {
  [types.SET_LEVELS] (state, {levels}) {
    state.levels = []
    levels.forEach((level) => {
      state.levels.push(level)
    })
  }
}

export default {
  namespaced,
  state,
  getters,
  actions,
  mutations
}