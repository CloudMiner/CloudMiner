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
INSERT INTO auth_event (id, time_stamp, client_ip, user_id, origin, description) VALUES (1,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 1 created'),(2,'2014-03-27 20:41:51','127.0.0.1',1,'auth','User 1 Registered'),(3,'2014-03-27 22:45:36','127.0.0.1',1,'auth','User 1 Logged-in'),(4,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 2 created'),(5,'2014-03-27 20:41:51','127.0.0.1',2,'auth','User 2 Registered'),(6,'2014-03-27 22:45:36','127.0.0.1',2,'auth','User 2 Logged-in'),(7,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 3 created'),(8,'2014-03-27 20:41:51','127.0.0.1',3,'auth','User 3 Registered'),(9,'2014-03-27 22:45:36','127.0.0.1',3,'auth','User 3 Logged-in'),(10,'2014-06-05 18:07:31','127.0.0.1',NULL,'auth','Group 4 created'),(11,'2014-06-05 18:07:31','127.0.0.1',4,'auth','User 4 Registered');
/*!40000 ALTER TABLE auth_event ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES auth_group WRITE;
/*!40000 ALTER TABLE auth_group DISABLE KEYS */;
INSERT INTO auth_group (id, role, description) VALUES (1,'user_1','Grupo asignado únicamente al usuario 1'),(2,'user_2','Grupo asignado únicamente al usuario 2'),(3,'user_3','Grupo asignado únicamente al usuario 3'),(4,'user_4','Group uniquely assigned to user 4');
/*!40000 ALTER TABLE auth_group ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_membership`
--

LOCK TABLES auth_membership WRITE;
/*!40000 ALTER TABLE auth_membership DISABLE KEYS */;
INSERT INTO auth_membership (id, user_id, group_id) VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4);
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
INSERT INTO auth_user (id, first_name, last_name, email, password, registration_key, reset_password_key, registration_id) VALUES (1,'Tomás','Restrepo','tomas@tomas.com','pbkdf2(1000,20,sha512)$aebb22315f01cfa8$8457bf0590788f65ad0568f09a13f57ece77f852','','',''),(2,'Juan','Arratia','juan@juan.com','pbkdf2(1000,20,sha512)$8f62e6845834b9ea$11fc172b1c81c793269fbe3f7cc77ed46a2c5330','','',''),(3,'Arturo','Pareja','arturo@arturo.com','pbkdf2(1000,20,sha512)$847a99ffb81d26a2$1841c85bd49e4137110309e0eda84b4cd89e1b10','','',''),(4,'arturo','art','arturo@art.com','pbkdf2(1000,20,sha512)$b1b26ad2d8641920$d7b97bbd46eda2d647744445c0630ca1832b31d7','','','');
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
INSERT INTO machine (id, name, ip, port, alive, platform_id, icon) VALUES (1,'tomas-virtual-machine','0.0.0.0','37940','F',11,NULL),(2,'Tom-PC','0.0.0.0','65332','F',92,NULL),(3,'Lab1_P01','0.0.0.0','0','F',91,NULL),(4,'Lab1_P02','0.0.0.0','0','F',91,NULL),(5,'Lab1_P03','0.0.0.0','0','T',91,NULL),(6,'Lab1_P04','0.0.0.0','0','T',91,NULL),(7,'Lab1_P05','0.0.0.0','0','T',91,NULL),(8,'Lab1_P06','0.0.0.0','0','F',91,NULL),(9,'Lab1_P07','0.0.0.0','0','F',91,NULL),(10,'Lab1_P08','0.0.0.0','0','F',91,NULL),(11,'Lab1_P09','0.0.0.0','0','F',91,NULL),(12,'Lab1_P10','0.0.0.0','0','F',91,NULL),(13,'Lab1_P11','0.0.0.0','0','T',92,NULL),(14,'Lab1_P12','0.0.0.0','0','T',92,NULL),(15,'Lab1_P13','0.0.0.0','0','T',92,NULL),(16,'Lab1_P14','0.0.0.0','0','F',92,NULL),(17,'Lab1_P15','0.0.0.0','0','F',92,NULL),(18,'Lab1_P16','0.0.0.0','0','T',92,NULL),(19,'Lab1_P17','0.0.0.0','0','T',92,NULL),(20,'Lab1_P18','0.0.0.0','0','T',92,NULL),(21,'Lab1_P19','0.0.0.0','0','F',92,NULL),(22,'Lab1_P15','0.0.0.0','0','F',11,NULL),(23,'Lab1_P16','0.0.0.0','0','T',11,NULL),(24,'Lab1_P17','0.0.0.0','0','T',11,NULL),(25,'Lab1_P18','0.0.0.0','0','F',11,NULL),(26,'Lab1_P19','0.0.0.0','0','F',11,NULL);
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
INSERT INTO worker (id, machine_id, miner_id, time_start, time_stop, tested) VALUES (1,1,11111,'2014-03-27 22:47:22','2014-03-30 13:44:00',NULL),(50,3,12123,'2014-03-01 03:29:14','2014-03-04 03:29:14',NULL),(51,3,22115,'2014-03-06 09:51:59','2014-03-09 09:51:59',NULL),(52,4,12123,'2014-03-01 03:29:14','2014-03-04 03:29:14',NULL),(53,4,22115,'2014-03-06 09:51:59','2014-03-09 09:51:59',NULL),(54,13,22214,'2014-01-27 23:25:09','2014-01-30 23:25:09',NULL),(55,14,22214,'2014-01-27 23:25:09','2014-01-30 23:25:09',NULL),(56,5,22112,'2014-06-01 12:12:12','0000-00-00 00:00:00',NULL),(57,6,22112,'2014-06-01 12:12:12','0000-00-00 00:00:00',NULL),(58,7,22112,'2014-06-01 12:12:12','0000-00-00 00:00:00',NULL),(59,13,22215,'2014-06-01 10:10:10','0000-00-00 00:00:00',NULL),(60,14,22215,'2014-06-01 10:10:10','0000-00-00 00:00:00',NULL),(61,15,22215,'2014-06-01 10:10:10','0000-00-00 00:00:00',NULL),(62,23,11123,'2014-06-01 11:11:11','0000-00-00 00:00:00',NULL),(63,24,11123,'2014-06-01 11:11:11','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE worker ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `worker_stats`
--

LOCK TABLES worker_stats WRITE;
/*!40000 ALTER TABLE worker_stats DISABLE KEYS */;
INSERT INTO worker_stats (id, worker_id, hash_rate, hash_avg, hash_count, timestamp) VALUES (5000,50,0,0,0,'2014-01-28 23:46:28'),(5001,50,0.01192317,0.01192317,1,'2014-01-28 23:46:33'),(5002,50,0.00914804,0.01053561,2,'2014-01-28 23:46:38'),(5003,50,0.00677912,0.00928344,3,'2014-01-28 23:46:43'),(5004,50,0.0122238,0.01001853,4,'2014-01-28 23:46:48'),(5005,50,0.01233911,0.01048265,5,'2014-01-28 23:46:53'),(5006,50,0.01400058,0.01106897,6,'2014-01-28 23:46:58'),(5007,50,0.00711702,0.01050441,7,'2014-01-28 23:47:03'),(5008,50,0.00938029,0.01036389,8,'2014-01-28 23:47:08'),(5009,50,0.00835797,0.01014101,9,'2014-01-28 23:47:13'),(5010,50,0.01400064,0.01052697,10,'2014-01-28 23:47:18'),(5011,50,0.01290493,0.01074315,11,'2014-01-28 23:47:23'),(5012,50,0.01140806,0.01079856,12,'2014-01-28 23:47:28'),(5013,50,0.01203343,0.01089355,13,'2014-01-28 23:47:33'),(5014,50,0.00979336,0.01081497,14,'2014-01-28 23:47:38'),(5015,50,0.01120398,0.0108409,15,'2014-01-28 23:47:43'),(5016,50,0.0108541,0.01084173,16,'2014-01-28 23:47:48'),(5017,50,0.01237555,0.01093195,17,'2014-01-28 23:47:53'),(5018,50,0.01084642,0.0109272,18,'2014-01-28 23:47:58'),(5019,50,0.01400819,0.01108936,19,'2014-01-28 23:48:03'),(5020,50,0.01093211,0.01108149,20,'2014-01-28 23:48:08'),(5021,50,0.01181167,0.01111626,21,'2014-01-28 23:48:13'),(5022,50,0.01419058,0.01125601,22,'2014-01-28 23:48:18'),(5023,50,0.0100588,0.01120395,23,'2014-01-28 23:48:23'),(5024,50,0.01303103,0.01128008,24,'2014-01-28 23:48:28'),(5025,50,0.01144255,0.01128658,25,'2014-01-28 23:48:33'),(5100,51,0,0,0,'2014-03-02 21:24:20'),(5101,51,10.00702,10.00702,1,'2014-03-02 21:24:25'),(5102,51,14.89358,12.4503,2,'2014-03-02 21:24:30'),(5103,51,13.97266,12.95775333,3,'2014-03-02 21:24:35'),(5104,51,9.15125,12.0061275,4,'2014-03-02 21:24:40'),(5105,51,9.39564,11.48403,5,'2014-03-02 21:24:45'),(5106,51,14.4003,11.970075,6,'2014-03-02 21:24:50'),(5107,51,13.1557,12.13945,7,'2014-03-02 21:24:55'),(5108,51,7.64303,11.5773975,8,'2014-03-02 21:25:00'),(5109,51,7.8873,11.16738667,9,'2014-03-02 21:25:05'),(5110,51,6.36332,10.68698,10,'2014-03-02 21:25:10'),(5111,51,5.55036,10.22001455,11,'2014-03-02 21:25:15'),(5112,51,12.35292,10.39775667,12,'2014-03-02 21:25:20'),(5113,51,14.18579,10.68914385,13,'2014-03-02 21:25:25'),(5114,51,12.65607,10.82963857,14,'2014-03-02 21:25:30'),(5115,51,9.64625,10.750746,15,'2014-03-02 21:25:35'),(5116,51,12.29734,10.84740813,16,'2014-03-02 21:25:40'),(5117,51,12.27437,10.93134706,17,'2014-03-02 21:25:45'),(5118,51,11.12573,10.94214611,18,'2014-03-02 21:25:50'),(5119,51,12.382,11.01792789,19,'2014-03-02 21:25:55'),(5120,51,10.21574,10.9778185,20,'2014-03-02 21:26:00'),(5121,51,9.4544,10.90527476,21,'2014-03-02 21:26:05'),(5122,51,14.97621,11.09031727,22,'2014-03-02 21:26:10'),(5123,51,7.9821,10.95517739,23,'2014-03-02 21:26:15'),(5124,51,7.92858,10.82906917,24,'2014-03-02 21:26:20'),(5125,51,10.39249,10.811606,25,'2014-03-02 21:26:25'),(5600,56,0,0,0,'2014-06-01 12:12:21'),(5700,57,0,0,0,'2014-06-01 12:12:21'),(5800,58,0,0,0,'2014-06-01 12:12:21'),(5801,58,6.63805,6.63805,1,'2014-06-01 12:12:26'),(5802,58,13.02895,9.8335,2,'2014-06-01 12:12:31'),(5803,58,12.73074,10.79924667,3,'2014-06-01 12:12:36'),(5804,58,11.02267,10.8551025,4,'2014-06-01 12:12:41'),(5805,58,10.40406,10.764894,5,'2014-06-01 12:12:46'),(5806,58,6.24774,10.012035,6,'2014-06-01 12:12:51'),(5807,58,8.45741,9.78994571,7,'2014-06-01 12:12:56'),(5808,58,8.38036,9.6137475,8,'2014-06-01 12:13:01'),(5809,58,6.94015,9.31668111,9,'2014-06-01 12:13:06'),(5810,58,10.66086,9.451099,10,'2014-06-01 12:13:11'),(5811,58,10.58633,9.55430182,11,'2014-06-01 12:13:16'),(5812,58,11.53904,9.71969667,12,'2014-06-01 12:13:21'),(5813,58,12.7871,9.95565077,13,'2014-06-01 12:13:26'),(5814,58,8.87026,9.87812286,14,'2014-06-01 12:13:31'),(5815,58,5.10309,9.55978733,15,'2014-06-01 12:13:36'),(5816,58,13.21209,9.78805625,16,'2014-06-01 12:13:41'),(5817,58,8.2034,9.69484118,17,'2014-06-01 12:13:46'),(5818,58,13.17725,9.88830833,18,'2014-06-01 12:13:51'),(5819,58,10.31653,9.91084632,19,'2014-06-01 12:13:56'),(5820,58,13.72908,10.101758,20,'2014-06-01 12:14:01'),(5821,58,10.46521,10.11906524,21,'2014-06-01 12:14:06'),(5822,58,14.69542,10.32708136,22,'2014-06-01 12:14:11'),(5823,58,10.84203,10.34947043,23,'2014-06-01 12:14:16'),(5824,58,5.00515,10.12679042,24,'2014-06-01 12:14:20'),(5825,58,13.24521,10.2515272,25,'2014-06-01 12:14:25'),(5826,58,11.00027,10.280325,26,'2014-06-01 12:14:30'),(5827,58,8.91317,10.22968963,27,'2014-06-01 12:14:35'),(5828,58,9.89592,10.21776929,28,'2014-06-01 12:14:40'),(5829,58,10.32913,10.22160931,29,'2014-06-01 12:14:45'),(5900,59,0,0,0,'2014-06-01 10:10:19'),(6000,60,0,0,0,'2014-06-01 10:10:19'),(6001,60,27.03702,27.03702,1,'2014-06-01 10:10:24'),(6002,60,21.5312,24.28411,2,'2014-06-01 10:10:29'),(6003,60,20.09374,22.88732,3,'2014-06-01 10:10:34'),(6004,60,11.68628,20.08706,4,'2014-06-01 10:10:39'),(6005,60,16.95304,19.460256,5,'2014-06-01 10:10:44'),(6006,60,19.13268,19.40566,6,'2014-06-01 10:10:49'),(6007,60,24.3819,20.11655143,7,'2014-06-01 10:10:54'),(6008,60,24.43508,20.6563675,8,'2014-06-01 10:10:59'),(6009,60,29.79192,21.67142889,9,'2014-06-01 10:11:04'),(6010,60,27.5393,22.258216,10,'2014-06-01 10:11:09'),(6011,60,11.76786,21.30454727,11,'2014-06-01 10:11:14'),(6012,60,27.08184,21.78598833,12,'2014-06-01 10:11:19'),(6013,60,29.00368,22.34119538,13,'2014-06-01 10:11:24'),(6014,60,20.61538,22.21792286,14,'2014-06-01 10:11:29'),(6015,60,26.65266,22.513572,15,'2014-06-01 10:11:34'),(6016,60,24.56382,22.6417125,16,'2014-06-01 10:11:39'),(6017,60,20.47788,22.51442824,17,'2014-06-01 10:11:44'),(6018,60,18.76646,22.30620778,18,'2014-06-01 10:11:49'),(6019,60,22.34834,22.30842526,19,'2014-06-01 10:11:54'),(6020,60,24.17792,22.4019,20,'2014-06-01 10:11:59'),(6021,60,24.51422,22.50248667,21,'2014-06-01 10:12:04'),(6022,60,11.73988,22.01327727,22,'2014-06-01 10:12:09'),(6023,60,21.4051,21.98683478,23,'2014-06-01 10:12:14'),(6024,60,14.35506,21.66884417,24,'2014-06-01 10:12:18'),(6025,60,27.54064,21.903716,25,'2014-06-01 10:12:23'),(6026,60,29.76382,22.20602769,26,'2014-06-01 10:12:28'),(6027,60,28.54548,22.44082222,27,'2014-06-01 10:12:33'),(6028,60,24.73762,22.52285071,28,'2014-06-01 10:12:38'),(6029,60,11.0222,22.12627655,29,'2014-06-01 10:12:43'),(6100,61,0,0,0,'2014-06-01 10:10:19'),(6200,62,0,0,0,'2014-06-01 11:11:20'),(6300,63,0,0,0,'2014-06-01 11:11:20'),(6301,63,0.01501478,0.01501478,1,'2014-06-01 11:11:25'),(6302,63,0.01701118,0.01601298,2,'2014-06-01 11:11:30'),(6303,63,0.02925114,0.0204257,3,'2014-06-01 11:11:35'),(6304,63,0.02598714,0.02181606,4,'2014-06-01 11:11:40'),(6305,63,0.02575966,0.02260478,5,'2014-06-01 11:11:45'),(6306,63,0.02611026,0.02318903,6,'2014-06-01 11:11:50'),(6307,63,0.02342078,0.02322213,7,'2014-06-01 11:11:55'),(6308,63,0.0218599,0.02305186,8,'2014-06-01 11:12:00'),(6309,63,0.0152903,0.02218946,9,'2014-06-01 11:12:05'),(6310,63,0.0234971,0.02232022,10,'2014-06-01 11:12:10'),(6311,63,0.01358444,0.02152606,11,'2014-06-01 11:12:15'),(6312,63,0.01395718,0.02089532,12,'2014-06-01 11:12:20'),(6313,63,0.0193607,0.02077727,13,'2014-06-01 11:12:25'),(6314,63,0.0201703,0.02073392,14,'2014-06-01 11:12:30'),(6315,63,0.01898308,0.0206172,15,'2014-06-01 11:12:35'),(6316,63,0.01174432,0.02006264,16,'2014-06-01 11:12:40'),(6317,63,0.01079398,0.01951743,17,'2014-06-01 11:12:45'),(6318,63,0.01404124,0.01921319,18,'2014-06-01 11:12:50'),(6319,63,0.02605648,0.01957337,19,'2014-06-01 11:12:55'),(6320,63,0.0211532,0.01965236,20,'2014-06-01 11:13:00'),(6321,63,0.0131545,0.01934294,21,'2014-06-01 11:13:05'),(6322,63,0.01151412,0.01898708,22,'2014-06-01 11:13:10'),(6323,63,0.01736904,0.01891673,23,'2014-06-01 11:13:15'),(6324,63,0.0195026,0.01894114,24,'2014-06-01 11:13:19'),(6325,63,0.02023796,0.01899302,25,'2014-06-01 11:13:24'),(6326,63,0.0146916,0.01882758,26,'2014-06-01 11:13:29'),(6327,63,0.02205068,0.01894695,27,'2014-06-01 11:13:34'),(6328,63,0.02076662,0.01901194,28,'2014-06-01 11:13:39'),(6329,63,0.01535088,0.0188857,29,'2014-06-01 11:13:44');
/*!40000 ALTER TABLE worker_stats ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-06 17:12:49
