-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'a','a',100),(3,'test','a',10);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sushi`
--

DROP TABLE IF EXISTS `sushi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sushi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `img_url` varchar(150) NOT NULL,
  `price` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sushi`
--

LOCK TABLES `sushi` WRITE;
/*!40000 ALTER TABLE `sushi` DISABLE KEYS */;
INSERT INTO `sushi` VALUES (1,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(2,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(3,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(4,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(5,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(6,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(7,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(8,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(9,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(10,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(11,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(12,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(13,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(14,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(15,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(16,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(17,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(18,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(19,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(20,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(21,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(22,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(23,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(24,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(25,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(26,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(27,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(28,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(29,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(30,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(31,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(32,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(33,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(34,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(35,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(36,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(37,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(38,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(39,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(40,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(41,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(42,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(43,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(44,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(45,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(46,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(47,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(48,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(49,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(50,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(51,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(52,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(53,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(54,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(55,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(56,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(57,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(58,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(59,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(60,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(61,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(62,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(63,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(64,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(65,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(66,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(67,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(68,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(69,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(70,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(71,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(72,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(73,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(74,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(75,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(76,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(77,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(78,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(79,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(80,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(81,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(82,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(83,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(84,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(85,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(86,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(87,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(88,'Kawaii Maguro','https://i.imgur.com/RJGr3Xs.png',10,'2018-07-27 18:53:16'),(89,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(90,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(91,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(92,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(93,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(94,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(95,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(96,'Tako Supreme','https://imgur.com/ulVm5UD.png',20,'2018-07-27 18:53:16'),(97,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16'),(98,'Genki Toro','https://imgur.com/NVokYSq.png',25,'2018-07-27 18:53:16'),(99,'Oh Sake','https://imgur.com/tYavGoS.png',10,'2018-07-27 18:53:16'),(100,'Tsundere Ebi','https://imgur.com/68s51yg.png',15,'2018-07-27 18:53:16');
/*!40000 ALTER TABLE `sushi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'demo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-07 23:59:26
