-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: ngo
-- ------------------------------------------------------
-- Server version	5.6.47-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'shubham','kukki303');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `donationId` int(11) NOT NULL AUTO_INCREMENT,
  `doner_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `alternate_contact` varchar(45) DEFAULT NULL,
  `pickup_location` varchar(45) DEFAULT NULL,
  `pickup_address` varchar(200) DEFAULT NULL,
  `date_of_pickup` varchar(45) DEFAULT NULL,
  `time_of_pickup` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `type_of_cloth` varchar(45) DEFAULT NULL,
  `suitable_for` varchar(45) DEFAULT NULL,
  `for_class` varchar(45) DEFAULT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`donationId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (7,'Shubham','abdshubham13@gmail.com','7277252338','9123035174','karunamoyee','Tank no 10','2020-05-13','23:32','nothing','Old Cloths','78','Woolen','men','','');
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation_quantity`
--

DROP TABLE IF EXISTS `donation_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation_quantity` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ngo_Id` int(11) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `donation_Id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation_quantity`
--

LOCK TABLES `donation_quantity` WRITE;
/*!40000 ALTER TABLE `donation_quantity` DISABLE KEYS */;
INSERT INTO `donation_quantity` VALUES (1,4,'6','Used Computer','3'),(3,5,'6','Old Cloths','5'),(4,4,'70','Old Cloths','7'),(5,2,'8','Old Cloths','7');
/*!40000 ALTER TABLE `donation_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_needed`
--

DROP TABLE IF EXISTS `item_needed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_needed` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NgoId` varchar(45) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_needed`
--

LOCK TABLES `item_needed` WRITE;
/*!40000 ALTER TABLE `item_needed` DISABLE KEYS */;
INSERT INTO `item_needed` VALUES (1,'4','Old Cloths'),(2,'6','Old Cloths'),(3,'7','Used Computer');
/*!40000 ALTER TABLE `item_needed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngo`
--

DROP TABLE IF EXISTS `ngo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngo` (
  `ngoId` int(11) NOT NULL AUTO_INCREMENT,
  `ngo_name` varchar(45) DEFAULT NULL,
  `chairman` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `establishment_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ngoId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngo`
--

LOCK TABLES `ngo` WRITE;
/*!40000 ALTER TABLE `ngo` DISABLE KEYS */;
INSERT INTO `ngo` VALUES (4,'milap','sk','7277252338','kolkata','abdshubham13@gmail.com','1234','2002'),(5,'Gedion','ab','7277252338','kolkata','shubhamkumar@gmail.com','1234','2002'),(7,'Pawsam','Shreya','8837078568','Sasaram','ashreya@gmail.com','12345','2004');
/*!40000 ALTER TABLE `ngo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickup_list`
--

DROP TABLE IF EXISTS `pickup_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pickup_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickup_list`
--

LOCK TABLES `pickup_list` WRITE;
/*!40000 ALTER TABLE `pickup_list` DISABLE KEYS */;
INSERT INTO `pickup_list` VALUES (1,'salt lake'),(2,'karunamoyee'),(3,'mahish bathan');
/*!40000 ALTER TABLE `pickup_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `volunteer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `alternate_contact` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `registered_with_ngo` varchar(45) DEFAULT NULL,
  `pickup_location` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-12 21:34:22
