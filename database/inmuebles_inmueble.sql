-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inmuebles
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `inmueble`
--

DROP TABLE IF EXISTS `inmueble`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inmueble` (
  `id_inmueble` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(45) DEFAULT NULL,
  `codigo_porpiedad` varchar(45) DEFAULT NULL,
  `costo` int DEFAULT NULL,
  `img_principal` varchar(45) DEFAULT NULL,
  `ubicacion` int DEFAULT NULL,
  `imagenes` int DEFAULT NULL,
  `mantenimiento` int DEFAULT NULL,
  `detalle` int DEFAULT NULL,
  `desc_inmueble_bas` int DEFAULT NULL,
  `amenidades` int DEFAULT NULL,
  PRIMARY KEY (`id_inmueble`),
  KEY `fk_ubicacion_idx` (`ubicacion`),
  KEY `fk_detalle_idx` (`detalle`),
  KEY `fk_desc_inm_idx` (`desc_inmueble_bas`),
  KEY `fk_img_idx` (`imagenes`),
  KEY `fk_mant_idx` (`mantenimiento`),
  KEY `fk_amen_idx` (`amenidades`),
  CONSTRAINT `fk_amen` FOREIGN KEY (`amenidades`) REFERENCES `amenidades` (`id_amenidades`),
  CONSTRAINT `fk_desc_inm` FOREIGN KEY (`desc_inmueble_bas`) REFERENCES `desc_inmueble_bas` (`id_desc_inmueble_bas`),
  CONSTRAINT `fk_det` FOREIGN KEY (`detalle`) REFERENCES `detalle` (`id_detalle`),
  CONSTRAINT `fk_img` FOREIGN KEY (`imagenes`) REFERENCES `imagenes` (`id_imagenes`),
  CONSTRAINT `fk_mant` FOREIGN KEY (`mantenimiento`) REFERENCES `mantenimiento` (`id_mantenimiento`),
  CONSTRAINT `fk_ubi` FOREIGN KEY (`ubicacion`) REFERENCES `ubicacion` (`id_ubicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inmueble`
--

LOCK TABLES `inmueble` WRITE;
/*!40000 ALTER TABLE `inmueble` DISABLE KEYS */;
/*!40000 ALTER TABLE `inmueble` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 20:48:36
