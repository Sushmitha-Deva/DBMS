-- MySQL dump 10.13  Distrib 5.5.59, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: PROJECT
-- ------------------------------------------------------
-- Server version	5.5.59-0ubuntu0.14.04.1

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
-- Table structure for table `ALUMNI`
--

DROP TABLE IF EXISTS `ALUMNI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALUMNI` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Year` int(11) NOT NULL DEFAULT '0',
  `A_Name` varchar(25) NOT NULL DEFAULT '',
  `Contact_details` varchar(50) DEFAULT NULL,
  `Achievements` varchar(100) DEFAULT NULL,
  `Works_At` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Cid`,`Year`,`A_Name`),
  CONSTRAINT `ALUMNI_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUMNI`
--

LOCK TABLES `ALUMNI` WRITE;
/*!40000 ALTER TABLE `ALUMNI` DISABLE KEYS */;
INSERT INTO `ALUMNI` VALUES ('0TN001',2014,'Chandrasekar E','mds14m002@iiitdm.ac.in','','TVS SUNDARAM FASTENERS'),('0TN001',2014,'Chetan Soni','cds14m002@iiitdm.ac.in','','CTECH LABS'),('0TN001',2014,'Dhayalakumar','eds14m004@iiitdm.ac.in','','Phd IIITDM Kancheepuram'),('0TN001',2014,'Jaganathan A','mds14m007@iiitdm.ac.in','','TANGEDCO');
/*!40000 ALTER TABLE `ALUMNI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BRANCH`
--

DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BRANCH` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Branch_Name` varchar(25) NOT NULL DEFAULT '',
  `Branch_type` varchar(8) DEFAULT NULL,
  `No_of_Seats` int(11) DEFAULT NULL,
  `Sections` int(11) DEFAULT NULL,
  PRIMARY KEY (`Branch_Name`,`Cid`),
  KEY `Cid` (`Cid`),
  CONSTRAINT `BRANCH_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES ('0TN001','CED','Dual deg',40,1),('0TN001','COE','Btech',40,1),('0TN001','EDM','Btech',40,1),('0TN001','ESD','Dual deg',20,1),('0TN001','EVD','Dual deg',20,1),('0TN001','MDM','Btech',40,1),('0TN001','MFD','Dual deg',20,1),('0TN001','MPD','Dual deg',20,1),('0TN001','MSM','Btech',40,1);
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COLLEGE`
--

DROP TABLE IF EXISTS `COLLEGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COLLEGE` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Cname` varchar(30) DEFAULT NULL,
  `Clocation` varchar(100) DEFAULT NULL,
  `Ctype` varchar(10) DEFAULT NULL,
  `Crank` int(11) DEFAULT NULL,
  `Clink` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COLLEGE`
--

LOCK TABLES `COLLEGE` WRITE;
/*!40000 ALTER TABLE `COLLEGE` DISABLE KEYS */;
INSERT INTO `COLLEGE` VALUES ('0TN001','IIITDM Kancheeuram','Vandalur-Kelambakkam road,Chennai:600127','Govt',151,'http://www.iiitdm.ac.in/');
/*!40000 ALTER TABLE `COLLEGE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPANIES`
--

DROP TABLE IF EXISTS `COMPANIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPANIES` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Year` int(11) NOT NULL DEFAULT '0',
  `Companies` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`Cid`,`Year`,`Companies`),
  CONSTRAINT `COMPANIES_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANIES`
--

LOCK TABLES `COMPANIES` WRITE;
/*!40000 ALTER TABLE `COMPANIES` DISABLE KEYS */;
INSERT INTO `COMPANIES` VALUES ('0TN001',2016,'Bosch'),('0TN001',2016,'IVTL'),('0TN001',2016,'Saint Gobain'),('0TN001',2016,'System Insights'),('0TN001',2016,'TCS - EIS'),('0TN001',2016,'Trimble'),('0TN001',2016,'Vassar Labs'),('0TN001',2017,'DBS Bank'),('0TN001',2017,'Fr8'),('0TN001',2017,'HCL'),('0TN001',2017,'IVTL'),('0TN001',2017,'Saint Gobain'),('0TN001',2017,'Start Smart Labs'),('0TN001',2017,'TCS'),('0TN001',2017,'Tech Mahindra'),('0TN001',2017,'Trimble'),('0TN001',2017,'Vassar Labs');
/*!40000 ALTER TABLE `COMPANIES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUT_OFFS`
--

DROP TABLE IF EXISTS `CUT_OFFS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUT_OFFS` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Branch_Name` varchar(25) NOT NULL DEFAULT '',
  `Caste` varchar(10) NOT NULL DEFAULT '',
  `Year` int(11) NOT NULL DEFAULT '0',
  `Opening_Rank` int(11) DEFAULT NULL,
  `Closing_Rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cid`,`Branch_Name`,`Caste`,`Year`),
  KEY `Branch_Name` (`Branch_Name`),
  CONSTRAINT `CUT_OFFS_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`),
  CONSTRAINT `CUT_OFFS_ibfk_2` FOREIGN KEY (`Branch_Name`) REFERENCES `BRANCH` (`Branch_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUT_OFFS`
--

LOCK TABLES `CUT_OFFS` WRITE;
/*!40000 ALTER TABLE `CUT_OFFS` DISABLE KEYS */;
INSERT INTO `CUT_OFFS` VALUES ('0TN001','CED','GENERAL',2017,16557,23128),('0TN001','CED','OBC-NCL',2017,6869,8559),('0TN001','CED','SC',2017,4228,5682),('0TN001','CED','ST',2017,2888,3411),('0TN001','COE','GENERAL',2017,8669,15995),('0TN001','COE','OBC-NCL',2017,5180,6288),('0TN001','COE','SC',2017,2572,4136),('0TN001','COE','ST',2017,857,2976),('0TN001','EDM','GENERAL',2017,12843,19961),('0TN001','EDM','OBC-NCL',2017,5254,7138),('0TN001','EDM','SC',2017,3550,3938),('0TN001','EDM','ST',2017,2468,3241),('0TN001','ESD','GENERAL',2017,17564,28979),('0TN001','ESD','OBC-NCL',2017,8336,10266),('0TN001','ESD','SC',2017,3247,5743),('0TN001','ESD','ST',2017,3317,3317),('0TN001','EVD','GENERAL',2017,19632,26609),('0TN001','EVD','OBC-NCL',2017,8804,9757),('0TN001','EVD','SC',2017,4098,5629),('0TN001','EVD','ST',2017,2882,4503),('0TN001','MDM','GENERAL',2017,14250,26086),('0TN001','MDM','OBC-NCL',2017,6212,9254),('0TN001','MDM','SC',2017,3854,5993),('0TN001','MDM','ST',2017,2351,3873),('0TN001','MFD','GENERAL',2017,27453,33612),('0TN001','MFD','OBC-NCL',2017,9521,11037),('0TN001','MFD','SC',2017,5713,6235),('0TN001','MFD','ST',2017,3246,4651),('0TN001','MPD','GENERAL',2017,13815,32333),('0TN001','MPD','OBC-NCL',2017,7746,11685),('0TN001','MPD','SC',2017,5774,6162),('0TN001','MPD','ST',2017,4950,4950),('0TN001','MSM','GENERAL',2017,21789,33350),('0TN001','MSM','OBC-NCL',2017,9505,11906),('0TN001','MSM','SC',2017,6012,7924),('0TN001','MSM','ST',2017,2713,5353);
/*!40000 ALTER TABLE `CUT_OFFS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EVENTS`
--

DROP TABLE IF EXISTS `EVENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EVENTS` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `E_name` varchar(20) NOT NULL DEFAULT '',
  `Etype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Cid`,`E_name`),
  CONSTRAINT `EVENTS_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENTS`
--

LOCK TABLES `EVENTS` WRITE;
/*!40000 ALTER TABLE `EVENTS` DISABLE KEYS */;
INSERT INTO `EVENTS` VALUES ('0TN001','Clusters','Intra-Techno-Cultura'),('0TN001','Samgatha','Techno-Cultural');
/*!40000 ALTER TABLE `EVENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FACULTY`
--

DROP TABLE IF EXISTS `FACULTY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACULTY` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `F_name` varchar(25) NOT NULL DEFAULT '',
  `Department` varchar(25) DEFAULT NULL,
  `Phd` varchar(30) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cid`,`F_name`),
  CONSTRAINT `FACULTY_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACULTY`
--

LOCK TABLES `FACULTY` WRITE;
/*!40000 ALTER TABLE `FACULTY` DISABLE KEYS */;
INSERT INTO `FACULTY` VALUES ('0TN001','Dr Karthic Narayanan R','Mechanical Engineering','Nanyang Technological Universi','karthicnarayanan@iiitdm.ac.in'),('0TN001','Dr Premkumar K.','Electrical and Communicat','IISC','kpk@iiitdm.ac.in'),('0TN001','Dr Senthilkumaran K','Mechanical Engineering','IIT Delhi','skumaran@iiitdm.ac.in'),('0TN001','Dr. Binsu J Kailath','Electrical Engineering','IIT Madras','bkailath@iiitdm.ac.in'),('0TN001','Dr. Damodharan P','Electrical Engineering','IIT Madras','damodharan@iiitdm.ac.in'),('0TN001','Dr. Jayabal K','Mechanical Engineering','IIT Madras','jayabal@iiitdm.ac.in'),('0TN001','Dr. Jayavel S','Mechanical Engineering','IIT Madras','sjv@iiitdm.ac.in'),('0TN001','Dr. Karthikeyan S S','Electrical and Communicat','IIT Guwahati','ssk@iiitdm.ac.in'),('0TN001','Dr. Masilamani V','Computer Science','IIT Madras','masila@iiitdm.ac.in'),('0TN001','Dr. Naveen Kumar','Electronics Engineering','IIT Delhi','nkumar@iiitdm.ac.in'),('0TN001','Dr. Noor Mahammad SK','Computer Science','IIT Madras','noor@iiitdm.ac.in'),('0TN001','Dr. Pandithevan P','Mechanical Engineering','IIT Guwahati','ppthevan@iiitdm.ac.in'),('0TN001','Dr. Priyanka Kokil','Electronics Engineering','Motilal Nehru Institute of Tec','priyanka@iiitdm.ac.in'),('0TN001','Dr. Raja B','Mechanical Engineering','College of Engineering,Guindy','rajab@iiitdm.ac.in'),('0TN001','Dr. Sadagopan N','Computer Science','IIT Madras','sadagopan@iiitdm.ac.in'),('0TN001','Dr. Selvajyothi K','Electronics Engineering','IIT Madras','ksjyothi@iiitdm.ac.in'),('0TN001','Dr. Shahul Hamid Khan','Mechanical Engineering','NIT Trichy','bshahul@iiitdm.ac.in'),('0TN001','Dr. Shalu M A','Mathematics','IIT Madras','shalu@iiitdm.ac.in'),('0TN001','Dr. Shunmugham R. Pandian','Electronics Engineering','IIT Delhi','srp@iiitdm.ac.in'),('0TN001','Dr. Sivaselvan B','Computer Science','NIT Trichy','sivaselvanb@iiitdm.ac.in'),('0TN001','Dr. Sreekumar M','Mechanical Engineering','IIT Madras','msk@iiitdm.ac.in'),('0TN001','Dr. Sudhir Varadarajan','Systems Engineering and M','IIT Madras','sudhir@iiitdm.ac.in'),('0TN001','Dr. Sunilkumar Anumula','Physics','Politecnico di Milano','sunilkumar@iiitdm.ac.in'),('0TN001','Dr. T.S. Narayanan (Hari)','Computer Science','Concordia University','tsnarayanan@iiitdm.ac.in'),('0TN001','Dr. Tapas Sil','Physics','Visva Bharati, Shantiniketan','tapassil@iiitdm.ac.in'),('0TN001','Dr. Umarani Jayaraman','Computer Science','IIT Kanpur','umarani@iiitdm.ac.in'),('0TN001','Dr. Venkata Timmaraju Mal','Mechanical Engineering','IIT Madras','vtmallina@iiitdm.ac.in'),('0TN001','Dr. Vijayakumar S','Mathematics','IIT Madras','vijay@iiitdm.ac.in'),('0TN001','Prof. Banshidhar Majhi','Computer Science','NIT Rourkela','bm@iiitdm.ac.in');
/*!40000 ALTER TABLE `FACULTY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FEE_STRUCTURE`
--

DROP TABLE IF EXISTS `FEE_STRUCTURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FEE_STRUCTURE` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Category` varchar(20) NOT NULL DEFAULT '',
  `Year` int(11) NOT NULL DEFAULT '0',
  `Sem_fee` int(11) DEFAULT NULL,
  `Hostel_fee` int(11) DEFAULT NULL,
  `Total_fee` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cid`,`Category`,`Year`),
  CONSTRAINT `FEE_STRUCTURE_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEE_STRUCTURE`
--

LOCK TABLES `FEE_STRUCTURE` WRITE;
/*!40000 ALTER TABLE `FEE_STRUCTURE` DISABLE KEYS */;
INSERT INTO `FEE_STRUCTURE` VALUES ('0TN001','GENERAL',2014,28550,22700,51250),('0TN001','GENERAL',2015,44800,22700,67500),('0TN001','GENERAL',2016,48800,22700,71500),('0TN001','GENERAL',2017,53800,22700,76500),('0TN001','OBC-NCL',2014,28550,22700,51250),('0TN001','OBC-NCL',2015,44800,22700,67500),('0TN001','OBC-NCL',2017,53800,22700,76500),('0TN001','ONC-NCL',2016,48800,22700,71500),('0TN001','SC',2014,3550,22700,26250),('0TN001','SC',2015,4800,22700,27500),('0TN001','SC',2016,4800,22700,27500),('0TN001','SC',2017,4800,22700,27500),('0TN001','ST',2014,3550,22700,26250),('0TN001','ST',2015,4800,22700,27500),('0TN001','ST',2016,4800,22700,27500),('0TN001','ST',2017,4800,22700,27500);
/*!40000 ALTER TABLE `FEE_STRUCTURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLACEMENTS`
--

DROP TABLE IF EXISTS `PLACEMENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PLACEMENTS` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `Branch_Name` varchar(25) NOT NULL DEFAULT '',
  `Pass_out_year` int(11) NOT NULL DEFAULT '0',
  `No_of_students` int(11) DEFAULT NULL,
  `Avg_Salary` int(11) DEFAULT NULL,
  `Highest_Salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`Cid`,`Branch_Name`,`Pass_out_year`),
  KEY `Branch_Name` (`Branch_Name`),
  CONSTRAINT `PLACEMENTS_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`),
  CONSTRAINT `PLACEMENTS_ibfk_2` FOREIGN KEY (`Branch_Name`) REFERENCES `BRANCH` (`Branch_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLACEMENTS`
--

LOCK TABLES `PLACEMENTS` WRITE;
/*!40000 ALTER TABLE `PLACEMENTS` DISABLE KEYS */;
INSERT INTO `PLACEMENTS` VALUES ('0TN001','COE',2016,33,489000,900000),('0TN001','COE',2017,27,467000,1000000),('0TN001','EDM',2016,17,425000,650000),('0TN001','EDM',2017,32,382000,650000),('0TN001','MDM',2016,11,375000,600000),('0TN001','MDM',2017,18,383000,600000);
/*!40000 ALTER TABLE `PLACEMENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESEARCH`
--

DROP TABLE IF EXISTS `RESEARCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESEARCH` (
  `Cid` varchar(10) NOT NULL DEFAULT '',
  `F_name` varchar(25) NOT NULL DEFAULT '',
  `Research` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Cid`,`F_name`,`Research`),
  CONSTRAINT `RESEARCH_ibfk_1` FOREIGN KEY (`Cid`) REFERENCES `COLLEGE` (`Cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESEARCH`
--

LOCK TABLES `RESEARCH` WRITE;
/*!40000 ALTER TABLE `RESEARCH` DISABLE KEYS */;
INSERT INTO `RESEARCH` VALUES ('0TN001','Dr Premkumar K.','Scheduling in Networks'),('0TN001','Dr Senthilkumaran K','Additive Manufacturing'),('0TN001','Dr Senthilkumaran K','Smart Manufacturing'),('0TN001','Dr Senthilkumaran K','Sustainable Manufacturing'),('0TN001','Dr. Binsu J Kailath','Analog and Digital IC Design'),('0TN001','Dr. Binsu J Kailath','Device Modeling and Technology '),('0TN001','Dr. Damodharan P','Permanent magnet Brushless DC and AC Drives'),('0TN001','Dr. Damodharan P','Power Electronics and Drives'),('0TN001','Dr. Jayabal K','Computational Mechanics'),('0TN001','Dr. Jayabal K','Finite Element Methods'),('0TN001','Dr. Jayabal K','Smart Materials and Structures'),('0TN001','Dr. Jayavel S','Computational Fluid Dynamics'),('0TN001','Dr. Karthikeyan S S','Microsrtrip antennas'),('0TN001','Dr. Karthikeyan S S','Microwave passive devices '),('0TN001','Dr. Masilamani V','Algorithms and Data Structure'),('0TN001','Dr. Masilamani V','Image Processing and Computer Vision'),('0TN001','Dr. Masilamani V','Pattern Recognition'),('0TN001','Dr. Masilamani V','Theory of Computing'),('0TN001','Dr. Naveen Kumar','Fiber Optics'),('0TN001','Dr. Noor Mahammad SK','Evolvable Hardware'),('0TN001','Dr. Noor Mahammad SK','Network System Design'),('0TN001','Dr. Noor Mahammad SK','Software for VLSI Design'),('0TN001','Dr. Pandithevan P','Computer-Aided Tissue Engineering'),('0TN001','Dr. Pandithevan P','Design for Additive Manufacturing'),('0TN001','Dr. Pandithevan P','Geometric Modelling and CAD'),('0TN001','Dr. Priyanka Kokil','Nonlinear systems'),('0TN001','Dr. Priyanka Kokil','System theory'),('0TN001','Dr. Raja B','Electronic cooling systems'),('0TN001','Dr. Raja B','Enhanced heat transfer'),('0TN001','Dr. Raja B','Food Processing Techniques and Design'),('0TN001','Dr. Raja B','Product design'),('0TN001','Dr. Sadagopan N','Computer Networks'),('0TN001','Dr. Sadagopan N','Data Structures and Algorithms'),('0TN001','Dr. Sadagopan N','Database Systems'),('0TN001','Dr. Sadagopan N','Graph theory and Combinatorics'),('0TN001','Dr. Selvajyothi K','DSP Realization of Control Algorithms in Power Ele'),('0TN001','Dr. Selvajyothi K','Power Electronics, Drives and Control'),('0TN001','Dr. Selvajyothi K','Product Design'),('0TN001','Dr. Shalu M A','Algorithms'),('0TN001','Dr. Shalu M A','Graph Theory'),('0TN001','Dr. Shunmugham R. Pandian','Autonomous systems'),('0TN001','Dr. Shunmugham R. Pandian','Control systems'),('0TN001','Dr. Shunmugham R. Pandian','Robotics'),('0TN001','Dr. Sivaselvan B','Data Structures in Computer Science'),('0TN001','Dr. Sivaselvan B','Knowledge & Data Engineering'),('0TN001','Dr. Sreekumar M','Robotics'),('0TN001','Dr. Sreekumar M','Serial and Parallel Mechanisms'),('0TN001','Dr. Sreekumar M','Smart Materials and Smart Structures'),('0TN001','Dr. Sudhir Varadarajan','Complex responsive processes in design and innovat'),('0TN001','Dr. Sudhir Varadarajan','Managing the fuzzy front-end of product '),('0TN001','Dr. T.S. Narayanan (Hari)','Big Data & Data Mining '),('0TN001','Dr. T.S. Narayanan (Hari)','Internet of Things'),('0TN001','Dr. T.S. Narayanan (Hari)','Software Defined Networks '),('0TN001','Dr. Tapas Sil','Giant Resonances of Nuclei'),('0TN001','Dr. Tapas Sil','Supersymmetric Quantum Mechanics'),('0TN001','Dr. Venkata Timmaraju Mal','Fatigue and Fracture of Engineering materials'),('0TN001','Dr. Venkata Timmaraju Mal','Mathematical Modeling of Materials Behavior'),('0TN001','Dr. Vijayakumar S','Algorithms'),('0TN001','Dr. Vijayakumar S','Combinatorial Optimization'),('0TN001','Dr. Vijayakumar S','Graph Theory and Combinatorics'),('0TN001','Prof. Banshidhar Majhi','Cryptography and Security'),('0TN001','Prof. Banshidhar Majhi','Data Compression'),('0TN001','Prof. Banshidhar Majhi','Image Processing'),('0TN001','Prof. Banshidhar Majhi','Parallel Computing');
/*!40000 ALTER TABLE `RESEARCH` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-16 10:01:38
