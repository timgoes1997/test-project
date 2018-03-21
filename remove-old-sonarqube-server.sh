#!/bin/sh

#hash="$(docker container ps --all | grep sonarqube | awk '{print $1;}')"


#if [ -z ${hash+x} ]; then docker container stop "$hash" && docker container rm "$hash"; else echo "No container running, not removing any sonarqube containers."; fi

docker rm $(docker stop $(docker ps -a -q --filter ancestor=sonarqube --format="{{.ID}}"))
