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
-- Table structure for table `obd_adminpresets_it`
--

DROP TABLE IF EXISTS `obd_adminpresets_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_adminpresets_it` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adminpresetid` bigint NOT NULL,
  `plugin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `obd_admiit_adm_ix` (`adminpresetid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Table to store settings';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_adminpresets_it`
--

LOCK TABLES `obd_adminpresets_it` WRITE;
/*!40000 ALTER TABLE `obd_adminpresets_it` DISABLE KEYS */;
INSERT INTO `obd_adminpresets_it` VALUES (1,1,'none','usecomments','0'),(2,1,'none','usetags','0'),(3,1,'none','enablenotes','0'),(4,1,'none','enableblogs','0'),(5,1,'none','enablebadges','0'),(6,1,'none','enableanalytics','0'),(7,1,'core_competency','enabled','0'),(8,1,'core_competency','pushcourseratingstouserplans','0'),(9,1,'tool_dataprivacy','showdataretentionsummary','0'),(10,1,'none','forum_maxattachments','3'),(11,1,'none','guestloginbutton','0'),(12,1,'none','activitychoosertabmode','1'),(13,2,'none','usecomments','1'),(14,2,'none','usetags','1'),(15,2,'none','enablenotes','1'),(16,2,'none','enableblogs','1'),(17,2,'none','enablebadges','1'),(18,2,'none','enableanalytics','1'),(19,2,'core_competency','enabled','1'),(20,2,'core_competency','pushcourseratingstouserplans','1'),(21,2,'tool_dataprivacy','showdataretentionsummary','1'),(22,2,'none','forum_maxattachments','9'),(23,2,'none','guestloginbutton','1'),(24,2,'none','activitychoosertabmode','0');
/*!40000 ALTER TABLE `obd_adminpresets_it` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:01
