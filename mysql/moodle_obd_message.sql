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
-- Table structure for table `obd_message`
--

DROP TABLE IF EXISTS `obd_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `useridfrom` bigint NOT NULL DEFAULT '0',
  `useridto` bigint NOT NULL DEFAULT '0',
  `subject` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `fullmessage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `fullmessageformat` smallint DEFAULT '0',
  `fullmessagehtml` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `smallmessage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `notification` tinyint(1) DEFAULT '0',
  `contexturl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `contexturlname` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timeuserfromdeleted` bigint NOT NULL DEFAULT '0',
  `timeusertodeleted` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `eventtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `obd_mess_useusetimtim_ix` (`useridfrom`,`useridto`,`timeuserfromdeleted`,`timeusertodeleted`),
  KEY `obd_mess_usetimnot_ix` (`useridfrom`,`timeuserfromdeleted`,`notification`),
  KEY `obd_mess_usetimnot2_ix` (`useridto`,`timeusertodeleted`,`notification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores all unread messages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_message`
--

LOCK TABLES `obd_message` WRITE;
/*!40000 ALTER TABLE `obd_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:25
