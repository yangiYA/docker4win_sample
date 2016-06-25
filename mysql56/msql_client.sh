#!/bin/sh

HERE=$(cd $(dirname $0);pwd)
cd $HERE

. ./env.sh

echo .
echo "command :"
echo "          mysql -u root -ppass -h \$MYSQL_PORT_3306_TCP_ADDR"
echo .

docker run --name mysql_client --link ${CONTAINER_NAME}:mysql -it --rm mysql:5.6 bash
