-- MySQL dump 10.14  Distrib 5.5.37-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cloudminer
-- ------------------------------------------------------
-- Server version	5.5.37-MariaDB-log

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
INSERT INTO auth_event (id, time_stamp, client_ip, user_id, origin, description) VALUES (1,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 1 created'),(2,'2014-03-27 20:41:51','127.0.0.1',1,'auth','User 1 Registered'),(3,'2014-03-27 22:45:36','127.0.0.1',1,'auth','User 1 Logged-in'),(4,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 2 created'),(5,'2014-03-27 20:41:51','127.0.0.1',2,'auth','User 2 Registered'),(6,'2014-03-27 22:45:36','127.0.0.1',2,'auth','User 2 Logged-in'),(7,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 3 created'),(8,'2014-03-27 20:41:51','127.0.0.1',3,'auth','User 3 Registered'),(9,'2014-03-27 22:45:36','127.0.0.1',3,'auth','User 3 Logged-in');
/*!40000 ALTER TABLE auth_event ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES auth_group WRITE;
/*!40000 ALTER TABLE auth_group DISABLE KEYS */;
INSERT INTO auth_group (id, role, description) VALUES (1,'user_1','Grupo asignado únicamente al usuario 1'),(2,'user_2','Grupo asignado únicamente al usuario 2'),(3,'user_3','Grupo asignado únicamente al usuario 3');
/*!40000 ALTER TABLE auth_group ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES auth_membership WRITE;
/*!40000 ALTER TABLE auth_membership DISABLE KEYS */;
INSERT INTO auth_membership (id, user_id, group_id) VALUES (1,1,1),(2,2,2),(3,3,3);
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
INSERT INTO auth_user (id, first_name, last_name, email, password, registration_key, reset_password_key, registration_id) VALUES (1,'Tomás','Restrepo','tomas@tomas.com','pbkdf2(1000,20,sha512)$aebb22315f01cfa8$8457bf0590788f65ad0568f09a13f57ece77f852','','',''),(2,'Juan','Arratia','juan@juan.com','pbkdf2(1000,20,sha512)$8f62e6845834b9ea$11fc172b1c81c793269fbe3f7cc77ed46a2c5330','','',''),(3,'Arturo','Pareja','arturo@arturo.com','pbkdf2(1000,20,sha512)$847a99ffb81d26a2$1841c85bd49e4137110309e0eda84b4cd89e1b10','','','');
/*!40000 ALTER TABLE auth_user ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `currency`
--

LOCK TABLES currency WRITE;
/*!40000 ALTER TABLE currency DISABLE KEYS */;
INSERT INTO currency (id, name, name_short) VALUES (1,'BitCoin','BTC'),(2,'LiteCoin','LTC'),(3,'NovaCoin','NVC'),(4,'TerraCoin','TRC');
/*!40000 ALTER TABLE currency ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `machine`
--

LOCK TABLES machine WRITE;
/*!40000 ALTER TABLE machine DISABLE KEYS */;
INSERT INTO machine (id, name, ip, port, alive, platform_id, icon) VALUES (1,'tomas-virtual-machine','0.0.0.0','37940','F',11,NULL),(2,'Tom-PC','0.0.0.0','65332','F',92,NULL);
/*!40000 ALTER TABLE machine ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `miner`
--

LOCK TABLES miner WRITE;
/*!40000 ALTER TABLE miner DISABLE KEYS */;
INSERT INTO miner (id, name, version, plat_group_id, currency_id, pool_id, command_line) VALUES (11111,'minerd','2.3.2',11,1,1,'../Miners/minerd_2.3.2_linux32/minerd -a sha256d --benchmark'),(11121,'minerd','2.3.2',11,2,1,'../Miners/minerd_2.3.2_linux32/minerd -a scrypt --benchmark'),(11123,'minerd','2.3.2',11,2,3,'../Miners/minerd_2.3.2_linux32/minerd -a scrypt -o stratum+tcp://stratum.mine-litecoin.com -O cloudminer.worker1:x'),(12111,'minerd','2.3.2',21,1,1,'../Miners/minerd_2.3.2_win32/minerd.xe -a sha256d --benchmark'),(12121,'minerd','2.3.2',21,2,1,'../Miners/minerd_2.3.2_win32/minerd.exe -a scrypt --benchmark'),(12123,'minerd','2.3.2',21,2,3,'../Miners/minerd_2.3.2_win32/minerd.exe -a scrypt -o stratum+tcp://stratum.mine-litecoin.com -O cloudminer.worker1:x'),(12211,'minerd','2.3.2',22,1,1,'../Miners/minerd_2.3.2_win64/minerd.xe -a sha256d --benchmark'),(12221,'minerd','2.3.2',22,2,1,'../Miners/minerd_2.3.2_win64/minerd.exe -a scrypt --benchmark'),(12223,'minerd','2.3.2',22,2,3,'../Miners/minerd_2.3.2_win64/minerd.exe -a scrypt -o stratum+tcp://stratum.mine-litecoin.com -O cloudminer.worker1:x'),(22111,'bfgminer','3.0.9',21,1,1,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe --benchmark'),(22112,'bfgminer','3.0.9',21,1,2,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe -o stratum+tcp://stratum.bitcoin.cz:3333 -u cloudminer.worker1 -p 9868UyAN --real-quiet > log.txt'),(22114,'bfgminer','3.0.9',21,1,4,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe -o eu-stratum.btcguild.com:3333 -u cloudminer_worker1 -p x --real-quiet > log.txt'),(22115,'bfgminer','3.0.9',21,1,5,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe -o http://pool.50btc.com:3333 -u cloudminer.ucm@gmail.com -p x --real-quiet > log.txt'),(22211,'bfgminer','3.4.0',22,1,1,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe --benchmark'),(22212,'bfgminer','3.4.0',22,1,2,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe -o stratum+tcp://stratum.bitcoin.cz:3333 -u cloudminer.worker1 -p 9868UyAN --real-quiet > log.txt'),(22214,'bfgminer','3.4.0',22,1,4,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe -o eu-stratum.btcguild.com:3333 -u cloudminer_worker1 -p x --real-quiet > log.txt'),(22215,'bfgminer','3.4.0',22,1,5,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe -o http://pool.50btc.com:3333 -u cloudminer.ucm@gmail.com -p x --real-quiet > log.txt'),(32111,'cgminer','3.6.0',21,1,1,'../Miners/cgminer_3.6.0_windows/cgminer.exe --benchmark'),(32112,'cgminer','3.6.0',21,1,2,'../Miners/cgminer_3.6.0_windows/cgminer.exe -o stratum+tcp://stratum.bitcoin.cz:3333 -u cloudminer.worker1 -p 9868UyAN --real-quiet > log.txt'),(32114,'cgminer','3.6.0',21,1,4,'../Miners/cgminer_3.6.0_windows/cgminer.exe -o eu-stratum.btcguild.com:3333 -u cloudminer_worker1 -p x --real-quiet > log.txt'),(32115,'cgminer','3.6.0',21,1,5,'../Miners/cgminer_3.6.0_windows/cgminer.exe -o http://pool.50btc.com:3333 -u cloudminer.ucm@gmail.com -p x --real-quiet > log.txt'),(32211,'cgminer','3.6.0',22,1,1,'../Miners/cgminer_3.6.0_windows/cgminer.exe --benchmark'),(32212,'cgminer','3.6.0',22,1,2,'../Miners/cgminer_3.6.0_windows/cgminer.exe -o stratum+tcp://stratum.bitcoin.cz:3333 -u cloudminer.worker1 -p 9868UyAN --real-quiet > log.txt'),(32214,'cgminer','3.6.0',22,1,4,'../Miners/cgminer_3.6.0_windows/cgminer.exe -o eu-stratum.btcguild.com:3333 -u cloudminer_worker1 -p x --real-quiet > log.txt'),(32215,'cgminer','3.6.0',22,1,5,'../Miners/cgminer_3.6.0_windows/cgminer.exe -o http://pool.50btc.com:3333 -u cloudminer.ucm@gmail.com -p x --real-quiet > log.txt');
/*!40000 ALTER TABLE miner ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `platform`
--

LOCK TABLES platform WRITE;
/*!40000 ALTER TABLE platform DISABLE KEYS */;
INSERT INTO platform (id, os, type, arch, group_id) VALUES (11,'Linux','LinuxMint','32bit',11),(12,'Linux','LinuxMint','64bit',11),(21,'Linux','debian','32bit',11),(22,'Linux','debian','64bit',11),(91,'Windows','unique','32bit',21),(92,'Windows','unique','64bit',22);
/*!40000 ALTER TABLE platform ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `platform_group`
--

LOCK TABLES platform_group WRITE;
/*!40000 ALTER TABLE platform_group DISABLE KEYS */;
INSERT INTO platform_group (id, name) VALUES (11,'Linux_1'),(21,'Windows_32_1'),(22,'Windows_64_1');
/*!40000 ALTER TABLE platform_group ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pool`
--

LOCK TABLES pool WRITE;
/*!40000 ALTER TABLE pool DISABLE KEYS */;
INSERT INTO pool (id, name, webpage, account_email, account_ID) VALUES (1,'benchmark','-','-','-'),(2,'Slush_s pool','http://mining.bitcoin.cz','cloudminer.ucm@gmail.com','cloudminer'),(3,'Mine-Litecoin','https://mine-litecoin.com','nilksermot@gmail.com','cloudminer'),(4,'BTC guild','https://www.btcguild.com','cloudminer.ucm@gmail.com','cloudminer'),(5,'50 BTC','https://50btc.com','cloudminer.ucm@gmail.com','cloudminer');
/*!40000 ALTER TABLE pool ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `worker`
--

LOCK TABLES worker WRITE;
/*!40000 ALTER TABLE worker DISABLE KEYS */;
INSERT INTO worker (id, machine_id, miner_id, time_start, time_stop, tested) VALUES (1,1,11111,'2014-03-27 22:47:22','2014-03-30 13:44:00',NULL);
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

-- Dump completed on 2014-06-03 18:17:58
