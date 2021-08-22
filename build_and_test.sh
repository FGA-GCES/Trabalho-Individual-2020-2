docker-compose build || exit 1
docker-compose --file test-api.yml up --exit-code-from api || exit 1
docker-compose --file test-client.yml up --exit-code-from client || exit 1