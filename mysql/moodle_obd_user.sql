-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: moodle
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `obd_user`
--

DROP TABLE IF EXISTS `obd_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `auth` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'manual',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `policyagreed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `suspended` tinyint(1) NOT NULL DEFAULT '0',
  `mnethostid` bigint NOT NULL DEFAULT '0',
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `idnumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `emailstop` tinyint(1) NOT NULL DEFAULT '0',
  `phone1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `phone2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `institution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `department` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `city` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `country` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'en',
  `calendartype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'gregorian',
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timezone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '99',
  `firstaccess` bigint NOT NULL DEFAULT '0',
  `lastaccess` bigint NOT NULL DEFAULT '0',
  `lastlogin` bigint NOT NULL DEFAULT '0',
  `currentlogin` bigint NOT NULL DEFAULT '0',
  `lastip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `secret` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `picture` bigint NOT NULL DEFAULT '0',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `descriptionformat` tinyint NOT NULL DEFAULT '1',
  `mailformat` tinyint(1) NOT NULL DEFAULT '1',
  `maildigest` tinyint(1) NOT NULL DEFAULT '0',
  `maildisplay` tinyint NOT NULL DEFAULT '2',
  `autosubscribe` tinyint(1) NOT NULL DEFAULT '1',
  `trackforums` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `trustbitmask` bigint NOT NULL DEFAULT '0',
  `imagealt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lastnamephonetic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `firstnamephonetic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `middlename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `alternatename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `moodlenetprofile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_user_mneuse_uix` (`mnethostid`,`username`),
  KEY `obd_user_del_ix` (`deleted`),
  KEY `obd_user_con_ix` (`confirmed`),
  KEY `obd_user_fir_ix` (`firstname`),
  KEY `obd_user_las_ix` (`lastname`),
  KEY `obd_user_cit_ix` (`city`),
  KEY `obd_user_cou_ix` (`country`),
  KEY `obd_user_las2_ix` (`lastaccess`),
  KEY `obd_user_ema_ix` (`email`),
  KEY `obd_user_aut_ix` (`auth`),
  KEY `obd_user_idn_ix` (`idnumber`),
  KEY `obd_user_fir2_ix` (`firstnamephonetic`),
  KEY `obd_user_las3_ix` (`lastnamephonetic`),
  KEY `obd_user_mid_ix` (`middlename`),
  KEY `obd_user_alt_ix` (`alternatename`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='One record for each person';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_user`
--

LOCK TABLES `obd_user` WRITE;
/*!40000 ALTER TABLE `obd_user` DISABLE KEYS */;
INSERT INTO `obd_user` VALUES (1,'manual',1,0,0,0,1,'guest','$2y$10$Q6f6ievHz.i6KT.mEh2CJ.GXmuoHVjCA5BFSQHWSaVbxPsO80qrYm','','Invitado',' ','root@localhost',0,'','','','','','','','es_mx_kids','gregorian','','99',0,0,0,0,'','',0,'Este usuario sólo tiene acceso de lectura en ciertos cursos.',1,1,0,2,1,0,0,1664926061,0,NULL,NULL,NULL,NULL,NULL,NULL),(2,'manual',1,0,0,0,1,'octavio','$2y$10$T4coRZnDPZup3/SHYXVx0u.Nc0xbHJcoLnmDwk4w4Ql8IiHQMHQsa','','Octavio André','Guevara Salvatierra','octavio.guevara13445@est.uca.edu.ni',0,'','','','','','Managua','NI','es_mx_kids','gregorian','','America/Managua',1664926440,1665538104,1665507492,1665525937,'0:0:0:0:0:0:0:1','',0,'',1,1,0,1,1,0,0,1664926764,0,NULL,'','','','',NULL),(3,'manual',1,0,0,0,1,'norman','$2y$10$vaPKxdKoUps97bVUU2j7defIRb7VKDedUlhZyAP7oydFG2pgQ4WT.','','Norman Josue','Romero Meza','norman.romero13607@est.uca.edu.ni',0,'','','','','','Managua','NI','es_mx_kids','gregorian','','99',0,0,0,0,'','',0,'',1,1,0,2,1,0,1665030644,1665031111,0,'','','','','',''),(4,'manual',1,0,0,0,1,'yizark','$2y$10$eTLwDyW6c7ZtPmTbfa0YsOcz1kgNQYb9bnS9p9Y05jF3DYXR7tBnO','','Yizark Al','Farrach','yizark.farrach13455@est.uca.edu.ni',0,'','','','','','Managua','NI','es_mx_kids','gregorian','','99',0,0,0,0,'','',0,'',1,1,0,2,1,0,1665031268,1665031268,0,'','','','','',''),(5,'manual',1,0,0,0,1,'jorge','$2y$10$6nuGwMbbh.5pkZogNQSrl.7snYCq91wcnFyEJkyy0bPLr2gdIj/S6','','Jorge Alberto','Chávez Avilés','jorge.chavez13731@est.uca.edu.ni',0,'','','','','','Managua','NI','es_mx_kids','gregorian','','99',0,0,0,0,'','',0,'',1,1,0,2,1,0,1665031367,1665031367,0,'','','','','',''),(6,'manual',1,0,0,0,1,'jorgeprofesor','$2y$10$kj71iq4gWdoD1gbVC3VvGeZSRTzPGyoVPGrDHJYapLVEkhDVivf/K','','Jorge Luis','Morales Reyes','jorgeluisreyes@doc.uca.edu.ni',0,'','','','','','Managua','NI','es_mx_kids','gregorian','','99',0,0,0,0,'','',0,'',1,1,0,2,1,0,1665513853,1665513875,0,'','','','','','');
/*!40000 ALTER TABLE `obd_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:06
