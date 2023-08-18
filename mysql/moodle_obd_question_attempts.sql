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
-- Table structure for table `obd_question_attempts`
--

DROP TABLE IF EXISTS `obd_question_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question_attempts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `questionusageid` bigint NOT NULL,
  `slot` bigint NOT NULL,
  `behaviour` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `questionid` bigint NOT NULL,
  `variant` bigint NOT NULL DEFAULT '1',
  `maxmark` decimal(12,7) NOT NULL,
  `minfraction` decimal(12,7) NOT NULL,
  `maxfraction` decimal(12,7) NOT NULL DEFAULT '1.0000000',
  `flagged` tinyint(1) NOT NULL DEFAULT '0',
  `questionsummary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `rightanswer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `responsesummary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quesatte_queslo_uix` (`questionusageid`,`slot`),
  KEY `obd_quesatte_beh_ix` (`behaviour`),
  KEY `obd_quesatte_que_ix` (`questionid`),
  KEY `obd_quesatte_que2_ix` (`questionusageid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each row here corresponds to an attempt at one question, as ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question_attempts`
--

LOCK TABLES `obd_question_attempts` WRITE;
/*!40000 ALTER TABLE `obd_question_attempts` DISABLE KEYS */;
INSERT INTO `obd_question_attempts` VALUES (19,7,1,'manualgraded',6,1,10.0000000,0.0000000,1.0000000,0,'¿Qué es JSON? Explique.\n\n',NULL,NULL,1665512339),(20,7,2,'manualgraded',7,1,10.0000000,0.0000000,1.0000000,0,'¿CUAL ES LA FUNCION DE JSON? \n\n',NULL,NULL,1665512339),(21,7,3,'deferredfeedback',8,1,10.0000000,0.0000000,1.0000000,0,'¿ES CIERTO QUE JSON ES AUTODESCRIPTIBLE Y FACIL DE ENTENDER?\n\n','Verdadero',NULL,1665512339),(22,7,4,'deferredfeedback',9,1,10.0000000,0.0000000,1.0000000,0,'¿JSON ES UN FORMATO DE INTERCAMBIO DE DATOS LIGERO?\n\n','Verdadero',NULL,1665512339),(23,7,5,'deferredfeedback',11,1,10.0000000,0.0000000,1.0000000,0,'¿JSON UTILIZA UN PROGRAMA DE ANALISIS PARA CONVERTIR LOS DATOS JSON EN OBJETOS NATIVOS DE JAVASCRIPT?\n','Falso',NULL,1665512339),(30,10,1,'manualgraded',17,1,10.0000000,0.0000000,1.0000000,0,'Que es PHP?\n',NULL,NULL,1665537529),(31,10,2,'manualgraded',18,1,10.0000000,0.0000000,1.0000000,0,'Que es un archivo PHP?\n',NULL,NULL,1665537529),(32,10,3,'manualgraded',19,1,10.0000000,0.0000000,1.0000000,0,'Que puede hacer PHP?\n',NULL,NULL,1665537529),(33,10,4,'manualgraded',20,1,10.0000000,0.0000000,1.0000000,0,'Que necesito para usar PHP?\n',NULL,NULL,1665537529),(34,10,5,'manualgraded',23,1,10.0000000,0.0000000,1.0000000,0,'Como hago un comentario en PHP?\n',NULL,NULL,1665537529);
/*!40000 ALTER TABLE `obd_question_attempts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:37:59
