#NODE VERSION 16
FROM node:16

RUN yarn global add @quasar/cli

RUN yarn install

WORKDIR /client

COPY . .

CMD yarn && quasar dev