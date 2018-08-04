import api from './utils/api'

const namespaced = true

const state = {

}

const actions = {
  find({commit}) {
    api.fetchLevels().then(
      (response) => {
        let levels = response.data

        commit(types.SET_LEVELS, {levels})
      },
      (error) => {}
    )
  }
}

export default {
  namespaced,
  state,
  actions
}