#!/bin/sh

CONTAINER_NAME=mysql56_01


HERE=$(cd $(dirname $0);pwd)

cd $HERE

docker stop $CONTAINER_NAME
docker rm   $CONTAINER_NAME

docker rmi  $(docker images -q | head -1)
