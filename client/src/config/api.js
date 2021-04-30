import 'dotenv/config';
import axios from 'axios';

console.log(process.env.VUE_APP_API_URL)
export const api = axios.create({
  baseURL: process.env.VUE_APP_API_URL || "http://localhost:8000"
})
