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
-- Table structure for table `obd_quiz`
--

DROP TABLE IF EXISTS `obd_quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_quiz` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `timeopen` bigint NOT NULL DEFAULT '0',
  `timeclose` bigint NOT NULL DEFAULT '0',
  `timelimit` bigint NOT NULL DEFAULT '0',
  `overduehandling` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'autoabandon',
  `graceperiod` bigint NOT NULL DEFAULT '0',
  `preferredbehaviour` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `canredoquestions` smallint NOT NULL DEFAULT '0',
  `attempts` mediumint NOT NULL DEFAULT '0',
  `attemptonlast` smallint NOT NULL DEFAULT '0',
  `grademethod` smallint NOT NULL DEFAULT '1',
  `decimalpoints` smallint NOT NULL DEFAULT '2',
  `questiondecimalpoints` smallint NOT NULL DEFAULT '-1',
  `reviewattempt` mediumint NOT NULL DEFAULT '0',
  `reviewcorrectness` mediumint NOT NULL DEFAULT '0',
  `reviewmarks` mediumint NOT NULL DEFAULT '0',
  `reviewspecificfeedback` mediumint NOT NULL DEFAULT '0',
  `reviewgeneralfeedback` mediumint NOT NULL DEFAULT '0',
  `reviewrightanswer` mediumint NOT NULL DEFAULT '0',
  `reviewoverallfeedback` mediumint NOT NULL DEFAULT '0',
  `questionsperpage` bigint NOT NULL DEFAULT '0',
  `navmethod` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'free',
  `shuffleanswers` smallint NOT NULL DEFAULT '0',
  `sumgrades` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `grade` decimal(10,5) NOT NULL DEFAULT '0.00000',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `subnet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `browsersecurity` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `delay1` bigint NOT NULL DEFAULT '0',
  `delay2` bigint NOT NULL DEFAULT '0',
  `showuserpicture` smallint NOT NULL DEFAULT '0',
  `showblocks` smallint NOT NULL DEFAULT '0',
  `completionattemptsexhausted` tinyint(1) DEFAULT '0',
  `completionminattempts` bigint NOT NULL DEFAULT '0',
  `allowofflineattempts` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_quiz_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The settings for each quiz.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_quiz`
--

LOCK TABLES `obd_quiz` WRITE;
/*!40000 ALTER TABLE `obd_quiz` DISABLE KEYS */;
INSERT INTO `obd_quiz` VALUES (1,4,'Cuestionario de JSON','',1,0,0,0,'autosubmit',0,'deferredfeedback',0,0,0,1,2,-1,69888,4352,4352,4352,4352,4352,4352,1,'free',1,50.00000,50.00000,1665097578,1665512249,'','','-',0,0,0,0,0,0,0),(2,3,'Cuestionario de JSON','<p dir=\"ltr\" style=\"text-align: left;\">A continuacion, entre al siguiente link y realize los ejercicios en cualquier IDE que tenga . Una vez resuelto los ejercicios, entrara a copiar y pegar el codigo dentro de cada incisio que solicita el cuestionario o bien poner el enlace de dicho ejercicio resuelto.</p><p dir=\"ltr\" style=\"text-align: left;\"><br></p><p dir=\"ltr\" style=\"text-align: left;\"><a href=\"https://drive.google.com/drive/folders/1tzcZ3VMPY2YmgUg9aNAw8rjw3tUGc9Yo?usp=sharing\">https://drive.google.com/drive/folders/1tzcZ3VMPY2YmgUg9aNAw8rjw3tUGc9Yo?usp=sharing</a><br></p>',1,0,0,0,'autosubmit',0,'deferredfeedback',0,0,0,1,2,-1,69888,4352,4352,4352,4352,4352,4352,1,'free',1,50.00000,50.00000,1665097645,1665529708,'','','-',0,0,0,0,0,0,0),(3,2,'Cuestionario de PHP','',1,0,0,0,'autosubmit',0,'deferredfeedback',0,0,0,1,2,-1,69888,4352,4352,4352,4352,4352,4352,1,'free',1,50.00000,50.00000,1665101862,1665101862,'','','-',0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `obd_quiz` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:45
