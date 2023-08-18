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
-- Table structure for table `obd_question_categories`
--

DROP TABLE IF EXISTS `obd_question_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_question_categories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contextid` bigint NOT NULL DEFAULT '0',
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `infoformat` tinyint NOT NULL DEFAULT '0',
  `stamp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `parent` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '999',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_quescate_consta_uix` (`contextid`,`stamp`),
  UNIQUE KEY `obd_quescate_conidn_uix` (`contextid`,`idnumber`),
  KEY `obd_quescate_con_ix` (`contextid`),
  KEY `obd_quescate_par_ix` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Categories are for grouping questions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_question_categories`
--

LOCK TABLES `obd_question_categories` WRITE;
/*!40000 ALTER TABLE `obd_question_categories` DISABLE KEYS */;
INSERT INTO `obd_question_categories` VALUES (1,'top',2,'',0,'localhost+221006045943+9QChxP',0,0,NULL),(2,'Por defecto en Página inicial del sitio',2,'Categoría por defecto para preguntas compartidas en el contexto Página inicial del sitio.',0,'localhost+221006045943+fwDxSP',1,999,NULL),(3,'top',1,'',0,'localhost+221006045943+eeJhcD',0,0,NULL),(4,'Por defecto en Sistema',1,'Categoría por defecto para preguntas compartidas en el contexto Sistema.',0,'localhost+221006045943+68RT3c',3,999,NULL),(5,'top',21,'',0,'localhost+221006224945+FwB8Le',0,0,NULL),(6,'Por defecto en JSON',21,'Categoría por defecto para preguntas compartidas en el contexto JSON.',0,'localhost+221006224945+jBUC0l',5,999,NULL),(7,'top',3,'',0,'localhost+221006224945+GGUZAK',0,0,NULL),(8,'Por defecto en Categoría 1',3,'Categoría por defecto para preguntas compartidas en el contexto Categoría 1.',0,'localhost+221006224945+IYM2H5',7,999,NULL),(9,'top',38,'',0,'localhost+221011175328+OiDH4P',0,0,NULL),(10,'Por defecto en Cuestionario de JSON',38,'Categoría por defecto para preguntas compartidas en el contexto Cuestionario de JSON.',0,'localhost+221011175328+1I4m2w',9,999,NULL),(11,'top',40,'',0,'localhost+221011225403+63z4xj',0,0,NULL),(12,'Por defecto en Cuestionario de JSON',40,'Categoría por defecto para preguntas compartidas en el contexto Cuestionario de JSON.',0,'localhost+221011225403+Om7yPN',11,999,NULL),(13,'top',19,'',0,'localhost+221011225403+kxNEkv',0,0,NULL),(14,'Por defecto en XML',19,'Categoría por defecto para preguntas compartidas en el contexto XML.',0,'localhost+221011225403+N7dJv0',13,999,NULL),(15,'top',49,'',0,'localhost+221011233704+vTWLVb',0,0,NULL),(16,'Por defecto en Cuestionario de PHP',49,'Categoría por defecto para preguntas compartidas en el contexto Cuestionario de PHP.',0,'localhost+221011233704+rCe2Ww',15,999,NULL),(17,'top',15,'',0,'localhost+221011233704+YhvlHf',0,0,NULL),(18,'Por defecto en PHP',15,'Categoría por defecto para preguntas compartidas en el contexto PHP.',0,'localhost+221011233704+fcuiC7',17,999,NULL);
/*!40000 ALTER TABLE `obd_question_categories` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:18
