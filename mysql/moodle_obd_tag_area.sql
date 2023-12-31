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
-- Table structure for table `obd_tag_area`
--

DROP TABLE IF EXISTS `obd_tag_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_tag_area` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemtype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `tagcollid` bigint NOT NULL,
  `callback` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `callbackfile` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `showstandard` tinyint(1) NOT NULL DEFAULT '0',
  `multiplecontexts` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_tagarea_comite_uix` (`component`,`itemtype`),
  KEY `obd_tagarea_tag_ix` (`tagcollid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Defines various tag areas, one area is identified by compone';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_tag_area`
--

LOCK TABLES `obd_tag_area` WRITE;
/*!40000 ALTER TABLE `obd_tag_area` DISABLE KEYS */;
INSERT INTO `obd_tag_area` VALUES (1,'core','user',1,1,'user_get_tagged_users','/user/lib.php',2,0),(2,'core','course',1,1,'course_get_tagged_courses','/course/lib.php',0,0),(3,'core_question','question',1,1,NULL,NULL,0,1),(4,'core','post',1,1,'blog_get_tagged_posts','/blog/lib.php',0,0),(5,'core','blog_external',1,1,NULL,NULL,0,0),(6,'core','course_modules',1,1,'course_get_tagged_course_modules','/course/lib.php',0,0),(7,'mod_book','book_chapters',1,1,'mod_book_get_tagged_chapters','/mod/book/locallib.php',0,0),(8,'mod_data','data_records',1,1,'mod_data_get_tagged_records','/mod/data/locallib.php',0,0),(9,'mod_forum','forum_posts',1,1,'mod_forum_get_tagged_posts','/mod/forum/locallib.php',0,0),(10,'mod_glossary','glossary_entries',1,1,'mod_glossary_get_tagged_entries','/mod/glossary/locallib.php',0,0),(11,'mod_wiki','wiki_pages',1,1,'mod_wiki_get_tagged_pages','/mod/wiki/locallib.php',0,0);
/*!40000 ALTER TABLE `obd_tag_area` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:31
