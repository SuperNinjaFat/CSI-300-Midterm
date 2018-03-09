CREATE DATABASE  IF NOT EXISTS `schema` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `schema`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: schema
-- ------------------------------------------------------
-- Server version	8.0.1-dmr-log

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
-- Table structure for table `kennel_data`
--

DROP TABLE IF EXISTS `kennel_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kennel_data` (
  `pn` varchar(12) NOT NULL,
  `oid` int(11) NOT NULL,
  `kennel_name` varchar(25) DEFAULT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`pn`),
  KEY `oid_index` (`oid`),
  KEY `room_index` (`room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kennel_data`
--

LOCK TABLES `kennel_data` WRITE;
/*!40000 ALTER TABLE `kennel_data` DISABLE KEYS */;
INSERT INTO `kennel_data` VALUES ('Doggy',4,'Mad Dog Kennel',3),('Genius',6,'West Kennel',2),('Idiot',1,'East Kennel',2),('Kat',3,'Mad Dog Kennel',2),('Killer',7,'Dog Heaven',3),('Nice Dog',3,'Mad Dog Kennel',4),('Notoobright',2,'East Kennel',1),('Nut Job',7,'East Kennel',3),('Rover',1,'Dog Heaven',1),('Sleeper',4,'West Kennel',1),('Super Dog',5,'West Kennel',4);
/*!40000 ALTER TABLE `kennel_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_data`
--

DROP TABLE IF EXISTS `match_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_data` (
  `match_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `trick_id` varchar(12) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `Grade` int(11) NOT NULL,
  PRIMARY KEY (`match_data_id`),
  KEY `Grade_index` (`Grade`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_data`
--

LOCK TABLES `match_data` WRITE;
/*!40000 ALTER TABLE `match_data` DISABLE KEYS */;
INSERT INTO `match_data` VALUES (1,1,'Fetch ','2017-05-01 00:00:00',5),(2,2,'Roll Over ','2017-05-05 00:00:00',7),(3,2,'Shake Hands ','2017-05-12 00:00:00',7),(4,3,'Fetch ','2017-05-05 00:00:00',8),(5,4,'Lie Down ','2017-04-24 00:00:00',7),(6,5,'Shake Hands ','2017-05-05 00:00:00',9),(7,6,'Fetch ','2017-05-12 00:00:00',8),(8,7,'Make Coffee ','2017-05-05 00:00:00',9),(9,8,'Make Coffee ','2017-04-24 00:00:00',9),(10,9,'Make Coffee ','2017-05-05 00:00:00',6),(11,10,'Lie Down ','2017-05-05 00:00:00',9),(12,10,'Heel ','2017-05-19 00:00:00',4),(13,11,'Roll Over ','2017-05-19 00:00:00',7),(14,12,'Roll Over ','2017-05-05 00:00:00',8),(15,13,'Heel ','2017-05-05 00:00:00',7),(16,14,'Shake Hands ','2017-04-24 00:00:00',10),(17,15,'Shake Hands ','2017-05-05 00:00:00',6),(18,16,'Fetch ','2017-04-24 00:00:00',9),(19,17,'Fetch ','2017-05-05 00:00:00',8),(20,18,'Lie Down ','2017-04-17 00:00:00',9),(21,19,'Make Coffee ','2017-05-05 00:00:00',8),(22,20,'Make Coffee ','2017-05-12 00:00:00',5),(23,21,'Lie Down ','2017-05-12 00:00:00',2),(24,22,'Heel ','2017-05-05 00:00:00',7),(25,23,'Heel ','2017-05-19 00:00:00',8),(26,24,'Roll Over ','2017-05-05 00:00:00',6);
/*!40000 ALTER TABLE `match_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match_ids`
--

DROP TABLE IF EXISTS `match_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match_ids` (
  `mid` int(11) NOT NULL,
  `pn` varchar(12) DEFAULT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`mid`),
  KEY `tid_index` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match_ids`
--

LOCK TABLES `match_ids` WRITE;
/*!40000 ALTER TABLE `match_ids` DISABLE KEYS */;
INSERT INTO `match_ids` VALUES (1,'Rover',1),(2,'Rover',3),(3,'Notoobright',1),(4,'Notoobright',2),(5,'Notoobright',4),(6,'Kat',1),(7,'Kat',2),(8,'Kat',4),(9,'Doggy',2),(10,'Doggy',3),(11,'Super Dog',1),(12,'Super Dog',4),(13,'Genius',1),(14,'Genius',2),(15,'Killer',2),(16,'Killer',3),(17,'Idiot',3),(18,'Idiot',4),(19,'Nice Dog',1),(20,'Nice Dog',4),(21,'Sleeper',1),(22,'Sleeper',2),(23,'Nut Job',2),(24,'Nut Job',4);
/*!40000 ALTER TABLE `match_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner`
--

DROP TABLE IF EXISTS `owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner` (
  `oid` int(11) NOT NULL,
  `ofn` varchar(12) DEFAULT NULL,
  `oln` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner`
--

LOCK TABLES `owner` WRITE;
/*!40000 ALTER TABLE `owner` DISABLE KEYS */;
INSERT INTO `owner` VALUES (1,'Mark','Hill'),(2,'Sally','Smith'),(3,'Jerry','Hall'),(4,'Hanna','Williams '),(5,'John ','Doe '),(6,'Mary','Billings '),(7,'Barbara','Hastings ');
/*!40000 ALTER TABLE `owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_data`
--

DROP TABLE IF EXISTS `owner_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `owner_data` (
  `oid` int(11) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `E-Mail_1_personal` varchar(25) DEFAULT NULL,
  `E-Mail_2work` varchar(25) DEFAULT NULL,
  `Phone_1_home` varchar(25) DEFAULT NULL,
  `Phone_2_cell` varchar(25) DEFAULT NULL,
  `Phone_3_work` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_data`
--

LOCK TABLES `owner_data` WRITE;
/*!40000 ALTER TABLE `owner_data` DISABLE KEYS */;
INSERT INTO `owner_data` VALUES (1,'1 Main Street, Burlington VT 05401','hill@gmail.com ','hill@acme.com ',NULL,'802-456-7645 ','865-123-1234'),(2,'123 East 79th Street, NYC, NY 11007  ','ssmith@yahoo.com ',NULL,'212-345-6789 ','845-345-4321 ',NULL),(3,'14 Overview Drive, Manchester NH 02345 ',NULL,'jhall@VTstateprison.com ','603-345-6789',NULL,NULL),(4,'43 East Dover Drive, Albany NY 12245 ','hanna_williams@gmail.com ','hwilliams@mybank.com ','508-234-4355 ','508-234-4321 ',NULL),(5,'1 South East Ave., Williston, VT 05466 ','jd@gmail.com ',NULL,NULL,'802-373-0987 ','802-865-6470 '),(6,'123 Fourth Street, Plattsburgh, NY 12897',NULL,'billings@champlain.edu ','518-345-6781 ',NULL,'802-234-3455 '),(7,'56-23 East 65th Street, NYC, NY 11009','hastings@yahoo.com ','bhastings@acme.com ',NULL,'212-321-5432 ','212-234-5678');
/*!40000 ALTER TABLE `owner_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_data`
--

DROP TABLE IF EXISTS `trainer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainer_data` (
  `tid` int(11) NOT NULL,
  `tfn` varchar(12) DEFAULT NULL,
  `tln` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_data`
--

LOCK TABLES `trainer_data` WRITE;
/*!40000 ALTER TABLE `trainer_data` DISABLE KEYS */;
INSERT INTO `trainer_data` VALUES (1,'John','Smith '),(2,'Bruce','Jones'),(3,'Jane','Williams '),(4,'Sheryl','Begin');
/*!40000 ALTER TABLE `trainer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trick_data`
--

DROP TABLE IF EXISTS `trick_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trick_data` (
  `Trick_Name` varchar(12) NOT NULL,
  `Trick_level` int(11) NOT NULL,
  PRIMARY KEY (`Trick_Name`),
  KEY `Trick_level_index` (`Trick_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trick_data`
--

LOCK TABLES `trick_data` WRITE;
/*!40000 ALTER TABLE `trick_data` DISABLE KEYS */;
INSERT INTO `trick_data` VALUES ('Fetch ',11),('Lie Down ',22),('Make Coffee ',33),('Heel ',44),('Roll Over ',55),('Shake Hands ',66);
/*!40000 ALTER TABLE `trick_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-09 15:27:54


SELECT `kennel_data`.`pn`,
    `kennel_data`.`oid`,
    `kennel_data`.`kennel_name`,
    `kennel_data`.`room`
FROM `schema`.`kennel_data`;

SELECT `match_data`.`match_data_id`,
    `match_data`.`mid`,
    `match_data`.`trick_id`,
    `match_data`.`end_date`,
    `match_data`.`Grade`
FROM `schema`.`match_data`;

SELECT `match_ids`.`mid`,
    `match_ids`.`pn`,
    `match_ids`.`tid`
FROM `schema`.`match_ids`;

SELECT `owner`.`oid`,
    `owner`.`ofn`,
    `owner`.`oln`
FROM `schema`.`owner`;

SELECT `owner_data`.`oid`,
    `owner_data`.`Address`,
    `owner_data`.`E-Mail_1_personal`,
    `owner_data`.`E-Mail_2work`,
    `owner_data`.`Phone_1_home`,
    `owner_data`.`Phone_2_cell`,
    `owner_data`.`Phone_3_work`
FROM `schema`.`owner_data`;

SELECT `trainer_data`.`tid`,
    `trainer_data`.`tfn`,
    `trainer_data`.`tln`
FROM `schema`.`trainer_data`;

SELECT `trick_data`.`Trick_Name`,
    `trick_data`.`Trick_level`
FROM `schema`.`trick_data`;
