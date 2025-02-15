-- MySQL dump 10.13  Distrib 5.5.59, for linux-glibc2.12 (x86_64)
--
-- Host: localhost    Database: mdb_apt_payments
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
-- Current Database: `mdb_apt_payments`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `dev_bd_payments` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dev_bd_payments`;

--
-- Table structure for table `benefit`
--

DROP TABLE IF EXISTS `benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del beneficio',
  `format` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Formato para mostrar',
  `code` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Código interno',
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo (feature, discount)',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefit`
--

LOCK TABLES `benefit` WRITE;
/*!40000 ALTER TABLE `benefit` DISABLE KEYS */;
INSERT INTO `benefit` VALUES (1,'Dias de publicación','%d dias de publicación','days_pub','feature',1),(2,'Filtros Disponibles','','filters_availables','feature',1),(3,'Ubicación en el listado de búsqueda','Ubicación %s en el listado de búsqueda','location_search_results','feature',1),(4,'Aviso en portada ','Aviso en Home de Aptitus.com por %d dias','view_home','feature',1),(5,'Con logo corporativo','','company_logo','feature',1),(6,'Look & Feel','','look_feel','feature',1),(7,'Destaque por días en el listado de búsqueda','Destaque por %d días en el listado de búsqueda','highlight_results','feature',1),(8,'Descuento Lanzamiento','','dscto','discount',1),(9,'Botón de postulación en listado','Botón de postulación en listado','postulation_button','feature',0),(10,'Días de vigencia','%d días de vigencia','validity_days','feature',1),(11,'5 avisos Web + 10 búsquedas de CVs','%d avisos básicos + %d aviso destacado + %d aviso premium','package_description','description',1),(12,'8 avisos Web + 30  búsquedas de CVs','%d avisos básicos + %d avisos destacados + %d aviso premium','package_description','description',1),(13,'15 avisos Web + 60 búsquedas de CVs','%d avisos básicos + %d avisos destacados + %d avisos premium','package_description','description',1),(14,'A partir de 1 hasta 2 entradas.','A partir de 1 hasta 2 entradas.','evento','description',1),(15,'A partir de 3 a más entradas.','A partir de 3 a más entradas.','evento','description',1),(16,'Sólo para clientes con Membresia Aptitus y/o clientes Suscriptores a la revista Aptitus.','Sólo para clientes con Membresia Aptitus y/o clientes Suscriptores a la revista Aptitus..','evento','description',1),(17,'Venta exclusiva por call center telefono 3116707 - Opción 3.','Venta exclusiva por call center telefono 3116707 - Opción 3.','evento','description',1),(18,'Precio final por entrada.','Precio final por entrada.','evento','description',1),(19,'Tu aviso aparecerá en la página principal de Aptitus por 1 día.','Tu aviso aparecerá en la página principal de Aptitus por 1 día.','description','description',1),(20,'Segmentaremos tu aviso para que llegue a usuarios afines en Facebook durante 1 semana.','Segmentaremos tu aviso para que llegue a usuarios afines en Facebook durante 1 semana.','description','description',1),(21,'Tu aviso se enviará 1 vez a 1,000 contactos de la base de Aptitus, de acuerdo a la segmentación solicitada.','Tu aviso se enviará 1 vez a 1,000 contactos de la base de Aptitus, de acuerdo a la segmentación solicitada.','description','description',1),(22,'Personaliza tus avisos y haz que más y mejores candidatos postulen a tus procesos.','Personaliza tus avisos y haz que más y mejores candidatos postulen a tus procesos.','description','description',1),(23,'Vigencia: 3 meses desde la confirmación de compra.','Vigencia: 3 meses desde la confirmación de compra.','accumulate_months','feature',1),(24,'Aparece en la feria virtual de trabajo más grande del Perú','Aparece en la feria virtual de trabajo más grande del Perú del %s al %s','validate_date','period',1),(25,'Aparece siempre en las primeras ubicaciones de las búsquedas generales y en las que vayan con el perfil de tu aviso por 1 día.','Aparece siempre en las primeras ubicaciones de las búsquedas generales y en las que vayan con el perfil de tu aviso por 1 día..','description','description',1),(26,'Vigencia','Vigencia %d días','vigencia','feature',1),(27,'Prioridad en Resultados de Búsqueda.','Prioridad en Resultados de Búsqueda.','description','description',1),(28,'Alertas del proceso de postulación.','Alertas del proceso de postulación.','description','description',1),(29,'Lugar preferencial en ofertas de empleo.','Lugar preferencial en ofertas de empleo.','description','description',1),(30,'Descuento Euroidiomas – presencial y virtual .','Descuento Euroidiomas – presencial y virtual .','description','description',1);
/*!40000 ALTER TABLE `benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_company`
--

DROP TABLE IF EXISTS `customer_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Tipo de Documento',
  `document_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número de Documento',
  `trade_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Razón Social',
  `via` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Vía (Jr, Av, Ca, etc.)',
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Dirección',
  `door_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Número de Puerta',
  `entity_code` int(11) DEFAULT NULL COMMENT 'Código de la Empresa en Adecsys',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_company`
--

LOCK TABLES `customer_company` WRITE;
/*!40000 ALTER TABLE `customer_company` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_customer`
--

DROP TABLE IF EXISTS `entity_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_number` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_number_taxpayer` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `road_type` char(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` char(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `door_number` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `types_receipt` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_customer`
--

LOCK TABLES `entity_customer` WRITE;
/*!40000 ALTER TABLE `entity_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_product`
--

DROP TABLE IF EXISTS `entity_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entity_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL COMMENT 'Id de la Entidad',
  `entity_name` varchar(35) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la Entidad',
  `product_id` int(11) NOT NULL COMMENT 'Id del Producto',
  `remainder` int(11) NOT NULL DEFAULT '0' COMMENT 'Saldo de Producto de la Empresa',
  `expired_at` datetime DEFAULT NULL COMMENT 'Fecha de Expiración',
  `origin` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'comprado, bonificado o membresia',
  `purchase_product_id` int(11) DEFAULT NULL COMMENT 'el id de la compra del producto',
  PRIMARY KEY (`id`),
  KEY `IDX_F3181E7A4584665A` (`product_id`),
  CONSTRAINT `fk_company_product_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_product`
--

LOCK TABLES `entity_product` WRITE;
/*!40000 ALTER TABLE `entity_product` DISABLE KEYS */;
INSERT INTO `entity_product` VALUES (1,987654,'Empresa',33,5,'2022-02-22 15:05:03','bought',NULL),(2,987654,'Empresa',33,20,'2022-02-28 15:05:03','bought',NULL),(3,99999,'Empresa',27,10,NULL,'bought',NULL),(4,99999,'Empresa',28,10,NULL,'bought',NULL),(5,99999,'Empresa',29,10,NULL,'bought',NULL),(6,99999,'Empresa',33,10,'2022-02-28 15:05:03','bought',NULL),(7,99998,'Empresa',33,10,'2022-02-22 15:05:03','bought',NULL),(8,11223,'Empresa',51,1,'2022-05-25 15:05:03','bought',NULL),(9,11223,'Empresa',45,1,'2022-02-28 15:05:03','bought',NULL),(10,4,'Empresa',29,0,NULL,'bought',8),(11,4,'Empresa',28,2,NULL,'bought',9),(12,4,'Empresa',27,0,NULL,'bought',10),(13,4,'Empresa',33,360,'2022-05-26 14:33:40','package',11),(14,4,'Empresa',27,12,'2022-05-26 14:33:40','package',11),(15,4,'Empresa',28,30,'2022-05-26 14:33:40','package',11),(16,4,'Empresa',29,48,'2022-05-26 14:33:40','package',11),(17,4,'Empresa',33,150,'2022-04-26 14:33:40','package',12),(18,4,'Empresa',27,5,'2022-04-26 14:33:40','package',12),(19,4,'Empresa',28,10,'2022-04-26 14:33:40','package',12),(20,4,'Empresa',29,25,'2022-04-26 14:33:40','package',12),(21,4,'Empresa',33,20,'2022-03-27 14:33:40','package',13),(22,4,'Empresa',27,0,'2022-03-27 14:33:40','package',13),(23,4,'Empresa',28,0,'2022-03-27 14:33:40','package',13),(24,4,'Empresa',29,6,'2022-03-27 14:33:40','package',13),(25,4,'Empresa',33,10,'2022-03-28 13:48:40','package',14),(26,4,'Empresa',27,1,'2022-03-28 13:48:40','package',14),(27,4,'Empresa',28,1,'2022-03-28 13:48:40','package',14),(28,4,'Empresa',29,3,'2022-03-28 13:48:40','package',14);
/*!40000 ALTER TABLE `entity_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL COMMENT 'Id del paquete',
  `product_id` int(11) NOT NULL COMMENT 'Id del producto',
  `quantity` int(6) NOT NULL COMMENT 'Cantidad del producto',
  `created_at` datetime DEFAULT NULL COMMENT 'Fecha de Creación',
  `modified_at` datetime DEFAULT NULL COMMENT 'Fecha de Modificación',
  PRIMARY KEY (`id`),
  KEY `fk_product_package_package_id` (`package_id`),
  KEY `fk_product_package_product_id` (`product_id`),
  CONSTRAINT `fk_product_package_package_id` FOREIGN KEY (`package_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_product_package_product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,30,33,100,NULL,NULL),(2,31,33,30,NULL,NULL),(3,32,33,10,NULL,NULL),(4,48,33,10,NULL,NULL),(5,48,27,1,NULL,NULL),(6,48,28,1,NULL,NULL),(7,48,29,3,NULL,NULL),(8,49,33,30,NULL,NULL),(9,49,27,1,NULL,NULL),(10,49,28,2,NULL,NULL),(11,49,29,5,NULL,NULL),(12,50,33,60,NULL,NULL),(13,50,27,2,NULL,NULL),(14,50,28,5,NULL,NULL),(15,50,29,8,NULL,NULL);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prod_detail_printed`
--

DROP TABLE IF EXISTS `prod_detail_printed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prod_detail_printed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_product_id` int(11) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2390204849B73190` (`purchase_product_id`),
  CONSTRAINT `FK_2390204849B73190` FOREIGN KEY (`purchase_product_id`) REFERENCES `purchase_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_detail_printed`
--

LOCK TABLES `prod_detail_printed` WRITE;
/*!40000 ALTER TABLE `prod_detail_printed` DISABLE KEYS */;
/*!40000 ALTER TABLE `prod_detail_printed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_id` int(11) DEFAULT NULL COMMENT 'Id del Tipo de Producto',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del Producto',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  `created_at` datetime DEFAULT NULL COMMENT 'Fecha de Creación',
  `modified_at` datetime DEFAULT NULL COMMENT 'Fecha de Modificación',
  `label` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(10) DEFAULT '100',
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD14959723` (`product_type_id`),
  KEY `IDX_D34A04AD727ACA70` (`parent_id`),
  CONSTRAINT `FK_D34A04AD14959723` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`),
  CONSTRAINT `FK_D34A04AD727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (18,7,'Membresía Selecto',1,NULL,NULL,'Membresía Selecto',NULL,100),(19,7,'Membresía Premium',1,NULL,NULL,'Membresía Premium',NULL,100),(20,7,'Membresía Digital',1,NULL,NULL,'Membresía Digital',NULL,100),(22,7,'Membresía Mensual',1,NULL,NULL,'Membresía Mensual',NULL,100),(27,1,'Aviso Premium',1,'2017-02-15 21:05:14','2017-02-15 21:05:14','Aviso Premium',NULL,100),(28,1,'Aviso Destacado',1,'2017-02-15 21:05:14','2017-02-15 21:05:14','Aviso Destacado',NULL,100),(29,1,'Aviso Básico',1,'2017-02-15 21:05:14','2017-02-15 21:05:14','Aviso Básico',NULL,100),(30,2,'100 CVs',1,NULL,NULL,NULL,NULL,204),(31,2,'30 CVs',1,NULL,NULL,NULL,NULL,203),(32,2,'10 CVs',1,NULL,NULL,NULL,NULL,202),(33,2,'1 CV',1,NULL,NULL,'Búsquedas de CVs',NULL,201),(34,5,'Perfil Destacado 4 meses',0,NULL,NULL,NULL,NULL,100),(35,6,'Aviso Home',1,NULL,NULL,'Aviso en Home',NULL,603),(36,6,'Facebook',1,NULL,NULL,'Facebook',NULL,604),(37,6,'Email',1,NULL,NULL,'Email',NULL,605),(38,6,'Aviso Impreso El Comercio',1,NULL,NULL,'Aviso Impreso El Comercio',NULL,100),(39,6,'Aviso Impreso Trome',1,NULL,NULL,'Aviso Impreso Trome',NULL,100),(40,6,'Negrita',1,NULL,NULL,NULL,38,100),(41,6,'Encabezado simple',1,NULL,NULL,NULL,38,100),(42,7,'Membresía Custom',1,NULL,NULL,'Membresía Custom',NULL,100),(43,8,'Usuarios Secundarios',1,NULL,NULL,'Usuarios Secundarios',NULL,100),(44,9,'TCN',1,NULL,NULL,'TCN',NULL,100),(45,6,'LookandFeel',1,NULL,NULL,'LookandFeel',NULL,606),(46,7,'Plan KTB',1,NULL,NULL,'Plan KTB',NULL,100),(47,6,'Aviso Platinum',1,'2017-11-17 12:01:48','0000-00-00 00:00:00','Aviso Platinum',NULL,602),(48,11,'Paquete 1',1,'2018-01-25 15:15:35','2018-01-25 15:15:35',NULL,NULL,100),(49,11,'Paquete 2',1,'2018-01-26 09:32:17','2018-01-26 09:32:17',NULL,NULL,100),(50,11,'Paquete 3',1,'2018-01-26 09:32:25','2018-01-26 09:32:25',NULL,NULL,100),(51,6,'Aviso Destacado en ExpoAptitus.com',1,'2018-03-22 16:00:00','2018-03-22 16:00:00','Aviso Destacado en ExpoAptitus.com',NULL,601),(52,12,'Entrada General',1,'2018-05-07 16:04:13','2018-05-07 16:04:18','Eventos',NULL,100),(53,12,'Entrada Corporativa',1,'2018-05-07 16:04:49','2018-05-07 16:04:51','Eventos',NULL,100),(54,12,'Entrada Aptitus',1,'2018-05-07 16:04:49','2018-05-07 16:04:51','Eventos',NULL,100),(55,8,'Usuarios Secundarios BT',1,NULL,NULL,'Usuarios Secundarios BT',NULL,100),(56,13,'Evaluación Comunicación',1,NULL,NULL,'Evaluación Comunicación',NULL,100),(57,13,'Evaluación Confiabilidad',1,NULL,NULL,'Evaluación Confiabilidad',NULL,100),(58,13,'Evaluación Psicolaborales',1,NULL,NULL,'Evaluación Psicolaborales',NULL,100),(59,13,'Evaluación Inglés',1,NULL,NULL,'Evaluación Inglés',NULL,100),(60,14,'Perfil Destacado 4 meses',1,NULL,NULL,'Perfil Destacado 4 meses',NULL,100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_benefit`
--

DROP TABLE IF EXISTS `product_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_benefit` (
  `product_id` int(11) NOT NULL COMMENT 'Id del Producto',
  `value` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Valor del beneficio de acuerdo al producto',
  `benefit_id` int(11) NOT NULL COMMENT 'Id del Beneficio',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `cip_duration` int(11) DEFAULT NULL COMMENT 'dias de vigencia del cip',
  PRIMARY KEY (`product_id`,`benefit_id`),
  KEY `IDX_8D521BAFB517B89` (`benefit_id`),
  CONSTRAINT `fk_product_benefit_benefit` FOREIGN KEY (`benefit_id`) REFERENCES `benefit` (`id`),
  CONSTRAINT `fk_product_benefit_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_benefit`
--

LOCK TABLES `product_benefit` WRITE;
/*!40000 ALTER TABLE `product_benefit` DISABLE KEYS */;
INSERT INTO `product_benefit` VALUES (27,'60',1,1,NULL,NULL,NULL),(27,'Superior',3,1,NULL,NULL,NULL),(27,'2',4,1,NULL,NULL,NULL),(27,'14',7,1,NULL,NULL,NULL),(27,'',9,0,NULL,NULL,NULL),(28,'45',1,1,NULL,NULL,NULL),(28,'Preferencial',3,1,NULL,NULL,NULL),(28,'7',7,1,NULL,NULL,NULL),(29,'30',1,1,NULL,NULL,NULL),(29,'Regular',3,1,NULL,NULL,NULL),(30,'30',1,1,NULL,NULL,NULL),(30,'30',10,1,NULL,NULL,NULL),(31,'30',1,1,NULL,NULL,NULL),(31,'30',10,1,NULL,NULL,NULL),(32,'30',1,1,NULL,NULL,NULL),(32,'30',10,1,NULL,NULL,NULL),(33,'30',1,1,NULL,NULL,NULL),(33,'30',10,1,NULL,NULL,NULL),(35,'0',19,1,NULL,NULL,NULL),(36,'0',20,1,NULL,NULL,NULL),(37,'0',21,1,NULL,NULL,NULL),(45,'0',22,1,NULL,NULL,NULL),(45,'3',23,1,NULL,NULL,NULL),(47,'0',25,1,NULL,NULL,NULL),(48,'66',8,1,'2018-01-25 15:28:26','2018-07-25 15:28:29',3),(48,'3 1 1',11,1,NULL,NULL,NULL),(48,'30',26,1,NULL,NULL,NULL),(49,'61',8,1,'2018-01-25 00:00:00','2018-07-25 00:00:00',3),(49,'5 2 1',12,1,NULL,NULL,NULL),(49,'60',26,1,NULL,NULL,NULL),(50,'58',8,1,'2018-01-25 00:00:00','2018-07-25 00:00:00',3),(50,'8 5 2',13,1,NULL,NULL,NULL),(50,'90',26,1,NULL,NULL,NULL),(51,'3',24,1,'2022-02-25 15:05:03','2022-05-25 15:05:03',NULL),(52,'0',14,1,NULL,NULL,NULL),(52,'0',18,1,NULL,NULL,NULL),(53,'0',15,1,NULL,NULL,NULL),(53,'0',18,1,NULL,NULL,NULL),(54,'',16,1,NULL,NULL,NULL),(54,'',17,1,NULL,NULL,NULL),(54,'',18,1,NULL,NULL,NULL),(60,'',27,1,NULL,NULL,NULL),(60,'',28,1,NULL,NULL,NULL),(60,'',29,1,NULL,NULL,NULL),(60,'',30,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `product_benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_rate`
--

DROP TABLE IF EXISTS `product_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` decimal(8,2) NOT NULL COMMENT 'Costo del Producto',
  `extra_cost` decimal(8,2) DEFAULT NULL COMMENT 'Extra costo del Producto',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo de Tarifa',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  `product_id` int(11) NOT NULL COMMENT 'Id del Producto',
  `med_pub_id` int(11) DEFAULT NULL COMMENT 'Id del Medio de Publicación (Adecsys)',
  `cod_med_pub` varchar(10) DEFAULT NULL COMMENT 'Código del Medio de Publicación (Adecsys)',
  `des_med_pub` varchar(100) DEFAULT NULL COMMENT 'Descripción del Medio de Publicación (Adecsys)',
  `pub_id` int(11) DEFAULT NULL COMMENT 'Id de Publicación (Adecsys)',
  `cod_publicacion` varchar(10) DEFAULT NULL COMMENT 'Código de Publicación (Adecsys)',
  `dsc_publicacion` varchar(50) DEFAULT NULL COMMENT 'Descripción de Publicación (Adecsys)',
  `edi_id` int(11) DEFAULT NULL COMMENT 'Id de Edición (Adecsys)',
  `cod_edicion` varchar(10) DEFAULT NULL COMMENT 'Código de Edición (Adecsys)',
  `dsc_edicion` varchar(50) DEFAULT NULL COMMENT 'Descripción de Edición (Adecsys)',
  `sec_id` int(11) DEFAULT NULL COMMENT 'Id de Sección (Adecsys)',
  `cod_seccion` int(11) DEFAULT NULL COMMENT 'Código de Sección (Adecsys)',
  `dsc_seccion` varchar(100) DEFAULT NULL COMMENT 'Descripción de Sección (Adecsys)',
  `sub_sec_id` int(11) DEFAULT NULL COMMENT 'Id de Sub Sección (Adecsys)',
  `cod_subseccion` varchar(10) DEFAULT NULL COMMENT 'Código de Sub Sección (Adecsys)',
  `dsc_subseccion` varchar(100) DEFAULT NULL COMMENT 'Descripción de Sub Sección(Adecsys)',
  `ubi_id` int(11) DEFAULT NULL COMMENT 'Id de Ubicación (Adecsys)',
  `cod_ubicacion` varchar(20) DEFAULT NULL COMMENT 'Código de Ubicación (Adecsys)',
  `dsc_ubicacion` varchar(100) DEFAULT NULL COMMENT 'Descripción de Ubicación (Adecsys)',
  `tar_id` int(11) DEFAULT NULL COMMENT 'Id de Tarifa (Adecsys)',
  `cod_tarifa` varchar(20) DEFAULT NULL COMMENT 'Código de Tarifa (Adecsys)',
  `dsc_tarifa` varchar(100) DEFAULT NULL COMMENT 'Descripción de Tarifa (Adecsys)',
  `lunes` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `martes` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `miercoles` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `jueves` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `viernes` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `sabado` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `domingo` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `fch_inivigencia` date DEFAULT NULL COMMENT 'Fecha de Inicio de Vigencia (Adecsys)',
  `fch_finvigencia` date DEFAULT NULL COMMENT 'Fecha de Fin de Vigencia (Adecsys)',
  `valor_importe` float DEFAULT '0' COMMENT 'Valor Importe (Adecsys)',
  `tipo_tarifa` char(1) DEFAULT NULL COMMENT 'Tipo de Tarifa (Adecsys)',
  `dvaltip` varchar(20) DEFAULT NULL COMMENT 'Descripción de Tipo (Adecsys)',
  `tipo_aviso` varchar(20) DEFAULT NULL COMMENT 'Tipo de Aviso (Adecsys)',
  `id_producto` int(11) DEFAULT NULL COMMENT 'Id de Producto (Adecsys)',
  `medio_pub` varchar(20) DEFAULT NULL COMMENT 'Medio de Publicación (Adecsys)',
  `med_id` varchar(10) DEFAULT NULL COMMENT 'Id de Medida (Adecsys)',
  `estado` tinyint(4) DEFAULT '1' COMMENT 'Estado (Adecsys)',
  `cod_grupo_medida` int(11) DEFAULT NULL COMMENT 'Código de Grupo Medida (Adecsys)',
  `des_grupo_medida` varchar(100) DEFAULT NULL COMMENT 'Descripción de Grupo Medida (Adecsys)',
  `dsc_medida` varchar(20) DEFAULT NULL COMMENT 'Descripción de Medidad (Adecsys)',
  `principal` int(11) DEFAULT '1',
  `range_min` int(11) DEFAULT '1',
  `range_max` int(11) DEFAULT '1',
  `range_unity` varchar(10) DEFAULT 'unidad',
  PRIMARY KEY (`id`),
  KEY `fk_product_rate_product` (`product_id`),
  CONSTRAINT `fk_product_rate_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rate`
--

LOCK TABLES `product_rate` WRITE;
/*!40000 ALTER TABLE `product_rate` DISABLE KEYS */;
INSERT INTO `product_rate` VALUES (1,355.00,0.00,'web',1,27,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2633,83498,'AVISOS WEB',18845,'WNT-AP','AVISO WEB PREMIUM',32463,'ROP-WEB','AVISO WEB PREMIUM',99301,'WAPT-PAPRM','AVISO WEB PREMIUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(2,210.00,0.00,'web',1,28,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2633,83498,'AVISOS WEB',18844,'WNT-AD','AVISO WEB DESTACADO',32462,'ROP-WEB','AVISO WEB DESTACADO',99291,'WAPT-PWDST','AVISO WEB DESTACADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(3,160.00,0.00,'web',1,29,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2633,83498,'AVISOS WEB',16275,'WNT-AW','AVISOS WEB',27548,'ROP-WEB','AVISOS WEB',99284,'WAPT-PAWEB','AVISOS WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(4,425.00,0.00,'web',1,30,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32467,'WBCV-4','100 CV',99316,'WAPT-PBCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(5,190.00,0.00,'web',1,31,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32466,'WBCV-3','30 CV',99315,'WAPT-PBCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(6,130.00,0.00,'web',1,32,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32465,'WBCV-2','10 CV',99314,'WAPT-PBCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(7,25.00,0.00,'web',1,33,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32464,'WBCV-1','1 CV',99313,'WAPT-PBCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(8,75.00,0.00,'web',1,35,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2632,83496,'AVISOS HOME APTITUS',16274,'WNT-HA','AVISOS HOME APTITUS',27547,'ROP-WEB','AVISOS HOME APTITUS',99281,'WAPT-PAPT','DESTAQUE HOME APTITUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(9,250.00,0.00,'web',1,36,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3493,89922,'FACEBOOK APTITUS',20608,'WAP-FA','FACEBOOK APTITUS',34693,'ROP-WEB','FACEBOOK APTITUS',99321,'WAPT-PFCB','FACEBOOK APTITUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(10,600.00,0.00,'web',1,37,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',332,'WNT-M-APTL','MAILING APTITUS LIBRE',630,'WNT-EM-APT','MAILING APTITUS LIBRE',2641,83534,'MAILING APTITUS LIBRE',16294,'WNT-ML','MAILING',27570,'ROP-WEB','MAILING',99341,'WAPT-PMA','PORTAL MAILING APTITUS LIBRE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15303',1,11954,NULL,'M.BASE APTITUS LIBRE',1,1,1,'unidad'),(11,5.00,0.00,'web',1,40,NULL,NULL,NULL,NULL,'APT-NEGRIT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(12,20.00,0.00,'web',1,41,NULL,NULL,NULL,NULL,'DES-ENCSIM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(13,22.80,0.00,'web',1,38,1,'EDI_DIARIA','EDICION DIARIA',7,'ELCOM','EL COMERCIO',112,'PEC-2008','EDICION EL COMERCIO',584,300,'EMPLEOS ND',2922,'302','Profesionales Pedidos',4754,'PAG-ECO','PAGINA ECONOMICOS',80190,'TCLASICO4','TARIFA APTITUS CLASICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,10,'palabras'),(14,34.20,0.00,'web',1,38,1,'EDI_DIARIA','EDICION DIARIA',7,'ELCOM','EL COMERCIO',112,'PEC-2008','EDICION EL COMERCIO',584,300,'EMPLEOS ND',2922,'302','Profesionales Pedidos',4754,'PAG-ECO','PAGINA ECONOMICOS',80191,'TORO4','TARIFA APTITUS ORO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,11,15,'palabras'),(15,57.00,0.00,'web',1,38,1,'EDI_DIARIA','EDICION DIARIA',7,'ELCOM','EL COMERCIO',112,'PEC-2008','EDICION EL COMERCIO',584,300,'EMPLEOS ND',2922,'302','Profesionales Pedidos',4754,'PAG-ECO','PAGINA ECONOMICOS',80193,'TPLATINUM4','TARIFA APTITUS PLATINUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,16,25,'palabras'),(16,33.50,0.00,'web',1,39,1,'EDI_DIARIA','EDICION DIARIA',202,'TALAN','TALAN',265,'TAL-NL','TALAN NIVEL LIMA',1302,48257,'APTITUS',8426,'T302','PROFESIONALES PEDIDOS',12101,'PAG-ECO','PAGINA ECONOMICOS',80290,'TCLASICO3','TARIFA APTITUS TROME CLASICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,10,'palabras'),(17,50.25,0.00,'web',1,39,1,'EDI_DIARIA','EDICION DIARIA',202,'TALAN','TALAN',265,'TAL-NL','TALAN NIVEL LIMA',1302,48257,'APTITUS',8426,'T302','PROFESIONALES PEDIDOS',12101,'PAG-ECO','PAGINA ECONOMICOS',80292,'TORO4','TARIFA APTITUS TROME ORO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,11,15,'palabras'),(18,83.75,0.00,'web',1,39,1,'EDI_DIARIA','EDICION DIARIA',202,'TALAN','TALAN',265,'TAL-NL','TALAN NIVEL LIMA',1302,48257,'APTITUS',8426,'T302','PROFESIONALES PEDIDOS',12101,'PAG-ECO','PAGINA ECONOMICOS',80294,'TPLATINUM4','TARIFA APTITUS TROME PLATINUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,16,25,'palabras'),(19,0.00,0.00,'web',1,42,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(20,65.00,0.00,'web',1,43,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(21,2500.00,0.00,'web',1,44,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(22,300.00,0.00,'web',1,45,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',329,'WNT-APT-L','WEB APTITUS LIBRE',628,'WNT-EAPT-L','WEB APTITUS LIBRE',3886,NULL,'LOOK AND FEEL',22756,'WAP-LF','LOOK AND FEEL',37254,'WAP-L-LF','LOOK AND FEEL',105662,'PAPTL-LF','PORTAL LOOK AND FEEL LIBRE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-01-01','2018-12-31',0,NULL,'PORTAL WEB','ROP',NULL,NULL,'15300',1,11952,'WAPTITUS-DESTAQUES WEB','DESTAQUE WEB APTITUS',1,1,1,'unidad'),(23,0.00,0.00,'web',1,18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(24,0.00,0.00,'web',1,19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(25,0.00,0.00,'web',1,20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(26,0.00,0.00,'web',1,22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(27,0.00,0.00,'web',1,46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(30,299.00,0.00,'web',1,47,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2632,83496,'AVISOS PLATINUM APTITUS',16274,'WNT-HA','AVISOS PLATINUM APTITUS',27547,'ROP-WEB','AVISOS PLATINUM APTITUS',99304,'WAPT-PAPLT','DESTAQUE PLATINUM APTITUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE PLATINUM AP',1,1,1,'unidad'),(31,1173.53,0.00,'web',1,48,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3446,89432,'PAQUETES WEB',20353,'WAP-P1','PAQUETE 1',34301,'ROP-WEB','PAQUETES WEB',99322,'WAPT-PPQTW','PORTAL PAQUETES WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(32,1782.06,0.00,'web',1,49,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3446,89432,'PAQUETES WEB',20354,'WAP-P2','PAQUETE 2',34302,'ROP-WEB','PAQUETES WEB',99323,'WAPT-PPQTW','PORTAL PAQUETES WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(33,3392.86,0.00,'web',1,50,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',327,'WNT-EAPT','WEB APTITUS',3446,89432,'PAQUETES WEB',20355,'WAP-P3','PAQUETE 3',34303,'ROP-WEB','PAQUETES WEB',99324,'WAPT-PPQTW','PORTAL PAQUETES WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(34,150.00,0.00,'web',1,51,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2634,83500,'FERIAS',23971,'WAP-AF','AVISO FERIA',39308,'ROP-WEB','AVISO FERIA',104770,'WAPTP-AFE','PORTAL AVISO FERIA',1,1,1,1,1,1,1,'2018-03-01','2018-12-31',150,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(35,350.00,0.00,'web',1,52,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',327,'WNT-EAPT','WEB APTITUS',3446,89432,'PAQUETES WEB',20355,'WAP-P3','PAQUETE 3',34303,'ROP-WEB','PAQUETES WEB',99324,'WAPT-PPQTW','PORTAL PAQUETES WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(36,250.00,0.00,'web',1,53,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',327,'WNT-EAPT','WEB APTITUS',3446,89432,'PAQUETES WEB',20355,'WAP-P3','PAQUETE 3',34303,'ROP-WEB','PAQUETES WEB',99324,'WAPT-PPQTW','PORTAL PAQUETES WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(37,180.00,0.00,'web',1,54,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',327,'WNT-EAPT','WEB APTITUS',3446,89432,'PAQUETES WEB',20355,'WAP-P3','PAQUETE 3',34303,'ROP-WEB','PAQUETES WEB',99324,'WAPT-PPQTW','PORTAL PAQUETES WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'17328',1,13655,NULL,'PAQUETES WEB APTITUS',1,1,1,'unidad'),(38,84.75,NULL,NULL,1,60,NULL,NULL,'PORTAL DESTAQUES APTITUS',NULL,NULL,'DESTAQUES APTITUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,99320,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'15300',1,NULL,NULL,NULL,1,1,1,'unidad');
/*!40000 ALTER TABLE `product_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_rate_history`
--

DROP TABLE IF EXISTS `product_rate_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_rate_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cost` decimal(8,2) NOT NULL COMMENT 'Costo del Producto',
  `extra_cost` decimal(8,2) DEFAULT NULL COMMENT 'Extra costo del Producto',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tipo de Tarifa',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  `product_id` int(11) NOT NULL COMMENT 'Id del Producto',
  `med_pub_id` int(11) DEFAULT NULL COMMENT 'Id del Medio de Publicación (Adecsys)',
  `cod_med_pub` varchar(10) DEFAULT NULL COMMENT 'Código del Medio de Publicación (Adecsys)',
  `des_med_pub` varchar(100) DEFAULT NULL COMMENT 'Descripción del Medio de Publicación (Adecsys)',
  `pub_id` int(11) DEFAULT NULL COMMENT 'Id de Publicación (Adecsys)',
  `cod_publicacion` varchar(10) DEFAULT NULL COMMENT 'Código de Publicación (Adecsys)',
  `dsc_publicacion` varchar(20) DEFAULT NULL COMMENT 'Descripción de Publicación (Adecsys)',
  `edi_id` int(11) DEFAULT NULL COMMENT 'Id de Edición (Adecsys)',
  `cod_edicion` varchar(10) DEFAULT NULL COMMENT 'Código de Edición (Adecsys)',
  `dsc_edicion` varchar(20) DEFAULT NULL COMMENT 'Descripción de Edición (Adecsys)',
  `sec_id` int(11) DEFAULT NULL COMMENT 'Id de Sección (Adecsys)',
  `cod_seccion` int(11) DEFAULT NULL COMMENT 'Código de Sección (Adecsys)',
  `dsc_seccion` varchar(100) DEFAULT NULL COMMENT 'Descripción de Sección (Adecsys)',
  `sub_sec_id` int(11) DEFAULT NULL COMMENT 'Id de Sub Sección (Adecsys)',
  `cod_subseccion` varchar(10) DEFAULT NULL COMMENT 'Código de Sub Sección (Adecsys)',
  `dsc_subseccion` varchar(100) DEFAULT NULL COMMENT 'Descripción de Sub Sección(Adecsys)',
  `ubi_id` int(11) DEFAULT NULL COMMENT 'Id de Ubicación (Adecsys)',
  `cod_ubicacion` varchar(20) DEFAULT NULL COMMENT 'Código de Ubicación (Adecsys)',
  `dsc_ubicacion` varchar(100) DEFAULT NULL COMMENT 'Descripción de Ubicación (Adecsys)',
  `tar_id` int(11) DEFAULT NULL COMMENT 'Id de Tarifa (Adecsys)',
  `cod_tarifa` varchar(20) DEFAULT NULL COMMENT 'Código de Tarifa (Adecsys)',
  `dsc_tarifa` varchar(100) DEFAULT NULL COMMENT 'Descripción de Tarifa (Adecsys)',
  `lunes` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `martes` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `miercoles` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `jueves` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `viernes` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `sabado` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `domingo` int(11) DEFAULT NULL COMMENT 'Activo o Inactivo (Adecsys)',
  `fch_inivigencia` date DEFAULT NULL COMMENT 'Fecha de Inicio de Vigencia (Adecsys)',
  `fch_finvigencia` date DEFAULT NULL COMMENT 'Fecha de Fin de Vigencia (Adecsys)',
  `valor_importe` float DEFAULT '0' COMMENT 'Valor Importe (Adecsys)',
  `tipo_tarifa` char(1) DEFAULT NULL COMMENT 'Tipo de Tarifa (Adecsys)',
  `dvaltip` varchar(20) DEFAULT NULL COMMENT 'Descripción de Tipo (Adecsys)',
  `tipo_aviso` varchar(20) DEFAULT NULL COMMENT 'Tipo de Aviso (Adecsys)',
  `id_producto` int(11) DEFAULT NULL COMMENT 'Id de Producto (Adecsys)',
  `medio_pub` varchar(20) DEFAULT NULL COMMENT 'Medio de Publicación (Adecsys)',
  `med_id` varchar(10) DEFAULT NULL COMMENT 'Id de Medida (Adecsys)',
  `estado` tinyint(4) DEFAULT '1' COMMENT 'Estado (Adecsys)',
  `cod_grupo_medida` int(11) DEFAULT NULL COMMENT 'Código de Grupo Medida (Adecsys)',
  `des_grupo_medida` varchar(100) DEFAULT NULL COMMENT 'Descripción de Grupo Medida (Adecsys)',
  `dsc_medida` varchar(20) DEFAULT NULL COMMENT 'Descripción de Medidad (Adecsys)',
  `principal` int(11) DEFAULT '1',
  `range_min` int(11) DEFAULT '1',
  `range_max` int(11) DEFAULT '1',
  `range_unity` varchar(10) DEFAULT 'unidad',
  PRIMARY KEY (`id`),
  KEY `fk_product_rate_history_product` (`product_id`),
  CONSTRAINT `fk_product_rate_history_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_rate_history`
--

LOCK TABLES `product_rate_history` WRITE;
/*!40000 ALTER TABLE `product_rate_history` DISABLE KEYS */;
INSERT INTO `product_rate_history` VALUES (1,295.00,0.00,'web',1,27,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2633,83498,'AVISOS WEB',18845,'WNT-AP','AVISO WEB PREMIUM',32463,'ROP-WEB','AVISO WEB PREMIUM',88875,'WAPT-2017','AVISO WEB PREMIUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(2,175.00,0.00,'web',1,28,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2633,83498,'AVISOS WEB',18844,'WNT-AD','AVISO WEB DESTACADO',32462,'ROP-WEB','AVISO WEB DESTACADO',88874,'WAPT-2017','AVISO WEB DESTACADO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(3,75.00,0.00,'web',1,29,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2633,83498,'AVISOS WEB',16275,'WNT-AW','AVISOS WEB',27548,'ROP-WEB','AVISOS WEB',72319,'WAPT-2017','AVISOS WEB',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(4,340.00,0.00,'web',1,30,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32467,'WBCV-4','100 CV',88887,'WAPT-BSQCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(5,155.00,0.00,'web',1,31,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32466,'WBCV-3','30 CV',88886,'WAPT-BSQCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(6,105.00,0.00,'web',1,32,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32465,'WBCV-2','10 CV',88885,'WAPT-BSQCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(7,20.00,0.00,'web',1,33,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3172,85962,'BUSQUEDA DE CV',18846,'WNT-BC','BUSQUEDA DE CV',32464,'WBCV-1','1 CV',88884,'WAPT-BSQCV','BUSQUEDA DE CV',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11950,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(8,60.00,0.00,'web',1,35,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',2632,83496,'AVISOS HOME APTITUS',16274,'WNT-HA','AVISOS HOME APTITUS',27547,'ROP-WEB','AVISOS HOME APTITUS',72318,'WAPT-HAPT','DESTAQUE HOME APTITUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(9,250.00,0.00,'web',1,36,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',327,'WNT-APT','WEB APTITUS',627,'WNT-EAPT','WEB APTITUS',3493,89922,'FACEBOOK APTITUS',20608,'WAP-FA','FACEBOOK APTITUS',34693,'ROP-WEB','FACEBOOK APTITUS',91938,'WAPT-FACE','FACEBOOK APTITUS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ROP',NULL,NULL,'15300',1,11952,NULL,'DESTAQUE WEB APTITUS',1,1,1,'unidad'),(10,600.00,0.00,'web',1,37,37,'UNTWEB','NEGOCIOS TRANSACCIONALES WEB',328,'WNT-M-APT','MAILING APTITUS',629,'WNT-EM-APT','MAILING APTITUS',2637,83522,'MAILING APTITUS',16289,'WMA-1','1,000 - 5,000',27565,'ROP-WEB','MAILING APTITUS',72339,'WAPTM-2017','MAILING APTITUS 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'N','NORMAL','ROP',NULL,NULL,'15302',1,11953,NULL,'MAILING WEB APTITUS',1,1,1,'unidad'),(11,5.00,0.00,'web',1,40,NULL,NULL,NULL,NULL,'APT-NEGRIT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(12,20.00,0.00,'web',1,41,NULL,NULL,NULL,NULL,'DES-ENCSIM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,1,'unidad'),(13,22.80,0.00,'web',1,38,1,'EDI_DIARIA','EDICION DIARIA',7,'ELCOM','EL COMERCIO',112,'PEC-2008','EDICION EL COMERCIO',584,300,'EMPLEOS ND',2922,'302','Profesionales Pedidos',4754,'PAG-ECO','PAGINA ECONOMICOS',80190,'TCLASICO4','TARIFA APTITUS CLASICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,10,'palabras'),(14,34.20,0.00,'web',1,38,1,'EDI_DIARIA','EDICION DIARIA',7,'ELCOM','EL COMERCIO',112,'PEC-2008','EDICION EL COMERCIO',584,300,'EMPLEOS ND',2922,'302','Profesionales Pedidos',4754,'PAG-ECO','PAGINA ECONOMICOS',80191,'TORO4','TARIFA APTITUS ORO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,11,15,'palabras'),(15,57.00,0.00,'web',1,38,1,'EDI_DIARIA','EDICION DIARIA',7,'ELCOM','EL COMERCIO',112,'PEC-2008','EDICION EL COMERCIO',584,300,'EMPLEOS ND',2922,'302','Profesionales Pedidos',4754,'PAG-ECO','PAGINA ECONOMICOS',80193,'TPLATINUM4','TARIFA APTITUS PLATINUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,16,25,'palabras'),(16,33.50,0.00,'web',1,39,1,'EDI_DIARIA','EDICION DIARIA',202,'TALAN','TALAN',265,'TAL-NL','TALAN NIVEL LIMA',1302,48257,'APTITUS',8426,'T302','PROFESIONALES PEDIDOS',12101,'PAG-ECO','PAGINA ECONOMICOS',80290,'TCLASICO3','TARIFA APTITUS TROME CLASICO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,1,1,10,'palabras'),(17,50.25,0.00,'web',1,39,1,'EDI_DIARIA','EDICION DIARIA',202,'TALAN','TALAN',265,'TAL-NL','TALAN NIVEL LIMA',1302,48257,'APTITUS',8426,'T302','PROFESIONALES PEDIDOS',12101,'PAG-ECO','PAGINA ECONOMICOS',80292,'TORO4','TARIFA APTITUS TROME ORO',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,11,15,'palabras'),(18,83.75,0.00,'web',1,39,1,'EDI_DIARIA','EDICION DIARIA',202,'TALAN','TALAN',265,'TAL-NL','TALAN NIVEL LIMA',1302,48257,'APTITUS',8426,'T302','PROFESIONALES PEDIDOS',12101,'PAG-ECO','PAGINA ECONOMICOS',80294,'TPLATINUM4','TARIFA APTITUS TROME PLATINUM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'W','PORTAL WEB','ECO',NULL,NULL,NULL,1,NULL,NULL,NULL,0,16,25,'palabras');
/*!40000 ALTER TABLE `product_rate_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_type`
--

DROP TABLE IF EXISTS `product_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre del Tipo de Producto',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  `show` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'indica si el tipo es visible',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_type`
--

LOCK TABLES `product_type` WRITE;
/*!40000 ALTER TABLE `product_type` DISABLE KEYS */;
INSERT INTO `product_type` VALUES (1,'Avisos',1,1),(2,'Búsqueda de CVs',1,1),(3,'Paquetes',0,0),(4,'Tests Psicologicos',0,0),(5,'Otros',0,0),(6,'Extracargo',1,1),(7,'Membresia',1,0),(8,'Usuarios',1,0),(9,'TCN',1,0),(10,'LookandFeel',1,0),(11,'Paquetes',1,1),(12,'Eventos',1,0),(13,'Evaluaciones',1,1),(14,'Peril Destacado',1,1);
/*!40000 ALTER TABLE `product_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT 'Id del cliente (Usuario)',
  `created_at` datetime NOT NULL COMMENT 'Fecha de Creación',
  `modified_at` datetime DEFAULT NULL COMMENT 'Fecha de Modificación',
  `total_cost` decimal(9,3) NOT NULL DEFAULT '0.000' COMMENT 'Costo Total',
  `discount` decimal(9,3) NOT NULL DEFAULT '0.000' COMMENT 'descuentos',
  `total_tax` decimal(9,3) NOT NULL DEFAULT '0.000' COMMENT 'Impuesto Total',
  `cart_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Id del Carro de Compra',
  `state` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Estado de la compra (to pay, paid, enable, disable)',
  `entity_id` int(11) NOT NULL COMMENT 'Id de la entidad',
  `entity_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Nombre de la entidad (Empresa, Postulante, Institucion Educativa, etc)',
  `origin` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'identifica de que sistema proviene',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES (1,123,'2017-07-17 14:28:04',NULL,350.000,0.000,5.000,'5a635980-499c-4178-88c9-0b0c89d35e80)','paid',1,'Empresa',''),(2,5,'2022-02-25 10:13:47','2022-02-25 10:13:47',1450.000,0.000,261.000,'f13d5901-f76c-4545-8aa6-29e8509f434f','paid',4,'Empresa','web'),(3,5,'2022-02-25 14:33:40','2022-02-25 14:33:40',31614.520,0.000,5690.610,'6e0a9005-8bed-4798-ab5b-fcf8476c2485','paid',4,'Empresa','web'),(4,5,'2022-02-26 13:48:39','2022-02-26 13:48:39',1173.530,0.000,211.240,'cc70fc8e-5482-4879-be35-7ebe82a96dfb','paid',4,'Empresa','web');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_adecsys_code`
--

DROP TABLE IF EXISTS `purchase_adecsys_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_adecsys_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL COMMENT 'Id de Compra',
  `product_id` int(11) NOT NULL COMMENT 'Id de Producto',
  `adecsys_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Código de Adecsys',
  PRIMARY KEY (`id`),
  KEY `purchase_adecsys_code_purchase_product` (`purchase_id`,`product_id`),
  KEY `fk_purchase_adecsys_product` (`product_id`),
  CONSTRAINT `fk_purchase_adecsys_code_purchase` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`),
  CONSTRAINT `fk_purchase_adecsys_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1160000956 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_adecsys_code`
--

LOCK TABLES `purchase_adecsys_code` WRITE;
/*!40000 ALTER TABLE `purchase_adecsys_code` DISABLE KEYS */;
INSERT INTO `purchase_adecsys_code` VALUES (126000956,1,37,NULL),(1160000955,1,37,NULL);
/*!40000 ALTER TABLE `purchase_adecsys_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_payment`
--

DROP TABLE IF EXISTS `purchase_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) DEFAULT NULL COMMENT 'Id de Compra',
  `cip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Cip de Pago Efectivo',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Token de Pago',
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Método de Pago (mc, visa, pe, etc)',
  `created_at` datetime NOT NULL COMMENT 'Fecha de Creación',
  `expired_at` datetime DEFAULT NULL COMMENT 'Fecha de Expiración',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Activo o Inactivo',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Estado del Pago (to pay, paid, etc)',
  `paid_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_76F24E74558FBEB9` (`purchase_id`),
  CONSTRAINT `fk_purchase_payment_purchase` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99999303 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_payment`
--

LOCK TABLES `purchase_payment` WRITE;
/*!40000 ALTER TABLE `purchase_payment` DISABLE KEYS */;
INSERT INTO `purchase_payment` VALUES (99999299,1,NULL,NULL,'visa','2018-05-11 09:49:46',NULL,1,'to pay',NULL),(99999300,2,NULL,'','visa','2022-02-25 10:13:47',NULL,1,'paid','2022-02-25 10:13:47'),(99999301,3,NULL,'','visa','2022-02-25 14:33:40',NULL,1,'paid','2022-02-25 14:33:40'),(99999302,4,NULL,'','visa','2022-02-26 13:48:39',NULL,1,'paid','2022-02-26 13:48:40');
/*!40000 ALTER TABLE `purchase_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_payment_credit7`
--

DROP TABLE IF EXISTS `purchase_payment_credit7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_payment_credit7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_payment_id` int(11) NOT NULL,
  `purchase_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `issued_at` datetime DEFAULT NULL,
  `responsible` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `way_to_pay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_center_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_purchase_payment_credit7_purchase_payment` (`purchase_payment_id`),
  CONSTRAINT `fk_purchase_payment_credit7_purchase_payment` FOREIGN KEY (`purchase_payment_id`) REFERENCES `purchase_payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_payment_credit7`
--

LOCK TABLES `purchase_payment_credit7` WRITE;
/*!40000 ALTER TABLE `purchase_payment_credit7` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_payment_credit7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_payment_pos`
--

DROP TABLE IF EXISTS `purchase_payment_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_payment_pos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_payment_id` int(11) NOT NULL,
  `voucher_number` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `batch_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_center_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_purchase_payment_pos_purchase_payment` (`purchase_payment_id`),
  CONSTRAINT `fk_purchase_payment_pos_purchase_payment` FOREIGN KEY (`purchase_payment_id`) REFERENCES `purchase_payment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_payment_pos`
--

LOCK TABLES `purchase_payment_pos` WRITE;
/*!40000 ALTER TABLE `purchase_payment_pos` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_payment_pos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_product`
--

DROP TABLE IF EXISTS `purchase_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL COMMENT 'Id de Compra',
  `product_id` int(11) NOT NULL COMMENT 'Id de Producto',
  `quantity` int(11) NOT NULL DEFAULT '0' COMMENT 'Cantidad',
  `sub_total` decimal(9,3) NOT NULL DEFAULT '0.000' COMMENT 'Sub Total',
  `parent_id` int(11) DEFAULT NULL,
  `expired_at` datetime DEFAULT NULL COMMENT 'Fecha de Expiración del paquete',
  PRIMARY KEY (`id`),
  KEY `IDX_C890CED4558FBEB9` (`purchase_id`),
  KEY `fk_purchase_product_product` (`product_id`),
  KEY `IDX_C890CED4727ACA70` (`parent_id`),
  CONSTRAINT `FK_C890CED4727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `purchase_product` (`id`),
  CONSTRAINT `fk_purchase_product_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_purchase_product_purchase` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_product`
--

LOCK TABLES `purchase_product` WRITE;
/*!40000 ALTER TABLE `purchase_product` DISABLE KEYS */;
INSERT INTO `purchase_product` VALUES (1,1,35,2,150.000,NULL,NULL),(2,1,36,2,500.000,NULL,NULL),(3,1,37,1,600.000,NULL,NULL),(4,1,38,1,50.000,NULL,NULL),(5,1,39,1,60.000,NULL,NULL),(6,1,40,1,70.000,4,NULL),(7,1,41,1,80.000,4,NULL),(8,2,29,2,320.000,NULL,NULL),(9,2,28,2,420.000,NULL,NULL),(10,2,27,2,710.000,NULL,NULL),(11,3,50,6,20357.160,NULL,'2022-05-26 14:33:40'),(12,3,49,5,8910.300,NULL,'2022-04-26 14:33:40'),(13,3,48,2,2347.060,NULL,'2022-03-27 14:33:40'),(14,4,48,1,1173.530,NULL,'2022-03-28 13:48:40');
/*!40000 ALTER TABLE `purchase_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mdb_apt_payments'
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
