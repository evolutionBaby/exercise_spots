<template>
  <div
  :class="statusClass"
  class="ParkingSpot">
    <div class="ParkingSpot__wrapper">
      <div class="ParkingSpot__col">
        <div class="ParkingSpot__label">
          Number
        </div>
        <div class="ParkingSpot__value">
          {{ parkingSpot.number }}
        </div>
      </div>
      <div class="ParkingSpot__col">
        <div class="ParkingSpot__label">
          Size
        </div>
        <div class="ParkingSpot__value">
          {{ parkingSpot.size }}
        </div>
      </div>
      <div class="ParkingSpot__col">
        <div class="ParkingSpot__label">
          Status
        </div>
        <div class="ParkingSpot__value">
          {{ status }}
        </div>
      </div>
      <div class="ParkingSpot__col">
        <button
        type="button"
        class="ParkingSpot__book-button"
        :disabled="isTaken">
          Book
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "ParkingSpot",
  props: {
    parkingSpot: {
      type: Object,
      required: true
    }
  },
  computed: {
    isTaken() {
      return this.parkingSpot.taken
    },
    statusClass() {
      return this.isTaken ? "ParkingSpot--taken" : "ParkingSpot--free"
    },
    status() {
      return this.isTaken ? "Taken" : "Free"
    },
  }
}
</script>