FROM node:lts-alpine

EXPOSE 8080
WORKDIR /client

COPY package.json ./
COPY package-lock.json ./
RUN npm install 

COPY . /client


CMD ["npx", "quasar", "dev"]
