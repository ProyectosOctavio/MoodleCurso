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
-- Table structure for table `obd_quiz_slots`
--

DROP TABLE IF EXISTS `obd_quiz_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_quiz_slots` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `slot` bigint NOT NULL,
  `quizid` bigint NOT NULL DEFAULT '0',
  `page` bigint NOT NULL,
  `requireprevious` smallint NOT NULL DEFAULT '0',
  `maxmark` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quizslot_quislo_uix` (`quizid`,`slot`),
  KEY `obd_quizslot_qui_ix` (`quizid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the question used in a quiz, with the order, and for ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_quiz_slots`
--

LOCK TABLES `obd_quiz_slots` WRITE;
/*!40000 ALTER TABLE `obd_quiz_slots` DISABLE KEYS */;
INSERT INTO `obd_quiz_slots` VALUES (2,1,1,1,0,10.0000000),(3,2,1,2,0,10.0000000),(4,3,1,3,0,10.0000000),(5,4,1,4,0,10.0000000),(6,5,1,5,0,10.0000000),(7,1,2,1,0,10.0000000),(8,2,2,2,0,10.0000000),(9,3,2,3,0,10.0000000),(10,4,2,4,0,10.0000000),(11,5,2,5,0,10.0000000),(12,1,3,1,0,10.0000000),(13,2,3,2,0,10.0000000),(14,3,3,3,0,10.0000000),(15,4,3,4,0,10.0000000),(16,5,3,5,0,10.0000000);
/*!40000 ALTER TABLE `obd_quiz_slots` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:32
