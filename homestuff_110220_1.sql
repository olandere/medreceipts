-- MySQL dump 10.13  Distrib 5.1.52, for Win64 (unknown)
--
-- Host: localhost    Database: homestuff
-- ------------------------------------------------------
-- Server version	5.1.52-community

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `usstate` varchar(255) NOT NULL,
  `zip` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,0,'5310 W Karen Dr','','Glendale','AZ',85308),(2,2,'11024 N 28th Dr','','Phoenix','AZ',85029),(3,0,'15420 N 32nd Dr','','Phoenix','AZ',85053),(4,0,'7200 W Bell Rd','','Glendale','AZ',85308),(5,0,'4025 W Bell Rd','','Phoenix','AZ',85053),(6,1,'4965 W Bell Rd','','Glendale','AZ',85306),(7,0,'15830 N 35th Ave','','Phoenix','AZ',85053),(8,0,'18275 N 59th Ave','','Glendale','AZ',85308),(9,0,'4015 N 51st Ave','','Glendale','AZ',85306),(10,0,'14275 N 87th St','','Scottsdale','AZ',85260),(11,0,'5310 West Thunderbird Road','Suite 100','Glendale','AZ',85306),(12,0,'20325 N. 51st Ave','Suite 116','Glendale','AZ',85308),(13,0,'18589 N 59th Ave','','Glendale','AZ',85308),(14,0,'6677 W Thunderbird Rd','','Glendale','AZ',85306),(15,0,'19829 N. 27th Ave','','Phoenix','AZ',85027),(16,0,'20201 N. Scottsdale Healthcare Drive','Suite 150','Scottsdale','AZ',85255);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC4E39B55414F699F` (`address_id`),
  CONSTRAINT `FKC4E39B55414F699F` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,0,1,'Eric Olander'),(2,0,1,'Aiga Neimane'),(3,0,1,'Anna Olander'),(4,0,1,'Sergei Olander'),(5,0,1,'Kristaps Olander');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKC52405F1414F699F` (`address_id`),
  CONSTRAINT `FKC52405F1414F699F` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,0,2,'','Roberson','623-486-0935'),(2,0,3,'602-375-3949','Northwest Clinic for Children','602-866-1974'),(3,0,4,'','Modern Family Dentistry','623-979-1900'),(4,0,5,'','Clark L Jones','602-938-6709'),(5,0,6,'','Walgreens','602-853-2305'),(6,0,7,'','Kraig M Burgess','602-298-1188'),(7,0,8,'','Paseo Family Physician','602-547-8184'),(8,0,9,'','James E Campbell MD','623-439-2400'),(9,0,10,'','North Scottsdale Dermatology','480-905-8485'),(10,0,11,'','Southwest Diagnostic Imaging',''),(11,0,12,'','Phoenix Children\'s Hospital',''),(12,0,13,'','NextCare',''),(13,0,14,'','Northwest Chest Consultants',''),(14,0,15,'','Mendy\'s Place',''),(15,0,16,'','ARIZONA PEDIATRIC EYE SPECIALISTS','');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visit`
--

DROP TABLE IF EXISTS `visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `copay` float NOT NULL,
  `count_milage` bit(1) NOT NULL,
  `date_of_visit` datetime NOT NULL,
  `entry_complete` bit(1) NOT NULL,
  `paid_withfsa` bit(1) NOT NULL,
  `person_id` bigint(20) NOT NULL,
  `provider_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6B04D4BC3898055` (`provider_id`),
  KEY `FK6B04D4B9EA3A895` (`person_id`),
  CONSTRAINT `FK6B04D4B9EA3A895` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`),
  CONSTRAINT `FK6B04D4BC3898055` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visit`
--

LOCK TABLES `visit` WRITE;
/*!40000 ALTER TABLE `visit` DISABLE KEYS */;
INSERT INTO `visit` VALUES (1,0,20,'','2010-08-11 00:00:00','','\0',4,1),(2,0,20,'','2010-08-23 00:00:00','','\0',3,1),(3,0,5.6,'','2010-12-21 00:00:00','','\0',4,3),(4,1,178,'\0','2010-02-17 00:00:00','','',4,4),(5,0,184,'\0','2010-02-17 00:00:00','','',3,4),(6,0,45,'','2010-02-10 00:00:00','','',1,3),(7,0,90,'','2010-02-22 00:00:00','','',1,3),(8,0,402.4,'','2010-03-15 00:00:00','','',1,3),(9,0,20,'','2010-05-25 00:00:00','','\0',5,2),(10,1,20,'','2010-05-04 00:00:00','','\0',3,2),(11,0,20,'','2010-05-24 00:00:00','','\0',3,1),(12,0,20,'','2010-05-03 00:00:00','','',3,1),(13,0,20,'','2010-05-12 00:00:00','','\0',4,1),(14,0,20,'','2010-08-18 00:00:00','','\0',4,1),(15,0,80.21,'','2010-02-01 00:00:00','','\0',3,1),(16,0,20,'','2010-09-01 00:00:00','','\0',4,1),(17,0,20,'','2010-09-30 00:00:00','','\0',3,2),(18,0,20,'','2010-10-20 00:00:00','','\0',4,1),(19,0,20,'','2010-06-04 00:00:00','','\0',5,2),(20,0,7.14,'\0','2010-05-19 00:00:00','','',4,1),(21,0,12.86,'','2010-05-19 00:00:00','','\0',4,1),(22,0,25,'','2010-07-27 00:00:00','','\0',4,5),(23,0,20,'','2010-12-08 00:00:00','','\0',4,6),(24,0,50,'','2010-01-05 00:00:00','','\0',1,5),(25,0,5,'','2010-01-25 00:00:00','','\0',5,5),(26,0,20,'','2010-03-15 00:00:00','','',3,1),(27,0,25,'','2010-04-05 00:00:00','','',4,5),(28,0,29.69,'','2010-11-02 00:00:00','','\0',4,5),(29,0,35.92,'','2010-10-01 00:00:00','','\0',4,5),(30,0,29.88,'','2010-08-02 00:00:00','','\0',4,5),(31,0,18.51,'','2010-09-20 00:00:00','','\0',5,5),(32,0,5,'','2010-10-05 00:00:00','','\0',5,5),(33,0,35,'','2010-03-06 00:00:00','','',4,5),(34,0,5,'','2010-08-16 00:00:00','','\0',5,5),(35,0,40,'','2010-03-06 00:00:00','','',1,7),(36,0,15,'','2010-03-02 00:00:00','','',5,5),(37,0,20,'','2010-02-11 00:00:00','','',5,2),(38,0,20,'','2010-01-25 00:00:00','','\0',5,2),(39,0,20,'','2010-02-12 00:00:00','','',5,2),(40,0,20,'','2010-03-02 00:00:00','','',5,2),(41,0,492.4,'','2010-08-23 00:00:00','','\0',2,3),(42,0,7.59,'','2010-05-07 00:00:00','','\0',4,5),(43,0,20,'','2010-03-11 00:00:00','','',4,1),(44,0,20,'','2010-03-29 00:00:00','','',3,1),(45,0,20,'','2010-01-26 00:00:00','','\0',4,8),(46,0,2.11,'','2010-02-10 00:00:00','','',4,5),(47,0,9.1,'','2010-04-14 00:00:00','','\0',1,9),(48,0,8.49,'','2010-11-22 00:00:00','','\0',5,5),(49,0,8.08,'','2010-11-12 00:00:00','','\0',2,5),(50,0,80.21,'','2011-01-26 00:00:00','','\0',4,1),(51,0,20,'','2010-09-15 00:00:00','','\0',4,1),(52,0,80.21,'','2011-02-16 00:00:00','','\0',4,1),(53,0,0,'','2011-02-17 00:00:00','','\0',4,4),(54,0,80.21,'','2011-02-09 00:00:00','','',4,1),(55,1,20,'','2010-05-05 00:00:00','','\0',4,1),(56,1,20,'','2010-05-10 00:00:00','','\0',3,1),(57,1,20,'','2010-06-02 00:00:00','','\0',4,1),(58,0,20,'','2010-06-23 00:00:00','\0','\0',4,1),(59,0,20,'','2010-06-30 00:00:00','\0','\0',3,1),(60,1,20,'','2010-07-07 00:00:00','','\0',4,1),(61,1,20,'','2010-07-14 00:00:00','','\0',4,1),(62,0,20,'','2010-07-13 00:00:00','\0','\0',3,1),(63,0,3.58,'','2010-03-17 00:00:00','','',1,10),(64,0,65.91,'','2010-02-10 00:00:00','','',4,10),(65,0,50,'','2010-09-19 00:00:00','','\0',5,11),(66,0,20,'','2010-11-17 00:00:00','','\0',4,12),(67,0,20,'','2010-03-17 00:00:00','','',1,7),(68,0,20,'','2010-11-15 00:00:00','','\0',5,2),(69,0,85,'','2010-11-03 00:00:00','','\0',4,1),(70,0,20,'','2010-09-22 00:00:00','','\0',4,1),(71,2,20,'','2010-11-23 00:00:00','','\0',3,1),(72,0,20,'','2010-09-20 00:00:00','','\0',3,1),(73,0,85,'','2010-11-10 00:00:00','','\0',4,1),(74,0,20,'','2010-10-06 00:00:00','','\0',4,1),(75,0,20,'','2010-10-27 00:00:00','','\0',4,1),(76,0,80.21,'','2010-12-15 00:00:00','','\0',4,1),(77,0,20,'','2010-08-04 00:00:00','','\0',4,1),(78,0,20,'','2010-09-08 00:00:00','','\0',4,1),(79,0,80.21,'','2011-01-05 00:00:00','','\0',4,1),(80,0,80.21,'','2011-01-19 00:00:00','','\0',4,1),(81,0,20,'','2010-12-15 00:00:00','','\0',4,1),(82,0,80.21,'','2010-12-22 00:00:00','','\0',4,1),(83,0,20,'','2010-06-30 00:00:00','','\0',4,1),(84,0,20,'','2010-04-21 00:00:00','','\0',4,1),(85,0,20,'','2010-04-07 00:00:00','','',4,1),(86,0,20,'','2010-10-26 00:00:00','','\0',4,8),(87,0,20,'','2010-11-12 00:00:00','','\0',2,12),(88,0,20,'','2010-11-19 00:00:00','','\0',4,6),(89,0,20,'','2010-08-16 00:00:00','','\0',5,2),(90,0,50,'','2010-08-02 00:00:00','','\0',5,11),(91,0,20,'','2010-08-26 00:00:00','','\0',1,13),(92,0,20,'','2010-10-13 00:00:00','','\0',4,1),(93,0,20,'','2010-09-02 00:00:00','','\0',5,2),(94,0,20,'','2010-09-29 00:00:00','','\0',4,1),(95,0,50,'','2010-10-05 00:00:00','','\0',5,14),(96,0,20,'','2010-05-14 00:00:00','','\0',5,2),(97,1,20,'','2010-04-28 00:00:00','','',4,1),(98,0,20,'','2010-04-12 00:00:00','\0','\0',3,1),(99,0,20,'','2010-04-14 00:00:00','\0','\0',4,1),(100,0,20,'\0','2010-03-17 00:00:00','\0','\0',2,7),(101,0,20,'','2010-03-16 00:00:00','\0','\0',4,1),(102,0,0,'','2010-03-18 00:00:00','','\0',4,1),(103,0,0,'','2010-03-11 00:00:00','\0','\0',5,2),(104,0,20,'','2010-02-15 00:00:00','\0','\0',4,15),(105,0,20,'','2010-02-22 00:00:00','\0','\0',4,1),(106,0,0,'','2010-03-03 00:00:00','\0','\0',4,1),(107,0,20,'','2010-03-01 00:00:00','\0','\0',3,1),(108,0,80.21,'','2010-01-04 00:00:00','\0','\0',3,1),(109,0,80.21,'','2010-01-18 00:00:00','\0','\0',3,1),(110,0,0,'','2010-02-18 00:00:00','','\0',4,4),(111,0,20,'','2010-02-15 00:00:00','\0','\0',3,1),(112,0,20,'','2010-02-10 00:00:00','\0','\0',4,2);
/*!40000 ALTER TABLE `visit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-02-21 10:07:43
