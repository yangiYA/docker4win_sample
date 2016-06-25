#!/bin/sh

HERE=$(cd $(dirname $0);pwd)

cd $HERE

. env.sh

docker         stopt ${CONTAINER_NAME}
docker-machine stop ${VM_NAME}
