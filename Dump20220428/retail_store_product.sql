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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  `manu_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Grapefruit - Pink',25,'2022-01-26','2022-11-27'),(2,'Huck White Towels',7,'2022-01-17','2022-06-09'),(3,'Pancetta',13,'2022-02-16','2022-09-25'),(4,'Pork Loin Bine - In Frenched',23,'2021-12-14','2022-06-21'),(5,'Sultanas',5,'2022-01-23','2022-05-07'),(6,'Bread - Granary Small Pull',11,'2021-12-26','2022-07-11'),(7,'Beans - Kidney White',28,'2022-02-19','2022-07-27'),(8,'Mop Head - Cotton, 24 Oz',3,'2022-01-09','2022-04-05'),(9,'Vodka - Smirnoff',21,'2022-01-29','2022-05-24'),(10,'Pork - Bacon,back Peameal',30,'2022-02-22','2022-06-23'),(11,'Devonshire Cream',30,'2022-01-09','2022-05-29'),(12,'Chicken - Breast, 5 - 7 Oz',24,'2022-01-10','2022-08-31'),(13,'Cheese - Comtomme',9,'2021-12-12','2022-08-01'),(14,'Soup - Clam Chowder, Dry Mix',17,'2022-01-28','2022-08-30'),(15,'Doilies - 12, Paper',14,'2022-02-20','2022-05-27'),(16,'Cream - 35%',13,'2021-12-13','2022-08-03'),(17,'Dasheen',22,'2022-01-03','2022-05-12'),(18,'Juice - Ocean Spray Kiwi',27,'2021-12-18','2022-07-15'),(19,'Wine - Shiraz South Eastern',10,'2021-12-24','2022-06-09'),(20,'Beer - Heinekin',4,'2022-01-21','2022-05-31'),(21,'Coffee Swiss Choc Almond',27,'2021-12-22','2022-04-13'),(22,'Wine - Casillero Del Diablo',9,'2022-01-05','2022-05-16'),(23,'Oil - Canola',5,'2021-12-21','2022-07-28'),(24,'Soup - Cream Of Broccoli',17,'2022-01-04','2022-09-26'),(25,'Oil - Margarine',13,'2021-12-18','2022-09-19'),(26,'Muffin - Mix - Bran And Maple 15l',7,'2022-01-26','2022-07-06'),(27,'Beef - Cooked, Corned',1,'2021-12-12','2022-07-21'),(28,'Juice - Grapefruit, 341 Ml',2,'2021-12-12','2022-06-18'),(29,'Chinese Foods - Pepper Beef',13,'2021-12-20','2022-08-31'),(30,'Squash - Guords',4,'2022-01-03','2022-11-29'),(31,'Pork - Shoulder',11,'2022-01-18','2022-08-09'),(32,'Cinnamon Rolls',17,'2022-02-13','2022-07-21'),(33,'Veal - Loin',20,'2021-12-16','2022-06-28'),(34,'Rappini - Andy Boy',18,'2021-12-29','2022-11-27'),(35,'Cinnamon Rolls',26,'2022-02-12','2022-10-21'),(36,'Croissant, Raw - Mini',22,'2022-01-26','2022-08-13'),(37,'Beans - Fava, Canned',10,'2022-01-11','2022-10-08'),(38,'Wine - Vidal Icewine Magnotta',1,'2022-02-09','2022-10-22'),(39,'Dasheen',7,'2022-01-13','2022-07-14'),(40,'Kumquat',17,'2021-12-16','2022-07-03'),(41,'Salmon - Atlantic, Fresh, Whole',2,'2022-02-17','2022-10-24'),(42,'Puree - Kiwi',5,'2021-12-21','2022-07-28'),(43,'Rice Pilaf, Dry,package',13,'2022-01-24','2022-08-19'),(44,'Wine - Ej Gallo Sierra Valley',8,'2021-12-24','2022-11-17'),(45,'Flour - Bread',8,'2021-12-27','2022-08-17'),(46,'Bread - Sticks, Thin, Plain',17,'2022-02-05','2022-07-02'),(47,'Veal - Leg, Provimi - 50 Lb Max',17,'2022-02-16','2022-09-09'),(48,'Pork - Bacon, Sliced',28,'2022-01-22','2022-09-20'),(49,'Fish - Atlantic Salmon, Cold',11,'2021-12-13','2022-06-23'),(50,'Wine - Rosso Toscano Igt',3,'2021-12-21','2022-09-03'),(51,'Pork Loin Cutlets',26,'2021-12-30','2022-05-17'),(52,'Turkey - Breast, Smoked',13,'2022-02-03','2022-04-15'),(53,'Cake - Sheet Strawberry',30,'2022-01-25','2022-06-14'),(54,'Cheese - Oka',6,'2022-01-28','2022-07-31'),(55,'Pears - Fiorelle',23,'2022-02-20','2022-09-29'),(56,'Pepsi - Diet, 355 Ml',27,'2022-01-27','2022-07-13'),(57,'Sauce - White, Mix',15,'2022-01-14','2022-11-18'),(58,'Cleaner - Pine Sol',30,'2022-01-07','2022-05-16'),(59,'Pasta - Elbows, Macaroni, Dry',1,'2021-12-17','2022-07-31'),(60,'Lamb - Whole Head Off',23,'2021-12-31','2022-08-18'),(61,'Squeeze Bottle',16,'2022-01-03','2022-09-04'),(62,'Ice Cream - Vanilla',13,'2022-02-20','2022-04-06'),(63,'Oven Mitts - 15 Inch',8,'2022-01-09','2022-06-09'),(64,'Pumpkin - Seed',18,'2022-02-23','2022-05-26'),(65,'Ham - Smoked, Bone - In',14,'2021-12-31','2022-09-03'),(66,'Cleaner - Bleach',24,'2022-02-09','2022-09-25'),(67,'Bag Clear 10 Lb',18,'2022-01-21','2022-08-31'),(68,'Wine - Cotes Du Rhone',14,'2022-01-10','2022-08-27'),(69,'Chambord Royal',16,'2022-01-20','2022-09-25'),(70,'Chickhen - Chicken Phyllo',22,'2022-01-22','2022-04-21'),(71,'Bread - Rolls, Corn',4,'2022-01-12','2022-05-13'),(72,'Mushroom - Porcini, Dry',23,'2022-02-01','2022-06-10'),(73,'Pork - Sausage, Medium',24,'2021-12-21','2022-04-14'),(74,'Cookies - Englishbay Wht',21,'2021-12-18','2022-07-22'),(75,'Table Cloth 72x144 White',13,'2022-01-23','2022-08-14'),(76,'Muffin Hinge - 211n',13,'2021-12-30','2022-08-02'),(77,'Langers - Mango Nectar',10,'2021-12-22','2022-06-12'),(78,'Soup - Cream Of Broccoli, Dry',2,'2022-01-28','2022-11-28'),(79,'Wine - Trimbach Pinot Blanc',10,'2022-01-23','2022-09-17'),(80,'Mushroom - Enoki, Dry',8,'2022-01-28','2022-04-15'),(81,'Potatoes - Parissienne',19,'2021-12-14','2022-07-06'),(82,'Beer - Blue',24,'2022-02-14','2022-08-19'),(83,'Pastry - Plain Baked Croissant',5,'2022-01-19','2022-07-22'),(84,'Rabbit - Whole',23,'2021-12-30','2022-10-14'),(85,'Puree - Kiwi',18,'2021-12-30','2022-05-23'),(86,'Syrup - Monin - Granny Smith',18,'2022-01-13','2022-11-12'),(87,'Kale - Red',15,'2021-12-23','2022-08-13'),(88,'Soup - Campbells - Chicken Noodle',10,'2022-01-14','2022-04-23'),(89,'Cheese - Bocconcini',11,'2022-01-02','2022-06-25'),(90,'Edible Flower - Mixed',6,'2022-01-01','2022-10-22'),(91,'Temperature Recording Station',6,'2021-12-21','2022-06-24'),(92,'Muffin - Bran Ind Wrpd',6,'2021-12-31','2022-11-10'),(93,'Mountain Dew',3,'2021-12-28','2022-11-25'),(94,'Scallop - St. Jaques',16,'2022-01-05','2022-08-14'),(95,'Napkin - Beverage 1 Ply',5,'2022-01-24','2022-04-24'),(96,'Sausage - Breakfast',8,'2021-12-27','2022-05-24'),(97,'Hog / Sausage Casing - Pork',26,'2022-01-28','2022-07-02'),(98,'Eggroll',17,'2022-01-15','2022-07-22'),(99,'Salt And Pepper Mix - White',19,'2022-01-30','2022-05-16'),(100,'Coffee - Egg Nog Capuccino',12,'2022-02-10','2022-05-18');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_BEFORE_INSERT` BEFORE INSERT ON `product` FOR EACH ROW BEGIN
set new.p_id = (select max(p_id) from product)+1;
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
