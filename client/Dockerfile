FROM node:12-alpine

RUN apk add --no-cache python g++ make

RUN mkdir -p /usr/src/front
WORKDIR /usr/src/front

RUN yarn global add @quasar/cli
RUN yarn install

COPY . /usr/src/front

CMD quasar dev
