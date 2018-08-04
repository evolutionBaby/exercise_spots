import Vuex from "vuex"

import levels from './levels'
import parkingSpots from "./parking_spots"

export default new Vuex.Store({
  modules: {
    levels,
    parkingSpots
  }
})