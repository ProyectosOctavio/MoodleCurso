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
-- Table structure for table `obd_grade_grades_history`
--

DROP TABLE IF EXISTS `obd_grade_grades_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_grade_grades_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` bigint NOT NULL DEFAULT '0',
  `oldid` bigint NOT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  `loggeduser` bigint DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `obd_gradgradhist_act_ix` (`action`),
  KEY `obd_gradgradhist_tim_ix` (`timemodified`),
  KEY `obd_gradgradhist_useitetim_ix` (`userid`,`itemid`,`timemodified`),
  KEY `obd_gradgradhist_old_ix` (`oldid`),
  KEY `obd_gradgradhist_ite_ix` (`itemid`),
  KEY `obd_gradgradhist_use_ix` (`userid`),
  KEY `obd_gradgradhist_raw_ix` (`rawscaleid`),
  KEY `obd_gradgradhist_use2_ix` (`usermodified`),
  KEY `obd_gradgradhist_log_ix` (`loggeduser`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='History table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_grade_grades_history`
--

LOCK TABLES `obd_grade_grades_history` WRITE;
/*!40000 ALTER TABLE `obd_grade_grades_history` DISABLE KEYS */;
INSERT INTO `obd_grade_grades_history` VALUES (1,1,1,'mod/quiz',1665511133,2,7,2,NULL,10.00000,0.00000,NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(2,1,2,'system',1665511133,2,2,2,NULL,100.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(3,1,3,'system',1665511133,2,3,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(4,1,4,'system',1665511133,2,4,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(5,1,5,'system',1665511133,2,13,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(6,2,1,'mod/quiz',1665512339,2,7,2,NULL,50.00000,0.00000,NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(7,1,6,'mod/quiz',1665529418,2,9,2,NULL,10.00000,0.00000,NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(8,1,7,'system',1665529419,2,5,2,NULL,100.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(9,1,8,'system',1665529419,2,6,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(10,1,9,'system',1665529419,2,8,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(11,1,10,'system',1665529419,2,14,2,NULL,25.00000,0.00000,NULL,NULL,NULL,0,0,0,0,0,0,NULL,0,NULL,0),(12,2,6,'mod/quiz',1665529678,2,9,2,NULL,50.00000,0.00000,NULL,2,NULL,0,0,0,0,0,0,NULL,0,NULL,0);
/*!40000 ALTER TABLE `obd_grade_grades_history` ENABLE KEYS */;
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
