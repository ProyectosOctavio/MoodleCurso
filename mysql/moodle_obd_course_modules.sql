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
-- Table structure for table `obd_course_modules`
--

DROP TABLE IF EXISTS `obd_course_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_course_modules` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course` bigint NOT NULL DEFAULT '0',
  `module` bigint NOT NULL DEFAULT '0',
  `instance` bigint NOT NULL DEFAULT '0',
  `section` bigint NOT NULL DEFAULT '0',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `added` bigint NOT NULL DEFAULT '0',
  `score` smallint NOT NULL DEFAULT '0',
  `indent` mediumint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleoncoursepage` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `groupmode` smallint NOT NULL DEFAULT '0',
  `groupingid` bigint NOT NULL DEFAULT '0',
  `completion` tinyint(1) NOT NULL DEFAULT '0',
  `completiongradeitemnumber` bigint DEFAULT NULL,
  `completionview` tinyint(1) NOT NULL DEFAULT '0',
  `completionexpected` bigint NOT NULL DEFAULT '0',
  `completionpassgrade` tinyint(1) NOT NULL DEFAULT '0',
  `showdescription` tinyint(1) NOT NULL DEFAULT '0',
  `availability` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `deletioninprogress` tinyint(1) NOT NULL DEFAULT '0',
  `downloadcontent` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `obd_courmodu_vis_ix` (`visible`),
  KEY `obd_courmodu_cou_ix` (`course`),
  KEY `obd_courmodu_mod_ix` (`module`),
  KEY `obd_courmodu_ins_ix` (`instance`),
  KEY `obd_courmodu_idncou_ix` (`idnumber`,`course`),
  KEY `obd_courmodu_gro_ix` (`groupingid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='course_modules table retrofitted from MySQL';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_course_modules`
--

LOCK TABLES `obd_course_modules` WRITE;
/*!40000 ALTER TABLE `obd_course_modules` DISABLE KEYS */;
INSERT INTO `obd_course_modules` VALUES (1,2,10,1,1,NULL,1665030930,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1),(2,3,10,2,7,NULL,1665083579,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1),(3,4,10,3,12,NULL,1665083699,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,0,1),(4,1,17,1,6,'',1665085665,0,0,1,1,1,0,0,0,NULL,0,0,0,0,NULL,1,1),(5,4,10,4,12,'',1665087263,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(6,4,9,1,14,'',1665088694,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(7,4,19,1,14,'',1665095138,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(8,4,22,1,14,'',1665095247,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(9,4,14,1,14,'',1665095534,0,0,1,1,1,0,0,1,NULL,0,0,0,1,NULL,0,1),(10,4,1,1,15,'',1665095718,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(11,4,14,2,13,'',1665095795,0,0,1,1,1,0,0,1,NULL,0,0,0,1,NULL,0,1),(12,4,16,1,15,'',1665096442,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,1,1),(13,3,10,5,7,'',1665096995,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(14,3,9,2,8,'',1665097016,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(15,3,19,2,8,'',1665097104,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(16,3,22,2,8,'',1665097261,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(17,3,14,3,8,'',1665097342,0,0,1,1,1,0,0,1,NULL,0,0,0,1,NULL,0,1),(18,3,1,2,9,'',1665097451,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(19,4,18,1,15,'',1665097578,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(20,3,16,2,9,'',1665097615,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,1,1),(21,3,18,2,9,'',1665097645,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(22,2,10,6,1,'',1665101439,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(23,2,9,3,2,'',1665101495,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(24,2,19,3,2,'',1665101575,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(25,2,22,3,2,'',1665101643,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(26,2,14,4,2,'',1665101724,0,0,1,1,1,0,0,1,NULL,0,0,0,1,NULL,0,1),(27,2,14,5,2,'',1665101725,0,0,1,1,1,0,0,1,NULL,0,0,0,1,NULL,1,1),(28,2,1,3,3,'',1665101786,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(29,2,16,3,3,'',1665101842,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,1,1),(30,2,18,3,3,'',1665101862,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(31,4,1,4,15,'',1665510699,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(32,3,1,5,9,'',1665528630,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1),(33,2,1,6,3,'',1665537136,0,0,1,1,1,0,0,1,NULL,0,0,0,0,NULL,0,1);
/*!40000 ALTER TABLE `obd_course_modules` ENABLE KEYS */;
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
