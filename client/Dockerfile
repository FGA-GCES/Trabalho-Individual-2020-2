FROM node

RUN mkdir /client

WORKDIR /client

COPY . /client

RUN yarn install && yarn global add @quasar/cli
