-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: airline_5_fk
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21  3:33:32
