-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: ECCD
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `CHILD`
--

DROP TABLE IF EXISTS `CHILD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CHILD` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Dzongkhag` varchar(20) DEFAULT NULL,
  `Geog` varchar(20) DEFAULT NULL,
  `FacilitatorName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FacilitatorName` (`FacilitatorName`),
  CONSTRAINT `CHILD_ibfk_1` FOREIGN KEY (`FacilitatorName`) REFERENCES `FACILITATOR` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CHILD`
--

LOCK TABLES `CHILD` WRITE;
/*!40000 ALTER TABLE `CHILD` DISABLE KEYS */;
INSERT INTO `CHILD` VALUES (1,'Pema Euzom Choden','F','2013-04-21','Mongar','Gyalpozhing','Karma Deki'),(2,'Namgyel Jamyang Tashi','M','2014-02-02','Mongar','Gyalpozhing','Karma Deki'),(3,'Jetsun Pema Yangki','F','2014-06-06','Mongar','Gyalpozhing','Karma Deki'),(4,'Nima Lhazin','F','2013-10-07','Mongar','Gyalpozhing','Tshering Wangmo'),(5,'Tenzin keewang Choden','F','2013-12-01','Mongar','Gyalpozhing','Tshering Wangmo'),(6,'Tashi Namgyal','M','2015-05-25','Mongar','Gyalpozhing','Tshering Wangmo'),(7,'Jigma Delker Yangden','F','2013-09-13','Mongar','Gyalpozhing','Pema Tshomo'),(8,'Pema Tobgay','M','2014-01-27','Mongar','Gyalpozhing','Pema Tshomo'),(9,'Yeedzin Ghakhil Lhamo','F','2014-10-30','Mongar','Gyalpozhing','Pema Tshomo');
/*!40000 ALTER TABLE `CHILD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `Classroom1`
--

DROP TABLE IF EXISTS `Classroom1`;
/*!50001 DROP VIEW IF EXISTS `Classroom1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Classroom1` AS SELECT 
 1 AS `Id`,
 1 AS `name`,
 1 AS `sex`,
 1 AS `DOB`,
 1 AS `Dzongkhag`,
 1 AS `Geog`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Classroom2`
--

DROP TABLE IF EXISTS `Classroom2`;
/*!50001 DROP VIEW IF EXISTS `Classroom2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Classroom2` AS SELECT 
 1 AS `Id`,
 1 AS `name`,
 1 AS `sex`,
 1 AS `DOB`,
 1 AS `Dzongkhag`,
 1 AS `Geog`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `Classroom3`
--

DROP TABLE IF EXISTS `Classroom3`;
/*!50001 DROP VIEW IF EXISTS `Classroom3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `Classroom3` AS SELECT 
 1 AS `Id`,
 1 AS `name`,
 1 AS `sex`,
 1 AS `DOB`,
 1 AS `Dzongkhag`,
 1 AS `Geog`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `FACILITATOR`
--

DROP TABLE IF EXISTS `FACILITATOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FACILITATOR` (
  `Name` varchar(30) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `Quilification` varchar(20) DEFAULT NULL,
  `nationality` varchar(30) DEFAULT NULL,
  `DateofAppointment` date DEFAULT NULL,
  `Natureofserivce` varchar(30) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FACILITATOR`
--

LOCK TABLES `FACILITATOR` WRITE;
/*!40000 ALTER TABLE `FACILITATOR` DISABLE KEYS */;
INSERT INTO `FACILITATOR` VALUES ('Deki Yangzom','F','6 Passed','Bhutanese','2011-02-15','Regular Stuff',13000),('Karma Deki','F','12 Passed','Bhutanese','2013-02-17','Temporary',6000),('Pema Tshomo','F','12 Passed','Bhutanese','2010-08-01','Temporary',6000),('Tshering Wangmo','F','12 Passed','Bhutanese','2010-08-01','Temporary',6000);
/*!40000 ALTER TABLE `FACILITATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GUARDIAN`
--

DROP TABLE IF EXISTS `GUARDIAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GUARDIAN` (
  `Name` varchar(30) NOT NULL,
  `Contact_No` int(11) DEFAULT NULL,
  `Relation` varchar(20) DEFAULT NULL,
  `childId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Name`),
  KEY `childId` (`childId`),
  CONSTRAINT `GUARDIAN_ibfk_1` FOREIGN KEY (`childId`) REFERENCES `CHILD` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GUARDIAN`
--

LOCK TABLES `GUARDIAN` WRITE;
/*!40000 ALTER TABLE `GUARDIAN` DISABLE KEYS */;
INSERT INTO `GUARDIAN` VALUES ('Dawa Dorji',77542223,'Brother',9),('Jangchub Wangmo',17695269,'Mother',8),('Jigme Yuden',17947325,'Mother',3),('Khando Dorjil',77422626,'Father',6),('Pema Yangden',17700526,'Mother',2),('Rinchen ZAngmo',17443353,'Mother',7),('Sonam Choden',17660259,'Mother',1),('Tashi Lhamo',77433533,'Mother',4),('Wangyel',17745333,'Father',5);
/*!40000 ALTER TABLE `GUARDIAN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WORKSHOP`
--

DROP TABLE IF EXISTS `WORKSHOP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WORKSHOP` (
  `Name` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `Facilitator` varchar(30) DEFAULT NULL,
  KEY `Facilitator` (`Facilitator`),
  CONSTRAINT `WORKSHOP_ibfk_1` FOREIGN KEY (`Facilitator`) REFERENCES `FACILITATOR` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORKSHOP`
--

LOCK TABLES `WORKSHOP` WRITE;
/*!40000 ALTER TABLE `WORKSHOP` DISABLE KEYS */;
INSERT INTO `WORKSHOP` VALUES ('Basic Course','2011-07-10','Gyalpozhing','Pema Tshomo'),('Basic Course','2011-07-10','Gyalpozhing','Karma Deki'),('Basic Course','2011-07-10','Gyalpozhing','Tshering Wangmo'),('Refresher course ','2013-07-20','Gyalpozhing','Pema Tshomo'),('Refresher course ','2013-07-20','Gyalpozhing','Karma Deki'),('Refresher course ','2013-07-20','Gyalpozhing','Tshering Wangmo'),('C4D Materials','2015-05-14','Gyalpozhing','Pema Tshomo'),('C4D Materials','2015-05-14','Gyalpozhing','Karma Deki'),('C4D Materials','2015-05-14','Gyalpozhing','Tshering Wangmo');
/*!40000 ALTER TABLE `WORKSHOP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Classroom1`
--

/*!50001 DROP VIEW IF EXISTS `Classroom1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Classroom1` AS select `CHILD`.`Id` AS `Id`,`CHILD`.`name` AS `name`,`CHILD`.`sex` AS `sex`,`CHILD`.`DOB` AS `DOB`,`CHILD`.`Dzongkhag` AS `Dzongkhag`,`CHILD`.`Geog` AS `Geog` from `CHILD` where (`CHILD`.`FacilitatorName` = 'Karma Deki') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Classroom2`
--

/*!50001 DROP VIEW IF EXISTS `Classroom2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Classroom2` AS select `CHILD`.`Id` AS `Id`,`CHILD`.`name` AS `name`,`CHILD`.`sex` AS `sex`,`CHILD`.`DOB` AS `DOB`,`CHILD`.`Dzongkhag` AS `Dzongkhag`,`CHILD`.`Geog` AS `Geog` from `CHILD` where (`CHILD`.`FacilitatorName` = 'Tshering Wangmo') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Classroom3`
--

/*!50001 DROP VIEW IF EXISTS `Classroom3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Classroom3` AS select `CHILD`.`Id` AS `Id`,`CHILD`.`name` AS `name`,`CHILD`.`sex` AS `sex`,`CHILD`.`DOB` AS `DOB`,`CHILD`.`Dzongkhag` AS `Dzongkhag`,`CHILD`.`Geog` AS `Geog` from `CHILD` where (`CHILD`.`FacilitatorName` = 'Pema Tshomo') */;
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

-- Dump completed on 2020-12-27 17:30:25
