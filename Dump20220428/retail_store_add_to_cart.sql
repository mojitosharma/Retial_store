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
-- Table structure for table `add_to_cart`
--

DROP TABLE IF EXISTS `add_to_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_to_cart` (
  `cart_id` int NOT NULL,
  `c_id` int NOT NULL,
  `p_id` int NOT NULL,
  `quantity` int NOT NULL,
  `purchased` varchar(5) NOT NULL,
  `time_added` datetime NOT NULL,
  PRIMARY KEY (`cart_id`,`p_id`,`time_added`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_to_cart`
--

LOCK TABLES `add_to_cart` WRITE;
/*!40000 ALTER TABLE `add_to_cart` DISABLE KEYS */;
INSERT INTO `add_to_cart` VALUES (1,1,1,4,'TRUE','2022-03-02 20:54:45'),(2,2,2,7,'TRUE','2022-03-04 08:37:28'),(3,3,3,2,'TRUE','2022-02-28 09:28:41'),(4,4,4,7,'TRUE','2022-03-04 21:15:44'),(5,5,5,2,'TRUE','2022-03-02 06:08:27'),(6,6,6,8,'TRUE','2022-03-04 05:25:50'),(7,7,7,1,'TRUE','2022-03-04 21:51:36'),(8,8,8,5,'TRUE','2022-03-01 19:06:21'),(9,9,9,4,'TRUE','2022-02-28 08:18:00'),(10,10,10,1,'TRUE','2022-02-03 08:18:00'),(11,11,11,8,'TRUE','2022-03-08 06:54:45'),(12,12,12,8,'TRUE','2022-03-04 11:00:14'),(13,13,13,1,'TRUE','2022-03-02 17:38:28'),(14,14,14,1,'TRUE','2022-03-14 20:30:36'),(15,15,15,1,'TRUE','2022-03-02 17:38:28'),(16,16,16,1,'TRUE','2022-03-04 09:25:50'),(17,17,17,2,'TRUE','2022-03-04 20:30:36'),(18,18,18,5,'TRUE','2022-02-28 08:47:10'),(19,19,19,7,'TRUE','2022-02-28 20:43:36'),(20,20,20,1,'TRUE','2022-03-14 21:08:32'),(21,21,21,8,'TRUE','2022-02-25 18:47:10'),(22,22,22,2,'TRUE','2022-02-08 20:43:36'),(23,23,23,4,'TRUE','2022-03-22 20:54:45'),(24,24,24,4,'TRUE','2022-03-02 17:38:28'),(25,25,25,7,'TRUE','2022-03-04 20:15:10'),(26,26,26,5,'TRUE','2022-02-28 08:47:10'),(27,27,27,6,'TRUE','2022-02-28 20:43:36'),(28,28,28,4,'TRUE','2022-02-28 13:51:36'),(29,29,29,7,'TRUE','2022-03-04 16:48:45'),(30,30,30,2,'TRUE','2022-03-04 14:55:22'),(31,31,31,4,'TRUE','2022-03-01 08:04:48'),(32,32,32,2,'TRUE','2022-03-04 16:32:34'),(33,33,33,8,'TRUE','2022-02-28 10:27:20'),(34,34,34,3,'TRUE','2022-03-04 05:58:30'),(35,35,35,1,'TRUE','2022-02-28 05:52:09'),(36,36,36,3,'TRUE','2022-03-01 13:10:28'),(37,37,37,8,'TRUE','2022-03-04 15:33:51'),(38,38,38,5,'TRUE','2022-03-02 20:27:16'),(39,39,39,3,'TRUE','2022-03-02 11:57:05'),(40,40,40,5,'TRUE','2022-03-02 11:57:05'),(41,41,41,5,'TRUE','2022-02-28 23:52:50'),(42,42,42,6,'TRUE','2022-03-04 03:43:11'),(43,43,43,3,'TRUE','2022-03-01 08:50:56'),(44,44,44,2,'TRUE','2022-03-04 13:54:13'),(45,45,45,1,'TRUE','2022-03-01 13:04:51'),(46,46,46,4,'TRUE','2022-03-04 10:31:35'),(47,47,47,4,'TRUE','2022-03-02 22:10:26'),(48,48,48,8,'TRUE','2022-03-04 01:22:31'),(49,49,49,8,'TRUE','2022-03-02 22:12:09'),(50,50,50,5,'TRUE','2022-03-04 13:01:01');
/*!40000 ALTER TABLE `add_to_cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `add_to_cart_BEFORE_INSERT` BEFORE INSERT ON `add_to_cart` FOR EACH ROW BEGIN
set new.time_added = cast((select CURRENT_TIMESTAMP) as time);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-27 23:53:36
