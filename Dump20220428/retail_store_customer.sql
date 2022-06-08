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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `add_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `paymentc_id` int DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `add_id_idx` (`add_id`) /*!80000 INVISIBLE */,
  KEY `first_name` (`first_name`),
  KEY `middle_name` (`middle_name`) /*!80000 INVISIBLE */,
  KEY `last_name` (`last_name`),
  CONSTRAINT `add_id1` FOREIGN KEY (`add_id`) REFERENCES `address` (`add_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `gender1` CHECK ((`gender` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Jessee','Heall','Edy','M','1969-05-15','hedy0@free.fr','833-560-2479',51,1,1),(2,'Caresa','Maryrose','Snelson','F','1988-12-02','msnelson1@accuweather.com','823-211-0212',52,2,2),(3,'Cynthy','Anabelle','Craighead','F','1968-10-23','acraighead2@skype.com','819-415-8730',53,3,3),(4,'Annnora','Ealasaid','Haw','F','2008-08-18','ehaw3@slate.com','249-799-3886',54,4,4),(5,'Curry','Morty','Marchand','M','2004-01-02','mmarchand4@ezinearticles.com','550-835-0449',55,5,5),(6,'Ferguson','Humphrey','Fullun','M','2000-02-01','hfullun5@sakura.ne.jp','809-837-6810',56,6,6),(7,'Ferd','Yvon','Schwandermann','M','1972-11-13','yschwandermann6@google.pl','550-647-6048',57,7,7),(8,'Melva','Ciel','Danelutti','F','2005-07-12','cdanelutti7@admin.ch','374-676-9850',58,8,8),(9,'Raffarty','Trey','Larvin','M','1999-07-27','tlarvin8@harvard.edu','352-582-0991',59,9,9),(10,'Richard','Howie','Draaisma','M','1981-02-12','hdraaisma9@kickstarter.com','147-387-7763',60,10,10),(11,'Elysha','Hulda','Cressey','F','1994-06-05','hcresseya@mlb.com','915-237-6797',61,11,11),(12,'Laurens','Simeon','McWilliams','M','1975-04-28','smcwilliamsb@abc.net.au','915-138-2182',62,12,12),(13,'Federico','Gare','Gounel','M','2008-02-08','ggounelc@clickbank.net','940-661-0577',63,13,13),(14,'Ajay','Trude','Ianittello','F','2001-02-26','tianittellod@sciencedirect.com','910-233-8652',64,14,14),(15,'Evie','Talia','Renshaw','F','2002-12-03','trenshawe@aboutads.info','172-928-1242',65,15,15),(16,'Randell','Payton','Morrish','M','1995-08-23','pmorrishf@blogtalkradio.com','875-962-2716',66,16,16),(17,'Ulrika','Rachel','Botcherby','F','2011-02-17','rbotcherbyg@gmpg.org','937-789-0751',67,17,17),(18,'Robinett','Milena','Elms','F','2013-05-16','melmsh@simplemachines.org','977-337-2663',68,18,18),(19,'Clari','Wrennie','Trowler','F','1967-04-03','wtrowleri@com.com','581-271-9648',69,19,19),(20,'Demetris','Gerrie','Creeghan','M','1980-05-06','gcreeghanj@marriott.com','657-640-5809',70,20,20),(21,'Mathe','Chas','Siccombe','M','1991-05-09','csiccombek@edublogs.org','432-738-3181',71,21,21),(22,'Shanon','Minni','Skaife d\'Ingerthorpe','F','1967-09-24','mskaifedingerthorpel@dyndns.org','694-119-5941',72,22,22),(23,'Ange','Lemmy','Brocket','M','2014-01-31','lbrocketm@goodreads.com','399-951-6443',73,23,23),(24,'Timmy','Violetta','Siaskowski','F','1967-12-02','vsiaskowskin@auda.org.au','801-721-1040',74,24,24),(25,'Wallie','Clarinda','De Cruz','F','1969-08-26','cdecruzo@cpanel.net','916-973-8736',75,25,25),(26,'Milton','Dorian','Ucchino','M','1999-07-16','ducchinop@vkontakte.ru','794-889-0121',76,26,26),(27,'Dorree','Geri','Worts','F','2012-08-10','gwortsq@ftc.gov','880-807-7037',77,27,27),(28,'Leonanie','Issy','Djorvic','F','1971-11-17','idjorvicr@xrea.com','652-655-1048',78,28,28),(29,'Elspeth','Annelise','Scholar','F','1972-01-03','ascholars@storify.com','154-471-8185',79,29,29),(30,'Gawen','Tailor','Noriega','M','1992-09-18','tnoriegat@ucoz.ru','520-318-7150',80,30,30),(31,'Pierette','Leanora','Uvedale','F','1965-02-03','luvedaleu@chronoengine.com','211-938-7348',81,31,31),(32,'Georgine','Rosalynd','Robins','F','1993-06-08','rrobinsv@pinterest.com','184-481-7582',82,32,32),(33,'Claiborn','Ty','Leys','M','1966-09-18','tleysw@businesswire.com','957-668-6085',83,33,33),(34,'Vanya','Arte','Danjoie','M','2008-12-31','adanjoiex@dell.com','564-961-3770',84,34,34),(35,'Iorgos','Grace','Freebury','M','1974-04-02','gfreeburyy@php.net','971-944-0914',85,35,35),(36,'Alistair','Dannie','Francke','M','1999-10-21','dfranckez@t.co','587-457-1922',86,36,36),(37,'Vinson','Job','Giacobelli','M','2009-10-07','jgiacobelli10@cocolog-nifty.com','921-361-7009',87,37,37),(38,'Gail','Lauryn','Rands','F','1997-03-14','lrands11@seesaa.net','106-299-4899',88,38,38),(39,'Debbie','Eba','Collingdon','F','1998-07-04','ecollingdon12@java.com','884-598-2835',89,39,39),(40,'Simone','Karole','Hampton','F','2008-08-29','khampton13@fastcompany.com','538-355-1864',90,40,40),(41,'Tiphanie','Hildagarde','Greatex','F','1985-10-29','hgreatex14@berkeley.edu','743-402-0242',91,41,41),(42,'Madelene','Liuka','De Mattei','F','1999-07-03','ldemattei15@miitbeian.gov.cn','177-171-4380',92,42,42),(43,'Marcela','Christan','Tree','F','1984-03-04','ctree16@deviantart.com','779-313-4449',93,43,43),(44,'Chris','Gussi','Epp','F','1964-05-15','gepp17@utexas.edu','122-529-0254',94,44,44),(45,'Judas','Jonah','Henmarsh','M','2010-08-23','jhenmarsh18@hhs.gov','335-370-4265',95,45,45),(46,'Brandtr','Stewart','De la Feld','M','1994-01-18','sdelafeld19@mozilla.org','248-103-9541',96,46,46),(47,'Marlene','Maribel','Struss','F','2009-04-11','mstruss1a@marriott.com','285-650-1872',97,47,47),(48,'Norrie','Chelsea','Emlen','F','2003-08-01','cemlen1b@51.la','681-457-1626',98,48,48),(49,'Ethelbert','Marlowe','Itzcak','M','1975-01-13','mitzcak1c@flavors.me','850-101-7981',99,49,49),(50,'Linzy','Elie','Bramah','F','1969-11-22','ebramah1d@bloglovin.com','505-351-3626',100,50,50),(51,'Kalindi','Danit','Beagan','F','1981-04-27','dbeagan1e@apache.org','747-141-9873',101,51,51),(52,'Ronny','Humbert','Duferie','M','1983-11-19','hduferie1f@paypal.com','385-464-5940',102,52,52),(53,'Simone','Glenn','Beefon','M','2007-10-26','gbeefon1g@blogger.com','273-893-5720',103,53,53),(54,'Eugenio','Orbadiah','Canty','M','1998-06-11','ocanty1h@wsj.com','879-567-9014',104,54,54),(55,'Boone','Prinz','Mitten','M','2013-09-06','pmitten1i@homestead.com','658-962-3829',105,55,55),(56,'Josiah','Arnie','Pietersen','M','2005-12-13','apietersen1j@marketwatch.com','693-510-9957',106,56,56),(57,'Clyve','Levin','Bunch','M','2008-03-09','lbunch1k@uol.com.br','401-195-8301',107,57,57),(58,'Annmarie','Honey','Glossup','F','2001-05-05','hglossup1l@dailymail.co.uk','946-969-5866',108,58,58),(59,'Corbin','Charley','Janusz','M','1991-01-03','cjanusz1m@icio.us','809-375-9906',109,59,59),(60,'Abba','Adan','Boom','M','1995-06-28','aboom1n@eventbrite.com','107-220-2902',110,60,60),(61,'Petra','Shanna','Brombell','F','2004-03-11','sbrombell1o@cbc.ca','144-661-7507',111,61,61),(62,'Royall','Cort','Lightwing','M','2005-09-21','clightwing1p@senate.gov','364-817-0131',112,62,62),(63,'Odey','Mick','Van de Velde','M','2013-05-24','mvandevelde1q@google.it','613-292-0428',113,63,63),(64,'Belia','Venus','O\'Cleary','F','1967-03-18','vocleary1r@marriott.com','296-991-5197',114,64,64),(65,'Enrique','Urbano','Benedit','M','1978-03-22','ubenedit1s@xrea.com','855-655-2106',115,65,65),(66,'Goldarina','Allie','Robers','F','1994-09-25','arobers1t@blogspot.com','662-751-6995',116,66,66),(67,'Tami','Lucita','Bodle','F','1976-03-30','lbodle1u@lycos.com','847-720-1402',117,67,67),(68,'Henderson','Carson','Trevena','M','1986-03-09','ctrevena1v@ebay.com','976-958-7587',118,68,68),(69,'Eloisa','Kial','Marieton','F','1995-10-11','kmarieton1w@seesaa.net','690-674-1676',119,69,69),(70,'Aube','Lemmie','MacCafferky','M','1978-04-04','lmaccafferky1x@ucoz.ru','401-414-6687',120,70,70),(71,'Jill','Carley','Ingree','F','2013-04-09','cingree1y@hhs.gov','211-397-3746',121,71,71),(72,'Philomena','Elsey','Crowhurst','F','1968-07-30','ecrowhurst1z@unicef.org','709-716-7228',122,72,72),(73,'Ly','Elvin','Ivanikhin','M','1972-03-15','eivanikhin20@cdbaby.com','601-817-8907',123,73,73),(74,'Antin','Abey','Kuhnt','M','1965-08-18','akuhnt21@addtoany.com','611-721-1999',124,74,74),(75,'Diarmid','Bale','Bonhill','M','1968-01-09','bbonhill22@fema.gov','718-540-0659',125,75,75),(76,'Barbaraanne','Orel','Hadgraft','F','1993-11-01','ohadgraft23@google.com.au','347-541-3708',126,76,76),(77,'Glenden','Klaus','Graybeal','M','1986-06-11','kgraybeal24@barnesandnoble.com','824-560-0162',127,77,77),(78,'Roxy','Mada','Seeds','F','2004-10-27','mseeds25@jalbum.net','176-855-3140',128,78,78),(79,'Evelyn','Horace','Filintsev','M','1981-01-04','hfilintsev26@thetimes.co.uk','832-105-9426',129,79,79),(80,'Lennie','Barny','Frarey','M','1985-10-24','bfrarey27@hao123.com','615-958-3833',130,80,80),(81,'Gaylene','Netty','Ciccerale','F','1973-06-10','nciccerale28@technorati.com','138-348-4548',131,81,81),(82,'Cristabel','Katti','Monk','F','2002-03-06','kmonk29@de.vu','102-905-0174',132,82,82),(83,'Barrie','Hillary','Stearn','M','1969-04-04','hstearn2a@china.com.cn','470-173-4848',133,83,83),(84,'Averill','Gerhard','Fattori','M','2001-06-06','gfattori2b@addthis.com','713-279-8119',134,84,84),(85,'Justin','Tadio','Gove','M','1967-11-09','tgove2c@wikipedia.org','390-680-1150',135,85,85),(86,'Karoly','Gaye','Popplestone','F','1997-08-12','gpopplestone2d@ehow.com','588-427-0704',136,86,86),(87,'Jewelle','Stacey','Murrie','F','2004-06-16','smurrie2e@army.mil','728-250-1119',137,87,87),(88,'Sherri','Aridatha','Martinovsky','F','1987-03-20','amartinovsky2f@ed.gov','938-403-2062',138,88,88),(89,'Nelia','Stormie','Ranns','F','2012-02-18','sranns2g@princeton.edu','527-560-9319',139,89,89),(90,'Abdul','Tobias','Sansbury','M','2010-03-18','tsansbury2h@auda.org.au','775-401-9193',140,90,90),(91,'Celeste','Kori','Gut','F','1974-07-18','kgut2i@prnewswire.com','290-921-3179',141,91,91),(92,'Ozzy','Mikkel','Etter','M','2002-09-01','metter2j@mit.edu','102-962-6584',142,92,92),(93,'Ronnie','Alaric','Alliban','M','1986-12-15','aalliban2k@google.ca','714-506-5044',143,93,93),(94,'Smith','Richardo','Redfern','M','1964-11-25','rredfern2l@squidoo.com','302-856-3484',144,94,94),(95,'Bernelle','Reeta','Kleinholz','F','2014-01-08','rkleinholz2m@usnews.com','226-612-3351',145,95,95),(96,'Lorianna','Donelle','Krol','F','1990-12-19','dkrol2n@usda.gov','340-152-3037',146,96,96),(97,'Nestor','Noland','Johnys','M','1984-01-13','njohnys2o@miibeian.gov.cn','270-305-6490',147,97,97),(98,'Claiborne','Kellen','Cocking','M','2001-06-04','kcocking2p@pagesperso-orange.fr','842-244-4230',148,98,98),(99,'Alejoa','Gardy','Givens','M','1976-06-01','ggivens2q@over-blog.com','469-105-5648',149,99,99),(100,'Yardley','Claybourne','Grishankov','M','1996-12-06','cgrishankov2r@163.com','493-347-3989',150,100,100),(101,'Hanni','Johna','Caddick','F','1995-06-07','jcaddick2s@theglobeandmail.com','500-371-2768',151,101,101),(102,'Timmi','Katleen','Ruler','F','1971-01-21','kruler2t@yale.edu','298-396-9679',152,102,102),(103,'Tulley','Luce','Grisenthwaite','M','1996-07-15','lgrisenthwaite2u@sitemeter.com','641-832-5570',153,103,103),(104,'Dolf','Worden','Duchan','M','2007-07-23','wduchan2v@google.it','857-285-9012',154,104,104),(105,'Jeanette','Harmonia','Stearns','F','2004-09-24','hstearns2w@scientificamerican.com','762-265-2152',155,105,105),(106,'Katerine','Esme','Wadman','F','1988-07-17','ewadman2x@umn.edu','680-241-6092',156,106,106),(107,'Spence','Chariot','Roslen','M','2004-02-05','croslen2y@opera.com','722-479-1570',157,107,107),(108,'Raymond','Jimmie','Pegden','M','1965-08-22','jpegden2z@etsy.com','359-518-9403',158,108,108),(109,'Aleksandr','Padget','Frenzl','M','1991-01-27','pfrenzl30@netlog.com','982-808-1740',159,109,109),(110,'Douglas','Morgan','Scrimshire','M','1991-02-17','mscrimshire31@who.int','671-292-8701',160,110,110),(111,'Bertha','Dusty','Brundale','F','1983-06-08','dbrundale32@tumblr.com','481-499-6987',161,111,111),(112,'Ambrose','Killie','Coller','M','1968-01-27','kcoller33@naver.com','954-793-0245',162,112,112),(113,'Lawrence','Vanya','Dunsleve','M','1977-02-03','vdunsleve34@oaic.gov.au','387-245-9658',163,113,113),(114,'Granthem','Cy','Monson','M','2000-09-07','cmonson35@deliciousdays.com','837-159-8934',164,114,114),(115,'Hildagard','Olenka','Anthoin','F','2005-06-01','oanthoin36@blinklist.com','703-940-9226',165,115,115),(116,'Dominic','Gerik','Iliffe','M','2007-12-19','giliffe37@spotify.com','780-560-2267',166,116,116),(117,'Sharon','Mariellen','Dunn','F','2010-05-06','mdunn38@ox.ac.uk','573-723-5511',167,117,117),(118,'Wes','Shermy','Hummerston','M','1990-05-12','shummerston39@miibeian.gov.cn','905-733-3156',168,118,118),(119,'Ericka','Ira','Aucock','F','2010-01-25','iaucock3a@elegantthemes.com','464-876-3620',169,119,119),(120,'Karylin','Christin','Flannigan','F','1983-03-13','cflannigan3b@dailymail.co.uk','454-876-4980',170,120,120),(121,'Dukie','Evan','Hellin','M','2012-11-23','ehellin3c@nymag.com','656-353-4221',171,121,121),(122,'Wandis','Miriam','Leney','F','1981-07-28','mleney3d@cdbaby.com','751-505-0111',172,122,122),(123,'Shea','Hedwig','Loddon','F','2001-04-07','hloddon3e@bluehost.com','787-274-0471',173,123,123),(124,'Corney','Nicol','Gladdor','M','1988-12-30','ngladdor3f@aol.com','565-851-9703',174,124,124),(125,'Dalila','Melloney','Jouhning','F','1994-07-10','mjouhning3g@narod.ru','562-741-5630',175,125,125),(126,'Bent','Glyn','Codlin','M','2002-10-12','gcodlin3h@sohu.com','175-465-3073',176,126,126),(127,'Eimile','Shane','Jellett','F','1967-02-24','sjellett3i@163.com','976-482-4946',177,127,127),(128,'Nissie','Rochette','Conyer','F','1969-04-25','rconyer3j@quantcast.com','708-474-1694',178,128,128),(129,'Courtney','Austine','Haller','F','1993-03-14','ahaller3k@economist.com','836-530-8084',179,129,129),(130,'Marisa','Mariam','Fairhead','F','2000-08-21','mfairhead3l@delicious.com','954-542-1901',180,130,130),(131,'Lauralee','Carina','Diament','F','1997-05-24','cdiament3m@blogspot.com','906-357-6808',181,131,131),(132,'Darren','Torrence','Roache','M','1993-09-12','troache3n@shareasale.com','173-193-2308',182,132,132),(133,'Rex','Willie','Yerborn','M','2007-12-25','wyerborn3o@domainmarket.com','934-860-6064',183,133,133),(134,'Theo','Alano','Terbrugge','M','1966-08-21','aterbrugge3p@ox.ac.uk','420-637-8432',184,134,134),(135,'Bryanty','Aldus','Bolle','M','1996-06-16','abolle3q@altervista.org','999-607-7143',185,135,135),(136,'Bryn','Johny','Mc Coughan','M','1990-11-29','jmccoughan3r@thetimes.co.uk','966-263-9598',186,136,136),(137,'Rollin','Jose','Ankers','M','2010-02-24','jankers3s@topsy.com','764-718-6913',187,137,137),(138,'Chandal','Etta','Rillstone','F','2006-03-13','erillstone3t@yellowpages.com','191-820-8738',188,138,138),(139,'Lissi','Timmie','Scafe','F','1976-05-03','tscafe3u@reuters.com','985-357-7345',189,139,139),(140,'Gigi','Dee','Fredi','F','1971-09-28','dfredi3v@seattletimes.com','723-148-8082',190,140,140),(141,'Elbertine','Lianna','Coltart','F','2004-09-16','lcoltart3w@si.edu','455-199-9478',191,141,141),(142,'Dom','Ashley','Ellinor','M','1996-02-01','aellinor3x@princeton.edu','216-731-5206',192,142,142),(143,'Calypso','Nert','Bullman','F','1982-03-19','nbullman3y@weibo.com','189-407-3957',193,143,143),(144,'Corbin','Keen','Reignard','M','1998-04-06','kreignard3z@nba.com','997-243-1709',194,144,144),(145,'Linnell','Melanie','Simmens','F','1971-08-08','msimmens40@skyrock.com','822-700-7028',195,145,145),(146,'Nevsa','Elsie','Dyshart','F','2010-05-02','edyshart41@storify.com','287-498-9562',196,146,146),(147,'Rowney','Vale','Tutt','M','1964-05-08','vtutt42@yelp.com','767-118-9913',197,147,147),(148,'Mina','Loralyn','Buesden','F','1967-04-16','lbuesden43@bluehost.com','703-893-9327',198,148,148),(149,'Lillian','Sadye','Sollowaye','F','1998-09-16','ssollowaye44@kickstarter.com','446-277-6241',199,149,149),(150,'Jedediah','Laney','Ducrow','M','2004-09-13','lducrow45@sun.com','690-109-4645',200,150,150),(151,'Karlis','Ax','Rickasse','M','1977-08-19','arickasse0@youku.com','940-179-5095',201,151,151),(152,'Kandy','Lilli','Longland','F','1973-08-18','llongland1@cbslocal.com','861-670-5442',202,152,152),(153,'Justinn','Rosella','Gabey','F','1962-05-14','rgabey2@php.net','797-458-5285',203,153,153),(154,'Leah','Bonnibelle','Daber','F','1971-12-01','bdaber3@mtv.com','705-611-7615',204,154,154),(155,'Kare','Nadean','Font','F','1952-02-24','nfont4@bandcamp.com','845-585-2940',205,155,155),(156,'Esmaria','Ruthann','Klimt','F','1970-03-01','rklimt5@state.gov','150-288-0099',206,156,156),(157,'Meir','Ginger','Reubens','M','1963-02-12','greubens6@techcrunch.com','201-823-0990',207,157,157),(158,'Humberto','Corty','Tithacott','M','1992-02-25','ctithacott7@who.int','987-137-7105',208,158,158),(159,'Stafford','Isaac','Foley','M','1993-04-11','ifoley8@google.de','998-868-7246',209,159,159),(160,'Hamid','Dexter','Verman','M','1956-06-24','dverman9@shop-pro.jp','171-408-6307',210,160,160),(161,'Alaine','Maitilde','Arsnell','F','1995-03-26','marsnella@senate.gov','889-811-0456',211,161,161),(162,'Sanford','Terrel','Walling','M','1986-08-15','twallingb@yahoo.co.jp','689-267-6960',212,162,162),(163,'Merlina','Cristal','Schneidar','F','1970-06-14','cschneidarc@businessinsider.com','622-177-9667',213,163,163),(164,'Juieta','Genia','Abbotson','F','1971-12-09','gabbotsond@ucla.edu','318-144-6219',214,164,164),(165,'Norrie','Katrinka','Kennard','F','1985-01-10','kkennarde@geocities.com','395-993-0186',215,165,165),(166,'Martainn','Andre','Prue','M','1972-09-14','apruef@microsoft.com','996-113-6765',216,166,166),(167,'Farrel','Benedict','Grey','M','1978-08-07','bgreyg@nydailynews.com','908-414-1749',217,167,167),(168,'Ramsay','Guthrey','Antrim','M','1971-06-20','gantrimh@techcrunch.com','754-498-5408',218,168,168),(169,'Clair','Jerrold','Joslin','M','1978-06-28','jjoslini@networksolutions.com','677-249-3417',219,169,169),(170,'Lila','Raquela','Langstone','F','1952-07-06','rlangstonej@barnesandnoble.com','365-916-8313',220,170,170),(171,'Bess','Helenka','Bails','F','1996-04-24','hbailsk@businessweek.com','554-792-6731',221,171,171),(172,'Elfrida','Janeczka','Feaster','F','1986-02-04','jfeasterl@sfgate.com','479-280-8674',222,172,172),(173,'Bobbe','Mathilda','Bonhome','F','1991-07-06','mbonhomem@businessweek.com','296-593-2496',223,173,173),(174,'Aprilette','Fania','Dunniom','F','1977-08-18','fdunniomn@smugmug.com','843-337-3843',224,174,174),(175,'Eli','Barr','Ranahan','M','1987-10-06','branahano@ebay.co.uk','868-568-1509',225,175,175),(176,'Shayne','Noland','Bartos','M','1967-04-07','nbartosp@techcrunch.com','177-909-1341',226,176,176),(177,'Abbot','Conn','Cashen','M','1956-06-30','ccashenq@posterous.com','562-605-7404',227,177,177),(178,'Erskine','Griffie','Beckitt','M','1963-03-28','gbeckittr@msu.edu','122-531-2929',228,178,178),(179,'Ida','Kaila','Berecloth','F','1990-03-01','kberecloths@nasa.gov','181-836-3812',229,179,179),(180,'Barnaby','Paul','Strood','M','1966-10-21','pstroodt@yelp.com','423-766-9164',230,180,180),(181,'Fred','Caro','Howerd','F','1993-05-03','chowerdu@geocities.jp','783-486-3261',231,181,181),(182,'Stephani','Gertruda','Demogeot','F','2001-02-21','gdemogeotv@bizjournals.com','952-928-4137',232,182,182),(183,'Charin','Elfreda','Bittany','F','1954-07-17','ebittanyw@sphinn.com','254-792-7042',233,183,183),(184,'Elwira','Ofella','Otter','F','1990-01-04','ootterx@aboutads.info','531-957-6437',234,184,184),(185,'Daisi','Hadria','Brimacombe','F','1968-06-01','hbrimacombey@disqus.com','313-755-2062',235,185,185),(186,'Tiertza','Glynda','Mariault','F','2000-11-13','gmariaultz@businessweek.com','477-131-2085',236,186,186),(187,'Chalmers','Lenci','Berzins','M','1956-11-14','lberzins10@netscape.com','309-330-7565',237,187,187),(188,'Olav','Edouard','Lomen','M','1955-02-17','elomen11@simplemachines.org','247-669-0899',238,188,188),(189,'Klement','Ennis','Doerling','M','1999-07-13','edoerling12@redcross.org','370-363-4395',239,189,189),(190,'Juan','Warren','Mendes','M','1982-06-22','wmendes13@sitemeter.com','584-204-5105',240,190,190),(191,'Chrysa','Felecia','Frankiewicz','F','1982-03-16','ffrankiewicz14@globo.com','501-561-2971',241,191,191),(192,'Sonny','Jenna','Tomaszynski','F','1948-05-12','jtomaszynski15@diigo.com','425-817-4850',242,192,192),(193,'Isabelita','Judy','Schaben','F','1965-01-08','jschaben16@addthis.com','798-740-1777',243,193,193),(194,'Crystal','Winnah','Deal','F','1953-05-21','wdeal17@macromedia.com','342-869-0912',244,194,194),(195,'Giffie','Hamlin','Gosz','M','1967-06-08','hgosz18@hp.com','663-639-7580',245,195,195),(196,'Butch','Scarface','Wetherell','M','1961-08-29','swetherell19@google.nl','306-238-8027',246,196,196),(197,'Doralia','Carline','Twiname','F','1958-02-11','ctwiname1a@ehow.com','915-804-3299',247,197,197),(198,'Wilt','Dav','Quested','M','1953-12-15','dquested1b@typepad.com','175-147-2363',248,198,198),(199,'Rozele','Guglielma','Murrigan','F','1949-06-16','gmurrigan1c@live.com','743-453-7961',249,199,199),(200,'Ad','Renaldo','Murr','M','2001-05-01','rmurr1d@tmall.com','259-228-6568',250,200,200);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `customer_BEFORE_INSERT` BEFORE INSERT ON `customer` FOR EACH ROW BEGIN
set new.c_id = (select max(c_id) from customer)+1;
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

-- Dump completed on 2022-04-27 23:53:39
