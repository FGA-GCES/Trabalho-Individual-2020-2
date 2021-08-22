docker-compose build
docker-compose --file test-api.yml up --exit-code-from api
docker-compose --file test-client.yml up --exit-code-from client