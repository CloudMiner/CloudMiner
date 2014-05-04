-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: cloudminer
-- ------------------------------------------------------
-- Server version	5.5.35-0+wheezy1

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

LOCK TABLES auth_cas WRITE;
/*!40000 ALTER TABLE auth_cas DISABLE KEYS */;
/*!40000 ALTER TABLE auth_cas ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_event`
--

LOCK TABLES auth_event WRITE;
/*!40000 ALTER TABLE auth_event DISABLE KEYS */;
INSERT INTO auth_event (id, time_stamp, client_ip, user_id, origin, description) VALUES (1,'2014-03-28 15:36:11','127.0.0.1',NULL,'auth','Group 1 created'),(2,'2014-03-28 15:36:11','127.0.0.1',1,'auth','User 1 Registered'),(3,'2014-03-28 15:36:34','127.0.0.1',1,'auth','User 1 Profile updated'),(4,'2014-03-28 15:37:31','127.0.0.1',1,'auth','User 1 Logged-out'),(5,'2014-03-28 15:38:04','127.0.0.1',NULL,'auth','Group 2 created'),(6,'2014-03-28 15:38:04','127.0.0.1',2,'auth','User 2 Registered');
/*!40000 ALTER TABLE auth_event ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES auth_group WRITE;
/*!40000 ALTER TABLE auth_group DISABLE KEYS */;
INSERT INTO auth_group (id, role, description) VALUES (1,'user_1','Grupo asignado únicamente al usuario 1'),(2,'user_2','Grupo asignado únicamente al usuario 2');
/*!40000 ALTER TABLE auth_group ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES auth_membership WRITE;
/*!40000 ALTER TABLE auth_membership DISABLE KEYS */;
INSERT INTO auth_membership (id, user_id, group_id) VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE auth_membership ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES auth_permission WRITE;
/*!40000 ALTER TABLE auth_permission DISABLE KEYS */;
/*!40000 ALTER TABLE auth_permission ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES auth_user WRITE;
/*!40000 ALTER TABLE auth_user DISABLE KEYS */;
INSERT INTO auth_user (id, first_name, last_name, email, password, registration_key, reset_password_key, registration_id) VALUES (1,'Juan','Arratia M','juan@arratia.com','pbkdf2(1000,20,sha512)$bedd26e1f098ab7b$1e68f0845bb79f5e085d2acb778fa18bb7e62410','','',''),(2,'tomas','restrepo','tomas@tomas.com','pbkdf2(1000,20,sha512)$8c44dae31ba345fa$51800e663272d0a9b6b1ec72e37950bb79de382d','','','');
/*!40000 ALTER TABLE auth_user ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `machine`
--

LOCK TABLES machine WRITE;
/*!40000 ALTER TABLE machine DISABLE KEYS */;
INSERT INTO machine (id, name, ip, port, platform_id) VALUES (1,'juan-VM','1.1.1.1.1','111',1);
/*!40000 ALTER TABLE machine ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `miner`
--

LOCK TABLES miner WRITE;
/*!40000 ALTER TABLE miner DISABLE KEYS */;
/*!40000 ALTER TABLE miner ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `platform`
--

LOCK TABLES platform WRITE;
/*!40000 ALTER TABLE platform DISABLE KEYS */;
INSERT INTO platform (id, os, type, arch, version) VALUES (1,'linux','mint','32bit','13.0');
/*!40000 ALTER TABLE platform ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `worker`
--

LOCK TABLES worker WRITE;
/*!40000 ALTER TABLE worker DISABLE KEYS */;
/*!40000 ALTER TABLE worker ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `worker_stats`
--

LOCK TABLES worker_stats WRITE;
/*!40000 ALTER TABLE worker_stats DISABLE KEYS */;
/*!40000 ALTER TABLE worker_stats ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-03 17:56:30
