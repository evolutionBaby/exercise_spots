import requestHelper from "js/helpers/requests"

const api = {
  findFreeParkingSpot(vehicle_size) {
    let promise = requestHelper.get('/api/find_parking_spot',
      {vehicle_size: vehicle_size}
    )

    return promise
  },
  book(id) {
    let promise = requestHelper.get(`/api/parking_spots/${id}/book`)

    return promise
  }
}

export default api