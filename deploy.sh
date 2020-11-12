
docker-compose -f corturn-master-compose.yml build
docker-compose -f corturn-master-compose.yml push
docker-compose -f corturn-slave-compose.yml build
docker-compose -f corturn-slave-compose.yml push
docker stack deploy -c coturn-stack.yml coturn
