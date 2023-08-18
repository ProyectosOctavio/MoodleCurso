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
-- Table structure for table `obd_block_recentlyaccesseditems`
--

DROP TABLE IF EXISTS `obd_block_recentlyaccesseditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_block_recentlyaccesseditems` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint NOT NULL,
  `cmid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timeaccess` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_blocrece_usecoucmi_uix` (`userid`,`courseid`,`cmid`),
  KEY `obd_blocrece_use_ix` (`userid`),
  KEY `obd_blocrece_cou_ix` (`courseid`),
  KEY `obd_blocrece_cmi_ix` (`cmid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Most recently accessed items accessed by a user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_block_recentlyaccesseditems`
--

LOCK TABLES `obd_block_recentlyaccesseditems` WRITE;
/*!40000 ALTER TABLE `obd_block_recentlyaccesseditems` DISABLE KEYS */;
INSERT INTO `obd_block_recentlyaccesseditems` VALUES (9,4,19,2,1665538018),(16,3,21,2,1665529712),(18,2,24,2,1665530366),(19,2,28,2,1665536733),(20,2,30,2,1665537524),(21,2,29,2,1665536867),(22,2,33,2,1665537549),(23,4,10,2,1665537987),(24,4,31,2,1665537999);
/*!40000 ALTER TABLE `obd_block_recentlyaccesseditems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:36
