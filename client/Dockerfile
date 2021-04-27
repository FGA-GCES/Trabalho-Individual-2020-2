FROM node:16

RUN yarn global add @quasar/cli

WORKDIR /api

COPY . .

RUN yarn install

CMD quasar dev
