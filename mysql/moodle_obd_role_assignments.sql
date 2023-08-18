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
-- Table structure for table `obd_role_assignments`
--

DROP TABLE IF EXISTS `obd_role_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_role_assignments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `roleid` bigint NOT NULL DEFAULT '0',
  `contextid` bigint NOT NULL DEFAULT '0',
  `userid` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `modifierid` bigint NOT NULL DEFAULT '0',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_roleassi_sor_ix` (`sortorder`),
  KEY `obd_roleassi_rolcon_ix` (`roleid`,`contextid`),
  KEY `obd_roleassi_useconrol_ix` (`userid`,`contextid`,`roleid`),
  KEY `obd_roleassi_comiteuse_ix` (`component`,`itemid`,`userid`),
  KEY `obd_roleassi_rol_ix` (`roleid`),
  KEY `obd_roleassi_con_ix` (`contextid`),
  KEY `obd_roleassi_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='assigning roles in different context';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_role_assignments`
--

LOCK TABLES `obd_role_assignments` WRITE;
/*!40000 ALTER TABLE `obd_role_assignments` DISABLE KEYS */;
INSERT INTO `obd_role_assignments` VALUES (1,3,15,2,1665030930,2,'',0,0),(2,3,15,3,1665030981,2,'',0,0),(3,3,15,5,1665031439,2,'',0,0),(4,3,15,4,1665031454,2,'',0,0),(5,3,19,2,1665083579,2,'',0,0),(6,3,19,5,1665083648,2,'',0,0),(7,3,19,4,1665083648,2,'',0,0),(8,3,19,3,1665083648,2,'',0,0),(9,3,21,2,1665083699,2,'',0,0),(10,3,21,5,1665083722,2,'',0,0),(11,3,21,4,1665083722,2,'',0,0),(12,3,21,3,1665083722,2,'',0,0),(13,3,21,6,1665514006,2,'',0,0),(14,3,19,6,1665514030,2,'',0,0),(15,3,15,6,1665514053,2,'',0,0);
/*!40000 ALTER TABLE `obd_role_assignments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:20
