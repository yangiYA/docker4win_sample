#!/bin/bash

HERE=$(cd $(dirname $0);pwd)

cd $HERE

. env.sh

docker-machine start ${VM_NAME}
docker         start ${CONTAINER_NAME}
