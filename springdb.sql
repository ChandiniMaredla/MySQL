-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: itgdb
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `id` int DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `gmail` varchar(200) DEFAULT NULL,
  `workmail` varchar(200) DEFAULT NULL,
  `phno` varchar(10) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `joiningdate` date DEFAULT NULL,
  `worklocation` varchar(200) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `role` varchar(200) DEFAULT NULL,
  `asgnby` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (107,'nanditha','muralasetti','software','mahi@gmail.com','nmuralasetti@miraclesoft.com','940260791','Hati@7:53',400000,'2024-06-21','Mcity',532213,'employee',1),(1,'harsha','vardhan','software','harsha@gmail.com','hvardhan@miraclesoft.com','940260791','Haan@1:47',400000,'2024-06-24','Mcity',532213,'admin',1),(2,'chandini','maredla','software','chandini@gmail.com','cmaredla@miraclesoft.com','7995461780','Nila@1:49',400000,'2024-06-24','Mcity',532213,'teamlead',1),(3,'maredla','charishma','software','cherry@gmail.com','mcharishma@miraclesoft.com','7995461780','Lama@1:50',400000,'2024-06-24','Mcity',532213,'teamlead',1),(4,'maredla','nihal','software','nihal@gmail.com','mnihal@miraclesoft.com','7995461780','Laal@1:50',400000,'2024-06-24','Mcity',532213,'teamlead',1),(5,'maredla','gowshik','software','gowshik@gmail.com','mgowshik@miraclesoft.com','7995461780','Laik@1:50',400000,'2024-06-24','Mcity',532213,'teamlead',1),(6,'maredla','asish','software','achi@gmail.com','masish@miraclesoft.com','7995461780','Lash@1:51',400000,'2024-06-24','Mcity',532213,'teamlead',1),(7,'maredla','sujatha','software','sujatha@gmail.com','msujatha@miraclesoft.com','7995461780','Laha@1:51',400000,'2024-06-24','Mcity',532213,'teamlead',1),(8,'maredla','ramu','software','ramu@gmail.com','mramu@miraclesoft.com','7995461780','Lamu@1:51',400000,'2024-06-24','Mcity',532213,'teamlead',1),(9,'maredla','krishna','software','krishna@gmail.com','mkrishna@miraclesoft.com','7995461780','Lana@1:51',400000,'2024-06-24','Mcity',532213,'teamlead',1),(10,'maredla','jyothi','software','jyothi@gmail.com','mjyothi@miraclesoft.com','7995461780','Lahi@1:52',400000,'2024-06-24','Mcity',532213,'teamlead',1),(11,'maredla','sohan','software','sohan@gmail.com','msohan@miraclesoft.com','7995461780','Laan@1:52',400000,'2024-06-24','Mcity',532213,'teamlead',1),(12,'maredla','saritha','software','saritha@gmail.com','msaritha@miraclesoft.com','7995461780','Laha@1:52',400000,'2024-06-24','Mcity',532213,'teamlead',1),(13,'maredla','jeeva','software','jeeva@gmail.com','mjeeva@miraclesoft.com','7995461780','Lava@1:53',400000,'2024-06-24','Mcity',532213,'teamlead',1),(14,'purnima','purnima','software','p@gmail.com','ppurnima@miraclesoft.com','7995461780','Mama@1:54',400000,'2024-06-24','Mcity',532213,'HR',1),(15,'monika','monika','software','monika@gmail.com','mmonika@miraclesoft.com','7995461780','Kaka@1:55',400000,'2024-06-24','Mcity',532213,'HR',1),(16,'ramesh','ramesh','software','ramesh@gmail.com','rramesh@miraclesoft.com','7995461780','Shsh@1:55',400000,'2024-06-24','Mcity',532213,'HR',1),(38,'raja','raja','software','raja@gmail.com','rraja@miraclesoft.com','7995461780','Jaja@1:55',400000,'2024-06-24','Mcity',532213,'HR',1),(17,'thamada','thamada','software','thamada@gmail.com','tthamada@miraclesoft.com','7995461780','Dada@1:55',400000,'2024-06-24','Mcity',532213,'HR',1),(18,'vasu','vasu','software','vasu@gmail.com','vvasu@miraclesoft.com','7995461780','Susu@1:57',400000,'2024-06-24','Mcity',532213,'PM',1),(19,'saradhi','saradhi','software','sardhi@gmail.com','ssaradhi@miraclesoft.com','7995461780','Hihi@1:57',400000,'2024-06-24','Mcity',532213,'PM',1),(20,'deva','deva','software','deva@gmail.com','ddeva@miraclesoft.com','7995461780','Vava@1:59',400000,'2024-06-24','Mcity',532213,'PM',1),(21,'rao','rao','software','rao@gmail.com','rrao@miraclesoft.com','7995461780','Aoao@1:59',400000,'2024-06-24','Mcity',532213,'PM',1),(22,'prathi','prathi','software','prathi@gmail.com','pprathi@miraclesoft.com','7995461780','Hihi@2:00',400000,'2024-06-24','Mcity',532213,'PM',1),(23,'srikanth','srikanth','software','srikanth@gmail.com','ssrikanth@miraclesoft.com','7995461780','Thth@2:03',400000,'2024-06-24','Mcity',532213,'employee',1),(24,'jagadek','jagadek','software','jagadek@gmail.com','jjagadek@miraclesoft.com','7995461780','Ekek@2:04',400000,'2024-06-24','Mcity',532213,'employee',1),(25,'manikanta','manikanta','software','manikanta@gmail.com','mmanikanta@miraclesoft.com','7995461780','Tata@2:04',400000,'2024-06-24','Mcity',532213,'employee',1),(26,'monikasingh','monikasingh','software','monikasingh@gmail.com','mmonikasingh@miraclesoft.com','7995461780','Ghgh@2:04',400000,'2024-06-24','Mcity',532213,'employee',1),(27,'sreekala','sreekala','software','sreekala@gmail.com','ssreekala@miraclesoft.com','7995461780','Lala@2:05',400000,'2024-06-24','Mcity',532213,'employee',1),(28,'goutham','goutham','software','goutham@gmail.com','ggoutham@miraclesoft.com','7995461780','Amam@2:05',400000,'2024-06-24','Mcity',532213,'employee',1),(29,'revanth','revanth','software','revanth@gmail.com','rrevanth@miraclesoft.com','7995461780','Thth@2:06',400000,'2024-06-24','Mcity',532213,'employee',1),(30,'dharmteja','dharmteja','software','dharmteja@gmail.com','ddharmteja@miraclesoft.com','7995461780','Jaja@2:07',400000,'2024-06-24','Mcity',532213,'employee',1),(31,'keerthana','keerthana','software','keerthana@gmail.com','kkeerthana@miraclesoft.com','7995461780','Nana@2:07',400000,'2024-06-24','Mcity',532213,'employee',1),(32,'devi','devi','software','devi@gmail.com','ddevi@miraclesoft.com','7995461780','Vivi@2:07',400000,'2024-06-24','Mcity',532213,'employee',1),(33,'priyanka','priyanka','software','priyanka@gmail.com','ppriyanka@miraclesoft.com','7995461780','Kaka@2:08',400000,'2024-06-24','Mcity',532213,'employee',1),(34,'vamsi','vamsi','software','vamsi@gmail.com','vvamsi@miraclesoft.com','7995461780','Sisi@2:09',400000,'2024-06-24','Mcity',532213,'employee',1),(35,'sindhu','sindhu','software','sindhu@gmail.com','ssindhu@miraclesoft.com','7995461780','Huhu@2:12',400000,'2024-06-24','Mcity',532213,'employee',1),(36,'prasanna','prasanna','software','prasanna@gmail.com','pprasanna@miraclesoft.com','7995461780','Nana@2:12',400000,'2024-06-24','Mcity',532213,'employee',1),(37,'badal','badal','software','badal@gmail.com','bbadal@miraclesoft.com','7995461780','Alal@2:13',400000,'2024-06-24','Mcity',532213,'employee',1);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmployeeProjectDetails`
--

DROP TABLE IF EXISTS `EmployeeProjectDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EmployeeProjectDetails` (
  `EmpID` int DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `asgndate` date DEFAULT NULL,
  `teamlead` varchar(200) DEFAULT NULL,
  `adgnby` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeProjectDetails`
--

LOCK TABLES `EmployeeProjectDetails` WRITE;
/*!40000 ALTER TABLE `EmployeeProjectDetails` DISABLE KEYS */;
INSERT INTO `EmployeeProjectDetails` VALUES (14,'Movie booking14:28','2024-06-24','cmaredla@miraclesoft.com','HR'),(19,'Movie booking14:28','2024-06-24','cmaredla@miraclesoft.com','HR'),(2,'Movie booking14:28','2024-06-24','cmaredla@miraclesoft.com','HR'),(3,'Movie booking14:28','2024-06-24','mcharishma@miraclesoft.com','HR'),(23,'Movie booking14:28','2024-06-24','mcharishma@miraclesoft.com','HR'),(24,'Movie booking14:28','2024-06-24','mcharishma@miraclesoft.com','HR'),(15,'Ticket booking14:28','2024-06-24','mnihal@miraclesoft.com','HR'),(20,'Ticket booking14:28','2024-06-24','mnihal@miraclesoft.com','HR'),(25,'Movie booking14:28','2024-06-24','mcharishma@miraclesoft.com','HR'),(4,'Ticket booking14:28','2024-06-24','mnihal@miraclesoft.com','HR'),(5,'Ticket booking14:28','2024-06-24','mnihal@miraclesoft.com','HR'),(26,'Ticket booking14:28','2024-06-24','mgowshik@miraclesoft.com','HR'),(27,'Ticket booking14:28','2024-06-24','mgowshik@miraclesoft.com','HR'),(28,'Ticket booking14:28','2024-06-24','mgowshik@miraclesoft.com','HR'),(21,'Library management18:44','2024-06-24','masish@miraclesoft.com','PM'),(16,'Library management18:44','2024-06-24','masish@miraclesoft.com','PM'),(6,'Library management18:44','2024-06-24','masish@miraclesoft.com','PM'),(7,'Library management18:44','2024-06-24','masish@miraclesoft.com','PM'),(29,'Library management18:44','2024-06-24','msujatha@miraclesoft.com','HR'),(30,'Library management18:44','2024-06-24','msujatha@miraclesoft.com','HR'),(31,'Library management18:44','2024-06-24','msujatha@miraclesoft.com','HR'),(38,'Mcafe18:47','2024-06-24','pprathi@miraclesoft.com','HR'),(22,'Mcafe18:47','2024-06-24','pprathi@miraclesoft.com','HR'),(38,'Mcafe18:47','2024-06-24','mkrishna@miraclesoft.com','HR'),(22,'Mcafe18:47','2024-06-24','mkrishna@miraclesoft.com','HR'),(8,'Mcafe18:47','2024-06-24','mkrishna@miraclesoft.com','HR'),(9,'Mcafe18:47','2024-06-24','mkrishna@miraclesoft.com','HR'),(32,'Mcafe18:47','2024-06-24','mjyothi@miraclesoft.com','HR'),(33,'Mcafe18:47','2024-06-24','mjyothi@miraclesoft.com','HR'),(34,'Mcafe18:47','2024-06-24','mjyothi@miraclesoft.com','HR'),(17,'Mtalk18:50','2024-06-24','mramu@miraclesoft.com','HR'),(18,'Mtalk18:50','2024-06-24','mramu@miraclesoft.com','HR'),(8,'Mtalk18:50','2024-06-24','mramu@miraclesoft.com','HR'),(11,'Mtalk18:50','2024-06-24','mramu@miraclesoft.com','HR'),(35,'Mtalk18:50','2024-06-24','msohan@miraclesoft.com','PM'),(36,'Mtalk18:50','2024-06-24','msohan@miraclesoft.com','PM'),(37,'Mtalk18:50','2024-06-24','msohan@miraclesoft.com','PM');
/*!40000 ALTER TABLE `EmployeeProjectDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Project` (
  `pname` varchar(100) DEFAULT NULL,
  `pid` varchar(200) DEFAULT NULL,
  `client` varchar(200) DEFAULT NULL,
  `asgnby` varchar(100) DEFAULT NULL,
  `startdate` varchar(100) DEFAULT NULL,
  `enddate` varchar(100) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `HR` varchar(20) DEFAULT NULL,
  `PM` varchar(20) DEFAULT NULL,
  `no_of_emp` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES ('Movie booking','Movie booking14:28','INOX','HR14','2024-06-24','2025-10-12',475,'ppurnima@miraclesoft','ssaradhi@miraclesoft',7),('Ticket booking','Ticket booking14:28','Indian Railways','HR15','2024-06-24','2025-10-12',475,'mmonika@miraclesoft.','ddeva@miraclesoft.co',7),('Library management','Library management18:44','ANITS','HR16','2024-06-24','2025-10-12',475,'rramesh@miraclesoft.','rrao@miraclesoft.com',7),('Mcafe','Mcafe18:47','Miracle','HR38','2024-06-24','2025-10-12',475,'rraja@miraclesoft.co','pprathi@miraclesoft.',7),('Mtalk','Mtalk18:50','Miracle','HR17','2024-06-24','2025-10-12',475,'tthamada@miraclesoft','vvasu@miraclesoft.co',7);
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasklist`
--

DROP TABLE IF EXISTS `tasklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasklist` (
  `id` int DEFAULT NULL,
  `taskname` varchar(200) DEFAULT NULL,
  `createdby` int DEFAULT NULL,
  `assignedto` int DEFAULT NULL,
  `taskasgndate` date DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `taskstatus` varchar(10) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasklist`
--

LOCK TABLES `tasklist` WRITE;
/*!40000 ALTER TABLE `tasklist` DISABLE KEYS */;
INSERT INTO `tasklist` VALUES (1,'API',7,29,'2024-06-24',24,'2024-06-23','2024-06-26','C','Backend'),(2,'API',7,30,'2024-06-24',24,'2024-06-23','2024-06-26','C','Backend'),(3,'API',7,31,'2024-06-24',24,'2024-06-23','2024-06-26','C','Backend');
/*!40000 ALTER TABLE `tasklist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-24 19:40:37
