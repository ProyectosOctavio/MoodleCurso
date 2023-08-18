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
-- Table structure for table `obd_grade_items`
--

DROP TABLE IF EXISTS `obd_grade_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_grade_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `courseid` bigint DEFAULT NULL,
  `categoryid` bigint DEFAULT NULL,
  `itemname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itemtype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemmodule` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `iteminstance` bigint DEFAULT NULL,
  `itemnumber` bigint DEFAULT NULL,
  `iteminfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `idnumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `calculation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `gradetype` smallint NOT NULL DEFAULT '1',
  `grademax` decimal(10,5) NOT NULL DEFAULT '100.00000',
  `grademin` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `scaleid` bigint DEFAULT NULL,
  `outcomeid` bigint DEFAULT NULL,
  `gradepass` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `multfactor` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `plusfactor` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `aggregationcoef2` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `display` bigint NOT NULL DEFAULT '0',
  `decimals` tinyint(1) DEFAULT NULL,
  `hidden` bigint NOT NULL DEFAULT '0',
  `locked` bigint NOT NULL DEFAULT '0',
  `locktime` bigint NOT NULL DEFAULT '0',
  `needsupdate` bigint NOT NULL DEFAULT '0',
  `weightoverride` tinyint(1) NOT NULL DEFAULT '0',
  `timecreated` bigint DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_graditem_locloc_ix` (`locked`,`locktime`),
  KEY `obd_graditem_itenee_ix` (`itemtype`,`needsupdate`),
  KEY `obd_graditem_gra_ix` (`gradetype`),
  KEY `obd_graditem_idncou_ix` (`idnumber`,`courseid`),
  KEY `obd_graditem_iteiteitecou_ix` (`itemtype`,`itemmodule`,`iteminstance`,`courseid`),
  KEY `obd_graditem_cou_ix` (`courseid`),
  KEY `obd_graditem_cat_ix` (`categoryid`),
  KEY `obd_graditem_sca_ix` (`scaleid`),
  KEY `obd_graditem_out_ix` (`outcomeid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about gradeable items (ie colum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_grade_items`
--

LOCK TABLES `obd_grade_items` WRITE;
/*!40000 ALTER TABLE `obd_grade_items` DISABLE KEYS */;
INSERT INTO `obd_grade_items` VALUES (1,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,NULL,0,0,0,0,0,1665032582,1665537468),(2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,NULL,0,0,0,0,0,1665087044,1665512219),(3,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,NULL,0,0,0,0,0,1665095718,1665512219),(4,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,3,0,NULL,0,0,0,0,0,1665096442,1665512219),(5,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,NULL,0,0,0,0,0,1665096986,1665529661),(6,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,NULL,0,0,0,0,0,1665097451,1665529661),(7,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,30.00000,1.00000,0.00000,0.00000,0.40000,4,0,NULL,0,0,0,0,0,1665097578,1665512249),(8,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,3,0,NULL,0,0,0,0,0,1665097615,1665529661),(9,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,30.00000,1.00000,0.00000,0.00000,0.40000,4,0,NULL,0,0,0,0,0,1665097645,1665529708),(10,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,NULL,0,0,0,0,0,1665101786,1665537468),(11,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,3,0,NULL,0,0,0,0,0,1665101842,1665537468),(12,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.40000,4,0,NULL,0,0,0,0,0,1665101862,1665537468),(13,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,5,0,NULL,0,0,0,0,0,1665510699,1665512219),(14,3,3,'Juegos de XML','mod','assign',5,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,5,0,NULL,0,0,0,0,0,1665528630,1665529661),(15,2,1,'Juego de PHP','mod','assign',6,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,5,0,NULL,0,0,0,0,0,1665537137,1665537468);
/*!40000 ALTER TABLE `obd_grade_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:51
