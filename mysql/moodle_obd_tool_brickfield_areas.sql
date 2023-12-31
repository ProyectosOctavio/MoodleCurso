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
-- Table structure for table `obd_tool_brickfield_areas`
--

DROP TABLE IF EXISTS `obd_tool_brickfield_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_tool_brickfield_areas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '0',
  `contextid` bigint DEFAULT NULL,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tablename` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fieldorarea` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itemid` bigint DEFAULT NULL,
  `filename` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reftable` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refid` bigint DEFAULT NULL,
  `cmid` bigint DEFAULT NULL,
  `courseid` bigint DEFAULT NULL,
  `categoryid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_toolbricarea_coucmi_ix` (`courseid`,`cmid`),
  KEY `obd_toolbricarea_typtabitef_ix` (`type`,`tablename`,`itemid`,`fieldorarea`),
  KEY `obd_toolbricarea_typconcomf_ix` (`type`,`contextid`,`component`,`fieldorarea`,`itemid`),
  KEY `obd_toolbricarea_refreftyp_ix` (`reftable`,`refid`,`type`),
  KEY `obd_toolbricarea_cou_ix` (`courseid`),
  KEY `obd_toolbricarea_cmi_ix` (`cmid`),
  KEY `obd_toolbricarea_cat_ix` (`categoryid`),
  KEY `obd_toolbricarea_con_ix` (`contextid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Areas that have been checked for accessibility problems';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_tool_brickfield_areas`
--

LOCK TABLES `obd_tool_brickfield_areas` WRITE;
/*!40000 ALTER TABLE `obd_tool_brickfield_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_tool_brickfield_areas` ENABLE KEYS */;
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
