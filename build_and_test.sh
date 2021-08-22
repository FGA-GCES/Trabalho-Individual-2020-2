docker-compose build
docker-compose --file test-api.yml up --abort-on-container-exit
docker-compose --file test-client.yml up --abort-on-container-exit