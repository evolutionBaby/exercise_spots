<template>
  <div class="ParkingSpotSeeker">
    <form
    class="ParkingSpotSeeker__form"
    @submit.prevent="seek">
      <div class="ParkingSpotSeeker__input-group">
        <label class="ParkingSpotSeeker__label">
          Vehicle Size:
        </label>
        <input
        class="ParkingSpotSeeker__input"
        type="number"
        v-model="vehicleSize">
      </div>

      <button
      class="ParkingSpotSeeker__submit-button"
      type="submit">
        Seek For Spot
      </button>
    </form>

    <div
    v-if="foundParkingSpot"
    class="ParkingSpotSeeker__results-container">
      <div class="ParkingSpotSeeker__card">
        <parking-spot
        :parking-spot="foundParkingSpot"></parking-spot>
      </div>
    </div>
  </div>
</template>

<script>
import ParkingSpot from "./parking-spot"

export default {
  name: "ParkingSpotSeeker",
  components: {
    ParkingSpot
  },
  data() {
    return {
      vehicleSize: 1
    }
  },
  computed: {
    foundParkingSpot() {
      return this.$store.getters["parkingSpots/readyParkingSpot"]
    }
  },
  methods: {
    seek() {
      this.$store.dispatch("parkingSpots/find", this.vehicleSize)
    }
  }
}
</script>