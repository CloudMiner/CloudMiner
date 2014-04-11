CREATE DATABASE  IF NOT EXISTS `cloudminer` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `cloudminer`;
-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: cloudminer
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.12.04.2

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
-- Table structure for table `auth_cas`
--

DROP TABLE IF EXISTS `auth_cas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_cas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `service` varchar(512) DEFAULT NULL,
  `ticket` varchar(512) DEFAULT NULL,
  `renew` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id__idx` (`user_id`),
  CONSTRAINT `auth_cas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_cas`
--

LOCK TABLES `auth_cas` WRITE;
/*!40000 ALTER TABLE `auth_cas` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_cas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_event`
--

DROP TABLE IF EXISTS `auth_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_stamp` datetime DEFAULT NULL,
  `client_ip` varchar(512) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `origin` varchar(512) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `user_id__idx` (`user_id`),
  CONSTRAINT `auth_event_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_event`
--

LOCK TABLES `auth_event` WRITE;
/*!40000 ALTER TABLE `auth_event` DISABLE KEYS */;
INSERT INTO `auth_event` VALUES (1,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 1 created'),(2,'2014-03-27 20:41:51','127.0.0.1',1,'auth','User 1 Registered'),(3,'2014-03-27 22:45:36','127.0.0.1',1,'auth','User 1 Logged-in'),(4,'2014-03-30 07:11:40','127.0.0.1',1,'auth','User 1 Logged-in'),(5,'2014-03-30 08:46:44','127.0.0.1',1,'auth','User 1 Logged-in');
/*!40000 ALTER TABLE `auth_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(512) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'user_1','Grupo asignado únicamente al usuario 1');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_membership`
--

DROP TABLE IF EXISTS `auth_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id__idx` (`user_id`),
  KEY `group_id__idx` (`group_id`),
  CONSTRAINT `auth_membership_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `auth_membership_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES `auth_membership` WRITE;
/*!40000 ALTER TABLE `auth_membership` DISABLE KEYS */;
INSERT INTO `auth_membership` VALUES (1,1,1);
/*!40000 ALTER TABLE `auth_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(512) DEFAULT NULL,
  `table_name` varchar(512) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id__idx` (`group_id`),
  CONSTRAINT `auth_permission_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `registration_key` varchar(512) DEFAULT NULL,
  `reset_password_key` varchar(512) DEFAULT NULL,
  `registration_id` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'Tomás','Restrepo','tomas@tomas.com','pbkdf2(1000,20,sha512)$aebb22315f01cfa8$8457bf0590788f65ad0568f09a13f57ece77f852','','','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `name_short` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_short` (`name_short`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'BitCoin','BTC'),(2,'LiteCoin','LTC');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `port` varchar(5) DEFAULT NULL,
  `platform_id` int(11) DEFAULT NULL,
  `alive` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `platform_id__idx` (`platform_id`),
  CONSTRAINT `machine_ibfk_1` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (1,'VM tomas','88.23.71.197','12345',1,'F'),(20,'tomas-virtual-machine','0.0.0.0','37940',13,'F'),(21,'tomas-virtual-machine','0.0.0.0','46281',13,'F'),(28,'test','111','111',13,'F'),(55,'tomas-virtual-machine','0.0.0.0','53380',13,'F'),(56,'tomas-virtual-machine','0.0.0.0','35491',13,'F'),(57,'tomas-virtual-machine','0.0.0.0','57694',13,'F'),(58,'tomas-virtual-machine','0.0.0.0','51559',13,'F'),(59,'tomas-virtual-machine','0.0.0.0','34616',13,'F');
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miner`
--

DROP TABLE IF EXISTS `miner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `platform_id` int(11) DEFAULT NULL,
  `command_line` varchar(300) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `platform_id__idx` (`platform_id`),
  KEY `currency_id__idx` (`currency_id`),
  CONSTRAINT `miner_ibfk_2` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`id`) ON DELETE CASCADE,
  CONSTRAINT `miner_ibfk_1` FOREIGN KEY (`platform_id`) REFERENCES `platform` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miner`
--

LOCK TABLES `miner` WRITE;
/*!40000 ALTER TABLE `miner` DISABLE KEYS */;
INSERT INTO `miner` VALUES (1,'minerd','1.0',1,'../Miners/11232/11232 -a sha256d --benchmark',1);
/*!40000 ALTER TABLE `miner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platform`
--

DROP TABLE IF EXISTS `platform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `os` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `arch` varchar(10) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES (1,'linux','mint-mate','32bit','13.0'),(8,'Linux','type','arch','ver'),(13,'Linux','LinuxMint','32bit','13');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pool`
--

DROP TABLE IF EXISTS `pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `webpage` varchar(512) DEFAULT NULL,
  `account_email` varchar(512) DEFAULT NULL,
  `account_ID` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool`
--

LOCK TABLES `pool` WRITE;
/*!40000 ALTER TABLE `pool` DISABLE KEYS */;
INSERT INTO `pool` VALUES (1,'Slush\'s pool','http://mining.bitcoin.cz','cloudminer.ucm@gmail.com','cloudminer');
/*!40000 ALTER TABLE `pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machine_id` int(11) DEFAULT NULL,
  `miner_id` int(11) DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_stop` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `machine_id__idx` (`machine_id`),
  KEY `miner_id__idx` (`miner_id`),
  CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`machine_id`) REFERENCES `machine` (`id`) ON DELETE CASCADE,
  CONSTRAINT `worker_ibfk_2` FOREIGN KEY (`miner_id`) REFERENCES `miner` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,1,1,'2014-03-27 22:47:22','2014-03-30 13:44:00'),(21,57,1,'2014-03-30 13:35:47','2014-03-30 13:44:00'),(22,58,1,'2014-03-30 14:06:59','2014-03-30 14:16:11'),(23,59,1,'2014-03-30 14:17:35','2014-03-30 14:17:39');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker_stats`
--

DROP TABLE IF EXISTS `worker_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worker_stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worker_id` int(11) DEFAULT NULL,
  `hash_rate` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `worker_id__idx` (`worker_id`),
  CONSTRAINT `worker_stats_ibfk_1` FOREIGN KEY (`worker_id`) REFERENCES `worker` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_stats`
--

LOCK TABLES `worker_stats` WRITE;
/*!40000 ALTER TABLE `worker_stats` DISABLE KEYS */;
INSERT INTO `worker_stats` VALUES (19,21,6,'2014-03-30 13:35:49'),(20,21,6,'2014-03-30 13:35:54'),(21,21,6,'2014-03-30 13:35:59'),(22,21,6,'2014-03-30 13:36:04'),(23,21,6,'2014-03-30 13:36:09'),(24,22,6,'2014-03-30 14:07:01'),(25,22,6,'2014-03-30 14:07:06'),(26,22,6,'2014-03-30 14:07:11'),(27,22,6,'2014-03-30 14:07:16'),(28,22,6,'2014-03-30 14:07:21'),(29,22,6,'2014-03-30 14:07:26'),(30,22,6,'2014-03-30 14:07:31'),(31,22,6,'2014-03-30 14:07:36'),(32,22,6,'2014-03-30 14:07:41'),(33,22,6,'2014-03-30 14:07:46'),(34,22,6,'2014-03-30 14:07:51'),(35,22,6,'2014-03-30 14:07:56'),(36,22,6,'2014-03-30 14:08:01'),(37,22,6,'2014-03-30 14:08:06'),(38,22,6,'2014-03-30 14:08:11'),(39,22,6,'2014-03-30 14:08:16'),(40,22,6,'2014-03-30 14:08:21'),(41,22,6,'2014-03-30 14:08:26'),(42,22,6,'2014-03-30 14:08:31'),(43,22,6,'2014-03-30 14:08:36'),(44,22,6,'2014-03-30 14:08:41'),(45,22,6,'2014-03-30 14:08:46'),(46,22,6,'2014-03-30 14:08:51'),(47,22,6,'2014-03-30 14:08:56'),(48,22,6,'2014-03-30 14:09:01'),(49,22,6,'2014-03-30 14:09:06'),(50,22,6,'2014-03-30 14:09:11'),(51,22,6,'2014-03-30 14:09:16'),(52,22,6,'2014-03-30 14:09:21'),(53,22,6,'2014-03-30 14:09:26'),(54,22,6,'2014-03-30 14:09:31'),(55,22,6,'2014-03-30 14:09:36'),(56,22,6,'2014-03-30 14:09:41'),(57,22,6,'2014-03-30 14:09:46'),(58,22,6,'2014-03-30 14:09:51'),(59,22,6,'2014-03-30 14:09:56'),(60,22,6,'2014-03-30 14:10:02'),(61,22,6,'2014-03-30 14:10:06'),(62,22,6,'2014-03-30 14:10:11'),(63,22,6,'2014-03-30 14:10:16'),(64,22,6,'2014-03-30 14:10:21'),(65,22,6,'2014-03-30 14:10:26'),(66,22,6,'2014-03-30 14:10:31'),(67,22,6,'2014-03-30 14:10:36'),(68,22,6,'2014-03-30 14:10:41'),(69,22,6,'2014-03-30 14:10:46'),(70,22,6,'2014-03-30 14:10:51'),(71,22,6,'2014-03-30 14:10:56'),(72,22,6,'2014-03-30 14:11:02'),(73,22,6,'2014-03-30 14:11:06'),(74,22,6,'2014-03-30 14:11:11'),(75,22,6,'2014-03-30 14:11:16'),(76,22,6,'2014-03-30 14:11:21'),(77,22,6,'2014-03-30 14:11:26'),(78,22,6,'2014-03-30 14:11:31'),(79,22,6,'2014-03-30 14:11:36'),(80,22,6,'2014-03-30 14:11:41'),(81,22,6,'2014-03-30 14:11:46'),(82,22,6,'2014-03-30 14:11:51'),(83,22,6,'2014-03-30 14:11:56'),(84,22,6,'2014-03-30 14:12:01'),(85,22,6,'2014-03-30 14:12:06'),(86,22,6,'2014-03-30 14:12:11'),(87,22,6,'2014-03-30 14:12:16'),(88,22,6,'2014-03-30 14:12:21'),(89,22,6,'2014-03-30 14:12:26'),(90,22,6,'2014-03-30 14:12:32'),(91,22,6,'2014-03-30 14:12:37'),(92,22,6,'2014-03-30 14:12:41'),(93,22,6,'2014-03-30 14:12:46'),(94,22,6,'2014-03-30 14:12:51'),(95,22,6,'2014-03-30 14:12:56'),(96,22,6,'2014-03-30 14:13:01'),(97,22,6,'2014-03-30 14:13:06'),(98,22,6,'2014-03-30 14:13:11'),(99,22,6,'2014-03-30 14:13:16'),(100,22,6,'2014-03-30 14:13:21'),(101,22,6,'2014-03-30 14:13:26'),(102,22,6,'2014-03-30 14:13:31'),(103,22,6,'2014-03-30 14:13:36'),(104,22,6,'2014-03-30 14:13:41'),(105,22,6,'2014-03-30 14:13:46'),(106,22,6,'2014-03-30 14:13:51'),(107,22,6,'2014-03-30 14:13:56'),(108,22,6,'2014-03-30 14:14:01'),(109,22,6,'2014-03-30 14:14:06'),(110,22,6,'2014-03-30 14:14:11'),(111,22,6,'2014-03-30 14:14:16'),(112,22,6,'2014-03-30 14:14:21'),(113,22,6,'2014-03-30 14:14:26'),(114,22,6,'2014-03-30 14:14:31'),(115,22,6,'2014-03-30 14:14:36'),(116,22,6,'2014-03-30 14:14:41'),(117,22,6,'2014-03-30 14:14:46'),(118,22,6,'2014-03-30 14:14:51'),(119,22,6,'2014-03-30 14:14:56'),(120,22,6,'2014-03-30 14:15:01'),(121,22,6,'2014-03-30 14:15:06'),(122,22,6,'2014-03-30 14:15:11'),(123,22,6,'2014-03-30 14:15:16'),(124,22,6,'2014-03-30 14:15:21'),(125,22,6,'2014-03-30 14:15:26'),(126,22,6,'2014-03-30 14:15:31'),(127,22,6,'2014-03-30 14:15:36'),(128,22,6,'2014-03-30 14:15:41'),(129,22,6,'2014-03-30 14:15:47'),(130,22,6,'2014-03-30 14:15:51'),(131,22,6,'2014-03-30 14:15:56'),(132,22,6,'2014-03-30 14:16:01'),(133,22,6,'2014-03-30 14:16:06'),(134,23,6,'2014-03-30 14:17:37');
/*!40000 ALTER TABLE `worker_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-03-30 14:24:36
