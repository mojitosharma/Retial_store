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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `e_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email_id` varchar(70) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `date_of_joining` date NOT NULL,
  `add_id` int NOT NULL,
  PRIMARY KEY (`e_id`),
  KEY `add_id_idx` (`add_id`),
  CONSTRAINT `add_id` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gender` CHECK ((`gender` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Artie','Maurits','Gehrts','M','1958-12-04','mgehrts0@intel.com','350-723-2850',1289.03,'2021-08-22',1),(2,'Olwen','Maura','Stonier','F','1973-06-27','mstonier1@cdc.gov','135-567-6896',1790.00,'2021-03-01',2),(3,'Elset','Sheryl','Maffin','F','1979-12-23','smaffin2@usatoday.com','575-931-1878',3353.84,'2015-08-16',3),(4,'Lorry','Papageno','Weekley','M','1972-07-13','pweekley3@miibeian.gov.cn','315-536-3946',2054.36,'2010-08-15',4),(5,'Cecelia','Lorinda','Folli','F','1998-04-22','lfolli4@ow.ly','892-291-5476',3026.51,'2016-08-18',5),(6,'Galina','Kathleen','McMeekan','F','2000-03-13','kmcmeekan5@delicious.com','202-108-1440',3982.08,'2021-03-01',6),(7,'Glenda','Claribel','Crutcher','F','1956-01-22','ccrutcher6@acquirethisname.com','986-442-1117',2749.33,'2013-04-18',7),(8,'Ramsey','Orville','Noore','M','1981-06-23','onoore7@cnet.com','432-518-6493',2479.19,'2019-03-10',8),(9,'Corie','Stephie','Durnall','F','1972-11-01','sdurnall8@fda.gov','376-196-6449',3071.62,'2019-11-25',9),(10,'Tomi','Sylvia','Hanscomb','F','1991-11-30','shanscomb9@tinyurl.com','376-730-7639',2799.11,'2018-04-05',10),(11,'Joyann','Sari','Shorter','F','1974-11-19','sshortera@walmart.com','792-345-0940',1664.43,'2010-06-17',11),(12,'Shelby','Balduin','Horder','M','1967-12-01','bhorderb@un.org','471-790-4016',2130.90,'2015-03-25',12),(13,'Zea','Brooke','Milnes','F','1980-05-12','bmilnesc@instagram.com','309-361-0803',3359.49,'2020-08-11',13),(14,'Emory','Ty','Venables','M','1972-08-31','tvenablesd@hud.gov','261-257-4084',1622.77,'2015-10-28',14),(15,'Darell','Ketty','Stenton','F','1977-09-02','kstentone@eepurl.com','679-711-9869',1698.74,'2020-05-06',15),(16,'Walt','Benedict','Cracknall','M','2000-11-04','bcracknallf@arizona.edu','847-863-4463',4793.93,'2020-01-26',16),(17,'Bird','Kirstin','Otton','F','1953-04-27','kottong@usatoday.com','247-167-0737',2828.52,'2021-03-13',17),(18,'Vivian','Almire','Shingles','F','1957-04-06','ashinglesh@instagram.com','666-516-0772',2695.07,'2021-07-05',18),(19,'Aldous','Gan','Titcombe','M','2000-02-05','gtitcombei@go.com','257-217-1296',2419.74,'2012-02-05',19),(20,'Kai','Madelina','O\'Downe','F','1951-12-26','modownej@chron.com','684-188-8012',1945.97,'2019-04-17',20),(21,'Kathie','Cory','Shird','F','1966-06-24','cshirdk@wix.com','224-414-9328',2655.35,'2011-06-11',21),(22,'Arri','Gayler','Waldron','M','1989-08-11','gwaldronl@t-online.de','149-248-6350',1984.06,'2015-06-14',22),(23,'Bonnibelle','Tasia','Osmant','F','1968-07-17','tosmantm@virginia.edu','930-760-3211',1891.48,'2015-06-11',23),(24,'Abraham','Wiatt','Dermot','M','1982-03-06','wdermotn@wiley.com','831-598-3844',4981.64,'2016-11-01',24),(25,'Frank','Clayson','Shackleton','M','1971-03-15','cshackletono@booking.com','434-811-3749',4032.17,'2018-12-28',25),(26,'Margaux','Evvie','Cristoforetti','F','2000-05-13','ecristoforettip@tinypic.com','511-103-2265',4558.02,'2010-09-07',26),(27,'Miranda','Danita','Kliner','F','1974-09-01','dklinerq@weebly.com','537-439-0915',4563.59,'2010-08-07',27),(28,'Ernst','Robers','Bogies','M','1997-11-09','rbogiesr@ucoz.com','635-336-0371',1389.97,'2021-07-23',28),(29,'Josephine','Evania','Musicka','F','1975-04-20','emusickas@businesswire.com','757-163-3403',4503.26,'2018-05-20',29),(30,'Ailina','Tine','Tosh','F','1990-01-16','ttosht@indiatimes.com','894-563-9012',3971.27,'2019-07-17',30),(31,'Lowell','Chet','Batchan','M','1971-12-07','cbatchanu@theguardian.com','362-376-6432',4520.99,'2012-11-07',31),(32,'Ashlee','Crissy','Armfield','F','1996-05-19','carmfieldv@digg.com','899-444-1434',4862.56,'2010-09-23',32),(33,'Itch','Devlen','Krabbe','M','1960-03-17','dkrabbew@homestead.com','739-822-8154',2880.09,'2018-05-07',33),(34,'Garv','Yvon','Scarrott','M','1956-05-02','yscarrottx@google.com.hk','161-111-6649',3558.72,'2019-07-10',34),(35,'Doralynne','Timmy','Strover','F','1971-04-20','tstrovery@multiply.com','727-412-2685',1104.95,'2016-09-06',35),(36,'Kent','Neal','Vittel','M','1999-01-03','nvittelz@typepad.com','895-899-9566',1580.60,'2011-03-29',36),(37,'Mord','Shannan','Farlam','M','1993-01-13','sfarlam10@hatena.ne.jp','306-345-0625',1135.69,'2010-06-12',37),(38,'Abigale','Tybie','Izakof','F','1995-01-26','tizakof11@miitbeian.gov.cn','941-753-9691',1545.23,'2016-04-10',38),(39,'Fidela','Jenna','Zupone','F','1969-11-03','jzupone12@prnewswire.com','608-658-6429',3953.12,'2011-02-24',39),(40,'Ebenezer','Markus','Bosden','M','2000-10-17','mbosden13@geocities.jp','575-474-9221',771.67,'2017-01-14',40),(41,'Glennie','Eartha','Carlon','F','1970-09-20','ecarlon14@sphinn.com','594-581-7490',1362.55,'2017-03-06',41),(42,'Teador','Baxter','Gramer','M','1981-02-23','bgramer15@independent.co.uk','695-286-3237',1838.74,'2014-03-23',42),(43,'May','Lyndell','Allgood','F','1975-11-17','lallgood16@tumblr.com','546-188-4297',3054.38,'2015-12-21',43),(44,'Tommie','Millard','Pevie','M','1970-03-19','mpevie17@fastcompany.com','650-417-6858',4309.46,'2018-08-11',44),(45,'Willette','Saraann','Ludlom','F','1978-04-01','sludlom18@paginegialle.it','937-432-7940',3067.88,'2017-11-02',45),(46,'Devin','Eb','Kivits','M','1947-08-03','ekivits19@sakura.ne.jp','602-889-7432',3010.64,'2011-09-22',46),(47,'Alicia','Darice','Vannoort','F','1957-08-22','dvannoort1a@dedecms.com','640-987-9039',1372.54,'2016-07-01',47),(48,'Evaleen','Editha','Freckelton','F','1990-05-04','efreckelton1b@yahoo.com','229-987-9165',1220.19,'2021-03-21',48),(49,'Ellynn','Anett','Capehorn','F','1953-05-26','acapehorn1c@ted.com','386-138-5636',2417.21,'2015-12-14',49),(50,'Goldie','Elana','Upcraft','F','1974-09-26','eupcraft1d@timesonline.co.uk','910-938-7061',2957.31,'2013-10-24',50);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `employee_BEFORE_INSERT` BEFORE INSERT ON `employee` FOR EACH ROW BEGIN
set new.e_id = (select max(e_id) from employee)+1;
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

-- Dump completed on 2022-04-27 23:53:38
