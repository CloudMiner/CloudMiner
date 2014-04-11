-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cloudminer
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
-- Dumping data for table `auth_cas`
--

LOCK TABLES `auth_cas` WRITE;
/*!40000 ALTER TABLE `auth_cas` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_cas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_event`
--

LOCK TABLES `auth_event` WRITE;
/*!40000 ALTER TABLE `auth_event` DISABLE KEYS */;
INSERT INTO `auth_event` VALUES (1,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 1 created'),(2,'2014-03-27 20:41:51','127.0.0.1',1,'auth','User 1 Registered'),(3,'2014-03-27 22:45:36','127.0.0.1',1,'auth','User 1 Logged-in');
/*!40000 ALTER TABLE `auth_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'user_1','Grupo asignado únicamente al usuario 1');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES `auth_membership` WRITE;
/*!40000 ALTER TABLE `auth_membership` DISABLE KEYS */;
INSERT INTO `auth_membership` VALUES (1,1,1);
/*!40000 ALTER TABLE `auth_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'Tomás','Restrepo','tomas@tomas.com','pbkdf2(1000,20,sha512)$aebb22315f01cfa8$8457bf0590788f65ad0568f09a13f57ece77f852','','','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'BitCoin','BTC'),(2,'LiteCoin','LTC'),(3,'NovaCoin','NVC'),(4,'TerraCoin','TRC');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (1,'VM tomas','88.23.71.197','12345','F',1),(2,'tomas-virtual-machine','0.0.0.0','37940','F',1),(3,'test','111','111','F',1),(4,'Tom-PC','0.0.0.0','65332','F',2);
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `miner`
--

LOCK TABLES `miner` WRITE;
/*!40000 ALTER TABLE `miner` DISABLE KEYS */;
INSERT INTO `miner` VALUES (1,'minerd','2.3.2',1,1,1,'../Miners/minerd_2.3.2_linux32/minerd -a sha256d --benchmark'),(2,'minerd','2.3.2',1,1,2,'../Miners/minerd_2.3.2_linux32/minerd -a sha256d -o stratum+tcp://stratum.bitcoin.cz:3333 -O cloudminer.worker1:9868UyAN'),(3,'minerd','2.3.2',1,2,3,'../Miners/minerd_2.3.2_linux32/minerd -a scrypt -o stratum+tcp://europe.mine-litecoin.com -O cloudminer.worker1:x'),(4,'minerd','2.3.2',2,1,1,'../Miners/minerd_2.3.2_win64/minerd.exe -a sha256d --benchmark'),(5,'minerd','2.3.2',2,1,2,'../Miners/minerd_2.3.2_win64/minerd.exe -a sha256d -o stratum+tcp://stratum.bitcoin.cz:3333 -O cloudminer.worker1:9868UyAN'),(6,'minerd','2.3.2',2,2,3,'../Miners/minerd_2.3.2_win64/minerd.exe -a scrypt -o stratum+tcp://europe.mine-litecoin.com -O cloudminer.worker1:x');
/*!40000 ALTER TABLE `miner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `platform`
--

LOCK TABLES `platform` WRITE;
/*!40000 ALTER TABLE `platform` DISABLE KEYS */;
INSERT INTO `platform` VALUES (1,'Linux','LinuxMint','32bit','13'),(2,'Windows','unique','64bit','8');
/*!40000 ALTER TABLE `platform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pool`
--

LOCK TABLES `pool` WRITE;
/*!40000 ALTER TABLE `pool` DISABLE KEYS */;
INSERT INTO `pool` VALUES (1,'benchmark','-','-','-'),(2,'Slush_s pool','http://mining.bitcoin.cz','cloudminer.ucm@gmail.com','cloudminer'),(3,'Mine-Litecoin','https://mine-litecoin.com','nilksermot@gmail.com','cloudminer'),(4,'BTC guild','https://www.btcguild.com','cloudminer.ucm@gmail.com','cloudminer');
/*!40000 ALTER TABLE `pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,1,1,'2014-03-27 22:47:22','2014-03-30 13:44:00'),(2,2,1,'2014-03-30 13:35:47','2014-03-30 13:44:00'),(3,2,1,'2014-03-30 14:06:59','2014-03-30 14:16:11');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `worker_stats`
--

LOCK TABLES `worker_stats` WRITE;
/*!40000 ALTER TABLE `worker_stats` DISABLE KEYS */;
INSERT INTO `worker_stats` VALUES (1,1,6,'2014-03-30 13:35:49'),(2,1,6,'2014-03-30 13:35:54'),(3,1,5,'2014-03-30 13:35:59'),(4,1,6,'2014-03-30 13:36:04'),(5,2,5,'2014-03-30 13:36:09'),(6,2,6,'2014-03-30 14:07:01'),(7,2,5,'2014-03-30 14:07:06'),(8,2,6,'2014-03-30 14:07:11');
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

-- Dump completed on 2014-04-11 14:28:05
