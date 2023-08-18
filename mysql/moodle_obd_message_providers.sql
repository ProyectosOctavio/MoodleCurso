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
-- Table structure for table `obd_message_providers`
--

DROP TABLE IF EXISTS `obd_message_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_message_providers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `component` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `capability` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_messprov_comnam_uix` (`component`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='This table stores the message providers (modules and core sy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_message_providers`
--

LOCK TABLES `obd_message_providers` WRITE;
/*!40000 ALTER TABLE `obd_message_providers` DISABLE KEYS */;
INSERT INTO `obd_message_providers` VALUES (1,'newlogin','moodle',NULL),(2,'notices','moodle','moodle/site:config'),(3,'errors','moodle','moodle/site:config'),(4,'availableupdate','moodle','moodle/site:config'),(5,'instantmessage','moodle',NULL),(6,'backup','moodle','moodle/site:config'),(7,'courserequested','moodle','moodle/site:approvecourse'),(8,'courserequestapproved','moodle','moodle/course:request'),(9,'courserequestrejected','moodle','moodle/course:request'),(10,'coursecompleted','moodle',NULL),(11,'coursecontentupdated','moodle',NULL),(12,'badgerecipientnotice','moodle','moodle/badges:earnbadge'),(13,'badgecreatornotice','moodle',NULL),(14,'competencyplancomment','moodle',NULL),(15,'competencyusercompcomment','moodle',NULL),(16,'insights','moodle',NULL),(17,'messagecontactrequests','moodle',NULL),(18,'asyncbackupnotification','moodle',NULL),(19,'gradenotifications','moodle',NULL),(20,'infected','moodle','moodle/site:config'),(21,'reportbuilderschedule','moodle',NULL),(22,'assign_notification','mod_assign',NULL),(23,'assignment_updates','mod_assignment',NULL),(24,'recording_ready','mod_bigbluebuttonbn',NULL),(25,'instance_updated','mod_bigbluebuttonbn',NULL),(26,'submission','mod_feedback',NULL),(27,'message','mod_feedback',NULL),(28,'posts','mod_forum',NULL),(29,'digests','mod_forum',NULL),(30,'graded_essay','mod_lesson',NULL),(31,'submission','mod_quiz','mod/quiz:emailnotifysubmission'),(32,'confirmation','mod_quiz','mod/quiz:emailconfirmsubmission'),(33,'attempt_overdue','mod_quiz','mod/quiz:emailwarnoverdue'),(34,'attempt_grading_complete','mod_quiz','mod/quiz:emailnotifyattemptgraded'),(35,'flatfile_enrolment','enrol_flatfile',NULL),(36,'imsenterprise_enrolment','enrol_imsenterprise',NULL),(37,'expiry_notification','enrol_manual',NULL),(38,'paypal_enrolment','enrol_paypal',NULL),(39,'expiry_notification','enrol_self',NULL),(40,'contactdataprotectionofficer','tool_dataprivacy','tool/dataprivacy:managedatarequests'),(41,'datarequestprocessingresults','tool_dataprivacy',NULL),(42,'notifyexceptions','tool_dataprivacy','tool/dataprivacy:managedatarequests'),(43,'invalidrecipienthandler','tool_messageinbound',NULL),(44,'messageprocessingerror','tool_messageinbound',NULL),(45,'messageprocessingsuccess','tool_messageinbound',NULL),(46,'notification','tool_monitor','tool/monitor:subscribe');
/*!40000 ALTER TABLE `obd_message_providers` ENABLE KEYS */;
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
