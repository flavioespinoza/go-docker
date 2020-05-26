echo -e "start go-app"

docker-compose --remove-orphans -f go-app-compose.yaml up -d