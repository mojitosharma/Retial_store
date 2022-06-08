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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `add_id` int NOT NULL,
  `main_line` varchar(60) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `postal_code` int NOT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'995 Northview Hill','Tulsa','Oklahoma','United States',74108,'The Noodle Fox'),(2,'4018 Green Plaza','Memphis','Tennessee','United States',38131,''),(3,'66 Merry Trail','Merrifield','Virginia','United States',22119,''),(4,'47095 Melby Road','Denver','Colorado','United States',80217,''),(5,'376 Tennessee Circle','Philadelphia','Pennsylvania','United States',19104,''),(6,'0551 Briar Crest Junction','Jamaica','New York','United States',11436,''),(7,'9647 Muir Drive','Newark','New Jersey','United States',7104,''),(8,'767 Saint Paul Point','Tacoma','Washington','United States',98424,''),(9,'996 Green Ridge Terrace','Palo Alto','California','United States',94302,''),(10,'59 Onsgard Lane','Las Vegas','Nevada','United States',89130,''),(11,'21 Gerald Street','Saint Petersburg','Florida','United States',33705,''),(12,'5802 Loomis Parkway','Albuquerque','New Mexico','United States',87140,''),(13,'6714 Glendale Junction','Danbury','Connecticut','United States',6816,''),(14,'69 Becker Pass','New York City','New York','United States',10099,''),(15,'8 Kenwood Street','Dallas','Texas','United States',75246,''),(16,'93 David Avenue','Saint Louis','Missouri','United States',63167,''),(17,'4 Redwing Court','Dallas','Texas','United States',75277,''),(18,'3 Gulseth Court','San Antonio','Texas','United States',78235,''),(19,'45 Vera Lane','Topeka','Kansas','United States',66622,''),(20,'5 Luster Center','Colorado Springs','Colorado','United States',80910,''),(21,'3 Carioca Street','Washington','District of Columbia','United States',20397,''),(22,'519 Mosinee Crossing','Trenton','New Jersey','United States',8608,'The Moroccan Chef'),(23,'0073 Thompson Trail','Temple','Texas','United States',76505,''),(24,'10156 Monterey Parkway','Wilmington','Delaware','United States',19805,''),(25,'8102 Packers Parkway','San Bernardino','California','United States',92410,''),(26,'182 Barnett Parkway','Fort Wayne','Indiana','United States',46852,''),(27,'69 Fisk Park','Stamford','Connecticut','United States',6922,''),(28,'23810 Grover Court','Detroit','Michigan','United States',48211,''),(29,'12523 Sugar Street','Wichita Falls','Texas','United States',76305,''),(30,'86 Welch Alley','Columbus','Ohio','United States',43210,''),(31,'234 Farmco Avenue','Tacoma','Washington','United States',98447,''),(32,'0280 Hoepker Alley','Jackson','Mississippi','United States',39296,''),(33,'256 Vera Crossing','San Antonio','Texas','United States',78265,''),(34,'75484 Autumn Leaf Crossing','Nashville','Tennessee','United States',37245,''),(35,'200 Arkansas Junction','Winter Haven','Florida','United States',33884,''),(36,'24605 Buell Alley','El Paso','Texas','United States',88546,''),(37,'75759 Tennyson Circle','Birmingham','Alabama','United States',35225,''),(38,'75 Banding Court','Gulfport','Mississippi','United States',39505,''),(39,'40608 Village Pass','Reno','Nevada','United States',89519,'The Winter Victory'),(40,'799 East Plaza','Chicago','Illinois','United States',60681,''),(41,'783 Ryan Place','New Brunswick','New Jersey','United States',8922,''),(42,'24103 Tomscot Street','Springfield','Ohio','United States',45505,''),(43,'2 Moulton Terrace','Milwaukee','Wisconsin','United States',53225,''),(44,'5 Wayridge Place','Jamaica','New York','United States',11436,''),(45,'25239 2nd Circle','Chicago','Illinois','United States',60657,''),(46,'4 Northridge Terrace','Saint Louis','Missouri','United States',63180,''),(47,'4140 Cottonwood Parkway','Bradenton','Florida','United States',34205,''),(48,'4 Kennedy Trail','Columbus','Ohio','United States',43284,''),(49,'003 Luster Plaza','Lansing','Michigan','United States',48930,''),(50,'344 Killdeer Trail','Tucson','Arizona','United States',85720,''),(51,'97730 Sloan Place','South Bend','Indiana','United States',46634,''),(52,'557 Oakridge Road','Decatur','Illinois','United States',62525,''),(53,'949 Quincy Plaza','Portland','Oregon','United States',97240,''),(54,'145 Cambridge Drive','Tacoma','Washington','United States',98464,''),(55,'03 Valley Edge Hill','Austin','Texas','United States',78783,''),(56,'39 Anderson Park','Milwaukee','Wisconsin','United States',53220,''),(57,'214 Dayton Lane','Suffolk','Virginia','United States',23436,''),(58,'0 Heffernan Pass','Milwaukee','Wisconsin','United States',53210,''),(59,'9 2nd Road','Trenton','New Jersey','United States',8619,''),(60,'59502 Glendale Alley','Atlanta','Georgia','United States',31165,''),(61,'443 Oakridge Place','Dayton','Ohio','United States',45408,''),(62,'308 8th Plaza','Portland','Oregon','United States',97271,''),(63,'83979 Ridgeview Hill','San Diego','California','United States',92115,''),(64,'597 Mallard Terrace','Norfolk','Virginia','United States',23514,''),(65,'34 Logan Plaza','Los Angeles','California','United States',90055,''),(66,'80667 Trailsway Drive','Seattle','Washington','United States',98104,''),(67,'23 Dakota Plaza','Tampa','Florida','United States',33633,''),(68,'618 Glendale Plaza','Saint Louis','Missouri','United States',63121,''),(69,'420 School Way','Bakersfield','California','United States',93399,''),(70,'11118 Sage Terrace','Amarillo','Texas','United States',79176,''),(71,'7784 Michigan Point','Fresno','California','United States',93726,''),(72,'833 Harper Drive','Chico','California','United States',95973,''),(73,'529 Chinook Alley','Battle Creek','Michigan','United States',49018,''),(74,'6 Eliot Street','Birmingham','Alabama','United States',35290,''),(75,'983 Cordelia Road','Las Vegas','Nevada','United States',89145,''),(76,'71 Forster Hill','Jackson','Mississippi','United States',39282,''),(77,'19943 Main Point','Lexington','Kentucky','United States',40581,''),(78,'8511 Melvin Point','Tucson','Arizona','United States',85748,'near Catch'),(79,'35 Haas Terrace','Cincinnati','Ohio','United States',45213,''),(80,'07 Macpherson Drive','Cleveland','Ohio','United States',44197,''),(81,'13 Schiller Pass','Baton Rouge','Louisiana','United States',70826,''),(82,'038 International Hill','Pasadena','California','United States',91109,''),(83,'74 Loftsgordon Court','Atlanta','Georgia','United States',30340,''),(84,'54165 Crest Line Terrace','Jersey City','New Jersey','United States',7310,''),(85,'4 Lakeland Crossing','Shreveport','Louisiana','United States',71137,''),(86,'0 Esch Junction','Tampa','Florida','United States',33661,''),(87,'26 Green Ridge Center','Corpus Christi','Texas','United States',78470,''),(88,'223 Stang Park','Fairbanks','Alaska','United States',99790,''),(89,'68 Esch Trail','New Bedford','Massachusetts','United States',2745,''),(90,'70459 Charing Cross Point','Saint Louis','Missouri','United States',63180,''),(91,'53955 Gateway Place','Winston Salem','North Carolina','United States',27157,''),(92,'82251 Service Place','San Francisco','California','United States',94105,''),(93,'9814 Florence Trail','Herndon','Virginia','United States',22070,''),(94,'3 Paget Lane','Jamaica','New York','United States',11480,''),(95,'0 Oneill Place','Kansas City','Missouri','United States',64153,''),(96,'379 Pleasure Parkway','Dayton','Ohio','United States',45419,''),(97,'6108 Kensington Pass','Abilene','Texas','United States',79605,''),(98,'25069 Fair Oaks Trail','Scottsdale','Arizona','United States',85255,''),(99,'8 Luster Parkway','San Bernardino','California','United States',92410,''),(100,'5562 Muir Way','Akron','Ohio','United States',44393,''),(101,'94519 Carberry Crossing','El Paso','Texas','United States',79923,''),(102,'84 Truax Park','Fresno','California','United States',93726,''),(103,'39838 Hanson Crossing','Manchester','New Hampshire','United States',3105,''),(104,'8 Upham Road','Saint Louis','Missouri','United States',63143,''),(105,'495 Gulseth Place','Brea','California','United States',92822,''),(106,'61874 Katie Trail','Mobile','Alabama','United States',36670,''),(107,'38 Coleman Alley','Los Angeles','California','United States',90050,''),(108,'35196 Pearson Circle','Amarillo','Texas','United States',79176,''),(109,'4679 Cardinal Trail','Chicago','Illinois','United States',60697,''),(110,'47410 Thompson Park','Wilmington','Delaware','United States',19805,''),(111,'85 Cascade Circle','Fort Lauderdale','Florida','United States',33355,''),(112,'80 Independence Street','Largo','Florida','United States',33777,''),(113,'32 Porter Circle','Fort Wayne','Indiana','United States',46862,''),(114,'60 International Parkway','Wichita','Kansas','United States',67260,''),(115,'36403 Claremont Place','Greensboro','North Carolina','United States',27455,''),(116,'927 Miller Point','New York City','New York','United States',10249,''),(117,'2 Stone Corner Place','Des Moines','Iowa','United States',50393,''),(118,'0389 Walton Court','Birmingham','Alabama','United States',35263,''),(119,'3185 Crownhardt Avenue','Tulsa','Oklahoma','United States',74149,''),(120,'23 Forest Terrace','Rochester','New York','United States',14646,''),(121,'0129 Lawn Way','Fort Worth','Texas','United States',76105,''),(122,'888 Westend Place','Houston','Texas','United States',77260,''),(123,'38 Westport Street','San Francisco','California','United States',94137,''),(124,'5 Blackbird Center','Shawnee Mission','Kansas','United States',66225,''),(125,'76143 3rd Plaza','Stamford','Connecticut','United States',6912,''),(126,'9461 Hooker Lane','Daytona Beach','Florida','United States',32123,''),(127,'07 Manley Center','Sacramento','California','United States',94263,''),(128,'69 Glacier Hill Point','San Francisco','California','United States',94121,''),(129,'39 Comanche Court','Roanoke','Virginia','United States',24040,''),(130,'47275 Dakota Crossing','Peoria','Illinois','United States',61640,''),(131,'2119 Talisman Pass','Fort Pierce','Florida','United States',34949,''),(132,'84 Dennis Court','Washington','District of Columbia','United States',20420,''),(133,'645 Talisman Park','Louisville','Kentucky','United States',40250,''),(134,'4940 Kipling Circle','Saint Louis','Missouri','United States',63143,''),(135,'513 Vera Center','New Castle','Pennsylvania','United States',16107,''),(136,'01443 Mariners Cove Park','Springfield','Ohio','United States',45505,''),(137,'7 Daystar Point','Cheyenne','Wyoming','United States',82007,''),(138,'0532 Arapahoe Alley','Mobile','Alabama','United States',36628,''),(139,'64 Crowley Plaza','Saint Louis','Missouri','United States',63110,''),(140,'1 Laurel Circle','Anchorage','Alaska','United States',99512,''),(141,'6 Harper Circle','San Francisco','California','United States',94164,''),(142,'2192 Sloan Place','Omaha','Nebraska','United States',68117,''),(143,'7830 Manufacturers Road','Atlanta','Georgia','United States',31119,''),(144,'0 Cardinal Parkway','Los Angeles','California','United States',90020,''),(145,'89 Maple Wood Trail','Hialeah','Florida','United States',33013,''),(146,'95 Warrior Junction','Austin','Texas','United States',78778,''),(147,'1318 2nd Trail','Knoxville','Tennessee','United States',37939,'Little Persia'),(148,'5964 Old Gate Terrace','San Mateo','California','United States',94405,''),(149,'3985 Moland Street','Santa Ana','California','United States',92705,''),(150,'6 Calypso Alley','Virginia Beach','Virginia','United States',23454,''),(151,'805 Crest Line Circle','Houston','Texas','United States',77020,''),(152,'15 Lien Crossing','North Hollywood','California','United States',91606,''),(153,'80 Lerdahl Crossing','Los Angeles','California','United States',90045,''),(154,'4 Badeau Park','Roanoke','Virginia','United States',24024,''),(155,'62077 Karstens Terrace','Tallahassee','Florida','United States',32399,''),(156,'1897 Superior Road','Portsmouth','Virginia','United States',23705,''),(157,'8 Ridge Oak Point','Norfolk','Virginia','United States',23509,''),(158,'8 Carberry Place','Baltimore','Maryland','United States',21275,''),(159,'1506 Monument Way','Roanoke','Virginia','United States',24034,''),(160,'790 Orin Place','Wichita Falls','Texas','United States',76305,'beside Elements'),(161,'24 Logan Place','Naples','Florida','United States',33963,''),(162,'80 Charing Cross Pass','El Paso','Texas','United States',79905,''),(163,'23536 Oxford Hill','Reno','Nevada','United States',89505,''),(164,'13 Jenifer Junction','Indianapolis','Indiana','United States',46266,''),(165,'6 Lillian Pass','New York City','New York','United States',10029,''),(166,'1501 Corben Hill','Santa Barbara','California','United States',93111,''),(167,'5 Center Road','Minneapolis','Minnesota','United States',55423,''),(168,'967 Tennessee Lane','Milwaukee','Wisconsin','United States',53263,''),(169,'522 Oneill Trail','Fresno','California','United States',93704,''),(170,'7364 Quincy Park','Saint Louis','Missouri','United States',63116,''),(171,'56517 American Ash Street','Henderson','Nevada','United States',89074,''),(172,'3 Fallview Alley','Anaheim','California','United States',92812,''),(173,'3815 Meadow Valley Point','Washington','District of Columbia','United States',20409,''),(174,'2 Ridgeview Center','Rockville','Maryland','United States',20851,''),(175,'82466 Dahle Junction','Bryan','Texas','United States',77806,''),(176,'273 Gerald Street','Erie','Pennsylvania','United States',16510,''),(177,'4 Mallory Point','Richmond','Virginia','United States',23228,''),(178,'57674 Delaware Point','Birmingham','Alabama','United States',35242,''),(179,'1885 Blackbird Trail','Charlotte','North Carolina','United States',28289,''),(180,'6673 Garrison Place','Buffalo','New York','United States',14210,''),(181,'205 Kensington Drive','San Jose','California','United States',95160,''),(182,'06 Morningstar Street','Chicago','Illinois','United States',60604,''),(183,'9 Hermina Way','Inglewood','California','United States',90398,''),(184,'6 Continental Circle','Tulsa','Oklahoma','United States',74108,''),(185,'099 Golden Leaf Crossing','Topeka','Kansas','United States',66667,''),(186,'86677 Killdeer Court','Eugene','Oregon','United States',97405,''),(187,'941 Monterey Point','Winston Salem','North Carolina','United States',27116,''),(188,'3 Oriole Pass','Cincinnati','Ohio','United States',45208,''),(189,'419 Bowman Court','Cumming','Georgia','United States',30130,''),(190,'2300 Melrose Street','Santa Rosa','California','United States',95405,''),(191,'651 Pennsylvania Trail','Milwaukee','Wisconsin','United States',53263,''),(192,'9 Linden Street','Grand Junction','Colorado','United States',81505,''),(193,'4 Ruskin Drive','Pasadena','California','United States',91131,''),(194,'63230 Boyd Center','Davenport','Iowa','United States',52804,''),(195,'368 Westerfield Alley','Richmond','Virginia','United States',23208,''),(196,'07123 Rowland Drive','Youngstown','Ohio','United States',44511,'The Malt Heart'),(197,'923 Chinook Hill','Canton','Ohio','United States',44760,''),(198,'269 Bunting Lane','Lexington','Kentucky','United States',40505,''),(199,'5 Texas Avenue','Youngstown','Ohio','United States',44511,''),(200,'3452 Vermont Alley','Jacksonville','Florida','United States',32236,''),(201,'32121 Division Alley','San Jose','California','United States',95160,''),(202,'88886 Hooker Parkway','Columbia','Missouri','United States',65211,''),(203,'40 Duke Center','Pueblo','Colorado','United States',81010,''),(204,'430 Dryden Terrace','Springfield','Massachusetts','United States',1129,''),(205,'29608 Claremont Crossing','Orlando','Florida','United States',32808,''),(206,'60363 Montana Court','Charlotte','North Carolina','United States',28242,''),(207,'1 Russell Parkway','Sacramento','California','United States',94273,''),(208,'94608 Chinook Point','Washington','District of Columbia','United States',20442,''),(209,'5396 Heffernan Way','Fort Lauderdale','Florida','United States',33330,''),(210,'41 Karstens Avenue','Oklahoma City','Oklahoma','United States',73129,'Acapella bar'),(211,'1 Kropf Trail','Decatur','Georgia','United States',30033,''),(212,'85883 Twin Pines Park','Youngstown','Ohio','United States',44505,''),(213,'55575 Grasskamp Hill','Tacoma','Washington','United States',98481,''),(214,'72194 Old Gate Place','Flint','Michigan','United States',48550,''),(215,'14919 Gateway Drive','Toledo','Ohio','United States',43635,''),(216,'75 Loftsgordon Street','Charleston','South Carolina','United States',29411,''),(217,'9403 Atwood Hill','Atlanta','Georgia','United States',31190,''),(218,'65 Schmedeman Place','Richmond','Virginia','United States',23277,''),(219,'33262 Schmedeman Place','New Castle','Pennsylvania','United States',16107,''),(220,'23 Derek Place','Fort Wayne','Indiana','United States',46805,''),(221,'9858 Dryden Plaza','Pueblo','Colorado','United States',81015,''),(222,'8997 Farmco Drive','El Paso','Texas','United States',79968,''),(223,'92298 Scofield Circle','Juneau','Alaska','United States',99812,''),(224,'5915 Florence Center','Aurora','Illinois','United States',60505,''),(225,'1 Schlimgen Point','Amarillo','Texas','United States',79116,''),(226,'679 Laurel Terrace','Knoxville','Tennessee','United States',37924,''),(227,'8 Vernon Road','Phoenix','Arizona','United States',85062,''),(228,'829 Lakeland Parkway','Alexandria','Virginia','United States',22309,''),(229,'52799 Hermina Road','Tallahassee','Florida','United States',32314,''),(230,'04 Rigney Alley','Norman','Oklahoma','United States',73071,''),(231,'5 Tomscot Trail','Fresno','California','United States',93715,''),(232,'040 Algoma Park','Albany','New York','United States',12237,''),(233,'0325 Brown Hill','Youngstown','Ohio','United States',44505,''),(234,'0 Anthes Drive','Fort Pierce','Florida','United States',34981,''),(235,'0 Spenser Avenue','Kansas City','Missouri','United States',64199,''),(236,'99 Arizona Center','Delray Beach','Florida','United States',33448,''),(237,'59 Aberg Way','Portland','Oregon','United States',97255,''),(238,'245 Jackson Point','Phoenix','Arizona','United States',85072,''),(239,'1513 Merchant Junction','New York City','New York','United States',10105,''),(240,'17 Hollow Ridge Junction','Vero Beach','Florida','United States',32969,''),(241,'685 5th Court','Orlando','Florida','United States',32803,''),(242,'51340 Harbort Road','El Paso','Texas','United States',88569,''),(243,'78074 Harper Street','Greeley','Colorado','United States',80638,''),(244,'03766 Eagan Place','Little Rock','Arkansas','United States',72222,''),(245,'3081 Oak Valley Center','Houston','Texas','United States',77276,''),(246,'56 Rutledge Drive','San Jose','California','United States',95194,''),(247,'39505 Bartelt Hill','Nashville','Tennessee','United States',37210,''),(248,'63 Bashford Junction','Inglewood','California','United States',90310,''),(249,'88513 Pepper Wood Point','Phoenix','Arizona','United States',85025,''),(250,'17442 Golf View Point','Elizabeth','New Jersey','United States',7208,''),(251,'8 Luster Center','Colorado Springs','Colorado','United States',99271,'  '),(252,'000 Garrison Point','Springfield','Massachusetts','United States',1105,''),(253,'796 Lakewood Street','Tucson','Arizona','United States',85720,''),(254,'45799 Messerschmidt Place','Shreveport','Louisiana','United States',71137,''),(255,'43 Springs Trail','Tucson','Arizona','United States',85725,''),(256,'8896 Jana Junction','Miami','Florida','United States',33233,''),(257,'2 Coolidge Circle','Baton Rouge','Louisiana','United States',70836,'opposite to The Nomad'),(258,'19450 Clemons Junction','Spokane','Washington','United States',99215,''),(259,'83708 Gale Parkway','Humble','Texas','United States',77346,''),(260,'779 Superior Hill','Columbus','Ohio','United States',43204,''),(261,'22888 Commercial Point','Austin','Texas','United States',78721,''),(262,'46502 Bellgrove Hill','Washington','District of Columbia','United States',20073,''),(263,'1736 Calypso Hill','Lakeland','Florida','United States',33805,''),(264,'30779 Jay Place','Shawnee Mission','Kansas','United States',66210,''),(265,'88 Fair Oaks Junction','Petaluma','California','United States',94975,''),(266,'295 Birchwood Circle','San Jose','California','United States',95155,''),(267,'03422 Briar Crest Hill','San Antonio','Texas','United States',78240,''),(268,'8958 Delaware Plaza','Seminole','Florida','United States',34642,''),(269,'2 Pearson Drive','Waltham','Massachusetts','United States',2453,''),(270,'9552 Meadow Valley Street','Mobile','Alabama','United States',36689,''),(271,'4 Corscot Lane','Columbus','Ohio','United States',43240,''),(272,'75 Thackeray Pass','Miami','Florida','United States',33153,''),(273,'67433 Namekagon Way','Seminole','Florida','United States',34642,''),(274,'6075 Gulseth Drive','San Antonio','Texas','United States',78240,''),(275,'03055 Kropf Court','Fort Worth','Texas','United States',76192,''),(276,'37305 Village Terrace','Arlington','Virginia','United States',22212,''),(277,'83 Caliangt Crossing','Boston','Massachusetts','United States',2114,''),(278,'66578 Golf View Circle','Palm Bay','Florida','United States',32909,''),(279,'294 Mcguire Place','Southfield','Michigan','United States',48076,''),(280,'140 Tennessee Alley','Lincoln','Nebraska','United States',68531,''),(281,'284 Pond Avenue','Montgomery','Alabama','United States',36195,''),(282,'5964 Lerdahl Court','Roanoke','Virginia','United States',24034,''),(283,'54 Heffernan Pass','Canton','Ohio','United States',44705,''),(284,'18856 Butterfield Plaza','Anchorage','Alaska','United States',99517,''),(285,'548 Vidon Court','Trenton','New Jersey','United States',8608,''),(286,'81 Sycamore Avenue','Spokane','Washington','United States',99252,''),(287,'47814 Evergreen Drive','Atlanta','Georgia','United States',30328,''),(288,'118 Farwell Court','Alexandria','Virginia','United States',22333,''),(289,'44064 Vera Pass','Washington','District of Columbia','United States',20041,''),(290,'47 Ridgeview Trail','Naples','Florida','United States',34108,''),(291,'089 Roxbury Park','New York City','New York','United States',10292,''),(292,'335 Hallows Point','Delray Beach','Florida','United States',33448,''),(293,'18532 Hintze Avenue','Kissimmee','Florida','United States',34745,''),(294,'71928 Crowley Lane','Denton','Texas','United States',76210,''),(295,'2 Crest Line Terrace','San Jose','California','United States',95150,''),(296,'67 Vera Park','Corpus Christi','Texas','United States',78465,'The Chopping Vine'),(297,'559 Trailsway Way','Arlington','Texas','United States',76016,''),(298,'4633 Waywood Circle','Gaithersburg','Maryland','United States',20883,''),(299,'805 Delaware Avenue','Seattle','Washington','United States',98185,''),(300,'15541 Fulton Way','Dallas','Texas','United States',75241,'');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `address_BEFORE_INSERT` BEFORE INSERT ON `address` FOR EACH ROW BEGIN
set new.add_id = (select max(add_id) from address)+1;
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
