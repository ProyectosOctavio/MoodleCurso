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
-- Table structure for table `obd_question_references`
--

DROP TABLE IF EXISTS `obd_question_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question_references` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usingcontextid` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `questionarea` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `itemid` bigint DEFAULT NULL,
  `questionbankentryid` bigint NOT NULL DEFAULT '0',
  `version` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quesrefe_usicomqueite_uix` (`usingcontextid`,`component`,`questionarea`,`itemid`),
  KEY `obd_quesrefe_usi_ix` (`usingcontextid`),
  KEY `obd_quesrefe_que_ix` (`questionbankentryid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Records where a specific question is used.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question_references`
--

LOCK TABLES `obd_question_references` WRITE;
/*!40000 ALTER TABLE `obd_question_references` DISABLE KEYS */;
INSERT INTO `obd_question_references` VALUES (2,38,'mod_quiz','slot',2,3,NULL),(3,38,'mod_quiz','slot',3,4,NULL),(4,38,'mod_quiz','slot',4,5,NULL),(5,38,'mod_quiz','slot',5,6,NULL),(6,38,'mod_quiz','slot',6,7,NULL),(7,40,'mod_quiz','slot',7,8,NULL),(8,40,'mod_quiz','slot',8,9,NULL),(9,40,'mod_quiz','slot',9,10,NULL),(10,40,'mod_quiz','slot',10,11,NULL),(11,40,'mod_quiz','slot',11,12,NULL),(12,49,'mod_quiz','slot',12,13,NULL),(13,49,'mod_quiz','slot',13,14,NULL),(14,49,'mod_quiz','slot',14,15,NULL),(15,49,'mod_quiz','slot',15,16,NULL),(16,49,'mod_quiz','slot',16,17,NULL);
/*!40000 ALTER TABLE `obd_question_references` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:03
