CREATE DATABASE  IF NOT EXISTS `kendo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `kendo`;
-- MySQL dump 10.13  Distrib 5.5.62, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: kendo
-- ------------------------------------------------------
-- Server version	5.5.62-0ubuntu0.14.04.1

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
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fromEmail` varchar(250) DEFAULT NULL,
  `fromName` varchar(250) DEFAULT NULL,
  `toEmail` varchar(250) DEFAULT NULL,
  `toName` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `html` text,
  `text` text,
  `date` datetime DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `isRead` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (1,'perso@example.com','perso','eboisgon@example.com','eboisgon','subject 1','<p>coucou</p>','coucou','2018-12-12 10:12:12','inbox,important',1),(2,'perso@example.com','perso','eboisgon@example.com','eboisgon','subject 1','<p>coucou</p>','coucou','2018-12-12 12:12:12','inbox,important',0),(3,'perso1@example.com','perso1','eboisgon@example.com','eboisgon','subject 2','<p>coucou 1</p>','coucou 1','2019-12-13 10:12:12','inbox',0),(4,'perso3@example.com','perso3','eboisgon@example.com','eboisgon','subject 3','<p>coucou 3</p>','coucou 3','2019-12-14 08:12:12','inbox',0),(5,'perso4@example.com','perso4','eboisgon@example.com','eboisgon','subject  4','<p>coucou 4</p>','coucou 4','2019-12-15 06:12:12','inbox',0),(6,'perso5@example.com','perso5','eboisgon@example.com','eboisgon','subject  5','<p>coucou 5</p>','coucou 5','2019-12-16 08:12:12','inbox, perso',1),(7,'eboisgon@example.com','eboisgon','perso5@example.com','perso5','subject  5','<p>coucou 5</p>','coucou 5','2019-12-16 10:12:12','outbox',0),(8,'eboisgon@example.com','eboisgon','perso5@example.com','perso5','subject  5','<p>coucou 5</p>','coucou 5','2019-12-16 10:12:12','outbox',0),(9,'eboisgon@example.com','eboisgon','perso5@example.com','perso5','subject  5','<p>coucou 5</p>','coucou 5','2019-12-16 10:12:12','outbox',0),(10,'eboisgon@example.com','eboisgon','perso5@example.com','perso5','subject  5','<p>coucou 5</p>','coucou 5','2019-12-16 10:12:12','outbox',0),(11,'eboisgon@example.com','eboisgon','perso5@example.com','perso5','subject  5','<p>coucou 5</p>','coucou 5','2019-12-16 10:12:12','outbox',0),(12,'perso6@example.com','perso6','eboisgon@example.com','eboisgon','subject  6','<p>coucou 6</p>','coucou 6','2019-12-13 09:12:12','inbox',0),(13,'perso6@example.com','perso6','eboisgon@example.com','eboisgon','subject  6','<p>coucou 6</p>','coucou 6','2019-12-14 07:12:12','inbox',0),(14,'perso6@example.com','perso6','eboisgon@example.com','eboisgon','subject  6','<p>coucou 6</p>','coucou 6','2019-12-15 07:12:12','inbox',0),(15,'perso1@example.com','perso1','eboisgon@example.com','eboisgon','subject  1','<p>coucou 1</p>','coucou 1','2019-12-16 07:12:12','inbox',1),(16,'perso2@example.com','perso2','eboisgon@example.com','eboisgon','subject  2','<p>coucou 2</p>','coucou 2','2019-12-17 07:12:12','inbox',1),(18,'perso3@example.com','perso3','eboisgon@example.com','eboisgon','subject  3','<p>coucou 3</p>','coucou 3','2020-01-18 07:12:12','inbox',1),(20,'perso4@example.com','perso5','eboisgon@example.com','eboisgon','subject  5','<p>coucou 5</p>','coucou 5','2020-02-18 19:12:12','inbox',1),(21,'perso7@example.com','perso7','eboisgon@example.com','eboisgon','subject  7','<p>coucou 7</p>','coucou 7','2020-02-19 23:12:12','inbox',1);
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-06 17:02:12
