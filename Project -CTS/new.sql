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
  `company_ins_id` varchar(3) NOT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`company_ins_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('HAR','Hartford Insurance'),('LIC','Life Insurance'),('SBI','State Bank of  India'),('VOY','Voya Insurance');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hint`
--

DROP TABLE IF EXISTS `hint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hint` (
  `hint_id` int(2) NOT NULL,
  `hint_des` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hint`
--

LOCK TABLES `hint` WRITE;
/*!40000 ALTER TABLE `hint` DISABLE KEYS */;
INSERT INTO `hint` VALUES (1,'Are you an idiot?');
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
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `pan_no` varchar(10) DEFAULT NULL,
  `employer_type` varchar(20) DEFAULT NULL,
  `employer` varchar(255) DEFAULT NULL,
  `hint_hint_id` int(2) NOT NULL,
  `hint_answer` varchar(20) DEFAULT NULL,
  `passcode` varchar(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_id` (`email_id`),
  UNIQUE KEY `pan_no` (`pan_no`),
  KEY `fk_mainuser_hint_idx` (`hint_hint_id`),
  CONSTRAINT `fk_mainuser_hint` FOREIGN KEY (`hint_hint_id`) REFERENCES `hint` (`hint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainuser`
--

LOCK TABLES `mainuser` WRITE;
/*!40000 ALTER TABLE `mainuser` DISABLE KEYS */;
INSERT INTO `mainuser` VALUES ('admin','praveen','dhanasekar','2018-11-04','24/19 2nd street extn chennai','9445198956','praveenavantgrade@gmail.com','BE','M',10000.00,'12345678','Govt','insurance',1,'true','admin'),('testUser','gowtham','sasikala','2017-08-09','qweyhdnfch','789456122','gowtham@gmail.com','BE','M',123456.00,'1254825','Govt','insurance',1,'true','test');
/*!40000 ALTER TABLE `mainuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_payment`
--

DROP TABLE IF EXISTS `policy_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policy_payment` (
  `bill_id` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `paid_amt` double(6,2) DEFAULT NULL,
  `fine` double(6,2) DEFAULT NULL,
  `due_date` date NOT NULL,
  `policy_table_policy_id` varchar(11) NOT NULL,
  PRIMARY KEY (`bill_id`),
  KEY `fk_policy_payment_policy_table1_idx` (`policy_table_policy_id`),
  CONSTRAINT `fk_policy_payment_policy_table1` FOREIGN KEY (`policy_table_policy_id`) REFERENCES `policy_table` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_payment`
--

LOCK TABLES `policy_payment` WRITE;
/*!40000 ALTER TABLE `policy_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_payment_has_mainuser`
--

DROP TABLE IF EXISTS `policy_payment_has_mainuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policy_payment_has_mainuser` (
  `policy_payment_bill_id` varchar(20) NOT NULL,
  `mainuser_user_id` varchar(255) NOT NULL,
  PRIMARY KEY (`policy_payment_bill_id`,`mainuser_user_id`),
  KEY `fk_policy_payment_has_mainuser_mainuser1_idx` (`mainuser_user_id`),
  KEY `fk_policy_payment_has_mainuser_policy_payment1_idx` (`policy_payment_bill_id`),
  CONSTRAINT `fk_policy_payment_has_mainuser_mainuser1` FOREIGN KEY (`mainuser_user_id`) REFERENCES `mainuser` (`user_id`),
  CONSTRAINT `fk_policy_payment_has_mainuser_policy_payment1` FOREIGN KEY (`policy_payment_bill_id`) REFERENCES `policy_payment` (`bill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_payment_has_mainuser`
--

LOCK TABLES `policy_payment_has_mainuser` WRITE;
/*!40000 ALTER TABLE `policy_payment_has_mainuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy_payment_has_mainuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy_table`
--

DROP TABLE IF EXISTS `policy_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policy_table` (
  `policy_id` varchar(11) NOT NULL,
  `company_company_ins_id` varchar(3) NOT NULL,
  `policy_name` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `duration` int(4) DEFAULT NULL,
  `initial_deposit` double(10,2) DEFAULT NULL,
  `terms_per_year` int(4) DEFAULT NULL,
  `term_amount` double(6,2) DEFAULT NULL,
  `interest` double(4,2) DEFAULT NULL,
  PRIMARY KEY (`policy_id`),
  KEY `fk_policy_table_company1_idx` (`company_company_ins_id`),
  CONSTRAINT `fk_policy_table_company1` FOREIGN KEY (`company_company_ins_id`) REFERENCES `company` (`company_ins_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy_table`
--

LOCK TABLES `policy_table` WRITE;
/*!40000 ALTER TABLE `policy_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_enrolled_policy`
--

DROP TABLE IF EXISTS `user_enrolled_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_enrolled_policy` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `mainuser_user_id` varchar(255) NOT NULL,
  `policy_table_policy_id` varchar(11) NOT NULL,
  `enrolled_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_enrolled_policy_mainuser1_idx` (`mainuser_user_id`),
  KEY `fk_user_enrolled_policy_policy_table1_idx` (`policy_table_policy_id`),
  CONSTRAINT `fk_user_enrolled_policy_mainuser1` FOREIGN KEY (`mainuser_user_id`) REFERENCES `mainuser` (`user_id`),
  CONSTRAINT `fk_user_enrolled_policy_policy_table1` FOREIGN KEY (`policy_table_policy_id`) REFERENCES `policy_table` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_enrolled_policy`
--

LOCK TABLES `user_enrolled_policy` WRITE;
/*!40000 ALTER TABLE `user_enrolled_policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_enrolled_policy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-05  1:58:59
