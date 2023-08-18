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
-- Table structure for table `obd_task_scheduled`
--

DROP TABLE IF EXISTS `obd_task_scheduled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_task_scheduled` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `classname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `lastruntime` bigint DEFAULT NULL,
  `nextruntime` bigint DEFAULT NULL,
  `blocking` tinyint NOT NULL DEFAULT '0',
  `minute` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `hour` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `day` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `month` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `dayofweek` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `faildelay` bigint DEFAULT NULL,
  `customised` tinyint NOT NULL DEFAULT '0',
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `timestarted` bigint DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_tasksche_cla_uix` (`classname`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of scheduled tasks to be run by cron.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_task_scheduled`
--

LOCK TABLES `obd_task_scheduled` WRITE;
/*!40000 ALTER TABLE `obd_task_scheduled` DISABLE KEYS */;
INSERT INTO `obd_task_scheduled` VALUES (1,'moodle','\\core\\task\\session_cleanup_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(2,'moodle','\\core\\task\\delete_unconfirmed_users_task',0,1664928000,0,'0','*','*','*','*',0,0,0,NULL,NULL,NULL),(3,'moodle','\\core\\task\\delete_incomplete_users_task',0,1664928300,0,'5','*','*','*','*',0,0,0,NULL,NULL,NULL),(4,'moodle','\\core\\task\\backup_cleanup_task',0,1664928600,0,'10','*','*','*','*',0,0,0,NULL,NULL,NULL),(5,'moodle','\\core\\task\\tag_cron_task',0,1664934780,0,'53','3','*','*','*',0,0,0,NULL,NULL,NULL),(6,'moodle','\\core\\task\\context_cleanup_task',0,1664929500,0,'25','*','*','*','*',0,0,0,NULL,NULL,NULL),(7,'moodle','\\core\\task\\cache_cleanup_task',0,1664926200,0,'30','*','*','*','*',0,0,0,NULL,NULL,NULL),(8,'moodle','\\core\\task\\messaging_cleanup_task',0,1664926500,0,'35','*','*','*','*',0,0,0,NULL,NULL,NULL),(9,'moodle','\\core\\task\\send_new_user_passwords_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(10,'moodle','\\core\\task\\send_failed_login_notifications_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(11,'moodle','\\core\\task\\create_contexts_task',0,1665007200,1,'0','0','*','*','*',0,0,0,NULL,NULL,NULL),(12,'moodle','\\core\\task\\legacy_plugin_cron_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(13,'moodle','\\core\\task\\grade_cron_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(14,'moodle','\\core\\task\\grade_history_cleanup_task',0,1665008940,0,'*','0','*','*','*',0,0,0,NULL,NULL,NULL),(15,'moodle','\\core\\task\\completion_regular_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(16,'moodle','\\core\\task\\completion_daily_task',0,1665005040,0,'24','23','*','*','*',0,0,0,NULL,NULL,NULL),(17,'moodle','\\core\\task\\portfolio_cron_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(18,'moodle','\\core\\task\\plagiarism_cron_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(19,'moodle','\\core\\task\\calendar_cron_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(20,'moodle','\\core\\task\\blog_cron_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(21,'moodle','\\core\\task\\question_preview_cleanup_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(22,'moodle','\\core\\task\\question_stats_cleanup_task',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(23,'moodle','\\core\\task\\registration_cron_task',0,1664973720,0,'42','14','*','*','3',0,0,0,NULL,NULL,NULL),(24,'moodle','\\core\\task\\check_for_updates_task',0,1664946060,0,'1','7','*','*','*',0,0,0,NULL,NULL,NULL),(25,'moodle','\\core\\task\\cache_cron_task',0,1664927400,0,'50','*','*','*','*',0,0,0,NULL,NULL,NULL),(26,'moodle','\\core\\task\\automated_backup_task',0,1664927400,0,'50','*','*','*','*',0,0,0,NULL,NULL,NULL),(27,'moodle','\\core\\task\\badges_cron_task',0,1664926200,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(28,'moodle','\\core\\task\\badges_message_task',0,1664926200,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(29,'moodle','\\core\\task\\file_temp_cleanup_task',0,1664945700,0,'55','*/6','*','*','*',0,0,0,NULL,NULL,NULL),(30,'moodle','\\core\\task\\file_trash_cleanup_task',0,1664945700,0,'55','*/6','*','*','*',0,0,0,NULL,NULL,NULL),(31,'moodle','\\core\\task\\search_index_task',0,1664926200,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(32,'moodle','\\core\\task\\search_optimize_task',0,1664964900,0,'15','*/12','*','*','*',0,0,0,NULL,NULL,NULL),(33,'moodle','\\core\\task\\stats_cron_task',0,1665007200,0,'0','0','*','*','*',0,0,0,NULL,NULL,NULL),(34,'moodle','\\core\\task\\password_reset_cleanup_task',0,1664942400,0,'0','*/6','*','*','*',0,0,0,NULL,NULL,NULL),(35,'moodle','\\core\\task\\complete_plans_task',0,1664926440,0,'34','*','*','*','*',0,0,0,NULL,NULL,NULL),(36,'moodle','\\core\\task\\sync_plans_from_template_cohorts_task',0,1664929500,0,'25','*','*','*','*',0,0,0,NULL,NULL,NULL),(37,'moodle','\\core_files\\task\\conversion_cleanup_task',0,1664928900,0,'15','2','*','*','*',0,0,0,NULL,NULL,NULL),(38,'moodle','\\core\\oauth2\\refresh_system_tokens_task',0,1664926200,0,'30','*','*','*','*',0,0,0,NULL,NULL,NULL),(39,'moodle','\\core\\task\\analytics_cleanup_task',0,1664926920,0,'42','*','*','*','*',0,0,0,NULL,NULL,NULL),(40,'moodle','\\core\\task\\task_log_cleanup_task',0,1664953500,0,'5','9','*','*','*',0,0,0,NULL,NULL,NULL),(41,'moodle','\\core\\task\\h5p_get_content_types_task',0,1667340420,0,'7','23','1','*','*',0,0,0,NULL,NULL,NULL),(42,'moodle','\\core\\task\\h5p_clean_orphaned_records_task',0,1665009780,0,'43','0','*','*','*',0,0,0,NULL,NULL,NULL),(43,'moodle','\\core\\task\\antivirus_cleanup_task',0,1665007200,0,'0','0','*','*','*',0,0,0,NULL,NULL,NULL),(44,'moodle','\\core_reportbuilder\\task\\send_schedules',0,1664926140,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(45,'mod_assign','\\mod_assign\\task\\cron_task',0,1664926200,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(46,'mod_bigbluebuttonbn','\\mod_bigbluebuttonbn\\task\\check_pending_recordings',0,1664926200,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(47,'mod_chat','\\mod_chat\\task\\cron_task',0,1664926200,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(48,'mod_forum','\\mod_forum\\task\\cron_task',0,1664926200,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(49,'mod_lti','\\mod_lti\\task\\clean_access_tokens',0,1664959920,0,'52','10','*','*','*',0,0,0,NULL,NULL,NULL),(50,'mod_quiz','\\mod_quiz\\task\\update_overdue_attempts',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(51,'mod_quiz','\\mod_quiz\\task\\legacy_quiz_reports_cron',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(52,'mod_quiz','\\mod_quiz\\task\\legacy_quiz_accessrules_cron',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(53,'mod_quiz','\\mod_quiz\\task\\quiz_notify_attempt_manual_grading_completed',0,1664926260,0,'31','*','*','*','*',0,0,0,NULL,NULL,NULL),(54,'mod_scorm','\\mod_scorm\\task\\cron_task',0,1664926500,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(55,'mod_workshop','\\mod_workshop\\task\\cron_task',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(56,'mod_workshop','\\mod_workshop\\task\\legacy_workshop_allocation_cron',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(57,'auth_cas','\\auth_cas\\task\\sync_task',0,1665007200,0,'0','0','*','*','*',0,0,1,NULL,NULL,NULL),(58,'auth_db','\\auth_db\\task\\sync_users',0,1665000720,0,'12','22','*','*','*',0,0,1,NULL,NULL,NULL),(59,'auth_ldap','\\auth_ldap\\task\\sync_roles',0,1665007200,0,'0','0','*','*','*',0,0,1,NULL,NULL,NULL),(60,'auth_ldap','\\auth_ldap\\task\\sync_task',0,1665007200,0,'0','0','*','*','*',0,0,1,NULL,NULL,NULL),(61,'auth_mnet','\\auth_mnet\\task\\cron_task',0,1664926800,0,'*/10','*','*','*','*',0,0,0,NULL,NULL,NULL),(62,'enrol_category','\\enrol_category\\task\\enrol_category_sync',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(63,'enrol_cohort','\\enrol_cohort\\task\\enrol_cohort_sync',0,1664927760,0,'56','*','*','*','*',0,0,0,NULL,NULL,NULL),(64,'enrol_database','\\enrol_database\\task\\sync_enrolments',0,1664948520,0,'42','7','*','*','*',0,0,1,NULL,NULL,NULL),(65,'enrol_flatfile','\\enrol_flatfile\\task\\flatfile_sync_task',0,1664928900,0,'15','*','*','*','*',0,0,0,NULL,NULL,NULL),(66,'enrol_imsenterprise','\\enrol_imsenterprise\\task\\cron_task',0,1664928600,0,'10','*','*','*','*',0,0,0,NULL,NULL,NULL),(67,'enrol_ldap','\\enrol_ldap\\task\\sync_enrolments',0,1664942940,0,'9','6','*','*','*',0,0,1,NULL,NULL,NULL),(68,'enrol_lti','\\enrol_lti\\task\\sync_grades',0,1664928000,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(69,'enrol_lti','\\enrol_lti\\task\\sync_members',0,1664928000,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(70,'enrol_lti','\\enrol_lti\\local\\ltiadvantage\\task\\sync_members',0,1664928000,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(71,'enrol_lti','\\enrol_lti\\local\\ltiadvantage\\task\\sync_grades',0,1664928000,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(72,'enrol_manual','\\enrol_manual\\task\\sync_enrolments',0,1664926800,0,'*/10','*','*','*','*',0,0,0,NULL,NULL,NULL),(73,'enrol_manual','\\enrol_manual\\task\\send_expiry_notifications',0,1664926800,0,'*/10','*','*','*','*',0,0,0,NULL,NULL,NULL),(74,'enrol_meta','\\enrol_meta\\task\\enrol_meta_sync',0,1664928180,0,'3','*','*','*','*',0,0,0,NULL,NULL,NULL),(75,'enrol_paypal','\\enrol_paypal\\task\\process_expirations',0,1664926260,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(76,'enrol_self','\\enrol_self\\task\\sync_enrolments',0,1664926800,0,'*/10','*','*','*','*',0,0,0,NULL,NULL,NULL),(77,'enrol_self','\\enrol_self\\task\\send_expiry_notifications',0,1664926800,0,'*/10','*','*','*','*',0,0,0,NULL,NULL,NULL),(78,'message_email','\\message_email\\task\\send_email_task',0,1665000000,0,'0','22','*','*','*',0,0,0,NULL,NULL,NULL),(79,'block_recent_activity','\\block_recent_activity\\task\\cleanup',0,1664935140,0,'59','3','*','*','*',0,0,0,NULL,NULL,NULL),(80,'block_rss_client','\\block_rss_client\\task\\refreshfeeds',0,1664926500,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(81,'editor_atto','\\editor_atto\\task\\autosave_cleanup_task',0,1664958240,0,'24','10','*','*','0',0,0,0,NULL,NULL,NULL),(82,'repository_dropbox','\\repository_dropbox\\task\\cron_task',0,1664926320,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(83,'repository_filesystem','\\repository_filesystem\\task\\cron_task',0,1664926320,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(84,'repository_onedrive','\\repository_onedrive\\remove_temp_access_task',0,1665148140,0,'9','15','*','*','5',0,0,0,NULL,NULL,NULL),(85,'tool_analytics','\\tool_analytics\\task\\train_models',0,1664949600,0,'0','8','*','*','*',0,0,0,NULL,NULL,NULL),(86,'tool_analytics','\\tool_analytics\\task\\predict_models',0,1664938800,0,'0','5','*','*','*',0,0,0,NULL,NULL,NULL),(87,'tool_brickfield','\\tool_brickfield\\task\\bulk_process_courses',0,1664926500,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(88,'tool_brickfield','\\tool_brickfield\\task\\bulk_process_caches',0,1664926500,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(89,'tool_brickfield','\\tool_brickfield\\task\\checkid_validation',0,1664953500,0,'05','9','*','*','*',0,0,0,NULL,NULL,NULL),(90,'tool_brickfield','\\tool_brickfield\\task\\update_summarydata',0,1665010200,0,'50','0','*','*','*',0,0,0,NULL,NULL,NULL),(91,'tool_brickfield','\\tool_brickfield\\task\\process_analysis_requests',0,1664926500,0,'*/5','*','*','*','*',0,0,0,NULL,NULL,NULL),(92,'tool_cohortroles','\\tool_cohortroles\\task\\cohort_role_sync',0,1664927520,0,'52','*','*','*','*',0,0,0,NULL,NULL,NULL),(93,'tool_dataprivacy','\\tool_dataprivacy\\task\\expired_retention_period',0,1664949600,0,'0','8','*','*','*',0,0,0,NULL,NULL,NULL),(94,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_expired_contexts',0,1664996400,0,'0','21','*','*','*',0,0,0,NULL,NULL,NULL),(95,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_expired_requests',0,1664995620,0,'47','20','*','*','*',0,0,0,NULL,NULL,NULL),(96,'tool_dataprivacy','\\tool_dataprivacy\\task\\delete_existing_deleted_users',0,1664981880,0,'58','16','*','*','*',0,0,1,NULL,NULL,NULL),(97,'tool_langimport','\\tool_langimport\\task\\update_langpacks_task',0,1664936700,0,'25','4','*','*','*',0,0,0,NULL,NULL,NULL),(98,'tool_messageinbound','\\tool_messageinbound\\task\\pickup_task',0,1664926320,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(99,'tool_messageinbound','\\tool_messageinbound\\task\\cleanup_task',0,1664927700,0,'55','1','*','*','*',0,0,0,NULL,NULL,NULL),(100,'tool_monitor','\\tool_monitor\\task\\clean_events',0,1664926320,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(101,'tool_monitor','\\tool_monitor\\task\\check_subscriptions',0,1664950800,0,'20','8','*','*','*',0,0,0,NULL,NULL,NULL),(102,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_course_bin',0,1664928000,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(103,'tool_recyclebin','\\tool_recyclebin\\task\\cleanup_category_bin',0,1664928000,0,'*/30','*','*','*','*',0,0,0,NULL,NULL,NULL),(104,'cachestore_redis','\\cachestore_redis\\task\\ttl',0,1664928360,0,'6','*','*','*','*',0,0,0,NULL,NULL,NULL),(105,'assignfeedback_editpdf','\\assignfeedback_editpdf\\task\\convert_submissions',0,1664927100,0,'*/15','*','*','*','*',0,0,0,NULL,NULL,NULL),(106,'ltiservice_gradebookservices','\\ltiservice_gradebookservices\\task\\cleanup_task',0,1664930820,0,'47','2','*','*','*',0,0,0,NULL,NULL,NULL),(107,'quiz_statistics','\\quiz_statistics\\task\\recalculate',0,1664935680,0,'8','*/4','*','*','*',0,0,0,NULL,NULL,NULL),(108,'workshopallocation_scheduled','\\workshopallocation_scheduled\\task\\cron_task',0,1664926380,0,'*','*','*','*','*',0,0,0,NULL,NULL,NULL),(109,'logstore_legacy','\\logstore_legacy\\task\\cleanup_task',0,1664939520,0,'12','5','*','*','*',0,0,0,NULL,NULL,NULL),(110,'logstore_standard','\\logstore_standard\\task\\cleanup_task',0,1664937480,0,'38','4','*','*','*',0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `obd_task_scheduled` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:41
