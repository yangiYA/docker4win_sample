




* Dockerの公式MySQLイメージの使い方を徹底的に解説するよ  
  http://dqn.sakusakutto.jp/2015/10/docker_mysqld_tutorial.html




mysql:
  restart: always
  image: mysql
  volumes:
    - /my/own/datadir:/var/lib/mysql
  environment:
    - MYSQL_ROOT_PASSWORD=root
    