import api from './utils/api'
import * as types from './utils/mutation-types'

const namespaced = true

const state = {
  readyParkingSpot: {}
}

const actions = {
  find({commit}, vehicleSize) {
    api.findFreeParkingSpot(vehicleSize).then(
      (parking_spot) => {
        let levels = response.data

        commit(types.SET_PARKING_SPOT, {parking_spot})
      },
      (error) => {}
    )
  },
  book({commit}, id) {
    return api.book(id)
  }
}

const mutations = {
  [types.SET_PARKING_SPOT] (state, {parking_spot}) {
    state.readyParkingSpot = parking_spot
  }
}

export default {
  namespaced,
  state,
  actions,
  mutations
}