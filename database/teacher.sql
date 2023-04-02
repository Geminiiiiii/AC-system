CREATE DATABASE  IF NOT EXISTS `college_info_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `college_info_system`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: college_info_system
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL,
  `teacher_password` varchar(45) NOT NULL,
  `teacher_name` varchar(45) NOT NULL,
  `teacher_gender` varchar(45) NOT NULL,
  `teacher_photo` varchar(45) DEFAULT NULL,
  `teacher_title` varchar(45) NOT NULL,
  `teacher_info` text NOT NULL,
  `teacher_email` varchar(45) NOT NULL,
  `course` varchar(45) NOT NULL,
  PRIMARY KEY (`teacher_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (12,'uxof','Alarice','Male','resources/images/Alarice.jpg','Lecturer','Graduated from University of Malaya and worked as a lecturer at XMUM.','alarice@xmu.edu.my','Programming Elective');
INSERT INTO `teacher` VALUES (3,'cfee','Doris','Male','resources/images/Doris.jpg','Senior Lecturer','Graduated from the National University of Singapore and worked as a senior lecturer at XMUM.','doris@xmu.edu.my','Game Engine Design');
INSERT INTO `teacher` VALUES (5,'ujcw','Maurice','Female','resources/images/Maurice.jpg','Professor','Graduated from Xiamen University and worked as a professor at XMUM.','maurice@xmu.edu.my','ARM Assembly Language');
INSERT INTO `teacher` VALUES (15,'jhss','Ethen','Male','resources/images/Ethen.jpg','Professor','Graduated from University of Malaya, worked as a professor at XMUM.','ethen@xmu.edu.my','Commercial Law');
INSERT INTO `teacher` VALUES (22,'qocm','Mary','Female','resources/images/Mary.jpg','Lecturer','Graduated from the University of Sydney and worked as a lecturer at XMUM.','mary@xmu.edu.my','General Topology');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 23:23:54