-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: recruitingrh
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `applicants`
--

DROP TABLE IF EXISTS `applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applicants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DNI` bigint(20) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `urlLinkedin` varchar(255) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `sex` enum('Masculino','Femenino','Otro') NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `professionsId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profesionesId` (`professionsId`),
  CONSTRAINT `applicants_ibfk_1` FOREIGN KEY (`professionsId`) REFERENCES `professions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicants`
--

LOCK TABLES `applicants` WRITE;
/*!40000 ALTER TABLE `applicants` DISABLE KEYS */;
INSERT INTO `applicants` VALUES (7,44375841,'Gloria','Medina','glori.medi@gmail.com','388561248',' https://www.linkedin.com','2002-10-13','Femenino','foto1.jpg',9),(8,44375841,'Daniel','Fuentes','dani.mfu@gmail.com','388561248',' https://www.linkedin.com','2002-10-13','Masculino','foto2.jpg',6),(9,44375841,'Tim','Tim','Tim@gmail.com','388561248',' https://www.linkedin.com','2002-10-13','Femenino','foto3.jpg',3),(10,44375841,'Rocio','Carle','roci12@gmail.com','388561248',' https://www.linkedin.com','2002-10-13','Femenino','foto4.jpg',11),(11,44375841,'Victor','Fuentes','vi.fu@gmail.com','388561248',' https://www.linkedin.com','2002-10-13','Masculino','foto5.jpg',1),(12,44375841,'Luis','Fuentes','luis.fu@gmail.com','388561248',' https://www.linkedin.com','2002-10-13','Masculino','foto6.jpg',5);
/*!40000 ALTER TABLE `applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `professions` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'Ingenieria Informatica'),(2,'Ingenieria en Sistema'),(3,'Ingenieria Quimica'),(4,'Ingenieria en Minas'),(5,'Ingenieria Civil'),(6,'Ingenieria Industrial'),(7,'Ingenieria en Cianecias Geologicas'),(8,'Ingenieria Arquitectura'),(9,'Medicina'),(10,'Economista'),(11,'Profesor'),(12,'Computista');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-01 15:31:58
