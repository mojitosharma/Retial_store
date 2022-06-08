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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `s_id` int NOT NULL,
  `s_name` varchar(70) NOT NULL,
  `gst_no` bigint NOT NULL,
  `phone` varchar(45) NOT NULL,
  `add_id` int NOT NULL,
  `email` varchar(70) NOT NULL,
  PRIMARY KEY (`s_id`),
  KEY `add_id3_idx` (`add_id`),
  CONSTRAINT `add_id3` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Stanton In',6369684324,'706-155-5559',251,'ebinton0@intel.com'),(2,'Cummings-Conn',6666360747,'826-870-4617',252,'hfansy1@amazon.de'),(3,'Zulauf Group',9936171437,'653-538-8368',253,'dcownden2@rambler.ru'),(4,'McGlynn, Fahey and Hackett',6686281895,'263-614-2992',254,'llangstaff3@freewebs.com'),(5,'Kassulke-Rath',9397263581,'745-313-6736',255,'jdickie4@t-online.de'),(6,'MacGyver-Mitchell',5522162418,'127-366-2935',256,'nlyokhin5@sbwire.com'),(7,'O\'Kon, Brakus and Swaniawski',7705242867,'757-879-2058',257,'afessler6@angelfire.com'),(8,'Klein, Jerde and Rosenbaum',7259226485,'689-899-2168',258,'dsuscens7@yahoo.co.jp'),(9,'Lueilwitz-Schimmel',9078033777,'128-653-4320',259,'adressel8@unblog.fr'),(10,'Halvorson, Price and Kautzer',8154581970,'847-351-7975',260,'rradnedge9@vkontakte.ru'),(11,'Lang, Cartwright and Watsica',5788659612,'910-858-3266',261,'rmoizera@myspace.com'),(12,'Koss, Kertzmann and Huel',5539875655,'219-335-8518',262,'hexcellb@arstechnica.com'),(13,'Torphy-Skiles',2085584554,'865-614-1480',263,'ckentwellc@latimes.com'),(14,'Buckridge Inc',3277370301,'367-373-3559',264,'mrosettid@ebay.com'),(15,'Gaylord, Grady and Schroeder',9404305701,'569-139-1140',265,'kfrancee@pen.io'),(16,'Stark and Sons',9095753037,'794-783-7575',266,'clinnockf@over-blog.com'),(17,'Jakubowski, Ernser and Sipes',5707054493,'748-240-2396',267,'cgillespeyg@wix.com'),(18,'Rodriguez, Medhurst and Rowe',2089309490,'781-737-8794',268,'abaudinoth@cafepress.com'),(19,'McDermott-Kris',8898221471,'408-545-2053',269,'jjosipovitzi@hostgator.com'),(20,'Dickens, McCullough and Jenkins',1596731799,'362-970-5851',270,'asymonesj@dagondesign.com'),(21,'Abshire, Nitzsche and Gibson',7401431854,'105-142-2930',271,'acregink@hexun.com'),(22,'Fritsch-Haag',5844357661,'775-257-9781',272,'ccampsl@surveymonkey.com'),(23,'Schaefer, Bergstrom and Gulgowski',1044930934,'809-407-8810',273,'mtremberthm@mit.edu'),(24,'Corkery-Roob',8136258088,'713-499-1443',274,'nverrilln@moonfruit.com'),(25,'Hansen, Terry and Gottlieb',9848469500,'971-101-5944',275,'mduntono@princeton.edu'),(26,'Baumbach and Sons',9709516730,'502-543-9955',276,'sknottp@canalblog.com'),(27,'Donnelly-Cartwright',4426740832,'836-333-0999',277,'jkerinsq@drupal.org'),(28,'Haag-Von',5886193345,'690-861-4310',278,'gbenzingr@archive.org'),(29,'Grady-Kulas',2936333004,'463-873-8689',279,'sguilles@123-reg.co.uk'),(30,'Crist Inc',9112354706,'525-400-5104',280,'kstidstont@dion.ne.jp'),(31,'Daniel Inc',4256945081,'433-934-2648',281,'mcordleu@gmpg.org'),(32,'Beahan, Willms and Hodkiewicz',6892700634,'582-951-0787',282,'cfarnv@ft.com'),(33,'Wunsch LLC',7238583606,'515-536-9841',283,'aolliganw@cpanel.net'),(34,'Wisozk LLC',6276175572,'375-177-8555',284,'dblumsonx@ted.com'),(35,'Nader, Shields and Hayes',6916449906,'540-325-1156',285,'lmarquesey@mozilla.org'),(36,'Kunde LLC',8564803927,'907-621-6733',286,'whavillez@hatena.ne.jp'),(37,'Willms-Wuckert',1864087157,'686-945-5446',287,'kbravery10@wikispaces.com'),(38,'Boyer and Sons',5917329620,'640-795-2455',288,'jgores11@blogspot.com'),(39,'Sporer, Cruickshank and Jones',5522463308,'388-179-3940',289,'wgreenard12@slate.com'),(40,'Orn-Moore',8596325553,'893-351-8389',290,'jkelleher13@github.com'),(41,'Hickle-Waelchi',1569994103,'753-243-3482',291,'cconnow14@discuz.net'),(42,'DuBuque, Lowe and Wiegand',9202039858,'779-729-2743',292,'glamberton15@alibaba.com'),(43,'Ruecker Inc',5782321810,'485-721-9050',293,'amcconaghy16@reddit.com'),(44,'Blanda-Renner',5393645366,'251-994-8573',294,'lpattison17@ifeng.com'),(45,'Anderson, Parker and Rohan',5069670094,'453-226-1836',295,'rmaulkin18@amazon.com'),(46,'Padberg Group',2395519483,'286-571-6989',296,'rpersich19@behance.net'),(47,'Carter, Conroy and Collier',1318273072,'367-163-7144',297,'bhighwood1a@mapquest.com'),(48,'Swaniawski, Wisozk and Macejkovic',8361207634,'634-341-1271',298,'abarley1b@sun.com'),(49,'Marvin, Strosin and Paucek',1706393824,'477-635-6167',299,'wmcnelly1c@alexa.com'),(50,'Purdy, Towne and Kilback',2812026145,'464-369-4174',300,'icridlon1d@google.nl');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `supplier_BEFORE_INSERT` BEFORE INSERT ON `supplier` FOR EACH ROW BEGIN
set new.s_id = (select max(s_id) from supplier)+1;
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

-- Dump completed on 2022-04-27 23:53:37
