FROM node:lts-alpine

EXPOSE 8080
WORKDIR /client

COPY package.json ./
#COPY package-lock.json ./
COPY yarn.lock ./
#RUN npm install 
RUN yarn install
COPY . /client

CMD ["yarn", "quasar", "dev"]
#CMD ["npx", "quasar", "dev"]
