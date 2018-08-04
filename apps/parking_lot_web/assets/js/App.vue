<template>
  <div class="ParkingLotPanel">
    <div class="ParkingLotPanel__wrapper">
      <levels-list/>
    </div>
  </div>
</template>

<script>
import LevelsList from "./components/levels-list"

export default {
  name: "ParkingLotApp",
  components: {
    LevelsList
  },
  mounted() {
    this.$store.dispatch("parkingSpots/find", 5)
  }
}
</script>