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
-- Table structure for table `obd_editor_atto_autosave`
--

DROP TABLE IF EXISTS `obd_editor_atto_autosave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obd_editor_atto_autosave` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `elementid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `contextid` bigint NOT NULL,
  `pagehash` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `userid` bigint NOT NULL,
  `drafttext` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `draftid` bigint DEFAULT NULL,
  `pageinstance` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `timemodified` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `obd_editattoauto_eleconuse_uix` (`elementid`,`contextid`,`userid`,`pagehash`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=COMPRESSED COMMENT='Draft text that is auto-saved every 5 seconds while an edito';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obd_editor_atto_autosave`
--

LOCK TABLES `obd_editor_atto_autosave` WRITE;
/*!40000 ALTER TABLE `obd_editor_atto_autosave` DISABLE KEYS */;
INSERT INTO `obd_editor_atto_autosave` VALUES (7,'id_description_editor',14,'47cf7d366839d9b701e332fa21945c4880c898e2',2,'',839387193,'yui_3_17_2_1_1665031143528_57',1665031144),(13,'id_introeditor',15,'ae98c78ecba9365a49e49aa3204281079c9923f4',2,'',758370783,'yui_3_17_2_1_1665032583148_57',1665032584),(20,'id_s__summary',1,'d698a94dd4342f2bd7def826b1ff26d912b2a68b',2,'',-1,'yui_3_17_2_1_1665101875842_46',1665101876),(25,'id_introeditor',2,'4a76080e67ea221d6da5ccc8c89671aba18286ca',2,'',689505222,'yui_3_17_2_1_1665085697852_56',1665085698),(26,'id_page',2,'4a76080e67ea221d6da5ccc8c89671aba18286ca',2,'',661769404,'yui_3_17_2_1_1665085697852_479',1665085698),(30,'id_message',22,'b6c8fe8aff892d9baa08a4e58c90f8d608c26ad8',2,'',421969394,'yui_3_17_2_1_1665087306675_47',1665087307),(33,'id_summary_editor',21,'c76165743201e108926ae01e4b17a1e4008ed727',2,'',158274826,'yui_3_17_2_1_1665087114713_57',1665087115),(34,'id_introeditor',22,'ea1f742003e658b020ff3c6ade21449de471521f',2,'',404278829,'yui_3_17_2_1_1665087132860_57',1665087133),(35,'id_introeditor',22,'fd2b40f4381cdf5a39a97c16dffaa14d37b77ea3',2,'',444756775,'yui_3_17_2_1_1665087139098_57',1665087140),(37,'id_introeditor',24,'30ddf784164accd2bda7dcfd74723e1af69b7060',2,'',242472593,'yui_3_17_2_1_1665087289628_57',1665087290),(57,'id_activityeditor',29,'90a0fd5c8bae48e6e86cba50519c969cc917daf8',2,'',607853690,'yui_3_17_2_1_1665095758162_482',1665095759),(66,'id_introeditor',21,'bbbae529fda3ad29b6d9071de5b67f51446c1078',2,'',336484572,'yui_3_17_2_1_1665096408929_57',1665096409),(183,'id_message',41,'f87b7f25991333c111416c9b5de439240081bafd',2,'',33881915,'yui_3_17_2_1_1665101439887_47',1665101440),(201,'id_introeditor',29,'c0914ec0c33b82c8c5000d26494cf64f84df6780',2,'<p dir=\"ltr\" style=\"text-align: left;\">Ejercicio XML<br></p>',NULL,'yui_3_17_2_1_1665509056743_59',1665509177),(208,'id_activityeditor',29,'f18e02416828a45e5052808d343c2f4a01e43a22',2,'<p dir=\"ltr\" style=\"text-align: left;\">En una planta de envasado de líquidos, disponen de 5 tipos de envases, 3 tipos de contenedores para\nempaquetar grupos de envases y 10 tipos de líquidos que pueden ser almacenados en los envases.\nSin embargo, hay ciertas restricciones en los líquidos que pueden ser almacenados en cada envase y\nlos tamaños de los envases hacen que no se pueda almacenar todos los envases en todos los\ncontenedores.\n• Tenemos contenedores:\n◦ Grandes, acepta envases grandes\n◦ Medianos, no acepta envases grandes\n◦ Verticales, acepta envases altos\n• Tenemos envases:\n◦ Grande ancho, válido para alimentos\n◦ Grande alto, válido para alimentos\n◦ Mediano ancho, válido para alimentos\n◦ Mediano alto, resistente a sustancias corrosivas\n◦ Pequeño, resistente a sustancias corrosivas\n• Tenemos líquidos:\n◦ Agua\n◦ Leche\n◦ Lejía\n◦ Amoniaco\n◦ Jabón\n◦ Aguarrás\n◦ Gasolina\n◦ Aceite\n◦ Vinagre\n◦ Alcohol</p><p dir=\"ltr\" style=\"text-align: left;\">&nbsp;Para estos líquidos, envases y contenedores, crear un fichero JSON\nque represente esta información relativa a lo que puede ser almacenado en cada uno de los tres\nniveles.<br></p>',54407148,'yui_3_17_2_1_1665512035120_482',1665512036),(213,'id_introeditor',31,'277bf56a68273e6e99362f8738c149650e33103a',2,'',528526513,'yui_3_17_2_1_1665510573096_58',1665510573),(284,'id_questiontext',21,'3d4b19227b2e9ea0869d0f58aac7cd0b41f53144',2,'',141368856,'yui_3_17_2_1_1665511740099_58',1665511740),(285,'id_generalfeedback',21,'872bac9dfcebf02f7fa874f16f77b448bea19450',2,'',662793907,'yui_3_17_2_1_1665511740099_482',1665511740),(286,'id_feedbacktrue',21,'872bac9dfcebf02f7fa874f16f77b448bea19450',2,'',462253163,'yui_3_17_2_1_1665511740099_870',1665511740),(287,'id_feedbackfalse',21,'872bac9dfcebf02f7fa874f16f77b448bea19450',2,'',425455792,'yui_3_17_2_1_1665511740099_1258',1665511740),(300,'id_introeditor',29,'2c27bd4008cbabb38ac88759dce10c55c884e9f2',2,'',582189327,'yui_3_17_2_1_1665513415332_78',1665513417),(301,'id_activityeditor',29,'cdbed3058c23ac85453e6a1113193228f0f2886d',2,'',112522205,'yui_3_17_2_1_1665513415332_501',1665513417),(306,'id_introeditor',38,'007e2d89d700b5792422518d4f30910e247deecc',2,'',325897229,'yui_3_17_2_1_1665528775485_70',1665528776),(307,'id_feedbacktext_0',38,'007e2d89d700b5792422518d4f30910e247deecc',2,'',177434398,'yui_3_17_2_1_1665528775485_657',1665528777),(308,'id_introeditor',50,'2bbbd979a80a9976877c2c61d78c9beb3f76630e',2,'',699929725,'yui_3_17_2_1_1665513439292_59',1665513440),(309,'id_activityeditor',50,'82b41aa2f30f3f40c10ea2afe5e74b2257728cfb',2,'',518127737,'yui_3_17_2_1_1665513439292_482',1665513440),(310,'id_introeditor',38,'88a884c601f7614831f543015313f48f7d736959',2,'',852902339,'yui_3_17_2_1_1665513462607_70',1665513463),(311,'id_feedbacktext_0',38,'88a884c601f7614831f543015313f48f7d736959',2,'',857728919,'yui_3_17_2_1_1665513462607_654',1665513464),(318,'id_description_editor',18,'404f071238cff56c354814fc5de7af4d65b59abb',2,'',155203726,'yui_3_17_2_1_1665513922780_58',1665513923),(330,'id_introeditor',29,'fe1678b10d626d0d15febe6db99e8ce07f33ef98',2,'',54624525,'yui_3_17_2_1_1665528742916_59',1665528745),(331,'id_activityeditor',29,'0a743b0af9bdc2f25b869b549d7b0c04b5372af5',2,'',260249876,'yui_3_17_2_1_1665528742916_482',1665528745),(334,'id_introeditor',52,'e88738a1a67d540f246a790b0d2078d72fb8317f',2,'',756597794,'yui_3_17_2_1_1665528823630_59',1665528825),(335,'id_activityeditor',52,'42632a626b00ba4c4ea9d6c699b760ae5a44ca37',2,'',97343735,'yui_3_17_2_1_1665528823630_482',1665528825),(336,'id_introeditor',40,'eb9145b1c4b53dc66568d87ddf2fc55ad70b40cd',2,'',893958101,'yui_3_17_2_1_1665528838100_70',1665528839),(376,'id_introeditor',49,'8997413adad3905549c0a7e4fdc13d25e18a7037',2,'',202879896,'yui_3_17_2_1_1665537508480_70',1665537509),(377,'id_feedbacktext_0',49,'8997413adad3905549c0a7e4fdc13d25e18a7037',2,'',807660172,'yui_3_17_2_1_1665537508480_657',1665537511),(408,'id_introeditor',47,'d122ccc121cf9c0c6ad87784f023ea75fab92037',2,'',254101044,'yui_3_17_2_1_1665537298779_59',1665537299),(409,'id_activityeditor',47,'d3d24cade867cda68369826234ea6e2596ebb18f',2,'',105782670,'yui_3_17_2_1_1665537298779_482',1665537299),(410,'id_introeditor',49,'b240bc14eba1b49357b645d9d83d99820efbb92a',2,'',952820571,'yui_3_17_2_1_1665537520948_70',1665537521),(411,'id_feedbacktext_0',49,'b240bc14eba1b49357b645d9d83d99820efbb92a',2,'',826820461,'yui_3_17_2_1_1665537520948_658',1665537523),(412,'id_introeditor',53,'c4af59ef83981e01015c2b3cd758ba626e81e2aa',2,'',842663478,'yui_3_17_2_1_1665537496401_59',1665537497),(413,'id_activityeditor',53,'b2dd7d9877d6d65e5bed09701635765c4f3ede4f',2,'',734649827,'yui_3_17_2_1_1665537496401_482',1665537497),(414,'id_introeditor',53,'6d3ab176175b0d19873267460ba50216d56278e6',2,'',944641173,'yui_3_17_2_1_1665537557283_59',1665537558),(415,'id_activityeditor',53,'5ab4eb43a09c21cbb724ab91c9f630bbbf6385d1',2,'',639856123,'yui_3_17_2_1_1665537557283_482',1665537558),(416,'id_summary_editor',21,'35f9abd6da34e9b940ebab1aa18fb8ce649704de',2,'',532988279,'yui_3_17_2_1_1665538070513_210',1665538073);
/*!40000 ALTER TABLE `obd_editor_atto_autosave` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-11 19:38:19
