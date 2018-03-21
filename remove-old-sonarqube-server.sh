#!/bin/sh

hash="$(docker container ps --all | grep sonarqube | awk '{print $1;}')"


if [ -z ${hash+x} ]; then docker container stop "$hash" && docker container rm "$hash"; else echo "No container running, not remaving any sonarqube containers."; fi
