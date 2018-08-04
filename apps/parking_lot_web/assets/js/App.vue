<template>
  <div class="ParkingLotPanel">
    Parking Lot Panel
  </div>
</template>

<script>
export default {
  name: "ParkingLotApp",
  mounted() {
    this.$store.dispatch("levels/fetchLevels")
    this.$store.dispatch("parkingSpots/find", 5)
  }
}
</script>