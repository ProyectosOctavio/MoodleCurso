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
-- Table structure for table `obd_qtype_essay_options`
--

DROP TABLE IF EXISTS `obd_qtype_essay_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_qtype_essay_options` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `questionid` bigint NOT NULL,
  `responseformat` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'editor',
  `responserequired` tinyint NOT NULL DEFAULT '1',
  `responsefieldlines` smallint NOT NULL DEFAULT '15',
  `minwordlimit` bigint DEFAULT NULL,
  `maxwordlimit` bigint DEFAULT NULL,
  `attachments` smallint NOT NULL DEFAULT '0',
  `attachmentsrequired` smallint NOT NULL DEFAULT '0',
  `graderinfo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `graderinfoformat` smallint NOT NULL DEFAULT '0',
  `responsetemplate` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `responsetemplateformat` smallint NOT NULL DEFAULT '0',
  `maxbytes` bigint NOT NULL DEFAULT '0',
  `filetypeslist` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_qtypessaopti_que_uix` (`questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Extra options for essay questions.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_qtype_essay_options`
--

LOCK TABLES `obd_qtype_essay_options` WRITE;
/*!40000 ALTER TABLE `obd_qtype_essay_options` DISABLE KEYS */;
INSERT INTO `obd_qtype_essay_options` VALUES (1,6,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(2,7,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(3,12,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(4,13,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(5,14,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(6,15,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(7,16,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(8,17,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(9,18,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(10,19,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(11,20,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(12,21,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(13,22,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,''),(14,23,'editor',1,10,NULL,NULL,0,0,'',1,'',1,0,'');
/*!40000 ALTER TABLE `obd_qtype_essay_options` ENABLE KEYS */;
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
