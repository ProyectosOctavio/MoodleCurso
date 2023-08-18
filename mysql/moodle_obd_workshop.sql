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
-- Table structure for table `obd_workshop`
--

DROP TABLE IF EXISTS `obd_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_workshop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `instructauthors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `instructauthorsformat` smallint NOT NULL DEFAULT '0',
  `instructreviewers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `instructreviewersformat` smallint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL,
  `phase` smallint DEFAULT '0',
  `useexamples` tinyint DEFAULT '0',
  `usepeerassessment` tinyint DEFAULT '0',
  `useselfassessment` tinyint DEFAULT '0',
  `grade` decimal(10,5) DEFAULT '80.00000',
  `gradinggrade` decimal(10,5) DEFAULT '20.00000',
  `strategy` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `evaluation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `gradedecimals` smallint DEFAULT '0',
  `submissiontypetext` tinyint(1) NOT NULL DEFAULT '1',
  `submissiontypefile` tinyint(1) NOT NULL DEFAULT '1',
  `nattachments` smallint DEFAULT '1',
  `submissionfiletypes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `latesubmissions` tinyint DEFAULT '0',
  `maxbytes` bigint DEFAULT '100000',
  `examplesmode` smallint DEFAULT '0',
  `submissionstart` bigint DEFAULT '0',
  `submissionend` bigint DEFAULT '0',
  `assessmentstart` bigint DEFAULT '0',
  `assessmentend` bigint DEFAULT '0',
  `phaseswitchassessment` tinyint NOT NULL DEFAULT '0',
  `conclusion` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `conclusionformat` smallint NOT NULL DEFAULT '1',
  `overallfeedbackmode` smallint DEFAULT '1',
  `overallfeedbackfiles` smallint DEFAULT '0',
  `overallfeedbackfiletypes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `overallfeedbackmaxbytes` bigint DEFAULT '100000',
  PRIMARY KEY (`id`),
  KEY `obd_work_cou_ix` (`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table keeps information about the module instances and ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_workshop`
--

LOCK TABLES `obd_workshop` WRITE;
/*!40000 ALTER TABLE `obd_workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_workshop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:37:58
