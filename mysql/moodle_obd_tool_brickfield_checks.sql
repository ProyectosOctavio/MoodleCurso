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
-- Table structure for table `obd_tool_brickfield_checks`
--

DROP TABLE IF EXISTS `obd_tool_brickfield_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_tool_brickfield_checks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `checktype` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `shortname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `checkgroup` bigint DEFAULT '0',
  `status` smallint NOT NULL,
  `severity` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `obd_toolbricchec_che_ix` (`checktype`),
  KEY `obd_toolbricchec_che2_ix` (`checkgroup`),
  KEY `obd_toolbricchec_sta_ix` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Checks details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_tool_brickfield_checks`
--

LOCK TABLES `obd_tool_brickfield_checks` WRITE;
/*!40000 ALTER TABLE `obd_tool_brickfield_checks` DISABLE KEYS */;
INSERT INTO `obd_tool_brickfield_checks` VALUES (1,'full','a_links_dont_open_new_window',4,1,1),(2,'full','a_must_contain_text',4,1,1),(3,'full','area_dont_open_new_window',4,1,1),(4,'full','area_has_alt_value',4,1,1),(5,'full','a_suspicious_link_text',4,1,1),(6,'full','basefont_is_not_used',7,1,1),(7,'full','blink_is_not_used',7,1,1),(8,'full','bold_is_not_used',7,1,1),(9,'full','content_too_long',7,1,1),(10,'full','css_text_has_contrast',7,1,1),(11,'full','embed_has_associated_no_embed',7,1,1),(12,'full','header_h3',3,1,1),(13,'full','headers_have_text',3,1,1),(14,'full','i_is_not_used',7,1,1),(15,'full','img_alt_is_different',2,1,1),(16,'full','img_alt_is_too_long',2,1,1),(17,'full','img_alt_not_empty_in_anchor',2,1,1),(18,'full','img_alt_not_place_holder',2,1,1),(19,'full','img_has_alt',2,1,1),(20,'full','img_with_map_has_use_map',2,1,1),(21,'full','legend_text_not_empty',7,1,1),(22,'full','marquee_is_not_used',7,1,1),(23,'full','no_headings',3,1,1),(24,'full','object_must_have_embed',5,1,1),(25,'full','object_must_have_title',5,1,1),(26,'full','object_must_have_valid_title',5,1,1),(27,'full','strike_is_not_used',7,1,1),(28,'full','table_data_should_have_th',6,1,1),(29,'full','table_summary_does_not_duplicate_caption',6,1,1),(30,'full','table_td_should_not_merge',6,1,1),(31,'full','table_th_should_have_scope',6,1,1);
/*!40000 ALTER TABLE `obd_tool_brickfield_checks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:17
