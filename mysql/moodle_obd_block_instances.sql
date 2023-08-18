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
-- Table structure for table `obd_block_instances`
--

DROP TABLE IF EXISTS `obd_block_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_block_instances` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blockname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `parentcontextid` bigint NOT NULL,
  `showinsubcontexts` smallint NOT NULL,
  `requiredbytheme` smallint NOT NULL DEFAULT '0',
  `pagetypepattern` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `subpagepattern` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `defaultregion` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `defaultweight` bigint NOT NULL,
  `configdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_blocinst_parshopagsub_ix` (`parentcontextid`,`showinsubcontexts`,`pagetypepattern`,`subpagepattern`),
  KEY `obd_blocinst_tim_ix` (`timemodified`),
  KEY `obd_blocinst_par_ix` (`parentcontextid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores block instances. The type of block this is';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_block_instances`
--

LOCK TABLES `obd_block_instances` WRITE;
/*!40000 ALTER TABLE `obd_block_instances` DISABLE KEYS */;
INSERT INTO `obd_block_instances` VALUES (1,'admin_bookmarks',1,0,0,'admin-*',NULL,'side-pre',2,'',1664926257,1664926257),(2,'recentlyaccesseditems',1,0,0,'my-index','2','side-post',0,'',1664926257,1664926257),(3,'timeline',1,0,0,'my-index','2','content',0,'',1664926257,1664926257),(4,'calendar_month',1,0,0,'my-index','2','content',1,'',1664926258,1664926258),(5,'myoverview',1,0,0,'my-index','3','content',0,'',1664926258,1664926258),(6,'recentlyaccesseditems',5,0,0,'my-index','4','side-post',0,'',1664929228,1664929228),(7,'timeline',5,0,0,'my-index','4','content',0,'',1664929228,1664929228),(8,'calendar_month',5,0,0,'my-index','4','content',1,'',1664929228,1664929228);
/*!40000 ALTER TABLE `obd_block_instances` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:30
