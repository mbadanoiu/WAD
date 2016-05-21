CREATE DATABASE  IF NOT EXISTS `wadproject` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wadproject`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: wadproject
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `BLOGNAME` varchar(45) NOT NULL,
  `AUTHOR` varchar(15) NOT NULL,
  `BLOGTYPE` varchar(40) NOT NULL,
  `PATH` varchar(45) NOT NULL,
  `PUBLIC` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`x`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boughtpackages`
--

DROP TABLE IF EXISTS `boughtpackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boughtpackages` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `GYMPACK` int(11) NOT NULL,
  `USER` int(11) NOT NULL,
  PRIMARY KEY (`x`),
  KEY `PKey_idx` (`GYMPACK`),
  KEY `UKey_idx` (`USER`),
  CONSTRAINT `bpPKey` FOREIGN KEY (`GYMPACK`) REFERENCES `gympackages` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bpUKey` FOREIGN KEY (`USER`) REFERENCES `clients` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boughtpackages`
--

LOCK TABLES `boughtpackages` WRITE;
/*!40000 ALTER TABLE `boughtpackages` DISABLE KEYS */;
/*!40000 ALTER TABLE `boughtpackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `VIEWNAME` varchar(15) NOT NULL,
  `USERNAME` varchar(15) NOT NULL,
  `PASS` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(100) NOT NULL,
  `SUBSCRIBED` tinyint(1) DEFAULT NULL,
  `CREDITCARD` varchar(255) DEFAULT NULL,
  `SIGNUPDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ADMIN` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  KEY `x` (`x`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gympackages`
--

DROP TABLE IF EXISTS `gympackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gympackages` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `PACKNAME` varchar(50) NOT NULL,
  `PACKTYPE` varchar(40) NOT NULL,
  `PRICE` float NOT NULL,
  `GYMNAME` varchar(40) NOT NULL,
  `DESCRIPTION` varchar(1000) DEFAULT NULL,
  `IMAGE` blob,
  `IMAGEPATH` varchar(50) DEFAULT NULL,
  `AVAILABLE` bit(1) DEFAULT NULL,
  PRIMARY KEY (`x`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gympackages`
--

LOCK TABLES `gympackages` WRITE;
/*!40000 ALTER TABLE `gympackages` DISABLE KEYS */;
/*!40000 ALTER TABLE `gympackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likedblogs`
--

DROP TABLE IF EXISTS `likedblogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likedblogs` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG` int(11) NOT NULL,
  `USER` int(11) NOT NULL,
  PRIMARY KEY (`x`),
  KEY `BKey_idx` (`BLOG`),
  KEY `UKey_idx` (`USER`),
  CONSTRAINT `lbBKey` FOREIGN KEY (`BLOG`) REFERENCES `blogs` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lbUKey` FOREIGN KEY (`USER`) REFERENCES `clients` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likedblogs`
--

LOCK TABLES `likedblogs` WRITE;
/*!40000 ALTER TABLE `likedblogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `likedblogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-20 22:23:47
