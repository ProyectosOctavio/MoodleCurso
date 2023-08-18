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
-- Table structure for table `obd_data`
--

DROP TABLE IF EXISTS `obd_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_data` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `comments` smallint NOT NULL DEFAULT '0',
  `timeavailablefrom` bigint NOT NULL DEFAULT '0',
  `timeavailableto` bigint NOT NULL DEFAULT '0',
  `timeviewfrom` bigint NOT NULL DEFAULT '0',
  `timeviewto` bigint NOT NULL DEFAULT '0',
  `requiredentries` int NOT NULL DEFAULT '0',
  `requiredentriestoview` int NOT NULL DEFAULT '0',
  `maxentries` int NOT NULL DEFAULT '0',
  `rssarticles` smallint NOT NULL DEFAULT '0',
  `singletemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `listtemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `listtemplateheader` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `listtemplatefooter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `addtemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rsstemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rsstitletemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `csstemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `jstemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `asearchtemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `approval` smallint NOT NULL DEFAULT '0',
  `manageapproved` smallint NOT NULL DEFAULT '1',
  `scale` bigint NOT NULL DEFAULT '0',
  `assessed` bigint NOT NULL DEFAULT '0',
  `assesstimestart` bigint NOT NULL DEFAULT '0',
  `assesstimefinish` bigint NOT NULL DEFAULT '0',
  `defaultsort` bigint NOT NULL DEFAULT '0',
  `defaultsortdir` smallint NOT NULL DEFAULT '0',
  `editany` smallint NOT NULL DEFAULT '0',
  `notification` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `completionentries` bigint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_data_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='all database activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_data`
--

LOCK TABLES `obd_data` WRITE;
/*!40000 ALTER TABLE `obd_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:26
