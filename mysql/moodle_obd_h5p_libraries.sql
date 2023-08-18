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
-- Table structure for table `obd_h5p_libraries`
--

DROP TABLE IF EXISTS `obd_h5p_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_h5p_libraries` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `machinename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `majorversion` smallint NOT NULL,
  `minorversion` smallint NOT NULL,
  `patchversion` smallint NOT NULL,
  `runnable` tinyint(1) NOT NULL,
  `fullscreen` tinyint(1) NOT NULL DEFAULT '0',
  `embedtypes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `preloadedjs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `preloadedcss` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `droplibrarycss` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `semantics` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `addto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `coremajor` smallint DEFAULT NULL,
  `coreminor` smallint DEFAULT NULL,
  `metadatasettings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `tutorial` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `example` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `obd_h5plibr_macmajminpatrun_ix` (`machinename`,`majorversion`,`minorversion`,`patchversion`,`runnable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores information about libraries used by H5P content.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_h5p_libraries`
--

LOCK TABLES `obd_h5p_libraries` WRITE;
/*!40000 ALTER TABLE `obd_h5p_libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_h5p_libraries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:49
