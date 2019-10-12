-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mysite_db
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$PfBEkbFwL7UY$Sk+3MK3JOAdBLt3yFH9LsoHujQpui3U0bqIefavJUEE=','2019-04-19 01:08:43.529000',1,'diao','','','',1,1,'2019-04-17 03:06:15.993000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-19 01:15:31.634000','13','wfertgfdhgh\r\nfhgfgjnbj\r\ngvjhtyig',1,'[{\"added\": {}}]',7,1),(2,'2019-04-19 01:16:49.655000','12','3',3,'',7,1),(3,'2019-04-19 01:16:49.743000','11','3',3,'',7,1),(4,'2019-04-19 01:16:49.828000','10','',3,'',7,1),(5,'2019-04-19 01:16:49.918000','9','',3,'',7,1),(6,'2019-04-19 01:16:50.001000','8','',3,'',7,1),(7,'2019-04-19 01:16:50.093000','7','',3,'',7,1),(8,'2019-04-19 01:16:50.187000','6','',3,'',7,1),(9,'2019-04-19 01:16:50.259000','5','',3,'',7,1),(10,'2019-04-19 01:16:50.359000','4','',3,'',7,1),(11,'2019-04-19 01:16:50.499000','3','',3,'',7,1),(12,'2019-04-19 01:16:50.576000','2','',3,'',7,1),(13,'2019-04-19 01:16:50.645000','1','',3,'',7,1),(14,'2019-04-23 08:48:56.822000','114','Predict object (114)',3,'',7,1),(15,'2019-04-23 08:48:56.927000','113','Predict object (113)',3,'',7,1),(16,'2019-04-23 08:48:56.994000','112','Predict object (112)',3,'',7,1),(17,'2019-04-23 08:48:57.061000','111','Predict object (111)',3,'',7,1),(18,'2019-04-23 08:48:57.137000','110','Predict object (110)',3,'',7,1),(19,'2019-04-23 08:48:57.210000','109','Predict object (109)',3,'',7,1),(20,'2019-04-23 08:48:57.303000','108','Predict object (108)',3,'',7,1),(21,'2019-04-23 08:48:57.386000','107','Predict object (107)',3,'',7,1),(22,'2019-04-23 08:48:57.469000','106','Predict object (106)',3,'',7,1),(23,'2019-04-23 08:48:57.577000','105','Predict object (105)',3,'',7,1),(24,'2019-04-23 08:48:57.644000','104','Predict object (104)',3,'',7,1),(25,'2019-04-23 08:48:57.727000','103','Predict object (103)',3,'',7,1),(26,'2019-04-23 08:48:57.802000','102','Predict object (102)',3,'',7,1),(27,'2019-04-23 08:48:57.878000','101','Predict object (101)',3,'',7,1),(28,'2019-04-23 08:48:57.952000','100','Predict object (100)',3,'',7,1),(29,'2019-04-23 08:48:58.027000','99','Predict object (99)',3,'',7,1),(30,'2019-04-23 08:48:58.123000','98','Predict object (98)',3,'',7,1),(31,'2019-04-23 08:48:58.194000','97','Predict object (97)',3,'',7,1),(32,'2019-04-23 08:48:58.270000','96','Predict object (96)',3,'',7,1),(33,'2019-04-23 08:48:58.373000','95','Predict object (95)',3,'',7,1),(34,'2019-04-23 08:48:58.486000','94','Predict object (94)',3,'',7,1),(35,'2019-04-23 08:48:58.583000','93','Predict object (93)',3,'',7,1),(36,'2019-04-23 08:48:58.663000','92','Predict object (92)',3,'',7,1),(37,'2019-04-23 08:48:58.767000','91','Predict object (91)',3,'',7,1),(38,'2019-04-23 08:48:58.877000','90','Predict object (90)',3,'',7,1),(39,'2019-04-23 08:48:58.995000','89','Predict object (89)',3,'',7,1),(40,'2019-04-23 08:48:59.120000','88','Predict object (88)',3,'',7,1),(41,'2019-04-23 08:48:59.211000','87','Predict object (87)',3,'',7,1),(42,'2019-04-23 08:48:59.286000','86','Predict object (86)',3,'',7,1),(43,'2019-04-23 08:48:59.370000','85','Predict object (85)',3,'',7,1),(44,'2019-04-23 08:48:59.462000','84','Predict object (84)',3,'',7,1),(45,'2019-04-23 08:48:59.552000','83','Predict object (83)',3,'',7,1),(46,'2019-04-23 08:48:59.653000','82','Predict object (82)',3,'',7,1),(47,'2019-04-23 08:48:59.787000','81','Predict object (81)',3,'',7,1),(48,'2019-04-23 08:48:59.862000','80','Predict object (80)',3,'',7,1),(49,'2019-04-23 08:48:59.970000','79','Predict object (79)',3,'',7,1),(50,'2019-04-23 08:49:00.045000','78','Predict object (78)',3,'',7,1),(51,'2019-04-23 08:49:00.120000','77','Predict object (77)',3,'',7,1),(52,'2019-04-23 08:49:00.228000','76','Predict object (76)',3,'',7,1),(53,'2019-04-23 08:49:00.300000','75','Predict object (75)',3,'',7,1),(54,'2019-04-23 08:49:00.395000','74','Predict object (74)',3,'',7,1),(55,'2019-04-23 08:49:00.512000','73','Predict object (73)',3,'',7,1),(56,'2019-04-23 08:49:00.578000','72','Predict object (72)',3,'',7,1),(57,'2019-04-23 08:49:00.687000','71','Predict object (71)',3,'',7,1),(58,'2019-04-23 08:49:00.770000','70','Predict object (70)',3,'',7,1),(59,'2019-04-23 08:49:00.862000','69','Predict object (69)',3,'',7,1),(60,'2019-04-23 08:49:00.970000','68','Predict object (68)',3,'',7,1),(61,'2019-04-23 08:49:01.062000','67','Predict object (67)',3,'',7,1),(62,'2019-04-23 08:49:01.145000','66','Predict object (66)',3,'',7,1),(63,'2019-04-23 08:49:01.287000','65','Predict object (65)',3,'',7,1),(64,'2019-04-23 08:49:01.430000','64','Predict object (64)',3,'',7,1),(65,'2019-04-23 08:49:01.495000','63','Predict object (63)',3,'',7,1),(66,'2019-04-23 08:49:01.629000','62','Predict object (62)',3,'',7,1),(67,'2019-04-23 08:49:01.695000','61','Predict object (61)',3,'',7,1),(68,'2019-04-23 08:49:01.787000','60','Predict object (60)',3,'',7,1),(69,'2019-04-23 08:49:01.888000','59','Predict object (59)',3,'',7,1),(70,'2019-04-23 08:49:01.983000','58','Predict object (58)',3,'',7,1),(71,'2019-04-23 08:49:02.057000','57','Predict object (57)',3,'',7,1),(72,'2019-04-23 08:49:02.140000','56','Predict object (56)',3,'',7,1),(73,'2019-04-23 08:49:02.274000','55','Predict object (55)',3,'',7,1),(74,'2019-04-23 08:49:02.358000','54','Predict object (54)',3,'',7,1),(75,'2019-04-23 08:49:02.457000','53','Predict object (53)',3,'',7,1),(76,'2019-04-23 08:49:02.583000','52','Predict object (52)',3,'',7,1),(77,'2019-04-23 08:49:02.649000','51','Predict object (51)',3,'',7,1),(78,'2019-04-23 08:49:02.763000','50','Predict object (50)',3,'',7,1),(79,'2019-04-23 08:49:02.840000','49','Predict object (49)',3,'',7,1),(80,'2019-04-23 08:49:02.929000','48','Predict object (48)',3,'',7,1),(81,'2019-04-23 08:49:03.008000','47','Predict object (47)',3,'',7,1),(82,'2019-04-23 08:49:03.118000','46','Predict object (46)',3,'',7,1),(83,'2019-04-23 08:49:03.213000','45','Predict object (45)',3,'',7,1),(84,'2019-04-23 08:49:03.308000','44','Predict object (44)',3,'',7,1),(85,'2019-04-23 08:49:03.392000','43','Predict object (43)',3,'',7,1),(86,'2019-04-23 08:49:03.489000','42','Predict object (42)',3,'',7,1),(87,'2019-04-23 08:49:03.592000','41','Predict object (41)',3,'',7,1),(88,'2019-04-23 08:49:03.691000','40','Predict object (40)',3,'',7,1),(89,'2019-04-23 08:49:03.863000','39','Predict object (39)',3,'',7,1),(90,'2019-04-23 08:49:03.963000','38','Predict object (38)',3,'',7,1),(91,'2019-04-23 08:49:04.066000','37','Predict object (37)',3,'',7,1),(92,'2019-04-23 08:49:04.138000','36','Predict object (36)',3,'',7,1),(93,'2019-04-23 08:49:04.259000','35','Predict object (35)',3,'',7,1),(94,'2019-04-23 08:49:04.397000','34','Predict object (34)',3,'',7,1),(95,'2019-04-23 08:49:04.525000','33','Predict object (33)',3,'',7,1),(96,'2019-04-23 08:49:04.625000','32','Predict object (32)',3,'',7,1),(97,'2019-04-23 08:49:04.741000','31','Predict object (31)',3,'',7,1),(98,'2019-04-23 08:49:04.883000','30','Predict object (30)',3,'',7,1),(99,'2019-04-23 08:49:04.984000','29','Predict object (29)',3,'',7,1),(100,'2019-04-23 08:49:05.075000','28','Predict object (28)',3,'',7,1),(101,'2019-04-23 08:49:05.158000','27','Predict object (27)',3,'',7,1),(102,'2019-04-23 08:49:05.267000','26','Predict object (26)',3,'',7,1),(103,'2019-04-23 08:49:05.375000','25','Predict object (25)',3,'',7,1),(104,'2019-04-23 08:49:05.489000','24','Predict object (24)',3,'',7,1),(105,'2019-04-23 08:49:05.639000','23','Predict object (23)',3,'',7,1),(106,'2019-04-23 08:49:05.750000','22','Predict object (22)',3,'',7,1),(107,'2019-04-23 08:49:05.859000','21','Predict object (21)',3,'',7,1),(108,'2019-04-23 08:49:05.967000','20','Predict object (20)',3,'',7,1),(109,'2019-04-23 08:49:06.067000','19','Predict object (19)',3,'',7,1),(110,'2019-04-23 08:49:06.185000','18','Predict object (18)',3,'',7,1),(111,'2019-04-23 08:49:06.275000','17','Predict object (17)',3,'',7,1),(112,'2019-04-23 08:49:06.426000','16','Predict object (16)',3,'',7,1),(113,'2019-04-23 08:49:06.583000','15','Predict object (15)',3,'',7,1),(114,'2019-04-23 08:49:17.866000','14','Predict object (14)',3,'',7,1),(115,'2019-04-23 08:49:17.963000','13','Predict object (13)',3,'',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'predict','predict'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-10-11 01:54:32.466869'),(2,'auth','0001_initial','2019-10-11 01:54:40.995917'),(3,'admin','0001_initial','2019-10-11 01:54:43.859945'),(4,'admin','0002_logentry_remove_auto_add','2019-10-11 01:54:43.943693'),(5,'contenttypes','0002_remove_content_type_name','2019-10-11 01:54:45.697499'),(6,'auth','0002_alter_permission_name_max_length','2019-10-11 01:54:46.638980'),(7,'auth','0003_alter_user_email_max_length','2019-10-11 01:54:46.889368'),(8,'auth','0004_alter_user_username_opts','2019-10-11 01:54:46.960179'),(9,'auth','0005_alter_user_last_login_null','2019-10-11 01:54:48.065931'),(10,'auth','0006_require_contenttypes_0002','2019-10-11 01:54:48.174766'),(11,'auth','0007_alter_validators_add_error_messages','2019-10-11 01:54:48.271507'),(12,'auth','0008_alter_user_username_max_length','2019-10-11 01:54:50.295374'),(13,'auth','0009_alter_user_last_name_max_length','2019-10-11 01:54:51.426092'),(14,'predict','0001_initial','2019-10-11 01:54:51.865915'),(15,'sessions','0001_initial','2019-10-11 01:54:52.466309');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('9tjk8z15c0yw3lablaxpemyl7a9j3sbt','NjhmOGRhZjQwMjI1NmNmMTJjYTNiZTA1NWQ5ZDBmMDcwZTI5MTM4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOTQ5ODhiMGE0ZTE2ZTM5Y2NhNzZhZWY4ZTk5MGNkYTMwZGUyYzBmIn0=','2019-05-03 01:08:43.610000'),('q3afinpsdrzx3vjd16cqdtahq5fagab5','NjhmOGRhZjQwMjI1NmNmMTJjYTNiZTA1NWQ5ZDBmMDcwZTI5MTM4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyOTQ5ODhiMGE0ZTE2ZTM5Y2NhNzZhZWY4ZTk5MGNkYTMwZGUyYzBmIn0=','2019-05-02 06:50:16.794000');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predict_predict`
--

DROP TABLE IF EXISTS `predict_predict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `predict_predict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predict_predict`
--

LOCK TABLES `predict_predict` WRITE;
/*!40000 ALTER TABLE `predict_predict` DISABLE KEYS */;
INSERT INTO `predict_predict` VALUES (115,'wet');
/*!40000 ALTER TABLE `predict_predict` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-12 10:19:44
