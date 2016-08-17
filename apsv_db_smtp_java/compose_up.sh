#!/bin/sh

HERE=$(cd $(dirname $0);pwd)

cd $HERE

export SFTP_USER=sftpuser

docker-compose up --no-recreate -d  --build
#docker-compose up -d
