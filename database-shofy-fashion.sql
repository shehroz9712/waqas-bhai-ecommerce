-- MySQL dump 10.13  Distrib 8.3.0, for macos14.2 (arm64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'edMAWRkZmU4J7WIo45OcWrr19BlAwzHW',1,'2024-07-12 04:47:47','2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Ads 1','2029-07-12 00:00:00','not_set','UROL9F9ZZVAA','main/banners/1.jpg','/products',0,1,'published','2024-07-12 04:47:57','2024-07-12 04:47:57',1,NULL,NULL,NULL,NULL),(2,'Ads 2','2029-07-12 00:00:00','not_set','B30VDBKO7SBF','main/banners/2.jpg','/products',0,2,'published','2024-07-12 04:47:57','2024-07-12 04:47:57',1,NULL,NULL,NULL,NULL),(3,'Ads 3','2029-07-12 00:00:00','not_set','WXAUTIJV1QU0','fashion/banners/1.jpg','/products',0,3,'published','2024-07-12 04:47:57','2024-07-12 04:47:57',1,NULL,NULL,NULL,NULL),(4,'Ads 4','2029-07-12 00:00:00','not_set','7Z5RXBBWV7J2','fashion/banners/2.jpg','/products',0,4,'published','2024-07-12 04:47:57','2024-07-12 04:47:57',1,NULL,NULL,NULL,NULL),(5,'Ads 5','2029-07-12 00:00:00','not_set','JY08TDO8FG1E','fashion/banners/3.jpg','/products',0,5,'published','2024-07-12 04:47:57','2024-07-12 04:47:57',1,NULL,NULL,NULL,NULL),(6,'Ads 6','2029-07-12 00:00:00','not_set','VKJNCBIBQC1O','fashion/banners/4.jpg','/products',0,6,'published','2024-07-12 04:47:57','2024-07-12 04:47:57',1,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2024-07-12 11:47:54',NULL,1,'2024-07-12 04:47:54','2024-07-12 04:47:54'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2024-07-12 11:47:54',NULL,1,'2024-07-12 04:47:54','2024-07-12 04:47:54'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2024-07-12 11:47:54',NULL,1,'2024-07-12 04:47:54','2024-07-12 04:47:54');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Sit minima atque quibusdam eius qui. Aut temporibus mollitia et non maiores qui quo. Aut enim dicta temporibus quam atque rerum doloremque.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,'Fashion',0,'Distinctio voluptatem placeat itaque nisi corrupti temporibus. Ut fugit odit harum nostrum quis sed neque. Quia porro ullam tempora voluptates.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,'Electronic',0,'Iste id delectus enim similique. Sit sunt est earum aliquam. Quam minima officia deserunt porro. Placeat voluptatem sunt assumenda possimus omnis. Illo molestias iure quia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,'Commercial',0,'Consectetur id est ullam ut quia nam. Temporibus maxime enim quia quaerat pariatur sit. Non placeat aperiam iure sunt. Nisi nisi quibusdam omnis est quas aliquid.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(5,'Organic Fruits',0,'Aut et sint nemo veritatis repellendus nobis ipsum odit. Id necessitatibus aperiam nostrum beatae a est illo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(6,'Ecological',0,'Ipsam qui sit tenetur ut. Deserunt deserunt cumque iusto sit ut commodi nihil. Et omnis sint sint ipsum ut explicabo. Quis perferendis sit veritatis blanditiis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2024-07-12 04:47:51','2024-07-12 04:47:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Angela Kautzer','evelyn.mante@example.net','904-644-4655','1174 Rhiannon Pike\nSouth Bellahaven, IL 38301','Aut esse repudiandae animi earum nesciunt.','Blanditiis vel nihil quibusdam nulla aut autem. Esse velit alias quia expedita velit quidem nam. Natus commodi nemo excepturi quae. Quo consequatur sit reiciendis vero. Earum quibusdam quae incidunt nostrum. Rerum hic sit architecto ut dolorum. Perspiciatis quis labore necessitatibus. Enim quia et qui quo optio. Non dolores asperiores et id et. Eos repudiandae alias aspernatur molestias dolor quia ex autem.',NULL,'read','2024-07-12 04:47:50','2024-07-12 04:47:50'),(2,'Althea Von I','vivien.auer@example.com','+16294407602','80802 Tre Inlet\nGrimesland, MI 71135-8300','Quam reiciendis nihil ut consequatur alias et.','Adipisci quisquam deleniti aut modi voluptatem sunt. Nostrum consequatur dolores et recusandae quia. Rerum exercitationem sed aut eum sed molestias unde. Dicta voluptas praesentium dicta voluptatibus. Provident fugiat est est ipsam. Reprehenderit rerum ea qui aspernatur sint sed rerum deleniti. Et modi qui est expedita sed animi. Rerum optio est et ut facilis autem.',NULL,'read','2024-07-12 04:47:50','2024-07-12 04:47:50'),(3,'Eden Howell','vhyatt@example.org','(781) 419-0046','33623 Chester Passage\nLake Cullenstad, WI 85827','Hic sapiente ea provident.','Hic et delectus ab amet similique rerum. Occaecati quia ducimus tempore et sunt. Optio aut eum error. Ut perspiciatis et a molestiae. Voluptas sint magni laudantium ea. Similique nobis ea adipisci. Est cumque accusamus quibusdam molestiae. Neque earum blanditiis quia sit error. Est labore et tempore reiciendis.',NULL,'read','2024-07-12 04:47:50','2024-07-12 04:47:50'),(4,'Lyda Rogahn','bdaugherty@example.net','575-751-8170','3507 Adelia Loop\nWest Reedside, MS 56896-0163','Neque sapiente ut natus.','Suscipit nostrum unde doloremque quaerat consequatur quae. Atque nostrum omnis accusantium. Minima id in ad ratione. At impedit voluptatum sapiente quia rerum ullam molestias. Saepe voluptas aut voluptatum omnis perferendis voluptas sit. Et ipsa fuga impedit deleniti explicabo laboriosam. Dolorem sed libero quibusdam asperiores ea dolor voluptatum. Voluptatibus modi et animi occaecati. Totam repellendus mollitia dignissimos sint repudiandae. Consequatur unde et consequuntur aliquam id hic.',NULL,'unread','2024-07-12 04:47:50','2024-07-12 04:47:50'),(5,'Missouri Hamill','carley59@example.com','+19546405672','85517 Norma Fields Apt. 142\nJohnniehaven, VT 28430','Cumque dolor est odit qui et ipsam quidem.','Modi omnis non dignissimos harum. Est non sit odit ut occaecati natus. Sed qui aut sint. Corrupti officia consequatur tempora recusandae vitae. Et enim dolorum alias dolorem itaque. Repellendus laborum est deleniti. Ut eos dolore quia temporibus laborum earum. Vitae et assumenda aut et. Aspernatur sunt ut minima impedit voluptatem asperiores.',NULL,'unread','2024-07-12 04:47:50','2024-07-12 04:47:50'),(6,'Annabelle Krajcik MD','nathen.rohan@example.net','858.540.4120','1859 Runte Hills\nGutkowskihaven, TX 95776-0409','Iusto in vitae nisi quia non quis.','Omnis earum inventore velit quos aut eum vel quibusdam. Doloremque necessitatibus dolore repellat animi magnam id. Numquam excepturi voluptas ut rerum corporis quia voluptatum. Quia culpa autem enim aut nihil. Occaecati aliquam deleniti ipsam et. Quia cum et est corrupti aut similique tempore. Voluptates suscipit nihil quia eos officiis. Quis dolores aut commodi provident. Dolorem a et odit temporibus inventore. Consequatur quia aut eos enim cum. Ab ducimus omnis non et. Magnam et aut sed.',NULL,'read','2024-07-12 04:47:50','2024-07-12 04:47:50'),(7,'Alda Ernser','jonas47@example.org','+1-610-253-3712','1624 Emery Cliff\nNorth Charlottefurt, DE 55643','Laboriosam earum minus nisi.','Consequatur id maiores ut iste rerum. Dolore et eum laudantium eligendi iste quis. Est animi quae libero vel vero. Voluptates incidunt dicta repellat et et aut velit. Repellat qui pariatur magnam sit sit harum tempora illo. Ratione eos assumenda animi sed. Omnis facere aut natus aut. Incidunt maxime fugiat dolor optio dolorem recusandae fugit. Libero quia deserunt quod sunt optio ut est.',NULL,'read','2024-07-12 04:47:50','2024-07-12 04:47:50'),(8,'Prof. Triston Jacobson I','jerde.florida@example.com','(763) 891-4826','6592 Justina Flats\nNew Lydia, TX 40103','Sunt sed sit quae et dolorum harum dolores.','Nam quas est illo voluptas. Odio ipsa dolore est voluptatem amet aut. Saepe voluptatem laborum labore architecto. Officia harum ut aut nemo qui voluptatem fugiat. Quidem incidunt saepe officiis sapiente iste incidunt dolores deleniti. Fugiat facere quidem voluptatem aliquid. Delectus dolorum reprehenderit ab a ullam quis. Nisi et et facere alias tenetur. Similique dolore eos veniam sunt sed. Officiis corporis dolorem provident quis non rerum voluptatem. Perferendis ut in sit quis.',NULL,'unread','2024-07-12 04:47:50','2024-07-12 04:47:50'),(9,'Ms. Mariam Streich PhD','gulgowski.chesley@example.com','1-859-299-5111','660 Kuhn Extensions\nSchulistbury, KS 51923-6142','Animi sit et qui dolor.','Esse officiis incidunt labore ut dolor labore vero. Molestias modi quaerat earum quam nobis sed. Illo numquam quod magnam. Expedita architecto reprehenderit et quaerat reprehenderit consequuntur et. Id hic aliquam odio repellat ex rerum. Sed eum magnam deserunt quo. Exercitationem dolor error blanditiis soluta necessitatibus harum. Quas omnis officiis rerum officiis eos.',NULL,'unread','2024-07-12 04:47:50','2024-07-12 04:47:50'),(10,'Aliya Ryan','hilario69@example.net','678.383.3274','432 Nader Field Suite 628\nJacquesland, NY 28837','Sunt deserunt ad culpa vitae.','Voluptas dolorem et placeat accusamus. Aliquid quasi laudantium amet ipsum rerum animi nesciunt. Sunt eveniet vero et sed perferendis sit. Reiciendis ea sed reiciendis maxime aut pariatur qui. Ad sequi et eos dolor dolor voluptas omnis. Dolor eum est eos quibusdam culpa. Ex doloribus qui ea nihil qui molestiae qui. Non ut aut in architecto suscipit.',NULL,'read','2024-07-12 04:47:50','2024-07-12 04:47:50');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(2,'EUR','€',0,2,1,0,0.84,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(3,'VND','₫',0,0,2,0,23203,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(4,'NGN','₦',1,2,2,0,895.52,'2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Prof. Thaddeus Lehner Jr.','customer@botble.com','+13238244126','VG','Maine','North Jabarifort','740 Auer Pine Apt. 374',1,1,'2024-07-12 04:47:48','2024-07-12 04:47:48','57135-4754'),(2,'Prof. Thaddeus Lehner Jr.','customer@botble.com','+14456798699','KZ','Maine','North Ricobury','175 Douglas Freeway',1,0,'2024-07-12 04:47:48','2024-07-12 04:47:48','32620'),(3,'Efren Streich III','vendor@botble.com','+16094311128','TK','Texas','Port Lizzie','5005 Selmer Fort',2,1,'2024-07-12 04:47:48','2024-07-12 04:47:48','83687'),(4,'Efren Streich III','vendor@botble.com','+19202405724','SS','Colorado','Port Athenaside','34261 Cloyd Port Suite 612',2,0,'2024-07-12 04:47:48','2024-07-12 04:47:48','95812-3970'),(5,'Blair Altenwerth','zulauf.clyde@example.org','+12398321356','BQ','Montana','Ritchiemouth','8816 Liam Mission',3,1,'2024-07-12 04:47:48','2024-07-12 04:47:48','49604-9525'),(6,'Mr. Kim Greenholt','jayda64@example.org','+18642003367','AW','Nevada','Feeneyberg','75596 Toy Station Suite 858',4,1,'2024-07-12 04:47:48','2024-07-12 04:47:48','26326-2667'),(7,'Dr. Jarrod Schmeler','chanelle12@example.org','+15012905194','AU','Arizona','Bednartown','28353 Stan Street Suite 646',5,1,'2024-07-12 04:47:49','2024-07-12 04:47:49','26525-0426'),(8,'Dr. Catherine Kuvalis','schaden.arlo@example.com','+16782203113','TT','Indiana','Langshire','1965 Callie Brook',6,1,'2024-07-12 04:47:49','2024-07-12 04:47:49','56119'),(9,'Ansley McLaughlin','lolita39@example.net','+16067629067','EE','Maine','Nienowhaven','216 Nickolas Mountain',7,1,'2024-07-12 04:47:49','2024-07-12 04:47:49','29067'),(10,'Alejandrin Corwin','brannon02@example.com','+13014638999','SX','California','Declanmouth','637 Johnny Springs Suite 372',8,1,'2024-07-12 04:47:49','2024-07-12 04:47:49','54103-1690'),(11,'Abdullah Kassulke','mgorczany@example.net','+15743872363','GI','Kentucky','Alfredoburgh','17586 Barrett Courts',9,1,'2024-07-12 04:47:50','2024-07-12 04:47:50','11468-1107'),(12,'Colleen Mitchell','kenneth.hyatt@example.com','+14457795787','MW','North Dakota','Sipesfort','79277 Kling Corner',10,1,'2024-07-12 04:47:50','2024-07-12 04:47:50','12818-4629');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Prof. Thaddeus Lehner Jr.','customer@botble.com','$2y$12$/m7mlqacZ1YLA9LlLTcbm.WmoOhgumE6iqAq1rZEuMs1yvYHEeaPa','main/customers/4.jpg','1996-06-14','+19163611765',NULL,'2024-07-12 04:47:48','2024-07-12 04:47:48','2024-07-12 11:47:48',NULL,0,NULL,'activated',NULL),(2,'Efren Streich III','vendor@botble.com','$2y$12$G5oB.Ph4XEHL4vszR9JyAuknFrcpRdewIMq2ZIo7aZtSj0HDZsrwm','main/customers/7.jpg','1990-06-20','+19842849248',NULL,'2024-07-12 04:47:48','2024-07-12 04:47:52','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(3,'Blair Altenwerth','zulauf.clyde@example.org','$2y$12$J4s1D3OWcJG0IvPqYyZTc.5BoKcxMfJbFZW/NO28NFYioyPEEzNgK','main/customers/1.jpg','1984-06-24','+17242422385',NULL,'2024-07-12 04:47:48','2024-07-12 04:47:52','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(4,'Mr. Kim Greenholt','jayda64@example.org','$2y$12$o/0tAlP7KoK0sRDlxfMTfecXaZPj1k/Wdx7iAfzCoRxuibcXvZKrG','main/customers/2.jpg','1998-06-21','+16199097809',NULL,'2024-07-12 04:47:48','2024-07-12 04:47:53','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(5,'Dr. Jarrod Schmeler','chanelle12@example.org','$2y$12$G4bt/EK3SwQvkqpXBirQy.QO3vLFdpUA63OHevXC/BwbSQtXlSZ9q','main/customers/3.jpg','1997-06-14','+18086320344',NULL,'2024-07-12 04:47:49','2024-07-12 04:47:53','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(6,'Dr. Catherine Kuvalis','schaden.arlo@example.com','$2y$12$Ppy9Y4W6VfpTKcdLz0SuV.PejKXASHnwlFbD1y2eTO8y.pw.fKgRW','main/customers/4.jpg','2002-07-08','+13863211520',NULL,'2024-07-12 04:47:49','2024-07-12 04:47:53','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(7,'Ansley McLaughlin','lolita39@example.net','$2y$12$ADleWXssmznBMxrvQDPyO.3gzb0IK7FfEDDPYlrbOXZc6AnFpvmWi','main/customers/5.jpg','1985-07-10','+17268222669',NULL,'2024-07-12 04:47:49','2024-07-12 04:47:53','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(8,'Alejandrin Corwin','brannon02@example.com','$2y$12$2cE8umaCzb1.07th9/SgJecx5dK1aT.45SNqxx.Kt0DnD6LTeGVgO','main/customers/6.jpg','2000-06-22','+19306801723',NULL,'2024-07-12 04:47:49','2024-07-12 04:47:54','2024-07-12 11:47:48',NULL,1,'2024-07-12 11:47:52','activated',NULL),(9,'Abdullah Kassulke','mgorczany@example.net','$2y$12$jY1amKh.tXTEbtdctMkheu.DfN/X/piCWb39pXdyYzEKBPCu4v2LC','main/customers/7.jpg','1986-06-23','+14066641828',NULL,'2024-07-12 04:47:50','2024-07-12 04:47:54','2024-07-12 11:47:48',NULL,0,NULL,'activated',NULL),(10,'Colleen Mitchell','kenneth.hyatt@example.com','$2y$12$d8RhdcIwiImPtBD2vQb5O.UzainHT6BOzJlMQGH6Bebo5ZsyeyyAm','main/customers/8.jpg','1994-06-27','+18547852294',NULL,'2024-07-12 04:47:50','2024-07-12 04:47:54','2024-07-12 11:47:48',NULL,0,NULL,'activated',NULL);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','KYFOGPVKODFZ','2024-07-11 11:47:51','2024-08-01 11:47:51',NULL,0,446,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(2,'Discount 2','5SOSSXKSKMQV','2024-07-11 11:47:51','2024-08-10 11:47:51',NULL,0,97,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(3,'Discount 3','CGNRF3HSFH5V','2024-07-11 11:47:51',NULL,NULL,0,35,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(4,'Discount 4','OBLRIC6ZMAZB','2024-07-11 11:47:51','2024-07-19 11:47:51',NULL,0,457,'coupon',0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(5,'Discount 5','4K8QMDWTL1AU','2024-07-11 11:47:51','2024-08-06 11:47:51',NULL,0,11,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(6,'Discount 6','BELEHKZN2EID','2024-07-11 11:47:51',NULL,NULL,0,446,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(7,'Discount 7','VTGYBIVCXEOD','2024-07-11 11:47:51',NULL,NULL,0,638,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(8,'Discount 8','DZBSQVMFOK0J','2024-07-11 11:47:51',NULL,NULL,0,19,'coupon',0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(9,'Discount 9','IKJK2APPMXLH','2024-07-11 11:47:51',NULL,NULL,0,589,'coupon',0,NULL,NULL,'amount','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL),(10,'Discount 10','7BW5ME3ZYQ77','2024-07-11 11:47:51',NULL,NULL,0,387,'coupon',0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,292.06,12,1),(1,2,92.8,8,4),(1,3,563.04,13,4),(1,4,924.66,17,2),(1,5,865.08,20,4),(1,6,429.24,12,4),(1,7,84.32,12,5),(1,8,587.2416,18,2),(1,9,438.9,6,2),(1,10,1327.62,9,3);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2024-08-10 00:00:00','published','2024-07-12 04:47:57','2024-07-12 04:47:57');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(1,2,'2 Year',10,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(1,3,'3 Year',20,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,4,'4GB',0,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,5,'8GB',10,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,6,'16GB',20,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,7,'Core i5',0,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,8,'Core i7',10,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,9,'Core i9',20,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,10,'128GB',0,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,11,'256GB',10,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,12,'512GB',20,9999,0,'2024-07-12 04:47:51','2024-07-12 04:47:51');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2024-07-12 04:47:51','2024-07-12 04:47:51');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2024-07-12 04:47:47','2024-07-12 04:47:47',0),(2,'Size','size','text',1,1,1,'published',1,'2024-07-12 04:47:47','2024-07-12 04:47:47',0),(3,'Weight','weight','text',1,1,1,'published',0,'2024-07-12 04:47:47','2024-07-12 04:47:47',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2024-07-12 04:47:47','2024-07-12 04:47:47',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(2,1,'Blue','blue','#333333',NULL,0,2,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(3,1,'Red','red','#DA323F',NULL,0,3,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(4,1,'Black','black','#2F366C',NULL,0,4,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(6,2,'S','s',NULL,NULL,1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(7,2,'M','m',NULL,NULL,0,2,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(8,2,'L','l',NULL,NULL,0,3,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(9,2,'XL','xl',NULL,NULL,0,4,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2024-07-12 04:47:47','2024-07-12 04:47:47'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Bags',0,NULL,'published',0,'fashion/product-categories/1.jpg',1,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'fashion/product-categories/4.jpg',1,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'fashion/product-categories/2.jpg',1,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(11,'Footwear',0,NULL,'published',2,'fashion/product-categories/6.jpg',1,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(12,'Accessories',0,NULL,'published',3,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(13,'Hats',12,NULL,'published',0,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(14,'Scarves',12,NULL,'published',1,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(15,'Jewelry',12,NULL,'published',2,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(17,'Activewear',16,NULL,'published',0,NULL,0,'2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,NULL),(18,'Running Shoes',16,NULL,'published',1,'fashion/product-categories/3.jpg',1,'2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,NULL),(19,'Outerwear',0,NULL,'published',5,'fashion/product-categories/5.jpg',1,'2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,6),(1,8),(1,11),(1,14),(1,27),(1,30),(1,32),(1,33),(1,37),(1,40),(2,1),(2,11),(2,21),(2,23),(2,28),(2,32),(2,36),(2,38),(3,7),(3,9),(3,12),(3,15),(3,16),(3,17),(3,20),(3,21),(3,22),(3,25),(3,37),(3,40),(4,2),(4,13),(4,15),(4,18),(4,22),(4,34),(4,38),(4,40),(4,43),(5,6),(5,8),(5,14),(5,18),(5,22),(6,3),(6,4),(6,7),(6,11),(6,12),(6,20),(6,25),(6,32),(6,34),(6,39),(6,43),(7,8),(7,10),(7,13),(7,27),(7,28),(7,31),(7,33),(7,42),(8,5),(8,7),(8,9),(8,10),(8,13),(8,14),(8,20),(8,25),(8,27),(8,31),(8,36),(9,1),(9,8),(9,11),(9,12),(9,15),(9,20),(9,21),(9,26),(9,34),(9,39),(10,4),(10,5),(10,7),(10,15),(10,38),(10,41),(10,42),(11,3),(11,4),(11,17),(11,23),(11,26),(11,28),(11,30),(11,35),(11,39),(12,12),(12,16),(12,21),(12,24),(12,25),(12,36),(12,41),(13,2),(13,5),(13,18),(13,19),(13,23),(13,24),(13,29),(13,33),(13,34),(13,37),(13,43),(14,2),(14,4),(14,6),(14,18),(14,19),(14,26),(14,29),(14,43),(15,3),(15,19),(15,29),(15,30),(15,33),(15,38),(15,42),(16,5),(16,6),(16,9),(16,13),(16,26),(16,29),(16,31),(16,35),(16,41),(16,42),(17,1),(17,3),(17,10),(17,14),(17,16),(17,24),(17,35),(17,37),(17,39),(18,1),(18,2),(18,10),(18,16),(18,17),(18,19),(18,23),(18,24),(18,31),(18,32),(18,35),(18,36),(19,9),(19,17),(19,22),(19,27),(19,28),(19,30),(19,40),(19,41);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,5),(1,7),(1,11),(1,17),(1,18),(1,27),(1,30),(1,32),(1,34),(1,36),(1,40),(2,1),(2,4),(2,6),(2,12),(2,13),(2,15),(2,20),(2,22),(2,25),(2,35),(2,43),(3,9),(3,10),(3,16),(3,19),(3,21),(3,23),(3,26),(3,39),(3,41),(4,2),(4,3),(4,8),(4,14),(4,24),(4,28),(4,29),(4,31),(4,33),(4,37),(4,38),(4,42);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2024-07-12 04:47:55','2024-07-12 04:47:55',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2024-07-12 04:47:55','2024-07-12 04:47:55',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2024-07-12 04:47:55','2024-07-12 04:47:55',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2024-07-12 04:47:55','2024-07-12 04:47:55',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,3,0,0.00,'fixed',1),(1,7,0,0.00,'fixed',1),(1,11,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(1,16,0,0.00,'fixed',1),(1,21,0,0.00,'fixed',1),(1,43,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,6,0,0.00,'fixed',1),(2,25,0,0.00,'fixed',1),(2,29,0,0.00,'fixed',1),(2,35,0,0.00,'fixed',1),(2,36,0,0.00,'fixed',1),(2,40,0,0.00,'fixed',1),(3,7,0,0.00,'fixed',1),(3,9,0,0.00,'fixed',1),(3,15,0,0.00,'fixed',1),(3,24,0,0.00,'fixed',1),(3,32,0,0.00,'fixed',1),(3,43,0,0.00,'fixed',1),(4,2,0,0.00,'fixed',1),(4,12,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,27,0,0.00,'fixed',1),(4,28,0,0.00,'fixed',1),(4,43,0,0.00,'fixed',1),(5,10,0,0.00,'fixed',1),(5,16,0,0.00,'fixed',1),(5,18,0,0.00,'fixed',1),(5,30,0,0.00,'fixed',1),(5,33,0,0.00,'fixed',1),(5,35,0,0.00,'fixed',1),(5,42,0,0.00,'fixed',1),(6,8,0,0.00,'fixed',1),(6,15,0,0.00,'fixed',1),(6,16,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,19,0,0.00,'fixed',1),(6,36,0,0.00,'fixed',1),(6,37,0,0.00,'fixed',1),(7,12,0,0.00,'fixed',1),(7,28,0,0.00,'fixed',1),(7,29,0,0.00,'fixed',1),(7,32,0,0.00,'fixed',1),(7,33,0,0.00,'fixed',1),(7,37,0,0.00,'fixed',1),(7,43,0,0.00,'fixed',1),(8,4,0,0.00,'fixed',1),(8,6,0,0.00,'fixed',1),(8,9,0,0.00,'fixed',1),(8,12,0,0.00,'fixed',1),(8,15,0,0.00,'fixed',1),(8,31,0,0.00,'fixed',1),(8,35,0,0.00,'fixed',1),(9,2,0,0.00,'fixed',1),(9,4,0,0.00,'fixed',1),(9,13,0,0.00,'fixed',1),(9,17,0,0.00,'fixed',1),(9,26,0,0.00,'fixed',1),(9,36,0,0.00,'fixed',1),(10,3,0,0.00,'fixed',1),(10,6,0,0.00,'fixed',1),(10,7,0,0.00,'fixed',1),(10,13,0,0.00,'fixed',1),(10,20,0,0.00,'fixed',1),(10,23,0,0.00,'fixed',1),(10,32,0,0.00,'fixed',1),(11,7,0,0.00,'fixed',1),(11,18,0,0.00,'fixed',1),(11,23,0,0.00,'fixed',1),(11,27,0,0.00,'fixed',1),(11,31,0,0.00,'fixed',1),(11,35,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,24,0,0.00,'fixed',1),(12,29,0,0.00,'fixed',1),(12,32,0,0.00,'fixed',1),(12,33,0,0.00,'fixed',1),(12,40,0,0.00,'fixed',1),(12,41,0,0.00,'fixed',1),(13,5,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,23,0,0.00,'fixed',1),(13,26,0,0.00,'fixed',1),(13,29,0,0.00,'fixed',1),(13,37,0,0.00,'fixed',1),(14,2,0,0.00,'fixed',1),(14,5,0,0.00,'fixed',1),(14,29,0,0.00,'fixed',1),(14,30,0,0.00,'fixed',1),(14,33,0,0.00,'fixed',1),(14,40,0,0.00,'fixed',1),(14,43,0,0.00,'fixed',1),(15,5,0,0.00,'fixed',1),(15,13,0,0.00,'fixed',1),(15,17,0,0.00,'fixed',1),(15,21,0,0.00,'fixed',1),(15,23,0,0.00,'fixed',1),(15,33,0,0.00,'fixed',1),(15,41,0,0.00,'fixed',1),(16,7,0,0.00,'fixed',1),(16,15,0,0.00,'fixed',1),(16,17,0,0.00,'fixed',1),(16,24,0,0.00,'fixed',1),(16,27,0,0.00,'fixed',1),(16,33,0,0.00,'fixed',1),(16,39,0,0.00,'fixed',1),(17,13,0,0.00,'fixed',1),(17,15,0,0.00,'fixed',1),(17,21,0,0.00,'fixed',1),(17,22,0,0.00,'fixed',1),(17,33,0,0.00,'fixed',1),(17,43,0,0.00,'fixed',1),(18,6,0,0.00,'fixed',1),(18,9,0,0.00,'fixed',1),(18,21,0,0.00,'fixed',1),(18,28,0,0.00,'fixed',1),(18,34,0,0.00,'fixed',1),(18,37,0,0.00,'fixed',1),(18,42,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,27,0,0.00,'fixed',1),(19,38,0,0.00,'fixed',1),(19,39,0,0.00,'fixed',1),(19,41,0,0.00,'fixed',1),(19,43,0,0.00,'fixed',1),(20,3,0,0.00,'fixed',1),(20,9,0,0.00,'fixed',1),(20,14,0,0.00,'fixed',1),(20,15,0,0.00,'fixed',1),(20,16,0,0.00,'fixed',1),(20,21,0,0.00,'fixed',1),(20,37,0,0.00,'fixed',1),(21,1,0,0.00,'fixed',1),(21,4,0,0.00,'fixed',1),(21,7,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,12,0,0.00,'fixed',1),(21,17,0,0.00,'fixed',1),(21,19,0,0.00,'fixed',1),(22,11,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,16,0,0.00,'fixed',1),(22,24,0,0.00,'fixed',1),(22,30,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,9,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,18,0,0.00,'fixed',1),(23,30,0,0.00,'fixed',1),(23,33,0,0.00,'fixed',1),(24,8,0,0.00,'fixed',1),(24,12,0,0.00,'fixed',1),(24,14,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(24,33,0,0.00,'fixed',1),(24,38,0,0.00,'fixed',1),(24,40,0,0.00,'fixed',1),(25,6,0,0.00,'fixed',1),(25,20,0,0.00,'fixed',1),(25,22,0,0.00,'fixed',1),(25,27,0,0.00,'fixed',1),(25,35,0,0.00,'fixed',1),(25,39,0,0.00,'fixed',1),(25,43,0,0.00,'fixed',1),(26,5,0,0.00,'fixed',1),(26,12,0,0.00,'fixed',1),(26,15,0,0.00,'fixed',1),(26,29,0,0.00,'fixed',1),(26,33,0,0.00,'fixed',1),(26,35,0,0.00,'fixed',1),(26,39,0,0.00,'fixed',1),(27,1,0,0.00,'fixed',1),(27,3,0,0.00,'fixed',1),(27,9,0,0.00,'fixed',1),(27,11,0,0.00,'fixed',1),(27,19,0,0.00,'fixed',1),(27,32,0,0.00,'fixed',1),(27,36,0,0.00,'fixed',1),(28,1,0,0.00,'fixed',1),(28,4,0,0.00,'fixed',1),(28,8,0,0.00,'fixed',1),(28,11,0,0.00,'fixed',1),(28,13,0,0.00,'fixed',1),(28,33,0,0.00,'fixed',1),(28,39,0,0.00,'fixed',1),(29,7,0,0.00,'fixed',1),(29,11,0,0.00,'fixed',1),(29,12,0,0.00,'fixed',1),(29,19,0,0.00,'fixed',1),(29,21,0,0.00,'fixed',1),(29,22,0,0.00,'fixed',1),(29,35,0,0.00,'fixed',1),(30,7,0,0.00,'fixed',1),(30,18,0,0.00,'fixed',1),(30,29,0,0.00,'fixed',1),(30,31,0,0.00,'fixed',1),(30,32,0,0.00,'fixed',1),(30,34,0,0.00,'fixed',1),(30,40,0,0.00,'fixed',1),(31,4,0,0.00,'fixed',1),(31,10,0,0.00,'fixed',1),(31,16,0,0.00,'fixed',1),(31,25,0,0.00,'fixed',1),(31,32,0,0.00,'fixed',1),(31,35,0,0.00,'fixed',1),(32,8,0,0.00,'fixed',1),(32,13,0,0.00,'fixed',1),(32,23,0,0.00,'fixed',1),(32,35,0,0.00,'fixed',1),(32,38,0,0.00,'fixed',1),(32,39,0,0.00,'fixed',1),(32,43,0,0.00,'fixed',1),(33,7,0,0.00,'fixed',1),(33,8,0,0.00,'fixed',1),(33,14,0,0.00,'fixed',1),(33,26,0,0.00,'fixed',1),(33,30,0,0.00,'fixed',1),(34,2,0,0.00,'fixed',1),(34,4,0,0.00,'fixed',1),(34,5,0,0.00,'fixed',1),(34,10,0,0.00,'fixed',1),(34,18,0,0.00,'fixed',1),(34,19,0,0.00,'fixed',1),(34,33,0,0.00,'fixed',1),(35,2,0,0.00,'fixed',1),(35,4,0,0.00,'fixed',1),(35,8,0,0.00,'fixed',1),(35,14,0,0.00,'fixed',1),(35,25,0,0.00,'fixed',1),(35,33,0,0.00,'fixed',1),(35,40,0,0.00,'fixed',1),(36,1,0,0.00,'fixed',1),(36,15,0,0.00,'fixed',1),(36,17,0,0.00,'fixed',1),(36,21,0,0.00,'fixed',1),(36,23,0,0.00,'fixed',1),(36,33,0,0.00,'fixed',1),(36,40,0,0.00,'fixed',1),(37,2,0,0.00,'fixed',1),(37,7,0,0.00,'fixed',1),(37,19,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,40,0,0.00,'fixed',1),(37,41,0,0.00,'fixed',1),(38,14,0,0.00,'fixed',1),(38,17,0,0.00,'fixed',1),(38,19,0,0.00,'fixed',1),(38,25,0,0.00,'fixed',1),(38,31,0,0.00,'fixed',1),(38,35,0,0.00,'fixed',1),(38,36,0,0.00,'fixed',1),(39,1,0,0.00,'fixed',1),(39,21,0,0.00,'fixed',1),(39,27,0,0.00,'fixed',1),(39,31,0,0.00,'fixed',1),(39,35,0,0.00,'fixed',1),(39,41,0,0.00,'fixed',1),(39,42,0,0.00,'fixed',1),(40,9,0,0.00,'fixed',1),(40,12,0,0.00,'fixed',1),(40,19,0,0.00,'fixed',1),(40,24,0,0.00,'fixed',1),(40,30,0,0.00,'fixed',1),(40,34,0,0.00,'fixed',1),(41,12,0,0.00,'fixed',1),(41,23,0,0.00,'fixed',1),(41,27,0,0.00,'fixed',1),(41,34,0,0.00,'fixed',1),(41,35,0,0.00,'fixed',1),(41,36,0,0.00,'fixed',1),(41,42,0,0.00,'fixed',1),(42,1,0,0.00,'fixed',1),(42,5,0,0.00,'fixed',1),(42,12,0,0.00,'fixed',1),(42,13,0,0.00,'fixed',1),(42,24,0,0.00,'fixed',1),(42,35,0,0.00,'fixed',1),(42,41,0,0.00,'fixed',1),(43,9,0,0.00,'fixed',1),(43,11,0,0.00,'fixed',1),(43,19,0,0.00,'fixed',1),(43,20,0,0.00,'fixed',1),(43,27,0,0.00,'fixed',1),(43,37,0,0.00,'fixed',1),(43,42,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(2,4,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(3,8,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(4,8,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(5,12,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(6,12,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(7,16,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(8,16,'ecommerce/digital-product-files/product-1.png','{\"filename\":\"product-1.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-1\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(9,20,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(10,20,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(11,24,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(12,24,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(13,28,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(14,28,'ecommerce/digital-product-files/product-7.png','{\"filename\":\"product-7.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-7\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(15,32,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(16,32,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(17,36,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(18,36,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(19,40,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(20,40,'ecommerce/digital-product-files/product-5.png','{\"filename\":\"product-5.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-5\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(21,47,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(22,48,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(23,49,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(24,50,'ecommerce/digital-product-files/product-2.png','{\"filename\":\"product-2.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-2\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(25,71,'ecommerce/digital-product-files/product-8.png','{\"filename\":\"product-8.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-8.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-8\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(26,72,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(27,73,'ecommerce/digital-product-files/product-6.png','{\"filename\":\"product-6.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-6.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-6\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(28,79,'ecommerce/digital-product-files/product-3.png','{\"filename\":\"product-3.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-3\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57'),(29,80,'ecommerce/digital-product-files/product-4.png','{\"filename\":\"product-4.png\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.png\",\"mime_type\":\"image\\/png\",\"size\":9803,\"modified\":\"2024-07-12 11:47:57\",\"name\":\"product-4\",\"extension\":\"png\"}','2024-07-12 04:47:57','2024-07-12 04:47:57');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,6),(1,18),(1,24),(1,27),(1,33),(1,36),(1,42),(2,3),(2,9),(2,15),(2,39),(3,12),(3,21),(3,30);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(2,'New','#006554','published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(3,'Sale','#9A3B00','published','2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,6),(2,1),(2,2),(2,5),(3,1),(3,2),(3,4),(4,1),(4,3),(4,6),(5,2),(5,4),(5,5),(6,2),(6,3),(6,4),(7,1),(7,2),(7,3),(8,2),(8,4),(8,5),(9,1),(9,2),(9,4),(10,3),(10,4),(10,6),(11,1),(11,3),(11,4),(12,2),(12,3),(12,6),(13,3),(13,4),(13,5),(14,1),(14,2),(14,4),(15,2),(15,3),(15,6),(16,2),(16,4),(16,5),(17,4),(17,5),(17,6),(18,1),(18,5),(18,6),(19,1),(19,2),(19,4),(20,1),(20,2),(20,4),(21,2),(21,3),(21,4),(22,1),(22,2),(22,3),(23,2),(23,5),(23,6),(24,1),(24,2),(24,3),(25,3),(25,4),(25,5),(26,2),(26,5),(26,6),(27,2),(27,4),(27,6),(28,1),(28,3),(28,5),(29,2),(29,4),(29,6),(30,1),(30,2),(30,3),(31,1),(31,4),(31,5),(32,2),(32,4),(32,6),(33,1),(33,3),(33,5),(34,1),(34,4),(34,5),(35,1),(35,3),(35,6),(36,1),(36,4),(36,5),(37,3),(37,4),(37,5),(38,3),(38,4),(38,6),(39,1),(39,5),(39,6),(40,2),(40,3),(40,5),(41,1),(41,2),(41,4),(42,2),(42,4),(42,5),(43,2),(43,5),(43,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(2,'Mobile',NULL,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(3,'Iphone',NULL,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(4,'Printer',NULL,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(5,'Office',NULL,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(6,'IT',NULL,'published','2024-07-12 04:47:50','2024-07-12 04:47:50');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (1,1,1),(15,1,8),(17,1,9),(25,1,13),(47,1,24),(19,2,10),(23,2,12),(31,2,16),(43,2,22),(45,2,23),(51,2,26),(3,3,2),(11,3,6),(21,3,11),(29,3,15),(39,3,20),(13,4,7),(27,4,14),(35,4,18),(37,4,19),(49,4,25),(5,5,3),(7,5,4),(9,5,5),(33,5,17),(41,5,21),(14,6,7),(16,6,8),(22,6,11),(26,6,13),(28,6,14),(30,6,15),(40,6,20),(44,6,22),(46,6,23),(6,7,3),(18,7,9),(20,7,10),(24,7,12),(50,7,25),(12,8,6),(34,8,17),(48,8,24),(2,9,1),(10,9,5),(38,9,19),(42,9,21),(52,9,26),(4,10,2),(8,10,4),(32,10,16),(36,10,18),(59,11,30),(75,11,38),(55,13,28),(57,13,29),(61,13,31),(71,13,36),(81,13,41),(83,13,42),(63,14,32),(65,14,33),(67,14,34),(69,14,35),(77,14,39),(79,14,40),(53,15,27),(73,15,37),(85,15,43),(60,16,30),(72,16,36),(84,16,42),(86,16,43),(54,17,27),(64,17,32),(70,17,35),(78,17,39),(58,18,29),(76,18,38),(56,19,28),(68,19,34),(74,19,37),(82,19,41),(62,20,31),(66,20,33),(80,20,40);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,5,1),(2,45,6,1),(3,46,6,0),(4,47,8,1),(5,48,8,0),(6,49,8,0),(7,50,8,0),(8,51,9,1),(9,52,9,0),(10,53,10,1),(11,54,11,1),(12,55,11,0),(13,56,11,0),(14,57,13,1),(15,58,13,0),(16,59,13,0),(17,60,14,1),(18,61,14,0),(19,62,14,0),(20,63,15,1),(21,64,15,0),(22,65,17,1),(23,66,18,1),(24,67,18,0),(25,68,19,1),(26,69,19,0),(27,70,21,1),(28,71,24,1),(29,72,24,0),(30,73,24,0),(31,74,26,1),(32,75,31,1),(33,76,33,1),(34,77,34,1),(35,78,35,1),(36,79,36,1),(37,80,36,0),(38,81,41,1),(39,82,41,0),(40,83,41,0),(41,84,41,0),(42,85,41,0),(43,86,43,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2024-07-12',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(3,21,0),(4,21,0),(3,24,0),(4,24,0),(3,26,0),(4,26,0),(3,31,0),(4,31,0),(3,33,0),(4,33,0),(3,34,0),(4,34,0),(3,35,0),(4,35,0),(3,36,0),(4,36,0),(3,41,0),(4,41,0),(3,43,0),(4,43,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\"]','QO-199',0,11,0,1,1,4,0,0,1434,859,NULL,NULL,20.00,20.00,12.00,566.00,NULL,20237,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(2,'Floral Maxi Dress','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\"]','OV-137',0,17,0,1,1,2,0,0,361,290,NULL,NULL,13.00,20.00,19.00,755.00,NULL,127226,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(3,'Leather Ankle Boots','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\"]','SH-180',0,14,0,1,1,5,0,0,1746,828,NULL,NULL,13.00,18.00,11.00,841.00,NULL,172085,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(4,'Knit Turtleneck Sweater (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\"]','JH-151',0,17,0,1,1,5,0,0,2157,1401,NULL,NULL,15.00,17.00,14.00,647.00,NULL,130526,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(5,'Classic Aviator Sunglasses','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\"]','N2-175-A1',0,16,0,1,1,3,0,0,1068,NULL,NULL,NULL,18.00,18.00,10.00,736.00,NULL,180416,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(6,'Tailored Wool Blazer','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\"]','8A-169-A1',0,16,0,1,1,3,0,0,588,NULL,NULL,NULL,10.00,11.00,12.00,771.00,NULL,51514,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(7,'Bohemian Fringe Handbag','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\"]','89-168',0,10,0,1,0,2,0,0,1509,124,NULL,NULL,13.00,20.00,14.00,645.00,NULL,37012,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(8,'Silk Scarf with Geometric Print (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]','JR-162-A1',0,13,0,1,1,4,0,0,804,707.52,NULL,NULL,16.00,17.00,12.00,792.00,NULL,36453,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(9,'High-Waisted Wide Leg Trousers','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]','IT-172-A1',0,20,0,1,0,2,0,0,1254,NULL,NULL,NULL,16.00,10.00,14.00,581.00,NULL,95341,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(10,'Embroidered Boho Blouse','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\"]','MQ-105-A1',0,13,0,1,0,5,0,0,2289,NULL,NULL,NULL,15.00,15.00,18.00,695.00,NULL,100566,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(11,'Statement Chunky Necklace','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-5.png\"]','GI-143-A1',0,19,0,1,0,1,0,0,1587,NULL,NULL,NULL,11.00,11.00,13.00,524.00,NULL,144009,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(12,'Chic Fedora Hat (Digital)','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-5.png\"]','LJ-168',0,10,0,1,1,2,0,0,915,663,NULL,NULL,17.00,11.00,11.00,501.00,NULL,85891,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(13,'Strappy Block Heel Sandals','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\"]','F2-158-A1',0,15,0,1,1,4,0,0,1925,NULL,NULL,NULL,11.00,10.00,20.00,663.00,NULL,22661,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(14,'Velvet Evening Gown','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]','GZ-137-A1',0,16,0,1,1,4,0,0,1754,NULL,NULL,NULL,12.00,20.00,19.00,829.00,NULL,118618,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(15,'Quilted Crossbody Bag','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]','PY-102-A1',0,13,0,1,1,3,0,0,301,NULL,NULL,NULL,18.00,19.00,18.00,679.00,NULL,125935,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(16,'Distressed Skinny Jeans (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\"]','66-111',0,15,0,1,1,4,0,0,662,110,NULL,NULL,15.00,10.00,20.00,833.00,NULL,165394,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(17,'Lace-Up Combat Boots','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]','1C-192-A1',0,13,0,1,1,4,0,0,1787,NULL,NULL,NULL,13.00,11.00,16.00,646.00,NULL,44178,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(18,'Cotton Striped T-Shirt Dress','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]','S2-162-A1',0,18,0,1,0,5,0,0,268,NULL,NULL,NULL,11.00,11.00,12.00,785.00,NULL,87690,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(19,'Printed Palazzo Pants','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]','2W-142-A1',0,19,0,1,0,1,0,0,663,NULL,NULL,NULL,19.00,20.00,16.00,744.00,NULL,73173,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(20,'Structured Satchel Bag (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]','QK-118',0,16,0,1,1,5,0,0,1778,1144,NULL,NULL,10.00,17.00,10.00,789.00,NULL,190403,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(21,'Off-Shoulder Ruffle Top','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]','BP-109-A1',0,18,0,1,0,3,0,0,1442,NULL,NULL,NULL,15.00,16.00,11.00,668.00,NULL,57377,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(22,'Suede Pointed-Toe Pumps','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]','AA-153',0,15,0,1,0,2,0,0,1069,185,NULL,NULL,11.00,13.00,19.00,502.00,NULL,132568,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(23,'Cropped Cable Knit Sweater','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]','84-159',0,17,0,1,1,5,0,0,355,237,NULL,NULL,17.00,12.00,13.00,620.00,NULL,127501,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(24,'Athleisure Jogger Pants (Digital)','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]','RV-198-A1',0,19,0,1,1,5,0,0,256,179.2,NULL,NULL,17.00,13.00,10.00,662.00,NULL,46988,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(25,'Leopard Print Midi Skirt','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]','ZL-158',0,16,0,1,0,3,0,0,2426,393,NULL,NULL,10.00,11.00,15.00,723.00,NULL,38782,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(26,'Retro Cat-Eye Sunglasses','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]','KK-101-A1',0,11,0,1,1,3,0,0,1205,NULL,NULL,NULL,18.00,15.00,17.00,651.00,NULL,8375,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(27,'Faux Fur Trimmed Coat','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]','XI-153',0,14,0,1,1,3,0,0,1369,149,NULL,NULL,14.00,19.00,13.00,556.00,NULL,173168,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(28,'Boho Fringed Kimono (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]','6C-113',0,18,0,1,0,1,0,0,1622,516,NULL,NULL,11.00,10.00,19.00,530.00,NULL,106073,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(29,'Ruffled Wrap Dress','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-5.png\"]','RS-167',0,14,0,1,0,5,0,0,499,385,NULL,NULL,17.00,15.00,17.00,813.00,NULL,16814,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(30,'Beaded Evening Clutch','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]','8Y-196',0,16,0,1,1,1,0,0,1900,324,NULL,NULL,18.00,10.00,16.00,839.00,NULL,134973,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(31,'Wide Brim Floppy Hat','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]','XR-135-A1',0,13,0,1,1,4,0,0,1653,NULL,NULL,NULL,12.00,12.00,12.00,861.00,NULL,185771,'2024-07-12 04:47:55','2024-07-12 04:47:56','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(32,'Denim Overall Jumpsuit (Digital)','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-2.png\"]','ST-168',0,15,0,1,1,1,0,0,1121,994,NULL,NULL,15.00,16.00,13.00,885.00,NULL,106201,'2024-07-12 04:47:55','2024-07-12 04:47:55','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(33,'Embellished Ballet Flats','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]','ZM-140-A1',0,15,0,1,1,1,0,0,2089,NULL,NULL,NULL,17.00,14.00,12.00,565.00,NULL,95892,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(34,'Pleated Midi Skirt','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]','ZB-106-A1',0,15,0,1,1,3,0,0,307,NULL,NULL,NULL,20.00,12.00,11.00,528.00,NULL,65116,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(35,'Velour Tracksuit Set','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\"]','YL-150-A1',0,12,0,1,1,2,0,0,2318,NULL,NULL,NULL,19.00,16.00,16.00,704.00,NULL,132626,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(36,'Geometric Patterned Cardigan (Digital)','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\"]','96-159-A1',0,14,0,1,0,2,0,0,934,663.14,NULL,NULL,19.00,12.00,17.00,876.00,NULL,79587,'2024-07-12 04:47:56','2024-07-12 04:47:57','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(37,'Buckle Detail Ankle Booties','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-4.png\"]','YC-142',0,13,0,1,1,4,0,0,2409,1831,NULL,NULL,16.00,13.00,15.00,584.00,NULL,197291,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(38,'Embroidered Bomber Jacket','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]','7Y-174',0,19,0,1,0,1,0,0,730,597,NULL,NULL,11.00,16.00,13.00,749.00,NULL,88126,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(39,'Cowl Neck Knit Poncho','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-2.png\"]','VH-100',0,20,0,1,1,5,0,0,645,263,NULL,NULL,13.00,18.00,14.00,769.00,NULL,74671,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(40,'Chunky Knit Infinity Scarf (Digital)','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]','59-131',0,19,0,1,1,2,0,0,726,528,NULL,NULL,12.00,16.00,18.00,705.00,NULL,64385,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(41,'Retro High-Top Sneakers','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]','IH-137-A1',0,14,0,1,0,4,0,0,1716,NULL,NULL,NULL,15.00,17.00,20.00,787.00,NULL,19778,'2024-07-12 04:47:56','2024-07-12 04:47:57','in_stock',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(42,'Faux Leather Leggings','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-8.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-2.png\"]','TZ-116',0,12,0,1,0,5,0,0,1709,137,NULL,NULL,14.00,20.00,16.00,834.00,NULL,89848,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(43,'Metallic Pleated Maxi Skirt','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Women\'s Floral Dress</span>\n                        <h3 class=\"tp-product-details-desc-title\">Elegance Redefined</h3>\n                        <p>\n                            Embrace timeless elegance with our exquisite women\'s floral dress. Crafted from luxurious fabrics and adorned with delicate floral patterns, this dress exudes grace and sophistication. Whether attending a garden party or a formal event, you\'ll make a stunning impression in this captivating ensemble.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Flawless Fit and Comfort</h3>\n                        <p>\n                            Designed for both style and comfort, our floral dress features a tailored silhouette that flatters every figure. The soft, breathable fabric ensures all-day comfort, while the fitted bodice and flowing skirt create a graceful silhouette. Feel confident and poised with every step you take.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-1.png\" alt=\"Women\'s Floral Dress\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/fashion/products/product-2.png\" alt=\"Back View of Floral Dress\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Versatile Style\n                        </h3>\n                        <p>\n                            Transition effortlessly from day to night with our versatile floral dress. Pair it with sandals and a sunhat for a chic daytime look, or dress it up with heels and statement jewelry for an evening soirée. However you style it, you\'ll radiate confidence and charm.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Quality Craftsmanship</h3>\n                        <img src=\"/storage/fashion/products/product-3.png\" alt=\"Fashion Atelier\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-3.png\"]','N7-143-A1',0,20,0,1,1,4,0,0,1024,NULL,NULL,NULL,16.00,18.00,13.00,814.00,NULL,31459,'2024-07-12 04:47:56','2024-07-12 04:47:57','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(44,'Classic Aviator Sunglasses',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','N2-175-A1',0,16,0,1,0,3,1,0,1068,NULL,NULL,NULL,18.00,18.00,10.00,736.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(45,'Tailored Wool Blazer',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','8A-169-A1',0,16,0,1,0,3,1,0,588,NULL,NULL,NULL,10.00,11.00,12.00,771.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(46,'Tailored Wool Blazer',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','8A-169-A1-A2',0,16,0,1,0,3,1,0,588,NULL,NULL,NULL,10.00,11.00,12.00,771.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(47,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','JR-162-A1',0,13,0,1,0,4,1,0,804,707.52,NULL,NULL,16.00,17.00,12.00,792.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL,0),(48,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','JR-162-A1-A2',0,13,0,1,0,4,1,0,804,619.08,NULL,NULL,16.00,17.00,12.00,792.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(49,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','JR-162-A1-A3',0,13,0,1,0,4,1,0,804,578.88,NULL,NULL,16.00,17.00,12.00,792.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(50,'Silk Scarf with Geometric Print (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','JR-162-A1-A4',0,13,0,1,0,4,1,0,804,635.16,NULL,NULL,16.00,17.00,12.00,792.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(51,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','IT-172-A1',0,20,0,1,0,2,1,0,1254,NULL,NULL,NULL,16.00,10.00,14.00,581.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(52,'High-Waisted Wide Leg Trousers',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','IT-172-A1-A2',0,20,0,1,0,2,1,0,1254,NULL,NULL,NULL,16.00,10.00,14.00,581.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(53,'Embroidered Boho Blouse',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','MQ-105-A1',0,13,0,1,0,5,1,0,2289,NULL,NULL,NULL,15.00,15.00,18.00,695.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(54,'Statement Chunky Necklace',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','GI-143-A1',0,19,0,1,0,1,1,0,1587,NULL,NULL,NULL,11.00,11.00,13.00,524.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(55,'Statement Chunky Necklace',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','GI-143-A1-A2',0,19,0,1,0,1,1,0,1587,NULL,NULL,NULL,11.00,11.00,13.00,524.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(56,'Statement Chunky Necklace',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','GI-143-A1-A3',0,19,0,1,0,1,1,0,1587,NULL,NULL,NULL,11.00,11.00,13.00,524.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(57,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','F2-158-A1',0,15,0,1,0,4,1,0,1925,NULL,NULL,NULL,11.00,10.00,20.00,663.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(58,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','F2-158-A1-A2',0,15,0,1,0,4,1,0,1925,NULL,NULL,NULL,11.00,10.00,20.00,663.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(59,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','F2-158-A1-A3',0,15,0,1,0,4,1,0,1925,NULL,NULL,NULL,11.00,10.00,20.00,663.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(60,'Velvet Evening Gown',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','GZ-137-A1',0,16,0,1,0,4,1,0,1754,NULL,NULL,NULL,12.00,20.00,19.00,829.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(61,'Velvet Evening Gown',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','GZ-137-A1-A2',0,16,0,1,0,4,1,0,1754,NULL,NULL,NULL,12.00,20.00,19.00,829.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(62,'Velvet Evening Gown',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','GZ-137-A1-A3',0,16,0,1,0,4,1,0,1754,NULL,NULL,NULL,12.00,20.00,19.00,829.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(63,'Quilted Crossbody Bag',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','PY-102-A1',0,13,0,1,0,3,1,0,301,NULL,NULL,NULL,18.00,19.00,18.00,679.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(64,'Quilted Crossbody Bag',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','PY-102-A1-A2',0,13,0,1,0,3,1,0,301,NULL,NULL,NULL,18.00,19.00,18.00,679.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(65,'Lace-Up Combat Boots',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','1C-192-A1',0,13,0,1,0,4,1,0,1787,NULL,NULL,NULL,13.00,11.00,16.00,646.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(66,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','S2-162-A1',0,18,0,1,0,5,1,0,268,NULL,NULL,NULL,11.00,11.00,12.00,785.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(67,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','S2-162-A1-A2',0,18,0,1,0,5,1,0,268,NULL,NULL,NULL,11.00,11.00,12.00,785.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(68,'Printed Palazzo Pants',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','2W-142-A1',0,19,0,1,0,1,1,0,663,NULL,NULL,NULL,19.00,20.00,16.00,744.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(69,'Printed Palazzo Pants',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','2W-142-A1-A2',0,19,0,1,0,1,1,0,663,NULL,NULL,NULL,19.00,20.00,16.00,744.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(70,'Off-Shoulder Ruffle Top',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','BP-109-A1',0,18,0,1,0,3,1,0,1442,NULL,NULL,NULL,15.00,16.00,11.00,668.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(71,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','RV-198-A1',0,19,0,1,0,5,1,0,256,179.2,NULL,NULL,17.00,13.00,10.00,662.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL,0),(72,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','RV-198-A1-A2',0,19,0,1,0,5,1,0,256,217.6,NULL,NULL,17.00,13.00,10.00,662.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(73,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','RV-198-A1-A3',0,19,0,1,0,5,1,0,256,197.12,NULL,NULL,17.00,13.00,10.00,662.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(74,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','KK-101-A1',0,11,0,1,0,3,1,0,1205,NULL,NULL,NULL,18.00,15.00,17.00,651.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(75,'Wide Brim Floppy Hat',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','XR-135-A1',0,13,0,1,0,4,1,0,1653,NULL,NULL,NULL,12.00,12.00,12.00,861.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(76,'Embellished Ballet Flats',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','ZM-140-A1',0,15,0,1,0,1,1,0,2089,NULL,NULL,NULL,17.00,14.00,12.00,565.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(77,'Pleated Midi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-7.png\"]','ZB-106-A1',0,15,0,1,0,3,1,0,307,NULL,NULL,NULL,20.00,12.00,11.00,528.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(78,'Velour Tracksuit Set',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','YL-150-A1',0,12,0,1,0,2,1,0,2318,NULL,NULL,NULL,19.00,16.00,16.00,704.00,NULL,0,'2024-07-12 04:47:56','2024-07-12 04:47:56','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(79,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-3.png\"]','96-159-A1',0,14,0,1,0,2,1,0,934,663.14,NULL,NULL,19.00,12.00,17.00,876.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,NULL,NULL,0),(80,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','96-159-A1-A2',0,14,0,1,0,2,1,0,934,821.92,NULL,NULL,19.00,12.00,17.00,876.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital',NULL,NULL,0,0,0,0),(81,'Retro High-Top Sneakers',NULL,NULL,'published','[\"fashion\\/products\\/product-6.png\"]','IH-137-A1',0,14,0,1,0,4,1,0,1716,NULL,NULL,NULL,15.00,17.00,20.00,787.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0),(82,'Retro High-Top Sneakers',NULL,NULL,'published','[\"fashion\\/products\\/product-8.png\"]','IH-137-A1-A2',0,14,0,1,0,4,1,0,1716,NULL,NULL,NULL,15.00,17.00,20.00,787.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(83,'Retro High-Top Sneakers',NULL,NULL,'published','[\"fashion\\/products\\/product-2.png\"]','IH-137-A1-A3',0,14,0,1,0,4,1,0,1716,NULL,NULL,NULL,15.00,17.00,20.00,787.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(84,'Retro High-Top Sneakers',NULL,NULL,'published','[\"fashion\\/products\\/product-1.png\"]','IH-137-A1-A4',0,14,0,1,0,4,1,0,1716,NULL,NULL,NULL,15.00,17.00,20.00,787.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(85,'Retro High-Top Sneakers',NULL,NULL,'published','[\"fashion\\/products\\/product-5.png\"]','IH-137-A1-A5',0,14,0,1,0,4,1,0,1716,NULL,NULL,NULL,15.00,17.00,20.00,787.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,0,0,0),(86,'Metallic Pleated Maxi Skirt',NULL,NULL,'published','[\"fashion\\/products\\/product-4.png\"]','N7-143-A1',0,20,0,1,0,4,1,0,1024,NULL,NULL,NULL,16.00,18.00,13.00,814.00,NULL,0,'2024-07-12 04:47:57','2024-07-12 04:47:57','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical',NULL,NULL,0,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,10,NULL,NULL,19,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(2,5,NULL,NULL,38,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(3,6,NULL,NULL,38,3.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(4,1,NULL,NULL,16,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(5,1,NULL,NULL,39,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(6,9,NULL,NULL,28,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(7,10,NULL,NULL,27,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(8,3,NULL,NULL,34,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(9,8,NULL,NULL,14,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(10,1,NULL,NULL,30,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(12,2,NULL,NULL,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(13,4,NULL,NULL,18,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(14,4,NULL,NULL,30,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(15,7,NULL,NULL,40,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(16,6,NULL,NULL,22,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(17,8,NULL,NULL,23,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(18,2,NULL,NULL,18,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(19,8,NULL,NULL,12,1.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(20,1,NULL,NULL,22,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(21,8,NULL,NULL,42,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(22,1,NULL,NULL,33,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(23,6,NULL,NULL,19,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(24,7,NULL,NULL,6,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(25,3,NULL,NULL,2,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(26,1,NULL,NULL,2,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(27,6,NULL,NULL,26,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(28,4,NULL,NULL,22,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(29,2,NULL,NULL,11,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(31,7,NULL,NULL,30,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(32,4,NULL,NULL,25,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(33,6,NULL,NULL,30,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(34,6,NULL,NULL,29,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(35,7,NULL,NULL,28,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(36,10,NULL,NULL,7,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(37,2,NULL,NULL,6,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(39,4,NULL,NULL,17,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(40,6,NULL,NULL,11,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(41,10,NULL,NULL,23,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(42,4,NULL,NULL,5,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(43,2,NULL,NULL,4,1.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(44,1,NULL,NULL,7,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(45,2,NULL,NULL,27,5.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(46,6,NULL,NULL,42,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(47,1,NULL,NULL,40,2.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(48,3,NULL,NULL,22,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(49,5,NULL,NULL,1,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(50,3,NULL,NULL,37,4.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(51,1,NULL,NULL,8,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(52,8,NULL,NULL,18,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(53,4,NULL,NULL,36,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\"]'),(54,6,NULL,NULL,34,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(55,5,NULL,NULL,28,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(56,5,NULL,NULL,5,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(57,6,NULL,NULL,24,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(58,4,NULL,NULL,1,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(59,5,NULL,NULL,30,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(60,2,NULL,NULL,34,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(61,3,NULL,NULL,4,2.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(62,4,NULL,NULL,41,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(63,4,NULL,NULL,21,4.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(64,4,NULL,NULL,39,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(65,1,NULL,NULL,42,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(66,5,NULL,NULL,11,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(67,3,NULL,NULL,25,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(68,2,NULL,NULL,3,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(71,9,NULL,NULL,15,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(72,2,NULL,NULL,19,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(73,1,NULL,NULL,38,1.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(74,7,NULL,NULL,39,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(75,8,NULL,NULL,2,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(77,1,NULL,NULL,36,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(78,3,NULL,NULL,17,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(79,3,NULL,NULL,29,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(80,7,NULL,NULL,41,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(81,1,NULL,NULL,11,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(82,8,NULL,NULL,1,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(83,2,NULL,NULL,41,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(84,1,NULL,NULL,32,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(85,6,NULL,NULL,32,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(87,5,NULL,NULL,23,4.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(88,6,NULL,NULL,12,1.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(89,5,NULL,NULL,13,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(91,3,NULL,NULL,32,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(92,7,NULL,NULL,33,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(93,10,NULL,NULL,33,2.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(94,3,NULL,NULL,10,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(96,10,NULL,NULL,31,4.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(97,6,NULL,NULL,33,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(98,4,NULL,NULL,16,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(100,7,NULL,NULL,35,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(101,10,NULL,NULL,25,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(102,3,NULL,NULL,30,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(103,10,NULL,NULL,4,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(104,4,NULL,NULL,19,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(105,10,NULL,NULL,10,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(106,10,NULL,NULL,26,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(108,3,NULL,NULL,6,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(110,8,NULL,NULL,10,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(111,6,NULL,NULL,25,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(112,9,NULL,NULL,4,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(113,9,NULL,NULL,33,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(114,2,NULL,NULL,23,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(115,2,NULL,NULL,28,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(116,8,NULL,NULL,7,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(118,5,NULL,NULL,41,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(119,6,NULL,NULL,2,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(121,7,NULL,NULL,22,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(124,9,NULL,NULL,39,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(125,5,NULL,NULL,20,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(126,6,NULL,NULL,9,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(127,2,NULL,NULL,10,3.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(128,10,NULL,NULL,18,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(129,4,NULL,NULL,10,4.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(130,1,NULL,NULL,23,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(131,4,NULL,NULL,7,3.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(132,10,NULL,NULL,5,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(133,9,NULL,NULL,17,1.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(135,6,NULL,NULL,40,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(136,9,NULL,NULL,5,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(138,3,NULL,NULL,11,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(139,5,NULL,NULL,15,2.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(140,7,NULL,NULL,25,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(143,8,NULL,NULL,27,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(144,10,NULL,NULL,36,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(145,10,NULL,NULL,29,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(146,8,NULL,NULL,31,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(147,10,NULL,NULL,21,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(149,3,NULL,NULL,39,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(150,6,NULL,NULL,28,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(151,4,NULL,NULL,4,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(152,7,NULL,NULL,42,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(154,3,NULL,NULL,31,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(155,5,NULL,NULL,8,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(156,9,NULL,NULL,26,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(159,3,NULL,NULL,38,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(162,3,NULL,NULL,33,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(164,2,NULL,NULL,9,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(167,8,NULL,NULL,35,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(168,10,NULL,NULL,11,5.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(169,9,NULL,NULL,24,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(170,9,NULL,NULL,8,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(171,8,NULL,NULL,38,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(172,1,NULL,NULL,20,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(173,7,NULL,NULL,7,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(175,5,NULL,NULL,4,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(176,10,NULL,NULL,40,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(179,1,NULL,NULL,31,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(180,5,NULL,NULL,39,5.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(182,5,NULL,NULL,42,5.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(183,8,NULL,NULL,9,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(184,5,NULL,NULL,16,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(187,4,NULL,NULL,2,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(188,1,NULL,NULL,26,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(189,1,NULL,NULL,6,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(191,6,NULL,NULL,21,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(192,1,NULL,NULL,25,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(193,1,NULL,NULL,35,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(194,4,NULL,NULL,43,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(195,6,NULL,NULL,16,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(196,2,NULL,NULL,14,5.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(197,10,NULL,NULL,6,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(199,8,NULL,NULL,29,5.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(200,8,NULL,NULL,8,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(202,2,NULL,NULL,25,2.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(203,2,NULL,NULL,29,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(206,4,NULL,NULL,40,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(207,8,NULL,NULL,34,4.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(210,9,NULL,NULL,36,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(211,2,NULL,NULL,24,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(212,2,NULL,NULL,37,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(215,9,NULL,NULL,34,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(217,9,NULL,NULL,16,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(218,6,NULL,NULL,41,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(220,1,NULL,NULL,18,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(223,6,NULL,NULL,27,3.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(226,10,NULL,NULL,35,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(231,2,NULL,NULL,5,2.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(232,4,NULL,NULL,3,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(238,1,NULL,NULL,19,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(239,10,NULL,NULL,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(240,7,NULL,NULL,4,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(241,6,NULL,NULL,7,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(243,2,NULL,NULL,22,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(245,2,NULL,NULL,33,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(247,5,NULL,NULL,21,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(250,2,NULL,NULL,16,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(251,3,NULL,NULL,27,4.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(253,7,NULL,NULL,16,5.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(254,7,NULL,NULL,21,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(255,4,NULL,NULL,32,1.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(258,3,NULL,NULL,5,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(259,4,NULL,NULL,11,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(260,7,NULL,NULL,13,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(261,10,NULL,NULL,8,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(263,7,NULL,NULL,34,5.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(264,9,NULL,NULL,25,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(265,10,NULL,NULL,28,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(269,4,NULL,NULL,24,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(270,9,NULL,NULL,29,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(271,7,NULL,NULL,24,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(272,9,NULL,NULL,23,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(273,3,NULL,NULL,1,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(274,7,NULL,NULL,5,1.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(275,7,NULL,NULL,8,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(277,2,NULL,NULL,26,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(278,6,NULL,NULL,4,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(284,3,NULL,NULL,41,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(285,3,NULL,NULL,36,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-8.png\"]'),(288,7,NULL,NULL,29,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(289,7,NULL,NULL,32,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(291,3,NULL,NULL,40,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(292,5,NULL,NULL,31,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(293,6,NULL,NULL,10,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(295,4,NULL,NULL,42,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(296,2,NULL,NULL,32,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(299,9,NULL,NULL,31,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(301,8,NULL,NULL,3,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(302,8,NULL,NULL,6,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(303,6,NULL,NULL,8,5.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(305,10,NULL,NULL,39,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(306,2,NULL,NULL,35,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(308,5,NULL,NULL,6,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(312,9,NULL,NULL,41,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(314,5,NULL,NULL,18,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(316,4,NULL,NULL,31,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(318,5,NULL,NULL,10,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(322,9,NULL,NULL,6,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(323,1,NULL,NULL,12,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(327,10,NULL,NULL,38,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(328,5,NULL,NULL,29,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(329,3,NULL,NULL,7,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(331,9,NULL,NULL,42,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(332,10,NULL,NULL,9,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(337,3,NULL,NULL,16,1.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(338,3,NULL,NULL,19,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(342,4,NULL,NULL,29,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(346,6,NULL,NULL,20,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(350,2,NULL,NULL,8,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(356,8,NULL,NULL,20,2.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(358,7,NULL,NULL,19,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(361,5,NULL,NULL,36,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(365,8,NULL,NULL,41,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(366,3,NULL,NULL,20,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(367,3,NULL,NULL,3,4.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(368,10,NULL,NULL,15,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(369,5,NULL,NULL,37,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(370,8,NULL,NULL,36,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(373,8,NULL,NULL,15,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(374,9,NULL,NULL,37,4.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(377,1,NULL,NULL,14,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(379,4,NULL,NULL,9,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(381,2,NULL,NULL,7,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(382,3,NULL,NULL,21,2.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(386,7,NULL,NULL,20,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(387,7,NULL,NULL,37,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(392,3,NULL,NULL,26,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(393,5,NULL,NULL,24,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(394,9,NULL,NULL,30,4.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(396,10,NULL,NULL,41,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(397,6,NULL,NULL,36,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(398,1,NULL,NULL,10,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(399,2,NULL,NULL,30,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(401,5,NULL,NULL,40,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(406,2,NULL,NULL,13,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(408,4,NULL,NULL,37,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-8.png\"]'),(411,9,NULL,NULL,3,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(414,1,NULL,NULL,17,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(415,2,NULL,NULL,17,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(419,6,NULL,NULL,13,4.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(421,6,NULL,NULL,43,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(423,8,NULL,NULL,17,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(425,6,NULL,NULL,17,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(426,4,NULL,NULL,12,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(427,10,NULL,NULL,37,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(430,6,NULL,NULL,23,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(434,9,NULL,NULL,12,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(436,2,NULL,NULL,36,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(438,4,NULL,NULL,23,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(442,5,NULL,NULL,35,5.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(443,2,NULL,NULL,31,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(445,7,NULL,NULL,27,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(452,2,NULL,NULL,12,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(455,7,NULL,NULL,9,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(459,6,NULL,NULL,14,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(460,10,NULL,NULL,12,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(461,9,NULL,NULL,35,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(464,8,NULL,NULL,30,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(465,3,NULL,NULL,23,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(475,10,NULL,NULL,20,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(480,9,NULL,NULL,43,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(481,5,NULL,NULL,22,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(483,5,NULL,NULL,7,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(486,8,NULL,NULL,24,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(487,8,NULL,NULL,22,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(488,2,NULL,NULL,21,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(490,4,NULL,NULL,27,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(498,1,NULL,NULL,4,2.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(499,9,NULL,NULL,32,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(503,5,NULL,NULL,33,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(510,7,NULL,NULL,23,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(518,8,NULL,NULL,16,1.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(526,8,NULL,NULL,26,4.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(530,9,NULL,NULL,27,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(531,9,NULL,NULL,1,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(532,10,NULL,NULL,32,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\"]'),(535,10,NULL,NULL,22,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(540,6,NULL,NULL,37,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(548,9,NULL,NULL,22,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(550,9,NULL,NULL,19,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(552,9,NULL,NULL,7,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(558,9,NULL,NULL,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\"]'),(565,9,NULL,NULL,2,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(572,6,NULL,NULL,3,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(591,10,NULL,NULL,43,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(593,7,NULL,NULL,17,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(598,2,NULL,NULL,1,5.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]'),(605,7,NULL,NULL,14,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(609,2,NULL,NULL,40,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-8.png\"]'),(614,8,NULL,NULL,39,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(617,8,NULL,NULL,4,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(620,3,NULL,NULL,18,2.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(626,4,NULL,NULL,34,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(629,6,NULL,NULL,15,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-8.png\"]'),(632,4,NULL,NULL,28,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(636,6,NULL,NULL,6,3.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(643,8,NULL,NULL,13,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(648,3,NULL,NULL,13,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(649,3,NULL,NULL,24,4.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\"]'),(650,2,NULL,NULL,38,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(652,2,NULL,NULL,43,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\"]'),(664,3,NULL,NULL,43,4.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(680,1,NULL,NULL,21,5.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(683,9,NULL,NULL,13,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(689,2,NULL,NULL,15,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(694,8,NULL,NULL,32,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(697,1,NULL,NULL,37,3.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(701,7,NULL,NULL,1,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(712,8,NULL,NULL,11,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(729,9,NULL,NULL,10,5.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(735,2,NULL,NULL,20,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(740,9,NULL,NULL,40,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(741,7,NULL,NULL,43,2.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\"]'),(742,8,NULL,NULL,25,3.00,'Clean & perfect source code','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\"]'),(746,4,NULL,NULL,6,2.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(750,5,NULL,NULL,27,1.00,'Good app, good backup service and support. Good documentation.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(753,3,NULL,NULL,42,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\"]'),(754,10,NULL,NULL,14,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\"]'),(764,4,NULL,NULL,38,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(765,9,NULL,NULL,9,1.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(773,4,NULL,NULL,14,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-7.png\"]'),(794,10,NULL,NULL,1,3.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(795,7,NULL,NULL,18,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(803,5,NULL,NULL,34,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(816,8,NULL,NULL,40,4.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\"]'),(820,5,NULL,NULL,17,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\"]'),(821,2,NULL,NULL,42,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\"]'),(828,10,NULL,NULL,3,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(833,7,NULL,NULL,10,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-8.png\"]'),(850,6,NULL,NULL,39,4.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\"]'),(863,7,NULL,NULL,12,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-6.png\"]'),(867,4,NULL,NULL,20,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-8.png\"]'),(868,3,NULL,NULL,15,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\"]'),(876,3,NULL,NULL,28,3.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(882,4,NULL,NULL,35,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-7.png\"]'),(914,10,NULL,NULL,30,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(919,1,NULL,NULL,29,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(965,8,NULL,NULL,21,4.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-5.png\"]'),(966,1,NULL,NULL,28,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-6.png\",\"fashion\\/products\\/product-8.png\"]'),(976,1,NULL,NULL,41,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\"]'),(980,10,NULL,NULL,13,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-4.png\"]'),(982,1,NULL,NULL,9,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(984,9,NULL,NULL,38,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-5.png\",\"fashion\\/products\\/product-7.png\",\"fashion\\/products\\/product-8.png\"]'),(987,9,NULL,NULL,18,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-6.png\"]'),(988,1,NULL,NULL,34,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-3.png\"]'),(990,3,NULL,NULL,8,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\",\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-7.png\"]'),(994,1,NULL,NULL,3,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-1.png\"]'),(997,9,NULL,NULL,20,2.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-2.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-5.png\"]'),(999,5,NULL,NULL,14,5.00,'Best ecommerce CMS online store!','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-3.png\",\"fashion\\/products\\/product-4.png\",\"fashion\\/products\\/product-6.png\"]'),(1000,1,NULL,NULL,1,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2024-07-12 04:47:58','2024-07-12 04:47:58','[\"fashion\\/products\\/product-5.png\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2024-07-12 04:47:50','2024-07-12 04:47:50');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2024-07-12 04:47:50','2024-07-12 04:47:50'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2024-07-12 04:47:50','2024-07-12 04:47:50'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2024-07-12 04:47:50','2024-07-12 04:47:50');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,2),(1,3),(1,9),(1,10),(1,11),(1,13),(1,16),(1,23),(1,30),(1,34),(1,37),(1,38),(1,41),(1,42),(1,43),(2,4),(2,6),(2,7),(2,12),(2,14),(2,15),(2,17),(2,19),(2,20),(2,24),(2,25),(2,26),(2,31),(2,33),(2,39),(2,40),(3,1),(3,5),(3,8),(3,18),(3,21),(3,22),(3,27),(3,28),(3,29),(3,32),(3,35),(3,36);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(2,'None',0.000000,2,'published','2024-07-12 04:47:50','2024-07-12 04:47:50'),(3,'Import Tax',15.000000,3,'published','2024-07-12 04:47:50','2024-07-12 04:47:50');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL),(2,'Payment',1,'published','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL),(3,'Order &amp; Returns',2,'published','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2024-07-12 04:47:47','2024-07-12 04:47:47'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Perfect','March Hare. \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended, you know!\' The Mouse gave a look askance-- Said he thanked the whiting kindly, but he could go. Alice took up the.',1,0,'fashion/galleries/1.jpg',1,'published','2024-07-12 04:47:57','2024-07-12 04:47:57'),(2,'New Day','Duchess replied, in a shrill, loud voice, and the White Rabbit, who said in a low voice, \'Why the fact is, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried hard to whistle.',1,0,'fashion/galleries/2.jpg',1,'published','2024-07-12 04:47:57','2024-07-12 04:47:57'),(3,'Happy Day','The Cat\'s head with great curiosity, and this was the same thing as \"I eat what I could not remember the simple rules their friends had taught them: such as, that a moment\'s pause. The only things.',1,0,'fashion/galleries/3.jpg',1,'published','2024-07-12 04:47:57','2024-07-12 04:47:57'),(4,'Nature','Dormouse; \'--well in.\' This answer so confused poor Alice, who felt ready to agree to everything that Alice quite hungry to look over their heads. She felt very glad that it led into the sea, though.',1,0,'fashion/galleries/4.jpg',1,'published','2024-07-12 04:47:57','2024-07-12 04:47:57'),(5,'Morning','For instance, suppose it doesn\'t matter much,\' thought Alice, \'it\'ll never do to ask: perhaps I shall see it pop down a large rabbit-hole under the circumstances. There was not quite know what to.',1,0,'fashion/galleries/5.jpg',1,'published','2024-07-12 04:47:57','2024-07-12 04:47:57');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"I almost think I should like to try the effect: the next moment she appeared; but she could get to the part about her other little children, and everybody laughed, \'Let the jury asked. \'That I can\'t.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Gryphon, before Alice could hear him sighing as if he had to do anything but sit with its.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2024-07-12 04:47:57','2024-07-12 04:47:57'),(2,'[{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"I almost think I should like to try the effect: the next moment she appeared; but she could get to the part about her other little children, and everybody laughed, \'Let the jury asked. \'That I can\'t.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Gryphon, before Alice could hear him sighing as if he had to do anything but sit with its.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2024-07-12 04:47:57','2024-07-12 04:47:57'),(3,'[{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"I almost think I should like to try the effect: the next moment she appeared; but she could get to the part about her other little children, and everybody laughed, \'Let the jury asked. \'That I can\'t.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Gryphon, before Alice could hear him sighing as if he had to do anything but sit with its.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2024-07-12 04:47:57','2024-07-12 04:47:57'),(4,'[{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"I almost think I should like to try the effect: the next moment she appeared; but she could get to the part about her other little children, and everybody laughed, \'Let the jury asked. \'That I can\'t.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Gryphon, before Alice could hear him sighing as if he had to do anything but sit with its.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2024-07-12 04:47:57','2024-07-12 04:47:57'),(5,'[{\"img\":\"fashion\\/galleries\\/1.jpg\",\"description\":\"I almost think I should like to try the effect: the next moment she appeared; but she could get to the part about her other little children, and everybody laughed, \'Let the jury asked. \'That I can\'t.\"},{\"img\":\"fashion\\/galleries\\/3.jpg\",\"description\":\"Queen said--\' \'Get to your little boy, And beat him when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may nurse it a very little! Besides, SHE\'S she, and I\'m I, and--oh dear, how puzzling it all.\"},{\"img\":\"fashion\\/galleries\\/2.jpg\",\"description\":\"Alice. \'Oh, don\'t talk about wasting IT. It\'s HIM.\' \'I don\'t think--\' \'Then you shouldn\'t talk,\' said the Gryphon, before Alice could hear him sighing as if he had to do anything but sit with its.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2024-07-12 04:47:57','2024-07-12 04:47:57');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','6f897dd55a8c132b19fd481354a50936',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','80eb065346defd6e187986a904e852f8',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','01a86b1b3752d34a230c927265bbab84',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','f6e355e6d21cf4081313f6235ab85817',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','bd317f7ffd4ff57256b05a2e773a5700',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',15820,'main/general/404.png','[]','2024-07-12 04:47:45','2024-07-12 04:47:45',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(4,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(5,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(6,0,'cta-shape-1','cta-shape-1',2,'image/png',22860,'main/general/cta-shape-1.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(7,0,'cta-shape-2','cta-shape-2',2,'image/png',16796,'main/general/cta-shape-2.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(8,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(9,0,'favicon','favicon',2,'image/png',1831,'main/general/favicon.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(10,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(11,0,'logo-white','logo-white',2,'image/png',22020,'main/general/logo-white.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(12,0,'logo','logo',2,'image/png',22398,'main/general/logo.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(13,0,'newsletter-popup','newsletter-popup',2,'image/png',17253,'main/general/newsletter-popup.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(14,0,'placeholder','placeholder',2,'image/png',2100,'main/general/placeholder.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(15,0,'preloader-icon','preloader-icon',2,'image/png',4182,'main/general/preloader-icon.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(16,0,'signature','signature',2,'image/png',2117,'main/general/signature.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(17,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2024-07-12 04:47:46','2024-07-12 04:47:46',NULL,'public'),(28,0,'1','1',4,'image/png',948,'main/brands/1.png','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(29,0,'2','2',4,'image/png',948,'main/brands/2.png','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(30,0,'3','3',4,'image/png',948,'main/brands/3.png','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(31,0,'4','4',4,'image/png',948,'main/brands/4.png','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(32,0,'5','5',4,'image/png',948,'main/brands/5.png','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(33,0,'1','1',5,'image/jpeg',4294,'main/customers/1.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(34,0,'10','10',5,'image/jpeg',4294,'main/customers/10.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(35,0,'2','2',5,'image/jpeg',4294,'main/customers/2.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(36,0,'3','3',5,'image/jpeg',4294,'main/customers/3.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(37,0,'4','4',5,'image/jpeg',4294,'main/customers/4.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(38,0,'5','5',5,'image/jpeg',4294,'main/customers/5.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(39,0,'6','6',5,'image/jpeg',4294,'main/customers/6.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(40,0,'7','7',5,'image/jpeg',4294,'main/customers/7.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(41,0,'8','8',5,'image/jpeg',4294,'main/customers/8.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(42,0,'9','9',5,'image/jpeg',4294,'main/customers/9.jpg','[]','2024-07-12 04:47:47','2024-07-12 04:47:47',NULL,'public'),(43,0,'blog-big-1','blog-big-1',6,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(44,0,'blog-details-sm-1','blog-details-sm-1',6,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(45,0,'post-1','post-1',6,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(46,0,'post-10','post-10',6,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(47,0,'post-11','post-11',6,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(48,0,'post-12','post-12',6,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(49,0,'post-2','post-2',6,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(50,0,'post-3','post-3',6,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(51,0,'post-4','post-4',6,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(52,0,'post-5','post-5',6,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(53,0,'post-6','post-6',6,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(54,0,'post-7','post-7',6,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(55,0,'post-8','post-8',6,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(56,0,'post-9','post-9',6,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2024-07-12 04:47:50','2024-07-12 04:47:50',NULL,'public'),(57,0,'1','1',3,'image/jpeg',4068,'main/users/1.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(58,0,'10','10',3,'image/jpeg',7599,'main/users/10.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(59,0,'2','2',3,'image/jpeg',7599,'main/users/2.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(60,0,'3','3',3,'image/jpeg',6387,'main/users/3.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(61,0,'4','4',3,'image/jpeg',7599,'main/users/4.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(62,0,'5','5',3,'image/jpeg',6387,'main/users/5.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(63,0,'6','6',3,'image/jpeg',7599,'main/users/6.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(64,0,'7','7',3,'image/jpeg',6387,'main/users/7.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(65,0,'8','8',3,'image/jpeg',7599,'main/users/8.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(66,0,'9','9',3,'image/jpeg',6387,'main/users/9.jpg','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(67,0,'1','1',7,'image/png',9133,'main/stores/1.png','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(68,0,'10','10',7,'image/png',4263,'main/stores/10.png','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(69,0,'11','11',7,'image/png',4420,'main/stores/11.png','[]','2024-07-12 04:47:51','2024-07-12 04:47:51',NULL,'public'),(70,0,'12','12',7,'image/png',4908,'main/stores/12.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(71,0,'13','13',7,'image/png',3441,'main/stores/13.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(72,0,'14','14',7,'image/png',4209,'main/stores/14.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(73,0,'15','15',7,'image/png',5113,'main/stores/15.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(74,0,'16','16',7,'image/png',4563,'main/stores/16.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(75,0,'17','17',7,'image/png',4896,'main/stores/17.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(76,0,'2','2',7,'image/png',9008,'main/stores/2.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(77,0,'3','3',7,'image/png',8006,'main/stores/3.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(78,0,'4','4',7,'image/png',8728,'main/stores/4.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(79,0,'5','5',7,'image/png',10689,'main/stores/5.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(80,0,'6','6',7,'image/png',10989,'main/stores/6.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(81,0,'7','7',7,'image/png',3730,'main/stores/7.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(82,0,'8','8',7,'image/png',4030,'main/stores/8.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(83,0,'9','9',7,'image/png',3810,'main/stores/9.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(84,0,'cover-1','cover-1',7,'image/png',4208,'main/stores/cover-1.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(85,0,'cover-2','cover-2',7,'image/png',8798,'main/stores/cover-2.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(86,0,'cover-3','cover-3',7,'image/png',3888,'main/stores/cover-3.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(87,0,'cover-4','cover-4',7,'image/png',11893,'main/stores/cover-4.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(88,0,'cover-5','cover-5',7,'image/png',8798,'main/stores/cover-5.png','[]','2024-07-12 04:47:52','2024-07-12 04:47:52',NULL,'public'),(89,0,'shape-1','shape-1',9,'image/png',1842,'fashion/sliders/shape-1.png','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(90,0,'shape-2','shape-2',9,'image/png',489,'fashion/sliders/shape-2.png','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(91,0,'shape-3','shape-3',9,'image/png',221,'fashion/sliders/shape-3.png','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(92,0,'slider-1','slider-1',9,'image/png',10444,'fashion/sliders/slider-1.png','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(93,0,'slider-2','slider-2',9,'image/png',9843,'fashion/sliders/slider-2.png','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(94,0,'slider-3','slider-3',9,'image/png',11768,'fashion/sliders/slider-3.png','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(95,0,'1','1',10,'image/jpeg',4294,'fashion/product-categories/1.jpg','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(96,0,'2','2',10,'image/jpeg',4294,'fashion/product-categories/2.jpg','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(97,0,'3','3',10,'image/jpeg',4294,'fashion/product-categories/3.jpg','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(98,0,'4','4',10,'image/jpeg',4294,'fashion/product-categories/4.jpg','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(99,0,'5','5',10,'image/jpeg',4294,'fashion/product-categories/5.jpg','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(100,0,'6','6',10,'image/jpeg',4294,'fashion/product-categories/6.jpg','[]','2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,'public'),(101,0,'product-1','product-1',11,'image/png',9803,'fashion/products/product-1.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(102,0,'product-2','product-2',11,'image/png',9803,'fashion/products/product-2.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(103,0,'product-3','product-3',11,'image/png',9803,'fashion/products/product-3.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(104,0,'product-4','product-4',11,'image/png',9803,'fashion/products/product-4.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(105,0,'product-5','product-5',11,'image/png',9803,'fashion/products/product-5.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(106,0,'product-6','product-6',11,'image/png',9803,'fashion/products/product-6.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(107,0,'product-7','product-7',11,'image/png',9803,'fashion/products/product-7.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(108,0,'product-8','product-8',11,'image/png',9803,'fashion/products/product-8.png','[]','2024-07-12 04:47:55','2024-07-12 04:47:55',NULL,'public'),(109,0,'1','1',12,'image/jpeg',6309,'main/banners/1.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(110,0,'2','2',12,'image/jpeg',6275,'main/banners/2.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(111,0,'slider-1','slider-1',12,'image/png',8207,'main/banners/slider-1.png','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(112,0,'slider-2','slider-2',12,'image/png',8497,'main/banners/slider-2.png','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(113,0,'slider-3','slider-3',12,'image/png',6239,'main/banners/slider-3.png','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(114,0,'1','1',13,'image/jpeg',6287,'fashion/banners/1.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(115,0,'2','2',13,'image/jpeg',5975,'fashion/banners/2.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(116,0,'3','3',13,'image/jpeg',5975,'fashion/banners/3.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(117,0,'4','4',13,'image/jpeg',9052,'fashion/banners/4.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(118,0,'1','1',14,'image/jpeg',4294,'fashion/galleries/1.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(119,0,'2','2',14,'image/jpeg',4294,'fashion/galleries/2.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(120,0,'3','3',14,'image/jpeg',4294,'fashion/galleries/3.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(121,0,'4','4',14,'image/jpeg',4294,'fashion/galleries/4.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(122,0,'5','5',14,'image/jpeg',4294,'fashion/galleries/5.jpg','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(123,0,'icon-1','icon-1',15,'image/png',4469,'main/contact/icon-1.png','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(124,0,'icon-2','icon-2',15,'image/png',5977,'main/contact/icon-2.png','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(125,0,'icon-3','icon-3',15,'image/png',6082,'main/contact/icon-3.png','[]','2024-07-12 04:47:57','2024-07-12 04:47:57',NULL,'public'),(126,0,'line','line',16,'image/png',6152,'main/shapes/line.png','[]','2024-07-12 04:47:58','2024-07-12 04:47:58',NULL,'public'),(127,0,'quote','quote',16,'image/png',595,'main/shapes/quote.png','[]','2024-07-12 04:47:58','2024-07-12 04:47:58',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2024-07-12 04:47:45','2024-07-12 04:47:45',NULL),(2,0,'general',NULL,'general',1,'2024-07-12 04:47:45','2024-07-12 04:47:45',NULL),(3,0,'users',NULL,'users',1,'2024-07-12 04:47:46','2024-07-12 04:47:46',NULL),(4,0,'brands',NULL,'brands',1,'2024-07-12 04:47:47','2024-07-12 04:47:47',NULL),(5,0,'customers',NULL,'customers',1,'2024-07-12 04:47:47','2024-07-12 04:47:47',NULL),(6,0,'blog',NULL,'blog',1,'2024-07-12 04:47:50','2024-07-12 04:47:50',NULL),(7,0,'stores',NULL,'stores',1,'2024-07-12 04:47:51','2024-07-12 04:47:51',NULL),(8,0,'fashion',NULL,'fashion',0,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL),(9,0,'sliders',NULL,'sliders',8,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL),(10,0,'product-categories',NULL,'product-categories',8,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL),(11,0,'products',NULL,'products',8,'2024-07-12 04:47:55','2024-07-12 04:47:55',NULL),(12,0,'banners',NULL,'banners',1,'2024-07-12 04:47:57','2024-07-12 04:47:57',NULL),(13,0,'banners',NULL,'banners',8,'2024-07-12 04:47:57','2024-07-12 04:47:57',NULL),(14,0,'galleries',NULL,'galleries',8,'2024-07-12 04:47:57','2024-07-12 04:47:57',NULL),(15,0,'contact',NULL,'contact',1,'2024-07-12 04:47:57','2024-07-12 04:47:57',NULL),(16,0,'shapes',NULL,'shapes',1,'2024-07-12 04:47:58','2024-07-12 04:47:58',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,0,'Fashion',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,0,'Beauty',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,0,'Jewelry',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,0,'Grocery',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(7,1,0,NULL,NULL,NULL,NULL,0,'Shop',NULL,'_self',1,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(9,1,7,3,'Botble\\Page\\Models\\Page','/brands',NULL,0,'Shop Brands',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,0,'Shop List',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,0,'Shop Grid',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(12,1,7,NULL,NULL,'/products/chunky-knit-infinity-scarf',NULL,0,'Product Detail',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(13,1,7,4,'Botble\\Page\\Models\\Page','/coupons',NULL,0,'Grab Coupons',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(14,1,7,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(15,1,7,NULL,NULL,'/compare',NULL,0,'Compare',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(16,1,7,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,0,'Track Your Order',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(18,1,0,NULL,NULL,'/stores',NULL,0,'Vendors',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(19,1,0,NULL,NULL,NULL,NULL,0,'Pages',NULL,'_self',1,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(20,1,19,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(21,1,19,NULL,NULL,'/login',NULL,0,'Login',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(22,1,19,NULL,NULL,'/register',NULL,0,'Register',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(23,1,19,NULL,NULL,'/password/reset',NULL,0,'Forgot Password',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(24,1,19,NULL,NULL,'/404',NULL,0,'404 Error',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(25,1,19,NULL,NULL,'/coming-soon',NULL,0,'Coming Soon',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(26,1,0,5,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,0,'Blog List',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(29,1,26,NULL,NULL,'/blog/sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',NULL,0,'Blog Detail',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(30,1,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,1,'Track Orders',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(32,2,0,11,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(33,2,0,NULL,NULL,'/wishlist',NULL,1,'Wishlist',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(34,2,0,NULL,NULL,'/customer/overview',NULL,1,'My Account',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(35,2,0,NULL,NULL,'/customer/orders',NULL,1,'Order History',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,1,'Returns',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(37,3,0,9,'Botble\\Page\\Models\\Page','/our-story',NULL,2,'Our Story',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(38,3,0,10,'Botble\\Page\\Models\\Page','/careers',NULL,2,'Careers',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(39,3,0,8,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(40,3,0,NULL,NULL,'/blog',NULL,2,'Latest News',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58'),(41,3,0,6,'Botble\\Page\\Models\\Page','/contact',NULL,2,'Contact Us',NULL,'_self',0,'2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(2,'My Account','my-account','published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(3,'Information','information','published','2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-12 04:47:54','2024-07-12 04:47:54'),(2,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-12 04:47:54','2024-07-12 04:47:54'),(3,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2024-07-12 04:47:54','2024-07-12 04:47:54'),(4,'faq_ids','[[1,4,7,8,10]]',1,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(5,'faq_ids','[[2,3,4,7,10]]',2,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(6,'faq_ids','[[4,6,8,9,10]]',3,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(7,'faq_ids','[[1,3,4,7,10]]',4,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(8,'faq_ids','[[2,3,4,5,9]]',5,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(9,'faq_ids','[[1,2,4,7,8]]',6,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(10,'faq_ids','[[1,2,3,5,9]]',7,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(11,'faq_ids','[[5,7,8,9,10]]',8,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(12,'faq_ids','[[2,3,6,7,10]]',9,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(13,'faq_ids','[[1,2,5,7,8]]',10,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(14,'faq_ids','[[1,5,6,9,10]]',11,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(15,'faq_ids','[[2,3,6,9,10]]',12,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(16,'faq_ids','[[2,3,4,5,6]]',13,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(17,'faq_ids','[[1,3,4,6,9]]',14,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(18,'faq_ids','[[2,3,5,6,10]]',15,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(19,'faq_ids','[[1,4,5,8,9]]',16,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(20,'faq_ids','[[1,5,6,7,9]]',17,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(21,'faq_ids','[[1,6,7,9,10]]',18,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(22,'faq_ids','[[1,4,6,9,10]]',19,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(23,'faq_ids','[[3,6,7,8,9]]',20,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(24,'faq_ids','[[2,3,5,7,10]]',21,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(25,'faq_ids','[[1,2,4,5,9]]',22,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(26,'faq_ids','[[3,4,5,7,9]]',23,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(27,'faq_ids','[[2,6,8,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(28,'faq_ids','[[2,3,6,7,9]]',25,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(29,'faq_ids','[[1,3,4,8,9]]',26,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(30,'faq_ids','[[1,4,7,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(31,'faq_ids','[[2,4,5,6,10]]',28,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(32,'faq_ids','[[3,6,8,9,10]]',29,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(33,'faq_ids','[[2,5,7,8,10]]',30,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(34,'faq_ids','[[1,5,6,7,9]]',31,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:55','2024-07-12 04:47:55'),(35,'faq_ids','[[5,6,7,8,10]]',32,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(36,'faq_ids','[[2,3,5,6,8]]',33,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(37,'faq_ids','[[2,6,7,9,10]]',34,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(38,'faq_ids','[[2,4,5,9,10]]',35,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(39,'faq_ids','[[2,3,4,8,10]]',36,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(40,'faq_ids','[[1,2,4,7,8]]',37,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(41,'faq_ids','[[1,2,3,4,6]]',38,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(42,'faq_ids','[[1,2,3,5,6]]',39,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(43,'faq_ids','[[1,2,3,5,6]]',40,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(44,'faq_ids','[[1,2,4,6,8]]',41,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(45,'faq_ids','[[1,3,6,7,10]]',42,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(46,'faq_ids','[[1,3,7,8,10]]',43,'Botble\\Ecommerce\\Models\\Product','2024-07-12 04:47:56','2024-07-12 04:47:56'),(47,'title','[\"Smartphone \\\\n BLU G91 Pro 2022\"]',1,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(48,'subtitle','[\"Sale 20% off all store\"]',1,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(49,'button_label','[\"Shop Now\"]',1,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(50,'title','[\"HyperX Cloud II \\\\n Wireless\"]',2,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(51,'subtitle','[\"Sale 35% off\"]',2,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(52,'button_label','[\"Shop Now\"]',2,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(53,'title','[\"T-Shirt Tunic \\n Tops Blouse\"]',3,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(54,'button_label','[\"Shop Now\"]',3,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(55,'title','[\"Satchel Tote \\n Crossbody Bags\"]',4,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(56,'button_label','[\"Shop Now\"]',4,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(57,'title','[\"Men\'s Tennis \\n Walking Shoes\"]',5,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(58,'button_label','[\"Shop Now\"]',5,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(59,'title','[\"Short Sleeve Tunic \\n Tops Casual Swing\"]',6,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(60,'button_label','[\"Explore More\"]',6,'Botble\\Ads\\Models\\Ads','2024-07-12 04:47:57','2024-07-12 04:47:57'),(61,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2024-07-12 04:47:58','2024-07-12 04:47:58'),(62,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2024-07-12 04:47:58','2024-07-12 04:47:58'),(63,'breadcrumb_style','[\"align-center\"]',7,'Botble\\Page\\Models\\Page','2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_05_28_112028_create_system_request_logs_table',1),(8,'2016_06_10_230148_create_acl_tables',1),(9,'2016_06_14_230857_create_menus_table',1),(10,'2016_06_17_091537_create_contacts_table',1),(11,'2016_06_28_221418_create_pages_table',1),(12,'2016_10_03_032336_create_languages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_10_07_193005_create_translations_table',1),(15,'2016_10_13_150201_create_galleries_table',1),(16,'2016_11_28_032840_create_dashboard_widget_tables',1),(17,'2016_12_16_084601_create_widgets_table',1),(18,'2017_05_09_070343_create_media_tables',1),(19,'2017_05_18_080441_create_payment_tables',1),(20,'2017_07_11_140018_create_simple_slider_table',1),(21,'2017_10_24_154832_create_newsletter_table',1),(22,'2017_11_03_070450_create_slug_table',1),(23,'2018_07_09_214610_create_testimonial_table',1),(24,'2018_07_09_221238_create_faq_table',1),(25,'2019_01_05_053554_create_jobs_table',1),(26,'2019_08_19_000000_create_failed_jobs_table',1),(27,'2019_11_18_061011_create_country_table',1),(28,'2019_12_14_000001_create_personal_access_tokens_table',1),(29,'2020_03_05_041139_create_ecommerce_tables',1),(30,'2020_11_18_150916_ads_create_ads_table',1),(31,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(32,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(33,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(34,'2021_02_16_092633_remove_default_value_for_author_type',1),(35,'2021_02_18_073505_update_table_ec_reviews',1),(36,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(37,'2021_03_10_025153_change_column_tax_amount',1),(38,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(39,'2021_03_27_144913_add_customer_type_into_table_payments',1),(40,'2021_04_28_074008_ecommerce_create_product_label_table',1),(41,'2021_05_24_034720_make_column_currency_nullable',1),(42,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(43,'2021_07_06_030002_create_marketplace_table',1),(44,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(45,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(46,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_082953_create_gallery_translations',1),(64,'2021_12_03_083642_create_testimonials_translations',1),(65,'2021_12_03_084118_create_location_translations',1),(66,'2021_12_03_094518_migrate_old_location_data',1),(67,'2021_12_06_031304_update_table_mp_customer_revenues',1),(68,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(69,'2022_01_01_033107_update_table_ec_shipments',1),(70,'2022_01_16_085908_improve_plugin_location',1),(71,'2022_02_16_042457_improve_product_attribute_sets',1),(72,'2022_03_22_075758_correct_product_name',1),(73,'2022_04_19_113334_add_index_to_ec_products',1),(74,'2022_04_19_113923_add_index_to_table_posts',1),(75,'2022_04_20_100851_add_index_to_media_table',1),(76,'2022_04_20_101046_add_index_to_menu_table',1),(77,'2022_04_28_144405_remove_unused_table',1),(78,'2022_04_30_034048_create_gallery_meta_translations_table',1),(79,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(80,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(81,'2022_06_16_095633_add_index_to_some_tables',1),(82,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(83,'2022_06_30_035148_create_order_referrals_table',1),(84,'2022_07_07_153354_update_charge_id_in_table_payments',1),(85,'2022_07_10_034813_move_lang_folder_to_root',1),(86,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(87,'2022_08_04_051940_add_missing_column_expires_at',1),(88,'2022_08_04_052122_delete_location_backup_tables',1),(89,'2022_08_14_032836_create_ec_order_returns_table',1),(90,'2022_08_14_033554_create_ec_order_return_items_table',1),(91,'2022_08_15_040324_add_billing_address',1),(92,'2022_08_30_091114_support_digital_products_table',1),(93,'2022_09_01_000001_create_admin_notifications_tables',1),(94,'2022_09_13_095744_create_options_table',1),(95,'2022_09_13_104347_create_option_value_table',1),(96,'2022_10_05_163518_alter_table_ec_order_product',1),(97,'2022_10_12_041517_create_invoices_table',1),(98,'2022_10_12_142226_update_orders_table',1),(99,'2022_10_13_024916_update_table_order_returns',1),(100,'2022_10_14_024629_drop_column_is_featured',1),(101,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(102,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(103,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(104,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(105,'2022_11_02_071413_add_more_info_for_store',1),(106,'2022_11_02_080444_add_tax_info',1),(107,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(108,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(109,'2022_11_19_041643_add_ec_tax_product_table',1),(110,'2022_12_02_093615_update_slug_index_columns',1),(111,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(112,'2022_12_17_041532_fix_address_in_order_invoice',1),(113,'2022_12_26_070329_create_ec_product_views_table',1),(114,'2023_01_04_033051_fix_product_categories',1),(115,'2023_01_09_050400_add_ec_global_options_translations_table',1),(116,'2023_01_10_093754_add_missing_option_value_id',1),(117,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(118,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(119,'2023_01_30_024431_add_alt_to_media_table',1),(120,'2023_02_01_062030_add_store_translations',1),(121,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(122,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(123,'2023_02_16_042611_drop_table_password_resets',1),(124,'2023_02_17_023648_fix_store_prefix',1),(125,'2023_02_27_095752_remove_duplicate_reviews',1),(126,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(127,'2023_04_17_062645_add_open_in_new_tab',1),(128,'2023_04_21_082427_create_ec_product_categorizables_table',1),(129,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(130,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(131,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(132,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(133,'2023_05_17_025812_fix_invoice_issue',1),(134,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(135,'2023_05_27_144611_fix_exchange_rate_setting',1),(136,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(137,'2023_06_30_042512_create_ec_order_tax_information_table',1),(138,'2023_07_06_011444_create_slug_translations_table',1),(139,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(140,'2023_07_26_041451_add_more_columns_to_location_table',1),(141,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(142,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(143,'2023_08_11_060908_create_announcements_table',1),(144,'2023_08_15_064505_create_ec_tax_rules_table',1),(145,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(146,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(147,'2023_08_21_090810_make_page_content_nullable',1),(148,'2023_08_22_094114_drop_unique_for_barcode',1),(149,'2023_08_29_074620_make_column_author_id_nullable',1),(150,'2023_08_29_075308_make_column_user_id_nullable',1),(151,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(152,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(153,'2023_09_14_021936_update_index_for_slugs_table',1),(154,'2023_09_14_022423_add_index_for_language_table',1),(155,'2023_09_19_024955_create_discount_product_categories_table',1),(156,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(157,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(158,'2023_11_07_023805_add_tablet_mobile_image',1),(159,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(160,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(161,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(162,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(163,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(164,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(165,'2023_12_06_100448_change_random_hash_for_media',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(174,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(175,'2024_03_21_100334_update_section_title_shape',1),(176,'2024_03_25_000001_update_captcha_settings_for_contact',1),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(178,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(179,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(180,'2024_03_29_042242_migrate_old_captcha_settings',1),(181,'2024_03_29_093946_create_ec_order_return_histories_table',1),(182,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(183,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(184,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(185,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(186,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(187,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(188,'2024_04_19_063914_create_custom_fields_table',1),(189,'2024_04_27_100730_improve_analytics_setting',1),(190,'2024_05_07_073153_improve_table_wishlist',1),(191,'2024_05_07_082630_create_mp_messages_table',1),(192,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(193,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(194,'2024_05_15_021503_fix_invoice_path',1),(195,'2024_06_20_160724_create_ec_shared_wishlists_table',1),(196,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',1),(197,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',1),(198,'2024_07_04_083133_create_payment_logs_table',1),(199,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(200,'2024_07_12_100000_change_random_hash_for_media',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','ykertzmann@example.com','+14793487466','2337 Senger Radial','BM','Oklahoma','Tiffanybury',3,'main/stores/1.png','main/stores/cover-3.png','Iste nemo aut mollitia deserunt non. Tempore repudiandae repellendus et hic corporis. Quia reprehenderit iste quia praesentium ut est. Praesentium minus delectus voluptas dolores. Accusantium aut voluptatem porro aperiam qui tempore. Ea illo dolor veritatis voluptatibus. Ab officiis qui magni omnis laboriosam quod. Provident itaque doloribus fuga consequuntur ea qui.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(2,'Global Office','kellie17@example.org','+18286702301','54144 Hagenes Street Suite 945','AO','Nebraska','Lake Marleybury',3,'main/stores/2.png','main/stores/cover-5.png','Iusto debitis ea aspernatur ut eos culpa ullam eveniet. Sed quibusdam id eaque quae eligendi dolorem fugiat. Rem voluptas saepe non rerum non ratione doloremque. Occaecati amet voluptatem et nesciunt. Et error ratione aut officia eos dolorem tempore dicta. Nihil nobis rerum expedita. Consequatur quidem et et accusantium.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(3,'Young Shop','eichmann.joaquin@example.net','+16362804979','87536 Huels Squares Apt. 891','MK','Massachusetts','West Alyshaview',3,'main/stores/3.png','main/stores/cover-1.png','Magni cum minima cumque distinctio modi quam minima. Quis voluptatem beatae sequi cum veritatis accusantium. Voluptate aspernatur eveniet qui fugiat. Vel minima qui ducimus maxime ut suscipit est. Doloribus omnis et id maiores nam ducimus ut. Repellendus quasi incidunt placeat esse debitis harum maxime. Et quisquam libero dolor eos neque iste neque. Qui facilis culpa eos quis itaque nesciunt.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(4,'Global Store','elmira59@example.org','+16293558737','964 Dell Streets','MC','Kansas','East Brisa',5,'main/stores/4.png','main/stores/cover-5.png','Assumenda magnam recusandae vitae nihil. Enim eius veniam quis hic sapiente. Odit ipsam animi delectus omnis quibusdam. Animi quos aut dignissimos ut ducimus minus. Saepe blanditiis ut sunt officia est numquam et. Doloremque voluptatem beatae animi. Sunt expedita accusantium ratione commodi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(5,'Robert’s Store','cheathcote@example.net','+19364640885','6273 Marcelina Plain Suite 588','JM','Indiana','Lake Melvinaville',5,'main/stores/5.png','main/stores/cover-4.png','Eveniet ut ut dicta et rerum. Nemo architecto autem rerum. Sit nesciunt molestiae aut quod dolore cum alias. Dolores dolorum animi quaerat ad eveniet molestiae. Et est velit tempore enim nihil. Corrupti voluptatem facilis dolores voluptatum. Dignissimos expedita molestiae aliquam culpa aut eaque. Et laborum impedit at velit.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(6,'Stouffer','kkuhn@example.com','+13515678005','779 Huel Trafficway','PY','Connecticut','Robertsborough',3,'main/stores/6.png','main/stores/cover-5.png','Est nostrum possimus nulla exercitationem alias libero eius. Corrupti a sint natus commodi. Et occaecati modi provident a et accusantium. Ad excepturi alias quis possimus possimus quae. Facilis aut molestiae ut exercitationem consequatur voluptatum dignissimos nam. Necessitatibus repudiandae illum nemo nihil.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(7,'StarKist','kris.daija@example.com','+14349227666','914 Vesta Forks Apt. 590','MN','New Mexico','Aureliaton',5,'main/stores/7.png','main/stores/cover-5.png','Qui dolore qui ex quidem molestias itaque eaque. Quae eos non aut temporibus aperiam. Error qui corrupti accusamus magnam. Facilis nam aspernatur voluptatem itaque aut ut. Labore laudantium est exercitationem ab qui ut illum. Maxime aut qui molestias fugiat ipsam. Aut autem sit aspernatur. Vel iure ipsam ducimus soluta dolorum aut libero.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL),(8,'Old El Paso','bessie84@example.com','+15629261105','678 Jacobson Hollow','BW','South Carolina','Nicofort',4,'main/stores/8.png','main/stores/cover-1.png','Alias voluptas mollitia et dicta est eos perferendis. Magni suscipit quos voluptatem dolor. Non in voluptatem impedit voluptatem ut id. Perspiciatis nostrum ut distinctio et. Odio quis quia placeat unde quam repellendus adipisci. Voluptatem illo itaque quasi libero.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',NULL,'2024-07-12 04:47:54','2024-07-12 04:47:54',NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$wk0tzprwhtnLbBm5kTtcVeGJ/2gGHRtgpU88MS0TIGR6sdk8ZSAmm','{\"name\":\"Edmund Murphy\",\"number\":\"+13345665120\",\"full_name\":\"Prof. Karelle Rodriguez DVM\",\"description\":\"Miss Rachael Braun II\"}','2024-07-12 04:47:52','2024-07-12 04:47:52','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$Ui/nakdcT9pL86.3XrwOQuHmqnxpvnL9kRgBCuUAwkCP.2gBQgQAa','{\"name\":\"Dayna Rodriguez Jr.\",\"number\":\"+18707267520\",\"full_name\":\"Katelin Schuster\",\"description\":\"Onie Yost\"}','2024-07-12 04:47:53','2024-07-12 04:47:53','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$OxZHi4r1bqRY9Hs6PGNmp.eGizQvjYBineTtBA3kjhFQyRfDtZvDC','{\"name\":\"Athena Wolf\",\"number\":\"+17147696731\",\"full_name\":\"Dr. Franz Gleichner Jr.\",\"description\":\"Paula Hyatt\"}','2024-07-12 04:47:53','2024-07-12 04:47:53','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$YQeJF6t5245MpUsIPFCk9O9MO.Sk2jwu8ZDDIv/00KuU.4ahfVjwi','{\"name\":\"Miss Charlene Kling MD\",\"number\":\"+16307093597\",\"full_name\":\"Lukas Swift\",\"description\":\"Prof. Emilie Haag Sr.\"}','2024-07-12 04:47:53','2024-07-12 04:47:53','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$pVjIatX9fq8yaIRGDijOVePaCHh1iuAbvIhMeU/FOOV7BMChM5CQO','{\"name\":\"Zita Hyatt\",\"number\":\"+14435765010\",\"full_name\":\"Fidel Stroman Jr.\",\"description\":\"Keagan Heaney\"}','2024-07-12 04:47:53','2024-07-12 04:47:53','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$n9c9o8/MFPgFM/Eic07biOyRwQ2VHR73iOXwWzC.HAk1hrmrd/TSK','{\"name\":\"Dr. Efrain Von PhD\",\"number\":\"+19257843443\",\"full_name\":\"Bryon Streich\",\"description\":\"Kattie Cormier\"}','2024-07-12 04:47:54','2024-07-12 04:47:54','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$NLfO1QYOk/.5a/FPue5CW.j7wyMMX4kbAtx2bF0RAT5DpPR5L68xS','{\"name\":\"Mable Murazik DVM\",\"number\":\"+14309352802\",\"full_name\":\"Hoyt Grady\",\"description\":\"Dante Kreiger\"}','2024-07-12 04:47:54','2024-07-12 04:47:54','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider style=\"2\" key=\"home-slider\" shape_1=\"fashion/sliders/shape-1.png\" shape_2=\"fashion/sliders/shape-2.png\" shape_3=\"fashion/sliders/shape-3.png\" is_autoplay=\"yes\" autoplay_speed=\"5000\"][/simple-slider][ads style=\"2\" key_1=\"WXAUTIJV1QU0\" key_2=\"7Z5RXBBWV7J2\" key_3=\"JY08TDO8FG1E\" full_width=\"1\" enable_lazy_loading=\"no\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"no\"][/ecommerce-categories][ecommerce-product-groups title=\"Customer Favorite Style Product\" subtitle=\"All Product Shop\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][ecommerce-products style=\"slider-full-width\" title=\"This Week\'s Featured\" subtitle=\"Shop by Category\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"on\" background_color=\"#EFF1F5\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"Trending Arrivals\" subtitle=\"More to Discover\" collection_ids=\"1\" limit=\"5\" with_sidebar=\"on\" ads_ids=\"6\" style=\"slider\" ads=\"VKJNCBIBQC1O\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products title=\"This Week\'s Featured\" subtitle=\"Best Seller This Week\'s\" by=\"specify\" product_ids=\"3,4,5,6\" limit=\"12\" style=\"grid\" button_label=\"Shop All Now\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][testimonials style=\"1\" title=\"The Review Are In\" testimonial_ids=\"2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][blog-posts title=\"Latest News & Articles\" subtitle=\"Our Blog & News\" type=\"recent\" limit=\"3\" button_label=\"Discover More\" button_url=\"/blog\" enable_lazy_loading=\"yes\"][/blog-posts][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"5\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(2,'Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads][ecommerce-categories style=\"slider\" title=\"Popular on the Shofy store.\" subtitle=\"Shop by Category\" category_ids=\"1,2,7,11,18,19\" background_color=\"#F3F5F7\" enable_lazy_loading=\"yes\"][/ecommerce-categories]',1,NULL,'full-width',NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(3,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(4,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(5,'Blog',NULL,1,NULL,'full-width',NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(6,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(7,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(8,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(9,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(10,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(11,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58'),(12,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2025-01-28\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (2,1),(6,1),(4,2),(3,2),(3,3),(1,3),(1,4),(5,4),(6,5),(4,6),(1,6),(2,7),(5,7),(6,8),(4,8),(3,9),(6,9),(4,10),(2,10),(1,11),(4,11),(2,12),(6,12),(4,13),(1,13),(2,14),(3,14),(4,15),(3,15),(3,16),(2,16),(3,17),(5,17),(3,18),(4,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (6,1),(3,1),(5,1),(5,2),(8,2),(6,3),(5,3),(5,4),(6,4),(1,4),(8,5),(5,5),(4,6),(1,6),(7,6),(2,7),(7,7),(4,7),(1,8),(6,8),(3,9),(6,9),(2,9),(6,10),(3,10),(8,10),(2,11),(5,11),(4,11),(3,12),(6,12),(7,13),(1,13),(2,13),(1,14),(6,14),(2,14),(6,15),(1,15),(8,15),(1,16),(2,16),(4,16),(6,17),(4,17),(4,18),(2,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Presently the Rabbit say to itself \'Then I\'ll go round and look up in her face, and was gone across to the table, but it just now.\' \'It\'s the thing Mock Turtle in a minute. Alice began in a moment.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',321,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','After a while, finding that nothing more to be seen: she found this a very hopeful tone though), \'I won\'t indeed!\' said the Mouse, who was passing at the jury-box, and saw that, in her hand, and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',100,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,'The Top 2020 Handbag Trends to Know','Alice thought to herself, \'if one only knew the name again!\' \'I won\'t indeed!\' said the Queen, turning purple. \'I won\'t!\' said Alice. \'I\'ve read that in about half no time! Take your choice!\' The.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',478,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,'How to Match the Color of Your Handbag With an Outfit','White Rabbit read out, at the Queen, the royal children, and make out that the cause of this remark, and thought it must be removed,\' said the Dodo, \'the best way to fly up into a tidy little room.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',1866,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(5,'How to Care for Leather Bags','Dormouse, not choosing to notice this last word with such a puzzled expression that she was a bright brass plate with the Mouse with an anxious look at all a proper way of escape, and wondering.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',2249,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','YOU with us!\"\' \'They were learning to draw,\' the Dormouse began in a very decided tone: \'tell her something worth hearing. For some minutes the whole party swam to the jury, who instantly made a.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',169,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(7,'Essential Qualities of Highly Successful Music','This of course, to begin with,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to such stuff? Be off, or I\'ll have you executed.\' The miserable Hatter dropped his teacup and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',1908,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(8,'9 Things I Love About Shaving My Head','And yet I wish you were or might have been was not much like keeping so close to her: first, because the chimneys were shaped like ears and whiskers, how late it\'s getting!\' She was moving them.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',936,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(9,'Why Teamwork Really Makes The Dream Work','Pigeon went on, looking anxiously round to see that queer little toss of her ever getting out of the room again, no wonder she felt a very curious to know when the Rabbit angrily. \'Here! Come and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-11.jpg',1629,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(10,'The World Caters to Average People','Knave of Hearts, and I shall think nothing of the country is, you ARE a simpleton.\' Alice did not seem to encourage the witness at all: he kept shifting from one foot up the other, saying, in a very.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',257,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(11,'The litigants on the screen are not actors','Queen was to eat some of YOUR business, Two!\' said Seven. \'Yes, it IS his business!\' said Five, in a low curtain she had forgotten the little dears came jumping merrily along hand in hand with.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',1493,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(12,'Hiring the Right Sales Team at the Right Time','Only I don\'t take this young lady tells us a story!\' said the Duchess: \'flamingoes and mustard both bite. And the executioner myself,\' said the Mock Turtle said: \'advance twice, set to work very.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-6.jpg',1346,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(13,'Fully Embrace the Return of 90s fashion','Queen. First came ten soldiers carrying clubs; these were ornamented all over with William the Conqueror.\' (For, with all her knowledge of history, Alice had been would have made a snatch in the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-8.jpg',1662,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(14,'Exploring the English Countryside','An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be off, then!\' said the King, rubbing his hands; \'so now let the Dormouse shall!\' they.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',391,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(15,'Here’s the First Valentino’s New Makeup Collection','Mock Turtle, and to wonder what was going to begin again, it was impossible to say anything. \'Why,\' said the Dodo, pointing to Alice as it turned a back-somersault in at the window, and on both.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-5.jpg',1031,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(16,'Follow Your own Design process, whatever gets','Dinah, tell me who YOU are, first.\' \'Why?\' said the King, and the King put on one side, to look through into the loveliest garden you ever see such a curious feeling!\' said Alice; \'you needn\'t be so.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-9.jpg',538,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(17,'Freelancer Days 2024, What’s new?','But the insolence of his tail. \'As if I was, I shouldn\'t want YOURS: I don\'t like them!\' When the Mouse replied rather impatiently: \'any shrimp could have told you butter wouldn\'t suit the works!\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',2494,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51'),(18,'Quality Foods Requirments For Every Human Body’s','Which shall sing?\' \'Oh, YOU sing,\' said the King. \'I can\'t explain it,\' said the King. \'Nothing whatever,\' said Alice. \'I don\'t know what it was very glad to find that the best thing to nurse--and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-9.jpg',1615,NULL,'2024-07-12 04:47:51','2024-07-12 04:47:51');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true}','Admin users role',1,1,1,'2024-07-12 04:47:47','2024-07-12 04:47:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','006bb6145ecb46057c4d59ff3c43ed5a',NULL,'2024-07-12 04:47:58'),(2,'api_enabled','0',NULL,'2024-07-12 04:47:58'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\"]',NULL,'2024-07-12 04:47:58'),(6,'theme','shofy-fashion',NULL,'2024-07-12 04:47:58'),(7,'show_admin_bar','1',NULL,'2024-07-12 04:47:58'),(8,'payment_cod_status','1',NULL,'2024-07-12 04:47:58'),(9,'payment_bank_transfer_status','1',NULL,'2024-07-12 04:47:58'),(10,'admin_favicon','main/general/favicon.png',NULL,'2024-07-12 04:47:58'),(11,'admin_logo','main/general/logo-white.png',NULL,'2024-07-12 04:47:58'),(12,'permalink-botble-blog-models-post','blog',NULL,'2024-07-12 04:47:58'),(13,'permalink-botble-blog-models-category','blog',NULL,'2024-07-12 04:47:58'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2024-07-12 04:47:58'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2024-07-12 04:47:58'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2024-07-12 04:47:58'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2024-07-12 04:47:58'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2024-07-12 04:47:58'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2024-07-12 04:47:58'),(20,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2024-07-12 04:47:58'),(21,'announcement_lazy_loading','1',NULL,'2024-07-12 04:47:58'),(22,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2024-07-12 04:47:58'),(23,'language_hide_default','1',NULL,'2024-07-12 04:47:58'),(24,'language_switcher_display','dropdown',NULL,'2024-07-12 04:47:58'),(25,'language_display','all',NULL,'2024-07-12 04:47:58'),(26,'language_hide_languages','[]',NULL,'2024-07-12 04:47:58'),(27,'ecommerce_store_name','Shofy',NULL,'2024-07-12 04:47:58'),(28,'ecommerce_store_phone','1800979769',NULL,'2024-07-12 04:47:58'),(29,'ecommerce_store_address','502 New Street',NULL,'2024-07-12 04:47:58'),(30,'ecommerce_store_state','Brighton VIC',NULL,'2024-07-12 04:47:58'),(31,'ecommerce_store_city','Brighton VIC',NULL,'2024-07-12 04:47:58'),(32,'ecommerce_store_country','AU',NULL,'2024-07-12 04:47:58'),(33,'announcement_max_width','1390',NULL,'2024-07-12 04:47:58'),(34,'announcement_text_color','#010f1c',NULL,'2024-07-12 04:47:58'),(35,'announcement_background_color','transparent',NULL,'2024-07-12 04:47:58'),(36,'announcement_placement','theme',NULL,'2024-07-12 04:47:58'),(37,'announcement_text_alignment','start',NULL,'2024-07-12 04:47:58'),(38,'announcement_dismissible','0',NULL,'2024-07-12 04:47:58'),(39,'simple_slider_using_assets','0',NULL,'2024-07-12 04:47:58'),(40,'theme-shofy-fashion-site_name','Shofy',NULL,NULL),(41,'theme-shofy-fashion-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(42,'theme-shofy-fashion-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(43,'theme-shofy-fashion-copyright','© %Y All Rights Reserved.',NULL,NULL),(44,'theme-shofy-fashion-tp_primary_font','Jost',NULL,NULL),(45,'theme-shofy-fashion-primary_color','#821F40',NULL,NULL),(46,'theme-shofy-fashion-favicon','main/general/favicon.png',NULL,NULL),(47,'theme-shofy-fashion-logo','main/general/logo.png',NULL,NULL),(48,'theme-shofy-fashion-logo_light','main/general/logo-white.png',NULL,NULL),(49,'theme-shofy-fashion-header_style','2',NULL,NULL),(50,'theme-shofy-fashion-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(51,'theme-shofy-fashion-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(52,'theme-shofy-fashion-hotline','8 800 332 65-66',NULL,NULL),(53,'theme-shofy-fashion-email','contact@fartmart.co',NULL,NULL),(54,'theme-shofy-fashion-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(55,'theme-shofy-fashion-homepage_id','1',NULL,NULL),(56,'theme-shofy-fashion-blog_page_id','5',NULL,NULL),(57,'theme-shofy-fashion-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(58,'theme-shofy-fashion-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(59,'theme-shofy-fashion-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(60,'theme-shofy-fashion-number_of_products_per_page','24',NULL,NULL),(61,'theme-shofy-fashion-number_of_cross_sale_product','6',NULL,NULL),(62,'theme-shofy-fashion-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(63,'theme-shofy-fashion-ecommerce_product_item_style','2',NULL,NULL),(64,'theme-shofy-fashion-404_page_image','main/general/404.png',NULL,NULL),(65,'theme-shofy-fashion-newsletter_popup_enable','1',NULL,NULL),(66,'theme-shofy-fashion-newsletter_popup_image','main/general/newsletter-popup.png',NULL,NULL),(67,'theme-shofy-fashion-newsletter_popup_title','Subscribe Now',NULL,NULL),(68,'theme-shofy-fashion-newsletter_popup_subtitle','Newsletter',NULL,NULL),(69,'theme-shofy-fashion-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(70,'theme-shofy-fashion-lazy_load_images','1',NULL,NULL),(71,'theme-shofy-fashion-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(72,'theme-shofy-fashion-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(73,'theme-shofy-fashion-section_title_shape_decorated','style-3',NULL,NULL),(74,'theme-shofy-fashion-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"Youtube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(75,'theme-shofy-fashion-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(76,'theme-shofy-fashion-header_main_background_color','#fff',NULL,NULL),(77,'theme-shofy-fashion-header_main_text_color','#010f1c',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','fashion/sliders/slider-1.png','/products','New Arrivals 2023',0,'2024-07-12 04:47:54','2024-07-12 04:47:54'),(2,1,'The Summer Collection','fashion/sliders/slider-2.png','/products','Best Selling 2023',1,'2024-07-12 04:47:54','2024-07-12 04:47:54'),(3,1,'Amazing New designs','fashion/sliders/slider-3.png','/products','Winter Has Arrived',2,'2024-07-12 04:47:54','2024-07-12 04:47:54');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2024-07-12 04:47:54','2024-07-12 04:47:54');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-12 04:47:47','2024-07-12 04:47:47'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-12 04:47:47','2024-07-12 04:47:47'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-12 04:47:47','2024-07-12 04:47:47'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-12 04:47:47','2024-07-12 04:47:47'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2024-07-12 04:47:47','2024-07-12 04:47:47'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-12 04:47:50','2024-07-12 04:47:50'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-12 04:47:50','2024-07-12 04:47:50'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-12 04:47:50','2024-07-12 04:47:50'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-12 04:47:50','2024-07-12 04:47:50'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-12 04:47:50','2024-07-12 04:47:50'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2024-07-12 04:47:50','2024-07-12 04:47:50'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2024-07-12 04:47:51','2024-07-12 04:47:51'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2024-07-12 04:47:51','2024-07-12 04:47:51'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2024-07-12 04:47:54','2024-07-12 04:47:54'),(52,'bags',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(62,'footwear',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(63,'accessories',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(64,'hats',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(65,'scarves',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(66,'jewelry',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:54','2024-07-12 04:47:54'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:55','2024-07-12 04:47:55'),(68,'activewear',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:55','2024-07-12 04:47:55'),(69,'running-shoes',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:55','2024-07-12 04:47:55'),(70,'outerwear',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2024-07-12 04:47:55','2024-07-12 04:47:55'),(71,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(72,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(73,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(74,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(75,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(76,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(77,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(78,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(79,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(80,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(81,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(82,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(83,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(84,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(85,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(86,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(87,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(88,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(89,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(90,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(91,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(92,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(93,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(94,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(95,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(96,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(97,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(98,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(99,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(100,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(101,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:55'),(102,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:55','2024-07-12 04:47:58'),(103,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(104,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(105,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(106,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:58'),(107,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(108,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(109,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(110,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:58'),(111,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(112,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(113,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:56','2024-07-12 04:47:56'),(114,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-12 04:47:57','2024-07-12 04:47:57'),(115,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-12 04:47:57','2024-07-12 04:47:57'),(116,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-12 04:47:57','2024-07-12 04:47:57'),(117,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-12 04:47:57','2024-07-12 04:47:57'),(118,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2024-07-12 04:47:57','2024-07-12 04:47:57'),(119,'home',1,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(120,'categories',2,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(121,'brands',3,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(122,'coupons',4,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(123,'blog',5,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(124,'contact',6,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(125,'faqs',7,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(126,'cookie-policy',8,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(127,'our-story',9,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(128,'careers',10,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(129,'shipping',11,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(130,'coming-soon',12,'Botble\\Page\\Models\\Page','','2024-07-12 04:47:58','2024-07-12 04:47:58'),(131,'classic-aviator-sunglasses',44,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(132,'tailored-wool-blazer',45,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(133,'tailored-wool-blazer',46,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(134,'silk-scarf-with-geometric-print-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(135,'silk-scarf-with-geometric-print-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(136,'silk-scarf-with-geometric-print-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(137,'silk-scarf-with-geometric-print-digital',50,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(138,'high-waisted-wide-leg-trousers',51,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(139,'high-waisted-wide-leg-trousers',52,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(140,'embroidered-boho-blouse',53,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(141,'statement-chunky-necklace',54,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(142,'statement-chunky-necklace',55,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(143,'statement-chunky-necklace',56,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(144,'strappy-block-heel-sandals',57,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(145,'strappy-block-heel-sandals',58,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(146,'strappy-block-heel-sandals',59,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(147,'velvet-evening-gown',60,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(148,'velvet-evening-gown',61,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(149,'velvet-evening-gown',62,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(150,'quilted-crossbody-bag',63,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(151,'quilted-crossbody-bag',64,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(152,'lace-up-combat-boots',65,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(153,'cotton-striped-t-shirt-dress',66,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(154,'cotton-striped-t-shirt-dress',67,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(155,'printed-palazzo-pants',68,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(156,'printed-palazzo-pants',69,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(157,'off-shoulder-ruffle-top',70,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(158,'athleisure-jogger-pants-digital',71,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(159,'athleisure-jogger-pants-digital',72,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(160,'athleisure-jogger-pants-digital',73,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(161,'retro-cat-eye-sunglasses',74,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(162,'wide-brim-floppy-hat',75,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(163,'embellished-ballet-flats',76,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(164,'pleated-midi-skirt',77,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(165,'velour-tracksuit-set',78,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(166,'geometric-patterned-cardigan-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(167,'geometric-patterned-cardigan-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(168,'retro-high-top-sneakers',81,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(169,'retro-high-top-sneakers',82,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(170,'retro-high-top-sneakers',83,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(171,'retro-high-top-sneakers',84,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(172,'retro-high-top-sneakers',85,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58'),(173,'metallic-pleated-maxi-skirt',86,'Botble\\Ecommerce\\Models\\Product','products','2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(2,'Design',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(3,'Fashion',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(4,'Branding',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(5,'Modern',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(6,'Nature',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(7,'Vintage',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51'),(8,'Sunglasses',NULL,'Botble\\ACL\\Models\\User',NULL,'published','2024-07-12 04:47:51','2024-07-12 04:47:51');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/2.jpg','Developer','published','2024-07-12 04:47:54','2024-07-12 04:47:54'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/2.jpg','CO Founder','published','2024-07-12 04:47:54','2024-07-12 04:47:54'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/6.jpg','UI/UX Designer','published','2024-07-12 04:47:54','2024-07-12 04:47:54'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/2.jpg','Bank of America','published','2024-07-12 04:47:54','2024-07-12 04:47:54');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ryan.rigoberto@walsh.org',NULL,'$2y$12$Yt/x284CiQGoGIbsXmXLX.BDlfD/AcBjsAaj0l4qDiC/.92B0MPjy',NULL,'2024-07-12 04:47:47','2024-07-12 04:47:47','Destini','Hoppe','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-fashion',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-fashion',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-fashion',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-fashion',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(9,'NewsletterWidget','footer_top_sidebar','shofy-fashion',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-fashion',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-fashion',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(12,'BlogSearchWidget','blog_sidebar','shofy-fashion',1,'{\"id\":\"BlogSearchWidget\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-fashion',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/5.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(14,'BlogPostsWidget','blog_sidebar','shofy-fashion',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-fashion',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(16,'BlogTagsWidget','blog_sidebar','shofy-fashion',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-fashion',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-fashion',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2024-07-12 04:47:58','2024-07-12 04:47:58'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-fashion',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,18,19],\"style\":\"grid\",\"display_children\":true}','2024-07-12 04:47:58','2024-07-12 04:47:58');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-12 18:47:59
