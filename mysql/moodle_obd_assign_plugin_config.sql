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
-- Table structure for table `obd_assign_plugin_config`
--

DROP TABLE IF EXISTS `obd_assign_plugin_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_assign_plugin_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `assignment` bigint NOT NULL DEFAULT '0',
  `plugin` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `subtype` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `name` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  KEY `obd_assiplugconf_plu_ix` (`plugin`),
  KEY `obd_assiplugconf_sub_ix` (`subtype`),
  KEY `obd_assiplugconf_nam_ix` (`name`),
  KEY `obd_assiplugconf_ass_ix` (`assignment`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Config data for an instance of a plugin in an assignment.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_assign_plugin_config`
--

LOCK TABLES `obd_assign_plugin_config` WRITE;
/*!40000 ALTER TABLE `obd_assign_plugin_config` DISABLE KEYS */;
INSERT INTO `obd_assign_plugin_config` VALUES (1,1,'onlinetext','assignsubmission','enabled','0'),(2,1,'file','assignsubmission','enabled','1'),(3,1,'file','assignsubmission','maxfilesubmissions','20'),(4,1,'file','assignsubmission','maxsubmissionsizebytes','0'),(5,1,'file','assignsubmission','filetypeslist',''),(6,1,'comments','assignsubmission','enabled','1'),(7,1,'comments','assignfeedback','enabled','1'),(8,1,'comments','assignfeedback','commentinline','0'),(9,1,'editpdf','assignfeedback','enabled','0'),(10,1,'offline','assignfeedback','enabled','0'),(11,1,'file','assignfeedback','enabled','0'),(12,2,'onlinetext','assignsubmission','enabled','0'),(13,2,'file','assignsubmission','enabled','1'),(14,2,'file','assignsubmission','maxfilesubmissions','20'),(15,2,'file','assignsubmission','maxsubmissionsizebytes','0'),(16,2,'file','assignsubmission','filetypeslist',''),(17,2,'comments','assignsubmission','enabled','1'),(18,2,'comments','assignfeedback','enabled','1'),(19,2,'comments','assignfeedback','commentinline','0'),(20,2,'editpdf','assignfeedback','enabled','0'),(21,2,'offline','assignfeedback','enabled','0'),(22,2,'file','assignfeedback','enabled','0'),(23,3,'onlinetext','assignsubmission','enabled','0'),(24,3,'file','assignsubmission','enabled','1'),(25,3,'file','assignsubmission','maxfilesubmissions','20'),(26,3,'file','assignsubmission','maxsubmissionsizebytes','0'),(27,3,'file','assignsubmission','filetypeslist',''),(28,3,'comments','assignsubmission','enabled','1'),(29,3,'comments','assignfeedback','enabled','1'),(30,3,'comments','assignfeedback','commentinline','0'),(31,3,'editpdf','assignfeedback','enabled','0'),(32,3,'offline','assignfeedback','enabled','0'),(33,3,'file','assignfeedback','enabled','0'),(34,4,'onlinetext','assignsubmission','enabled','0'),(35,4,'file','assignsubmission','enabled','1'),(36,4,'file','assignsubmission','maxfilesubmissions','20'),(37,4,'file','assignsubmission','maxsubmissionsizebytes','0'),(38,4,'file','assignsubmission','filetypeslist',''),(39,4,'comments','assignsubmission','enabled','1'),(40,4,'comments','assignfeedback','enabled','1'),(41,4,'comments','assignfeedback','commentinline','0'),(42,4,'editpdf','assignfeedback','enabled','0'),(43,4,'offline','assignfeedback','enabled','0'),(44,4,'file','assignfeedback','enabled','0'),(45,5,'onlinetext','assignsubmission','enabled','0'),(46,5,'file','assignsubmission','enabled','1'),(47,5,'file','assignsubmission','maxfilesubmissions','20'),(48,5,'file','assignsubmission','maxsubmissionsizebytes','0'),(49,5,'file','assignsubmission','filetypeslist',''),(50,5,'comments','assignsubmission','enabled','1'),(51,5,'comments','assignfeedback','enabled','1'),(52,5,'comments','assignfeedback','commentinline','0'),(53,5,'editpdf','assignfeedback','enabled','0'),(54,5,'offline','assignfeedback','enabled','0'),(55,5,'file','assignfeedback','enabled','0'),(56,6,'onlinetext','assignsubmission','enabled','0'),(57,6,'file','assignsubmission','enabled','1'),(58,6,'file','assignsubmission','maxfilesubmissions','20'),(59,6,'file','assignsubmission','maxsubmissionsizebytes','0'),(60,6,'file','assignsubmission','filetypeslist',''),(61,6,'comments','assignsubmission','enabled','1'),(62,6,'comments','assignfeedback','enabled','1'),(63,6,'comments','assignfeedback','commentinline','0'),(64,6,'editpdf','assignfeedback','enabled','0'),(65,6,'offline','assignfeedback','enabled','0'),(66,6,'file','assignfeedback','enabled','0');
/*!40000 ALTER TABLE `obd_assign_plugin_config` ENABLE KEYS */;
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
