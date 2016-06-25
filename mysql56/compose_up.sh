#!/bin/bash

HERE=$(cd $(dirname $0);pwd)

cd $HERE

docker-machine start
docker-compose up -d
