-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: my_hospital
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add admin',7,'add_admin'),(26,'Can change admin',7,'change_admin'),(27,'Can delete admin',7,'delete_admin'),(28,'Can view admin',7,'view_admin'),(29,'Can add hospital',8,'add_hospital'),(30,'Can change hospital',8,'change_hospital'),(31,'Can delete hospital',8,'delete_hospital'),(32,'Can view hospital',8,'view_hospital'),(33,'Can add ward',9,'add_ward'),(34,'Can change ward',9,'change_ward'),(35,'Can delete ward',9,'delete_ward'),(36,'Can view ward',9,'view_ward'),(37,'Can add bed',10,'add_bed'),(38,'Can change bed',10,'change_bed'),(39,'Can delete bed',10,'delete_bed'),(40,'Can view bed',10,'view_bed'),(41,'Can add hospital fee settings',11,'add_hospitalfeesettings'),(42,'Can change hospital fee settings',11,'change_hospitalfeesettings'),(43,'Can delete hospital fee settings',11,'delete_hospitalfeesettings'),(44,'Can view hospital fee settings',11,'view_hospitalfeesettings'),(45,'Can add hospital service',12,'add_hospitalservice'),(46,'Can change hospital service',12,'change_hospitalservice'),(47,'Can delete hospital service',12,'delete_hospitalservice'),(48,'Can view hospital service',12,'view_hospitalservice'),(49,'Can add hospital department',13,'add_hospitaldepartment'),(50,'Can change hospital department',13,'change_hospitaldepartment'),(51,'Can delete hospital department',13,'delete_hospitaldepartment'),(52,'Can view hospital department',13,'view_hospitaldepartment'),(53,'Can add hospital facility',14,'add_hospitalfacility'),(54,'Can change hospital facility',14,'change_hospitalfacility'),(55,'Can delete hospital facility',14,'delete_hospitalfacility'),(56,'Can view hospital facility',14,'view_hospitalfacility'),(57,'Can add hospital patient',15,'add_hospitalpatient'),(58,'Can change hospital patient',15,'change_hospitalpatient'),(59,'Can delete hospital patient',15,'delete_hospitalpatient'),(60,'Can view hospital patient',15,'view_hospitalpatient'),(61,'Can add doctor specialist category',16,'add_doctorspecialistcategory'),(62,'Can change doctor specialist category',16,'change_doctorspecialistcategory'),(63,'Can delete doctor specialist category',16,'delete_doctorspecialistcategory'),(64,'Can view doctor specialist category',16,'view_doctorspecialistcategory'),(65,'Can add symptom',17,'add_symptom'),(66,'Can change symptom',17,'change_symptom'),(67,'Can delete symptom',17,'delete_symptom'),(68,'Can view symptom',17,'view_symptom'),(69,'Can add doctor details',18,'add_doctordetails'),(70,'Can change doctor details',18,'change_doctordetails'),(71,'Can delete doctor details',18,'delete_doctordetails'),(72,'Can view doctor details',18,'view_doctordetails'),(73,'Can add hospital doctors',19,'add_hospitaldoctors'),(74,'Can change hospital doctors',19,'change_hospitaldoctors'),(75,'Can delete hospital doctors',19,'delete_hospitaldoctors'),(76,'Can view hospital doctors',19,'view_hospitaldoctors'),(77,'Can add insurance',20,'add_insurance'),(78,'Can change insurance',20,'change_insurance'),(79,'Can delete insurance',20,'delete_insurance'),(80,'Can view insurance',20,'view_insurance'),(81,'Can add hospital insurance',21,'add_hospitalinsurance'),(82,'Can change hospital insurance',21,'change_hospitalinsurance'),(83,'Can delete hospital insurance',21,'delete_hospitalinsurance'),(84,'Can view hospital insurance',21,'view_hospitalinsurance'),(85,'Can add bed booking',22,'add_bedbooking'),(86,'Can change bed booking',22,'change_bedbooking'),(87,'Can delete bed booking',22,'delete_bedbooking'),(88,'Can view bed booking',22,'view_bedbooking'),(89,'Can add customer',23,'add_customer'),(90,'Can change customer',23,'change_customer'),(91,'Can delete customer',23,'delete_customer'),(92,'Can view customer',23,'view_customer'),(93,'Can add blacklisted token',24,'add_blacklistedtoken'),(94,'Can change blacklisted token',24,'change_blacklistedtoken'),(95,'Can delete blacklisted token',24,'delete_blacklistedtoken'),(96,'Can view blacklisted token',24,'view_blacklistedtoken'),(97,'Can add outstanding token',25,'add_outstandingtoken'),(98,'Can change outstanding token',25,'change_outstandingtoken'),(99,'Can delete outstanding token',25,'delete_outstandingtoken'),(100,'Can view outstanding token',25,'view_outstandingtoken'),(101,'Can add bed status',26,'add_bedstatus'),(102,'Can change bed status',26,'change_bedstatus'),(103,'Can delete bed status',26,'delete_bedstatus'),(104,'Can view bed status',26,'view_bedstatus'),(105,'Can add Token',27,'add_token'),(106,'Can change Token',27,'change_token'),(107,'Can delete Token',27,'delete_token'),(108,'Can view Token',27,'view_token'),(109,'Can add Token',28,'add_tokenproxy'),(110,'Can change Token',28,'change_tokenproxy'),(111,'Can delete Token',28,'delete_tokenproxy'),(112,'Can view Token',28,'view_tokenproxy'),(113,'Can add hospital image',29,'add_hospitalimage'),(114,'Can change hospital image',29,'change_hospitalimage'),(115,'Can delete hospital image',29,'delete_hospitalimage'),(116,'Can view hospital image',29,'view_hospitalimage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bed_bookings`
--

DROP TABLE IF EXISTS `bed_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bed_bookings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer` int NOT NULL,
  `ward_type` varchar(255) NOT NULL,
  `bed_type` varchar(255) NOT NULL,
  `booking_type` varchar(255) NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `age` int NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `emergency_contact` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) NOT NULL,
  `medical_history` longtext,
  `booking_reason` varchar(255) NOT NULL,
  `insurance_info` longtext,
  `admission_date` date NOT NULL,
  `discharge_date` date DEFAULT NULL,
  `booking_date` datetime(6) NOT NULL,
  `time_slot` time(6) DEFAULT NULL,
  `notes` longtext,
  `status` varchar(10) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `doctor_assigned_id` bigint DEFAULT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bed_bookings_doctor_assigned_id_d7c02d79_fk_doctor_do` (`doctor_assigned_id`),
  KEY `bed_bookings_hospital_id_999a5640_fk_hospital_hospital_id` (`hospital_id`),
  CONSTRAINT `bed_bookings_doctor_assigned_id_d7c02d79_fk_doctor_do` FOREIGN KEY (`doctor_assigned_id`) REFERENCES `doctor_doctordetails` (`id`),
  CONSTRAINT `bed_bookings_hospital_id_999a5640_fk_hospital_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bed_bookings`
--

LOCK TABLES `bed_bookings` WRITE;
/*!40000 ALTER TABLE `bed_bookings` DISABLE KEYS */;
INSERT INTO `bed_bookings` VALUES (8,1,'General Ward','Single Bed','clinic_visit','Umesh Prajapati','umesh@example.com',25,'9864939226','Neeraj, 9887934512','AB+','Diabetes, Hypertension','Scheduled Surgery','XYZ Health Insurance, Policy #123456789','2024-08-26',NULL,'2024-07-16 18:30:00.000000','12:45:00.000000','Requires special monitoring for blood sugar levels.','accepted','2024-08-31 09:37:35.058252','2024-09-03 10:51:55.406926',NULL,1);
/*!40000 ALTER TABLE `bed_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(27,'authtoken','token'),(28,'authtoken','tokenproxy'),(5,'contenttypes','contenttype'),(18,'doctor','doctordetails'),(16,'doctor','doctorspecialistcategory'),(17,'doctor','symptom'),(7,'hospital','admin'),(10,'hospital','bed'),(22,'hospital','bedbooking'),(26,'hospital','bedstatus'),(23,'hospital','customer'),(8,'hospital','hospital'),(13,'hospital','hospitaldepartment'),(19,'hospital','hospitaldoctors'),(14,'hospital','hospitalfacility'),(11,'hospital','hospitalfeesettings'),(29,'hospital','hospitalimage'),(21,'hospital','hospitalinsurance'),(15,'hospital','hospitalpatient'),(12,'hospital','hospitalservice'),(20,'hospital','insurance'),(9,'hospital','ward'),(6,'sessions','session'),(24,'token_blacklist','blacklistedtoken'),(25,'token_blacklist','outstandingtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-20 12:19:10.848193'),(2,'auth','0001_initial','2024-08-20 12:19:11.976544'),(3,'admin','0001_initial','2024-08-20 12:19:12.240394'),(4,'admin','0002_logentry_remove_auto_add','2024-08-20 12:19:12.263379'),(5,'admin','0003_logentry_add_action_flag_choices','2024-08-20 12:19:12.281367'),(6,'contenttypes','0002_remove_content_type_name','2024-08-20 12:19:12.459265'),(7,'auth','0002_alter_permission_name_max_length','2024-08-20 12:19:12.568204'),(8,'auth','0003_alter_user_email_max_length','2024-08-20 12:19:12.626170'),(9,'auth','0004_alter_user_username_opts','2024-08-20 12:19:12.644163'),(10,'auth','0005_alter_user_last_login_null','2024-08-20 12:19:12.780082'),(11,'auth','0006_require_contenttypes_0002','2024-08-20 12:19:12.790077'),(12,'auth','0007_alter_validators_add_error_messages','2024-08-20 12:19:12.811062'),(13,'auth','0008_alter_user_username_max_length','2024-08-20 12:19:12.949986'),(14,'auth','0009_alter_user_last_name_max_length','2024-08-20 12:19:13.084909'),(15,'auth','0010_alter_group_name_max_length','2024-08-20 12:19:13.135879'),(16,'auth','0011_update_proxy_permissions','2024-08-20 12:19:13.185849'),(17,'auth','0012_alter_user_first_name_max_length','2024-08-20 12:19:13.318773'),(18,'sessions','0001_initial','2024-08-20 12:19:13.421714'),(19,'hospital','0001_initial','2024-08-20 12:20:23.486784'),(20,'doctor','0001_initial','2024-08-20 12:20:51.243703'),(21,'hospital','0002_hospitaldoctors','2024-08-23 10:05:16.209909'),(22,'hospital','0003_insurance','2024-08-23 13:13:28.069272'),(23,'hospital','0004_alter_insurance_insurance_link','2024-08-23 13:33:05.107811'),(24,'hospital','0005_hospitalinsurance','2024-08-24 07:01:46.993678'),(25,'hospital','0006_bedbooking','2024-08-26 11:36:16.705849'),(26,'hospital','0007_alter_bedbooking_customer_alter_bedbooking_status','2024-08-31 09:29:30.537273'),(27,'hospital','0008_alter_bedbooking_customer','2024-08-31 09:29:30.632875'),(28,'hospital','0009_alter_bedbooking_status','2024-08-31 09:34:14.284895'),(29,'hospital','0010_alter_bedbooking_status','2024-08-31 09:36:51.979771'),(30,'hospital','0011_customer','2024-09-03 06:34:18.124991'),(31,'hospital','0012_remove_customer_phone_with_code_and_more','2024-09-03 07:30:21.439112'),(32,'token_blacklist','0001_initial','2024-09-03 11:26:55.023787'),(33,'token_blacklist','0002_outstandingtoken_jti_hex','2024-09-03 11:26:55.074382'),(34,'token_blacklist','0003_auto_20171017_2007','2024-09-03 11:26:55.121397'),(35,'token_blacklist','0004_auto_20171017_2013','2024-09-03 11:26:55.284069'),(36,'token_blacklist','0005_remove_outstandingtoken_jti','2024-09-03 11:26:55.407997'),(37,'token_blacklist','0006_auto_20171017_2113','2024-09-03 11:26:55.465457'),(38,'token_blacklist','0007_auto_20171017_2214','2024-09-03 11:26:55.839648'),(39,'token_blacklist','0008_migrate_to_bigautofield','2024-09-03 11:26:56.238788'),(40,'token_blacklist','0010_fix_migrate_to_bigautofield','2024-09-03 11:26:56.264774'),(41,'token_blacklist','0011_linearizes_history','2024-09-03 11:26:56.270809'),(42,'token_blacklist','0012_alter_outstandingtoken_user','2024-09-03 11:26:56.289710'),(43,'hospital','0013_bedstatus','2024-09-05 13:21:24.235065'),(44,'authtoken','0001_initial','2024-09-10 06:48:36.356964'),(45,'authtoken','0002_auto_20160226_1747','2024-09-10 06:48:36.421340'),(46,'authtoken','0003_tokenproxy','2024-09-10 06:48:36.430905'),(47,'authtoken','0004_alter_tokenproxy_options','2024-09-10 06:48:36.446304'),(48,'hospital','0014_alter_customer_password_alter_customer_phone_number','2024-09-10 07:45:58.343061'),(49,'hospital','0015_customer_groups_customer_is_superuser_and_more','2024-09-10 07:58:24.533322'),(50,'hospital','0016_rename_create_at_admin_created_at_customer_is_active_and_more','2024-09-10 09:29:34.250293'),(51,'hospital','0017_alter_customer_email_alter_customer_phone_number','2024-09-10 10:35:21.553363'),(52,'hospital','0018_alter_hospital_latitude_alter_hospital_longitude_and_more','2024-09-11 05:41:00.053254'),(53,'hospital','0019_delete_admin_delete_customer','2024-09-13 10:29:51.030569'),(54,'hospital','0020_customer','2024-09-13 10:29:51.745398'),(55,'hospital','0021_admin','2024-09-16 07:18:04.289383');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_doctordetails`
--

DROP TABLE IF EXISTS `doctor_doctordetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_doctordetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dr_name` varchar(255) NOT NULL,
  `dr_unique_code` varchar(50) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `profile_img` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(128) NOT NULL,
  `dr_username` varchar(100) NOT NULL,
  `experience` int unsigned NOT NULL,
  `sub_specialist` varchar(100) DEFAULT NULL,
  `additional_qualification` longtext,
  `rating` decimal(3,2) NOT NULL,
  `overall_ratings` double NOT NULL,
  `document_update_status` int NOT NULL,
  `document_approve_status` varchar(1) NOT NULL,
  `profile_status` varchar(1) NOT NULL,
  `online_status` varchar(1) NOT NULL,
  `medical_license` varchar(100) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `graduation_year` int unsigned NOT NULL,
  `dob` date NOT NULL,
  `join_date` date NOT NULL,
  `c_id` int NOT NULL,
  `c_stat` int NOT NULL,
  `wallet` double NOT NULL,
  `earnings` double NOT NULL,
  `description` longtext,
  `fcm_token` longtext,
  `status` varchar(1) NOT NULL,
  `is_recommended` varchar(1) NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  `specialist_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `dr_unique_code` (`dr_unique_code`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `dr_username` (`dr_username`),
  UNIQUE KEY `medical_license` (`medical_license`),
  KEY `doctor_doctordetails_hospital_id_115c91d4_fk_hospital_` (`hospital_id`),
  KEY `doctor_doctordetails_specialist_id_2ca4c0f1_fk_doctor_do` (`specialist_id`),
  CONSTRAINT `doctor_doctordetails_hospital_id_115c91d4_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`),
  CONSTRAINT `doctor_doctordetails_specialist_id_2ca4c0f1_fk_doctor_do` FOREIGN KEY (`specialist_id`) REFERENCES `doctor_doctorspecialistcategory` (`id`),
  CONSTRAINT `doctor_doctordetails_chk_1` CHECK ((`experience` >= 0)),
  CONSTRAINT `doctor_doctordetails_chk_2` CHECK ((`graduation_year` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_doctordetails`
--

LOCK TABLES `doctor_doctordetails` WRITE;
/*!40000 ALTER TABLE `doctor_doctordetails` DISABLE KEYS */;
INSERT INTO `doctor_doctordetails` VALUES (1,'Dr. Ankur Agrawal','Dr64474','Pulmonologist','doctor_profiles/ankur_YMwhVmW.jpg','7400736584','M','ankur@gmail.com','pbkdf2_sha256$600000$2dOAbahSg5hZanMtnebHT1$eZI+yICIL/CzSycl4qOxELO9d2d0iZTsK70n4XZglkQ=','ankur',31,NULL,'Fellowship in Interventional Cardiology',0.00,0,0,'P','P','F','SP673456789','Cardiologist, MD (Cardiology), DM (Cardiology). Se',2001,'1988-10-19','2024-08-20',0,0,0,0,'Consultant, Pulmonologist\r\nTB & Chest Physician',NULL,'A','N',1200.00,'2024-08-20 13:11:14.784668','2024-08-20 13:39:53.383405',NULL,4),(2,'Dr. Aisha Khan, MD','Dr82564','MD','doctor_profiles/Dr._Aisha_Khan.jpg','7400736584','F','khan@gmail.com','pbkdf2_sha256$600000$CbmhVwlYrgioTihGuX5DrC$sg2imfahJN+fmAsSBaclu3f59c1sS5zMmGoZAuURvYU=','aishaa',15,NULL,'no',0.00,0,0,'P','P','F','ML123456789','APJ college',2010,'1989-10-20','2024-08-23',0,0,0,0,'Dr. Rohan Patel earned his MBBS from All India Institute of Medical Sciences (AIIMS) and his MS in Orthopedic Surgery from Stanford University. He is renowned for his expertise in joint replacements and sports injuries.',NULL,'A','N',50.00,'2024-08-23 09:35:44.413030','2024-08-23 09:35:44.413030',NULL,6);
/*!40000 ALTER TABLE `doctor_doctordetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_doctorspecialistcategory`
--

DROP TABLE IF EXISTS `doctor_doctorspecialistcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_doctorspecialistcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_image` varchar(100) NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_doctorspecialistcategory`
--

LOCK TABLES `doctor_doctorspecialistcategory` WRITE;
/*!40000 ALTER TABLE `doctor_doctorspecialistcategory` DISABLE KEYS */;
INSERT INTO `doctor_doctorspecialistcategory` VALUES (1,'General','doctors/doctor_specialist_category_images/general.png',1,'2024-08-20 12:47:15.705930','2024-08-20 12:47:15.705930'),(2,'Respiratory','doctors/doctor_specialist_category_images/kidney.png',1,'2024-08-20 12:47:41.956477','2024-08-20 12:47:41.957459'),(3,'Gastrointestinal','doctors/doctor_specialist_category_images/gastrointestinal.png',1,'2024-08-20 12:48:35.020806','2024-08-20 12:48:35.020806'),(4,'Cardiovascular','doctors/doctor_specialist_category_images/cardiovascular.png',1,'2024-08-20 12:48:57.885673','2024-08-20 12:48:57.885673'),(5,'Neurological','doctors/doctor_specialist_category_images/neurological.png',1,'2024-08-20 12:49:24.331740','2024-08-20 12:49:24.331740'),(6,'Musculoskeletal','doctors/doctor_specialist_category_images/musculoskeletal.png',1,'2024-08-20 12:49:52.383946','2024-08-20 12:49:52.383946'),(7,'Dermatological','doctors/doctor_specialist_category_images/dermatological.png',1,'2024-08-20 12:50:14.918839','2024-08-20 12:50:14.918839'),(8,'Urinary','doctors/doctor_specialist_category_images/urinary.png',1,'2024-08-20 12:50:38.495171','2024-08-20 12:50:38.496171'),(9,'Reproductive','doctors/doctor_specialist_category_images/reproductive.png',1,'2024-08-20 12:51:00.233701','2024-08-20 12:51:00.233701'),(10,'Psychological','doctors/doctor_specialist_category_images/psychological.png',1,'2024-08-20 12:51:21.018755','2024-08-20 12:51:21.018755'),(11,'Other','doctors/doctor_specialist_category_images/other.jpg',1,'2024-08-20 12:51:40.026652','2024-08-20 12:51:40.026652');
/*!40000 ALTER TABLE `doctor_doctorspecialistcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_symptom`
--

DROP TABLE IF EXISTS `doctor_symptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor_symptom` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `symptom_name` varchar(255) NOT NULL,
  `symptom_image` varchar(100) NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `specialist_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `doctor_symptom_specialist_id_b8dface8_fk_doctor_do` (`specialist_id`),
  CONSTRAINT `doctor_symptom_specialist_id_b8dface8_fk_doctor_do` FOREIGN KEY (`specialist_id`) REFERENCES `doctor_doctorspecialistcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_symptom`
--

LOCK TABLES `doctor_symptom` WRITE;
/*!40000 ALTER TABLE `doctor_symptom` DISABLE KEYS */;
INSERT INTO `doctor_symptom` VALUES (1,'Fever','doctors/symptom_images/fiver.png',1,'2024-09-04 12:24:59.820459','2024-09-04 12:24:59.821459',1),(2,'Chills','doctors/symptom_images/chills.png',1,'2024-09-04 12:27:09.169444','2024-09-04 12:27:09.169444',1),(3,'Fatigue','doctors/symptom_images/elderly_care.png',1,'2024-09-04 12:28:11.068728','2024-09-04 12:28:11.068728',1),(4,'Unexplained weight loss','doctors/symptom_images/8182aba68c64e298c23e6e08ec9b667c_2_n6qRPuL.jpg',1,'2024-09-04 12:28:54.612334','2024-09-04 12:28:54.612334',1),(5,'Night sweats','doctors/symptom_images/night_sweats.png',1,'2024-09-04 12:32:33.263961','2024-09-04 12:32:33.263961',1),(6,'Generalized body pain','doctors/symptom_images/Generalized.png',1,'2024-09-04 12:34:25.109284','2024-09-04 12:34:25.109284',1),(7,'Cough (persistent, dry, or with sputum)','doctors/symptom_images/default_all.jpg',1,'2024-09-04 12:35:39.660184','2024-09-04 12:35:39.660184',2),(8,'Shortness of breath','doctors/symptom_images/default_all_JdngzDp.jpg',1,'2024-09-04 12:36:13.268813','2024-09-04 12:36:13.268813',2),(9,'Chest pain','doctors/symptom_images/default_all_4rgFFC8.jpg',1,'2024-09-04 12:36:42.978510','2024-09-04 12:36:42.978510',2),(10,'Wheezing','doctors/symptom_images/default_all_auZdu4V.jpg',1,'2024-09-04 12:37:09.198196','2024-09-04 12:37:09.198196',2),(11,'Sore throat','doctors/symptom_images/default_all_7LRRGY3.jpg',1,'2024-09-04 12:37:40.754608','2024-09-04 12:37:40.754608',2),(12,'Runny or stuffy nose','doctors/symptom_images/default_all_6jspc7G.jpg',1,'2024-09-04 12:38:21.247943','2024-09-04 12:38:21.247943',2),(13,'Nausea','doctors/symptom_images/nausea.png',1,'2024-09-04 12:40:58.477783','2024-09-04 12:40:58.478783',3),(14,'Vomiting','doctors/symptom_images/nausea_mlji5Q8.png',1,'2024-09-04 12:41:39.005081','2024-09-04 12:41:39.005081',3),(15,'Diarrhea','doctors/symptom_images/nausea_Gc5gpsR.png',1,'2024-09-04 12:42:02.233532','2024-09-04 12:42:02.234532',3),(16,'Constipation','doctors/symptom_images/nausea_6UJhQfT.png',1,'2024-09-04 12:42:37.695147','2024-09-04 12:42:37.696146',3),(17,'Abdominal pain or cramps','doctors/symptom_images/nausea_HW7CZSi.png',1,'2024-09-04 12:43:01.540269','2024-09-04 12:43:01.540269',3),(18,'Bloating','doctors/symptom_images/nausea_eJMBLfl.png',1,'2024-09-04 12:43:27.676960','2024-09-04 12:43:27.676960',3),(19,'Loss of appetite','doctors/symptom_images/nausea_kK5x9lS.png',1,'2024-09-04 12:43:54.296368','2024-09-04 12:43:54.296368',3),(20,'Blood in stool','doctors/symptom_images/nausea_KWLpATg.png',1,'2024-09-04 12:44:22.813176','2024-09-04 12:44:22.813176',3),(21,'Chest pain or discomfort','doctors/symptom_images/default_all_p5y6whh.jpg',1,'2024-09-04 12:44:45.660576','2024-09-04 12:44:45.660576',4),(22,'Palpitations','doctors/symptom_images/default_all_raVlc5u.jpg',1,'2024-09-04 12:45:11.364487','2024-09-04 12:45:11.365488',4),(23,'Dizziness or lightheadedness','doctors/symptom_images/default_all_Kqv0iu9.jpg',1,'2024-09-04 12:45:38.169641','2024-09-04 12:45:38.169641',4),(24,'Swelling in legs or feet','doctors/symptom_images/default_all_p7jncc1.jpg',1,'2024-09-04 12:46:26.762048','2024-09-04 12:46:26.762048',4),(25,'Headache','doctors/symptom_images/Generalized_RTBqJKF.png',1,'2024-09-04 12:46:56.849002','2024-09-04 12:46:56.849002',5),(26,'Dizziness','doctors/symptom_images/Generalized_JbIhbYy.png',1,'2024-09-04 12:47:23.544305','2024-09-04 12:47:23.544305',5),(27,'Fainting','doctors/symptom_images/Generalized_AYSMQTO.png',1,'2024-09-04 12:47:46.902242','2024-09-04 12:47:46.902242',5),(28,'Seizures','doctors/symptom_images/Generalized_Gxz9Fhq.png',1,'2024-09-04 12:48:08.536018','2024-09-04 12:48:08.536018',5),(29,'Numbness or tingling','doctors/symptom_images/Generalized_DIX2nYj.png',1,'2024-09-04 12:48:30.059643','2024-09-04 12:48:30.059643',5),(30,'Weakness','doctors/symptom_images/Generalized_NppmHHI.png',1,'2024-09-04 12:48:52.934491','2024-09-04 12:48:52.934491',5),(31,'Confusion or memory loss','doctors/symptom_images/Generalized_Hr3x6NU.png',1,'2024-09-04 12:49:15.395784','2024-09-04 12:49:15.395784',5),(32,'Joint pain or swelling','doctors/symptom_images/nausea_hp2UJlN.png',1,'2024-09-04 12:49:48.916799','2024-09-04 12:49:48.916799',6),(33,'Muscle pain or cramps','doctors/symptom_images/nausea_s5TtPlk.png',1,'2024-09-04 12:50:16.989112','2024-09-04 12:50:16.989112',6),(34,'Back Pain','doctors/symptom_images/chills_X86bzVk.png',1,'2024-09-04 12:50:48.609316','2024-09-04 12:50:48.609316',6),(35,'Difficulty moving limbs','doctors/symptom_images/chills_1qXSGRc.png',1,'2024-09-04 12:51:11.329439','2024-09-04 12:51:11.329439',6),(36,'Rashes','doctors/symptom_images/dermatology.png',1,'2024-09-04 12:52:03.796232','2024-09-04 12:52:03.796232',7),(37,'Itching','doctors/symptom_images/dermatology_gxtuj4S.png',1,'2024-09-04 12:52:34.110630','2024-09-04 12:52:34.111631',7),(38,'Redness','doctors/symptom_images/dermatology_M47tshw.png',1,'2024-09-04 12:52:59.476401','2024-09-04 12:52:59.476401',7),(39,'Blisters or sores','doctors/symptom_images/dermatology_OEaUNny.png',1,'2024-09-04 12:53:26.206080','2024-09-04 12:53:26.207080',7),(40,'Unusual moles or skin growths','doctors/symptom_images/dermatology_ILpuswD.png',1,'2024-09-04 12:53:56.242929','2024-09-04 12:53:56.242929',7),(41,'Painful urination','doctors/symptom_images/reproductive.png',1,'2024-09-04 12:54:36.602539','2024-09-04 12:54:36.602539',8),(42,'Frequent urination','doctors/symptom_images/urinary.png',1,'2024-09-04 12:55:27.129601','2024-09-04 12:55:27.129601',8),(43,'Blood in urine','doctors/symptom_images/urinary_myGJKrj.png',1,'2024-09-04 12:55:50.802904','2024-09-04 12:55:50.802904',8),(44,'Urinary incontinence','doctors/symptom_images/urinary_E6MT0f8.png',1,'2024-09-04 12:56:11.800180','2024-09-04 12:56:11.801182',8),(45,'Irregular periods','doctors/symptom_images/reproductive_EjxWmgz.png',1,'2024-09-04 12:56:35.467095','2024-09-04 12:56:35.467095',9),(46,'Pelvic pain','doctors/symptom_images/reproductive_ue5gZZP.png',1,'2024-09-04 12:57:00.454793','2024-09-04 12:57:00.455796',9),(47,'Breast lumps or pain','doctors/symptom_images/reproductive_GWS4L8V.png',1,'2024-09-04 12:57:26.241599','2024-09-04 12:57:26.241599',9),(48,'Anxiety','doctors/symptom_images/psychological.png',1,'2024-09-04 12:57:57.713094','2024-09-04 12:57:57.713094',10),(49,'Depression','doctors/symptom_images/psychological_hAactfR.png',1,'2024-09-04 12:58:21.623113','2024-09-04 12:58:21.623113',10),(50,'Mood swings','doctors/symptom_images/psychological_h1aG3we.png',1,'2024-09-04 12:58:43.927886','2024-09-04 12:58:43.927886',10),(51,'Sleep disturbances','doctors/symptom_images/psychological_lkhDpy0.png',1,'2024-09-04 12:59:10.333260','2024-09-04 12:59:10.333260',10),(52,'Jaundice (yellowing of the skin or eyes)','doctors/symptom_images/other.jpg',1,'2024-09-04 12:59:33.098668','2024-09-04 12:59:33.098668',11),(53,'Swollen lymph nodes','doctors/symptom_images/other_7kke2X3.jpg',1,'2024-09-04 12:59:54.580344','2024-09-04 12:59:54.580344',11),(54,'Bleeding or bruising easily','doctors/symptom_images/other_r9b2LTM.jpg',1,'2024-09-04 13:00:18.525491','2024-09-04 13:00:18.526489',11),(55,'Vision changes','doctors/symptom_images/other_VwWhXwB.jpg',1,'2024-09-04 13:00:39.361589','2024-09-04 13:00:39.361589',11),(56,'Hearing loss','doctors/symptom_images/other_Pa3mRxK.jpg',1,'2024-09-04 13:01:02.513222','2024-09-04 13:01:02.513222',11);
/*!40000 ALTER TABLE `doctor_symptom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_admin`
--

DROP TABLE IF EXISTS `hospital_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_admin`
--

LOCK TABLES `hospital_admin` WRITE;
/*!40000 ALTER TABLE `hospital_admin` DISABLE KEYS */;
INSERT INTO `hospital_admin` VALUES (1,'admin','admin@gmail.com','pbkdf2_sha256$600000$s9BfYHEYCELO4DRfoniGtB$bYqXQXorTTIIw0A8g2mMnRWtryoOaol/ARyV5TqP8uQ=','2024-09-16 07:20:06.991977','2024-09-16 07:20:06.991977');
/*!40000 ALTER TABLE `hospital_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_bed`
--

DROP TABLE IF EXISTS `hospital_bed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_bed` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bed_type` varchar(100) NOT NULL,
  `bed_count` int NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `sale_bed_price` decimal(10,2) NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  `ward_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_bed_hospital_id_832dfc19_fk_hospital_hospital_id` (`hospital_id`),
  KEY `hospital_bed_ward_id_08ea4b77_fk_hospital_ward_id` (`ward_id`),
  CONSTRAINT `hospital_bed_hospital_id_832dfc19_fk_hospital_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`),
  CONSTRAINT `hospital_bed_ward_id_08ea4b77_fk_hospital_ward_id` FOREIGN KEY (`ward_id`) REFERENCES `hospital_ward` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_bed`
--

LOCK TABLES `hospital_bed` WRITE;
/*!40000 ALTER TABLE `hospital_bed` DISABLE KEYS */;
INSERT INTO `hospital_bed` VALUES (1,'General',10,800.00,1000.00,1,'2024-08-26 10:39:06.094045','2024-08-26 10:39:06.094045',1,1),(3,'ICU',10,1500.00,2000.00,1,'2024-08-26 10:52:42.715376','2024-08-26 10:52:42.715376',1,3),(4,'Isolation',10,2600.00,3000.00,0,'2024-08-26 10:53:49.063706','2024-08-26 10:53:49.063706',1,9),(5,'Hospice',10,1700.00,2000.00,1,'2024-09-06 09:28:13.929675','2024-09-06 09:28:13.929675',1,10);
/*!40000 ALTER TABLE `hospital_bed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_bedstatus`
--

DROP TABLE IF EXISTS `hospital_bedstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_bedstatus` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `bed_id` bigint DEFAULT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_bedstatus_bed_id_909398e9_fk_hospital_bed_id` (`bed_id`),
  KEY `hospital_bedstatus_hospital_id_b5567f07_fk_hospital_hospital_id` (`hospital_id`),
  CONSTRAINT `hospital_bedstatus_bed_id_909398e9_fk_hospital_bed_id` FOREIGN KEY (`bed_id`) REFERENCES `hospital_bed` (`id`),
  CONSTRAINT `hospital_bedstatus_hospital_id_b5567f07_fk_hospital_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_bedstatus`
--

LOCK TABLES `hospital_bedstatus` WRITE;
/*!40000 ALTER TABLE `hospital_bedstatus` DISABLE KEYS */;
INSERT INTO `hospital_bedstatus` VALUES (1,1,'2024-09-06 07:26:28.704423','2024-09-06 09:06:02.202873',4,1),(5,0,'2024-09-06 09:28:34.868263','2024-09-06 09:31:13.088766',4,3);
/*!40000 ALTER TABLE `hospital_bedstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_customer`
--

DROP TABLE IF EXISTS `hospital_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_customer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `pre_existing_disease` longtext,
  `blood_group` varchar(10) DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `wallet` double NOT NULL,
  `overall_ratings` double NOT NULL,
  `no_of_ratings` int NOT NULL,
  `status` int NOT NULL,
  `fcm_token` longtext,
  `dob` date DEFAULT NULL,
  `age` double DEFAULT NULL,
  `family_members` longtext,
  `last_active_address` int NOT NULL,
  `height` varchar(20) DEFAULT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `emergency_contact_no` varchar(255) DEFAULT NULL,
  `allergies` varchar(255) DEFAULT NULL,
  `current_medications` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `firebase_user_id` varchar(100) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_customer`
--

LOCK TABLES `hospital_customer` WRITE;
/*!40000 ALTER TABLE `hospital_customer` DISABLE KEYS */;
INSERT INTO `hospital_customer` VALUES (2,'pbkdf2_sha256$600000$ikcsweDCKdKPeVZ70CvW0j$A02+1pJzkt1JP4qzbfomvbp07YCaP7bbLPVrapPHvrE=',NULL,'rishi@gmail.com','Rishi Prajapati','9933324010',NULL,'hospital/customer_profile/avatar.png',NULL,NULL,NULL,0,0,0,1,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'2024-09-13 10:41:02.848683','2024-09-13 10:41:04.572694',NULL,NULL,0,0,1);
/*!40000 ALTER TABLE `hospital_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_customer_groups`
--

DROP TABLE IF EXISTS `hospital_customer_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_customer_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hospital_customer_groups_customer_id_group_id_e7ca1b8c_uniq` (`customer_id`,`group_id`),
  KEY `hospital_customer_groups_group_id_b4d69ae2_fk_auth_group_id` (`group_id`),
  CONSTRAINT `hospital_customer_gr_customer_id_ce511b3f_fk_hospital_` FOREIGN KEY (`customer_id`) REFERENCES `hospital_customer` (`id`),
  CONSTRAINT `hospital_customer_groups_group_id_b4d69ae2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_customer_groups`
--

LOCK TABLES `hospital_customer_groups` WRITE;
/*!40000 ALTER TABLE `hospital_customer_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_customer_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_customer_user_permissions`
--

DROP TABLE IF EXISTS `hospital_customer_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_customer_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hospital_customer_user_p_customer_id_permission_i_aab72fc2_uniq` (`customer_id`,`permission_id`),
  KEY `hospital_customer_us_permission_id_7266a8f6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `hospital_customer_us_customer_id_f2c937da_fk_hospital_` FOREIGN KEY (`customer_id`) REFERENCES `hospital_customer` (`id`),
  CONSTRAINT `hospital_customer_us_permission_id_7266a8f6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_customer_user_permissions`
--

LOCK TABLES `hospital_customer_user_permissions` WRITE;
/*!40000 ALTER TABLE `hospital_customer_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_customer_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_doctors`
--

DROP TABLE IF EXISTS `hospital_doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_doctors` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(100) NOT NULL,
  `join_date` date NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `doctor_id` bigint DEFAULT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_doctors_doctor_id_65f9f8cc_fk_doctor_doctordetails_id` (`doctor_id`),
  KEY `hospital_doctors_hospital_id_55eb4b87_fk_hospital_hospital_id` (`hospital_id`),
  CONSTRAINT `hospital_doctors_doctor_id_65f9f8cc_fk_doctor_doctordetails_id` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_doctordetails` (`id`),
  CONSTRAINT `hospital_doctors_hospital_id_55eb4b87_fk_hospital_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_doctors`
--

LOCK TABLES `hospital_doctors` WRITE;
/*!40000 ALTER TABLE `hospital_doctors` DISABLE KEYS */;
INSERT INTO `hospital_doctors` VALUES (1,'Dr64474','2019-07-20',1,'2024-08-23 10:34:58.207794','2024-08-23 11:48:39.298043',1,1),(3,'Dr82564','2022-07-20',1,'2024-08-23 10:50:01.123795','2024-09-16 12:57:42.785085',2,1);
/*!40000 ALTER TABLE `hospital_doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospital`
--

DROP TABLE IF EXISTS `hospital_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospital` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(255) NOT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `open_time` time(6) DEFAULT NULL,
  `close_time` time(6) DEFAULT NULL,
  `website_url` varchar(200) DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `status` int NOT NULL,
  `is_recommended` int NOT NULL,
  `address` longtext,
  `description` longtext,
  `hospital_image` varchar(100) DEFAULT NULL,
  `hospital_logo` varchar(100) DEFAULT NULL,
  `overall_ratings` double NOT NULL,
  `no_of_ratings` int NOT NULL,
  `wallet` double NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospital`
--

LOCK TABLES `hospital_hospital` WRITE;
/*!40000 ALTER TABLE `hospital_hospital` DISABLE KEYS */;
INSERT INTO `hospital_hospital` VALUES (1,'Bhandari Hospital & Research Center','bhandari','07314733333','ghartaktech02@gmail.com','pbkdf2_sha256$600000$a7VeUTsLwlCBOiHEPWxk1Z$Gj2JnBEew2ttpNgffLzbAKVlFTTLE10t8CcAFgFMpSI=','22.754840','75.891940','12:00:00.000000','11:55:00.000000','https://bhandarihospitalindore.com','hospital',1,0,'21-23 GF, Scheme 54, Vijay Nagar, Indore, Madhya Pradesh- 452010','Established in 1993, BHRC (Bhandari Hospital & Research Center) has emerged as the flagship hospital within the esteemed portfolio of the Bhandari Group, setting the gold standard for healthcare provision in central India. Located in the upscale Scheme 54, across from the picturesque Meghdoot Garden in Indore, BHRC epitomizes excellence, hospitality, and compassionate care, catering to the diverse healthcare needs of the populace with unwavering dedication.','hospital/hospital_images/hospital_xbgnjJE.png','hospital/hospital_logos/Bandari-hos-Logo_JvQr9v1.webp',0,0,0,'indore','2024-08-20 12:34:34.240775','2024-09-11 10:21:28.098072'),(3,'Apollo Hospital','apollo','7869406981','geegatechnologies@gmail.com','pbkdf2_sha256$600000$BcefOwzRfi8quZvILKwQ1F$KUIXBIqntk6z2Z45WjLqdLGibDrbx48wnZ3sLwB4LqY=','22.681020','75.873110','01:40:00.000000','23:59:00.000000','https://www.apollohospitals.com/','hospital',1,0,'Sector-D, Scheme No 74C, Vijay Nagar, Indore, Madhya Pradesh 452010','Apollo Hospitals is a leading healthcare facility located in the heart of the city, dedicated to providing high-quality medical care to the community. The hospital has grown to become one of the most trusted institutions, renowned for its state-of-the-art technology, experienced medical professionals, and compassionate care. Our mission is to improve the health and well-being of our patients through excellence in medical services, research, and education. At City General Hospital, we strive to create a patient-centric environment where each individual receives personalized attention and care.','hospital/hospital_images/apollo_hospital.jpg','hospital/hospital_logos/Apollo-hos_logo.webp',0,0,0,'Indore','2024-09-06 09:26:05.502387','2024-09-11 12:10:14.819951');
/*!40000 ALTER TABLE `hospital_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospitaldepartment`
--

DROP TABLE IF EXISTS `hospital_hospitaldepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospitaldepartment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `department_name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_hospitaldep_hospital_id_117d3c58_fk_hospital_` (`hospital_id`),
  CONSTRAINT `hospital_hospitaldep_hospital_id_117d3c58_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospitaldepartment`
--

LOCK TABLES `hospital_hospitaldepartment` WRITE;
/*!40000 ALTER TABLE `hospital_hospitaldepartment` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_hospitaldepartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospitalfacility`
--

DROP TABLE IF EXISTS `hospital_hospitalfacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospitalfacility` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) DEFAULT NULL,
  `facility` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_hospitalfac_hospital_id_aed7b220_fk_hospital_` (`hospital_id`),
  CONSTRAINT `hospital_hospitalfac_hospital_id_aed7b220_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospitalfacility`
--

LOCK TABLES `hospital_hospitalfacility` WRITE;
/*!40000 ALTER TABLE `hospital_hospitalfacility` DISABLE KEYS */;
INSERT INTO `hospital_hospitalfacility` VALUES (1,'hospital/facility_icons/emergency_department_U2II0bO.png','Emergency Department','2024-08-31 12:17:04.254500','2024-08-31 12:17:04.255501',1),(2,'hospital/facility_icons/diagnostic_imaging_Gjn9E1t.png','Diagnostic Imaging','2024-08-31 12:17:31.652009','2024-08-31 12:17:31.652009',1),(3,'hospital/facility_icons/endoscopy_suite_IqQxRxK.png','Endoscopy Suite','2024-08-31 12:18:13.204727','2024-08-31 12:18:13.204727',1),(4,'hospital/facility_icons/maternity_care_OzZqJgT.png','Maternity Care','2024-08-31 12:18:45.329529','2024-09-16 12:49:13.493342',1),(5,'hospital/facility_icons/dialysis_center_NV6QE0s.png','Dialysis Center','2024-08-31 12:19:04.014426','2024-09-16 12:49:28.612659',1);
/*!40000 ALTER TABLE `hospital_hospitalfacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospitalfeesettings`
--

DROP TABLE IF EXISTS `hospital_hospitalfeesettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospitalfeesettings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appointment_fee` decimal(10,2) NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `waiting_time` varchar(25) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_hospitalfee_hospital_id_64892c68_fk_hospital_` (`hospital_id`),
  CONSTRAINT `hospital_hospitalfee_hospital_id_64892c68_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospitalfeesettings`
--

LOCK TABLES `hospital_hospitalfeesettings` WRITE;
/*!40000 ALTER TABLE `hospital_hospitalfeesettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_hospitalfeesettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospitalimage`
--

DROP TABLE IF EXISTS `hospital_hospitalimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospitalimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `hospital_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_hospitalima_hospital_id_f965fa35_fk_hospital_` (`hospital_id`),
  CONSTRAINT `hospital_hospitalima_hospital_id_f965fa35_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospitalimage`
--

LOCK TABLES `hospital_hospitalimage` WRITE;
/*!40000 ALTER TABLE `hospital_hospitalimage` DISABLE KEYS */;
INSERT INTO `hospital_hospitalimage` VALUES (1,'hospital/hospital_images/bhandari-hospital-research-center/AF1QipM5K9Wl2zVdfTwCcQ3D3nqCZwUP.webp',1),(2,'hospital/hospital_images/bhandari-hospital-research-center/AF1QipM96qaiOVGJKE08nBfuHBN2XRCV.webp',1),(3,'hospital/hospital_images/bhandari-hospital-research-center/AF1QipMJ-DPDDc3hQexu-7GEcJTxSVJ5.webp',1),(4,'hospital/hospital_images/bhandari-hospital-research-center/AF1QipNvmb_jZxEB-s6DLiCLFAI4FrHa.webp',1),(5,'hospital/hospital_images/bhandari-hospital-research-center/AF1QipOBKZ3sk_rYpiUcHRcoHtGNWhPu.webp',1),(6,'hospital/hospital_images/bhandari-hospital-research-center/AF1QipPFbXABufUAKyPT9fC4EBHqeu4D.webp',1),(7,'hospital/hospital_images/apollo-hospital/AF1QipN6hldEFB42cR8RcOFSz0nxqAx3.webp',3),(8,'hospital/hospital_images/apollo-hospital/AF1QipOlVkfUnpXZGhRKGuQYxxYO7PC.webp',3),(9,'hospital/hospital_images/apollo-hospital/AF1QipPBvKhQVfKwgSSwmxwttF6XRV9t.webp',3),(10,'hospital/hospital_images/apollo-hospital/AF1QipPES9iHJ4iVIulHDxCTG-qaWzI5.webp',3);
/*!40000 ALTER TABLE `hospital_hospitalimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospitalpatient`
--

DROP TABLE IF EXISTS `hospital_hospitalpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospitalpatient` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `hospital_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_hospitalpat_hospital_id_1480f997_fk_hospital_` (`hospital_id`),
  CONSTRAINT `hospital_hospitalpat_hospital_id_1480f997_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospitalpatient`
--

LOCK TABLES `hospital_hospitalpatient` WRITE;
/*!40000 ALTER TABLE `hospital_hospitalpatient` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospital_hospitalpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_hospitalservice`
--

DROP TABLE IF EXISTS `hospital_hospitalservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_hospitalservice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service_name` varchar(255) NOT NULL,
  `service_icon` varchar(100) DEFAULT NULL,
  `starting_from` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_hospitalser_hospital_id_9e7db441_fk_hospital_` (`hospital_id`),
  CONSTRAINT `hospital_hospitalser_hospital_id_9e7db441_fk_hospital_` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_hospitalservice`
--

LOCK TABLES `hospital_hospitalservice` WRITE;
/*!40000 ALTER TABLE `hospital_hospitalservice` DISABLE KEYS */;
INSERT INTO `hospital_hospitalservice` VALUES (1,'Laboratory Services','hospital/service_icons/laboratory_services_PU5Vjit.png','abc','2024-08-31 12:09:20.352839','2024-08-31 12:09:20.352839',1),(2,'Cardiology Services','hospital/service_icons/cardiology_services_XRYqKvH.png','abc','2024-08-31 12:09:49.830052','2024-08-31 12:09:49.830052',1),(3,'Geriatric Services','hospital/service_icons/geriatric_services_gTT0XJY.png','abc','2024-08-31 12:10:05.822287','2024-08-31 12:10:05.822287',1),(4,'Emergency care','hospital/service_icons/emergency_care_wZxxO0s.png','abc','2024-08-31 12:11:04.365698','2024-08-31 12:11:04.365698',1),(5,'Outpatient Services','hospital/service_icons/outpatient_services_REPYqgm.png','abc','2024-08-31 12:11:27.559030','2024-08-31 12:11:27.559030',1),(6,'Laboratory Services','hospital/service_icons/laboratory_services_PLJxv9x.png','abc','2024-08-31 12:11:52.814881','2024-09-16 10:00:40.632546',3),(8,'Cardiology Services','hospital/service_icons/cardiology_services_AI0yt4e.png','abc','2024-08-31 12:12:51.741471','2024-09-16 10:48:01.574430',3),(9,'Geriatric Services','hospital/service_icons/geriatric_services_HphjZYb.png','abc','2024-08-31 12:13:25.096805','2024-09-16 10:48:15.754306',3);
/*!40000 ALTER TABLE `hospital_hospitalservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_insurance`
--

DROP TABLE IF EXISTS `hospital_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_insurance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  `insurance_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hospital_insurance_hospital_id_insurance_id_4a990b2f_uniq` (`hospital_id`,`insurance_id`),
  KEY `hospital_insurance_insurance_id_41629b62_fk_insurances_id` (`insurance_id`),
  CONSTRAINT `hospital_insurance_hospital_id_7e8a1861_fk_hospital_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`),
  CONSTRAINT `hospital_insurance_insurance_id_41629b62_fk_insurances_id` FOREIGN KEY (`insurance_id`) REFERENCES `insurances` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_insurance`
--

LOCK TABLES `hospital_insurance` WRITE;
/*!40000 ALTER TABLE `hospital_insurance` DISABLE KEYS */;
INSERT INTO `hospital_insurance` VALUES (1,1,'2024-08-24 08:00:29.740439','2024-08-24 09:11:13.635598',1,3);
/*!40000 ALTER TABLE `hospital_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_ward`
--

DROP TABLE IF EXISTS `hospital_ward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_ward` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ward_name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `hospital_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hospital_ward_hospital_id_edb79726_fk_hospital_hospital_id` (`hospital_id`),
  CONSTRAINT `hospital_ward_hospital_id_edb79726_fk_hospital_hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospital_hospital` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_ward`
--

LOCK TABLES `hospital_ward` WRITE;
/*!40000 ALTER TABLE `hospital_ward` DISABLE KEYS */;
INSERT INTO `hospital_ward` VALUES (1,'General',1,'2024-08-26 10:18:56.019141','2024-08-26 10:18:56.019141',1),(2,'Semi Private Ward',1,'2024-08-26 10:19:42.641662','2024-08-26 10:19:42.641662',1),(3,'Private AC Ward',1,'2024-08-26 10:20:01.569879','2024-08-26 10:20:01.569879',1),(4,'Private Non AC ward',1,'2024-08-26 10:20:18.807940','2024-08-26 10:20:18.807940',1),(5,'Deluxe Ward',1,'2024-08-26 10:20:33.416364','2024-08-26 10:20:33.416364',1),(6,'Suite',1,'2024-08-26 10:20:53.845710','2024-08-26 10:20:53.845710',1),(8,'New Born ICU',1,'2024-08-26 10:21:32.933771','2024-08-26 10:21:32.934769',1),(9,'Paediatric ICU',1,'2024-08-26 10:21:50.464017','2024-08-26 10:21:50.464017',1),(10,'Day Care',1,'2024-08-26 10:22:22.131561','2024-08-26 10:22:22.132560',1),(11,'ICCU',1,'2024-09-06 09:27:18.178885','2024-09-06 09:27:18.178885',1);
/*!40000 ALTER TABLE `hospital_ward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurances`
--

DROP TABLE IF EXISTS `insurances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurances` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `insurance_name` varchar(150) NOT NULL,
  `insurance_logo` varchar(100) NOT NULL,
  `insurance_link` varchar(500) NOT NULL,
  `status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurances`
--

LOCK TABLES `insurances` WRITE;
/*!40000 ALTER TABLE `insurances` DISABLE KEYS */;
INSERT INTO `insurances` VALUES (1,'Star Health Insurance','hospital/insurance_logos/star-health-logo.webp','https://www.starhealth.in/customerportal/instant-buy/?utm_source=google&utm_campaign=Generic-Mobile-Ind&utm_agid=126853217721&utm_term=health%20insurance%20plans&creative=526158866133&device=c&gclid=Cj0KCQjwpcOTBhCZARIsAEAYLuXcHmAYT9UtrUmcX8MyY0HfYeA6SZJOpxWwHhcp07eKns1siEy6Z38aAgZuEALw_wcB',1,'2024-08-23 13:33:27.410402','2024-08-24 06:27:52.545727'),(2,'Care Health Insurance','hospital/insurance_logos/care_health_insurance_logo.webp','https://www.careinsurance.com/health-insurance/cr/health-insurance-plans-dk.html?agentId=20024747&utm_source=google&utm_medium=cpc&utm_campaign=ht_ind_103_AD_CR_DT&utm_content=eta&utm_keyword=health%20insurance%20plans&s_kwcid=AL!10397!3!595133474595!e!!g!!health%20insurance%20plans&utm_term=11002434947&utm_adgroup=106691883023&gclid=Cj0KCQjwpcOTBhCZARIsAEAYLuUaAXhD7NenmC2WqtgdfLb11chUJoO9sm0ASog0VF6IkzoCwEqieskaAsIsEALw_wcB',1,'2024-08-24 05:40:17.449078','2024-08-24 05:40:17.449078'),(3,'Policy Bazar Insurance','hospital/insurance_logos/logopb.svg','https://www.policybazaar.com/health-insurance/individual-health-insurance/articles/best-health-insurance-plans-in-india/',1,'2024-08-24 05:43:55.536802','2024-08-24 05:43:55.537801'),(4,'HDFC Life Insurance','hospital/insurance_logos/HDFC_logo.webp','https://www.hdfclife.com/health-insurance-plans',1,'2024-08-24 05:46:06.656122','2024-08-24 06:24:18.905195'),(5,'Royal Sundaram Insurance','hospital/insurance_logos/rs-new-logo.webp','https://www.royalsundaram.in/health-insurance/lifeline?ef_id=Cj0KCQjwpcOTBhCZARIsAEAYLuX1biilrVycTUqFRJbUweA_Q0HeoWimWMiOdN5o_yA11F7sKe-tZ6caAqhZEALw_wcB:G:s&utm_source=google&utm_medium=search&utm_campaign=AO-core-Health-06-04-2021-SS&utm_content=Health-Insurance&utm_term=health%20insurance%20plans&gclid=Cj0KCQjwpcOTBhCZARIsAEAYLuX1biilrVycTUqFRJbUweA_Q0HeoWimWMiOdN5o_yA11F7sKe-tZ6caAqhZEALw_wcB',1,'2024-08-24 05:49:41.375981','2024-08-24 05:49:41.375981'),(7,'TATA AIG Insurance','hospital/insurance_logos/logo-min_6I4xQ83.webp','https://www.tataaig.com/health-insurance?utm_source=Google&utm_medium=cpc&utm_campaign=EDM_Health_Search_Generic_Desktop&utm_content=%22best_health_insurance%22&gclid=Cj0KCQjwpcOTBhCZARIsAEAYLuWkR5ZSa-6mcWRtWuuETZP4oK9qZtkFWXsfqC3xucwbPAVfNTtkGIQaAmSfEALw_wcB',1,'2024-08-24 06:50:08.012206','2024-08-24 06:50:08.012206');
/*!40000 ALTER TABLE `insurances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_auth_user` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-17 18:56:39
