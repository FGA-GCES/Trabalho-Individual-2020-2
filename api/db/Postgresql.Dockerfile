FROM postgres:13.2-alpine

WORKDIR /db

COPY init_db.sql /docker-entrypoint-initdb.d/

COPY . .