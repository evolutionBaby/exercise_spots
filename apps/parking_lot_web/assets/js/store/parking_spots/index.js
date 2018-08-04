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
  book({commit, dispatch}, parkingSpotToBook) {
    api.book(parkingSpotToBook.id).then(
      (response) => {
        let parkingSpot = null
        commit(types.SET_PARKING_SPOT, {parkingSpot})
        dispatch("levels/markSpotAsTaken", parkingSpotToBook, {root: true})
      },
      (error) => {}
    )
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