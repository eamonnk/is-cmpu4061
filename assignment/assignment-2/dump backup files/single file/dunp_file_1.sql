-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: airline_6_fk
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
  `seat_capacity` int DEFAULT NULL,
  `min_num_staff_required_to_operate` int DEFAULT NULL,
  PRIMARY KEY (`aircraft_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aircraft`
--

LOCK TABLES `aircraft` WRITE;
/*!40000 ALTER TABLE `aircraft` DISABLE KEYS */;
INSERT INTO `aircraft` VALUES (1,361,5),(2,275,6),(3,208,6),(4,251,6),(5,374,7),(6,223,13),(7,350,6),(8,332,11),(9,188,11),(10,263,5),(11,221,5),(12,168,6),(13,191,6),(14,229,5),(15,375,10),(16,320,6),(17,374,8),(18,288,6),(19,382,10),(20,162,7),(21,355,11),(22,251,10),(23,319,13),(24,262,12),(25,394,6),(26,335,6),(27,319,11),(28,189,10),(29,156,6),(30,343,13),(31,326,7),(32,197,7),(33,223,10),(34,164,10),(35,160,5),(36,309,5),(37,271,7),(38,179,11),(39,261,11),(40,397,11);
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
INSERT INTO `airports` VALUES ('AMS','Amsterdam Schiphol','Amsterdam, Netherlands'),('ATL','Hartsfield–Jackson Atlanta International','Atlanta, Georgia, USA'),('CDG','Charles de Gaulle International','Roissy-en-France, France'),('DXB','Dubai International','Dubai, UAE'),('FRA','Frankfurt Airport','Frankfurt, Germany'),('HKG','Hong Kong International','Chek Lap Kok, Hong Kong'),('HND','Tokyo Hanedal','Tokyo, Japan'),('ICN','Incheon International','Incheon, South Korea'),('JFK','John F. Kennedy International','Queens, New York, USA'),('JNB','O.R. Tambo International','Johannesburg, South Africa'),('LAX','Los Angeles International','Los Angeles, California, USA'),('LHR','London Heathrow','Longford, London, UK'),('MUC','Munich Airport','Munich, Germany'),('ORD','OHare International','Chicago, Illinois, USA'),('SEA','Seattle-Tacoma International','Seattle, Washington, USA'),('SFO','San Francisco International','San Mateo County, California, USA'),('SIN','Singapore Changi Airport','Changi, Singapore'),('SYD','Sydney Kingsford Smith','Sydney, New South Wales, Australia'),('YVR','Vancouver International','Vancouver, British Columbia, Canada'),('ZRH','Zurich Airport','Zurich, Switzerland');
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
  `booking_date_time` datetime DEFAULT NULL,
  `payment_status` tinyint(1) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `seat_number` varchar(5) DEFAULT NULL,
  `cust_checked_in` tinyint(1) DEFAULT NULL,
  `cust_boarded` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`booking_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (1,'2024-12-15 10:00:00',0,1449.03,'19C',1,0),(2,'2024-12-16 11:00:00',0,501.91,'12A',0,1),(3,'2024-12-17 12:00:00',1,627.84,'5C',0,0),(4,'2024-12-18 13:00:00',0,381.91,'28A',0,1),(5,'2024-12-19 14:00:00',0,1268.95,'20A',1,1),(6,'2024-12-20 15:00:00',1,856.89,'19D',1,0),(7,'2024-12-21 16:00:00',0,226.30,'23A',0,1),(8,'2024-12-22 17:00:00',0,1242.91,'18C',0,0),(9,'2024-12-23 18:00:00',0,997.33,'17B',0,0),(10,'2024-12-09 19:00:00',1,1303.75,'29B',1,1),(11,'2024-12-11 20:00:00',0,827.96,'30D',1,0),(12,'2024-11-26 21:00:00',1,772.56,'2C',1,1),(13,'2024-10-27 22:00:00',1,1239.89,'6B',1,1),(14,'2024-09-18 22:00:00',1,178.62,'11C',1,1),(15,'2024-09-15 22:00:00',1,1221.62,'1D',0,1),(16,'2024-12-23 22:00:00',0,895.95,'22A',0,1),(17,'2024-07-21 22:00:00',1,276.35,'25D',1,0),(18,'2024-06-19 04:00:00',0,1229.76,'16C',0,1),(19,'2024-11-16 17:00:00',1,106.10,'21C',1,1),(20,'2024-10-27 11:00:00',1,448.27,'7B',1,0),(21,'2024-04-03 02:00:00',0,1434.99,'23D',0,1),(22,'2024-03-05 09:00:00',0,840.42,'13D',0,1),(23,'2024-08-14 06:00:00',1,1272.18,'30C',1,0),(24,'2024-09-09 07:00:00',0,251.53,'21D',1,1),(25,'2024-07-10 08:00:00',1,1464.35,'26B',0,0),(26,'2024-10-14 11:00:00',1,675.91,'5D',0,1),(27,'2024-11-12 10:00:00',1,1475.69,'20C',1,1),(28,'2024-10-13 09:00:00',1,1492.03,'26B',1,1),(29,'2024-11-07 08:00:00',1,169.73,'7A',0,1),(30,'2024-09-17 19:00:00',1,550.02,'23A',1,0),(31,'2024-08-15 21:00:00',1,732.10,'20D',0,1),(32,'2024-07-07 22:00:00',0,235.82,'13D',0,0),(33,'2024-11-18 23:00:00',1,1158.13,'4A',0,1),(34,'2024-12-19 23:00:00',0,963.19,'15B',0,1),(35,'2024-01-29 22:00:00',0,635.82,'21A',0,0),(36,'2024-07-29 15:00:00',1,500.43,'14C',1,1),(37,'2024-02-29 14:00:00',1,755.58,'19D',1,1),(38,'2024-01-29 07:00:00',1,294.71,'9C',1,1),(39,'2024-09-29 02:00:00',1,1498.90,'8D',0,0),(40,'2024-11-29 09:00:00',1,529.31,'11A',0,1);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_ID` int NOT NULL,
  `cust_first_name` varchar(45) DEFAULT NULL,
  `cust_surname` varchar(45) DEFAULT NULL,
  `cust_address` varchar(255) DEFAULT NULL,
  `cust_tel_no` varchar(50) DEFAULT NULL,
  `cust_email_address` varchar(45) DEFAULT NULL,
  `cust_payment_preference` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Patrick','Moore','1 main street, future city','1514248285','iadams@zamora.net','PayPal'),(2,'Joshua','Cruz','04656 Bowman Junction Apt. 604\nSouth Lisa, NH 20301','4559047182','jacquelinewatson@hotmail.com','Credit Card'),(3,'David','Schultz','9875 heavy road hill california','6877621512','davissean@gmail.com','PayPal'),(4,'Jacqueline','Mann','022 Rachel Wall\nNorth Kimberlyville, MA 59958','2557268494','imorrow@richardson.org','PayPal'),(5,'Julie','Best','86025 Washington Spurs Apt. 263\nLake Christophermouth, LA 22562','3771193380','peterallen@brown.com','PayPal'),(6,'Cindy','Johnson','962 Stephanie Forges Suite 592\nDavidside, CT 07625','6847672235','gillkathleen@stark.info','Credit Card'),(7,'Christopher','Lynch','5727 Rhonda Lane Suite 191\nEast Albert, ME 03521','1423754823','lbrown@wilcox-taylor.com','Credit Card'),(8,'Darrell','Preston','231 Carter Groves Apt. 914\nPort Andrewville, NV 12702','9504674575','kinglisa@gmail.com','Bank Transfer'),(9,'Thomas','Lewis','9972 Wheeler Roads\nCowanfort, NJ 38765','6804233214','jessica03@hotmail.com','Bank Transfer'),(10,'Ann','Serrano','05598 Anthony Center Apt. 750\nSouth Timothybury, ME 82518','5811422340','kevin29@gmail.com','Credit Card'),(11,'Anna','Nelson','1519 Anderson Shoal\nSouth Stacyview, SD 68166','5770142648','zachary94@gmail.com','Credit Card'),(12,'William','Flores','9925 Hinton Drive Apt. 943\nNorth Robertchester, MO 41062','8608789073','hardingdiana@harper.com','PayPal'),(13,'Jessica','Clark','173 Richardson Views Apt. 684\nSouth Audreyborough, MI 79613','7500103540','jeffrey20@yahoo.com','Credit Card'),(14,'Christopher','Richards','8992 Eugene Trafficway\nPort Jennifer, NJ 69742','3106342485','crobertson@gmail.com','Credit Card'),(15,'John','Lopez','126 Johnson Parks Suite 540\nBryantside, CA 78238','1139158925','dmendez@hotmail.com','Bank Transfer'),(16,'Virginia','Rowland','72486 Steven Square\nPort Andrew, NJ 40766','8520720654','pdodson@hotmail.com','PayPal'),(17,'Olivia','Hayes','8097 Carol Plain Suite 834\nKatiefort, OH 29501','9455458505','ruizjames@gmail.com','Bank Transfer'),(18,'Sharon','Bowman','62021 Deborah Route Apt. 380\nHolmesland, SC 08289','9445083860','melissaclark@hotmail.com','PayPal'),(19,'Katie','Carpenter','318 Mills Flat\nKellystad, MD 28311','4538397491','nbutler@yahoo.com','Bank Transfer'),(20,'Kelly','Jones','1730 Karen Circle Suite 045\nMartinland, KS 54199','7976856084','fanderson@williams-horn.net','Bank Transfer'),(21,'John','Carter','347 Richard Creek\nLake Rhonda, SD 68585','9163994751','kellifrazier@hotmail.com','PayPal'),(22,'Joshua','Powell','6369 John Knolls\nJasonhaven, MO 10966','8896321040','jessicacameron@hotmail.com','PayPal'),(23,'Lisa','Owen','56139 Choi Garden\nConniemouth, AR 98980','8226875823','bethany58@hall-harrison.info','Credit Card'),(24,'Tony','Fisher','PSC 2883, Box 4892\nAPO AE 79927','1040516125','kayla48@martin.net','Credit Card'),(25,'Nicholas','Lane','Unit 7373 Box 6593\nDPO AP 51423','4406535315','angelawalters@hotmail.com','Credit Card'),(26,'Brianna','Ruiz','045 Crawford Crescent Suite 811\nEast Michelle, MD 35819','5555455342','ylutz@miller-terry.com','PayPal'),(27,'Donna','Bautista','8568 Maldonado Manors\nWest Kimberlystad, NM 10603','6652984351','jamesellis@yahoo.com','Credit Card'),(28,'Mary','Mcmahon','7030 Justin Camp\nMclaughlinport, FL 34245','1153486137','ujones@yahoo.com','PayPal'),(29,'Joshua','Hogan','54924 Darren Walk Suite 302\nRuthchester, CA 17175','9822862656','ehouston@perkins-valencia.info','PayPal'),(30,'Kimberly','Thomas','15580 Warner Lights\nLake Nicholas, AK 46339','2874771026','ericswanson@yahoo.com','PayPal'),(31,'Juan','Miller','34068 Wilson Key Apt. 457\nPort Tina, WI 06002','8497177307','johnny63@juarez.com','PayPal'),(32,'Timothy','Gates','1074 Sanders Dam\nChoitown, PA 66457','2553150211','jmoody@contreras.com','Bank Transfer'),(33,'Dana','Porter','00429 Brooke Lake Suite 985\nNicholasview, ND 16513','1935189023','whitejessica@kelley-smith.com','Bank Transfer'),(34,'Thomas','Rodriguez','3792 April Ville\nJoneschester, AZ 31617','9514245565','robinsonkimberly@fuller-reyes.org','Credit Card'),(35,'Kevin','Terry','7713 Alexis Road\nPaceside, NY 50355','2705453557','ortegalauren@yahoo.com','PayPal'),(36,'Ashley','Cardenas','592 Robinson Way\nRhodesburgh, CO 74406','4989201582','samuel56@williams.com','Bank Transfer'),(37,'Monica','Hester','170 Karen Villages\nNew Jason, DC 46714','1731063971','harrisonpatty@yahoo.com','Bank Transfer'),(38,'Jasmine','Jones','7938 Jonathan Divide Suite 644\nByrdshire, OK 06942','7142957541','cory01@yahoo.com','Bank Transfer'),(39,'Tammy','Li','USCGC Campos\nFPO AA 49064','8512384819','eduardodennis@yahoo.com','PayPal'),(40,'Sean','Singh','51398 Clark Ramp\nHayneston, KS 54695','5600989557','mbradley@richards-green.com','PayPal');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_staff`
--

DROP TABLE IF EXISTS `flight_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_staff` (
  `flight_role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_staff`
--

LOCK TABLES `flight_staff` WRITE;
/*!40000 ALTER TABLE `flight_staff` DISABLE KEYS */;
INSERT INTO `flight_staff` VALUES ('Cabin Crew'),('flight_role'),('Cabin Crew'),('Captain'),('First Officer'),('First Officer'),('First Officer'),('Captain'),('First Officer'),('First Officer'),('Captain'),('Cabin Crew'),('Captain'),('Captain'),('Cabin Crew'),('Cabin Crew'),('First Officer'),('First Officer'),('Cabin Crew'),('Captain'),('Cabin Crew'),('Captain'),('Captain'),('Cabin Crew'),('First Officer'),('Captain'),('Cabin Crew'),('First Officer'),('Captain'),('First Officer'),('Captain'),('First Officer'),('First Officer'),('Cabin Crew'),('Captain'),('Captain'),('Captain'),('First Officer'),('Cabin Crew'),('Captain'),('First Officer'),('Captain'),('flight_role');
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
  `flight_number` varchar(10) DEFAULT NULL,
  `dep_date_time` datetime DEFAULT NULL,
  `arr_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`flight_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'FN001','2024-06-22 13:54:36','2024-10-12 01:49:53'),(2,'FN002','2024-09-20 23:49:57','2024-01-24 04:53:15'),(3,'FN003','2024-01-24 13:45:47','2024-06-11 19:49:00'),(4,'FN004','2024-06-01 16:47:40','2024-01-28 18:09:11'),(5,'FN005','2024-11-19 13:11:16','2024-04-09 00:17:14'),(6,'FN006','2024-12-20 07:36:36','2024-04-20 08:02:30'),(7,'FN007','2024-12-14 19:19:13','2024-07-14 01:30:51'),(8,'FN008','2024-02-11 01:17:31','2024-02-19 13:46:29'),(9,'FN009','2024-07-09 16:19:07','2024-10-05 14:06:18'),(10,'FN010','2024-09-29 02:14:11','2024-01-31 17:00:59'),(11,'FN011','2024-03-08 04:25:50','2024-11-25 19:22:50'),(12,'FN012','2024-12-12 01:21:48','2024-02-18 17:28:42'),(13,'FN013','2024-08-30 00:03:26','2024-11-24 07:04:40'),(14,'FN014','2024-11-29 11:22:12','2024-04-13 01:23:22'),(15,'FN015','2024-02-20 20:31:20','2024-11-28 14:47:48'),(16,'FN016','2024-04-12 01:00:07','2024-09-27 16:16:40'),(17,'FN017','2024-04-10 01:39:35','2024-07-29 20:50:28'),(18,'FN018','2024-04-30 18:14:30','2024-02-25 16:08:55'),(19,'FN019','2024-10-01 15:30:28','2024-10-29 23:37:56'),(20,'FN020','2024-02-12 05:18:13','2024-03-22 07:42:18'),(21,'FN021','2024-02-06 23:46:05','2024-03-19 03:08:57'),(22,'FN022','2024-03-13 13:37:50','2024-08-08 14:28:14'),(23,'FN023','2024-02-10 07:32:22','2024-04-14 13:17:32'),(24,'FN024','2024-04-15 20:07:21','2024-11-10 18:05:50'),(25,'FN025','2024-05-22 05:32:49','2024-03-14 04:16:29'),(26,'FN026','2024-11-05 11:08:46','2024-11-05 10:08:21'),(27,'FN027','2024-02-12 01:27:57','2024-01-06 19:29:22'),(28,'FN028','2024-04-09 14:30:15','2024-04-04 22:36:51'),(29,'FN029','2024-01-19 17:18:24','2024-05-05 05:33:47'),(30,'FN030','2024-03-10 13:12:23','2024-03-11 06:06:03'),(31,'FN031','2024-10-11 10:40:26','2024-10-08 14:22:27'),(32,'FN032','2024-03-25 07:36:16','2024-04-25 00:30:06'),(33,'FN033','2024-06-07 18:40:44','2024-04-17 19:46:47'),(34,'FN034','2024-04-09 11:32:35','2024-08-23 02:36:45'),(35,'FN035','2024-02-15 02:54:47','2024-09-10 07:29:01'),(36,'FN036','2024-12-30 12:33:36','2024-04-04 23:38:52'),(37,'FN037','2024-10-21 14:37:43','2024-08-09 07:16:52'),(38,'FN038','2024-11-29 12:35:57','2024-10-07 20:45:56'),(39,'FN039','2024-12-25 07:44:33','2024-07-05 12:08:13'),(40,'FN040','2024-12-09 04:15:08','2024-10-11 06:17:12');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `event_ID` int NOT NULL,
  `work_type` varchar(25) DEFAULT NULL,
  `work_detail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`event_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1001,'Engine Check','Routine engine maintenance'),(1002,'Landing Gear Inspection','Check landing gear condition'),(1003,'Wing Inspection','Check wing surface for damage'),(1004,'Aileron Check','Test aileron response'),(1005,'Turbine Inspection','Inspect turbine for wear and tear'),(1006,'Nose Wheel Inspection','Check for wheel wear'),(1007,'Air Filter Replacement','Replace cabin air filters'),(1008,'Hydraulic Check','Inspect hydraulic fluid levels'),(1009,'Engine Oil Change','Change engine oil'),(1010,'Wing Flap Check','Check wing flaps for functionality'),(1011,'Turbine Check','Inspect turbine for damages'),(1012,'Air Conditioning Repair','Repair AC system'),(1013,'Fuel System Inspection','Check fuel lines for leaks'),(1014,'Landing Gear Lubrication','Lubricate landing gear'),(1015,'Turbine Calibration','Calibrate turbine engin'),(1016,'Battery Check','Check battery condition'),(1017,'Electrical Systems Check','Inspect electrical wiring and systems'),(1019,'Brake System Check','Test brake system functionality');
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
  `credit_card_number` bigint DEFAULT NULL,
  `exp_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (2837,'Bank Transfer','American Express',2786017405945542,'07/26'),(3964,'Credit Card','PayPal',5322187061076969,'06/30'),(17223,'Google Pay','MasterCard',3311324444535806,'08/24'),(20836,'Google Pay','Stripe',4316120946690036,'03/24'),(23564,'Debit Card','Discover',5161414300187544,'10/25'),(30528,'Bank Transfer','Stripe',6709825110179545,'07/26'),(36667,'Credit Card','Discover',1493156990981424,'12/24'),(64425,'Credit Card','Stripe',7331795045479785,'07/25'),(65201,'PayPal','American Express',5547176019816655,'04/26'),(104306,'Google Pay','Stripe',5654392128604975,'07/24'),(141468,'Debit Card','Visa',6591286735185645,'11/29'),(192997,'Apple Pay','MasterCard',2945770537700066,'12/29'),(207333,'Debit Card','Visa',3810767960198919,'10/29'),(210595,'Bank Transfer','American Express',8413465859348699,'10/24'),(213401,'Google Pay','MasterCard',4265905498780761,'02/26'),(267832,'Bank Transfer','Stripe',9133249024323794,'12/26'),(315995,'Bank Transfer','Stripe',3360378391251662,'09/25'),(330802,'PayPal','Discover',4613359022543179,'07/28'),(351025,'Debit Card','PayPal',9861177489586561,'10/29'),(359011,'Bank Transfer','American Express',4682346346586535,'12/26'),(369160,'Debit Card','Discover',9334597724226362,'12/28'),(383070,'Google Pay','MasterCard',1757194554073295,'10/30'),(388134,'Debit Card','American Express',2646547654918198,'04/29'),(398307,'PayPal','American Express',6371249143395900,'01/26'),(400671,'Credit Card','American Express',5750669395750525,'06/28'),(404637,'Bank Transfer','American Express',6729411107332333,'05/28'),(442376,'Debit Card','PayPal',3021813457749264,'10/27'),(445855,'Debit Card','MasterCard',8312391254724759,'07/25'),(477842,'Bank Transfer','PayPal',4884115985936976,'05/30'),(506592,'Credit Card','Discover',6627876528450919,'01/24'),(535567,'Bank Transfer','Stripe',8595557244321966,'04/29'),(562873,'Google Pay','American Express',3840625178029278,'11/25'),(612284,'Apple Pay','PayPal',8585513368557985,'05/24'),(619102,'PayPal','Stripe',4466152654615535,'12/28'),(650049,'Apple Pay','MasterCard',8931428957220280,'09/28'),(685779,'Google Pay','American Express',9648387479894643,'09/25'),(692402,'PayPal','American Express',4361271953406085,'09/28'),(705707,'Apple Pay','Visa',1087810618092257,'03/27'),(707478,'Debit Card','Visa',4657397032411840,'06/29'),(744882,'PayPal','MasterCard',9978407409195871,'02/30'),(752682,'PayPal','Stripe',8001735665322299,'08/25'),(766779,'Credit Card','American Express',9499578472899331,'04/26'),(774198,'Apple Pay','MasterCard',9004697378392188,'05/28'),(797130,'Debit Card','Discover',7828653270952337,'07/24'),(843519,'Google Pay','Visa',8449627240840593,'03/26'),(849319,'Google Pay','Stripe',3060058150832554,'04/23'),(866181,'Google Pay','Discover',2533147168487435,'03/25'),(956146,'Credit Card','Visa',4952288642579566,'07/27'),(969637,'Credit Card','American Express',9029157254171647,'01/28'),(979969,'Bank Transfer','Visa',5351250401126040,'08/26');
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
  `job_title` varchar(45) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel_no` varchar(50) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Technician','Adam Turner','503 Kennedy Camp Suite 808, New Andreaport, MO 49781','1219764428','mhernandez@gmail.com'),(2,'Technician','Carol Anderson','6897 Villanueva Ridges Apt. 038 Ashleyburgh, MS 65240','3606746064','watsonholly@hotmail.com'),(3,'Technician','Jessica Washington','Unit 0285 Box 6394, DPO AP 58941','9774656145','gregorypaul@jenkins.com'),(4,'Cabin Crew','Samuel Eaton','4488 Karen Walks Mariaport, NV 68824','8320139695','scott98@robinson-browning.com'),(5,'Technician','Peter Nichols','06886 Tiffany Statio Port Nancymouth, SC 63879','1137820076','buckamanda@gmail.com'),(6,'Technician','Lisa Craig','086 Castro Mills North Charles, VT 42357','2064513215','martingeorge@logan.net'),(7,'Cabin Crew','Mark Koch','468 Margaret Highway Suite 228 Hillfort, OK 77894','6352441449','xcooper@sanchez.com'),(8,'Cabin Crew','Andrew Price','0255 Alex Lake Osborneville, NH 93799','1481762974','aprilrobles@adams.com'),(9,'Cabin Crew','April Rios','701 Jones Springs Suite 593 Lake Shawnstad, ND 20333','7601594019','johnsonandrea@wilcox-cortez.com'),(10,'Cabin Crew','Dawn Rowe','777 Gabriel Ville Roseville, KY 41309','3556149114','wumatthew@gmail.com'),(11,'Ground Staff','Victoria Peterson','361 Holland Parks Apt. 402 Brownbury, RI 71208','2164513756','wilsontaylor@davis-arellano.com'),(12,'Cabin Crew','James Berry','51766 Steven Forest Apt. 298 South Veronicafurt, MD 30144','8150440125','lee70@frazier.com'),(13,'Technician','Felicia Smith','3196 Cooper Ramp West Mark, AK 04716','4107285585','millersusan@ford.com'),(14,'Technician','Grace Ortega','95252 Richards Pines Crystalchester, MN 25333','1728619706','elizabeth47@hotmail.com'),(15,'Pilot','Cindy Griffin','878 Steven Ways North Travis, NM 37661','1565564089','transhirley@hicks.com'),(16,'Pilot','Jennifer Butler','22259 Rodriguez Wall Suite 093 South Thomas, ND 02172','6412681286','markpowers@hotmail.com'),(17,'Technician','Jennifer Haynes','846 Kevin Extension Apt. 906 Graytown, IA 66077','8638335659','evanswanda@gomez-graham.com'),(18,'Ground Staff','Jennifer Lewis','203 Rocha Ford Port Michaelhaven, ND 62717','5288205951','jonathanschneider@yahoo.com'),(19,'Ground Staff','Linda Schwartz','Unit 8736 Box 8953 DPO AP 79939','8398457852','benjamin08@collins.com'),(20,'Cabin Crew','Lauren Thomas','2795 Michelle Overpass North Ashleyberg, MN 64145','6727304528','brittanysmith@yahoo.com'),(21,'Ground Staff','Jessica Singleton','121 Richardson Alley Suite 929 Barrystad, ID 53115','4114410356','jamesbailey@gmail.com'),(22,'Ground Staff','Amanda Martin','757 Murray Union Lake Johnhaven, CT 77220','9399953972','rmorgan@hotmail.com'),(23,'Technician','Mary Oconnell','75528 Stephen Point Suite 854 Edwardfurt, SD 83163','9013412189','thomas47@hotmail.com'),(24,'Ground Staff','Jeremy Myers III','99228 Carl Prairie Richardbury, WV 77582','6029720379','vmoore@gmail.com'),(25,'Pilot','Laura Alexander','94095 Shirley Loaf Suite 002 New Brianburgh, ME 35076','9574256291','debra83@glenn-bradley.info'),(26,'Cabin Crew','Stephanie Williams','06682 Lewis Haven Apt. 204 Marktown, KY 99877','6229671361','ekristen56@perez-porter.net'),(27,'Ground Staff','Matthew Carson','7402 David Manors Apt. 487 Raymondview, NC 13922','5832362250','elizabethwalker@hotmail.com'),(28,'Pilot','Paul Guerra','51447 Brandon Locks Fordfurt, UT 20790','2635543965','carterrachel@price.com'),(29,'Technician','Wayne Reyes','27224 Watts Keys Port Charles, UT 24169','2276657457','nicholasgarcia@yahoo.com'),(30,'Cabin Crew','Candace Nelson','PSC 1397, Box 9978 APO AP 66491','2435113065','jesse41@thomas-green.com'),(31,'Cabin Crew','Robert Dickerson','212 Brian Union Suite 323 Jeremiahview, MO 82253','6852331858','pallen@stewart.com'),(32,'Pilot','Allison Lopez','672 Jeremy Ranch Apt. 02 South Rachel, KY 59072','5578225330','jeanettelittle@gmail.com'),(33,'Technician','Samuel Richmond','713 Juan Ports East Jamiechester, IN 82962','1787243392','Marydavis@smith.biz'),(34,'Technician','Laurie Strickland','PSC 8444, Box 5232 APO AP 01811','9466983713','marythompson@mercer-baker.biz'),(35,'Ground Staff','Ashley Smith','8591 Samuel Field East Laura, VA 87850','1707891753','donald51@long.com'),(36,'Pilot','Cynthia Stephenson','61927 Jon Drives Suite 428 South Christianberg, CA 98219','5255049593','mistymoore@yahoo.com'),(37,'Ground Staff','Juan Thomas','944 Phillips Islands Murphyhaven, CT 51650','8404131925','rosekatherine@thomas-callahan.com'),(38,'Pilot','Kelli Ward','545 Ramos Crest Apt. 209 South Paul, TN 61899','932490964','gonzalezfrederick@diaz.org'),(39,'Ground Staff','Scott Odonnell','4202 Flowers Land Kathrynberg, MN 06438','4728499469','brownjoseph@anderson-smith.info'),(40,'Cabin Crew','Jordan Dixon','911 Keith Port Apt. 923 Masonport, WY 05654','7640656955','johngriffin@hotmail.com');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21  3:34:41
