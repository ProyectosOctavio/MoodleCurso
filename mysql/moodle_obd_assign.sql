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
-- Table structure for table `obd_assign`
--

DROP TABLE IF EXISTS `obd_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_assign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint NOT NULL DEFAULT '0',
  `alwaysshowdescription` tinyint NOT NULL DEFAULT '0',
  `nosubmissions` tinyint NOT NULL DEFAULT '0',
  `submissiondrafts` tinyint NOT NULL DEFAULT '0',
  `sendnotifications` tinyint NOT NULL DEFAULT '0',
  `sendlatenotifications` tinyint NOT NULL DEFAULT '0',
  `duedate` bigint NOT NULL DEFAULT '0',
  `allowsubmissionsfromdate` bigint NOT NULL DEFAULT '0',
  `grade` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `requiresubmissionstatement` tinyint NOT NULL DEFAULT '0',
  `completionsubmit` tinyint NOT NULL DEFAULT '0',
  `cutoffdate` bigint NOT NULL DEFAULT '0',
  `gradingduedate` bigint NOT NULL DEFAULT '0',
  `teamsubmission` tinyint NOT NULL DEFAULT '0',
  `requireallteammemberssubmit` tinyint NOT NULL DEFAULT '0',
  `teamsubmissiongroupingid` bigint NOT NULL DEFAULT '0',
  `blindmarking` tinyint NOT NULL DEFAULT '0',
  `hidegrader` tinyint NOT NULL DEFAULT '0',
  `revealidentities` tinyint NOT NULL DEFAULT '0',
  `attemptreopenmethod` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'none',
  `maxattempts` mediumint NOT NULL DEFAULT '-1',
  `markingworkflow` tinyint NOT NULL DEFAULT '0',
  `markingallocation` tinyint NOT NULL DEFAULT '0',
  `sendstudentnotifications` tinyint NOT NULL DEFAULT '1',
  `preventsubmissionnotingroup` tinyint NOT NULL DEFAULT '0',
  `activity` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `activityformat` smallint NOT NULL DEFAULT '0',
  `timelimit` bigint NOT NULL DEFAULT '0',
  `submissionattachments` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_assi_cou_ix` (`course`),
  KEY `obd_assi_tea_ix` (`teamsubmissiongroupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table saves information about an instance of mod_assign';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_assign`
--

LOCK TABLES `obd_assign` WRITE;
/*!40000 ALTER TABLE `obd_assign` DISABLE KEYS */;
INSERT INTO `obd_assign` VALUES (1,4,'Tarea de JSON','<p dir=\"ltr\">En una planta de envasado de líquidos, disponen de 5 tipos de envases, 3 tipos de contenedores para empaquetar grupos de envases y 10 tipos de líquidos que pueden ser almacenados en los envases. Sin embargo, hay ciertas restricciones en los líquidos que pueden ser almacenados en cada envase y los tamaños de los envases hacen que no se pueda almacenar todos los envases en todos los contenedores.</p><p dir=\"ltr\">&nbsp;• Tenemos contenedores: ◦ Grandes, acepta envases grandes ◦ Medianos, no acepta envases grandes ◦ Verticales, acepta envases altos</p><p dir=\"ltr\">&nbsp;• Tenemos envases: ◦ Grande ancho, válido para alimentos ◦ Grande alto, válido para alimentos ◦ Mediano ancho, válido para alimentos ◦ Mediano alto, resistente a sustancias corrosivas ◦ Pequeño, resistente a sustancias corrosivas&nbsp;</p><p dir=\"ltr\">• Tenemos líquidos: ◦ Agua ◦ Leche ◦ Lejía ◦ Amoniaco ◦ Jabón ◦ Aguarrás ◦ Gasolina ◦ Aceite ◦ Vinagre ◦ Alcohol</p><p dir=\"ltr\">&nbsp;Para estos líquidos, envases y contenedores, crear un fichero JSON que represente esta información relativa a lo que puede ser almacenado en cada uno de los tres niveles.</p>',1,1,0,0,0,0,1697176800,1665036000,25,1665512113,0,1,0,1697781600,0,0,0,0,0,0,'none',-1,0,0,1,0,'',1,0,0),(2,3,'Tarea de XML','<p dir=\"ltr\" style=\"text-align: left;\">Replique el siguiente ejercicio de xml.</p>',1,1,0,0,0,0,1697176800,1665036000,25,1665528817,0,1,0,1697781600,0,0,0,0,0,0,'none',-1,0,0,1,0,'',1,0,0),(3,2,'Tarea de PHP','<p dir=\"ltr\" style=\"text-align: left;\">Replica lo que es codigo y envialo mediante archivo.</p>',1,1,0,0,0,0,1665640800,1665036000,25,1665531377,0,1,0,1666245600,0,0,0,0,0,0,'none',-1,0,0,1,0,'',1,0,0),(4,4,'Juegos de JSON','<p dir=\"ltr\" style=\"text-align: left;\">A continuacion en el siguiente link, resolver los ejercicios y enviar las capturas de dichos ejercicios resueltos.</p><p dir=\"ltr\" style=\"text-align: left;\">https://www.onlineinterviewquestions.com/json-mcq/<br></p>',1,1,0,0,0,0,1697608800,1665468000,25,1665512153,0,1,0,1698213600,0,0,0,0,0,0,'none',-1,0,0,1,0,'',1,0,0),(5,3,'Juegos de XML','<p dir=\"ltr\" style=\"text-align: left;\">Realizar los ejercicios que salen al final del pdf.</p>',1,1,0,0,0,0,1697608800,1665468000,25,1665528630,0,1,0,1698213600,0,0,0,0,0,0,'none',-1,0,0,1,0,'',1,0,0),(6,2,'Juego de PHP','<p dir=\"ltr\" style=\"text-align: left;\">A continuación realiza el siguiente quiz de php y envia capturas de que lo realizaste.</p><p dir=\"ltr\" style=\"text-align: left;\">https://www.w3schools.com/quiztest/quiztest.asp?qtest=PHP<br></p>',1,1,0,0,0,0,1697608800,1665468000,25,1665537136,0,1,0,1698213600,0,0,0,0,0,0,'none',-1,0,0,1,0,'',1,0,0);
/*!40000 ALTER TABLE `obd_assign` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:53
