cd %~dp0

docker run --link  mysqld:mysql56_01 -it --rm mysql bash
