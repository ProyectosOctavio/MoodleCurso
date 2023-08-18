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
-- Table structure for table `obd_event`
--

DROP TABLE IF EXISTS `obd_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_event` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `format` smallint NOT NULL DEFAULT '0',
  `categoryid` bigint NOT NULL DEFAULT '0',
  `courseid` bigint NOT NULL DEFAULT '0',
  `groupid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `repeatid` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `modulename` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `instance` bigint NOT NULL DEFAULT '0',
  `type` smallint NOT NULL DEFAULT '0',
  `eventtype` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timestart` bigint NOT NULL DEFAULT '0',
  `timeduration` bigint NOT NULL DEFAULT '0',
  `timesort` bigint DEFAULT NULL,
  `visible` smallint NOT NULL DEFAULT '1',
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `sequence` bigint NOT NULL DEFAULT '1',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `subscriptionid` bigint DEFAULT NULL,
  `priority` bigint DEFAULT NULL,
  `location` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `obd_even_cou_ix` (`courseid`),
  KEY `obd_even_use_ix` (`userid`),
  KEY `obd_even_tim_ix` (`timestart`),
  KEY `obd_even_tim2_ix` (`timeduration`),
  KEY `obd_even_uui_ix` (`uuid`),
  KEY `obd_even_typtim_ix` (`type`,`timesort`),
  KEY `obd_even_grocoucatvisuse_ix` (`groupid`,`courseid`,`categoryid`,`visible`,`userid`),
  KEY `obd_even_eve_ix` (`eventtype`),
  KEY `obd_even_comeveins_ix` (`component`,`eventtype`,`instance`),
  KEY `obd_even_modinseve_ix` (`modulename`,`instance`,`eventtype`),
  KEY `obd_even_cat_ix` (`categoryid`),
  KEY `obd_even_sub_ix` (`subscriptionid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='For everything with a time associated to it';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_event`
--

LOCK TABLES `obd_event` WRITE;
/*!40000 ALTER TABLE `obd_event` DISABLE KEYS */;
INSERT INTO `obd_event` VALUES (1,'Tarea de JSON está en fecha de entrega','<p dir=\"ltr\">En una planta de envasado de líquidos, disponen de 5 tipos de envases, 3 tipos de contenedores para empaquetar grupos de envases y 10 tipos de líquidos que pueden ser almacenados en los envases. Sin embargo, hay ciertas restricciones en los líquidos que pueden ser almacenados en cada envase y los tamaños de los envases hacen que no se pueda almacenar todos los envases en todos los contenedores.</p><p dir=\"ltr\"> • Tenemos contenedores: ◦ Grandes, acepta envases grandes ◦ Medianos, no acepta envases grandes ◦ Verticales, acepta envases altos</p><p dir=\"ltr\"> • Tenemos envases: ◦ Grande ancho, válido para alimentos ◦ Grande alto, válido para alimentos ◦ Mediano ancho, válido para alimentos ◦ Mediano alto, resistente a sustancias corrosivas ◦ Pequeño, resistente a sustancias corrosivas </p><p dir=\"ltr\">• Tenemos líquidos: ◦ Agua ◦ Leche ◦ Lejía ◦ Amoniaco ◦ Jabón ◦ Aguarrás ◦ Gasolina ◦ Aceite ◦ Vinagre ◦ Alcohol</p><p dir=\"ltr\"> Para estos líquidos, envases y contenedores, crear un fichero JSON que represente esta información relativa a lo que puede ser almacenado en cada uno de los tres niveles.</p>',1,0,4,0,0,0,NULL,'assign',1,1,'due',1697176800,0,1697176800,1,'',1,1665512113,NULL,NULL,NULL),(2,'Tarea de JSON está pendiente de ser calificada','<p dir=\"ltr\">En una planta de envasado de líquidos, disponen de 5 tipos de envases, 3 tipos de contenedores para empaquetar grupos de envases y 10 tipos de líquidos que pueden ser almacenados en los envases. Sin embargo, hay ciertas restricciones en los líquidos que pueden ser almacenados en cada envase y los tamaños de los envases hacen que no se pueda almacenar todos los envases en todos los contenedores.</p><p dir=\"ltr\"> • Tenemos contenedores: ◦ Grandes, acepta envases grandes ◦ Medianos, no acepta envases grandes ◦ Verticales, acepta envases altos</p><p dir=\"ltr\"> • Tenemos envases: ◦ Grande ancho, válido para alimentos ◦ Grande alto, válido para alimentos ◦ Mediano ancho, válido para alimentos ◦ Mediano alto, resistente a sustancias corrosivas ◦ Pequeño, resistente a sustancias corrosivas </p><p dir=\"ltr\">• Tenemos líquidos: ◦ Agua ◦ Leche ◦ Lejía ◦ Amoniaco ◦ Jabón ◦ Aguarrás ◦ Gasolina ◦ Aceite ◦ Vinagre ◦ Alcohol</p><p dir=\"ltr\"> Para estos líquidos, envases y contenedores, crear un fichero JSON que represente esta información relativa a lo que puede ser almacenado en cada uno de los tres niveles.</p>',1,0,4,0,0,0,NULL,'assign',1,1,'gradingdue',1697781600,0,1697781600,1,'',1,1665512113,NULL,NULL,NULL),(3,'Tarea de XML está en fecha de entrega','<p dir=\"ltr\" style=\"text-align:left;\">Replique el siguiente ejercicio de xml.</p>',1,0,3,0,0,0,NULL,'assign',2,1,'due',1697176800,0,1697176800,1,'',1,1665528817,NULL,NULL,NULL),(4,'Tarea de XML está pendiente de ser calificada','<p dir=\"ltr\" style=\"text-align:left;\">Replique el siguiente ejercicio de xml.</p>',1,0,3,0,0,0,NULL,'assign',2,1,'gradingdue',1697781600,0,1697781600,1,'',1,1665528817,NULL,NULL,NULL),(5,'Tarea de PHP está en fecha de entrega','<p dir=\"ltr\" style=\"text-align:left;\">Replica lo que es codigo y envialo mediante archivo.</p>',1,0,2,0,0,0,NULL,'assign',3,1,'due',1665640800,0,1665640800,1,'',1,1665531378,NULL,NULL,NULL),(6,'Tarea de PHP está pendiente de ser calificada','<p dir=\"ltr\" style=\"text-align:left;\">Replica lo que es codigo y envialo mediante archivo.</p>',1,0,2,0,0,0,NULL,'assign',3,1,'gradingdue',1666245600,0,1666245600,1,'',1,1665531378,NULL,NULL,NULL),(7,'Juegos de JSON está en fecha de entrega','<p dir=\"ltr\" style=\"text-align:left;\">A continuacion en el siguiente link, resolver los ejercicios y enviar las capturas de dichos ejercicios resueltos.</p><p dir=\"ltr\" style=\"text-align:left;\">https://www.onlineinterviewquestions.com/json-mcq/<br /></p>',1,0,4,0,0,0,NULL,'assign',4,1,'due',1697608800,0,1697608800,1,'',1,1665512153,NULL,NULL,NULL),(8,'Juegos de JSON está pendiente de ser calificada','<p dir=\"ltr\" style=\"text-align:left;\">A continuacion en el siguiente link, resolver los ejercicios y enviar las capturas de dichos ejercicios resueltos.</p><p dir=\"ltr\" style=\"text-align:left;\">https://www.onlineinterviewquestions.com/json-mcq/<br /></p>',1,0,4,0,0,0,NULL,'assign',4,1,'gradingdue',1698213600,0,1698213600,1,'',1,1665512153,NULL,NULL,NULL),(9,'Juegos de XML está en fecha de entrega','<p dir=\"ltr\" style=\"text-align:left;\">Realizar los ejercicios que salen al final del pdf.</p>',1,0,3,0,2,0,NULL,'assign',5,1,'due',1697608800,0,1697608800,1,'',1,1665528630,NULL,NULL,NULL),(10,'Juegos de XML está pendiente de ser calificada','<p dir=\"ltr\" style=\"text-align:left;\">Realizar los ejercicios que salen al final del pdf.</p>',1,0,3,0,2,0,NULL,'assign',5,1,'gradingdue',1698213600,0,1698213600,1,'',1,1665528630,NULL,NULL,NULL),(11,'Juego de PHP está en fecha de entrega','<p dir=\"ltr\" style=\"text-align:left;\">A continuación realiza el siguiente quiz de php y envia capturas de que lo realizaste.</p><p dir=\"ltr\" style=\"text-align:left;\">https://www.w3schools.com/quiztest/quiztest.asp?qtest=PHP<br /></p>',1,0,2,0,2,0,NULL,'assign',6,1,'due',1697608800,0,1697608800,1,'',1,1665537137,NULL,NULL,NULL),(12,'Juego de PHP está pendiente de ser calificada','<p dir=\"ltr\" style=\"text-align:left;\">A continuación realiza el siguiente quiz de php y envia capturas de que lo realizaste.</p><p dir=\"ltr\" style=\"text-align:left;\">https://www.w3schools.com/quiztest/quiztest.asp?qtest=PHP<br /></p>',1,0,2,0,2,0,NULL,'assign',6,1,'gradingdue',1698213600,0,1698213600,1,'',1,1665537137,NULL,NULL,NULL);
/*!40000 ALTER TABLE `obd_event` ENABLE KEYS */;
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
