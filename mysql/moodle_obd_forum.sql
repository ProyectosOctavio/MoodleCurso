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
-- Table structure for table `obd_forum`
--

DROP TABLE IF EXISTS `obd_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_forum` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'general',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `duedate` bigint NOT NULL DEFAULT '0',
  `cutoffdate` bigint NOT NULL DEFAULT '0',
  `assessed` bigint NOT NULL DEFAULT '0',
  `assesstimestart` bigint NOT NULL DEFAULT '0',
  `assesstimefinish` bigint NOT NULL DEFAULT '0',
  `scale` bigint NOT NULL DEFAULT '0',
  `grade_forum` bigint NOT NULL DEFAULT '0',
  `grade_forum_notify` smallint NOT NULL DEFAULT '0',
  `maxbytes` bigint NOT NULL DEFAULT '0',
  `maxattachments` bigint NOT NULL DEFAULT '1',
  `forcesubscribe` tinyint(1) NOT NULL DEFAULT '0',
  `trackingtype` tinyint NOT NULL DEFAULT '1',
  `rsstype` tinyint NOT NULL DEFAULT '0',
  `rssarticles` tinyint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `warnafter` bigint NOT NULL DEFAULT '0',
  `blockafter` bigint NOT NULL DEFAULT '0',
  `blockperiod` bigint NOT NULL DEFAULT '0',
  `completiondiscussions` int NOT NULL DEFAULT '0',
  `completionreplies` int NOT NULL DEFAULT '0',
  `completionposts` int NOT NULL DEFAULT '0',
  `displaywordcount` tinyint(1) NOT NULL DEFAULT '0',
  `lockdiscussionafter` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_foru_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Forums contain and structure discussion';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_forum`
--

LOCK TABLES `obd_forum` WRITE;
/*!40000 ALTER TABLE `obd_forum` DISABLE KEYS */;
INSERT INTO `obd_forum` VALUES (1,2,'news','Foro de avisos','Avisos y novedades generales',1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1665101421,0,0,0,0,0,0,0,0),(2,3,'news','Foro de avisos','Avisos y novedades generales',1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1665096980,0,0,0,0,0,0,0,0),(3,4,'news','Foro de avisos','Avisos y novedades generales',1,0,0,0,0,0,0,0,0,0,1,1,1,0,0,1665087329,0,0,0,0,0,0,0,0),(4,4,'general','Foro de consultas al docente','',1,0,0,0,0,0,100,0,0,512000,9,0,1,0,0,1665087263,0,0,0,0,0,0,0,0),(5,3,'general','Foro de consulta al docente','',1,0,0,0,0,0,100,0,0,512000,9,0,1,0,0,1665096995,0,0,0,0,0,0,0,0),(6,2,'general','Foro de consulta al docente','',1,0,0,0,0,0,100,0,0,512000,9,0,1,0,0,1665101439,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `obd_forum` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:29
