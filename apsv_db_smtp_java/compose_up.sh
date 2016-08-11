#!/bin/sh

HERE=$(cd $(dirname $0);pwd)

cd $HERE

docker-compose up -d
