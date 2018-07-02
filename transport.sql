# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.37)
# Database: kanin_transport
# Generation Time: 2017-11-14 14:23:35 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bookings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bookings`;

CREATE TABLE `bookings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `customers` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `stop` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;

INSERT INTO `bookings` (`id`, `customers`, `start`, `stop`)
VALUES
	(1,3,'2017-11-15 11:00:00','2017-11-19 10:00:00'),
	(2,1,'2017-11-20 13:00:00','2017-11-23 11:00:00'),
	(3,2,'2017-12-03 13:00:00','2017-12-09 12:00:00');

/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `regnr_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fabrikat` varchar(100) NOT NULL DEFAULT '',
  `model` int(11) NOT NULL,
  `sittplatser` int(2) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `position` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`regnr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;

INSERT INTO `cars` (`regnr_id`, `fabrikat`, `model`, `sittplatser`, `owner_id`, `position`)
VALUES
	(1,'TOYOTA',0,4,2,'55.604981,13.003822'),
	(2,'Ferrari',0,2,1,'55.704660,13.191007');

/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table customers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `cu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(160) NOT NULL DEFAULT '',
  `personnr` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;

INSERT INTO `customers` (`cu_id`, `name`, `telephone`, `email`, `address`, `personnr`)
VALUES
	(1,'Viktor','123123','victor@exam.se','Hallahålevägen 771 33 LUDVIKA',''),
	(2,'Anna','231234','anna@exam.se','Primulagången 575 93 EKSJÖ',''),
	(3,'Amalia','467890','amalia@exam.se','Degerängsvägen 215 65 MALMÖ','');

/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table owners
# ------------------------------------------------------------

DROP TABLE IF EXISTS `owners`;

CREATE TABLE `owners` (
  `owner_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(160) NOT NULL DEFAULT '',
  `address` varchar(160) NOT NULL DEFAULT '',
  `personnr` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;

INSERT INTO `owners` (`owner_id`, `name`, `telephone`, `email`, `address`, `personnr`)
VALUES
	(1,'	Elof Augustsson','0985678','elof@exam.se','Värngränd 374 36 KARLSHAMN','0'),
	(2,'	Conny Sörensson','4568321','cony@exam.se','Arkliden 	312 91 LAHOLM','0'),
	(3,'Adina Olovsson','6754210','adina@exam.se','Töjnavägen 713 31 NORA','0');

/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table transportation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transportation`;

CREATE TABLE `transportation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `starting-position` varchar(200) NOT NULL DEFAULT '',
  `pick-up` varchar(200) NOT NULL DEFAULT '',
  `drop` varchar(200) NOT NULL DEFAULT '',
  `price` decimal(10,2) NOT NULL,
  `regnr_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
