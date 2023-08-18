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
-- Table structure for table `obd_tool_usertours_tours`
--

DROP TABLE IF EXISTS `obd_tool_usertours_tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_tool_usertours_tours` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `pathmatch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` bigint NOT NULL DEFAULT '0',
  `endtourlabel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `configdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `displaystepnumbers` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of tours';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_tool_usertours_tours`
--

LOCK TABLES `obd_tool_usertours_tours` WRITE;
/*!40000 ALTER TABLE `obd_tool_usertours_tours` DISABLE KEYS */;
INSERT INTO `obd_tool_usertours_tours` VALUES (1,'tour_navigation_course_student_tour_name,tool_usertours','tour_navigation_course_student_tour_des,tool_usertours','/course/view.php%',1,3,'','{\"placement\":\"right\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"accessdate\":{\"filter_accessdate\":\"tool_usertours_accountcreation\",\"filter_accessdate_range\":0,\"filter_accessdate_enabled\":\"0\"},\"category\":[],\"course\":[],\"courseformat\":[],\"role\":[\"student\"],\"theme\":[\"boost\"],\"cssselector\":[]},\"majorupdatetime\":1641972472,\"shipped_tour\":true,\"shipped_filename\":\"40_tour_navigation_course_student.json\",\"shipped_version\":3}',1),(2,'tour_navigation_course_teacher_tour_name,tool_usertours','tour_navigation_course_teacher_tour_des,tool_usertours','/course/view.php%',1,2,'','{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"accessdate\":{\"filter_accessdate\":\"tool_usertours_accountcreation\",\"filter_accessdate_range\":0,\"filter_accessdate_enabled\":\"0\"},\"category\":[],\"course\":[],\"courseformat\":[],\"role\":[\"-1\",\"coursecreator\",\"manager\",\"teacher\",\"editingteacher\"],\"theme\":[\"boost\"],\"cssselector\":[]},\"majorupdatetime\":1641972470,\"shipped_tour\":true,\"shipped_filename\":\"40_tour_navigation_course_teacher.json\",\"shipped_version\":3}',1),(3,'tour_navigation_mycourses_tour_name,tool_usertours','tour_navigation_mycourses_tour_des,tool_usertours','/my/courses.php',1,1,'tour_navigation_mycourses_endtourlabel,tool_usertours','{\"placement\":\"bottom\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"accessdate\":{\"filter_accessdate\":\"tool_usertours_accountcreation\",\"filter_accessdate_range\":0,\"filter_accessdate_enabled\":\"0\"},\"category\":[],\"course\":[],\"courseformat\":[],\"role\":[],\"theme\":[\"boost\"],\"cssselector\":[]},\"majorupdatetime\":1641972468,\"shipped_tour\":true,\"shipped_filename\":\"40_tour_navigation_mycourse.json\",\"shipped_version\":4}',1),(4,'tour_navigation_dashboard_tour_name,tool_usertours','tour_navigation_dashboard_tour_des,tool_usertours','FRONTPAGE_MY',1,0,'','{\"placement\":\"left\",\"orphan\":\"0\",\"backdrop\":\"1\",\"reflex\":\"0\",\"filtervalues\":{\"accessdate\":{\"filter_accessdate\":\"tool_usertours_accountcreation\",\"filter_accessdate_range\":0,\"filter_accessdate_enabled\":\"0\"},\"category\":[],\"course\":[],\"courseformat\":[],\"role\":[],\"theme\":[\"boost\"],\"cssselector\":[]},\"majorupdatetime\":1641972465,\"shipped_tour\":true,\"shipped_filename\":\"40_tour_navigation_dashboard.json\",\"shipped_version\":4}',1);
/*!40000 ALTER TABLE `obd_tool_usertours_tours` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:37:58
