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
-- Table structure for table `obd_files`
--

DROP TABLE IF EXISTS `obd_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_files` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contenthash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `pathnamehash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contextid` bigint NOT NULL,
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `filearea` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `itemid` bigint NOT NULL,
  `filepath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `userid` bigint DEFAULT NULL,
  `filesize` bigint NOT NULL,
  `mimetype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `status` bigint NOT NULL DEFAULT '0',
  `source` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `license` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timecreated` bigint NOT NULL,
  `timemodified` bigint NOT NULL,
  `sortorder` bigint NOT NULL DEFAULT '0',
  `referencefileid` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_file_pat_uix` (`pathnamehash`),
  KEY `obd_file_comfilconite_ix` (`component`,`filearea`,`contextid`,`itemid`),
  KEY `obd_file_con_ix` (`contenthash`),
  KEY `obd_file_lic_ix` (`license`),
  KEY `obd_file_con2_ix` (`contextid`),
  KEY `obd_file_use_ix` (`userid`),
  KEY `obd_file_ref_ix` (`referencefileid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='description of files, content is stored in sha1 file pool';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_files`
--

LOCK TABLES `obd_files` WRITE;
/*!40000 ALTER TABLE `obd_files` DISABLE KEYS */;
INSERT INTO `obd_files` VALUES (1,'5f8e911d0da441e36f47c5c46f4393269211ca56','508e674d49c30d4fde325fe6c7f6fd3d56b247e1',1,'assignfeedback_editpdf','stamps',0,'/','smile.png',2,1085,'image/png',0,NULL,NULL,NULL,1664926319,1664926319,0,NULL),(2,'da39a3ee5e6b4b0d3255bfef95601890afd80709','70b7cdade7b4e27d4e83f0cdaad10d6a3c0cccb5',1,'assignfeedback_editpdf','stamps',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1664926319,1664926319,0,NULL),(3,'75c101cb8cb34ea573cd25ac38f8157b1de901b8','68317eab56c67d32aeaee5acf509a0c4aa828b6b',1,'assignfeedback_editpdf','stamps',0,'/','sad.png',2,966,'image/png',0,NULL,NULL,NULL,1664926319,1664926319,0,NULL),(4,'0c5190a24c3943966541401c883eacaa20ca20cb','695a55ff780e61c9e59428aa425430b0d6bde53b',1,'assignfeedback_editpdf','stamps',0,'/','tick.png',2,1039,'image/png',0,NULL,NULL,NULL,1664926319,1664926319,0,NULL),(5,'8c96a486d5801e0f4ab8c411f561f1c687e1f865','373e63af262a9b8466ba8632551520be793c37ff',1,'assignfeedback_editpdf','stamps',0,'/','cross.png',2,861,'image/png',0,NULL,NULL,NULL,1664926319,1664926319,0,NULL),(6,'1eb5b512d5dc97168a59f4572c1e44dbae559eb7','0c18f49439800013bcaa12ada3b7a73f891a418c',5,'user','draft',241425389,'/','descarga.png',2,1320,'image/png',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:12:\"descarga.png\";}','Octavio André Guevara Salvatierra','unknown',1665085968,1665085968,0,NULL),(7,'da39a3ee5e6b4b0d3255bfef95601890afd80709','b1cf3000601153b622b254a0a97a177e190621c7',5,'user','draft',241425389,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665085969,1665085969,0,NULL),(8,'24fb7d81b0e7eeb77c85203f50b0b55974b79d43','284a93d8d0fc61d4823f5d12d7af3a644fe3fee7',1,'core','preview',0,'/thumb/','1eb5b512d5dc97168a59f4572c1e44dbae559eb7',NULL,1252,'image/png',0,NULL,NULL,NULL,1665085969,1665085969,0,NULL),(9,'da39a3ee5e6b4b0d3255bfef95601890afd80709','74c104d54c05b5f8c633a36da516d37e6c5279e4',1,'core','preview',0,'/thumb/','.',NULL,0,NULL,0,NULL,NULL,NULL,1665085969,1665085969,0,NULL),(10,'da39a3ee5e6b4b0d3255bfef95601890afd80709','884555719c50529b9df662a38619d04b5b11e25c',1,'core','preview',0,'/','.',NULL,0,NULL,0,NULL,NULL,NULL,1665085969,1665085969,0,NULL),(11,'1eb5b512d5dc97168a59f4572c1e44dbae559eb7','9572731555f0962d5bb6dc89f18dc8f345cae21f',21,'course','overviewfiles',0,'/','descarga.png',2,1320,'image/png',0,'descarga.png','Octavio André Guevara Salvatierra','unknown',1665085968,1665086000,0,NULL),(12,'da39a3ee5e6b4b0d3255bfef95601890afd80709','0de3002a6edc367a185809c8f1b85ac8e366fd4e',21,'course','overviewfiles',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665085969,1665086000,0,NULL),(13,'1f379eb229c4d4b38b7ab55b1982645926da655d','da6dbd315cab18a1772dfb2bce5f3880d8483fa0',5,'user','draft',135828992,'/','descarga (2).jpg',2,8622,'image/jpeg',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:16:\"descarga (2).jpg\";}','Octavio André Guevara Salvatierra','unknown',1665086059,1665086059,0,NULL),(14,'da39a3ee5e6b4b0d3255bfef95601890afd80709','cb92586c84f05258904333b655f83441449648b4',5,'user','draft',135828992,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665086059,1665086059,0,NULL),(15,'a00442f203461777cdef25af61084ca9674ce9a1','d5dce06cf4352e473ea6f38cf65549590d35556b',1,'core','preview',0,'/thumb/','1f379eb229c4d4b38b7ab55b1982645926da655d',NULL,10279,'image/png',0,NULL,NULL,NULL,1665086060,1665086060,0,NULL),(17,'da39a3ee5e6b4b0d3255bfef95601890afd80709','568e9a3486938c9cdcbc04a4e4dc5574b5fe04fb',15,'course','overviewfiles',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665086059,1665086059,0,NULL),(18,'1f379eb229c4d4b38b7ab55b1982645926da655d','1eebe2785ba12722cb43b2638ac05e5d59673e0d',15,'course','overviewfiles',0,'/','descarga (2).jpg',2,8622,'image/jpeg',0,'descarga (2).jpg','Octavio André Guevara Salvatierra','unknown',1665086059,1665086064,0,NULL),(19,'24e8c3966ea73b28df5539740c875ea9b3aa4330','207e113c7dcddc86a6ad48f5077913e9e93218b4',5,'user','draft',792141321,'/','images (1).jpg',2,10687,'image/jpeg',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:14:\"images (1).jpg\";}','Octavio André Guevara Salvatierra','unknown',1665086112,1665086112,0,NULL),(20,'da39a3ee5e6b4b0d3255bfef95601890afd80709','b199cc4ca99f96bdd59fffb176b063db5a4e9a92',5,'user','draft',792141321,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665086112,1665086112,0,NULL),(21,'3cce135d183110b5aa69ae077f0b993d5584623c','333ce3394b33acc99761b1fd2e64f402fd0e5c57',1,'core','preview',0,'/thumb/','24e8c3966ea73b28df5539740c875ea9b3aa4330',NULL,8452,'image/png',0,NULL,NULL,NULL,1665086113,1665086113,0,NULL),(22,'24e8c3966ea73b28df5539740c875ea9b3aa4330','68d615e91964c6a46e90fe7cc11b83d1697488ca',19,'course','overviewfiles',0,'/','images (1).jpg',2,10687,'image/jpeg',0,'images (1).jpg','Octavio André Guevara Salvatierra','unknown',1665086112,1665086114,0,NULL),(23,'da39a3ee5e6b4b0d3255bfef95601890afd80709','a3da9056f2ee40dea86843f575d3c9a167b9862a',19,'course','overviewfiles',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665086112,1665086114,0,NULL),(24,'1eb5b512d5dc97168a59f4572c1e44dbae559eb7','148a6d1c8b01398db3aa3e62eb2a0666738b966e',5,'user','draft',31168159,'/','descarga.png',2,1320,'image/png',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:12:\"descarga.png\";}','Octavio André Guevara Salvatierra','unknown',1665095135,1665095135,0,NULL),(25,'da39a3ee5e6b4b0d3255bfef95601890afd80709','531ff9013068f71f2a3e3b43d5be7000e027516c',5,'user','draft',31168159,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665095135,1665095135,0,NULL),(27,'da39a3ee5e6b4b0d3255bfef95601890afd80709','8bbb7c6a1c5308b131b51e69da23db017289baa4',26,'mod_resource','content',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665095135,1665508305,0,NULL),(28,'24e8c3966ea73b28df5539740c875ea9b3aa4330','72516f30b0e745e6853fa92e333f402413e041fb',5,'user','draft',667322791,'/','images (1).jpg',2,10687,'image/jpeg',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:14:\"images (1).jpg\";}','Octavio André Guevara Salvatierra','unknown',1665097102,1665097102,0,NULL),(29,'da39a3ee5e6b4b0d3255bfef95601890afd80709','b143edac9c576d3e9d4aadf23f922d8159968725',5,'user','draft',667322791,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665097102,1665097102,0,NULL),(31,'da39a3ee5e6b4b0d3255bfef95601890afd80709','c35c44fbbe686bcb3d1bf564832d3e17bc811918',34,'mod_resource','content',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665097102,1665527279,0,NULL),(32,'1f379eb229c4d4b38b7ab55b1982645926da655d','89d04d4fb4aee5ec96bd78fbd0477c0e23bd533b',5,'user','draft',278396759,'/','descarga (2).jpg',2,8622,'image/jpeg',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:16:\"descarga (2).jpg\";}','Octavio André Guevara Salvatierra','unknown',1665101573,1665101573,0,NULL),(33,'da39a3ee5e6b4b0d3255bfef95601890afd80709','81fa04640ed1fab816bcd8fa40610a5b378ae261',5,'user','draft',278396759,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665101573,1665101573,0,NULL),(35,'da39a3ee5e6b4b0d3255bfef95601890afd80709','ff02303b147e16607a2a45f1c18027f5bbe32a76',43,'mod_resource','content',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665101573,1665530340,0,NULL),(36,'1eb5b512d5dc97168a59f4572c1e44dbae559eb7','4eb5e77e732ffb86f2137dd15be11d6511f6d515',5,'user','draft',504224463,'/','descarga.png',2,1320,'image/png',0,'O:8:\"stdClass\":2:{s:6:\"source\";s:12:\"descarga.png\";s:8:\"original\";s:224:\"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyMTtzOjk6ImNvbXBvbmVudCI7czo2OiJjb3Vyc2UiO3M6NjoiaXRlbWlkIjtpOjA7czo4OiJmaWxlYXJlYSI7czoxMzoib3ZlcnZpZXdmaWxlcyI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjEyOiJkZXNjYXJnYS5wbmciO30=\";}','Octavio André Guevara Salvatierra','unknown',1665085968,1665086000,0,NULL),(37,'da39a3ee5e6b4b0d3255bfef95601890afd80709','3713d5b224930ce1cf920d2589e9717074b65c38',5,'user','draft',504224463,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665101919,1665101919,0,NULL),(39,'da39a3ee5e6b4b0d3255bfef95601890afd80709','ebba7b94f920a0f02eb85cd9bd5554db5f6f2411',5,'user','draft',394956665,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665508305,1665508305,0,NULL),(40,'8b097dc1e8b4b7f0ca9c5ec82dad9f507d7ace45','f2309c5de10f48e7df36564a869b73695812fda0',5,'user','draft',394956665,'/','Introducción a JSON.pdf',2,658941,'application/pdf',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:24:\"Introducción a JSON.pdf\";}','Octavio André Guevara Salvatierra','unknown',1665508345,1665508345,0,NULL),(41,'8b097dc1e8b4b7f0ca9c5ec82dad9f507d7ace45','f93373cc616e2a93bcd28c31d5fefa19aa54ffe5',26,'mod_resource','content',0,'/','Introducción a JSON.pdf',2,658941,'application/pdf',0,'Introducción a JSON.pdf','Octavio André Guevara Salvatierra','unknown',1665508345,1665508350,1,NULL),(43,'da39a3ee5e6b4b0d3255bfef95601890afd80709','2b40ed3d0fef82e58b0b734d4e484e0e5e283fda',5,'user','draft',53822513,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665527279,1665527279,0,NULL),(44,'ef341b4cb435e951e5299b0f5ebfdf2a24227341','8f99097f6a1fa3db15ca8781d2ccf0bdb822be86',5,'user','draft',53822513,'/','XML Tutorial.pdf',2,383051,'application/pdf',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:16:\"XML Tutorial.pdf\";}','Octavio André Guevara Salvatierra','unknown',1665527329,1665527329,0,NULL),(45,'ef341b4cb435e951e5299b0f5ebfdf2a24227341','8b552537a829875fc6dca57feecb7a889273b9a6',34,'mod_resource','content',0,'/','XML Tutorial.pdf',2,383051,'application/pdf',0,'XML Tutorial.pdf','Octavio André Guevara Salvatierra','unknown',1665527329,1665527331,1,NULL),(46,'14f258addba5c0094bf32c4c510b760ecbeb076f','73cf3a938ed53be4497509ad94d5a28174eba788',5,'user','draft',598567918,'/','Ejemplo.xml',2,519,'application/xml',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:11:\"Ejemplo.xml\";}','Octavio André Guevara Salvatierra','unknown',1665528216,1665528216,0,NULL),(47,'da39a3ee5e6b4b0d3255bfef95601890afd80709','d2904d58b815c0f0a87ed73d5232cd1048e00f59',5,'user','draft',598567918,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528216,1665528216,0,NULL),(48,'14f258addba5c0094bf32c4c510b760ecbeb076f','cdec928245bb067ad308d1dd5432d1f37c52c667',37,'mod_assign','introattachment',0,'/','Ejemplo.xml',2,519,'application/xml',0,'Ejemplo.xml','Octavio André Guevara Salvatierra','unknown',1665528216,1665528220,0,NULL),(49,'da39a3ee5e6b4b0d3255bfef95601890afd80709','d72d4b55f91c91cf8ad8424d5e1e8845a398f30c',37,'mod_assign','introattachment',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528216,1665528793,0,NULL),(50,'ef341b4cb435e951e5299b0f5ebfdf2a24227341','b70f6b48232763350dbe8375a0c393d98e22ca93',5,'user','draft',166723391,'/','XML Tutorial.pdf',2,383051,'application/pdf',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:16:\"XML Tutorial.pdf\";}','Octavio André Guevara Salvatierra','unknown',1665528578,1665528578,0,NULL),(51,'da39a3ee5e6b4b0d3255bfef95601890afd80709','534e59cdcf1d9aaae4ef299272cee7f5bbe5a337',5,'user','draft',166723391,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528578,1665528578,0,NULL),(52,'ef341b4cb435e951e5299b0f5ebfdf2a24227341','9bb4880b924146716f275b37afdebaa929341f5e',52,'mod_assign','introattachment',0,'/','XML Tutorial.pdf',2,383051,'application/pdf',0,'XML Tutorial.pdf','Octavio André Guevara Salvatierra','unknown',1665528578,1665528630,0,NULL),(53,'da39a3ee5e6b4b0d3255bfef95601890afd80709','03b81dae8973958647394beb07e5166ae716b719',52,'mod_assign','introattachment',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528578,1665528630,0,NULL),(54,'14f258addba5c0094bf32c4c510b760ecbeb076f','2d0951d21564d3eacdc1c9d67cb197281f464011',5,'user','draft',832067241,'/','Ejemplo.xml',2,519,'application/xml',0,'O:8:\"stdClass\":2:{s:6:\"source\";s:11:\"Ejemplo.xml\";s:8:\"original\";s:232:\"YTo2OntzOjk6ImNvbnRleHRpZCI7aTozNztzOjk6ImNvbXBvbmVudCI7czoxMDoibW9kX2Fzc2lnbiI7czo2OiJpdGVtaWQiO2k6MDtzOjg6ImZpbGVhcmVhIjtzOjE1OiJpbnRyb2F0dGFjaG1lbnQiO3M6ODoiZmlsZXBhdGgiO3M6MToiLyI7czo4OiJmaWxlbmFtZSI7czoxMToiRWplbXBsby54bWwiO30=\";}','Octavio André Guevara Salvatierra','unknown',1665528216,1665528220,0,NULL),(55,'da39a3ee5e6b4b0d3255bfef95601890afd80709','3faf06b7a26407c9dc3c20691a67adf918d8af44',5,'user','draft',832067241,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528637,1665528637,0,NULL),(56,'14f258addba5c0094bf32c4c510b760ecbeb076f','ca132c0dc0786b2aef07b3086be3520ab8ccf7b7',5,'user','draft',612233422,'/','Ejemplo.xml',2,519,'application/xml',0,'O:8:\"stdClass\":2:{s:6:\"source\";s:11:\"Ejemplo.xml\";s:8:\"original\";s:232:\"YTo2OntzOjk6ImNvbnRleHRpZCI7aTozNztzOjk6ImNvbXBvbmVudCI7czoxMDoibW9kX2Fzc2lnbiI7czo2OiJpdGVtaWQiO2k6MDtzOjg6ImZpbGVhcmVhIjtzOjE1OiJpbnRyb2F0dGFjaG1lbnQiO3M6ODoiZmlsZXBhdGgiO3M6MToiLyI7czo4OiJmaWxlbmFtZSI7czoxMToiRWplbXBsby54bWwiO30=\";}','Octavio André Guevara Salvatierra','unknown',1665528216,1665528220,0,NULL),(57,'da39a3ee5e6b4b0d3255bfef95601890afd80709','14215e3b51d3eaa7973307725ccbd6eae8560d06',5,'user','draft',612233422,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528793,1665528793,0,NULL),(58,'ef341b4cb435e951e5299b0f5ebfdf2a24227341','69a0fba4df1287665fc9c9e2922c81e3c27f739c',5,'user','draft',75060163,'/','XML Tutorial.pdf',2,383051,'application/pdf',0,'O:8:\"stdClass\":2:{s:6:\"source\";s:16:\"XML Tutorial.pdf\";s:8:\"original\";s:240:\"YTo2OntzOjk6ImNvbnRleHRpZCI7aTo1MjtzOjk6ImNvbXBvbmVudCI7czoxMDoibW9kX2Fzc2lnbiI7czo2OiJpdGVtaWQiO2k6MDtzOjg6ImZpbGVhcmVhIjtzOjE1OiJpbnRyb2F0dGFjaG1lbnQiO3M6ODoiZmlsZXBhdGgiO3M6MToiLyI7czo4OiJmaWxlbmFtZSI7czoxNjoiWE1MIFR1dG9yaWFsLnBkZiI7fQ==\";}','Octavio André Guevara Salvatierra','unknown',1665528578,1665528630,0,NULL),(59,'da39a3ee5e6b4b0d3255bfef95601890afd80709','4721345fa42d808842f7414b417381e285941f8a',5,'user','draft',75060163,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665528823,1665528823,0,NULL),(61,'da39a3ee5e6b4b0d3255bfef95601890afd80709','2c390017185004607d03b009ac6a1eb55f332992',5,'user','draft',422575192,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665530340,1665530340,0,NULL),(62,'5b60b86f818f8416f5cd9e980bbb1da11e36f638','f5cdb745bb3f4dd7621ebda9f4824000bb5e6450',5,'user','draft',422575192,'/','php.pdf',2,72607,'application/pdf',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:7:\"php.pdf\";}','Octavio André Guevara Salvatierra','unknown',1665530352,1665530352,0,NULL),(63,'5b60b86f818f8416f5cd9e980bbb1da11e36f638','4249bd2afd838f4bb11522eb363576b95542dee7',43,'mod_resource','content',0,'/','php.pdf',2,72607,'application/pdf',0,'php.pdf','Octavio André Guevara Salvatierra','unknown',1665530352,1665530355,1,NULL),(64,'2844d722e599dcf310c2e0370541871cd93cdc46','55ef8845480b945a36fe9a7617d09d2346d183b2',5,'user','draft',414395202,'/','php.docx',2,13761,'application/vnd.openxmlformats-officedocument.wordprocessingml.document',0,'O:8:\"stdClass\":1:{s:6:\"source\";s:8:\"php.docx\";}','Octavio André Guevara Salvatierra','unknown',1665531354,1665531354,0,NULL),(65,'da39a3ee5e6b4b0d3255bfef95601890afd80709','9b1bab3251c122be6a5d428b87103370650255fe',5,'user','draft',414395202,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665531354,1665531354,0,NULL),(66,'2844d722e599dcf310c2e0370541871cd93cdc46','e381712ee1afbe2f111b85a85b912384d761d8bf',47,'mod_assign','introattachment',0,'/','php.docx',2,13761,'application/vnd.openxmlformats-officedocument.wordprocessingml.document',0,'php.docx','Octavio André Guevara Salvatierra','unknown',1665531354,1665531377,0,NULL),(67,'da39a3ee5e6b4b0d3255bfef95601890afd80709','61a3da17bd3d66599693360503413272a80a2507',47,'mod_assign','introattachment',0,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665531354,1665531377,0,NULL),(68,'2844d722e599dcf310c2e0370541871cd93cdc46','e03a9879bf3e230d8be36d37b5f093cb4621a37d',5,'user','draft',331904945,'/','php.docx',2,13761,'application/vnd.openxmlformats-officedocument.wordprocessingml.document',0,'O:8:\"stdClass\":2:{s:6:\"source\";s:8:\"php.docx\";s:8:\"original\";s:228:\"YTo2OntzOjk6ImNvbnRleHRpZCI7aTo0NztzOjk6ImNvbXBvbmVudCI7czoxMDoibW9kX2Fzc2lnbiI7czo2OiJpdGVtaWQiO2k6MDtzOjg6ImZpbGVhcmVhIjtzOjE1OiJpbnRyb2F0dGFjaG1lbnQiO3M6ODoiZmlsZXBhdGgiO3M6MToiLyI7czo4OiJmaWxlbmFtZSI7czo4OiJwaHAuZG9jeCI7fQ==\";}','Octavio André Guevara Salvatierra','unknown',1665531354,1665531377,0,NULL),(69,'da39a3ee5e6b4b0d3255bfef95601890afd80709','02320fc16e87d08e9c38467cbc5ef4e8ca8800f9',5,'user','draft',331904945,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665537298,1665537298,0,NULL),(70,'1eb5b512d5dc97168a59f4572c1e44dbae559eb7','f715e28170d328b902e726c619f4e229284c12ce',5,'user','draft',600066844,'/','descarga.png',2,1320,'image/png',0,'O:8:\"stdClass\":2:{s:6:\"source\";s:12:\"descarga.png\";s:8:\"original\";s:224:\"YTo2OntzOjk6ImNvbnRleHRpZCI7aToyMTtzOjk6ImNvbXBvbmVudCI7czo2OiJjb3Vyc2UiO3M6NjoiaXRlbWlkIjtpOjA7czo4OiJmaWxlYXJlYSI7czoxMzoib3ZlcnZpZXdmaWxlcyI7czo4OiJmaWxlcGF0aCI7czoxOiIvIjtzOjg6ImZpbGVuYW1lIjtzOjEyOiJkZXNjYXJnYS5wbmciO30=\";}','Octavio André Guevara Salvatierra','unknown',1665085968,1665086000,0,NULL),(71,'da39a3ee5e6b4b0d3255bfef95601890afd80709','c287a074f61daba88f7d932c3317ec1268a4fae0',5,'user','draft',600066844,'/','.',2,0,NULL,0,NULL,NULL,NULL,1665538069,1665538069,0,NULL);
/*!40000 ALTER TABLE `obd_files` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:12
