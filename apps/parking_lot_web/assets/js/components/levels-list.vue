<template>
  <div class="LevelsList">
    <div
    v-for="level in levels"
    :key="level.id"
    class="LevelsList__level">
      <div class="LevelsList__header">
        Level No. {{ level.number }}
      </div>
      <div class="LevelsList__parking-spots">
        <parking-spot
        v-for="parkingSpot in level.parking_spots"
        :key="parkingSpot.id"
        :parking-spot="parkingSpot"></parking-spot>
      </div>
    </div>
  </div>
</template>

<script>
import ParkingSpot from "./parking-spot"
export default {
  name: "LevelsList",
  components: {
    ParkingSpot
  },
  computed: {
    levels() {
      return this.$store.getters["levels/list"]
    }
  },
  mounted() {
    this.$store.dispatch("levels/fetchLevels")
  }
}
</script>