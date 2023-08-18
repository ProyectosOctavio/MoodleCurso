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
-- Table structure for table `obd_question_attempt_steps`
--

DROP TABLE IF EXISTS `obd_question_attempt_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question_attempt_steps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `questionattemptid` bigint NOT NULL,
  `sequencenumber` bigint NOT NULL,
  `state` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `fraction` decimal(12,7) DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `userid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quesattestep_queseq_uix` (`questionattemptid`,`sequencenumber`),
  KEY `obd_quesattestep_que_ix` (`questionattemptid`),
  KEY `obd_quesattestep_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores one step in in a question attempt. As well as the dat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question_attempt_steps`
--

LOCK TABLES `obd_question_attempt_steps` WRITE;
/*!40000 ALTER TABLE `obd_question_attempt_steps` DISABLE KEYS */;
INSERT INTO `obd_question_attempt_steps` VALUES (39,19,0,'todo',NULL,1665512339,2),(40,20,0,'todo',NULL,1665512339,2),(41,21,0,'todo',NULL,1665512339,2),(42,22,0,'todo',NULL,1665512339,2),(43,23,0,'todo',NULL,1665512339,2),(50,30,0,'todo',NULL,1665537529,2),(51,31,0,'todo',NULL,1665537529,2),(52,32,0,'todo',NULL,1665537529,2),(53,33,0,'todo',NULL,1665537529,2),(54,34,0,'todo',NULL,1665537529,2);
/*!40000 ALTER TABLE `obd_question_attempt_steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:40
