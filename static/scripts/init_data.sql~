USE cloudminer;

/*DELETE FROM worker_stats WHERE id BETWEEN 1 AND 8;*/
DELETE FROM worker WHERE id BETWEEN 1 AND 2;
DELETE FROM miner WHERE id BETWEEN 1111 AND 2414;
DELETE FROM currency WHERE id BETWEEN 1 AND 4;
DELETE FROM machine WHERE id BETWEEN 1 AND 2;
DELETE FROM platform WHERE id BETWEEN 1 AND 4;
DELETE FROM pool WHERE id BETWEEN 1 AND 4;
DELETE FROM auth_membership WHERE id BETWEEN 1 AND 1;
DELETE FROM auth_event WHERE id BETWEEN 1 AND 3;
DELETE FROM auth_group WHERE id BETWEEN 1 AND 1;
DELETE FROM auth_user WHERE id BETWEEN 1 AND 1;

-- password para el usuario 'tomas' es 'tomas'
INSERT INTO auth_user 
VALUES 
	(1,'Tomás','Restrepo','tomas@tomas.com','pbkdf2(1000,20,sha512)$aebb22315f01cfa8$8457bf0590788f65ad0568f09a13f57ece77f852','','','');

INSERT INTO auth_group VALUES (1,'user_1','Grupo asignado únicamente al usuario 1');

INSERT INTO auth_event
VALUES 
	(1,'2014-03-27 20:41:51','127.0.0.1',NULL,'auth','Group 1 created'),
	(2,'2014-03-27 20:41:51','127.0.0.1',1,'auth','User 1 Registered'),
	(3,'2014-03-27 22:45:36','127.0.0.1',1,'auth','User 1 Logged-in');

INSERT INTO auth_membership VALUES (1,1,1);

INSERT INTO platform (id,os,type,arch)
VALUES 
	(1,'Linux','LinuxMint','32bit'),
	(2,'Linux','LinuxMint','64bit'),
	(3,'Windows','unique','64bit'),
	(4,'Windows','unique','32bit');

INSERT INTO machine (id,platform_id,name,ip,port,alive)
VALUES 
	(1,1,'tomas-virtual-machine','0.0.0.0','37940','F'),
	(2,3,'Tom-PC','0.0.0.0','65332','F');

INSERT INTO currency (id,name,name_short)
VALUES 
	(1,'BitCoin','BTC'),
	(2,'LiteCoin','LTC'),
	(3,'NovaCoin','NVC'),
	(4,'TerraCoin','TRC');

INSERT INTO pool (id,name,webpage,account_email,account_ID)
VALUES 
	(1,'benchmark','-','-','-'),
	(2,'Slush_s pool','http://mining.bitcoin.cz','cloudminer.ucm@gmail.com','cloudminer'),
	(3,'Mine-Litecoin','https://mine-litecoin.com','nilksermot@gmail.com','cloudminer'),
	(4,'BTC guild','https://www.btcguild.com','cloudminer.ucm@gmail.com','cloudminer');
	
INSERT INTO miner (id,name,version,platform_id,currency_id, pool_id,command_line)
VALUES 
	(1111,'minerd','2.3.2',1,1,1,'../Miners/minerd_2.3.2_linux32/minerd -a sha256d --benchmark'),
	(1112,'minerd','2.3.2',1,1,2,'../Miners/minerd_2.3.2_linux32/minerd -a sha256d -o stratum+tcp://stratum.bitcoin.cz:3333 -O cloudminer.worker1:9868UyAN'),
	(1114,'minerd','2.3.2',1,1,4,'../Miners/minerd_2.3.2_linux32/minerd -a sha256d -o eu-stratum.btcguild.com:3333 -O cloudminer_worker1:x'),
	(1121,'minerd','2.3.2',1,2,1,'../Miners/minerd_2.3.2_linux32/minerd -a scrypt --benchmark'),
	(1123,'minerd','2.3.2',1,2,3,'../Miners/minerd_2.3.2_linux32/minerd -a scrypt -o stratum+tcp://europe.mine-litecoin.com -O cloudminer.worker1:x'),
	(1211,'minerd','2.3.2',2,1,1,'../Miners/minerd_2.3.2_linux64/minerd -a sha256d --benchmark'),
	(1212,'minerd','2.3.2',2,1,2,'../Miners/minerd_2.3.2_linux64/minerd -a sha256d -o stratum+tcp://stratum.bitcoin.cz:3333 -O cloudminer.worker1:9868UyAN'),
	(1214,'minerd','2.3.2',2,1,4,'../Miners/minerd_2.3.2_linux64/minerd -a sha256d -o eu-stratum.btcguild.com:3333 -O cloudminer_worker1:x'),
	(1221,'minerd','2.3.2',2,2,1,'../Miners/minerd_2.3.2_linux64/minerd -a scrypt --benchmark'),
	(1223,'minerd','2.3.2',2,2,3,'../Miners/minerd_2.3.2_linux64/minerd -a scrypt -o stratum+tcp://europe.mine-litecoin.com -O cloudminer.worker1:x'),
	(1311,'minerd','2.3.2',3,1,1,'../Miners/minerd_2.3.2_win64/minerd.exe -a sha256d --benchmark'),
	(1312,'minerd','2.3.2',3,1,2,'../Miners/minerd_2.3.2_win64/minerd.exe -a sha256d -o stratum+tcp://stratum.bitcoin.cz:3333 -O cloudminer.worker1:9868UyAN'),
	(1321,'minerd','2.3.2',3,2,1,'../Miners/minerd_2.3.2_win64/minerd.exe -a scrypt --benchmark'),
	(1323,'minerd','2.3.2',3,2,3,'../Miners/minerd_2.3.2_win64/minerd.exe -a scrypt -o stratum+tcp://europe.mine-litecoin.com -O cloudminer.worker1:x'),
	(2311,'bfgminer','3.4.0',3,1,1,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe --benchmark'),
	(2312,'bfgminer','3.4.0',3,1,2,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe -o stratum+tcp://stratum.bitcoin.cz:3333 -u cloudminer.worker1 -p 9868UyAN --real-quiet > log.txt'),
	(2314,'bfgminer','3.4.0',3,1,4,'../Miners/bfgminer_3.4.0_win64/bfgminer.exe -o eu-stratum.btcguild.com:3333 -u cloudminer_worker1 -p x --real-quiet > log.txt'),
	(1411,'minerd','2.3.2',4,1,1,'../Miners/minerd_2.3.2_win32/minerd.exe -a sha256d --benchmark'),
	(1412,'minerd','2.3.2',4,1,2,'../Miners/minerd_2.3.2_win32/minerd.exe -a sha256d -o stratum+tcp://stratum.bitcoin.cz:3333 -O cloudminer.worker1:9868UyAN'),
	(1421,'minerd','2.3.2',4,2,1,'../Miners/minerd_2.3.2_win32/minerd.exe -a scrypt --benchmark'),
	(1423,'minerd','2.3.2',4,2,3,'../Miners/minerd_2.3.2_win32/minerd.exe -a scrypt -o stratum+tcp://europe.mine-litecoin.com -O cloudminer.worker1:x'),
	(2411,'bfgminer','3.0.9',4,1,1,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe --benchmark'),
	(2412,'bfgminer','3.0.9',4,1,2,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe -o stratum+tcp://stratum.bitcoin.cz:3333 -u cloudminer.worker1 -p 9868UyAN --real-quiet > log.txt'),
	(2414,'bfgminer','3.0.9',4,1,4,'../Miners/bfgminer_3.0.9_win32/bfgminer.exe -o eu-stratum.btcguild.com:3333 -u cloudminer_worker1 -p x --real-quiet > log.txt');

INSERT INTO worker (id,machine_id,miner_id,time_start,time_stop)
VALUES 
	(1,1,1111,'2014-03-27 22:47:22','2014-03-30 13:44:00'),
	(2,2,1321,'2014-03-27 22:47:22','2014-03-30 13:44:00');

/*INSERT INTO worker_stats (id,worker_id,hash_rate,timestamp)
VALUES 
	(1,1,6,'2014-03-30 13:35:49'),
	(2,1,6,'2014-03-30 13:35:54'),
	(3,1,5,'2014-03-30 13:35:59'),
	(4,1,6,'2014-03-30 13:36:04'),
	(5,2,5,'2014-03-30 13:36:09'),
	(6,2,6,'2014-03-30 14:07:01'),
	(7,2,5,'2014-03-30 14:07:06'),
	(8,2,6,'2014-03-30 14:07:11');*/
