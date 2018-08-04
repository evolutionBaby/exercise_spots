import requestHelper from "js/helpers/requests"

const api = {
  findFreeParkingSpot(vehicleSize) {
    let promise = requestHelper.get('/api/find_parking_spot',
      {vehicle_size: vehicleSize}
    )

    return promise
  },
  book(id) {
    let promise = requestHelper.post(`/api/parking_spots/${id}/book`)

    return promise
  }
}

export default api