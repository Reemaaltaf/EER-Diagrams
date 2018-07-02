CREATE DATABASE  IF NOT EXISTS `book` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `book`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: book
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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `Authors_ID` int(11) NOT NULL,
  `Authors_Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Authors_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Joe','Nygatan','Malmö'),(2,'Smith','Storgatan','Lund'),(3,'Jimmy','Pumpgatan','Landskrona'),(4,'Micheal','Gamaltorget','Malmö'),(5,'Luke','Nygatan','Göteborg'),(6,'Behrouz','Backagatan','Helsingborg'),(7,'Paul','Rosengård','Malmö'),(8,'SmedHamre','Järnvägsgatan','Helsingborg'),(9,'Gunilla','Drottningsgatan','Göteborg'),(10,'Linda','Pumpgatan','Landskrona');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_has_books`
--

DROP TABLE IF EXISTS `authors_has_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_has_books` (
  `Authors_Authors_ID` int(11) NOT NULL,
  `Books_Book_ID` int(11) NOT NULL,
  PRIMARY KEY (`Authors_Authors_ID`,`Books_Book_ID`),
  KEY `fk_Authors_has_Books_Books1_idx` (`Books_Book_ID`),
  KEY `fk_Authors_has_Books_Authors1_idx` (`Authors_Authors_ID`),
  CONSTRAINT `fk_Authors_has_Books_Authors1` FOREIGN KEY (`Authors_Authors_ID`) REFERENCES `authors` (`Authors_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Authors_has_Books_Books1` FOREIGN KEY (`Books_Book_ID`) REFERENCES `books` (`Book_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_has_books`
--

LOCK TABLES `authors_has_books` WRITE;
/*!40000 ALTER TABLE `authors_has_books` DISABLE KEYS */;
INSERT INTO `authors_has_books` VALUES (1,21),(2,22),(3,23),(4,24),(6,25),(7,26),(8,26),(8,27),(1,28),(5,28),(9,29),(3,30),(10,30);
/*!40000 ALTER TABLE `authors_has_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `Book_ID` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Genre` varchar(45) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Publishers_Publisher_ID` int(11) NOT NULL,
  PRIMARY KEY (`Book_ID`),
  KEY `fk_Books_Publishers1_idx` (`Publishers_Publisher_ID`),
  CONSTRAINT `fk_Books_Publishers1` FOREIGN KEY (`Publishers_Publisher_ID`) REFERENCES `publishers` (`Publisher_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (21,'By the Iowa Sea','Memorial',240,101),(22,'Some Kind of Fairy Tale','Fantasy',259,102),(23,'The Lady in Gold','Fine Arts',356,104),(24,'Only Enchanting','Romance',198,106),(25,'MySQL Tutorials','Education',408,107),(26,'Foundation of computer science','ducation',429,103),(27,'Java SE8','Education',398,105),(28,'Mathematik D','Education',378,104),(29,'Nya Mål','Education',296,102),(30,'1 färs 100 rätter','cooking',189,103);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishers`
--

DROP TABLE IF EXISTS `publishers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publishers` (
  `Publisher_ID` int(11) NOT NULL,
  `Publisher_Name` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  PRIMARY KEY (`Publisher_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishers`
--

LOCK TABLES `publishers` WRITE;
/*!40000 ALTER TABLE `publishers` DISABLE KEYS */;
INSERT INTO `publishers` VALUES (101,'New Store','Malmö',1993),(102,'New Store','Lund',1990),(103,'Sun Light','Helsingborg',1999),(104,'Cengage','Göteborg',1996),(105,'Prentice','Göteborg',1983),(106,'B & R Publisher','Malmö',2000),(107,'Moon Publisher','Lund',2001);
/*!40000 ALTER TABLE `publishers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-23 18:21:16
