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
-- Table structure for table `obd_bigbluebuttonbn`
--

DROP TABLE IF EXISTS `obd_bigbluebuttonbn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_bigbluebuttonbn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '0',
  `course` bigint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `intro` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `introformat` smallint NOT NULL DEFAULT '1',
  `meetingid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `moderatorpass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `viewerpass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `wait` tinyint(1) NOT NULL DEFAULT '0',
  `record` tinyint(1) NOT NULL DEFAULT '0',
  `recordallfromstart` tinyint(1) NOT NULL DEFAULT '0',
  `recordhidebutton` tinyint(1) NOT NULL DEFAULT '0',
  `welcome` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `voicebridge` mediumint NOT NULL DEFAULT '0',
  `openingtime` bigint NOT NULL DEFAULT '0',
  `closingtime` bigint NOT NULL DEFAULT '0',
  `timecreated` bigint NOT NULL DEFAULT '0',
  `timemodified` bigint NOT NULL DEFAULT '0',
  `presentation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `participants` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `userlimit` smallint NOT NULL DEFAULT '0',
  `recordings_html` tinyint(1) NOT NULL DEFAULT '0',
  `recordings_deleted` tinyint(1) NOT NULL DEFAULT '1',
  `recordings_imported` tinyint(1) NOT NULL DEFAULT '0',
  `recordings_preview` tinyint(1) NOT NULL DEFAULT '0',
  `clienttype` tinyint(1) NOT NULL DEFAULT '0',
  `muteonstart` tinyint(1) NOT NULL DEFAULT '0',
  `disablecam` tinyint(1) NOT NULL DEFAULT '0',
  `disablemic` tinyint(1) NOT NULL DEFAULT '0',
  `disableprivatechat` tinyint(1) NOT NULL DEFAULT '0',
  `disablepublicchat` tinyint(1) NOT NULL DEFAULT '0',
  `disablenote` tinyint(1) NOT NULL DEFAULT '0',
  `hideuserlist` tinyint(1) NOT NULL DEFAULT '0',
  `lockedlayout` tinyint(1) NOT NULL DEFAULT '0',
  `lockonjoin` tinyint(1) NOT NULL DEFAULT '0',
  `lockonjoinconfigurable` tinyint(1) NOT NULL DEFAULT '0',
  `completionattendance` int NOT NULL DEFAULT '0',
  `completionengagementchats` int NOT NULL DEFAULT '0',
  `completionengagementtalks` int NOT NULL DEFAULT '0',
  `completionengagementraisehand` int NOT NULL DEFAULT '0',
  `completionengagementpollvotes` int NOT NULL DEFAULT '0',
  `completionengagementemojis` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='The bigbluebuttonbn table to store information about a meeti';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_bigbluebuttonbn`
--

LOCK TABLES `obd_bigbluebuttonbn` WRITE;
/*!40000 ALTER TABLE `obd_bigbluebuttonbn` DISABLE KEYS */;
/*!40000 ALTER TABLE `obd_bigbluebuttonbn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:00
