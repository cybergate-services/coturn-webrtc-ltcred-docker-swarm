
docker-compose -f coturn-master-compose.yml build
docker-compose -f coturn-master-compose.yml push
docker-compose -f coturn-slave-compose.yml build
docker-compose -f coturn-slave-compose.yml push
docker stack deploy -c coturn-stack.yml coturn
