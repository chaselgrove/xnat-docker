#!/bin/bash -e

XNAT_VERSION="1.6.5"

if groups $USER | grep &>/dev/null '\bdocker\b'; then
  DOCKER="docker"
else
  DOCKER="sudo docker"
fi

$DOCKER build --build-arg XNAT_VERSION="$XNAT_VERSION" -t lren/xnat:$XNAT_VERSION .
$DOCKER push lren/xnat:$XNAT_VERSION
