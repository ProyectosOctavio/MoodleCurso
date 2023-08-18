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
-- Table structure for table `obd_label`
--

DROP TABLE IF EXISTS `obd_label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_label` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introformat` smallint DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_labe_cou_ix` (`course`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines labels';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_label`
--

LOCK TABLES `obd_label` WRITE;
/*!40000 ALTER TABLE `obd_label` DISABLE KEYS */;
INSERT INTO `obd_label` VALUES (1,4,'Videos de JSONAprende JSON en 10 minhttps://youtu....','<p dir=\"ltr\" style=\"text-align: left;\"><strong>Videos de JSON</strong></p><p dir=\"ltr\">Aprende JSON en 10 min</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">https://youtu.be/iiADhChRriM</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">JSON en 1 min</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">https://youtu.be/7mj-p1Os6QA</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">¿Qué es JSON?</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">https://youtu.be/z8qk7T_2sWg</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">https://youtu.be/9he4OewlYFo</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">¿Cómo usar JSON?</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">https://youtu.be/eOWDRoY9_9E</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">\"Pequeña introducción a JSON\"</p><p dir=\"ltr\"><br></p><p dir=\"ltr\">https://youtu.be/ScU8g4ePR9Y</p>',1,1665508580),(2,4,'¿Por qué usar JSON?&nbsp;El uso principal de JSON ...','<p dir=\"ltr\" style=\"text-align: left;\">¿Por qué usar JSON?</p><p dir=\"ltr\" style=\"text-align: left;\">&nbsp;<b>El uso principal de JSON es el intercambio de datos entre aplicaciones</b>. Es un formato independiente del lenguaje, por lo que hay numerosas librerías que lo soportan y facilitan su utilización en cualquier lenguaje de programación moderno<br></p>',1,1665508179),(3,3,'Video de XMLhttps://www.youtube.com/watch?v=AZihBE...','<p dir=\"ltr\" style=\"text-align: left;\">Video de XML</p><p dir=\"ltr\" style=\"text-align: left;\">https://www.youtube.com/watch?v=AZihBEg8VBk<br></p><p dir=\"ltr\" style=\"text-align: left;\">https://www.youtube.com/watch?v=cQ5xECYH760<br></p><p dir=\"ltr\" style=\"text-align: left;\">https://www.youtube.com/watch?v=SKOVdy5fGMM<br></p>',1,1665527563),(4,2,'Video de PHPhttps://www.youtube.com/watch?v=nCB1gE...','<p dir=\"ltr\" style=\"text-align: left;\">Video de PHP</p><p dir=\"ltr\" style=\"text-align: left;\">https://www.youtube.com/watch?v=nCB1gEkRZ1g&amp;t=4525s<br></p>',1,1665101724),(5,2,'Video de PHPhttps://www.youtube.com/watch?v=nCB1gE...','<p dir=\"ltr\" style=\"text-align: left;\">Video de PHP</p><p dir=\"ltr\" style=\"text-align: left;\">https://www.youtube.com/watch?v=nCB1gEkRZ1g&amp;t=4525s<br></p>',1,1665101725);
/*!40000 ALTER TABLE `obd_label` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:00
