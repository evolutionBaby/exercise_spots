import requestHelper from "js/helpers/requests"

const api = {
  fetchLevels() {
    let promise = requestHelper.get('/api/levels')

    return promise
  }
}

export default api