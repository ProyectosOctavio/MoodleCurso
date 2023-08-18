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
-- Table structure for table `obd_question_versions`
--

DROP TABLE IF EXISTS `obd_question_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question_versions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `questionbankentryid` bigint NOT NULL DEFAULT '0',
  `version` bigint NOT NULL DEFAULT '1',
  `questionid` bigint NOT NULL DEFAULT '0',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'ready',
  PRIMARY KEY (`id`),
  KEY `obd_quesvers_que_ix` (`questionbankentryid`),
  KEY `obd_quesvers_que2_ix` (`questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='A join table linking the different question version definiti';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question_versions`
--

LOCK TABLES `obd_question_versions` WRITE;
/*!40000 ALTER TABLE `obd_question_versions` DISABLE KEYS */;
INSERT INTO `obd_question_versions` VALUES (1,1,1,1,'ready'),(2,2,1,2,'ready'),(3,2,2,3,'ready'),(4,2,3,4,'ready'),(5,2,4,5,'ready'),(6,3,1,6,'ready'),(7,4,1,7,'ready'),(8,5,1,8,'ready'),(9,6,1,9,'ready'),(10,7,1,10,'ready'),(11,7,2,11,'ready'),(12,8,1,12,'ready'),(13,9,1,13,'ready'),(14,10,1,14,'ready'),(15,11,1,15,'ready'),(16,12,1,16,'ready'),(17,13,1,17,'ready'),(18,14,1,18,'ready'),(19,15,1,19,'ready'),(20,16,1,20,'ready'),(21,17,1,21,'ready'),(22,17,2,22,'ready'),(23,17,3,23,'ready');
/*!40000 ALTER TABLE `obd_question_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:06
