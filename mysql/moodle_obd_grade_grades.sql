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
-- Table structure for table `obd_grade_grades`
--

DROP TABLE IF EXISTS `obd_grade_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_grade_grades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itemid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `rawgrade` decimal(10,5) DEFAULT NULL,
  `rawgrademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `rawgrademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `rawscaleid` bigint DEFAULT NULL,
  `usermodified` bigint DEFAULT NULL,
  `finalgrade` decimal(10,5) DEFAULT NULL,
  `hidden` bigint NOT NULL DEFAULT '0',
  `locked` bigint NOT NULL DEFAULT '0',
  `locktime` bigint NOT NULL DEFAULT '0',
  `exported` bigint NOT NULL DEFAULT '0',
  `overridden` bigint NOT NULL DEFAULT '0',
  `excluded` bigint NOT NULL DEFAULT '0',
  `feedback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `feedbackformat` bigint NOT NULL DEFAULT '0',
  `information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `informationformat` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  `aggregationstatus` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'unknown',
  `aggregationweight` decimal(10,5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_gradgrad_useite_uix` (`userid`,`itemid`),
  KEY `obd_gradgrad_locloc_ix` (`locked`,`locktime`),
  KEY `obd_gradgrad_ite_ix` (`itemid`),
  KEY `obd_gradgrad_use_ix` (`userid`),
  KEY `obd_gradgrad_raw_ix` (`rawscaleid`),
  KEY `obd_gradgrad_use2_ix` (`usermodified`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='grade_grades  This table keeps individual grades for each us';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_grade_grades`
--

LOCK TABLES `obd_grade_grades` WRITE;
/*!40000 ALTER TABLE `obd_grade_grades` DISABLE KEYS */;
INSERT INTO `obd_grade_grades` VALUES (1,7,2,NULL,50.00000,0.00000,NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(2,2,2,NULL,100.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'unknown',NULL),(3,3,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(4,4,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(5,13,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(6,9,2,NULL,50.00000,0.00000,NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(7,5,2,NULL,100.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'unknown',NULL),(8,6,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(9,8,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000),(10,14,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0,NULL,NULL,'novalue',0.00000);
/*!40000 ALTER TABLE `obd_grade_grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:31
