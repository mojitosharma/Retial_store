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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `detail_id` int NOT NULL,
  `order_id` int NOT NULL,
  `p_id` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,1,1,98.93,4),(2,2,2,45.27,7),(3,3,3,256.96,2),(4,4,4,30.29,7),(5,5,5,168.55,2),(6,6,6,24.20,8),(7,7,7,455.38,1),(8,8,8,57.54,5),(9,9,9,87.21,4),(10,10,10,520.00,1),(11,11,11,48.98,8),(12,12,12,25.90,8),(13,13,13,566.61,1),(14,14,14,183.37,1),(15,15,15,259.10,1),(16,16,16,207.11,1),(17,17,17,172.47,2),(18,18,18,31.92,5),(19,19,19,66.77,7),(20,20,20,151.64,1),(21,21,21,40.23,8),(22,22,22,250.42,2),(23,23,23,88.83,4),(24,24,24,80.47,4),(25,25,25,33.85,7),(26,26,26,51.96,5),(27,27,27,49.49,6),(28,28,28,90.22,4),(29,29,29,22.02,7),(30,30,30,78.16,2),(31,31,31,103.70,4),(32,32,32,131.02,2),(33,33,33,39.38,8),(34,34,34,171.35,3),(35,35,35,170.49,1),(36,36,36,98.28,3),(37,37,37,33.75,8),(38,38,38,93.14,5),(39,39,39,164.77,3),(40,40,40,81.79,5),(41,41,41,67.66,5),(42,42,42,39.54,6),(43,43,43,80.87,3),(44,44,44,129.97,2),(45,45,45,467.82,1),(46,46,46,108.38,4),(47,47,47,140.11,4),(48,48,48,56.04,8),(49,49,49,39.10,8),(50,50,50,26.55,5);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:53:39
