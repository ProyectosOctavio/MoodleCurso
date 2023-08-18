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
-- Table structure for table `obd_grade_categories_history`
--

DROP TABLE IF EXISTS `obd_grade_categories_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_grade_categories_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` bigint NOT NULL DEFAULT '0',
  `oldid` bigint NOT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timemodified` bigint DEFAULT NULL,
  `loggeduser` bigint DEFAULT NULL,
  `courseid` bigint NOT NULL,
  `parent` bigint DEFAULT NULL,
  `depth` bigint NOT NULL DEFAULT '0',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `aggregation` bigint NOT NULL DEFAULT '0',
  `keephigh` bigint NOT NULL DEFAULT '0',
  `droplow` bigint NOT NULL DEFAULT '0',
  `aggregateonlygraded` tinyint(1) NOT NULL DEFAULT '0',
  `aggregateoutcomes` tinyint(1) NOT NULL DEFAULT '0',
  `aggregatesubcats` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_gradcatehist_act_ix` (`action`),
  KEY `obd_gradcatehist_tim_ix` (`timemodified`),
  KEY `obd_gradcatehist_old_ix` (`oldid`),
  KEY `obd_gradcatehist_cou_ix` (`courseid`),
  KEY `obd_gradcatehist_par_ix` (`parent`),
  KEY `obd_gradcatehist_log_ix` (`loggeduser`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='History of grade_categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_grade_categories_history`
--

LOCK TABLES `obd_grade_categories_history` WRITE;
/*!40000 ALTER TABLE `obd_grade_categories_history` DISABLE KEYS */;
INSERT INTO `obd_grade_categories_history` VALUES (1,1,1,'system',1665032582,2,2,NULL,0,NULL,'?',13,0,0,1,0,0,0),(2,2,1,'system',1665032582,2,2,NULL,1,'/1/','?',13,0,0,1,0,0,0),(3,1,2,'system',1665087044,2,4,NULL,0,NULL,'?',13,0,0,1,0,0,0),(4,2,2,'system',1665087044,2,4,NULL,1,'/2/','?',13,0,0,1,0,0,0),(5,1,3,'system',1665096986,2,3,NULL,0,NULL,'?',13,0,0,1,0,0,0),(6,2,3,'system',1665096986,2,3,NULL,1,'/3/','?',13,0,0,1,0,0,0);
/*!40000 ALTER TABLE `obd_grade_categories_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:37:59
