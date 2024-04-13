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
-- Table structure for table `tbl_usuarios`
--

DROP TABLE IF EXISTS `tbl_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_usuarios` (
  `idUsuario` varchar(100) NOT NULL,
  `idRoleUsuario` int DEFAULT NULL,
  `idEmpleadoCustomer` varchar(100) DEFAULT NULL,
  `nombreUsuario` varchar(255) DEFAULT NULL,
  `apellidoUsuario` varchar(255) DEFAULT NULL,
  `direccionUsuario` varchar(255) DEFAULT NULL,
  `emailUsuario` varchar(255) DEFAULT NULL,
  `passwordUsuario` varchar(255) DEFAULT NULL,
  `phoneNumberUsuario` varchar(20) DEFAULT NULL,
  `cityUsuario` varchar(100) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `stateUsuario` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `emailUsuario` (`emailUsuario`),
  KEY `idRoleUsuario` (`idRoleUsuario`),
  CONSTRAINT `tbl_usuarios_ibfk_1` FOREIGN KEY (`idRoleUsuario`) REFERENCES `tbl_roles` (`idRole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_usuarios`
--

LOCK TABLES `tbl_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_usuarios` DISABLE KEYS */;
INSERT INTO `tbl_usuarios` VALUES ('1616cdc3-3d93-429d-8e4f-55ea1a321ff0',1,NULL,'juan','garcia','carrea 12A','juan.admin@gmail.com','$2a$10$whkMSsmnTtwWExYGPxWsXeNnuZd2dJwpLma/kgXe7.rTJansAvCOa','3213132656','Cartagena','2023-12-09',1),('19c4ba86-deba-4a16-bf18-da083516da41',1,NULL,'yeferson','serna','calle 15C','yeferson.admin@gmail.com','$2a$10$4SYQdaLgpnCE/iwPnv3YO.eagmyNNdzwaTUthUo8IiUhtPjNL624m','3004731382','Medellín','2023-12-09',1),('27869a04-debd-42fc-8d7f-dc1b70bd06f2',2,NULL,'Odontologia','','calle 12A #90-87','odontologia@gmail.com','$2a$10$gS1ZJM574RW3.cJdcLp06O6vxk3ZfOHzhEHFoiqEfeupjY/w2xz86','3002314589','Cali','2023-12-09',1),('3986a81e-1727-4589-b12c-4f819cf0d6e7',1,NULL,'julian','vanegas','calle 91D #123','julian.admin@gmail.com','$2a$10$32PRaKTz5HJW7ZcI8TOOo.h8UGA..TaHtd/R7p42uzgKopIxL3jzq','3220391135','Bello','2023-12-09',1),('C001',2,NULL,'John','Doe','123 Main St','john@example.com','password123','3002348767','Cali',NULL,NULL),('C002',2,NULL,'Jane','Doe','456 Oak St','jane@example.com','password456','3208897632','Medellín',NULL,NULL),('C003',2,NULL,'Bob','Smith','789 Pine St','bob@example.com','pass789','3117865341','Bogotá',NULL,NULL),('C004',2,NULL,'Alice','Johnson','101 Maple St','alice@example.com','pass101','3228099088','Bucaramanga',NULL,NULL),('C005',2,NULL,'Charlie','Brown','321 Elm St','charlie@example.com','pass321','3001789125','Santander',NULL,NULL),('C006',1,NULL,'Admin1','lastname admin1','456 Bym Pr','admin1@example.com','123456789','3101811540','Cartagena',NULL,NULL),('C007',1,NULL,'Admin2','lastname admin1','928 Okc Cll','Admin2@example.com','123456789','3118741892','Santa marta',NULL,NULL),('C008',3,NULL,'Empleado 1','Lastname empleado 1','101 Miplex Pl','empleado1@example.com','123456789','3238912370','Barranquilla',NULL,NULL),('C009',3,NULL,'Empleado 2','Lastname empleado 2','223 Mrt Er','empleado2@example.com','123456789','3005649102','Ibague',NULL,NULL),('c774408f-81e7-45c3-bf81-c0ad69494010',3,'27869a04-debd-42fc-8d7f-dc1b70bd06f2','mariano','perez','Cll 88 int 203','mariano@gmail.com','$2a$10$cFiONY0r8kXf.kdmVRWIJuWfV5Vglm0jt7o41aHs2ud0XgmViQZcm','3009188394','Cali','2023-12-09',1);
/*!40000 ALTER TABLE `tbl_usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 21:08:50
