#!/bin/bash
docker build -t mysql -f ./Dockerfile .
docker run -d --rm --name BD -e MYSQL_ROOT_PASSWORD=123BANCO mysql
docker exec -it BD /bin/bash