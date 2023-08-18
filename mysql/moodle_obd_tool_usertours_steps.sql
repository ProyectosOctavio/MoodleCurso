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
-- Table structure for table `obd_tool_usertours_steps`
--

DROP TABLE IF EXISTS `obd_tool_usertours_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_tool_usertours_steps` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tourid` bigint NOT NULL,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `contentformat` smallint NOT NULL DEFAULT '0',
  `targettype` tinyint NOT NULL,
  `targetvalue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sortorder` bigint NOT NULL DEFAULT '0',
  `configdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_tooluserstep_tousor_ix` (`tourid`,`sortorder`),
  KEY `obd_tooluserstep_tou_ix` (`tourid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Steps in an tour';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_tool_usertours_steps`
--

LOCK TABLES `obd_tool_usertours_steps` WRITE;
/*!40000 ALTER TABLE `obd_tool_usertours_steps` DISABLE KEYS */;
INSERT INTO `obd_tool_usertours_steps` VALUES (1,1,'tour_navigation_course_index_student_title,tool_usertours','tour_navigation_course_index_student_content,tool_usertours',1,0,'#theme_boost-drawers-courseindex .drawercontent',0,'{}'),(2,2,'tour_navigation_course_edit_teacher_title,tool_usertours','tour_navigation_course_edit_teacher_content,tool_usertours',1,0,'form.editmode-switch-form',0,'{}'),(3,2,'tour_navigation_course_index_teacher_title,tool_usertours','tour_navigation_course_index_teacher_content,tool_usertours',1,0,'#theme_boost-drawers-courseindex .drawercontent',1,'{\"placement\":\"right\"}'),(4,2,'tour_navigation_course_announcements_teacher_title,tool_usertours','tour_navigation_course_announcements_teacher_content,tool_usertours',1,0,'.course-content .course-content-item-content .activity-item[data-activityname=\"Announcements\"]',2,'{\"placement\":\"left\"}'),(5,3,'tour_navigation_mycourses_title,tool_usertours','tour_navigation_mycourses_content,tool_usertours',1,0,'.header-actions-container .btn-group',0,'{}'),(6,4,'tour_navigation_dashboard_title,tool_usertours','tour_navigation_dashboard_content,tool_usertours',1,0,'.drawer-toggles .drawer-toggler.drawer-right-toggle',0,'{\"placement\":\"left\"}');
/*!40000 ALTER TABLE `obd_tool_usertours_steps` ENABLE KEYS */;
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
