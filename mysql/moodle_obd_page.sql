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
-- Table structure for table `obd_page`
--

DROP TABLE IF EXISTS `obd_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_page` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introformat` smallint NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `contentformat` smallint NOT NULL DEFAULT '0',
  `legacyfiles` smallint NOT NULL DEFAULT '0',
  `legacyfileslast` bigint DEFAULT NULL,
  `display` smallint NOT NULL DEFAULT '0',
  `displayoptions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `revision` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_page_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Each record is one page and its config data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_page`
--

LOCK TABLES `obd_page` WRITE;
/*!40000 ALTER TABLE `obd_page` DISABLE KEYS */;
INSERT INTO `obd_page` VALUES (1,1,'Misión, visión y objetivos académicos','<p dir=\"ltr\" style=\"text-align: left;\"></p><pre data-placeholder=\"Traducción\" id=\"tw-target-text\" dir=\"ltr\"></pre>En este curso aprenderemos a usar tres lenguajes de suma importancia en el mundo laboral.<br><p></p>',1,'<p dir=\"ltr\" style=\"text-align: left;\"></p><pre data-placeholder=\"Traducción\" id=\"tw-target-text\" dir=\"ltr\"><span lang=\"es\">PHP: Es un lenguaje de secuencias de comandos de servidor y una poderosa herramienta para crear páginas web dinámicas e interactivas.\r\nEs una alternativa ampliamente utilizada, gratuita y eficiente a competidores como ASP de Microsoft.</span></pre><pre data-placeholder=\"Traducción\" id=\"tw-target-text\" dir=\"ltr\"><br>XML: Significa lenguaje de marcado extensible. Fue diseñado para almacenar y transportar datos. Fue diseñado para ser legible tanto por humanos como por máquinas<br></pre><pre data-placeholder=\"Traducción\" id=\"tw-target-text\" dir=\"ltr\"><span lang=\"es\">JSON significa Notación de objetos de JavaScript. Es un formato de texto para almacenar y transportar datos. Es \"autodescriptivo\" y fácil de entender</span></pre><br><p></p>',1,0,NULL,5,'a:2:{s:10:\"printintro\";s:1:\"0\";s:17:\"printlastmodified\";s:1:\"1\";}',1,1665085665);
/*!40000 ALTER TABLE `obd_page` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:27
