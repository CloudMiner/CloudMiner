-- MySQL dump 10.14  Distrib 5.5.36-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cloudminer
-- ------------------------------------------------------
-- Server version	5.5.36-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
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
INSERT INTO auth_event (id, time_stamp, client_ip, user_id, origin, description) VALUES (1,'2014-05-14 22:25:48','127.0.0.1',NULL,'auth','Group 1 created'),(2,'2014-05-14 22:25:48','127.0.0.1',1,'auth','User 1 Registered');
/*!40000 ALTER TABLE auth_event ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES auth_group WRITE;
/*!40000 ALTER TABLE auth_group DISABLE KEYS */;
INSERT INTO auth_group (id, role, description) VALUES (1,'user_1','Group uniquely assigned to user 1');
/*!40000 ALTER TABLE auth_group ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES auth_membership WRITE;
/*!40000 ALTER TABLE auth_membership DISABLE KEYS */;
INSERT INTO auth_membership (id, user_id, group_id) VALUES (1,1,1);
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
INSERT INTO auth_user (id, first_name, last_name, email, password, registration_key, reset_password_key, registration_id) VALUES (1,'arturo','pareja','arturo@arturo.com','pbkdf2(1000,20,sha512)$a2431e6e11bd5ecd$ef6f4a355d4faf3bd48e81276ad6e7be66f0270c','','','');
/*!40000 ALTER TABLE auth_user ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `currency`
--

LOCK TABLES currency WRITE;
/*!40000 ALTER TABLE currency DISABLE KEYS */;
/*!40000 ALTER TABLE currency ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `machine`
--

LOCK TABLES machine WRITE;
/*!40000 ALTER TABLE machine DISABLE KEYS */;
INSERT INTO machine (id, name, ip, port, alive, platform_id) VALUES (1,'manji','0.0.0.0','58517','F',1),(2,'manji','0.0.0.0','47610','F',1);
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
INSERT INTO platform (id, os, type, arch) VALUES (1,'Linux','','64bit');
/*!40000 ALTER TABLE platform ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pool`
--

LOCK TABLES pool WRITE;
/*!40000 ALTER TABLE pool DISABLE KEYS */;
/*!40000 ALTER TABLE pool ENABLE KEYS */;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-19 10:33:24
