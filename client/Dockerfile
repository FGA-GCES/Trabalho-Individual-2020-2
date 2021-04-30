FROM node:16

WORKDIR /frontend

COPY . .

RUN yarn global add @quasar/cli

RUN yarn install

CMD yarn && quasar dev
