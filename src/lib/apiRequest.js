import axios from "axios";

const apiRequest = axios.create({
  headers: {
    'Content-Type': 'application/json',
  },
  baseURL: "https://flat-frontend.onrender.com/api",
  // baseURL: "http://localhost:8800/api",
  withCredentials: true,
});

export default apiRequest;