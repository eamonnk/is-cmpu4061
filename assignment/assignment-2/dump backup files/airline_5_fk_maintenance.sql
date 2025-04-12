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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21  3:31:16
