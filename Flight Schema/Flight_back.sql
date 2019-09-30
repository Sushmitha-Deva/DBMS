-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: FLIGHT
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `Aircraft`
--

DROP TABLE IF EXISTS `Aircraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aircraft` (
  `Aid` int(11) NOT NULL,
  `Aname` varchar(20) DEFAULT NULL,
  `Crange` int(11) DEFAULT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aircraft`
--

LOCK TABLES `Aircraft` WRITE;
/*!40000 ALTER TABLE `Aircraft` DISABLE KEYS */;
INSERT INTO `Aircraft` VALUES (500,'Boeing',2000),(501,'Boeing',8000),(502,'Cirrus',1500),(503,'Learjet',2000),(504,'Lockheed',1800),(505,'Douglas',2500),(506,'Spitfire',3500),(507,'Wright',4500),(508,'Boeing',1500),(509,'Cirrus',1800);
/*!40000 ALTER TABLE `Aircraft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Certified`
--

DROP TABLE IF EXISTS `Certified`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Certified` (
  `Aid` int(11) NOT NULL,
  `Eid` int(11) NOT NULL,
  PRIMARY KEY (`Eid`,`Aid`),
  KEY `cert_fk_air` (`Aid`),
  CONSTRAINT `cert_fk_air` FOREIGN KEY (`Aid`) REFERENCES `Aircraft` (`Aid`),
  CONSTRAINT `cert_fk_emp` FOREIGN KEY (`Eid`) REFERENCES `Employees` (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Certified`
--

LOCK TABLES `Certified` WRITE;
/*!40000 ALTER TABLE `Certified` DISABLE KEYS */;
INSERT INTO `Certified` VALUES (500,100),(500,101),(500,102),(500,103),(500,104),(501,100),(501,102),(502,100),(502,101),(502,102),(503,101),(503,102),(503,103),(504,104),(505,105),(506,106),(507,107),(508,108),(509,109);
/*!40000 ALTER TABLE `Certified` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `ECA`
--

DROP TABLE IF EXISTS `ECA`;
/*!50001 DROP VIEW IF EXISTS `ECA`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ECA` AS SELECT 
 1 AS `Aid`,
 1 AS `Eid`,
 1 AS `Ename`,
 1 AS `Salary`,
 1 AS `Aname`,
 1 AS `Crange`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employees` (
  `Eid` int(11) NOT NULL,
  `Ename` varchar(20) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`Eid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (100,'Hrishi',25000),(101,'Harsha',20000),(102,'Bhaskar',30000),(103,'Deva',35000),(104,'Mythu',30000),(105,'Nikhil',18000),(106,'Manoj',27000),(107,'Sadwi',16000),(108,'Pranj',15000),(109,'Macha',19000),(110,'Santhoshi',30000),(111,'Vaishnavi',18000);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Flights`
--

DROP TABLE IF EXISTS `Flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Flights` (
  `Flno` int(11) NOT NULL,
  `Src` varchar(20) DEFAULT NULL,
  `Dest` varchar(20) DEFAULT NULL,
  `Distance` int(11) DEFAULT NULL,
  `Departs` time DEFAULT NULL,
  `Arrives` time DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  PRIMARY KEY (`Flno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Flights`
--

LOCK TABLES `Flights` WRITE;
/*!40000 ALTER TABLE `Flights` DISABLE KEYS */;
INSERT INTO `Flights` VALUES (1000,'Chennai','Hyderabad',1500,'12:30:00','14:30:00',35000),(1001,'Chennai','Hyderabad',1500,'15:00:00','18:30:00',30000),(1002,'Cochin','Hyderabad',1000,'08:00:00','12:30:00',20000),(1003,'Mumbai','Delhi',8000,'07:00:00','15:30:00',80000),(1004,'Bangalore','Goa',8000,'06:00:00','07:30:00',30000),(1005,'Cochin','Trivandrum',800,'06:00:00','07:00:00',10000),(1006,'Ahmedabad','Gwalior',1800,'09:00:00','10:50:00',25000),(1007,'Jaipur','Patna',2500,'09:00:00','11:40:00',40000),(1008,'Pune','Mangalore',3500,'10:00:00','12:00:00',40000),(1009,'Pune','Goa',4500,'10:00:00','13:00:00',50000);
/*!40000 ALTER TABLE `Flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ECA`
--

/*!50001 DROP VIEW IF EXISTS `ECA`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ECA` AS (select `Certified`.`Aid` AS `Aid`,`Employees`.`Eid` AS `Eid`,`Employees`.`Ename` AS `Ename`,`Employees`.`Salary` AS `Salary`,`Aircraft`.`Aname` AS `Aname`,`Aircraft`.`Crange` AS `Crange` from ((`Employees` join `Certified` on((`Employees`.`Eid` = `Certified`.`Eid`))) join `Aircraft` on((`Certified`.`Aid` = `Aircraft`.`Aid`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-11 14:47:54
