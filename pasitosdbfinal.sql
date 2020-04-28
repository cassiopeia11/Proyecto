CREATE DATABASE  IF NOT EXISTS `sistemax` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sistemax`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: sistemax
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `Actividad` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (4,'Fernando','Castro','fer.castro24@hotmail.com','1'),(6,'Diego','Gomez','diego.gomez@gmail.com','4'),(7,'Roger','Turcios','roger.turcios@hotmail.com','5'),(22,'Daniela','Corleto','dani.corleto@hotmail.com','3'),(24,'Lari','Peña','Klopez@hotmail.com','2'),(25,'Cesar','Bautista','cbautista@gmail.com','1'),(26,'Carlos','Reyes','creyes@hotmail.com','3'),(27,'Fernando','Valencia','ferv@gmail.com','5'),(28,'Mauricio','Aguilar','MAguilar@yahoo.es','3'),(29,'Fernando','Castro','fer.castro24@hotmail.com','5');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembros`
--

DROP TABLE IF EXISTS `miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(120) NOT NULL,
  `password` varchar(8) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `carnet` varchar(8) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembros`
--

LOCK TABLES `miembros` WRITE;
/*!40000 ALTER TABLE `miembros` DISABLE KEYS */;
/*!40000 ALTER TABLE `miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudesvol`
--

DROP TABLE IF EXISTS `solicitudesvol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudesvol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `anno` varchar(45) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `carnet` varchar(8) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudesvol`
--

LOCK TABLES `solicitudesvol` WRITE;
/*!40000 ALTER TABLE `solicitudesvol` DISABLE KEYS */;
INSERT INTO `solicitudesvol` VALUES (1,'Fernando','Lazo','segundo','fer.castro200@gmail.com','20180080','72103882'),(2,'Candy','De Castro','tercero','fer.castro200@gmail.com','12345678','72103882');
/*!40000 ALTER TABLE `solicitudesvol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoact`
--

DROP TABLE IF EXISTS `tipoact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoact` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoact`
--

LOCK TABLES `tipoact` WRITE;
/*!40000 ALTER TABLE `tipoact` DISABLE KEYS */;
INSERT INTO `tipoact` VALUES (1,'Club de lectura',' El próximo se llevará a cabo en el aula 12.'),(2,'Dia del niño','Actividad para celebrarle su dia a los niños.'),(3,'Torneo Pasitos','Torneo defútbol realizado en la ESEn.'),(4,'Navidad','Se invita a los niños a celebrar navidad en la ESEN.'),(5,'Entrega de útiles','Entrega de útiles escolares a los niños a inicio de año escolar.');
/*!40000 ALTER TABLE `tipoact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `user` varchar(145) NOT NULL,
  `password` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `anno` varchar(45) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `carnet` varchar(8) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `horastotales` int DEFAULT '0',
  `horaspend` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Fernando','Castro','jofer','1234','miembro','segundo','fer.castro24@hotmail.com','20180080','72103882',0,0),(2,'Daniela','Corleto','dani','1234','voluntario','tercero','danicorleto@hotmail.com','20180441','53526372',0,0),(3,'Karen','Lopez','lari','1234','miembro','cuarto','larilopez@gmail.com','20189876','23432333',0,0),(4,'Cesar','Bautista','cbb','1234','voluntario','quinto','cbautista@hotmail.com','20189898','34567890',0,0),(5,'Roger','turcios','rogw','1234','miembro','primero','roger@gmail.com','20189076','23563455',0,0),(6,'Diego','Gomez','dieg','1234','voluntario','quinto','didid@gmail.com','20189652','21356546',0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28 15:59:44
