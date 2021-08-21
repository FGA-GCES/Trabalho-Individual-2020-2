# develop stage
FROM node:13.14-alpine as develop-stage
WORKDIR /client
ADD package*.json ./
RUN yarn global add @quasar/cli
ADD . .

# build stage
FROM develop-stage as build-stage
RUN yarn
RUN quasar build

# production stage
FROM nginx:1.17.5-alpine as production-stage
COPY --from=build-stage /client/dist/spa /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

