




* Docker�̌���MySQL�C���[�W�̎g������O��I�ɉ�������  
  http://dqn.sakusakutto.jp/2015/10/docker_mysqld_tutorial.html




mysql:
  restart: always
  image: mysql
  volumes:
    - /my/own/datadir:/var/lib/mysql
  environment:
    - MYSQL_ROOT_PASSWORD=root
    