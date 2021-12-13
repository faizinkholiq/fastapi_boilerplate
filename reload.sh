cd $(dirname "$0")

chmod 777 -R data/

# docker
docker-compose pull
docker-compose stop
docker-compose down
docker-compose up --build -d

# fastapi logs
docker logs -f web