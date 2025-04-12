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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21  3:33:33
