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
-- Table structure for table `obd_h5pactivity_attempts`
--

DROP TABLE IF EXISTS `obd_h5pactivity_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_h5pactivity_attempts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `h5pactivityid` bigint NOT NULL,
  `userid` bigint NOT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `attempt` mediumint NOT NULL DEFAULT '1',
  `rawscore` bigint DEFAULT '0',
  `maxscore` bigint DEFAULT '0',
  `scaled` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `duration` bigint DEFAULT '0',
  `completion` tinyint(1) DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_h5paatte_h5puseatt_uix` (`h5pactivityid`,`userid`,`attempt`),
  KEY `obd_h5paatte_tim_ix` (`timecreated`),
  KEY `obd_h5paatte_h5ptim_ix` (`h5pactivityid`,`timecreated`),
  KEY `obd_h5paatte_h5puse_ix` (`h5pactivityid`,`userid`),
  KEY `obd_h5paatte_h5p_ix` (`h5pactivityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Users attempts inside H5P activities';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_h5pactivity_attempts`
--

LOCK TABLES `obd_h5pactivity_attempts` WRITE;
/*!40000 ALTER TABLE `obd_h5pactivity_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_h5pactivity_attempts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:08
