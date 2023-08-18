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
-- Table structure for table `obd_glossary`
--

DROP TABLE IF EXISTS `obd_glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_glossary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `allowduplicatedentries` tinyint NOT NULL DEFAULT '0',
  `displayformat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'dictionary',
  `mainglossary` tinyint NOT NULL DEFAULT '0',
  `showspecial` tinyint NOT NULL DEFAULT '1',
  `showalphabet` tinyint NOT NULL DEFAULT '1',
  `showall` tinyint NOT NULL DEFAULT '1',
  `allowcomments` tinyint NOT NULL DEFAULT '0',
  `allowprintview` tinyint NOT NULL DEFAULT '1',
  `usedynalink` tinyint NOT NULL DEFAULT '1',
  `defaultapproval` tinyint NOT NULL DEFAULT '1',
  `approvaldisplayformat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'default',
  `globalglossary` tinyint NOT NULL DEFAULT '0',
  `entbypage` smallint NOT NULL DEFAULT '10',
  `editalways` tinyint NOT NULL DEFAULT '0',
  `rsstype` tinyint NOT NULL DEFAULT '0',
  `rssarticles` tinyint NOT NULL DEFAULT '0',
  `assessed` bigint NOT NULL DEFAULT '0',
  `assesstimestart` bigint NOT NULL DEFAULT '0',
  `assesstimefinish` bigint NOT NULL DEFAULT '0',
  `scale` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `completionentries` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_glos_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='all glossaries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_glossary`
--

LOCK TABLES `obd_glossary` WRITE;
/*!40000 ALTER TABLE `obd_glossary` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_glossary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:13
