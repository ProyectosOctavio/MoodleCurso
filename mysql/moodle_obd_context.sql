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
-- Table structure for table `obd_context`
--

DROP TABLE IF EXISTS `obd_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_context` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contextlevel` bigint NOT NULL DEFAULT '0',
  `instanceid` bigint NOT NULL DEFAULT '0',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `depth` tinyint NOT NULL DEFAULT '0',
  `locked` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_cont_conins_uix` (`contextlevel`,`instanceid`),
  KEY `obd_cont_ins_ix` (`instanceid`),
  KEY `obd_cont_pat_ix` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='one of these must be set';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_context`
--

LOCK TABLES `obd_context` WRITE;
/*!40000 ALTER TABLE `obd_context` DISABLE KEYS */;
INSERT INTO `obd_context` VALUES (1,10,0,'/1',1,0),(2,50,1,'/1/2',2,0),(3,40,1,'/1/3',2,0),(4,30,1,'/1/4',2,0),(5,30,2,'/1/5',2,0),(6,80,1,'/1/6',2,0),(7,80,2,'/1/7',2,0),(8,80,3,'/1/8',2,0),(9,80,4,'/1/9',2,0),(10,80,5,'/1/10',2,0),(11,80,6,'/1/5/11',3,0),(12,80,7,'/1/5/12',3,0),(13,80,8,'/1/5/13',3,0),(14,30,3,'/1/14',2,0),(15,50,2,'/1/3/15',3,0),(16,70,1,'/1/3/15/16',4,0),(17,30,4,'/1/17',2,0),(18,30,5,'/1/18',2,0),(19,50,3,'/1/3/19',3,0),(20,70,2,'/1/3/19/20',4,0),(21,50,4,'/1/3/21',3,0),(22,70,3,'/1/3/21/22',4,0),(23,70,4,'/1/2/23',3,0),(24,70,5,'/1/3/21/24',4,0),(25,70,6,'/1/3/21/25',4,0),(26,70,7,'/1/3/21/26',4,0),(27,70,8,'/1/3/21/27',4,0),(28,70,9,'/1/3/21/28',4,0),(29,70,10,'/1/3/21/29',4,0),(30,70,11,'/1/3/21/30',4,0),(31,70,12,'/1/3/21/31',4,0),(32,70,13,'/1/3/19/32',4,0),(33,70,14,'/1/3/19/33',4,0),(34,70,15,'/1/3/19/34',4,0),(35,70,16,'/1/3/19/35',4,0),(36,70,17,'/1/3/19/36',4,0),(37,70,18,'/1/3/19/37',4,0),(38,70,19,'/1/3/21/38',4,0),(39,70,20,'/1/3/19/39',4,0),(40,70,21,'/1/3/19/40',4,0),(41,70,22,'/1/3/15/41',4,0),(42,70,23,'/1/3/15/42',4,0),(43,70,24,'/1/3/15/43',4,0),(44,70,25,'/1/3/15/44',4,0),(45,70,26,'/1/3/15/45',4,0),(46,70,27,'/1/3/15/46',4,0),(47,70,28,'/1/3/15/47',4,0),(48,70,29,'/1/3/15/48',4,0),(49,70,30,'/1/3/15/49',4,0),(50,70,31,'/1/3/21/50',4,0),(51,30,6,'/1/51',2,0),(52,70,32,'/1/3/19/52',4,0),(53,70,33,'/1/3/15/53',4,0);
/*!40000 ALTER TABLE `obd_context` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:56
