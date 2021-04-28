FROM node:16

WORKDIR /client

COPY . .

RUN yarn global add @quasar/cli

RUN yarn install

CMD yarn && quasar dev
