#!/usr/bin/env bash

set -e
set -x

# cleanup
docker stop lutronpro_docker
docker rm lutronpro_docker

# run
docker run \
  -d \
  -p 5000:5000 \
  --name lutronpro_docker \
  -e LUTRON_USER='' \
  -e LUTRON_PASS='' \
  -e SMARTBRIDGE_IP='' \
  -e SMARTTHINGS_IP='' \
  lutronpro_docker

