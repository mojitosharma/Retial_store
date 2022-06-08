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
-- Table structure for table `supplies_ordered`
--

DROP TABLE IF EXISTS `supplies_ordered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplies_ordered` (
  `so_id` int NOT NULL,
  `s_id` int NOT NULL,
  `p_id` int NOT NULL,
  `t_cost` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `received` varchar(5) NOT NULL DEFAULT 'FALSE',
  PRIMARY KEY (`so_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies_ordered`
--

LOCK TABLES `supplies_ordered` WRITE;
/*!40000 ALTER TABLE `supplies_ordered` DISABLE KEYS */;
INSERT INTO `supplies_ordered` VALUES (1,1,1,1088.23,11,'TRUE'),(2,2,2,45.27,1,'TRUE'),(3,3,3,256.96,1,'TRUE'),(4,4,4,272.61,9,'TRUE'),(5,5,5,4382.30,26,'TRUE'),(6,6,6,290.40,12,'TRUE'),(7,7,7,13661.40,30,'TRUE'),(8,8,8,920.64,16,'TRUE'),(9,9,9,1046.52,12,'TRUE'),(10,10,10,3640.00,7,'TRUE'),(11,11,11,1028.58,21,'TRUE'),(12,12,12,25.90,1,'TRUE'),(13,13,13,8499.15,15,'TRUE'),(14,14,14,3484.03,19,'TRUE'),(15,15,15,7773.00,30,'TRUE'),(16,16,16,3106.65,15,'TRUE'),(17,17,17,2069.64,12,'TRUE'),(18,18,18,829.92,26,'TRUE'),(19,19,19,1135.09,17,'TRUE');
/*!40000 ALTER TABLE `supplies_ordered` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:53:34