import 'dotenv/config';
import axios from 'axios';

const prodUrl = 'https://trabalho-gces-api.herokuapp.com';
const devUrl = "http://localhost:8000";

const url = process.env.NODE_ENV ==='development' ? devUrl : prodUrl;

console.log(process.env.NODE_ENV)

export const api = axios.create({
  baseURL: url
})
