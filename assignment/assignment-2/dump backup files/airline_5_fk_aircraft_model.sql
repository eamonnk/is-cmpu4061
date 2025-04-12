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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21  3:31:17
