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
-- Table structure for table `obd_quizaccess_seb_quizsettings`
--

DROP TABLE IF EXISTS `obd_quizaccess_seb_quizsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_quizaccess_seb_quizsettings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quizid` bigint NOT NULL,
  `cmid` bigint NOT NULL,
  `templateid` bigint NOT NULL,
  `requiresafeexambrowser` tinyint(1) NOT NULL,
  `showsebtaskbar` tinyint(1) DEFAULT NULL,
  `showwificontrol` tinyint(1) DEFAULT NULL,
  `showreloadbutton` tinyint(1) DEFAULT NULL,
  `showtime` tinyint(1) DEFAULT NULL,
  `showkeyboardlayout` tinyint(1) DEFAULT NULL,
  `allowuserquitseb` tinyint(1) DEFAULT NULL,
  `quitpassword` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `linkquitseb` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `userconfirmquit` tinyint(1) DEFAULT NULL,
  `enableaudiocontrol` tinyint(1) DEFAULT NULL,
  `muteonstartup` tinyint(1) DEFAULT NULL,
  `allowspellchecking` tinyint(1) DEFAULT NULL,
  `allowreloadinexam` tinyint(1) DEFAULT NULL,
  `activateurlfiltering` tinyint(1) DEFAULT NULL,
  `filterembeddedcontent` tinyint(1) DEFAULT NULL,
  `expressionsallowed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `regexallowed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `expressionsblocked` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `regexblocked` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `allowedbrowserexamkeys` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `showsebdownloadlink` tinyint(1) DEFAULT NULL,
  `usermodified` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quizsebquiz_qui_uix` (`quizid`),
  UNIQUE KEY `obd_quizsebquiz_cmi_uix` (`cmid`),
  KEY `obd_quizsebquiz_tem_ix` (`templateid`),
  KEY `obd_quizsebquiz_use_ix` (`usermodified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Stores the quiz level Safe Exam Browser configuration.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_quizaccess_seb_quizsettings`
--

LOCK TABLES `obd_quizaccess_seb_quizsettings` WRITE;
/*!40000 ALTER TABLE `obd_quizaccess_seb_quizsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_quizaccess_seb_quizsettings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:37:56
