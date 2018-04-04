#!/bin/bash
docker rm build-name
docker restart build-name
docker rmi build-name

docker build -t build-image -f Dockerfile-build .
docker run --name build-name build-image
mkdir -p build/libs
docker cp build-name:/test-project/build/libs/ build/libs
