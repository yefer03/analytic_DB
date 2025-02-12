-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 172.17.0.1    Database: odontologiaDB
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
-- Table structure for table `tbl_pagos`
--

DROP TABLE IF EXISTS `tbl_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_pagos` (
  `ID_pago` int NOT NULL AUTO_INCREMENT,
  `ID_servicio` int DEFAULT NULL,
  `ID_cliente` int DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto_cancelado` decimal(10,0) DEFAULT NULL,
  `cancelado` tinyint(1) DEFAULT NULL,
  `ID_servicio_vendido` int DEFAULT NULL,
  PRIMARY KEY (`ID_pago`),
  KEY `ID_servicio` (`ID_servicio`),
  KEY `ID_cliente` (`ID_cliente`),
  KEY `fk_tbl_pagos_servicio_vendido` (`ID_servicio_vendido`),
  CONSTRAINT `fk_tbl_pagos_servicio_vendido` FOREIGN KEY (`ID_servicio_vendido`) REFERENCES `tbl_servicio_vendido` (`ID_servicio_vendido`),
  CONSTRAINT `tbl_pagos_ibfk_1` FOREIGN KEY (`ID_servicio`) REFERENCES `tbl_servicio` (`ID_servicio`),
  CONSTRAINT `tbl_pagos_ibfk_2` FOREIGN KEY (`ID_cliente`) REFERENCES `tbl_clientes` (`ID_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pagos`
--

LOCK TABLES `tbl_pagos` WRITE;
/*!40000 ALTER TABLE `tbl_pagos` DISABLE KEYS */;
INSERT INTO `tbl_pagos` VALUES (1,1,1,'2023-12-16',60000,1,NULL),(2,2,2,'2023-12-17',100000,1,NULL),(3,3,3,'2023-12-18',120000,1,NULL),(4,4,4,'2023-12-19',80000,1,NULL),(5,5,5,'2023-12-20',150000,1,NULL),(6,6,6,'2023-12-21',40000,1,NULL),(7,7,7,'2023-12-22',40000,0,NULL),(8,8,8,'2023-12-23',90000,1,NULL),(9,9,9,'2023-12-24',200000,1,NULL),(10,10,10,'2023-12-25',20000,0,NULL),(11,3,11,'2023-12-19',120000,1,NULL),(12,4,12,'2023-12-19',80000,1,NULL),(13,2,11,'2023-12-19',70000,0,NULL),(14,6,11,'2023-12-20',20000,0,NULL),(15,5,12,'2023-12-20',150000,1,NULL),(16,4,15,'2023-12-29',80000,0,NULL),(17,1,16,'2023-12-29',60000,0,NULL),(18,1,17,'2023-12-29',60000,0,NULL),(19,1,18,'2023-12-29',60000,0,NULL),(20,1,19,'2023-12-29',60000,1,NULL),(21,3,20,'2024-01-04',120000,1,NULL),(22,3,21,'2024-01-05',100000,0,NULL),(23,3,22,'2024-01-05',100000,0,NULL),(24,2,23,'2024-01-05',120000,1,NULL),(25,7,24,'2024-01-05',30000,0,NULL),(26,8,25,'2024-01-05',20000,0,NULL),(27,2,25,'2024-01-05',100000,1,118),(28,5,22,'2024-01-12',40000,0,119),(29,3,25,'2024-01-12',30000,0,120),(30,7,25,'2024-01-12',15000,0,121);
/*!40000 ALTER TABLE `tbl_pagos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-12 13:32:53
