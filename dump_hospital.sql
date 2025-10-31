-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `analises`
--

DROP TABLE IF EXISTS `analises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analises` (
  `idAnalise` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `resultado` varchar(60) NOT NULL,
  `idLab` int NOT NULL,
  PRIMARY KEY (`idAnalise`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analises`
--

LOCK TABLES `analises` WRITE;
/*!40000 ALTER TABLE `analises` DISABLE KEYS */;
INSERT INTO `analises` VALUES (1,'Teste de Pneumologia','2025-08-14','Positivo',2),(2,'RaioX','2025-07-29','Fratura no braço',1),(3,'Análise de Sangue','2025-09-03','Saudável',3),(4,'Análise aos Pulmões','2025-08-16','Pneumonia',4);
/*!40000 ALTER TABLE `analises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doentes`
--

DROP TABLE IF EXISTS `doentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doentes` (
  `idDoente` int NOT NULL AUTO_INCREMENT,
  `doenca` varchar(100) NOT NULL,
  `numIdentidade` int NOT NULL,
  PRIMARY KEY (`idDoente`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doentes`
--

LOCK TABLES `doentes` WRITE;
/*!40000 ALTER TABLE `doentes` DISABLE KEYS */;
INSERT INTO `doentes` VALUES (1,'Constipação',16),(2,'Pneumonia',18),(3,'Fratura',21);
/*!40000 ALTER TABLE `doentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregados`
--

DROP TABLE IF EXISTS `empregados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregados` (
  `numOrdem` int NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `funcao` varchar(30) NOT NULL,
  `numIdentidade` int NOT NULL,
  `vencimento` float NOT NULL,
  PRIMARY KEY (`numOrdem`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregados`
--

LOCK TABLES `empregados` WRITE;
/*!40000 ALTER TABLE `empregados` DISABLE KEYS */;
INSERT INTO `empregados` VALUES (1,'Médicos','diagnósticos',3,3511.4),(2,'Enfermeiro','medicação',5,1600),(3,'Administrativo','gestão de dados',11,34600),(4,'Médicos','diagnósticos',6,2987.5),(5,'Laboratórios','exames',8,1350),(6,'Enfermeiro','medicação',2,1600),(7,'Laboratórios','exames',1,1350);
/*!40000 ALTER TABLE `empregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermaria`
--

DROP TABLE IF EXISTS `enfermaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermaria` (
  `sigla` varchar(20) NOT NULL,
  `numCamas` int NOT NULL,
  `numOrdem` int NOT NULL,
  PRIMARY KEY (`sigla`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermaria`
--

LOCK TABLES `enfermaria` WRITE;
/*!40000 ALTER TABLE `enfermaria` DISABLE KEYS */;
INSERT INTO `enfermaria` VALUES ('ABC',8,2),('ADGH',9,6);
/*!40000 ALTER TABLE `enfermaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiros`
--

DROP TABLE IF EXISTS `enfermeiros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiros` (
  `numOrdem` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiros`
--

LOCK TABLES `enfermeiros` WRITE;
/*!40000 ALTER TABLE `enfermeiros` DISABLE KEYS */;
INSERT INTO `enfermeiros` VALUES (2),(6);
/*!40000 ALTER TABLE `enfermeiros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `idHospital` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `cidade` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sigla` varchar(10) NOT NULL,
  PRIMARY KEY (`idHospital`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'Hospital da Noite','Lisboa','ABC'),(2,'Hospital da Manhã','Porto','ADGH');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instituicoes`
--

DROP TABLE IF EXISTS `instituicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instituicoes` (
  `codigo` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `morada` varchar(100) NOT NULL,
  `numsocio` int NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instituicoes`
--

LOCK TABLES `instituicoes` WRITE;
/*!40000 ALTER TABLE `instituicoes` DISABLE KEYS */;
INSERT INTO `instituicoes` VALUES (1,'ASAS','Rua do Jacaré, 6',78905432),(2,'LuzDoSol','Rua Abaixo, 8',57853215),(3,'SeguraTal','Rua Roxa, 58',45686532),(4,'ASAS','Rua do Jacaré, 6',46387581),(5,'ASAS','Rua do Jacaré, 6',47832464),(6,'LuzDoSol','Rua Abaixo, 8',68329275);
/*!40000 ALTER TABLE `instituicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `idLab` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  PRIMARY KEY (`idLab`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,'Alberto das Chaves'),(2,'Laboratório de Pneumologia'),(3,'HealthSight'),(4,'Flow');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `numOrdem` int NOT NULL,
  `especialidade` varchar(100) NOT NULL,
  `miope` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'Oftalmologia',NULL),(4,'Cardiologia',NULL);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoas` (
  `numIdentidade` int NOT NULL AUTO_INCREMENT,
  `telefone` int NOT NULL,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `morada` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `numSS` int DEFAULT NULL,
  `ss` tinyint(1) NOT NULL,
  PRIMARY KEY (`numIdentidade`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoas`
--

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (3,935675345,'Samuel Luz','Rua do Frederico, 34',57853215,1),(5,964356721,'Nádia Cruseiro','Rua Azul, 6',78905432,1),(1,967432176,'Hástia Chama','Rua do Cometa, 75',NULL,0),(2,914654327,'Bernardo Porto','Rua Vermelho, 658',45686532,1),(7,913457654,'Carlos Nascido','Rua da Espada, 534',NULL,0),(6,918752643,'Joshe Martelo','Rua da Noite, 87',65748294,1),(9,915427493,'Lourenço Rosa','Rua Superior, 4',NULL,0),(8,953847632,'Aleia da Guerra','Rua da Guerra, 25',46387581,1),(11,976245686,'Vera Termo','Rua do Frederico, 14',68329275,1),(10,917254564,'João Lobo','Rua da Espada, 436',47832464,1);
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hospital'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-31 14:41:28
