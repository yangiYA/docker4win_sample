#!/bin/bash

HERE=$(cd $(dirname $0);pwd)

cd $HERE
. env.sh

export CONTAINER_NAME
export MYSQL_IMAGE

export HOST_PORT
export VM_PORT
export DOCKER_PORT

docker-machine start || \
docker-compose up -d
