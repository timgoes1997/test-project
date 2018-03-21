#!/bin/sh

hash="$(docker container ps --all | grep sonarqube | awk '{print $1;}')"

docker container stop "$hash"
docker container rm "$hash"
