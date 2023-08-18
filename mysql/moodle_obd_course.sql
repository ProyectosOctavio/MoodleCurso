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
-- Table structure for table `obd_course`
--

DROP TABLE IF EXISTS `obd_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `fullname` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `shortname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `idnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `summary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `summaryformat` tinyint NOT NULL DEFAULT '0',
  `format` varchar(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'topics',
  `showgrades` tinyint NOT NULL DEFAULT '1',
  `newsitems` mediumint NOT NULL DEFAULT '1',
  `startdate` bigint NOT NULL DEFAULT '0',
  `enddate` bigint NOT NULL DEFAULT '0',
  `relativedatesmode` tinyint(1) NOT NULL DEFAULT '0',
  `marker` bigint NOT NULL DEFAULT '0',
  `maxbytes` bigint NOT NULL DEFAULT '0',
  `legacyfiles` smallint NOT NULL DEFAULT '0',
  `showreports` smallint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `visibleold` tinyint(1) NOT NULL DEFAULT '1',
  `downloadcontent` tinyint(1) DEFAULT NULL,
  `groupmode` smallint NOT NULL DEFAULT '0',
  `groupmodeforce` smallint NOT NULL DEFAULT '0',
  `defaultgroupingid` bigint NOT NULL DEFAULT '0',
  `lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `calendartype` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `requested` tinyint(1) NOT NULL DEFAULT '0',
  `enablecompletion` tinyint(1) NOT NULL DEFAULT '0',
  `completionnotify` tinyint(1) NOT NULL DEFAULT '0',
  `cacherev` bigint NOT NULL DEFAULT '0',
  `originalcourseid` bigint DEFAULT NULL,
  `showactivitydates` tinyint(1) NOT NULL DEFAULT '0',
  `showcompletionconditions` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_cour_cat_ix` (`category`),
  KEY `obd_cour_idn_ix` (`idnumber`),
  KEY `obd_cour_sho_ix` (`shortname`),
  KEY `obd_cour_sor_ix` (`sortorder`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Central course table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_course`
--

LOCK TABLES `obd_course` WRITE;
/*!40000 ALTER TABLE `obd_course` DISABLE KEYS */;
INSERT INTO `obd_course` VALUES (1,0,1,'PORTAL WEB EDUCATIVO (PWE) para los lenguajes de Programación de BACK-END: PHP, XML & JSON','portal','','',0,'site',1,3,0,0,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1664926060,1665084064,0,0,0,1665085790,NULL,0,NULL),(2,1,10003,'Curso de PHP','PHP','','',1,'topics',1,5,1665036000,1696572000,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1665030930,1665086063,0,1,0,1665537138,NULL,1,1),(3,1,10002,'Curso de XML','XML','','',1,'topics',1,5,1665122400,1696658400,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1665083578,1665086114,0,1,0,1665529708,NULL,1,1),(4,1,10001,'Curso de JSON','JSON','','',1,'topics',1,5,1665122400,1696658400,0,0,0,0,0,1,1,NULL,0,0,0,'','','',1665083699,1665086000,0,1,0,1665512249,NULL,1,1);
/*!40000 ALTER TABLE `obd_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:54
