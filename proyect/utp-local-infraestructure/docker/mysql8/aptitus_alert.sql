-- MySQL dump 10.13  Distrib 5.5.59, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: aptitus_alert
-- ------------------------------------------------------
-- Server version	5.5.59

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `aptitus_alert`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dev_bd_alert` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dev_bd_alert`;

--
-- Table structure for table `report_notices`
--

DROP TABLE IF EXISTS `report_notices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'url aviso',
  `type_claim_id` int(11) DEFAULT NULL COMMENT 'motivo de reclamo',
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'descripcion del reclamo',
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'correo de quien envio el reclamo',
  `user` int(1) DEFAULT '0' COMMENT 'id usuario de quien envia el reclamo',
  PRIMARY KEY (`id`),
  KEY `fk_product_type_claim_id` (`type_claim_id`),
  CONSTRAINT `fk_type_claim_product_id` FOREIGN KEY (`type_claim_id`) REFERENCES `type_claim` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_notices`
--

LOCK TABLES `report_notices` WRITE;
/*!40000 ALTER TABLE `report_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_notices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_job_offer`
--

DROP TABLE IF EXISTS `share_job_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share_job_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'url aviso',
  `user_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre de usuario de quien envia',
  `receiver_email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mail de quien recive',
  `user_message` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mail de quien recive',
  `user` int(1) DEFAULT '0' COMMENT 'id usuario de quien envia',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_job_offer`
--

LOCK TABLES `share_job_offer` WRITE;
/*!40000 ALTER TABLE `share_job_offer` DISABLE KEYS */;
/*!40000 ALTER TABLE `share_job_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_claim`
--

DROP TABLE IF EXISTS `type_claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_claim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'pregunta',
  `status` tinyint(1) DEFAULT NULL COMMENT 'estado de pregunta',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_claim`
--

LOCK TABLES `type_claim` WRITE;
/*!40000 ALTER TABLE `type_claim` DISABLE KEYS */;
INSERT INTO `type_claim` VALUES (1,'No puedo postular al aviso',1),(2,'Avio o empresa fraudolenta',1),(3,'Descripción incompleta o errónea',1),(4,'Aviso discriminatorio u ofensivo',1),(5,'Este Aviso se repite frecuentemente',1),(6,'Otros',1);
/*!40000 ALTER TABLE `type_claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'aptitus_alert'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-27 20:17:21
