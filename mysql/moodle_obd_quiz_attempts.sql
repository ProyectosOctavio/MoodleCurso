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
-- Table structure for table `obd_quiz_attempts`
--

DROP TABLE IF EXISTS `obd_quiz_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_quiz_attempts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quiz` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `attempt` mediumint NOT NULL DEFAULT '0',
  `uniqueid` bigint NOT NULL DEFAULT '0',
  `layout` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `currentpage` bigint NOT NULL DEFAULT '0',
  `preview` smallint NOT NULL DEFAULT '0',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'inprogress',
  `timestart` bigint NOT NULL DEFAULT '0',
  `timefinish` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `timemodifiedoffline` bigint NOT NULL DEFAULT '0',
  `timecheckstate` bigint DEFAULT '0',
  `sumgrades` decimal(10,5) DEFAULT NULL,
  `gradednotificationsenttime` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quizatte_quiuseatt_uix` (`quiz`,`userid`,`attempt`),
  UNIQUE KEY `obd_quizatte_uni_uix` (`uniqueid`),
  KEY `obd_quizatte_statim_ix` (`state`,`timecheckstate`),
  KEY `obd_quizatte_qui_ix` (`quiz`),
  KEY `obd_quizatte_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores users attempts at quizzes.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_quiz_attempts`
--

LOCK TABLES `obd_quiz_attempts` WRITE;
/*!40000 ALTER TABLE `obd_quiz_attempts` DISABLE KEYS */;
INSERT INTO `obd_quiz_attempts` VALUES (7,1,2,1,7,'1,0,2,0,3,0,4,0,5,0',0,1,'inprogress',1665512339,0,1665512339,0,NULL,NULL,NULL),(10,3,2,1,10,'1,0,2,0,3,0,4,0,5,0',0,1,'inprogress',1665537529,0,1665537529,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `obd_quiz_attempts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:43
