-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 172.17.0.1    Database: analyticsDB
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `tbl_reports`
--

DROP TABLE IF EXISTS `tbl_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reports` (
  `idReport` int NOT NULL AUTO_INCREMENT,
  `idCustomer` varchar(100) DEFAULT NULL,
  `nameReport` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idReport`),
  KEY `idCustomer` (`idCustomer`),
  CONSTRAINT `tbl_reports_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `tbl_customer` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reports`
--

LOCK TABLES `tbl_reports` WRITE;
/*!40000 ALTER TABLE `tbl_reports` DISABLE KEYS */;
INSERT INTO `tbl_reports` VALUES (1,'C001','Sales Report'),(2,'C002','Expense Report'),(3,'C003','Marketing Report'),(4,'C004','Employee Performance Report'),(5,'C005','Customer Satisfaction Report'),(6,'27869a04-debd-42fc-8d7f-dc1b70bd06f2','Cantidad de servicios vendidos'),(7,'27869a04-debd-42fc-8d7f-dc1b70bd06f2','Clientes por servicio'),(8,'27869a04-debd-42fc-8d7f-dc1b70bd06f2','Citas asignadas'),(9,'27869a04-debd-42fc-8d7f-dc1b70bd06f2','Insumos'),(10,'06bb8c2d-bea0-411a-8523-2ee96a581f86','servicios'),(11,'06bb8c2d-bea0-411a-8523-2ee96a581f86','ventas'),(12,'06bb8c2d-bea0-411a-8523-2ee96a581f86','empleados'),(13,'06bb8c2d-bea0-411a-8523-2ee96a581f86','clientes');
/*!40000 ALTER TABLE `tbl_reports` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 21:08:49
