#!/bin/sh

HERE=$(cd $(dirname $0);pwd)

cd $HERE

. ./init.txt

export SFTP_USER=sftpuser
export SFTP_PORT=22

#docker-compose up -d  --no-recreate --build
docker-compose up -d  --force-recreate
#docker-compose up -d

echo -e "\n****************************************************"

docker ps -a

echo -e "\n"
echo -e "****************************************************"
echo -e "\* IP of Linux VM(for docker containers)"
docker-machine ip default
echo -e "****************************************************"
echo -e "\n"
