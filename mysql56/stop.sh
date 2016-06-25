#!/bin/bash

HERE=$(cd $(dirname $0);pwd)

cd $HERE

. ./env.sh

docker         stop ${CONTAINER_NAME}
docker-machine stop ${VM_NAME}
