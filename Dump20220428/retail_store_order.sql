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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL,
  `total_cost` decimal(10,2) NOT NULL,
  `status` varchar(45) NOT NULL,
  `total_units` int NOT NULL,
  `ordered_on` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,353.62,'shipped',4,'2022-02-05'),(2,240.15,'dispached',7,'2022-02-22'),(3,439.04,'delivered',2,'2022-02-25'),(4,195.02,'confirmed',7,'2022-02-09'),(5,314.83,'shipped',2,'2022-02-26'),(6,128.46,'dispached',8,'2022-02-26'),(7,419.20,'delivered',1,'2022-02-19'),(8,261.75,'confirmed',5,'2022-02-10'),(9,298.17,'shipped',4,'2022-02-06'),(10,438.67,'dispached',1,'2022-02-20'),(11,336.96,'delivered',8,'2022-02-07'),(12,142.70,'confirmed',8,'2022-02-26'),(13,493.73,'shipped',1,'2022-02-15'),(14,168.96,'dispached',1,'2022-02-20'),(15,245.57,'delivered',1,'2022-02-04'),(16,192.74,'confirmed',1,'2022-02-12'),(17,282.75,'shipped',2,'2022-02-16'),(18,136.54,'dispached',5,'2022-02-13'),(19,438.37,'delivered',7,'2022-02-01'),(20,102.53,'confirmed',1,'2022-02-26'),(21,247.62,'shipped',8,'2022-02-14'),(22,464.49,'dispached',2,'2022-02-18'),(23,309.39,'delivered',4,'2022-02-17'),(24,304.80,'confirmed',4,'2022-03-01'),(25,158.03,'shipped',7,'2022-02-07'),(26,243.46,'dispached',5,'2022-02-08'),(27,250.13,'delivered',6,'2022-02-09'),(28,297.87,'confirmed',4,'2022-02-01'),(29,106.65,'shipped',7,'2022-02-10'),(30,119.90,'dispached',2,'2022-02-12'),(31,347.76,'delivered',4,'2022-02-17'),(32,220.40,'confirmed',2,'2022-02-14'),(33,295.91,'shipped',8,'2022-02-23'),(34,483.67,'dispached',3,'2022-02-28'),(35,123.56,'delivered',1,'2022-02-26'),(36,219.87,'confirmed',3,'2022-02-02'),(37,254.48,'shipped',8,'2022-02-11'),(38,404.34,'dispached',5,'2022-02-11'),(39,436.13,'delivered',3,'2022-02-22'),(40,396.32,'confirmed',5,'2022-02-12'),(41,251.15,'shipped',5,'2022-02-22'),(42,199.95,'dispached',6,'2022-02-17'),(43,158.92,'delivered',3,'2022-02-22'),(44,208.97,'confirmed',2,'2022-02-11'),(45,414.03,'shipped',1,'2022-02-13'),(46,370.90,'dispached',4,'2022-02-24'),(47,499.73,'delivered',4,'2022-02-01'),(48,365.61,'confirmed',8,'2022-02-01'),(49,263.43,'shipped',8,'2022-02-10'),(50,104.40,'dispached',5,'2022-02-26');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `order_BEFORE_INSERT` BEFORE INSERT ON `order` FOR EACH ROW BEGIN
set new.status = 'confirmed';
set new.ordered_on = cast((select CURRENT_TIMESTAMP) as time);
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

-- Dump completed on 2022-04-27 23:53:35
