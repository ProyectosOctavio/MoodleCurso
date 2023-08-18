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
-- Table structure for table `obd_block`
--

DROP TABLE IF EXISTS `obd_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_block` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `cron` bigint NOT NULL DEFAULT '0',
  `lastcron` bigint NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_bloc_nam_uix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='contains all installed blocks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_block`
--

LOCK TABLES `obd_block` WRITE;
/*!40000 ALTER TABLE `obd_block` DISABLE KEYS */;
INSERT INTO `obd_block` VALUES (1,'accessreview',0,0,1),(2,'activity_modules',0,0,1),(3,'activity_results',0,0,1),(4,'admin_bookmarks',0,0,1),(5,'badges',0,0,1),(6,'blog_menu',0,0,1),(7,'blog_recent',0,0,1),(8,'blog_tags',0,0,1),(9,'calendar_month',0,0,1),(10,'calendar_upcoming',0,0,1),(11,'comments',0,0,1),(12,'completionstatus',0,0,1),(13,'course_list',0,0,1),(14,'course_summary',0,0,0),(15,'feedback',0,0,0),(16,'globalsearch',0,0,1),(17,'glossary_random',0,0,1),(18,'html',0,0,1),(19,'login',0,0,1),(20,'lp',0,0,1),(21,'mentees',0,0,1),(22,'mnet_hosts',0,0,1),(23,'myoverview',0,0,1),(24,'myprofile',0,0,1),(25,'navigation',0,0,1),(26,'news_items',0,0,1),(27,'online_users',0,0,1),(28,'private_files',0,0,1),(29,'recent_activity',0,0,1),(30,'recentlyaccessedcourses',0,0,1),(31,'recentlyaccesseditems',0,0,1),(32,'rss_client',0,0,0),(33,'search_forums',0,0,1),(34,'section_links',0,0,1),(35,'selfcompletion',0,0,0),(36,'settings',0,0,1),(37,'site_main_menu',0,0,1),(38,'social_activities',0,0,1),(39,'starredcourses',0,0,1),(40,'tag_flickr',0,0,1),(41,'tag_youtube',0,0,0),(42,'tags',0,0,1),(43,'timeline',0,0,1);
/*!40000 ALTER TABLE `obd_block` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:49
