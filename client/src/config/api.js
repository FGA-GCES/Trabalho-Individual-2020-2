import 'dotenv/config';
import axios from 'axios';

console.log(process.env.API_URL)
export const api = axios.create({
  baseURL: process.env.API_URL || "http://localhost:8000"
})
