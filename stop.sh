#!/bin/bash -e

if groups $USER | grep &>/dev/null '\bdocker\b'; then
  DOCKER_COMPOSE="docker-compose"
else
  DOCKER_COMPOSE="sudo docker-compose"
fi

# Step by step stop procedure to avoid corrupting the Postgres database
$DOCKER_COMPOSE stop xnat
$DOCKER_COMPOSE stop --timeout 120 xnat-postgres
$DOCKER_COMPOSE stop
