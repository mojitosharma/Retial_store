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
-- Table structure for table `payment_credentials`
--

DROP TABLE IF EXISTS `payment_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_credentials` (
  `paymentc_id` int NOT NULL,
  `card_no` bigint NOT NULL,
  `name_on_card` varchar(100) NOT NULL,
  `cvv` int NOT NULL,
  `expiry_date` date NOT NULL,
  PRIMARY KEY (`paymentc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_credentials`
--

LOCK TABLES `payment_credentials` WRITE;
/*!40000 ALTER TABLE `payment_credentials` DISABLE KEYS */;
INSERT INTO `payment_credentials` VALUES (1,5048377486159910,'Jessee Heall Edy',473,'2023-04-13'),(2,5108752860969470,'Caresa Maryrose Snelson',719,'2022-10-05'),(3,5108750434170820,'Cynthy Anabelle Craighead',943,'2022-06-14'),(4,5108752598748250,'Annnora Ealasaid Haw',660,'2023-11-18'),(5,5108756247296850,'Curry Morty Marchand',167,'2023-04-14'),(6,5108751496761380,'Ferguson Humphrey Fullun',524,'2023-08-23'),(7,5048375443457220,'Ferd Yvon Schwandermann',239,'2023-07-26'),(8,5048372690043130,'Melva Ciel Danelutti',349,'2023-08-02'),(9,5108754488618370,'Raffarty Trey Larvin',920,'2023-04-08'),(10,5108756184337240,'Richard Howie Draaisma',653,'2023-09-26'),(11,5108753165687590,'Elysha Hulda Cressey',608,'2023-11-11'),(12,5108752870097510,'Laurens Simeon McWilliams',833,'2022-10-21'),(13,5108757029826730,'Federico Gare Gounel',711,'2024-01-17'),(14,5108757382504570,'Ajay Trude Ianittello',722,'2022-11-17'),(15,5048376865798410,'Evie Talia Renshaw',609,'2023-12-07'),(16,5108756492756040,'Randell Payton Morrish',453,'2022-05-16'),(17,5108751232375920,'Ulrika Rachel Botcherby',259,'2023-02-25'),(18,5108750278785270,'Robinett Milena Elms',578,'2022-10-25'),(19,5108753281242940,'Clari Wrennie Trowler',459,'2023-05-12'),(20,5108752153562070,'Demetris Gerrie Creeghan',754,'2023-09-01'),(21,5108756385031860,'Mathe Chas Siccombe',574,'2023-12-09'),(22,5108758826075380,'Shanon Minni Skaife d\'Ingerthorpe',934,'2023-09-12'),(23,5048372779683300,'Ange Lemmy Brocket',384,'2022-09-02'),(24,5048370582337700,'Timmy Violetta Siaskowski',702,'2023-06-15'),(25,5108755663021430,'Wallie Clarinda De Cruz',396,'2022-08-07'),(26,5048374874784470,'Milton Dorian Ucchino',731,'2022-05-05'),(27,5048370961149100,'Dorree Geri Worts',465,'2023-06-07'),(28,5048377103610550,'Leonanie Issy Djorvic',789,'2024-01-31'),(29,5048371066442720,'Elspeth Annelise Scholar',245,'2023-07-03'),(30,5108756597997090,'Gawen Tailor Noriega',866,'2022-07-09'),(31,5108758843599470,'Pierette Leanora Uvedale',964,'2023-03-15'),(32,5048379077312970,'Georgine Rosalynd Robins',252,'2024-02-16'),(33,5048374066020400,'Claiborn Ty Leys',499,'2022-05-08'),(34,5048377570497060,'Vanya Arte Danjoie',545,'2022-08-22'),(35,5108751009096010,'Iorgos Grace Freebury',972,'2022-07-27'),(36,5108754935424960,'Alistair Dannie Francke',423,'2023-01-27'),(37,5048378270158610,'Vinson Job Giacobelli',230,'2022-10-27'),(38,5048375764626730,'Gail Lauryn Rands',537,'2023-07-27'),(39,5108754718270290,'Debbie Eba Collingdon',616,'2024-01-07'),(40,5048371164732360,'Simone Karole Hampton',943,'2022-04-30'),(41,5108752624714170,'Tiphanie Hildagarde Greatex',720,'2023-06-08'),(42,5048378102265370,'Madelene Liuka De Mattei',791,'2022-12-07'),(43,5048372968453510,'Marcela Christan Tree',429,'2023-08-21'),(44,5048370727714730,'Chris Gussi Epp',557,'2022-05-27'),(45,5048373326465900,'Judas Jonah Henmarsh',780,'2023-08-19'),(46,5108755902615610,'Brandtr Stewart De la Feld',729,'2023-07-23'),(47,5048375962016090,'Marlene Maribel Struss',904,'2024-01-27'),(48,5048374027013000,'Norrie Chelsea Emlen',348,'2023-11-06'),(49,5108753703469220,'Ethelbert Marlowe Itzcak',402,'2022-09-07'),(50,5108756689740630,'Linzy Elie Bramah',199,'2022-09-18'),(51,5108752754595720,'Kalindi Danit Beagan',962,'2022-06-18'),(52,5048373651673570,'Ronny Humbert Duferie',245,'2022-06-18'),(53,5048379991390920,'Simone Glenn Beefon',469,'2023-06-25'),(54,5108756866379790,'Eugenio Orbadiah Canty',414,'2022-11-10'),(55,5048370361931070,'Boone Prinz Mitten',215,'2022-08-31'),(56,5048373319725570,'Josiah Arnie Pietersen',438,'2023-10-09'),(57,5048370774917250,'Clyve Levin Bunch',532,'2023-03-24'),(58,5048376471011130,'Annmarie Honey Glossup',845,'2024-01-02'),(59,5108752283880210,'Corbin Charley Janusz',654,'2022-11-02'),(60,5108753344163770,'Abba Adan Boom',629,'2023-02-05'),(61,5048379714262150,'Petra Shanna Brombell',870,'2022-12-13'),(62,5108755924151320,'Royall Cort Lightwing',327,'2023-07-10'),(63,5048377368191020,'Odey Mick Van de Velde',397,'2022-07-04'),(64,5108759378309350,'Belia Venus O\'Cleary',323,'2023-09-27'),(65,5048374243654850,'Enrique Urbano Benedit',656,'2023-01-11'),(66,5048377749726170,'Goldarina Allie Robers',187,'2023-01-03'),(67,5108759097294850,'Tami Lucita Bodle',950,'2023-09-27'),(68,5108751205581080,'Henderson Carson Trevena',508,'2023-05-11'),(69,5108753420054900,'Eloisa Kial Marieton',412,'2022-06-20'),(70,5048375727454970,'Aube Lemmie MacCafferky',379,'2023-09-16'),(71,5108754759251240,'Jill Carley Ingree',242,'2023-11-29'),(72,5108753817051540,'Philomena Elsey Crowhurst',916,'2023-07-23'),(73,5048375392029770,'Ly Elvin Ivanikhin',904,'2022-07-13'),(74,5108757440775900,'Antin Abey Kuhnt',456,'2023-09-27'),(75,5108757667400320,'Diarmid Bale Bonhill',462,'2022-12-01'),(76,5048374876788090,'Barbaraanne Orel Hadgraft',757,'2022-04-30'),(77,5108758239140610,'Glenden Klaus Graybeal',159,'2022-06-28'),(78,5048371880999190,'Roxy Mada Seeds',655,'2022-06-27'),(79,5048374760703930,'Evelyn Horace Filintsev',802,'2023-04-29'),(80,5048374806038640,'Lennie Barny Frarey',545,'2022-12-20'),(81,5108756795099360,'Gaylene Netty Ciccerale',958,'2023-09-22'),(82,5108759919406370,'Cristabel Katti Monk',325,'2023-05-05'),(83,5048379821321310,'Barrie Hillary Stearn',450,'2022-05-24'),(84,5048378837990770,'Averill Gerhard Fattori',812,'2023-08-09'),(85,5048370703766830,'Justin Tadio Gove',949,'2023-12-21'),(86,5108754166841020,'Karoly Gaye Popplestone',254,'2023-03-18'),(87,5108757452991680,'Jewelle Stacey Murrie',165,'2022-12-28'),(88,5048372888463420,'Sherri Aridatha Martinovsky',613,'2023-01-16'),(89,5048379404991760,'Nelia Stormie Ranns',532,'2023-03-22'),(90,5048377526016170,'Abdul Tobias Sansbury',494,'2023-08-19'),(91,5108754638801760,'Celeste Kori Gut',478,'2022-10-20'),(92,5108754727796590,'Ozzy Mikkel Etter',576,'2022-11-07'),(93,5108757876446030,'Ronnie Alaric Alliban',233,'2022-07-22'),(94,5048372919904700,'Smith Richardo Redfern',942,'2022-10-10'),(95,5108759457089150,'Bernelle Reeta Kleinholz',168,'2024-02-26'),(96,5048370911496590,'Lorianna Donelle Krol',713,'2023-12-20'),(97,5048378772097010,'Nestor Noland Johnys',768,'2023-11-02'),(98,5108754213897510,'Claiborne Kellen Cocking',414,'2022-05-07'),(99,5108753828725690,'Alejoa Gardy Givens',456,'2023-09-04'),(100,5048375963995870,'Yardley Claybourne Grishankov',635,'2022-09-24'),(101,5048375753179090,'Hanni Johna Caddick',176,'2022-12-09'),(102,5048375472663720,'Timmi Katleen Ruler',448,'2023-12-15'),(103,5048370432461650,'Tulley Luce Grisenthwaite',423,'2022-12-20'),(104,5108757313702400,'Dolf Worden Duchan',507,'2024-01-26'),(105,5048371687604010,'Jeanette Harmonia Stearns',482,'2023-06-11'),(106,5048371941925060,'Katerine Esme Wadman',619,'2023-11-05'),(107,5108756427468930,'Spence Chariot Roslen',256,'2024-01-17'),(108,5048373490947670,'Raymond Jimmie Pegden',395,'2024-02-01'),(109,5048379142780250,'Aleksandr Padget Frenzl',876,'2023-01-16'),(110,5108758129672810,'Douglas Morgan Scrimshire',753,'2022-11-11');
/*!40000 ALTER TABLE `payment_credentials` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `payment_credentials_BEFORE_INSERT` BEFORE INSERT ON `payment_credentials` FOR EACH ROW BEGIN
set new.paymentc_id = (select max(paymentc_id) from payment_credentials)+1;
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

-- Dump completed on 2022-04-27 23:53:33
