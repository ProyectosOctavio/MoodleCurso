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
-- Table structure for table `obd_question_answers`
--

DROP TABLE IF EXISTS `obd_question_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question_answers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` bigint NOT NULL DEFAULT '0',
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `answerformat` tinyint NOT NULL DEFAULT '0',
  `fraction` decimal(12,7) NOT NULL DEFAULT '0.0000000',
  `feedback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `feedbackformat` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_quesansw_que_ix` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Answers, with a fractional grade (0-1) and feedback';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question_answers`
--

LOCK TABLES `obd_question_answers` WRITE;
/*!40000 ALTER TABLE `obd_question_answers` DISABLE KEYS */;
INSERT INTO `obd_question_answers` VALUES (1,1,'<p dir=\"ltr\" style=\"text-align: left;\">test</p>',1,1.0000000,'',1),(2,1,'<p dir=\"ltr\" style=\"text-align: left;\">test</p>',1,1.0000000,'',1),(3,2,'¿Qué es JSON? Explique.',0,1.0000000,'<p dir=\"ltr\" style=\"text-align: left;\">JSON (JavaScript Object Notation) es un formato de texto pensado para el intercambio de datos. Su sintaxis está basada originalmente en la sintaxis de JavaScript, pero realmente es independiente de cualquier lenguaje de programación.<br></p>',1),(4,3,'Se valorara luego lo que escribio.',0,1.0000000,'',1),(5,4,'Se valorara luego lo que escribio.',0,1.0000000,'',1),(6,5,'Se valorara luego lo que escribio.',0,1.0000000,'',1),(7,8,'Verdadero',0,1.0000000,'',1),(8,8,'Falso',0,0.0000000,'',1),(9,9,'Verdadero',0,1.0000000,'',1),(10,9,'Falso',0,0.0000000,'',1),(11,10,'Verdadero',0,0.0000000,'',1),(12,10,'Falso',0,1.0000000,'',1),(13,11,'Verdadero',0,0.0000000,'',1),(14,11,'Falso',0,1.0000000,'<p dir=\"ltr\" style=\"text-align: left;\">UN PROGRAMA JAVASCRIPT UTILIZA LAS FUNCIONES ESTANDAR DE JAVASCRIPT&nbsp;<br></p>',1);
/*!40000 ALTER TABLE `obd_question_answers` ENABLE KEYS */;
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
