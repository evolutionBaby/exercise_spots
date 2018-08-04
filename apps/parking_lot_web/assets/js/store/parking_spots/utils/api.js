import requestHelper from "js/helpers/requests"

const api = {
  findFreeParkingSpot() {
    let promise = requestHelper.get('/api/find_parking_spot')

    return promise
  },
  book(id) {
    let promise = requestHelper.get(`/api/parking_spots/${id}/book`)

    return promise
  }
}

export default api