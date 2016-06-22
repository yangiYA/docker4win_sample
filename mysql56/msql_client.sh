#!/bin/sh

HERE=$(cd $(dirname $0);pwd)
cd $HERE

echo .
echo "command :"
echo "          mysql -u root -ppass -h \$MYSQL_PORT_3306_TCP_ADDR"
echo .

docker run --name mysql_client --link mysql56_01:mysql -it --rm mysql:5.6 bash
