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
-- Table structure for table `obd_license`
--

DROP TABLE IF EXISTS `obd_license`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_license` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fullname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `version` bigint NOT NULL DEFAULT '0',
  `custom` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` mediumint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='store licenses used by moodle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_license`
--

LOCK TABLES `obd_license` WRITE;
/*!40000 ALTER TABLE `obd_license` DISABLE KEYS */;
INSERT INTO `obd_license` VALUES (1,'unknown','Licence not specified','',1,2010033100,0,1),(2,'allrightsreserved','All rights reserved','https://en.wikipedia.org/wiki/All_rights_reserved',1,2010033100,0,2),(3,'public','Public domain','https://en.wikipedia.org/wiki/Public_domain',1,2010033100,0,3),(4,'cc','Creative Commons','https://creativecommons.org/licenses/by/3.0/',1,2010033100,0,4),(5,'cc-nd','Creative Commons - NoDerivs','https://creativecommons.org/licenses/by-nd/3.0/',1,2010033100,0,5),(6,'cc-nc-nd','Creative Commons - No Commercial NoDerivs','https://creativecommons.org/licenses/by-nc-nd/3.0/',1,2010033100,0,6),(7,'cc-nc','Creative Commons - No Commercial','https://creativecommons.org/licenses/by-nc/3.0/',1,2010033100,0,7),(8,'cc-nc-sa','Creative Commons - No Commercial ShareAlike','https://creativecommons.org/licenses/by-nc-sa/3.0/',1,2010033100,0,8),(9,'cc-sa','Creative Commons - ShareAlike','https://creativecommons.org/licenses/by-sa/3.0/',1,2010033100,0,9);
/*!40000 ALTER TABLE `obd_license` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:02
