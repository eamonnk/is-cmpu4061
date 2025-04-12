CREATE DATABASE  IF NOT EXISTS `airlinedb_ek_updated` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airlinedb_ek_updated`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: airlinedb_ek_updated
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `aircraft`
--

DROP TABLE IF EXISTS `aircraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aircraft` (
  `aircraft_ID` int NOT NULL,
  `aircraft_model_ID` varchar(50) DEFAULT NULL,
  `airport_ID` varchar(4) DEFAULT NULL,
  `seat_capacity` int DEFAULT NULL,
  `min_num_staff_required_to_operate` int DEFAULT NULL,
  PRIMARY KEY (`aircraft_ID`),
  KEY `aircraft_model_ID` (`aircraft_model_ID`),
  KEY `airport_ID` (`airport_ID`),
  CONSTRAINT `aircraft_ibfk_1` FOREIGN KEY (`aircraft_model_ID`) REFERENCES `aircraft_model` (`aircraft_model_ID`),
  CONSTRAINT `aircraft_ibfk_2` FOREIGN KEY (`airport_ID`) REFERENCES `airports` (`airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraft`
--

LOCK TABLES `aircraft` WRITE;
/*!40000 ALTER TABLE `aircraft` DISABLE KEYS */;
INSERT INTO `aircraft` VALUES (1,'A320','JFK',361,12),(2,'B737','JFK',275,15),(3,'A320','JFK',208,6),(4,'B777','HND',251,6),(5,'B737','DXB',374,7),(6,'B737','HND',223,13),(7,'B737','HND',350,14),(8,'A320','LHR',332,11),(9,'A380','JFK',188,11),(10,'B737','LHR',263,5),(11,'B737','LHR',221,14),(12,'A320','LAX',168,15),(13,'A380','DXB',191,6),(14,'A380','LHR',229,5),(15,'B737','LHR',375,10),(16,'B777','DXB',320,6),(17,'A320','JFK',374,8),(18,'A380','LHR',288,15),(19,'B777','LHR',382,10),(20,'A320','DXB',162,7),(21,'B777','LAX',355,11),(22,'B737','JFK',251,10),(23,'B777','LHR',319,13),(24,'B737','HND',262,12),(25,'B777','HND',394,15),(26,'A380','HND',335,13),(27,'B737','DXB',319,11),(28,'A380','LHR',189,10),(29,'B777','HND',156,6),(30,'A380','LHR',343,13),(31,'A380','LHR',326,7),(32,'A380','LHR',197,7),(33,'A380','DXB',223,10),(34,'B777','HND',164,10),(35,'A380','LHR',160,14),(36,'B777','LAX',309,5),(37,'B737','DXB',271,7),(38,'B737','DXB',179,11),(39,'B737','JFK',261,11),(40,'A380','JFK',397,11);
/*!40000 ALTER TABLE `aircraft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aircraft_model`
--

DROP TABLE IF EXISTS `aircraft_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aircraft_model` (
  `aircraft_model_ID` varchar(50) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `year_of_manufacture` year DEFAULT NULL,
  `configuration` varchar(45) DEFAULT NULL,
  `manufacturer_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aircraft_model_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraft_model`
--

LOCK TABLES `aircraft_model` WRITE;
/*!40000 ALTER TABLE `aircraft_model` DISABLE KEYS */;
INSERT INTO `aircraft_model` VALUES ('A220','Airbus A220',2021,'Regional Jet, Single-aisle','Airbus'),('A310','Airbus A310',2012,'Wide-body, Twin-engine','Airbus'),('A320','Airbus A320',2015,'Narrow-body, Single-aisle','Airbus'),('A321','Airbus A321',2014,'Narrow-body, Single-aisle','Airbus'),('A330','Airbus A330',2013,'Wide-body, Twin-engine','Airbus'),('A350','Airbus A350',2020,'Wide-body, Twin-aisle','Airbus'),('A350-1000','Airbus A350-1000',2022,'Wide-body, Twin-aisle','Airbus'),('A380','Airbus A380',2019,'Wide-body, Four-engine','Airbus'),('B737','Boeing 737',2018,'Narrow-body, Single-aisle','Boeing'),('B737 MAX','Boeing 737 MAX',2022,'Narrow-body, Single-aisle','Boeing'),('B737NG','Boeing 737 NG',2016,'Narrow-body, Single-aisle','Boeing'),('B747','Boeing 747',2007,'Wide-body, Four-engine','Boeing'),('B757','Boeing 757',2015,'Wide-body, Twin-engine','Boeing'),('B767','Boeing 767',2014,'Wide-body, Twin-engine','Boeing'),('B777','Boeing 777',2018,'Wide-body, Twin-engine','Boeing'),('B787','Boeing 787',2021,'Wide-body, Twin-aisle','Boeing'),('CRJ200','Bombardier CRJ200',2016,'Regional Jet, Single-aisle','Bombardier'),('E175','Embraer E175',2017,'Regional Jet, Single-aisle','Embraer'),('E190','Embraer E190',2019,'Regional Jet, Single-aisle','Embraer');
/*!40000 ALTER TABLE `aircraft_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `airport_ID` varchar(4) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

LOCK TABLES `airports` WRITE;
/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
INSERT INTO `airports` VALUES ('AMS','Amsterdam Schiphol','Amsterdam, Netherlands'),('ATL','Hartsfield–Jackson Atlanta International','Atlanta, Georgia, USA'),('BCN','Barcelona El Prat','Barcelona, Spain'),('BKK','Suvarnabhumi Airport','Bangkok, Thailand'),('BNE','Brisbane Airport','Brisbane, Queensland, Australia'),('BOM','Chhatrapati Shivaji Maharaj International','Mumbai, India'),('BWI','Baltimore/Washington International','Baltimore, Maryland, USA'),('CDG','Charles de Gaulle International','Roissy-en-France, France'),('CMB','Bandaranaike International','Colombo, Sri Lanka'),('CPT','Cape Town International','Cape Town, South Africa'),('CUN','Cancún International','Cancún, Mexico'),('DEL','Indira Gandhi International','Delhi, India'),('DME','Domodedovo International','Moscow, Russia'),('DOH','Hamad International','Doha, Qatar'),('DTW','Detroit Metropolitan','Detroit, Michigan, USA'),('DXB','Dubai International','Dubai, UAE'),('EWR','Newark Liberty International','Newark, New Jersey, USA'),('FCO','Leonardo da Vinci International','Rome, Italy'),('FRA','Frankfurt Airport','Frankfurt, Germany'),('HKG','Hong Kong International','Chek Lap Kok, Hong Kong'),('HND','Tokyo Haneda','Tokyo, Japan'),('ICN','Incheon International','Incheon, South Korea'),('IST','Istanbul Airport','Istanbul, Turkey'),('JFK','John F. Kennedy International','Queens, New York, USA'),('JNB','O.R. Tambo International','Johannesburg, South Africa'),('KUL','Kuala Lumpur International','Sepang, Malaysia'),('LAX','Los Angeles International','Los Angeles, California, USA'),('LGK','Langkawi International','Langkawi, Malaysia'),('LGW','London Gatwick','Crawley, West Sussex, UK'),('LHR','London Heathrow','Longford, London, UK'),('LIM','Jorge Chávez International','Lima, Peru'),('LIS','Lisbon Humberto Delgado','Lisbon, Portugal'),('MAD','Adolfo Suárez Madrid–Barajas','Madrid, Spain'),('MAN','Manchester Airport','Manchester, UK'),('MIA','Miami International','Miami, Florida, USA'),('MSP','Minneapolis–Saint Paul International','Minneapolis, Minnesota, USA'),('MUC','Munich Airport','Munich, Germany'),('ORD','OHare International','Chicago, Illinois, USA'),('PEK','Beijing Capital International','Beijing, China'),('SCL','Arturo Merino Benitez','Santiago, Chile'),('SEA','Seattle-Tacoma International','Seattle, Washington, USA'),('SFO','San Francisco International','San Mateo County, California, USA'),('SIN','Singapore Changi Airport','Changi, Singapore'),('SVO','Sheremetyevo International','Moscow, Russia'),('SYD','Sydney Kingsford Smith','Sydney, New South Wales, Australia'),('TPE','Taoyuan International','Taipei, Taiwan'),('YUL','Montréal–Pierre Elliott Trudeau','Montreal, Quebec, Canada'),('YVR','Vancouver International','Vancouver, British Columbia, Canada'),('YYZ','Toronto Pearson International','Toronto, Ontario, Canada'),('ZRH','Zurich Airport','Zurich, Switzerland');
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `booking_ID` int NOT NULL,
  `flight_ID` int DEFAULT NULL,
  `booking_date_time` datetime DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `num_bags` int DEFAULT NULL,
  `seat_number` varchar(5) DEFAULT NULL,
  `cust_checked_in` tinyint(1) DEFAULT NULL,
  `cust_boarded` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`booking_ID`),
  KEY `flight_ID` (`flight_ID`),
  KEY `idx_bookings_price` (`price`),
  CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`flight_ID`) REFERENCES `flights` (`flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,3,'2023-12-10 14:33:12',1,1245.67,2,'10A',1,0),(2,10,'2023-12-05 16:22:19',0,762.45,1,'14C',0,1),(3,25,'2023-11-20 18:45:34',1,532.78,1,'3D',1,1),(4,7,'2023-12-12 09:17:10',0,799.99,2,'18B',0,0),(5,2,'2023-11-29 11:05:01',1,1156.32,1,'12A',1,1),(6,5,'2023-12-01 17:29:56',1,938.47,3,'20C',0,1),(7,11,'2023-12-13 22:50:34',0,742.86,1,'21D',1,0),(8,18,'2023-11-28 08:14:21',1,1502.59,2,'17C',1,1),(9,3,'2023-12-04 13:02:38',0,954.56,1,'23A',0,0),(10,16,'2023-11-20 16:45:11',1,630.22,1,'9B',1,1),(11,33,'2023-12-09 14:22:07',1,1199.30,1,'5A',1,0),(12,8,'2023-11-15 10:52:53',0,836.71,2,'8C',0,1),(13,40,'2023-11-22 19:33:46',1,678.12,1,'14D',1,1),(14,17,'2023-12-08 13:04:22',0,902.15,3,'2B',1,1),(15,9,'2023-12-02 21:05:33',1,756.87,2,'19D',0,1),(16,15,'2023-12-03 18:45:11',1,1034.44,1,'5C',1,0),(17,6,'2023-12-06 14:21:18',0,589.55,1,'13A',1,1),(18,26,'2023-12-14 20:16:49',1,754.10,2,'22C',0,0),(19,4,'2023-12-07 11:32:58',1,1350.12,1,'16A',1,1),(20,22,'2023-11-25 09:51:14',1,876.42,2,'3D',1,0),(21,21,'2023-11-30 15:20:43',1,1342.18,1,'1B',1,1),(22,13,'2023-12-01 07:24:02',1,460.75,3,'7C',0,1),(23,24,'2023-12-10 08:56:13',1,1223.98,2,'18B',1,0),(24,10,'2023-11-27 20:11:21',0,681.92,1,'12D',0,1),(25,5,'2023-12-05 10:34:09',1,915.21,2,'9A',1,1),(26,19,'2023-12-09 11:04:36',1,1025.39,1,'5B',1,0),(27,35,'2023-11-28 12:07:17',1,594.99,2,'6D',0,1),(28,14,'2023-12-02 13:25:46',1,810.67,1,'3C',1,1),(29,31,'2023-12-07 19:48:55',0,500.10,3,'22A',0,1),(30,1,'2023-11-25 16:22:11',1,1183.55,2,'20D',1,1),(31,37,'2023-11-21 17:34:22',1,1349.90,1,'15A',0,0),(32,13,'2023-12-03 22:16:51',0,732.23,1,'4C',0,1),(33,5,'2023-12-06 11:58:34',1,699.99,1,'10A',1,1),(34,11,'2023-12-08 13:02:10',1,539.66,2,'18B',0,1),(35,30,'2023-11-29 14:43:41',1,842.67,1,'1D',1,0),(36,9,'2023-12-02 16:20:23',1,965.21,1,'19B',1,1),(37,15,'2023-11-23 12:37:11',1,1004.34,2,'2A',0,1),(38,4,'2023-12-07 21:11:02',0,800.95,1,'20C',1,1),(39,29,'2023-12-11 18:15:49',1,1293.88,2,'7D',0,1),(40,7,'2023-12-14 06:54:10',1,998.76,1,'14C',1,1),(41,32,'2023-12-06 14:22:44',0,545.92,1,'17A',1,0),(42,11,'2023-12-09 20:22:35',1,822.45,1,'6D',0,1),(43,33,'2023-12-08 10:03:22',1,456.87,1,'19D',1,1),(44,26,'2023-12-10 19:30:01',1,1300.42,2,'13A',1,1),(45,40,'2023-11-30 22:09:55',0,345.90,3,'22C',1,1),(46,14,'2023-12-04 14:12:22',1,802.19,1,'10D',0,1),(47,38,'2023-12-02 07:29:40',1,478.88,2,'15C',1,0),(48,7,'2023-11-30 14:55:33',1,625.76,1,'9C',1,1),(49,12,'2023-12-05 11:18:04',1,909.90,2,'8A',1,0),(50,36,'2023-12-01 20:12:01',0,1043.75,1,'14B',0,1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_bookings`
--

DROP TABLE IF EXISTS `customer_bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_bookings` (
  `booking_ID` int NOT NULL,
  `customer_ID` int NOT NULL,
  PRIMARY KEY (`booking_ID`,`customer_ID`),
  KEY `customer_ID` (`customer_ID`),
  CONSTRAINT `customer_bookings_ibfk_1` FOREIGN KEY (`booking_ID`) REFERENCES `bookings` (`booking_ID`),
  CONSTRAINT `customer_bookings_ibfk_2` FOREIGN KEY (`customer_ID`) REFERENCES `customers` (`customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_bookings`
--

LOCK TABLES `customer_bookings` WRITE;
/*!40000 ALTER TABLE `customer_bookings` DISABLE KEYS */;
INSERT INTO `customer_bookings` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50);
/*!40000 ALTER TABLE `customer_bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_ID` int NOT NULL,
  `payment_ID` int DEFAULT NULL,
  `title` varchar(10) DEFAULT NULL,
  `cust_first_name` varchar(45) DEFAULT NULL,
  `cust_surname` varchar(45) DEFAULT NULL,
  `cust_address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `passport_ID_num` varchar(45) DEFAULT NULL,
  `cust_tel_no` varchar(50) DEFAULT NULL,
  `cust_email_address` varchar(50) DEFAULT NULL,
  `cust_payment_preference` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_ID`),
  KEY `payment_ID` (`payment_ID`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`payment_ID`) REFERENCES `payment_methods` (`payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,2837,'Mr','Patrick','Moore','48436 Dorothy Burgs Suite 368 South Charlesshire, FL 44813','1985-10-10','P123456789','1514248285','iadams@zamora.net','PayPal'),(2,3964,'Mr','Joshua','Cruz','04656 Bowman Junction Apt. 604 South Lisa, NH 20301','1990-02-23','P987654321','4559047182','jacquelinewatson@hotmail.com','Credit Card'),(3,17223,'Mr','David','Schultz','USCGC Smith FPO AA 67962','1988-07-15','P112233445','6877621512','davissean@gmail.com','PayPal'),(4,20836,'Ms','Jacqueline','Mann','022 Rachel Wall North Kimberlyville, MA 59958','1992-03-18','P223344556','2557268494','imorrow@richardson.org','PayPal'),(5,23564,'Ms','Julie','Best','86025 Washington Spurs Apt. 263 Lake Christophermouth, LA 22562','1995-08-22','P334455667','3771193380','peterallen@brown.com','PayPal'),(6,30528,'Ms','Cindy','Johnson','962 Stephanie Forges Suite 592 Davidside, CT 07625','1989-12-01','P445566778','6847672235','gillkathleen@stark.info','Credit Card'),(7,36667,'Mr','Christopher','Lynch','5727 Rhonda Lane Suite 191 East Albert, ME 03521','1993-05-16','P556677889','1423754823','lbrown@wilcox-taylor.com','Credit Card'),(8,64425,'Mr','Darrell','Preston','231 Carter Groves Apt. 914 Port Andrewville, NV 12702','1982-11-29','P667788990','9504674575','kinglisa@gmail.com','Bank Transfer'),(9,65201,'Mr','Thomas','Lewis','9972 Wheeler Roads Cowanfort, NJ 38765','1978-06-05','P778899001','6804233214','jessica03@hotmail.com','Bank Transfer'),(10,104306,'Ms','Ann','Serrano','05598 Anthony Center Apt. 750 South Timothybury, ME 82518','1991-04-17','P889900112','5811422340','kevin29@gmail.com','Credit Card'),(11,141468,'Ms','Anna','Nelson','1519 Anderson Shoal South Stacyview, SD 68166','1992-01-28','P990011223','5770142648','zachary94@gmail.com','Credit Card'),(12,192997,'Mr','William','Flores','9925 Hinton Drive Apt. 943 North Robertchester, MO 41062','1984-12-10','P123321123','8608789073','hardingdiana@harper.com','PayPal'),(13,207333,'Ms','Jessica','Clark','173 Richardson Views Apt. 684 South Audreyborough, MI 79613','1987-08-11','P432543210','7500103540','jeffrey20@yahoo.com','Credit Card'),(14,210595,'Mr','Christopher','Richards','8992 Eugene Trafficway Port Jennifer, NJ 69742','1995-02-28','P564738290','3106342485','crobertson@gmail.com','Credit Card'),(15,213401,'Ms','John','Lopez','126 Johnson Parks Suite 540 Bryantside, CA 78238','1993-06-12','P234098234','1139158925','dmendez@hotmail.com','Bank Transfer'),(16,267832,'Mr','Virginia','Rowland','72486 Steven Square Port Andrew, NJ 40766','1980-11-19','P112233998','8520720654','pdodson@hotmail.com','PayPal'),(17,315995,'Ms','Olivia','Hayes','8097 Carol Plain Suite 834 Katiefort, OH 29501','1997-02-04','P567890123','9455458505','ruizjames@gmail.com','Bank Transfer'),(18,330802,'Mr','Sharon','Bowman','62021 Deborah Route Apt. 380 Holmesland, SC 08289','1985-03-28','P234567890','9445083860','melissaclark@hotmail.com','PayPal'),(19,351025,'Ms','Katie','Carpenter','318 Mills Flat Kellystad, MD 28311','1992-01-13','P345678901','4538397491','nbutler@yahoo.com','Bank Transfer'),(20,359011,'Mr','Kelly','Jones','1730 Karen Circle Suite 045 Martinland, KS 54199','1989-08-30','P789012345','7976856084','fanderson@williams-horn.net','Bank Transfer'),(21,369160,'Ms','John','Carter','347 Richard Creek Lake Rhonda, SD 68585','1994-06-06','P234567890','9163994751','kellifrazier@hotmail.com','PayPal'),(22,383070,'Mr','Joshua','Powell','6369 John Knolls Jasonhaven, MO 10966','1993-09-24','P876543210','8896321040','jessicacameron@hotmail.com','PayPal'),(23,388134,'Ms','Lisa','Owen','56139 Choi Garden Conniemouth, AR 98980','1986-11-21','P321098765','8226875823','bethany58@hall-harrison.info','Credit Card'),(24,398307,'Mr','Tony','Fisher','PSC 2883, Box 4892 APO AE 79927','1989-12-14','P654321987','1040516125','kayla48@martin.net','Credit Card'),(25,400671,'Mr','Nicholas','Lane','Unit 7373 Box 6593 DPO AP 51423','1991-07-02','P987654321','4406535315','angelawalters@hotmail.com','Credit Card'),(26,404637,'Ms','Brianna','Ruiz','045 Crawford Crescent Suite 811 East Michelle, MD 35819','1990-05-19','P765432109','5555455342','ylutz@miller-terry.com','PayPal'),(27,442376,'Mr','Donna','Bautista','8568 Maldonado Manors West Kimberlystad, NM 10603','1982-10-15','P876543210','6652984351','jamesellis@yahoo.com','Credit Card'),(28,445855,'Ms','Mary','Mcmahon','7030 Justin Camp Mclaughlinport, FL 34245','1995-11-20','P987654321','1153486137','ujones@yahoo.com','PayPal'),(29,477842,'Mr','Joshua','Hogan','54924 Darren Walk Suite 302 Ruthchester, CA 17175','1987-01-10','P345678901','9822862656','ehouston@perkins-valencia.info','PayPal'),(30,506592,'Ms','Kimberly','Thomas','15580 Warner Lights Lake Nicholas, AK 46339','1990-09-15','P765432109','2874771026','ericswanson@yahoo.com','PayPal'),(31,535567,'Mr','Juan','Miller','34068 Wilson Key Apt. 457 Port Tina, WI 06002','1982-02-06','P876543210','8497177307','johnny63@juarez.com','PayPal'),(32,562873,'Ms','Timothy','Gates','1074 Sanders Dam Choitown, PA 66457','1992-03-12','P765432109','2553150211','jmoody@contreras.com','Bank Transfer'),(33,612284,'Mr','Dana','Porter','00429 Brooke Lake Suite 985 Nicholasview, ND 16513','1986-08-10','P567890123','1935189023','whitejessica@kelley-smith.com','Bank Transfer'),(34,619102,'Ms','Thomas','Rodriguez','3792 April Ville Joneschester, AZ 31617','1995-04-25','P234567890','9514245565','robinsonkimberly@fuller-reyes.org','Credit Card'),(35,650049,'Mr','Kevin','Terry','7713 Alexis Road Paceside, NY 50355','1988-07-03','P789012345','2705453557','ortegalauren@yahoo.com','PayPal'),(36,685779,'Ms','Ashley','Cardenas','592 Robinson Way Rhodesburgh, CO 74406','1996-11-20','P987654321','4989201582','samuel56@williams.com','Bank Transfer'),(37,692402,'Mr','Monica','Hester','170 Karen Villages New Jason, DC 46714','1990-05-12','P654321987','1731063971','harrisonpatty@yahoo.com','Bank Transfer'),(38,705707,'Ms','Jasmine','Jones','7938 Jonathan Divide Suite 644 Byrdshire, OK 06942','1991-07-21','P234567890','7142957541','cory01@yahoo.com','Bank Transfer'),(39,707478,'Mr','Tammy','Li','USCGC Campos FPO AA 49064','1987-01-30','P123456789','8512384819','eduardodennis@yahoo.com','PayPal'),(40,744882,'Mr','Sean','Singh','51398 Clark Ramp Hayneston, KS 54695','1995-02-22','P345678901','5600989557','mbradley@richards-green.com','PayPal'),(41,752682,'Ms','Megan','Wright','3244 Quail Ridge Road East Mayport, CA 62484','1986-07-14','P432109876','4832216548','sarah47@brennan.com','PayPal'),(42,766779,'Mr','Oliver','Gray','10592 Oakwood Pass West Lampton, TX 80192','1990-10-01','P109876543','5593912048','brianalewis@frank.com','PayPal'),(43,774198,'Mr','Matthew','Miller','27664 Hilltop Place Suite 181 Shadyview, IN 92411','1982-04-08','P210987654','2652361489','collinsjoseph@richard.com','Credit Card'),(44,797130,'Ms','Catherine','Bryant','27920 Bowers Heights Apt. 483 Northridge, MN 54217','1990-09-10','P675849102','6799408322','yvettejones@yahoo.com','PayPal'),(45,843519,'Mr','Adam','Davis','51400 Morgan Circle East Laurenbury, VA 53760','1987-12-20','P654321987','9011523658','amandabrown@hotmail.com','PayPal'),(46,849319,'Ms','Gina','Nelson','96808 Beverly River West Ashburn, MA 68475','1992-05-05','P789012345','1448772545','kevin92@gmail.com','Bank Transfer'),(47,866181,'Mr','Jerry','Martinez','9331 Griffith Fields Apt. 980 Sutterport, UT 50272','1984-03-22','P876543210','9700214599','victor37@yahoo.com','Credit Card'),(48,956146,'Ms','Heather','Howard','6361 Hillend Gardens Apt. 640 South Rowlandtown, WI 43661','1990-10-18','P987654321','5319732189','suzanne91@yahoo.com','Bank Transfer'),(49,969637,'Mr','Cameron','Lopez','1272 River Road East Marrietta, NE 21578','1992-11-29','P123987654','6793897654','theresa16@gmail.com','PayPal'),(50,979969,'Ms','Andrea','Evans','71336 Davis Lane Suite 273 North Thomasland, MI 55270','1985-01-17','P876543210','1543947699','kylejones@hotmail.com','Credit Card');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `engineers`
--

DROP TABLE IF EXISTS `engineers`;
/*!50001 DROP VIEW IF EXISTS `engineers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `engineers` AS SELECT 
 1 AS `staff_ID`,
 1 AS `airport_ID`,
 1 AS `job_title`,
 1 AS `name`,
 1 AS `address`,
 1 AS `tel_no`,
 1 AS `email_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `flight_staff`
--

DROP TABLE IF EXISTS `flight_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_staff` (
  `staff_ID` int NOT NULL,
  `flight_ID` int NOT NULL,
  `flight_role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`,`flight_ID`),
  KEY `flight_ID` (`flight_ID`),
  CONSTRAINT `flight_staff_ibfk_1` FOREIGN KEY (`staff_ID`) REFERENCES `staff` (`staff_ID`),
  CONSTRAINT `flight_staff_ibfk_2` FOREIGN KEY (`flight_ID`) REFERENCES `flights` (`flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_staff`
--

LOCK TABLES `flight_staff` WRITE;
/*!40000 ALTER TABLE `flight_staff` DISABLE KEYS */;
INSERT INTO `flight_staff` VALUES (4,1,'Cabin Crew'),(4,17,'Pilot'),(4,24,'Cabin Crew'),(5,1,'Cabin Crew'),(5,17,'Pilot'),(5,24,'Pilot'),(6,2,'Cabin Crew'),(6,17,'Cabin Crew'),(6,24,'Cabin Crew'),(7,2,'Cabin Crew'),(7,25,'Pilot'),(8,3,'Cabin Crew'),(8,25,'Cabin Crew'),(9,3,'Cabin Crew'),(9,25,'Pilot'),(10,4,'Cabin Crew'),(10,25,'Cabin Crew'),(11,4,'Cabin Crew'),(11,26,'Pilot'),(12,5,'Cabin Crew'),(12,26,'Cabin Crew'),(13,5,'Cabin Crew'),(13,26,'Pilot'),(14,6,'Cabin Crew'),(14,26,'Cabin Crew'),(15,1,'Pilot'),(15,6,'Cabin Crew'),(15,17,'Cabin Crew'),(15,27,'Pilot'),(16,1,'Pilot'),(16,7,'Cabin Crew'),(16,18,'Pilot'),(16,27,'Cabin Crew'),(17,2,'Pilot'),(17,7,'Cabin Crew'),(17,18,'Cabin Crew'),(17,27,'Pilot'),(18,2,'Pilot'),(18,8,'Cabin Crew'),(18,18,'Pilot'),(18,27,'Cabin Crew'),(19,3,'Pilot'),(19,8,'Cabin Crew'),(19,18,'Cabin Crew'),(19,28,'Pilot'),(20,3,'Pilot'),(20,9,'Cabin Crew'),(20,19,'Pilot'),(20,28,'Cabin Crew'),(21,4,'Pilot'),(21,9,'Cabin Crew'),(21,19,'Cabin Crew'),(21,28,'Pilot'),(22,4,'Pilot'),(22,10,'Cabin Crew'),(22,19,'Pilot'),(22,28,'Cabin Crew'),(23,5,'Pilot'),(23,10,'Cabin Crew'),(23,19,'Cabin Crew'),(23,29,'Pilot'),(24,5,'Pilot'),(24,11,'Cabin Crew'),(24,20,'Pilot'),(24,29,'Cabin Crew'),(25,6,'Pilot'),(25,11,'Cabin Crew'),(25,20,'Cabin Crew'),(25,29,'Pilot'),(26,6,'Pilot'),(26,12,'Cabin Crew'),(26,20,'Pilot'),(26,29,'Cabin Crew'),(27,7,'Pilot'),(27,12,'Cabin Crew'),(27,20,'Cabin Crew'),(27,30,'Pilot'),(28,7,'Pilot'),(28,13,'Cabin Crew'),(28,21,'Pilot'),(28,30,'Cabin Crew'),(29,8,'Pilot'),(29,13,'Cabin Crew'),(29,21,'Cabin Crew'),(29,30,'Pilot'),(30,8,'Pilot'),(30,14,'Cabin Crew'),(30,21,'Pilot'),(30,30,'Cabin Crew'),(31,9,'Pilot'),(31,14,'Pilot'),(31,21,'Cabin Crew'),(32,9,'Pilot'),(32,14,'Cabin Crew'),(32,22,'Pilot'),(33,10,'Pilot'),(33,14,'Pilot'),(33,22,'Cabin Crew'),(34,10,'Pilot'),(34,15,'Cabin Crew'),(34,22,'Pilot'),(35,11,'Pilot'),(35,15,'Pilot'),(35,22,'Cabin Crew'),(36,11,'Pilot'),(36,15,'Cabin Crew'),(36,23,'Pilot'),(37,12,'Pilot'),(37,15,'Pilot'),(37,23,'Cabin Crew'),(38,12,'Pilot'),(38,16,'Cabin Crew'),(38,23,'Pilot'),(39,13,'Pilot'),(39,16,'Pilot'),(39,23,'Cabin Crew'),(40,13,'Pilot'),(40,16,'Cabin Crew'),(40,24,'Pilot');
/*!40000 ALTER TABLE `flight_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `flight_ID` int NOT NULL,
  `dep_airport_ID` varchar(4) DEFAULT NULL,
  `arr_airport_ID` varchar(4) DEFAULT NULL,
  `aircraft_ID` int DEFAULT NULL,
  `flight_number` varchar(10) DEFAULT NULL,
  `dep_date_time` datetime DEFAULT NULL,
  `arr_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`flight_ID`),
  KEY `dep_airport_ID` (`dep_airport_ID`),
  KEY `arr_airport_ID` (`arr_airport_ID`),
  KEY `aircraft_ID` (`aircraft_ID`),
  KEY `idx_flights_arr_airport_ID` (`arr_airport_ID`),
  KEY `idx_flights_arr_date_time` (`arr_date_time`),
  CONSTRAINT `flights_ibfk_1` FOREIGN KEY (`dep_airport_ID`) REFERENCES `airports` (`airport_ID`),
  CONSTRAINT `flights_ibfk_2` FOREIGN KEY (`arr_airport_ID`) REFERENCES `airports` (`airport_ID`),
  CONSTRAINT `flights_ibfk_3` FOREIGN KEY (`aircraft_ID`) REFERENCES `aircraft` (`aircraft_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'DXB','LHR',1,'FN001','2024-06-22 13:54:36','2024-10-12 01:49:53'),(2,'DXB','LHR',29,'FN002','2024-09-20 23:49:57','2024-01-24 04:53:15'),(3,'JFK','JFK',21,'FN003','2024-01-24 13:45:47','2024-06-11 19:49:00'),(4,'LAX','JFK',22,'FN004','2024-06-01 16:47:40','2024-01-28 18:09:11'),(5,'LHR','DXB',7,'FN005','2024-11-19 13:11:16','2024-04-09 00:17:14'),(6,'DXB','JFK',21,'FN006','2024-12-20 07:36:36','2024-04-20 08:02:30'),(7,'HND','LHR',38,'FN007','2024-12-14 19:19:13','2024-07-14 01:30:51'),(8,'DXB','LAX',2,'FN008','2024-02-11 01:17:31','2024-02-19 13:46:29'),(9,'HND','LAX',19,'FN009','2024-07-09 16:19:07','2024-10-05 14:06:18'),(10,'JFK','DXB',21,'FN010','2024-09-29 02:14:11','2024-01-31 17:00:59'),(11,'LAX','HND',6,'FN011','2024-03-08 04:25:50','2024-11-25 19:22:50'),(12,'LAX','DXB',22,'FN012','2024-12-12 01:21:48','2024-02-18 17:28:42'),(13,'HND','JFK',34,'FN013','2024-08-30 00:03:26','2024-11-24 07:04:40'),(14,'DXB','LAX',14,'FN014','2024-11-29 11:22:12','2024-04-13 01:23:22'),(15,'DXB','LHR',29,'FN015','2024-02-20 20:31:20','2024-11-28 14:47:48'),(16,'LAX','DXB',38,'FN016','2024-04-12 01:00:07','2024-09-27 16:16:40'),(17,'HND','JFK',6,'FN017','2024-04-10 01:39:35','2024-07-29 20:50:28'),(18,'HND','DXB',21,'FN018','2024-04-30 18:14:30','2024-02-25 16:08:55'),(19,'JFK','LAX',21,'FN019','2024-10-01 15:30:28','2024-10-29 23:37:56'),(20,'LAX','JFK',20,'FN020','2024-02-12 05:18:13','2024-03-22 07:42:18'),(21,'HND','DXB',30,'FN021','2024-02-06 23:46:05','2024-03-19 03:08:57'),(22,'DXB','LHR',9,'FN022','2024-03-13 13:37:50','2024-08-08 14:28:14'),(23,'DXB','LHR',7,'FN023','2024-02-10 07:32:22','2024-04-14 13:17:32'),(24,'DXB','LAX',14,'FN024','2024-04-15 20:07:21','2024-11-10 18:05:50'),(25,'HND','JFK',14,'FN025','2024-05-22 05:32:49','2024-03-14 04:16:29'),(26,'LHR','JFK',10,'FN026','2024-11-05 11:08:46','2024-11-05 10:08:21'),(27,'JFK','LHR',1,'FN027','2024-02-12 01:27:57','2024-01-06 19:29:22'),(28,'LHR','JFK',19,'FN028','2024-04-09 14:30:15','2024-04-04 22:36:51'),(29,'LHR','DXB',17,'FN029','2024-01-19 17:18:24','2024-05-05 05:33:47'),(30,'DXB','HND',30,'FN030','2024-03-10 13:12:23','2024-03-11 06:06:03'),(31,'HND','LAX',19,'FN031','2024-10-11 10:40:26','2024-10-08 14:22:27'),(32,'JFK','LHR',38,'FN032','2024-03-25 07:36:16','2024-04-25 00:30:06'),(33,'LHR','DXB',31,'FN033','2024-06-07 18:40:44','2024-04-17 19:46:47'),(34,'HND','DXB',20,'FN034','2024-04-09 11:32:35','2024-08-23 02:36:45'),(35,'DXB','JFK',33,'FN035','2024-02-15 02:54:47','2024-09-10 07:29:01'),(36,'LAX','DXB',6,'FN036','2024-12-30 12:33:36','2024-04-04 23:38:52'),(37,'LAX','JFK',13,'FN037','2024-10-21 14:37:43','2024-08-09 07:16:52'),(38,'LHR','LAX',40,'FN038','2024-11-29 12:35:57','2024-10-07 20:45:56'),(39,'LHR','JFK',1,'FN039','2024-12-25 07:44:33','2024-07-05 12:08:13'),(40,'JFK','LHR',37,'FN040','2024-12-09 04:15:08','2024-10-11 06:17:12'),(41,'DXB','LHR',5,'FN041','2024-01-10 14:12:36','2024-11-29 01:00:00'),(42,'JFK','DXB',3,'FN042','2024-07-18 20:13:44','2024-03-02 02:45:23'),(43,'LAX','HND',14,'FN043','2024-05-01 17:24:53','2024-10-22 09:05:30'),(44,'HND','DXB',11,'FN044','2024-10-10 02:50:40','2024-09-15 21:34:47'),(45,'LHR','JFK',8,'FN045','2024-11-17 03:39:55','2024-04-22 05:23:11'),(46,'DXB','LAX',6,'FN046','2024-08-15 22:12:26','2024-02-10 17:32:00'),(47,'LHR','DXB',12,'FN047','2024-12-05 11:03:00','2024-09-12 18:23:42'),(48,'JFK','LAX',31,'FN048','2024-10-22 12:45:01','2024-03-08 01:54:44'),(49,'HND','LHR',9,'FN049','2024-03-23 23:20:17','2024-07-29 09:15:32'),(50,'DXB','JFK',20,'FN050','2024-06-11 06:02:45','2024-01-15 08:22:55'),(51,'LAX','DXB',7,'FN051','2024-09-10 17:12:55','2024-11-10 15:34:12'),(52,'LHR','JFK',5,'FN052','2024-03-18 04:22:39','2024-06-23 09:11:41'),(53,'DXB','HND',14,'FN053','2024-05-10 15:11:52','2024-02-17 03:12:00'),(54,'JFK','LHR',37,'FN054','2024-07-19 11:09:21','2024-12-04 23:45:29'),(55,'LAX','DXB',16,'FN055','2024-08-01 14:21:50','2024-05-20 07:53:33');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ground_staff`
--

DROP TABLE IF EXISTS `ground_staff`;
/*!50001 DROP VIEW IF EXISTS `ground_staff`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ground_staff` AS SELECT 
 1 AS `staff_ID`,
 1 AS `airport_ID`,
 1 AS `job_title`,
 1 AS `name`,
 1 AS `address`,
 1 AS `tel_no`,
 1 AS `email_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lax_flights`
--

DROP TABLE IF EXISTS `lax_flights`;
/*!50001 DROP VIEW IF EXISTS `lax_flights`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lax_flights` AS SELECT 
 1 AS `flight_ID`,
 1 AS `cust_first_name`,
 1 AS `cust_surname`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lhr_flights`
--

DROP TABLE IF EXISTS `lhr_flights`;
/*!50001 DROP VIEW IF EXISTS `lhr_flights`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lhr_flights` AS SELECT 
 1 AS `flight_ID`,
 1 AS `cust_first_name`,
 1 AS `cust_surname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `event_ID` int NOT NULL,
  `aircraft_ID` int DEFAULT NULL,
  `airport_ID` varchar(4) DEFAULT NULL,
  `work_type` varchar(25) DEFAULT NULL,
  `work_detail` varchar(100) DEFAULT NULL,
  `event_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`event_ID`),
  KEY `aircraft_ID` (`aircraft_ID`),
  KEY `airport_ID` (`airport_ID`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`aircraft_ID`) REFERENCES `aircraft` (`aircraft_ID`),
  CONSTRAINT `maintenance_ibfk_2` FOREIGN KEY (`airport_ID`) REFERENCES `airports` (`airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,9,'LHR','Inspection','Two public knowledge.','2023-12-17 10:33:49'),(2,1,'HND','Overhaul','Make natural prevent but.','2023-12-14 12:15:30'),(3,38,'HND','Repair','Western administration easy everyone stuff us enough.','2023-12-05 14:20:11'),(4,10,'HND','Overhaul','Over its story who friend.','2023-12-03 08:55:22'),(5,9,'LHR','Inspection','Three time involve major pick.','2023-12-17 11:23:44'),(6,11,'HND','Repair','Wrong leader standard business yes he.','2023-12-10 19:01:02'),(7,31,'LAX','Inspection','Administration director defense report.','2023-12-18 16:22:34'),(8,18,'HND','Repair','Cold natural middle skin beyond success.','2023-12-23 14:10:50'),(9,3,'HND','Repair','Will defense better apply trouble quite.','2023-12-20 08:14:17'),(10,7,'LAX','Overhaul','President lot relate task eat fast.','2023-12-21 09:22:30'),(11,18,'LHR','Overhaul','Statement skill industry walk industry.','2023-12-02 18:25:03'),(12,27,'HND','Repair','Number yeah until middle stay level.','2023-12-26 13:33:10'),(13,7,'HND','Repair','Traditional first raise teach.','2023-12-27 15:07:48'),(14,36,'LHR','Inspection','Fall television series magazine least ready.','2023-12-14 07:58:32'),(15,37,'HND','Overhaul','Health red trouble give best trial.','2023-12-12 12:44:19'),(16,6,'HND','Overhaul','Market everybody ever process design alone.','2023-12-22 08:18:24'),(17,4,'JFK','Inspection','Machine up laugh modern pretty.','2023-12-25 11:32:55'),(18,2,'LAX','Overhaul','Thing collection great measure mouth right.','2023-12-18 07:20:02'),(19,27,'HND','Repair','Hold enter table ok.','2023-12-09 14:11:45'),(20,12,'LAX','Inspection','Skin let employee something provide.','2023-12-17 18:01:19'),(21,12,'HND','Inspection','Smile south factor produce.','2023-12-16 15:12:50'),(22,5,'LHR','Inspection','Free them whose house own hospital.','2023-12-22 16:50:12'),(23,27,'HND','Overhaul','Top after thing movie up.','2023-12-03 09:42:03'),(24,3,'JFK','Repair','We affect official certain whole.','2023-12-15 14:38:27'),(25,23,'HND','Repair','Officer then skill.','2023-12-28 16:58:46'),(26,36,'HND','Overhaul','Consumer seem speak visit.','2023-12-19 13:14:52'),(27,27,'LHR','Repair','Color nothing quality budget later.','2023-12-20 12:21:12'),(28,25,'LAX','Overhaul','Staff machine discuss carry which.','2023-12-27 10:43:59'),(29,15,'HND','Overhaul','Open recent body mission draw air issue.','2023-12-21 11:55:31'),(30,21,'LHR','Inspection','Inside laugh wrong street.','2023-12-14 17:03:10'),(31,38,'HND','Repair','Task late thus.','2023-12-23 16:28:44'),(32,13,'HND','Overhaul','Teach agree mind require develop.','2023-12-10 07:11:11'),(33,8,'LHR','Inspection','Team too employee hope public.','2023-12-04 09:09:27'),(34,4,'HND','Inspection','Establish weight number.','2023-12-18 16:52:36'),(35,34,'LAX','Inspection','Other company site young discuss once.','2023-12-09 18:14:11'),(36,23,'HND','Repair','Former computer model week.','2023-12-28 12:42:40'),(37,32,'HND','Repair','Add tonight I sister camera.','2023-12-12 08:09:29'),(38,4,'HND','Repair','Factor event at interesting glass participant factor.','2023-12-25 19:13:15'),(39,2,'LHR','Repair','Box our just action.','2023-12-17 13:38:07'),(40,23,'HND','Repair','According apply politics learn wind their.','2023-12-03 11:42:56'),(41,9,'LHR','Inspection','Scheduled check on engine performance.','2023-12-20 14:17:05'),(42,9,'HND','Repair','Fix issues with hydraulic system.','2023-12-14 10:25:30'),(43,7,'HND','Overhaul','Full maintenance of avionics system.','2023-12-21 09:37:22'),(44,7,'HND','Inspection','Inspect airframe and wings for stress cracks.','2023-12-18 13:55:02'),(45,6,'JFK','Repair','Repair damage to fuselage.','2023-12-23 11:11:44'),(46,6,'HND','Overhaul','Replace fuel system components.','2023-12-15 10:02:33');
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `payment_ID` int NOT NULL,
  `payment_type` varchar(45) DEFAULT NULL,
  `payment_provider` varchar(45) DEFAULT NULL,
  `credit_card_number` varchar(25) DEFAULT NULL,
  `exp_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (2837,'Bank Transfer','American Express','2786017405945542','07/26'),(3964,'Credit Card','PayPal','5322187061076969','06/30'),(17223,'Google Pay','MasterCard','3311324444535806','08/24'),(20836,'Google Pay','Stripe','4316120946690036','03/24'),(23564,'Debit Card','Discover','5161414300187544','10/25'),(30528,'Bank Transfer','Stripe','6709825110179545','07/26'),(36667,'Credit Card','Discover','1493156990981424','12/24'),(64425,'Credit Card','Stripe','7331795045479785','07/25'),(65201,'PayPal','American Express','5547176019816655','04/26'),(104306,'Google Pay','Stripe','5654392128604975','07/24'),(141468,'Debit Card','Visa','6591286735185645','11/29'),(192997,'Apple Pay','MasterCard','2945770537700066','12/29'),(207333,'Debit Card','Visa','3810767960198919','10/29'),(210595,'Bank Transfer','American Express','8413465859348699','10/24'),(213401,'Google Pay','MasterCard','4265905498780761','02/26'),(267832,'Bank Transfer','Stripe','9133249024323794','12/26'),(315995,'Bank Transfer','Stripe','3360378391251662','09/25'),(330802,'PayPal','Discover','4613359022543179','07/28'),(351025,'Debit Card','PayPal','9861177489586561','10/29'),(359011,'Bank Transfer','American Express','4682346346586535','12/26'),(369160,'Debit Card','Discover','9334597724226362','12/28'),(383070,'Google Pay','MasterCard','1757194554073295','10/30'),(388134,'Debit Card','American Express','2646547654918198','04/29'),(398307,'PayPal','American Express','6371249143395900','01/26'),(400671,'Credit Card','American Express','5750669395750525','06/28'),(404637,'Bank Transfer','American Express','6729411107332333','05/28'),(442376,'Debit Card','PayPal','3021813457749264','10/27'),(445855,'Debit Card','MasterCard','8312391254724759','07/25'),(477842,'Bank Transfer','PayPal','4884115985936976','05/30'),(506592,'Credit Card','Discover','6627876528450919','01/24'),(535567,'Bank Transfer','Stripe','8595557244321966','04/29'),(562873,'Google Pay','American Express','3840625178029278','11/25'),(612284,'Apple Pay','PayPal','8585513368557985','05/24'),(619102,'PayPal','Stripe','4466152654615535','12/28'),(650049,'Apple Pay','MasterCard','8931428957220280','09/28'),(685779,'Google Pay','American Express','9648387479894643','09/25'),(692402,'PayPal','American Express','4361271953406085','09/28'),(705707,'Apple Pay','Visa','1087810618092257','03/27'),(707478,'Debit Card','Visa','4657397032411840','06/29'),(744882,'PayPal','MasterCard','9978407409195871','02/30'),(752682,'PayPal','Stripe','8001735665322299','08/25'),(766779,'Credit Card','American Express','9499578472899331','04/26'),(774198,'Apple Pay','MasterCard','9004697378392188','05/28'),(797130,'Debit Card','Discover','7828653270952337','07/24'),(843519,'Google Pay','Visa','8449627240840593','03/26'),(849319,'Google Pay','Stripe','3060058150832554','04/23'),(866181,'Google Pay','Discover','2533147168487435','03/25'),(956146,'Credit Card','Visa','4952288642579566','07/27'),(969637,'Credit Card','American Express','9029157254171647','01/28'),(979969,'Bank Transfer','Visa','5351250401126040','08/26');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_ID` int NOT NULL,
  `airport_ID` varchar(4) DEFAULT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel_no` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`),
  KEY `airport_ID` (`airport_ID`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`airport_ID`) REFERENCES `airports` (`airport_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'JFK','Technician','Adam Turner','503 Kennedy Camp Suite 808 New Andreaport, MO 49781','1219764428','mhernandez@gmail.com'),(2,'LHR','Technician','Carol Anderson','6897 Villanueva Ridges Apt. 038Ashleyburgh, MS 65240','3606746064','watsonholly@hotmail.com'),(3,'LAX','Technician','Jessica Washington','Unit 0285 Box 6394 DPO AP 58941','9774656145','gregorypaul@jenkins.com'),(4,'DXB','Cabin Crew','Samuel Eaton','4488 Karen Walks Mariaport, NV 68824','8320139695','scott98@robinson-browning.com'),(5,'JFK','Technician','Peter Nichols','06886 Tiffany Station Port Nancymouth, SC 63879','1137820076','buckamanda@gmail.com'),(6,'DXB','Technician','Lisa Craig','086 Castro Mills North Charles, VT 42357','2064513215','martingeorge@logan.net'),(7,'HND','Cabin Crew','Mark Koch','468 Margaret Highway Suite 228 Hillfort, OK 77894','6352441449','xcooper@sanchez.com'),(8,'LAX','Cabin Crew','Andrew Price','0255 Alex Lake Osborneville, NH 93799','1481762974','aprilrobles@adams.com'),(9,'JFK','Cabin Crew','April Rios','701 Jones Springs Suite 593 Lake Shawnstad, ND 20333','7601594019','johnsonandrea@wilcox-cortez.com'),(10,'DXB','Cabin Crew','Dawn Rowe','777 Gabriel Ville Roseville, KY 41309','3556149114','wumatthew@gmail.com'),(11,'LAX','Ground Staff','Victoria Peterson','361 Holland Parks Apt. 402 Brownbury, RI 71208','2164513756','wilsontaylor@davis-arellano.com'),(12,'HND','Cabin Crew','James Berry','51766 Steven Forest Apt. 298 South Veronicafurt, MD 30144','8150440125','lee70@frazier.com'),(13,'JFK','Technician','Felicia Smith','3196 Cooper Ramp West Mark, AK 04716','4107285585','millersusan@ford.com'),(14,'LAX','Technician','Grace Ortega','95252 Richards Pines Crystalchester, MN 25333','1728619706','elizabeth47@hotmail.com'),(15,'DXB','Pilot','Cindy Griffin','878 Steven Ways North Travis, NM 37661','1565564089','transhirley@hicks.com'),(16,'LAX','Pilot','Jennifer Butler','22259 Rodriguez Wall Suite 093 South Thomas, ND 02172','6412681286','markpowers@hotmail.com'),(17,'LAX','Technician','Jennifer Haynes','846 Kevin Extension Apt. 906 Graytown, IA 66077','8638335659','evanswanda@gomez-graham.com'),(18,'JFK','Ground Staff','Jennifer Lewis','203 Rocha Ford Port Michaelhaven, ND 62717','5288205951','jonathanschneider@yahoo.com'),(19,'DXB','Ground Staff','Linda Schwartz','Unit 8736 Box 8953 DPO AP 79939','8398457852','benjamin08@collins.com'),(20,'LAX','Cabin Crew','Lauren Thomas','2795 Michelle Overpass North Ashleyberg, MN 64145','6727304528','brittanysmith@yahoo.com'),(21,'JFK','Ground Staff','Jessica Singleton','121 Richardson Alley Suite 929 Barrystad, ID 53115','4114410356','jamesbailey@gmail.com'),(22,'LAX','Ground Staff','Amanda Martin','757 Murray Union Lake Johnhaven, CT 77220','9399953972','rmorgan@hotmail.com'),(23,'DXB','Technician','Mary Oconnell','75528 Stephen Point Suite 854 Edwardfurt, SD 83163','9013412189','thomas47@hotmail.com'),(24,'DXB','Ground Staff','Jeremy Myers III','99228 Carl Prairie Richardbury, WV 77582','6029720379','vmoore@gmail.com'),(25,'JFK','Pilot','Laura Alexander','94095 Shirley Loaf Suite 002 New Brianburgh, ME 35076','9574256291','debra83@glenn-bradley.info'),(26,'LHR','Cabin Crew','Stephanie Williams','06682 Lewis Haven Apt. 204 Marktown, KY 99877','6229671361','kristen56@perez-porter.net'),(27,'DXB','Ground Staff','Matthew Carson','7402 David Manors Apt. 487 Raymondview, NC 13922','5832362250','elizabethwalker@hotmail.com'),(28,'DXB','Pilot','Paul Guerra','51447 Brandon Locks Fordfurt, UT 20790','2635543965','carterrachel@price.com'),(29,'LAX','Technician','Wayne Reyes','27224 Watts Keys Port Charles, UT 24169','2276657457','nicholasgarcia@yahoo.com'),(30,'JFK','Cabin Crew','Candace Nelson','PSC 1397, Box 9978 APO AP 66491','2435113065','jesse41@thomas-green.com'),(31,'LAX','Cabin Crew','Robert Dickerson','212 Brian Union Suite 323 Jeremiahview, MO 82253','6852331858','pallen@stewart.com'),(32,'LHR','Pilot','Allison Lopez','672 Jeremy Ranch Apt. 025 South Rachel, KY 59072','5578225330','jeanettelittle@gmail.com'),(33,'LAX','Technician','Samuel Richmond','713 Juan Ports East Jamiechester, IN 82962','1787243392','marydavis@smith.biz'),(34,'LHR','Technician','Laurie Strickland','PSC 8444, Box 5232 APO AP 01811','9466983713','marythompson@mercer-baker.biz'),(35,'JFK','Ground Staff','Ashley Smith','8591 Samuel Field East Laura, VA 87850','1707891753','donald51@long.com'),(36,'LHR','Pilot','Cynthia Stephenson','61927 Jon Drives Suite 428 South Christianberg, CA 98219','5255049593','mistymoore@yahoo.com'),(37,'HND','Ground Staff','Juan Thomas','944 Phillips Islands Murphyhaven, CT 51650','8404131925','rosekatherine@thomas-callahan.com'),(38,'LAX','Pilot','Kelli Ward','545 Ramos Crest Apt. 209 South Paul, TN 61899','1932490964','gonzalezfrederick@diaz.org'),(39,'JFK','Ground Staff','Scott Odonnell','4202 Flowers Land Kathrynberg, MN 06438','4728499469','brownjoseph@anderson-smith.info'),(40,'LAX','Cabin Crew','Jordan Dixon','911 Keith Port Apt. 923 Masonport, WY 05654','7640656955','johngriffin@hotmail.com');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `engineers`
--

/*!50001 DROP VIEW IF EXISTS `engineers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `engineers` AS select `staff`.`staff_ID` AS `staff_ID`,`staff`.`airport_ID` AS `airport_ID`,`staff`.`job_title` AS `job_title`,`staff`.`name` AS `name`,`staff`.`address` AS `address`,`staff`.`tel_no` AS `tel_no`,`staff`.`email_address` AS `email_address` from `staff` where (`staff`.`job_title` not in ('pilot','cabin crew','ground staff')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ground_staff`
--

/*!50001 DROP VIEW IF EXISTS `ground_staff`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ground_staff` AS select `staff`.`staff_ID` AS `staff_ID`,`staff`.`airport_ID` AS `airport_ID`,`staff`.`job_title` AS `job_title`,`staff`.`name` AS `name`,`staff`.`address` AS `address`,`staff`.`tel_no` AS `tel_no`,`staff`.`email_address` AS `email_address` from `staff` where (`staff`.`job_title` not in ('pilot','cabin crew')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lax_flights`
--

/*!50001 DROP VIEW IF EXISTS `lax_flights`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lax_flights` AS select `flights`.`flight_ID` AS `flight_ID`,`customers`.`cust_first_name` AS `cust_first_name`,`customers`.`cust_surname` AS `cust_surname` from (((`flights` join `bookings` on((`flights`.`flight_ID` = `bookings`.`flight_ID`))) join `customer_bookings` on((`bookings`.`booking_ID` = `customer_bookings`.`booking_ID`))) join `customers` on((`customer_bookings`.`customer_ID` = `customers`.`customer_ID`))) where (`flights`.`arr_airport_ID` = 'lax') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lhr_flights`
--

/*!50001 DROP VIEW IF EXISTS `lhr_flights`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lhr_flights` AS select `flights`.`flight_ID` AS `flight_ID`,`customers`.`cust_first_name` AS `cust_first_name`,`customers`.`cust_surname` AS `cust_surname` from (((`flights` join `bookings` on((`flights`.`flight_ID` = `bookings`.`flight_ID`))) join `customer_bookings` on((`bookings`.`booking_ID` = `customer_bookings`.`booking_ID`))) join `customers` on((`customer_bookings`.`customer_ID` = `customers`.`customer_ID`))) where (`flights`.`arr_airport_ID` = 'lhr') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24  5:42:44
