-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: suppliers
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part` (
  `pno` int(11) NOT NULL,
  `pname` varchar(15) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,'Nut','Black',10,'hanamkonda'),(2,'Bolt','Brown',15,'warangal'),(3,'screw','Red',17,'hanamkonda'),(4,'wires','Green',20,'thrissur'),(5,'breadboard','Yellow',16,'vijaywada'),(6,'capacitor','Blue',7,'hyderabad');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `jno` int(11) NOT NULL,
  `jname` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`jno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'X','hanamkonda'),(2,'Y','warangal'),(3,'Z','thrissur'),(4,'A','hyderabad'),(5,'B','hyderabad'),(6,'C','vijaywada');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `s2`
--

DROP TABLE IF EXISTS `s2`;
/*!50001 DROP VIEW IF EXISTS `s2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `s2` AS SELECT 
 1 AS `sno`,
 1 AS `pno`,
 1 AS `jno`,
 1 AS `qty`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `spj`
--

DROP TABLE IF EXISTS `spj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spj` (
  `sno` int(11) NOT NULL,
  `pno` int(11) NOT NULL,
  `jno` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  PRIMARY KEY (`sno`,`pno`,`jno`),
  KEY `pno` (`pno`),
  KEY `jno` (`jno`),
  CONSTRAINT `spj_ibfk_1` FOREIGN KEY (`sno`) REFERENCES `supplier` (`sno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `spj_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `part` (`pno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `spj_ibfk_3` FOREIGN KEY (`jno`) REFERENCES `project` (`jno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `spj_ibfk_4` FOREIGN KEY (`sno`) REFERENCES `supplier` (`sno`),
  CONSTRAINT `spj_ibfk_5` FOREIGN KEY (`pno`) REFERENCES `part` (`pno`),
  CONSTRAINT `spj_ibfk_6` FOREIGN KEY (`jno`) REFERENCES `project` (`jno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spj`
--

LOCK TABLES `spj` WRITE;
/*!40000 ALTER TABLE `spj` DISABLE KEYS */;
INSERT INTO `spj` VALUES (1,1,2,20),(1,1,6,40),(1,2,1,30),(1,2,2,50),(1,2,3,20),(1,2,4,10),(1,2,5,30),(1,2,6,10),(2,1,6,10),(2,2,1,40),(2,3,6,20),(3,1,1,60),(3,2,1,50),(3,3,6,70),(4,1,4,50),(4,5,1,10),(4,5,5,50),(5,1,1,80),(5,6,5,10),(6,1,6,65),(6,6,3,20);
/*!40000 ALTER TABLE `spj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `sno` int(11) NOT NULL,
  `sname` varchar(15) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Deva',10,'warangal'),(2,'manasa',4,'hanamkonda'),(3,'sadwika',5,'hyderabad'),(4,'Hrishi',10,'thrissur'),(5,'Pawan',6,'vijaywada'),(6,'Satya',50,'warangal'),(7,'Ram',40,'hanamkonda');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v1`
--

DROP TABLE IF EXISTS `v1`;
/*!50001 DROP VIEW IF EXISTS `v1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v1` AS SELECT 
 1 AS `pno`,
 1 AS `sno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v2`
--

DROP TABLE IF EXISTS `v2`;
/*!50001 DROP VIEW IF EXISTS `v2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v2` AS SELECT 
 1 AS `ssno`,
 1 AS `spno`,
 1 AS `vsno`,
 1 AS `vpno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v3`
--

DROP TABLE IF EXISTS `v3`;
/*!50001 DROP VIEW IF EXISTS `v3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v3` AS SELECT 
 1 AS `ssno`,
 1 AS `spno`,
 1 AS `vsno`,
 1 AS `vpno`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `s2`
--

/*!50001 DROP VIEW IF EXISTS `s2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`deva`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `s2` AS (select `spj`.`sno` AS `sno`,`spj`.`pno` AS `pno`,`spj`.`jno` AS `jno`,`spj`.`qty` AS `qty` from `spj` where (`spj`.`sno` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v1`
--

/*!50001 DROP VIEW IF EXISTS `v1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`deva`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v1` AS (select distinct `spj`.`pno` AS `pno`,`spj`.`sno` AS `sno` from `spj`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v2`
--

/*!50001 DROP VIEW IF EXISTS `v2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`deva`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v2` AS (select `s`.`sno` AS `ssno`,`s`.`pno` AS `spno`,`v`.`sno` AS `vsno`,`v`.`pno` AS `vpno` from (`spj` `s` join `v1` `v` on((`s`.`pno` = `v`.`pno`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v3`
--

/*!50001 DROP VIEW IF EXISTS `v3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`deva`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v3` AS (select `s`.`sno` AS `ssno`,`s`.`pno` AS `spno`,`v`.`sno` AS `vsno`,`v`.`pno` AS `vpno` from (`v1` `s` join `v1` `v` on((`s`.`pno` = `v`.`pno`)))) */;
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

-- Dump completed on 2018-03-20 20:42:29
