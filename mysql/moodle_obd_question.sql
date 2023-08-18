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
-- Table structure for table `obd_question`
--

DROP TABLE IF EXISTS `obd_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `parent` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `questiontext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `questiontextformat` tinyint NOT NULL DEFAULT '0',
  `generalfeedback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `generalfeedbackformat` tinyint NOT NULL DEFAULT '0',
  `defaultmark` decimal(12,7) NOT NULL DEFAULT '1.0000000',
  `penalty` decimal(12,7) NOT NULL DEFAULT '0.3333333',
  `qtype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `length` bigint NOT NULL DEFAULT '1',
  `stamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `createdby` bigint DEFAULT NULL,
  `modifiedby` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_ques_qty_ix` (`qtype`),
  KEY `obd_ques_par_ix` (`parent`),
  KEY `obd_ques_cre_ix` (`createdby`),
  KEY `obd_ques_mod_ix` (`modifiedby`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores the definition of one version of a questio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question`
--

LOCK TABLES `obd_question` WRITE;
/*!40000 ALTER TABLE `obd_question` DISABLE KEYS */;
INSERT INTO `obd_question` VALUES (1,0,'test','<p dir=\"ltr\" style=\"text-align: left;\">test</p>',1,'',1,1.0000000,0.3333333,'multichoice',1,'localhost+221006225129+bT7KLx',1665096689,1665096689,2,2),(2,0,'¿Qué es JSON? Explique.','<p dir=\"ltr\" style=\"text-align: left;\">JSON (JavaScript Object Notation) es un formato de texto pensado para el intercambio de datos. Su sintaxis está basada originalmente en la sintaxis de JavaScript, pero realmente es independiente de cualquier lenguaje de programación.<br></p>',1,'',1,10.0000000,0.3333333,'shortanswer',1,'localhost+221011175549+BB71f0',1665510949,1665510949,2,2),(3,0,'¿Qué es JSON?','<p dir=\"ltr\" style=\"text-align: left;\">Explique.<br></p>',1,'',1,10.0000000,0.3333333,'shortanswer',1,'localhost+221011175836+EqExal',1665511116,1665511116,2,2),(4,0,'¿Qué es JSON?','<p dir=\"ltr\" style=\"text-align: left;\">¿Qué es JSON? Explique.<br></p>',1,'',1,10.0000000,0.3333333,'shortanswer',1,'localhost+221011175923+SQWeCI',1665511163,1665511163,2,2),(5,0,'¿Qué es JSON?','<p dir=\"ltr\" style=\"text-align: left;\">¿Qué es JSON?. Explique.<br></p>',1,'',1,10.0000000,0.3333333,'shortanswer',1,'localhost+221011175952+nk2Tgw',1665511192,1665511192,2,2),(6,0,'¿Qué es JSON? Explique.','<p dir=\"ltr\" style=\"text-align: left;\">¿Qué es JSON? Explique.<br></p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011180229+XwSxFB',1665511349,1665511349,2,2),(7,0,'¿CUAL ES LA FUNCION DE JSON?','<p dir=\"ltr\" style=\"text-align: left;\">¿CUAL ES LA FUNCION DE JSON?&nbsp;<br></p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011180334+BUAdah',1665511414,1665511414,2,2),(8,0,'¿ES CIERTO QUE JSON ES AUTODESCRIPTIBLE Y FACIL DE ENTENDER?','<p dir=\"ltr\" style=\"text-align: left;\">¿ES CIERTO QUE JSON ES AUTODESCRIPTIBLE Y FACIL DE ENTENDER?<br></p>',1,'',1,10.0000000,1.0000000,'truefalse',1,'localhost+221011180533+7EWseF',1665511533,1665511533,2,2),(9,0,'¿JSON ES UN FORMATO DE INTERCAMBIO DE DATOS LIGERO?','<p dir=\"ltr\" style=\"text-align: left;\">¿JSON ES UN FORMATO DE INTERCAMBIO DE DATOS LIGERO?<br></p>',1,'',1,10.0000000,1.0000000,'truefalse',1,'localhost+221011180606+s0ADS2',1665511566,1665511566,2,2),(10,0,'¿JSON UTILIZA UN PROGRAMA DE ANALISIS PARA CONVERTIR LOS DATOS JSON EN OBJETOS NATIVOS DE JAVASCRIPT?','<p dir=\"ltr\"><br></p><p dir=\"ltr\">¿JSON UTILIZA UN PROGRAMA DE ANALISIS PARA CONVERTIR LOS DATOS JSON EN OBJETOS NATIVOS DE JAVASCRIPT?</p>',1,'',1,10.0000000,1.0000000,'truefalse',1,'localhost+221011180638+GDYF5k',1665511598,1665511598,2,2),(11,0,'¿JSON UTILIZA UN PROGRAMA DE ANALISIS PARA CONVERTIR LOS DATOS JSON EN OBJETOS NATIVOS DE JAVASCRIPT?','<p dir=\"ltr\"><br></p><p dir=\"ltr\">¿JSON UTILIZA UN PROGRAMA DE ANALISIS PARA CONVERTIR LOS DATOS JSON EN OBJETOS NATIVOS DE JAVASCRIPT?</p>',1,'',1,10.0000000,1.0000000,'truefalse',1,'localhost+221011180945+FKDog6',1665511785,1665511785,2,2),(12,0,'Ejercicio 1','<p dir=\"ltr\" style=\"text-align: left;\">Ejercicio 1</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011230236+8teofR',1665529356,1665529357,2,2),(13,0,'Ejercicio 2','<p dir=\"ltr\" style=\"text-align: left;\">Ejercicio 2</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011230409+DNgivo',1665529449,1665529449,2,2),(14,0,'Ejercicio 3','<p dir=\"ltr\" style=\"text-align: left;\">Ejercicio 3</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011230427+uAzRob',1665529467,1665529467,2,2),(15,0,'Ejercicio 4','<p dir=\"ltr\" style=\"text-align: left;\">Ejercicio 4</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011230448+euDLgm',1665529488,1665529488,2,2),(16,0,'Que es XML?','<p dir=\"ltr\" style=\"text-align: left;\">Que es XML?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011230541+57kE1e',1665529541,1665529541,2,2),(17,0,'1.','<p dir=\"ltr\" style=\"text-align: left;\">Que es PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233723+qQ4Bw3',1665531443,1665531443,2,2),(18,0,'2.','<p dir=\"ltr\" style=\"text-align: left;\">Que es un archivo PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233815+bFVSq6',1665531495,1665531495,2,2),(19,0,'3.','<p dir=\"ltr\" style=\"text-align: left;\">Que puede hacer PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233838+n5tlMS',1665531518,1665531518,2,2),(20,0,'4.','<p dir=\"ltr\" style=\"text-align: left;\">Que necesito para usar PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233901+xcC6og',1665531541,1665531541,2,2),(21,0,'4.','<p dir=\"ltr\" style=\"text-align: left;\">Como hago un comentario en PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233934+A7lM0u',1665531574,1665531574,2,2),(22,0,'5.','<p dir=\"ltr\" style=\"text-align: left;\">Como hago un comentario en PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233943+qZ2x7h',1665531583,1665531583,2,2),(23,0,'5.','<p dir=\"ltr\" style=\"text-align: left;\">Como hago un comentario en PHP?</p>',1,'',1,10.0000000,0.0000000,'essay',1,'localhost+221011233951+BdJ6os',1665531591,1665531591,2,2);
/*!40000 ALTER TABLE `obd_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:15
