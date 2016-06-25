DROP TABLE IF EXISTS `personal`;

CREATE TABLE `sample01` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sample01` WRITE;
/*!40000 ALTER TABLE `sample01` DISABLE KEYS */;

INSERT INTO `sample01` (`id`, `name`)
SELECT * FROM (SELECT 1, 'root@local') AS tmp
WHERE NOT EXISTS (
    SELECT `id` FROM `sample01` WHERE `id` = 1
) LIMIT 1;