import api from './utils/api'
import * as types from "./utils/mutation-types"

const namespaced = true

const state = {
  levels: []
}

const getters = {
  list: state => state.levels
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
  },
  markSpotAsTaken({commit}, parkingSpot) {
    commit(types.SET_PARKING_SPOT_STATUS, {parkingSpot})
  }
}

const mutations = {
  [types.SET_LEVELS] (state, {levels}) {
    state.levels = []
    levels.forEach((level) => {
      state.levels.push(level)
    })
  },
  [types.SET_PARKING_SPOT_STATUS] (state, {parkingSpot}) {
    parkingSpot.taken = true

    let index = state.levels.findIndex((level) => {
      return level.id = parkingSpot.level_id
    })

    let parkingSpotIndex = state.levels[index].parking_spots.findIndex((p) => {
      return p.id == parkingSpot.id
    })

    state.levels[index].parking_spots.splice(parkingSpotIndex, 1, parkingSpot)
  }
}

export default {
  namespaced,
  state,
  getters,
  actions,
  mutations
}