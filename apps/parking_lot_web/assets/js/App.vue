<template>
  <div class="ParkingLotPanel">
    <div class="ParkingLotPanel__wrapper">
      <parking-spot-seeker></parking-spot-seeker>
      <levels-list/>
    </div>
  </div>
</template>

<script>
import LevelsList from "./components/levels-list"
import ParkingSpotSeeker from "./components/parking-spot-seeker"

export default {
  name: "ParkingLotApp",
  components: {
    LevelsList,
    ParkingSpotSeeker
  }
}
</script>