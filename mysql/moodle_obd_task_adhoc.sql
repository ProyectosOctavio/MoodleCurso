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
-- Table structure for table `obd_task_adhoc`
--

DROP TABLE IF EXISTS `obd_task_adhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_task_adhoc` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `classname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `nextruntime` bigint NOT NULL,
  `faildelay` bigint DEFAULT NULL,
  `customdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `userid` bigint DEFAULT NULL,
  `blocking` tinyint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timestarted` bigint DEFAULT NULL,
  `hostname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `pid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `obd_taskadho_nex_ix` (`nextruntime`),
  KEY `obd_taskadho_use_ix` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='List of adhoc tasks waiting to run.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_task_adhoc`
--

LOCK TABLES `obd_task_adhoc` WRITE;
/*!40000 ALTER TABLE `obd_task_adhoc` DISABLE KEYS */;
INSERT INTO `obd_task_adhoc` VALUES (1,'tool_moodlenet','\\tool_moodlenet\\task\\post_install',1664926309,0,'',NULL,0,1664926310,NULL,NULL,NULL),(2,'','\\core_course\\task\\course_delete_modules',1665085789,0,'{\"cms\":[{\"id\":\"4\",\"course\":\"1\",\"module\":\"17\",\"instance\":\"1\",\"section\":\"6\",\"idnumber\":\"\",\"added\":\"1665085665\",\"score\":\"0\",\"indent\":\"0\",\"visible\":\"1\",\"visibleoncoursepage\":\"1\",\"visibleold\":\"1\",\"groupmode\":\"0\",\"groupingid\":\"0\",\"completion\":\"0\",\"completiongradeitemnumber\":null,\"completionview\":\"0\",\"completionexpected\":\"0\",\"completionpassgrade\":\"0\",\"showdescription\":\"0\",\"availability\":null,\"deletioninprogress\":\"1\",\"downloadcontent\":\"1\"}],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665085790,NULL,NULL,NULL),(3,'','\\core_course\\task\\course_delete_modules',1665096747,0,'{\"cms\":[],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665096748,NULL,NULL,NULL),(4,'','\\core_course\\task\\course_delete_modules',1665100915,0,'{\"cms\":[],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665100916,NULL,NULL,NULL),(5,'','\\core_course\\task\\course_delete_modules',1665101361,0,'{\"cms\":[],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665101362,NULL,NULL,NULL),(6,'','\\core_course\\task\\course_delete_modules',1665101363,0,'{\"cms\":[],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665101364,NULL,NULL,NULL),(7,'','\\core_course\\task\\course_delete_modules',1665101733,0,'{\"cms\":[{\"id\":\"27\",\"course\":\"2\",\"module\":\"14\",\"instance\":\"5\",\"section\":\"2\",\"idnumber\":\"\",\"added\":\"1665101725\",\"score\":\"0\",\"indent\":\"0\",\"visible\":\"1\",\"visibleoncoursepage\":\"1\",\"visibleold\":\"1\",\"groupmode\":\"0\",\"groupingid\":\"0\",\"completion\":\"1\",\"completiongradeitemnumber\":null,\"completionview\":\"0\",\"completionexpected\":\"0\",\"completionpassgrade\":\"0\",\"showdescription\":\"1\",\"availability\":null,\"deletioninprogress\":\"1\",\"downloadcontent\":\"1\"}],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665101734,NULL,NULL,NULL),(8,'','\\core_course\\task\\course_delete_modules',1665510709,0,'{\"cms\":[{\"id\":\"12\",\"course\":\"4\",\"module\":\"16\",\"instance\":\"1\",\"section\":\"15\",\"idnumber\":\"\",\"added\":\"1665096442\",\"score\":\"0\",\"indent\":\"0\",\"visible\":\"1\",\"visibleoncoursepage\":\"1\",\"visibleold\":\"1\",\"groupmode\":\"0\",\"groupingid\":\"0\",\"completion\":\"1\",\"completiongradeitemnumber\":null,\"completionview\":\"0\",\"completionexpected\":\"0\",\"completionpassgrade\":\"0\",\"showdescription\":\"0\",\"availability\":null,\"deletioninprogress\":\"1\",\"downloadcontent\":\"1\"}],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665510710,NULL,NULL,NULL),(9,'','\\core_course\\task\\course_delete_modules',1665528522,0,'{\"cms\":[{\"id\":\"20\",\"course\":\"3\",\"module\":\"16\",\"instance\":\"2\",\"section\":\"9\",\"idnumber\":\"\",\"added\":\"1665097615\",\"score\":\"0\",\"indent\":\"0\",\"visible\":\"1\",\"visibleoncoursepage\":\"1\",\"visibleold\":\"1\",\"groupmode\":\"0\",\"groupingid\":\"0\",\"completion\":\"1\",\"completiongradeitemnumber\":null,\"completionview\":\"0\",\"completionexpected\":\"0\",\"completionpassgrade\":\"0\",\"showdescription\":\"0\",\"availability\":null,\"deletioninprogress\":\"1\",\"downloadcontent\":\"1\"}],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665528523,NULL,NULL,NULL),(10,'','\\core_course\\task\\course_delete_modules',1665537056,0,'{\"cms\":[{\"id\":\"29\",\"course\":\"2\",\"module\":\"16\",\"instance\":\"3\",\"section\":\"3\",\"idnumber\":\"\",\"added\":\"1665101842\",\"score\":\"0\",\"indent\":\"0\",\"visible\":\"1\",\"visibleoncoursepage\":\"1\",\"visibleold\":\"1\",\"groupmode\":\"0\",\"groupingid\":\"0\",\"completion\":\"1\",\"completiongradeitemnumber\":null,\"completionview\":\"0\",\"completionexpected\":\"0\",\"completionpassgrade\":\"0\",\"showdescription\":\"0\",\"availability\":null,\"deletioninprogress\":\"1\",\"downloadcontent\":\"1\"}],\"userid\":\"2\",\"realuserid\":\"2\"}',NULL,0,1665537057,NULL,NULL,NULL);
/*!40000 ALTER TABLE `obd_task_adhoc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:46
