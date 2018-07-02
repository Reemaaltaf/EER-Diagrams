CREATE DATABASE  IF NOT EXISTS `mobile` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mobile`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mobile
-- ------------------------------------------------------
-- Server version	5.6.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `C_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (101,'Maria','Lund','0763379520'),(102,'Erik','Helsingborg','0734379521'),(103,'Nils','Gunnesbo','0701234567'),(104,'Lisa','Kävlinge','0712079520'),(105,'Lusia','Lund','07034567890'),(106,'Jimmy','Malmö','0763380524'),(107,'Ben','Helsingborg','0767890123'),(108,'John','Göteborg','07656781234'),(109,'Ramsay','Göteborg','07612345678'),(110,'Lina','Malmö','040123405');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobiles`
--

DROP TABLE IF EXISTS `mobiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobiles` (
  `M_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(45) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  PRIMARY KEY (`M_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobiles`
--

LOCK TABLES `mobiles` WRITE;
/*!40000 ALTER TABLE `mobiles` DISABLE KEYS */;
INSERT INTO `mobiles` VALUES (1,'Apple','iPhone 5s','2010-12-13'),(2,'Samsung','Galaxy S4','2003-03-13'),(3,'Samsung','Galaxy S5','2008-08-14'),(4,'Sony','Z3','2012-12-13'),(5,'Nokia','Lumia 503','2011-11-13'),(6,'Apple','iPhone 6','2009-09-14'),(7,'Nokia','Lumia 603','2005-05-14'),(8,'Nokia','N61','2007-07-14'),(9,'Sony','Z4','2001-12-14'),(10,'LG','lg12','2004-05-14');
/*!40000 ALTER TABLE `mobiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Operator` varchar(10) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'Tre','Malmö',10000),(2,'Tre','Lund',7689),(3,'Tre','Landskrona',4567),(4,'Telenor','Lund',6578),(5,'Telenor','Malmö',3457),(6,'Telia','Malmö',6789),(7,'Telia','Helsingborg',8907),(8,'Tele2','Helsingborg',6678),(9,'Tele2','Göteborg',6789),(10,'Comviq','Göteborg',7890);
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-22 15:58:21
