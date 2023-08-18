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
-- Table structure for table `obd_cache_flags`
--

DROP TABLE IF EXISTS `obd_cache_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_cache_flags` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `flagtype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expiry` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_cachflag_fla_ix` (`flagtype`),
  KEY `obd_cachflag_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Cache of time-sensitive flags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_cache_flags`
--

LOCK TABLES `obd_cache_flags` WRITE;
/*!40000 ALTER TABLE `obd_cache_flags` DISABLE KEYS */;
INSERT INTO `obd_cache_flags` VALUES (1,'userpreferenceschanged','2',1665525993,'1',1665554793),(2,'userpreferenceschanged','3',1665030644,'1',1665059444),(3,'accesslib/dirtyusers','2',1665083699,'1',1665112499),(4,'accesslib/dirtyusers','3',1665083722,'1',1665112522),(5,'userpreferenceschanged','4',1665031268,'1',1665060068),(6,'userpreferenceschanged','5',1665031367,'1',1665060167),(7,'accesslib/dirtyusers','5',1665083722,'1',1665112522),(8,'accesslib/dirtyusers','4',1665083722,'1',1665112522),(9,'userpreferenceschanged','6',1665513853,'1',1665542653),(10,'accesslib/dirtyusers','6',1665514053,'1',1665542853);
/*!40000 ALTER TABLE `obd_cache_flags` ENABLE KEYS */;
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
