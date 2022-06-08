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
-- Table structure for table `works_for`
--

DROP TABLE IF EXISTS `works_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_for` (
  `e_id` int NOT NULL,
  `dep_id` int NOT NULL,
  `emp_type` varchar(45) NOT NULL,
  PRIMARY KEY (`e_id`,`dep_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_for`
--

LOCK TABLES `works_for` WRITE;
/*!40000 ALTER TABLE `works_for` DISABLE KEYS */;
INSERT INTO `works_for` VALUES (1,1,'IT'),(2,2,'storage'),(3,3,'customer service'),(4,4,'marketing'),(5,1,'manager'),(6,2,'manager'),(7,3,'manager'),(8,4,'manager'),(9,1,'IT'),(10,2,'storage'),(11,3,'customer service'),(12,4,'marketing'),(13,1,'IT'),(14,2,'storage'),(15,3,'customer service'),(16,4,'marketing'),(17,1,'IT'),(18,2,'storage'),(19,3,'customer service'),(20,4,'marketing'),(21,1,'IT'),(22,2,'storage'),(23,3,'customer service'),(24,4,'marketing'),(25,1,'IT'),(26,2,'storage'),(27,3,'customer service'),(28,4,'marketing'),(29,1,'IT'),(30,3,'customer service'),(31,1,'IT'),(32,3,'customer service'),(33,1,'IT'),(34,3,'customer service'),(35,1,'IT'),(36,3,'customer service'),(37,1,'IT'),(38,3,'customer service'),(39,1,'IT'),(40,3,'customer service'),(41,2,'storage'),(42,2,'storage'),(43,4,'marketing'),(44,3,'customer service'),(45,3,'customer service');
/*!40000 ALTER TABLE `works_for` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:53:37
