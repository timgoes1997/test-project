#!/bin/sh

#hash="$(docker container ps --all | grep sonarqube | awk '{print $1;}')"


if [ -z ${hash+x} ]; then docker rm $(docker stop $(docker ps -a -q --filter ancestor=sonarqube --format="{{.ID}}")); else echo "No container running, not removing any sonarqube containers."; fi


