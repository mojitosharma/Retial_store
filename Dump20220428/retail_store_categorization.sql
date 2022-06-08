CREATE DATABASE  IF NOT EXISTS `retail_store` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `retail_store`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retail_store
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `categorization`
--

DROP TABLE IF EXISTS `categorization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorization` (
  `p_id` int NOT NULL,
  `cat_id` int NOT NULL,
  PRIMARY KEY (`p_id`,`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorization`
--

LOCK TABLES `categorization` WRITE;
/*!40000 ALTER TABLE `categorization` DISABLE KEYS */;
INSERT INTO `categorization` VALUES (1,3),(2,7),(3,1),(4,1),(5,9),(6,8),(7,2),(8,9),(9,4),(10,1),(11,5),(12,1),(13,5),(14,4),(15,7),(16,5),(17,9),(18,4),(19,4),(20,4),(21,4),(22,4),(23,8),(24,4),(25,8),(26,6),(27,1),(28,4),(29,1),(30,4),(31,1),(32,6),(33,1),(34,2),(35,6),(36,6),(37,2),(38,4),(39,3),(40,2),(41,1),(42,3),(43,8),(44,4),(45,8),(46,8),(47,1),(48,1),(49,1),(50,4),(51,1),(52,1),(53,6),(54,5),(55,3),(56,4),(57,9),(58,9),(59,8),(60,1),(61,7),(62,6),(63,7),(64,2),(65,1),(66,9),(67,7),(68,4),(69,4),(70,1),(71,8),(72,2),(73,1),(74,6),(75,7),(76,7),(77,6),(78,4),(79,4),(80,2),(81,2),(82,4),(83,6),(84,1),(85,3),(86,6),(87,2),(88,4),(89,5),(90,8),(91,9),(92,6),(93,4),(94,1),(95,7),(96,1),(97,1),(98,1),(99,9),(100,4);
/*!40000 ALTER TABLE `categorization` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:53:35
