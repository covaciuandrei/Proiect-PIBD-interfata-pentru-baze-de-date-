-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: muzicieni
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `albume`
--

DROP TABLE IF EXISTS `albume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albume` (
  `id_album` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_melodie` bigint unsigned NOT NULL,
  `id_muzician` bigint unsigned NOT NULL,
  `nume_album` varchar(45) NOT NULL,
  `an_lansare` bigint unsigned NOT NULL,
  PRIMARY KEY (`id_album`),
  KEY `id_melodie_idx` (`id_melodie`),
  KEY `fk_2_idx` (`id_muzician`),
  CONSTRAINT `fk_1` FOREIGN KEY (`id_melodie`) REFERENCES `melodii` (`id_melodie`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_2` FOREIGN KEY (`id_muzician`) REFERENCES `muzicieni` (`id_muzician`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albume`
--

LOCK TABLES `albume` WRITE;
/*!40000 ALTER TABLE `albume` DISABLE KEYS */;
INSERT INTO `albume` VALUES (4,4,4,'Ma suni noaptea',2021),(5,5,5,'Discoteca boom',2002),(14,11,6,'Romina VTM',2023);
/*!40000 ALTER TABLE `albume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `melodii`
--

DROP TABLE IF EXISTS `melodii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `melodii` (
  `id_melodie` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume_melodie` varchar(45) NOT NULL,
  `durata_melodie` bigint NOT NULL,
  `gen_melodie` varchar(45) NOT NULL,
  PRIMARY KEY (`id_melodie`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `melodii`
--

LOCK TABLES `melodii` WRITE;
/*!40000 ALTER TABLE `melodii` DISABLE KEYS */;
INSERT INTO `melodii` VALUES (3,'Selecta',4,'pop'),(4,'Ma suni noaptea',3,'manele'),(5,'Danseaza',5,'manele'),(11,'Trotinete',4,'manele'),(13,'Minim 2',3,'pop');
/*!40000 ALTER TABLE `melodii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muzicieni`
--

DROP TABLE IF EXISTS `muzicieni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muzicieni` (
  `id_muzician` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume_muzician` varchar(45) NOT NULL,
  `prenume_muzician` varchar(45) NOT NULL,
  `varsta_muzician` bigint unsigned NOT NULL,
  `debut_muzician` date NOT NULL,
  PRIMARY KEY (`id_muzician`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muzicieni`
--

LOCK TABLES `muzicieni` WRITE;
/*!40000 ALTER TABLE `muzicieni` DISABLE KEYS */;
INSERT INTO `muzicieni` VALUES (2,'Adam','Anda',33,'2010-01-02'),(3,'Alex','Velea',32,'2011-09-09'),(4,'De la Ploiesti','Bogdan',25,'2016-01-09'),(5,'Minune','Adrian',53,'2003-02-05'),(6,'Uraganu','Tzanca',37,'2013-07-05');
/*!40000 ALTER TABLE `muzicieni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-03 12:33:45
