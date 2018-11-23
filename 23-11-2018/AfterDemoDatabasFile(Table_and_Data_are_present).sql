CREATE DATABASE  IF NOT EXISTS `policymanagementsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `policymanagementsystem`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: policymanagementsystem
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `company_id` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('HAR','Harward'),('LIC','Life Insurance of India'),('SBI','State Bank of India'),('VOY','VOYA');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (14);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hint`
--

DROP TABLE IF EXISTS `hint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hint` (
  `hint_id` int(11) NOT NULL,
  `hint_des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hint`
--

LOCK TABLES `hint` WRITE;
/*!40000 ALTER TABLE `hint` DISABLE KEYS */;
INSERT INTO `hint` VALUES (1,'What is your Fathers Name?'),(2,'What is your Pets Name?'),(3,'What is your Mothers Name?'),(4,'Who is your favourite actor Name?'),(5,'What is your school name\"');
/*!40000 ALTER TABLE `hint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainuser`
--

DROP TABLE IF EXISTS `mainuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mainuser` (
  `user_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `employer_type` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `hintans` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `passcode` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `salary` double NOT NULL,
  `hint_hint_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UK_l6g3stnr31mpfmmla1wyq0i2r` (`pan_no`),
  KEY `FKwsa2utajeypjbnsgrwqj8y4r` (`hint_hint_id`),
  CONSTRAINT `FKwsa2utajeypjbnsgrwqj8y4r` FOREIGN KEY (`hint_hint_id`) REFERENCES `hint` (`hint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainuser`
--

LOCK TABLES `mainuser` WRITE;
/*!40000 ALTER TABLE `mainuser` DISABLE KEYS */;
INSERT INTO `mainuser` VALUES ('A-001','Velachary-Chennai','9834526748','1992-12-24 00:00:00','praveen.dhanasekhar2gmail.com','Cognizant','Private','Praveen','Male','tim','Dhasekhar','BDIPD6273D','qwe','Btech',25000,1),('A-02','Hyderabad','9959990639','1996-06-11 00:00:00','keerthana1@gmail.com','Cts','Private','Sai Keerthana','Female','sandy','Sasi','KJLSS8768J','21nov526','CSE',345346,2),('admin','Velachary-Chennai','9834526748','1992-12-24 00:00:00','pravee','Private','Cognizant','Praveen','Male','Dhasekhar','d','B','admin','Btech',25000,1),('B-001','Adayar-Chennai','9834599291','1992-10-02 00:00:00','gowtham.purushoth@gmail.com','Insurance','Govt','Gowtham','Male','jim','Purushoth','ADFGT56430','Bonjo','Btech',70000,2),('B-02','Subash chandra bose Street','9941435080','1996-10-07 00:00:00','gowtham.puru@gmail.com','Cts','Private','Gowtham','Male','Nancy','John','HGFGJ2315O','16nov100','IT',987987,2),('B-03','qwertggy','7455558','1995-02-15 00:00:00','praveen@gmail.com','CTS','Private','Demo','Male','qwe','Demo2','QWEDD4578F','21nov448','BE',765256,4),('C-001','Kota-Rajashtan','8672378819','1985-08-12 00:00:00','priya.singham@gmail.com','NULL','Self-Employeed','Priya','Female','carrey','Singh','FDSPS2357S','Boggy','MS',125000,3),('C-002','Subash chandra bose Street','6546546546','2018-11-04 05:30:00','gom.we@gmail.com','VIP','Private','hery','Female','jenny','John','UGFJHGKJ8676gh','12nov285','eee',1111121,2),('C-03','Gandhi Nagar','9445198956','1997-08-07 00:00:00','praveen.vasu@gmail.com','Cts','Private','Vasu','Male','Velammal','Praveen','PNBVP6757A','19nov165','EEE',1200000,5),('C-04','Hyderabad','9866776396','1997-04-12 00:00:00','keerthana@gmail','Cts','Private','Sai Keerthana','Female','Bonjo','Goli','ASYSG1234A','21nov471','CSE',1243561,2),('D-001','Jamshedpur-Rajasthan','8672378757','1995-12-19 00:00:00','shanshank.pathak@gmail.com','Cognizant','Private','Shashank','Male','vaugh','Pathak','FDSPS5673S','Shalini','MBA',300000,4),('E-01','T.V.K Nagar','8122270409','1996-06-17 00:00:00','venkat.sasi1@gmail.com','TVS','Private','Venky','Male','Vijay','Sasi','nBCVS1235J','21nov939','ECE',2000007,4),('F-002','Velachary-Chennai','9834526748','1992-12-24 00:00:00','praveen.dhanasekhar2gmail.com','Cognizant','Private','Praveen','Male','tim','Dhasekhar','BDIP6273D','Dhasekhar','Btech',25000,1),('F-003','Subash chandra bose','9874546545','2018-11-05 05:30:00','gowtham','CTS','Private','hery','Male','Nancy','John','ADSf545e','12nov624','eee',345341234,2),('F-04','Subash chandra bose Street','9876543210','1997-11-01 05:30:00','Jammy.Pachai@gmail.com','Cts','Private','Jammy','Female','Nancy','Pachai','YTFJP1234J','14nov710','IT',1234124,2),('F-05','Subash chandra bose','9840868019','1996-10-07 00:00:00','gowtham.sai@gmail.com','CTS','Private','Gowtham','Male','Purushoth','Sasikala','ASDHG2135H','15nov220','Ece',1326545,2),('F-06','Ghandhi Nagar','9941435080','1993-11-09 00:00:00','Venkat.sasi@gmail.com','TVS','Private','Venky','Male','Velammal','Sasi','ASHVS1237N','19nov258','Mech',3456346,5),('F-07','Hyderabad','9959990639','1997-04-12 00:00:00','keerthanagoli@gmail','Cts','Private','Sai Keerthana','Female','Suresh','Goli','GHYSG1234A','21nov738','eee',3456346,1),('F-08','sg','9876543210a','1997-02-03 00:00:00','isdhios','CTS','Private','wer','Female','FRWT','aer','ASJWA1232F','21nov390','vded',12235656,4),('F-09','Chennai','9866776396','1996-03-12 00:00:00','indu@gmail','Cts','Private','Indu','Female','ram','Ram','ASVIR1233M','21nov244','CSE',672783694,1),('F-10','Subash chandra bose','9876543210','1996-10-07 00:00:00','gow','Cts','Private','Gowtham','Male','BLUE','John','ASDGJ1234O','21nov325','CSE',1243523782,4),('F-11','Hyderabad','9959990639','1997-06-19 00:00:00','keerthana.golis@gmail','Cts','Private','Sai Keerthana','Female','Amma','Golis','GHKSG7653J','21nov605','Ece',12341241,3);
/*!40000 ALTER TABLE `mainuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `payment` (
  `bill_id` varchar(255) NOT NULL,
  `bill_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `fine` double DEFAULT NULL,
  `paid_amt` double DEFAULT NULL,
  `user_user_id` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `FKrl3xo4ts3l37n1uk3vueephdh` (`user_user_id`),
  CONSTRAINT `FKrl3xo4ts3l37n1uk3vueephdh` FOREIGN KEY (`user_user_id`) REFERENCES `mainuser` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('HAR-VL-0001-ON-002','2018-11-19 00:00:00','2020-05-19 00:00:00',0,500,'A-001',1),('HAR-VL-0001-ON-003','2018-11-19 00:00:00','2020-08-19 00:00:00',0,500,'A-001',6),('HAR-VL-0002-ON-004','2018-11-19 00:00:00','2019-01-19 00:00:00',0,2200,'A-001',7),('HAR-VL-0002-ON-007','2018-11-21 00:00:00','2019-03-19 00:00:00',0,200,'A-001',10),('HAR-VL-002-ON-008','2018-11-21 00:00:00','2019-02-21 00:00:00',0,9990,'F-11',11),('HAR-VL-003-ON-009','2018-11-21 00:00:00','2019-01-21 00:00:00',0,4000,'B-03',12),('LIC-HL-0001-ON-005','2018-11-19 00:00:00','2019-02-19 00:00:00',0,1300,'A-001',8),('LIC-HL-0002-ON-006','2018-11-19 00:00:00','2019-03-19 00:00:00',0,5400,'A-001',9),('VOY-CP-0003-ON-010','2018-11-21 00:00:00','2019-01-21 00:00:00',0,2200,'B-03',13);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_table`
--

DROP TABLE IF EXISTS `policy_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policy_table` (
  `policy_id` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `interest` double DEFAULT NULL,
  `initial_deposit` double DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `policy_type` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `term_amount` int(11) DEFAULT NULL,
  `terms_per_year` int(11) DEFAULT NULL,
  `company_company_id` varchar(255) DEFAULT NULL,
  `type_typeid` int(11) DEFAULT NULL,
  `maturity_amount` double NOT NULL,
  PRIMARY KEY (`policy_id`),
  KEY `FK8on2qfh0g89t5i0cfjp1is38n` (`company_company_id`),
  KEY `FK4fmbo7g9mhej3xy86yhsk4i22` (`type_typeid`),
  CONSTRAINT `FK4fmbo7g9mhej3xy86yhsk4i22` FOREIGN KEY (`type_typeid`) REFERENCES `usertype` (`typeid`),
  CONSTRAINT `FK8on2qfh0g89t5i0cfjp1is38n` FOREIGN KEY (`company_company_id`) REFERENCES `company` (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_table`
--

LOCK TABLES `policy_table` WRITE;
/*!40000 ALTER TABLE `policy_table` DISABLE KEYS */;
INSERT INTO `policy_table` VALUES ('HAR-VL-0001',6,12,3000,'HardwardVehicle','Vehicle','2018-01-10 00:00:00',500,3,'HAR',11,7851),('HAR-VL-0002',2,5,2000,'Hardward','Vehicle','2018-11-12 05:30:00',200,2,'LIC',12,62788),('HAR-VL-002',6,12,3000,'Hardward','Health','2018-11-22 00:00:00',400,3,'HAR',11,11064),('HAR-VL-003',3,4,2000,'ICICI','Vehicle','2018-11-14 05:30:00',2000,2,'LIC',13,0),('HAR-VL-2',6,45,3000,'HardwardVehicle','Vehicle','2018-11-19 00:00:00',999,3,'HAR',11,29073.9),('HAR-VL-3',3,0,2000,'Hardward','Health','2018-11-16 00:00:00',200,2,'HAR',12,3200),('LIC-HL-0001',4,9,1000,'LIC Health','Health','2017-03-07 00:00:00',300,3,'LIC',12,589),('LIC-HL-0002',5,2,5000,'SBI health','Health','2018-11-12 05:30:00',400,4,'LIC',13,2575),('LIC-HL-2',2,8,1000,'LIC Health','Health','2018-11-16 00:00:00',200,3,'LIC',14,2296),('SBI-RT-0001',7,13,2000,'SBIRetirement','Retirement','2019-05-08 00:00:00',500,4,'SBI',13,9874),('VOY-CP-0001',5,8,1000,'VOYChildPlan','Child','2015-07-05 00:00:00',100,5,'VOY',14,6858),('VOY-CP-0002',2,2,2900,'Voyo health','Child','2018-11-12 05:30:00',400,4,'VOY',13,5765),('VOY-CP-0003',4,6,2000,'ICICI','Child','2018-11-12 05:30:00',200,2,'VOY',14,554),('VOY-CP-004',4,5,10000,'Demo1','Child','2018-11-21 00:00:00',400,3,'LIC',12,15040),('VOY-CP-010',2,3,2500,'Hardward','Vehicle','2018-11-21 00:00:00',300,2,'SBI',14,3736),('VOY-CP-10',3,0,2000,'VOYA Vehicle','Vehicle','2018-11-16 00:00:00',200,0,'VOY',14,2000),('VOY-CP-11',3,0,2500,'SBI vehicle','Vehicle','2018-11-16 00:00:00',300,2,'VOY',15,4300),('VOY-CP-12',3,0,2500,'SBI vehicle','Vehicle','2018-11-16 00:00:00',300,2,'VOY',13,4300),('VOY-CP-13',3,0,2500,'SBI vehicle','Vehicle','2018-11-16 00:00:00',300,2,'VOY',12,4300),('VOY-CP-14',3,0,2500,'SBI vehicle','Vehicle','2018-11-16 00:00:00',300,2,'VOY',11,4300),('VOY-CP-2',3,0,1000,'VOYChildPlan','Child','2018-11-16 00:00:00',200,0,'VOY',15,1000),('VOY-CP-3',3,0,1000,'VOYChildPlan','Child','2018-11-16 00:00:00',200,0,'VOY',13,1000),('VOY-CP-4',2,0,2000,'LIC Vehicle','Vehicle','2018-11-13 05:30:00',200,0,'VOY',12,2000),('VOY-CP-5',2,0,2000,'LIC Health','Health','2018-11-13 05:30:00',20022,0,'VOY',11,2000),('VOY-CP-6',3,0,2000,'LIC Health','Health','2018-11-16 00:00:00',20022,0,'VOY',14,2000),('VOY-CP-7',3,0,2000,'LIC Health','Health','2018-11-16 00:00:00',20022,0,'VOY',13,2000),('VOY-CP-8',3,0,2000,'LIC Health','Health','2018-11-16 00:00:00',20022,0,'VOY',12,2000),('VOY-CP-9',3,0,2000,'ICICI','Vehicle','2018-11-14 05:30:00',200,0,'VOY',11,2000),('VOY-LF-001',3,1,2000,'VOYA LIFE','Life','2018-11-20 00:00:00',300,2,'VOY',15,3818);
/*!40000 ALTER TABLE `policy_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_enrolled_policy`
--

DROP TABLE IF EXISTS `user_enrolled_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_enrolled_policy` (
  `id` int(11) NOT NULL,
  `enrolled_date` datetime DEFAULT NULL,
  `policy_policy_id` varchar(255) DEFAULT NULL,
  `user_user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfwoeva0m6hrgf6s8x3ymyq4ck` (`policy_policy_id`),
  KEY `FKf0slrf0n68yywhua3lnxfgpv8` (`user_user_id`),
  CONSTRAINT `FKf0slrf0n68yywhua3lnxfgpv8` FOREIGN KEY (`user_user_id`) REFERENCES `mainuser` (`user_id`),
  CONSTRAINT `FKfwoeva0m6hrgf6s8x3ymyq4ck` FOREIGN KEY (`policy_policy_id`) REFERENCES `policy_table` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_enrolled_policy`
--

LOCK TABLES `user_enrolled_policy` WRITE;
/*!40000 ALTER TABLE `user_enrolled_policy` DISABLE KEYS */;
INSERT INTO `user_enrolled_policy` VALUES (1,'2018-11-19 00:00:00','HAR-VL-0001','A-001'),(2,'2018-11-19 00:00:00','HAR-VL-0002','A-001'),(3,'2018-11-19 00:00:00','LIC-HL-0001','A-001'),(4,'2018-11-19 00:00:00','LIC-HL-0002','A-001'),(5,'2018-11-21 00:00:00','HAR-VL-002','F-11'),(6,'2018-11-21 00:00:00','HAR-VL-003','B-03'),(7,'2018-11-21 00:00:00','VOY-CP-0003','B-03');
/*!40000 ALTER TABLE `user_enrolled_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usertype` (
  `typeid` int(11) NOT NULL,
  `type_variable` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (11,NULL),(12,NULL),(13,NULL),(14,NULL),(15,NULL);
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23 10:35:56
