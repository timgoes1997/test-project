#!/bin/bash
docker rm deploy-name
docker restart deploy-name
docker rmi deploy-name

docker build -t deploy-image -f Dockerfile-deploy .
docker run --name deploy-name deploy-image
