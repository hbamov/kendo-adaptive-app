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
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `isallday` tinyint(1) DEFAULT '1',
  `description` text,
  `ownerid` int(11) DEFAULT NULL,
  `starttimezone` datetime DEFAULT NULL,
  `endtimezone` datetime DEFAULT NULL,
  `recurrenceid` int(11) DEFAULT NULL,
  `recurrencerule` varchar(245) DEFAULT NULL,
  `recurrenceexception` varchar(245) DEFAULT NULL,
  `attendees` varchar(45) DEFAULT '[]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'test 3','2020-03-05 11:00:00','2020-03-05 12:00:00',0,'test description 3',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(2,'test 2','2020-03-05 09:00:00','2020-03-05 10:00:00',0,'test 2 description',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(3,'No title','2020-03-03 06:30:00','2020-03-03 07:00:00',0,'',1,NULL,NULL,NULL,NULL,NULL,'[]'),(4,'No title 2','2020-03-02 08:00:00','2020-03-02 09:00:00',0,'gfgdfgf gdf',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(5,'No titlenbvnbcv','2020-03-03 06:30:00','2020-03-03 07:00:00',0,'',1,NULL,NULL,NULL,NULL,NULL,'[]'),(7,'No title trtrew','2020-03-03 06:30:00','2020-03-03 07:00:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(8,'No title','2020-03-04 12:00:00','2020-03-04 13:00:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(9,'No title','2020-03-03 11:00:00','2020-03-03 12:00:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(10,'No title','2020-03-04 09:00:00','2020-03-04 10:00:00',0,'',3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(11,'No title 2 test','2020-03-03 09:00:00','2020-03-03 10:00:00',0,'',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(12,'No title hgfdh dfhdgf ','2020-03-06 11:00:00','2020-03-06 12:00:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(13,'No title','2020-03-06 09:00:00','2020-03-06 10:00:00',0,'',3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(15,'No title','2020-03-03 06:00:00','2020-03-03 06:30:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'[]'),(16,'No title','2020-03-02 11:00:00','2020-03-02 12:00:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(18,'No title create ','2020-03-04 07:30:00','2020-03-04 08:30:00',0,'test create ',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(19,'test all day ','2020-03-11 00:00:00','2020-03-11 00:00:00',1,'test all day ',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(20,'No title all day','2020-03-05 00:00:00','2020-03-05 00:00:00',1,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(21,'No title hgfhgfh','2020-03-04 00:00:00','2020-03-04 00:00:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(22,'No title','2020-03-03 00:00:00','2020-03-03 00:00:00',1,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(23,'No title repeat','2020-03-03 13:00:00','2020-03-03 13:30:00',0,'',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FREQ=WEEKLY;BYDAY=TU','','[]'),(24,'No title','2020-03-02 14:00:00','2020-03-02 14:30:00',0,'',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'FREQ=WEEKLY;COUNT=18;BYDAY=MO,TU,FR','','[]'),(25,'No title','2020-03-10 08:00:00','2020-03-10 08:30:00',0,'',3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[]'),(27,'test test ','2020-03-31 09:30:00','2020-03-31 10:00:00',0,'',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[4,5,3,2]'),(28,'No title','2020-04-01 09:00:00','2020-04-01 11:30:00',0,'',3,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[2,4,3]'),(29,'No title','2020-04-07 10:00:00','2020-04-07 11:30:00',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[3,2]'),(32,'No title','2020-04-08 10:00:00','2020-04-08 10:30:00',0,'',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[3,2,4]'),(33,'No title','2020-04-08 11:00:00','2020-04-08 11:30:00',0,'',2,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'','','[2,4]');
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
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
