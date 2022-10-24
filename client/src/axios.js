// import axios from "axios";
// axios.defaults.baseURL = 'http://127.0.0.1:3000/api/v1'

import axios from "axios";
import store from "@/store";

const api = axios.create({
  baseURL: "http://127.0.0.1:3000/api/v1",
  timeout: 3000,
});

api.interceptors.request.use((config) => {
  config.headers = {
    Authorization: "Bearer " + store.state.currentUser.token,
  };
  return config;
});

api.interceptors.response.use((result) => {
  return result;
});

export default api;