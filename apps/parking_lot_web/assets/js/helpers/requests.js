import axios from "axios"

axios.defaults.headers.common['Content-Type'] = "application/json";
axios.defaults.headers.common['Accept'] = "application/json";

const requestHelper = {
  get(path, params) {
    let promise = axios.get(
      path,
      {
        headers: headers,
        params: params
      }
    )

    return promise
  },
  post(path, body) {
    let promise = axios.get(
      path,
      body,
      {
        headers: headers,
      }
    )

    return promise
  }
}

const headers = {
  'Content-Type': "application/json",
  'Accept': "application/json"
}

export default requestHelper