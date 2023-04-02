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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-24 17:42:19