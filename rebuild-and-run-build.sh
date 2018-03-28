#!/bin/bash
docker rm build-name
docker restart build-name
docker rmi build-name

docker build -t build-image -f Dockerfile-build .
docker run --name build-name build-image
docker cp build-name:/test-project/build/libs/ArtifactId-1.0-SNAPSHOT.jar build/libs/
