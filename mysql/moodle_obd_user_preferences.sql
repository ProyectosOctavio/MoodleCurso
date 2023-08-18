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
-- Table structure for table `obd_user_preferences`
--

DROP TABLE IF EXISTS `obd_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_user_preferences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userid` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `value` varchar(1333) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_userpref_usenam_uix` (`userid`,`name`),
  KEY `obd_userpref_nam_ix` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Allows modules to store arbitrary user preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_user_preferences`
--

LOCK TABLES `obd_user_preferences` WRITE;
/*!40000 ALTER TABLE `obd_user_preferences` DISABLE KEYS */;
INSERT INTO `obd_user_preferences` VALUES (1,2,'core_message_migrate_data','1'),(2,2,'auth_manual_passwordupdatetime','1664926764'),(3,2,'email_bounce_count','1'),(4,2,'email_send_count','1'),(5,2,'core_user_welcome','1664929229'),(6,2,'login_failed_count_since_success','0'),(7,2,'tool_usertours_tour_completion_time_4','1664929262'),(8,3,'auth_forcepasswordchange','0'),(9,3,'email_bounce_count','1'),(10,3,'email_send_count','1'),(11,2,'drawer-open-index','0'),(12,4,'auth_forcepasswordchange','0'),(13,4,'email_bounce_count','1'),(14,4,'email_send_count','1'),(15,5,'auth_forcepasswordchange','0'),(16,5,'email_bounce_count','1'),(17,5,'email_send_count','1'),(18,2,'coursesectionspreferences_2','{\"contentcollapsed\":[]}'),(19,2,'tool_usertours_tour_completion_time_3','1665083471'),(20,2,'coursesectionspreferences_4','{\"indexcollapsed\":[],\"contentcollapsed\":[]}'),(21,2,'qtype_multichoice_defaultmark','1'),(22,2,'qtype_multichoice_penalty','0.3333333'),(23,2,'qtype_multichoice_single','1'),(24,2,'qtype_multichoice_shuffleanswers','1'),(25,2,'qtype_multichoice_answernumbering','abc'),(26,2,'qtype_multichoice_showstandardinstruction','0'),(27,2,'tool_usertours_tour_completion_time_2','1665507617'),(28,2,'qtype_shortanswer_defaultmark','10'),(29,2,'qtype_shortanswer_penalty','0.3333333'),(30,2,'qtype_shortanswer_usecase','0'),(31,2,'drawer-open-block','0'),(32,2,'qtype_essay_defaultmark','10'),(33,2,'qtype_essay_responseformat','editor'),(34,2,'qtype_essay_responserequired','1'),(35,2,'qtype_essay_responsefieldlines','10'),(36,2,'qtype_essay_attachments','0'),(37,2,'qtype_essay_attachmentsrequired','0'),(38,2,'qtype_essay_maxbytes','0'),(39,2,'qtype_truefalse_defaultmark','10'),(40,2,'qtype_truefalse_penalty','1'),(41,6,'auth_forcepasswordchange','0'),(42,6,'email_bounce_count','1'),(43,6,'email_send_count','1'),(44,2,'coursesectionspreferences_3','{\"contentcollapsed\":[]}');
/*!40000 ALTER TABLE `obd_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:24
