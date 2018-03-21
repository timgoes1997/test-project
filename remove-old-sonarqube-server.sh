#!/bin/sh

hash="$(docker container ps --all | grep sonarqube | awk '{print $1;}')"


if [ -z ${hash+x} ]; then docker container stop "$hash"; else docker container rm "$hash"; fi
