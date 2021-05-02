
FROM node:16

RUN yarn global add @quasar/cli

WORKDIR /client

COPY . .

RUN yarn

CMD quasar dev