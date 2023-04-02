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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_name` varchar(45) NOT NULL,
  `admin_password` varchar(45) NOT NULL,
  PRIMARY KEY (`admin_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('Silas','ex67s4');
INSERT INTO `administrator` VALUES ('Bridget','k83fc4');
INSERT INTO `administrator` VALUES ('Lucas','xp2v2k');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` varchar(45) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `course_info` text NOT NULL,
  `course_credit` int NOT NULL,
  `course_time` varchar(45) NOT NULL,
  `course_venue` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('SWE405','Programming Elective','This course introduces the basic concepts of the Android system, the components of the Android project and the program construction process.',3,'2022-12-05 17:00-19:00','C3-401','Doris');
INSERT INTO `course` VALUES ('DMT301','Game Engine Design','This course aims to introduce game engine development technology to students, including game engine architecture design and computer graphics engine module development.',4,'2021-07-21 8:00-11:00','B2-104','Ethen');
INSERT INTO `course` VALUES ('CST305','ARM Assembly Language','This course is designed to equip students with the basics of ARM assembly language as well as computer architecture.',3,'2023-04-12 14:00-16:00','D1-302','Alarice');
INSERT INTO `course` VALUES ('ACC105','Commercial Law','This course is designed to give students an understanding of the fundamentals of commercial law.',2,'2019-09-26 9:00-10:00','A1-101','Maurice');
INSERT INTO `course` VALUES ('MAT202','General Topology','This course aims to enable students to understand the basic principles of topology, the application of formulas and practical operations.',4,'2020-10-26 15:00-17:00','B1-302','Mary');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `exam_id` int NOT NULL,
  `exam_name` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `exam_info` text NOT NULL,
  `exam_time` varchar(45) NOT NULL,
  `exam_venue` varchar(45) NOT NULL,
  `exam_type` varchar(45) NOT NULL,
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (6650,'Quiz 02','SWE','This is a staged quiz, and students must answer by handwriting.','2022-12-31 17:00-17:30','A3-401','Closed-book');
INSERT INTO `exam` VALUES (3156,'Final Exam','CST','This is the final exam for major course, and students must answer online.','2023-01-12 10:00-12:00','C4-102','Closed-book');
INSERT INTO `exam` VALUES (2163,'Quiz 12','ACC','This is the twelfth class quiz, and students must use handwriting to answer.','2022-11-05 8:00-8:15','D5-302','Open-book');
INSERT INTO `exam` VALUES (9486,'Midterm Exam','DMT','This is a mid-term exam for elective course and students are allowed to answer in open book.','2020-06-12 14:00-16:00','A2-104','Open-book');
INSERT INTO `exam` VALUES (2703,'Test','MAT','This is a quiz and students must answer it in closed book.','2023-10-02 9:00-10:30','B2-403','Closed-book');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` varchar(45) NOT NULL,
  `student_password` varchar(45) NOT NULL,
  `student_name` varchar(45) NOT NULL,
  `studnet_gender` varchar(45) NOT NULL,
  `studnet_nationality` varchar(45) NOT NULL,
  `registration_date` datetime NOT NULL,
  `student_major` varchar(45) NOT NULL,
  `student_email` varchar(45) NOT NULL,
  `student_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('SWE2109100','86671','Perry','Male','American','2021-09-25','Software Engineering','perry@xmu.edu.my','19984888836');
INSERT INTO `student` VALUES ('DMT2109132','54441','Joyce','Female','American','2021-09-25','Digital Media Technology','joyce@xmu.edu.my','13655223540');
INSERT INTO `student` VALUES ('ACC2209107','91470','Delilah','Male','Tunisian','2022-09-25','Accounting','delilah@xmu.edu.my','17076553805');
INSERT INTO `student` VALUES ('CST2009254','62519','Raymond','Male','British','2020-10-25','Computer Science Technology','raymod@xmu.edu.my','18959546124');
INSERT INTO `student` VALUES ('SWE1909004','24883','Zhang San','Male','Chinese','2019-09-25','Software Engineering','zhangsan@xmu.edu.my','15306562257');
INSERT INTO `student` VALUES ('DMT2009135','75327','Eaton','Male','British','2020-09-25','Digital Media Technology','eaton@xmu.edu.my','15927046442');
INSERT INTO `student` VALUES ('AIT2209315','68362','Rory','Female','American','2022-09-25','Artificial Intelligence Technology','rory@xmu.edu.my','17000699834');
INSERT INTO `student` VALUES ('ENG2109001','61796','Kent','Male','Kenya','2021-09-25','English','kent@xmu.edu.my','14603489031');
INSERT INTO `student` VALUES ('MAT2009513','95639','Gilda','Female','Indian','2020-09-25','Mathematics','gilda@xmu.edu.my','13124007592');
INSERT INTO `student` VALUES ('PHY2209412','82131','Morgan','Male','American','2022-09-25','Physics','morgan@xmu.edu.my','17530308844');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-12-19 00:39:32