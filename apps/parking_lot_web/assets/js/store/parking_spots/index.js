import api from './utils/api'
import * as types from './utils/mutation-types'

const namespaced = true

const state = {
  readyParkingSpot: null
}

const getters = {
  readyParkingSpot: state => state.readyParkingSpot
}

const actions = {
  find({commit}, vehicleSize) {
    api.findFreeParkingSpot(vehicleSize).then(
      (response) => {
        let parkingSpot = response.data.parking_spot

        commit(types.SET_PARKING_SPOT, {parkingSpot})
      },
      (error) => {}
    )
  },
  book({commit}, id) {
    return api.book(id)
  }
}

const mutations = {
  [types.SET_PARKING_SPOT] (state, {parkingSpot}) {
    state.readyParkingSpot = parkingSpot
  }
}

export default {
  namespaced,
  state,
  getters,
  actions,
  mutations
}