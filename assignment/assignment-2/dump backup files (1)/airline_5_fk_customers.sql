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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-21  3:33:31
