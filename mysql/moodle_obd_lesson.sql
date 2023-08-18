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
-- Table structure for table `obd_lesson`
--

DROP TABLE IF EXISTS `obd_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `practice` smallint NOT NULL DEFAULT '0',
  `modattempts` smallint NOT NULL DEFAULT '0',
  `usepassword` smallint NOT NULL DEFAULT '0',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `dependency` bigint NOT NULL DEFAULT '0',
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `grade` bigint NOT NULL DEFAULT '0',
  `custom` smallint NOT NULL DEFAULT '0',
  `ongoing` smallint NOT NULL DEFAULT '0',
  `usemaxgrade` smallint NOT NULL DEFAULT '0',
  `maxanswers` smallint NOT NULL DEFAULT '4',
  `maxattempts` smallint NOT NULL DEFAULT '5',
  `review` smallint NOT NULL DEFAULT '0',
  `nextpagedefault` smallint NOT NULL DEFAULT '0',
  `feedback` smallint NOT NULL DEFAULT '1',
  `minquestions` smallint NOT NULL DEFAULT '0',
  `maxpages` smallint NOT NULL DEFAULT '0',
  `timelimit` bigint NOT NULL DEFAULT '0',
  `retake` smallint NOT NULL DEFAULT '1',
  `activitylink` bigint NOT NULL DEFAULT '0',
  `mediafile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `mediaheight` bigint NOT NULL DEFAULT '100',
  `mediawidth` bigint NOT NULL DEFAULT '650',
  `mediaclose` smallint NOT NULL DEFAULT '0',
  `slideshow` smallint NOT NULL DEFAULT '0',
  `width` bigint NOT NULL DEFAULT '640',
  `height` bigint NOT NULL DEFAULT '480',
  `bgcolor` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '#FFFFFF',
  `displayleft` smallint NOT NULL DEFAULT '0',
  `displayleftif` smallint NOT NULL DEFAULT '0',
  `progressbar` smallint NOT NULL DEFAULT '0',
  `available` bigint NOT NULL DEFAULT '0',
  `deadline` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `completionendreached` tinyint(1) DEFAULT '0',
  `completiontimespent` bigint DEFAULT '0',
  `allowofflineattempts` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_less_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines lesson';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_lesson`
--

LOCK TABLES `obd_lesson` WRITE;
/*!40000 ALTER TABLE `obd_lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_lesson` ENABLE KEYS */;
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
