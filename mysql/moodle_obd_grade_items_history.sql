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
-- Table structure for table `obd_grade_items_history`
--

DROP TABLE IF EXISTS `obd_grade_items_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_grade_items_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` bigint NOT NULL DEFAULT '0',
  `oldid` bigint NOT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  `loggeduser` bigint DEFAULT NULL,
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
  `hidden` bigint NOT NULL DEFAULT '0',
  `locked` bigint NOT NULL DEFAULT '0',
  `locktime` bigint NOT NULL DEFAULT '0',
  `needsupdate` bigint NOT NULL DEFAULT '0',
  `display` bigint NOT NULL DEFAULT '0',
  `decimals` tinyint(1) DEFAULT NULL,
  `weightoverride` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_graditemhist_act_ix` (`action`),
  KEY `obd_graditemhist_tim_ix` (`timemodified`),
  KEY `obd_graditemhist_old_ix` (`oldid`),
  KEY `obd_graditemhist_cou_ix` (`courseid`),
  KEY `obd_graditemhist_cat_ix` (`categoryid`),
  KEY `obd_graditemhist_sca_ix` (`scaleid`),
  KEY `obd_graditemhist_out_ix` (`outcomeid`),
  KEY `obd_graditemhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='History of grade_items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_grade_items_history`
--

LOCK TABLES `obd_grade_items_history` WRITE;
/*!40000 ALTER TABLE `obd_grade_items_history` DISABLE KEYS */;
INSERT INTO `obd_grade_items_history` VALUES (1,1,1,'system',1665032582,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(2,1,2,'system',1665087044,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(3,2,2,'aggregation',1665087064,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,0.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(4,1,3,NULL,1665095718,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,2,0,0,0,1,0,NULL,0),(5,2,3,NULL,1665095718,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,2,0,0,0,1,0,NULL,0),(6,2,3,NULL,1665095718,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,1,0,NULL,0),(7,2,2,'aggregation',1665095718,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(8,2,3,NULL,1665095847,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,1,0,NULL,0),(9,2,3,NULL,1665095847,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,1,0,NULL,0),(10,2,2,'aggregation',1665095847,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(11,2,3,NULL,1665095866,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,0,0,NULL,0),(12,2,3,NULL,1665095866,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,0,0,NULL,0),(13,2,3,NULL,1665095883,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,0,0,NULL,0),(14,2,3,NULL,1665095883,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,0,0,NULL,0),(15,1,4,NULL,1665096442,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,3,0,0,0,1,0,NULL,0),(16,2,4,NULL,1665096442,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,3,0,0,0,1,0,NULL,0),(17,2,3,NULL,1665096442,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,0,0,1,0,NULL,0),(18,2,4,NULL,1665096442,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.80000,3,0,0,0,1,0,NULL,0),(19,2,2,'aggregation',1665096442,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(20,2,4,NULL,1665096459,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.80000,3,0,0,0,1,0,NULL,0),(21,2,3,NULL,1665096459,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.50000,2,0,0,0,1,0,NULL,0),(22,2,4,NULL,1665096459,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.50000,3,0,0,0,1,0,NULL,0),(23,2,2,'aggregation',1665096459,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(24,1,5,'system',1665096986,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(25,2,5,'aggregation',1665096995,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,0.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(26,1,6,NULL,1665097451,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'18',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,2,0,0,0,1,0,NULL,0),(27,2,6,NULL,1665097451,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,2,0,0,0,1,0,NULL,0),(28,2,6,NULL,1665097451,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,1,0,NULL,0),(29,2,5,'aggregation',1665097452,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(30,1,7,NULL,1665097578,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,4,0,0,0,1,0,NULL,0),(31,2,7,NULL,1665097578,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,4,0,0,0,1,0,NULL,0),(32,2,3,NULL,1665097578,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,1,0,NULL,0),(33,2,4,NULL,1665097578,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,3,0,0,0,1,0,NULL,0),(34,2,7,NULL,1665097578,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.16667,4,0,0,0,1,0,NULL,0),(35,2,2,'aggregation',1665097578,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,60.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(36,1,8,NULL,1665097615,2,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,3,0,0,0,1,0,NULL,0),(37,2,8,NULL,1665097615,2,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,3,0,0,0,1,0,NULL,0),(38,2,6,NULL,1665097615,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.50000,2,0,0,0,1,0,NULL,0),(39,2,8,NULL,1665097615,2,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.50000,3,0,0,0,1,0,NULL,0),(40,2,5,'aggregation',1665097615,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(41,1,9,NULL,1665097645,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,4,0,0,0,1,0,NULL,0),(42,2,9,NULL,1665097645,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,4,0,0,0,1,0,NULL,0),(43,2,6,NULL,1665097645,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,1,0,NULL,0),(44,2,8,NULL,1665097645,2,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,3,0,0,0,1,0,NULL,0),(45,2,9,NULL,1665097645,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.16667,4,0,0,0,1,0,NULL,0),(46,2,5,'aggregation',1665097645,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,60.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(47,2,1,'aggregation',1665101439,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,0.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(48,1,10,NULL,1665101786,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'28',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,2,0,0,0,1,0,NULL,0),(49,2,10,NULL,1665101786,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,2,0,0,0,1,0,NULL,0),(50,2,10,NULL,1665101786,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,2,0,0,0,1,0,NULL,0),(51,2,1,'aggregation',1665101786,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(52,1,11,NULL,1665101842,2,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,3,0,0,0,1,0,NULL,0),(53,2,11,NULL,1665101842,2,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,3,0,0,0,1,0,NULL,0),(54,2,10,NULL,1665101842,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.50000,2,0,0,0,1,0,NULL,0),(55,2,11,NULL,1665101842,2,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.50000,3,0,0,0,1,0,NULL,0),(56,2,1,'aggregation',1665101842,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(57,1,12,NULL,1665101862,2,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,4,0,0,0,1,0,NULL,0),(58,2,12,NULL,1665101862,2,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,4,0,0,0,1,0,NULL,0),(59,2,10,NULL,1665101862,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,1,0,NULL,0),(60,2,11,NULL,1665101862,2,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,3,0,0,0,1,0,NULL,0),(61,2,12,NULL,1665101862,2,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.16667,4,0,0,0,1,0,NULL,0),(62,2,1,'aggregation',1665101862,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,60.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(63,2,3,NULL,1665509177,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(64,2,3,NULL,1665509177,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(65,2,3,NULL,1665509288,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(66,2,3,NULL,1665509288,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(67,2,3,NULL,1665509441,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(68,2,3,NULL,1665509441,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(69,2,3,NULL,1665509724,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(70,2,3,NULL,1665509724,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(71,1,13,NULL,1665510699,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'31',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,5,0,0,0,1,0,NULL,0),(72,2,13,NULL,1665510700,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,5,0,0,0,1,0,NULL,0),(73,2,13,NULL,1665510700,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,5,0,0,0,1,0,NULL,0),(74,2,3,NULL,1665510700,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.15625,2,0,0,0,1,0,NULL,0),(75,2,4,NULL,1665510700,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.15625,3,0,0,0,1,0,NULL,0),(76,2,7,NULL,1665510700,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.06250,4,0,0,0,1,0,NULL,0),(77,2,13,NULL,1665510700,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,100.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.62500,5,0,0,0,1,0,NULL,0),(78,2,2,'aggregation',1665510700,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,160.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(79,2,13,NULL,1665510731,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'31',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.62500,5,0,0,0,1,0,NULL,0),(80,2,13,NULL,1665510731,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.62500,5,0,0,0,1,0,NULL,0),(81,2,3,NULL,1665510731,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,1,0,NULL,0),(82,2,4,NULL,1665510731,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,3,0,0,0,1,0,NULL,0),(83,2,7,NULL,1665510731,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,1,0,NULL,0),(84,2,13,NULL,1665510731,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,5,0,0,0,1,0,NULL,0),(85,2,2,'aggregation',1665510731,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,85.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(86,2,3,NULL,1665512113,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'10',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,0,0,NULL,0),(87,2,3,NULL,1665512113,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,0,0,NULL,0),(88,2,13,NULL,1665512153,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'31',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,5,0,0,0,0,0,NULL,0),(89,2,13,NULL,1665512153,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,5,0,0,0,0,0,NULL,0),(90,2,7,NULL,1665512203,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,10.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,0,0,NULL,0),(91,2,7,NULL,1665512219,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,10.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,1,0,NULL,0),(92,2,3,NULL,1665512219,2,4,2,'Tarea de JSON','mod','assign',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,0,0,1,0,NULL,0),(93,2,4,NULL,1665512219,2,4,2,'Juegos de JSON','mod','lti',1,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,3,0,0,0,1,0,NULL,0),(94,2,7,NULL,1665512219,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,10.00000,1.00000,0.00000,0.00000,0.40000,4,0,0,0,1,0,NULL,0),(95,2,13,NULL,1665512219,2,4,2,'Juegos de JSON','mod','assign',4,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,5,0,0,0,1,0,NULL,0),(96,2,2,'aggregation',1665512219,2,4,NULL,NULL,'course',NULL,2,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(97,2,7,NULL,1665512249,2,4,2,'Cuestionario de JSON','mod','quiz',1,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,30.00000,1.00000,0.00000,0.00000,0.40000,4,0,0,0,0,0,NULL,0),(98,2,6,NULL,1665528220,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'18',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(99,2,6,NULL,1665528220,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(100,1,14,NULL,1665528630,2,3,3,'Juegos de XML','mod','assign',5,0,NULL,'32',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,5,0,0,0,1,0,NULL,0),(101,2,14,NULL,1665528630,2,3,3,'Juegos de XML','mod','assign',5,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,5,0,0,0,1,0,NULL,0),(102,2,14,NULL,1665528630,2,3,3,'Juegos de XML','mod','assign',5,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,5,0,0,0,1,0,NULL,0),(103,2,6,NULL,1665528630,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,1,0,NULL,0),(104,2,8,NULL,1665528630,2,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,3,0,0,0,1,0,NULL,0),(105,2,9,NULL,1665528630,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,1,0,NULL,0),(106,2,14,NULL,1665528630,2,3,3,'Juegos de XML','mod','assign',5,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,5,0,0,0,1,0,NULL,0),(107,2,5,'aggregation',1665528630,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,85.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(108,2,6,NULL,1665528655,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'18',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,0,0,NULL,0),(109,2,6,NULL,1665528655,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,0,0,NULL,0),(110,2,6,NULL,1665528817,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'18',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,0,0,NULL,0),(111,2,6,NULL,1665528817,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,0,0,NULL,0),(112,2,9,NULL,1665529661,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,1,0,NULL,0),(113,2,6,NULL,1665529661,2,3,3,'Tarea de XML','mod','assign',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,0,0,1,0,NULL,0),(114,2,8,NULL,1665529661,2,3,3,'Juegos de XML','mod','lti',2,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,3,0,0,0,1,0,NULL,0),(115,2,9,NULL,1665529661,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.40000,4,0,0,0,1,0,NULL,0),(116,2,14,NULL,1665529661,2,3,3,'Juegos de XML','mod','assign',5,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,5,0,0,0,1,0,NULL,0),(117,2,5,'aggregation',1665529661,2,3,NULL,NULL,'course',NULL,3,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(118,2,9,NULL,1665529678,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,50.00000,1.00000,0.00000,0.00000,0.40000,4,0,0,0,0,0,NULL,0),(119,2,9,NULL,1665529708,2,3,3,'Cuestionario de JSON','mod','quiz',2,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,30.00000,1.00000,0.00000,0.00000,0.40000,4,0,0,0,0,0,NULL,0),(120,2,10,NULL,1665531378,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'28',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(121,2,10,NULL,1665531378,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.41667,2,0,0,0,0,0,NULL,0),(122,1,15,NULL,1665537137,2,2,1,'Juego de PHP','mod','assign',6,0,NULL,'33',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,5,0,0,0,1,0,NULL,0),(123,2,15,NULL,1665537137,2,2,1,'Juego de PHP','mod','assign',6,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,5,0,0,0,1,0,NULL,0),(124,2,15,NULL,1665537137,2,2,1,'Juego de PHP','mod','assign',6,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,1.00000,5,0,0,0,1,0,NULL,0),(125,2,10,NULL,1665537137,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,2,0,0,0,1,0,NULL,0),(126,2,11,NULL,1665537137,2,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,3,0,0,0,1,0,NULL,0),(127,2,12,NULL,1665537137,2,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,10.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,1,0,NULL,0),(128,2,15,NULL,1665537137,2,2,1,'Juego de PHP','mod','assign',6,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.29412,5,0,0,0,1,0,NULL,0),(129,2,1,'aggregation',1665537137,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,85.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0),(130,2,12,NULL,1665537468,2,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.11765,4,0,0,0,1,0,NULL,0),(131,2,10,NULL,1665537468,2,2,1,'Tarea de PHP','mod','assign',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,2,0,0,0,1,0,NULL,0),(132,2,11,NULL,1665537468,2,2,1,'Juego de PHP','mod','lti',3,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,3,0,0,0,1,0,NULL,0),(133,2,12,NULL,1665537468,2,2,1,'Cuestionario de PHP','mod','quiz',3,0,NULL,'',NULL,1,50.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.40000,4,0,0,0,1,0,NULL,0),(134,2,15,NULL,1665537468,2,2,1,'Juego de PHP','mod','assign',6,0,NULL,'',NULL,1,25.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.20000,5,0,0,0,1,0,NULL,0),(135,2,1,'aggregation',1665537468,2,2,NULL,NULL,'course',NULL,1,NULL,NULL,NULL,NULL,1,125.00000,0.00000,NULL,NULL,0.00000,1.00000,0.00000,0.00000,0.00000,1,0,0,0,1,0,NULL,0);
/*!40000 ALTER TABLE `obd_grade_items_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:55