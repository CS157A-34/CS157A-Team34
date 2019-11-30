-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: stockWeb
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `Daily`
--
LOCK TABLES  Daily WRITE;
DROP TABLE IF EXISTS `Daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Daily` (
  `Daily_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Open` varchar(45) NOT NULL,
  `Closing` varchar(45) NOT NULL,
  `High` varchar(45) NOT NULL,
  `Low` varchar(45) NOT NULL,
  `Volume` varchar(45) NOT NULL,
  `Change` varchar(45) NOT NULL,
  `Change_percent` varchar(45) NOT NULL,
  PRIMARY KEY (`Daily_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `Daily`
--
LOCK TABLES `Daily` WRITE;
/*!40000 ALTER TABLE `Daily` DISABLE KEYS */;
INSERT INTO Daily VALUES(111,111,152.32,152.33,152.50,151.52,15184000,0.29,0.19);
INSERT INTO Daily VALUES(113,113,331.12,331.29,333.93,328.57, 5555600,2.37,0.72);
INSERT INTO Daily VALUES(115,115,167.05,168.85,159.61,161.64,19085100,-2.64,-1.61);
INSERT INTO Daily VALUES(116,116,39.46,39.76,39.07,39.41,33600100,0.42,1.08);
INSERT INTO Daily VALUES(117,117,29.42, 28.88,29.49,29.49, 22421400,-0.040,-0.14);
INSERT INTO Daily VALUES(118,118,273.90,275.45,272.05,274.96,18200,1.42,0.52);
INSERT INTO Daily VALUES(119, 119, 161.92, 162.83, 161.11,161.51,4012800,-1.03,-0.63);
INSERT INTO Daily VALUES(120,120, 49.29, 49.75,48.80, 49.37,3044300,0.37,0.76);
INSERT INTO Daily VALUES(121,121, 135.35,135.71,133.62,133.77,3280900,-1.32,-0.98);
INSERT INTO Daily VALUES(122,122,1313.42,1317.42,1309.47,1312.13,940000,-0.87,-0.66);
INSERT INTO Daily VALUES(123,123, 313.93,316.92,312.75,315.93,4096900,3.44,1.10);
INSERT INTO Daily VALUES(124,124,2.4700	,2.5400,2.4300,2.52,36025000, 0.13,5.44);
INSERT INTO Daily VALUES(125,125,33.49	,33.60	,33.31	,33.42	,	32097700, 0.0070, 0.21);
INSERT INTO Daily VALUES(126,126, 58.53,	58.59,	57.91,	58.51,	18184200, -0.39,-0.66);
INSERT INTO Daily VALUES(128,128, 617.98,619.80,609.27,617.17,312600,-0.22,0.036);
INSERT INTO Daily VALUES(130,130, 99.16, 101.24,98.01,100.43, 597500, 1.60,1.62);
INSERT INTO Daily VALUES(131,131, 313.93,316.82,312.75,315.93,4096900,3.44,1.60);
INSERT INTO Daily VALUES(133,133, 9.03,9.15,9.02,9.10,37396100,0.18,2.61);
INSERT INTO Daily VALUES(134,134,9.03,9.15,9.02,9.10, 37396100,0.0090,1.00);

/*!40000 ALTER TABLE `Daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Earnings`
--

DROP TABLE IF EXISTS `Earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Earnings` (
  `Earning_id` varchar(20) NOT NULL,
  `User_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Cost` varchar(45) NOT NULL,
  `Share` varchar(45) NOT NULL,
  PRIMARY KEY (`Earning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Earnings`
--

LOCK TABLES `Earnings` WRITE;
/*!40000 ALTER TABLE `Earnings` DISABLE KEYS */;
INSERT INTO `Earnings` VALUES ('1','1','1','497.8','7'),('10','10','10','956.8','9'),('11','11','11','102.8','4'),('12','12','12','599.8','8'),('13','13','13','143.6','9'),('14','14','14','874.1','9'),('15','15','15','440.8','10'),('16','16','16','602.1','1'),('17','17','17','395.1','1'),('18','18','18','574.4','1'),('19','19','19','488.9','1'),('2','1','2','744.5','3'),('20','20','20','644.9','8'),('21','21','21','588.6','4'),('22','22','22','417.9','5'),('23','23','23','768.8','10'),('24','24','24','831.1','10'),('25','25','25','209.4','10'),('26','26','26','697.3','6'),('27','27','27','240.0','2'),('28','28','28','516.0','3'),('29','29','29','621.2','3'),('3','1','3','413.7','5'),('30','30','30','739.9','2'),('31','11','31','130.6','10'),('32','22','32','291.9','9'),('33','13','33','617.2','3'),('34','14','34','210.2','9'),('35','15','35','295.4','10'),('36','16','36','816.6','1'),('37','17','37','65.0','1'),('38','18','38','310.0','7'),('39','9','39','134.7','5'),('4','1','4','543.0','4'),('40','20','40','986.0','8'),('41','11','41','401.7','4'),('42','12','42','540.2','9'),('43','13','43','214.4','6'),('44','24','44','998.7','3'),('45','5','45','393.0','9'),('46','6','46','515.9','6'),('47','17','47','987.1','5'),('48','18','48','767.5','6'),('49','19','49','692.7','4'),('5','2','5','474.6','10'),('50','31','50','553.0','5'),('51','32','51','315.8','7'),('52','32','52','777.2','4'),('53','33','53','393.6','10'),('54','24','54','540.6','6'),('55','25','55','744.6','5'),('56','26','56','321.6','10'),('57','27','57','885.5','4'),('58','28','58','327.0','9'),('59','29','59','871.9','10'),('6','3','6','735.7','5'),('60','30','60','372.3','3'),('7','3','7','835.4','9'),('8','8','8','374.9','7'),('9','9','9','362.9','10');
/*!40000 ALTER TABLE `Earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Half_year`
--

DROP TABLE IF EXISTS `Half_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Half_year` (
  `Half_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Half_change` varchar(45) NOT NULL,
  `Half_percent` varchar(45) NOT NULL,
  PRIMARY KEY (`Half_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Half_year`
--

LOCK TABLES `Half_year` WRITE;
/*!40000 ALTER TABLE `Half_year` DISABLE KEYS */;
INSERT INTO `Half_year` VALUES ('1','1','-4.8','-6.1'),('10','10','-14.8','-1.6'),('100','100','-9.3','0.1'),('11','11','-14.9','13.5'),('12','12','16.8','-5.9'),('13','13','-17.5','-1.3'),('14','14','25.4','0.2'),('15','15','-27.8','-1.8'),('16','16','5.5','-5.5'),('17','17','-7.5','4.3'),('18','18','10.9','-4.7'),('19','19','-23.9','2.4'),('2','2','-18.6','0.1'),('20','20','21.9','-2.3'),('21','21','11.8','11.7'),('22','22','20.6','10.0'),('23','23','-6.4','-0.4'),('24','24','12.4','5.4'),('25','25','-29.1','-9.9'),('26','26','-10.2','-7.0'),('27','27','16.6','-7.7'),('28','28','-17.0','3.6'),('29','29','-6.4','10.4'),('3','3','-8.9','10.7'),('30','30','-2.7','11.2'),('31','31','11.4','-9.3'),('32','32','23.3','-3.7'),('33','33','-18.0','-6.0'),('34','34','21.9','-3.4'),('35','35','-25.0','-2.8'),('36','36','13.2','6.3'),('37','37','18.8','13.5'),('38','38','20.5','-5.4'),('39','39','6.3','7.7'),('4','4','29.5','4.1'),('40','40','-5.2','13.4'),('41','41','-11.3','-0.3'),('42','42','30.0','-5.5'),('43','43','-19.2','0.7'),('44','44','-11.2','14.7'),('45','45','-13.1','14.8'),('46','46','12.6','2.7'),('47','47','23.3','-8.8'),('48','48','-1.8','5.2'),('49','49','4.0','2.3'),('5','5','-4.2','-6.9'),('50','50','15.5','-3.4'),('51','51','-5.6','4.5'),('52','52','-12.3','1.1'),('53','53','-7.3','-5.9'),('54','54','20.0','1.1'),('55','55','7.0','-8.3'),('56','56','-5.3','-3.9'),('57','57','28.8','3.1'),('58','58','-10.2','2.9'),('59','59','17.0','-7.0'),('6','6','3.5','-4.9'),('60','60','12.6','8.6'),('61','61','-27.1','-7.5'),('62','62','12.2','12.4'),('63','63','-28.3','7.0'),('64','64','22.2','6.7'),('65','65','-17.5','-9.9'),('66','66','-26.5','-3.2'),('67','67','-19.7','9.9'),('68','68','23.5','2.1'),('69','69','29.6','-9.8'),('7','7','21.2','12.8'),('70','70','-18.8','-2.2'),('71','71','4.8','1.1'),('72','72','3.2','4.6'),('73','73','-2.5','8.6'),('74','74','28.5','5.5'),('75','75','8.3','-6.1'),('76','76','4.5','-9.8'),('77','77','-4.5','14.2'),('78','78','-22.9','0.6'),('79','79','-18.7','-5.8'),('8','8','-29.8','-0.0'),('80','80','1.3','10.1'),('81','81','16.4','9.0'),('82','82','20.4','-8.9'),('83','83','22.6','7.0'),('84','84','17.6','14.5'),('85','85','28.1','-6.5'),('86','86','-17.8','4.6'),('87','87','-19.3','-5.7'),('88','88','-0.6','-8.8'),('89','89','-5.9','10.9'),('9','9','18.5','-5.6'),('90','90','-6.8','-0.4'),('91','91','18.8','-8.3'),('92','92','12.7','10.7'),('93','93','14.4','-8.3'),('94','94','17.3','12.8'),('95','95','-22.9','-3.4'),('96','96','-8.1','2.3'),('97','97','6.5','13.4'),('98','98','-24.3','0.9'),('99','99','22.7','3.9');
INSERT INTO Half_year VALUES(134,134,-0.68,-0.98);
INSERT INTO Half_year VALUES(133,133,2.26,50.31);
INSERT INTO Half_year VALUES(123,123,-28.62,-8.34);
INSERT INTO Half_year VALUES(130,130,-74.42,-42.16);
INSERT INTO Half_year VALUES(128,128,113.24,19.42);
INSERT INTO Half_year VALUES(126,126,13.31,29.78);
INSERT INTO Half_year VALUES(125,125,6.16,22.88);
INSERT INTO Half_year VALUES(124,124,-5.50,-68.75);
INSERT INTO Half_year VALUES(122,122,182.68,16.29);
INSERT INTO Half_year VALUES(121,121,4.88,3.77);
INSERT INTO Half_year VALUES(120,120,-5.85,-10.17);
INSERT INTO Half_year VALUES(119,119,7.23,4.64);
INSERT INTO Half_year VALUES(118,118,-41.57,-13.34);
INSERT INTO Half_year VALUES(117,117,-10.2,-25.6);
INSERT INTO Half_year VALUES(116,116,11.12,39.67);
INSERT INTO Half_year VALUES(115,115,67.03,71.81);
INSERT INTO Half_year VALUES(113,113,141.72,75.29);
INSERT INTO Half_year VALUES(112,112,-15.52,-0.85);
INSERT INTO Half_year VALUES(111,111,25.65,20.40);
/*!40000 ALTER TABLE `Half_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Month`
--

DROP TABLE IF EXISTS `Month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Month` (
  `Month_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Mth_change` varchar(45) NOT NULL,
  `Mth_percent` varchar(45) NOT NULL,
  PRIMARY KEY (`Month_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Month`
--

LOCK TABLES `Month` WRITE;
/*!40000 ALTER TABLE `Month` DISABLE KEYS */;
INSERT INTO `Month` VALUES ('1','1','-10.3','0.7'),('10','10','12.5','1.6'),('100','100','5.7','-1.0'),('11','11','4.4','1.7'),('12','12','-4.3','-2.7'),('13','13','-0.2','0.9'),('14','14','6.2','2.3'),('15','15','4.5','-1.6'),('16','16','-5.6','-1.2'),('17','17','-8.9','0.5'),('18','18','-9.5','-2.6'),('19','19','14.8','2.0'),('2','2','6.8','-2.6'),('20','20','6.9','0.7'),('21','21','7.0','-0.8'),('22','22','0.2','1.4'),('23','23','-0.5','-1.5'),('24','24','1.2','0.3'),('25','25','7.0','1.4'),('26','26','-0.6','-0.0'),('27','27','9.0','2.5'),('28','28','-13.9','-1.3'),('29','29','12.9','-2.1'),('3','3','1.6','-1.6'),('30','30','8.7','-0.5'),('31','31','-11.5','-1.5'),('32','32','-5.1','-0.7'),('33','33','-10.2','0.3'),('34','34','9.3','-1.8'),('35','35','-1.5','-1.5'),('36','36','0.7','2.5'),('37','37','4.7','2.3'),('38','38','9.6','-2.5'),('39','39','8.6','1.4'),('4','4','12.9','1.1'),('40','40','-10.2','0.4'),('41','41','-9.2','-2.3'),('42','42','-8.8','-1.0'),('43','43','-4.8','0.4'),('44','44','9.3','0.5'),('45','45','-12.9','0.5'),('46','46','8.3','-2.4'),('47','47','-2.3','0.8'),('48','48','-11.3','2.4'),('49','49','-10.1','2.0'),('5','5','3.9','0.7'),('50','50','-6.4','1.9'),('51','51','1.3','0.9'),('52','52','-10.3','0.9'),('53','53','10.8','0.3'),('54','54','-14.5','-2.5'),('55','55','-9.8','1.0'),('56','56','13.8','-1.8'),('57','57','-14.0','-0.3'),('58','58','-1.7','-2.2'),('59','59','-0.3','0.1'),('6','6','11.7','-1.4'),('60','60','-11.1','2.3'),('61','61','-9.7','1.4'),('62','62','12.7','0.6'),('63','63','-10.4','-1.5'),('64','64','8.2','-1.8'),('65','65','7.2','-1.7'),('66','66','-6.4','-0.2'),('67','67','7.3','-0.8'),('68','68','-8.5','1.4'),('69','69','-5.5','0.2'),('7','7','12.3','-2.9'),('70','70','10.2','0.4'),('71','71','-10.3','-1.3'),('72','72','-14.8','-2.2'),('73','73','-0.5','-0.1'),('74','74','3.5','-2.2'),('75','75','0.1','-2.4'),('76','76','4.8','1.2'),('77','77','12.0','2.6'),('78','78','-6.0','2.9'),('79','79','-13.1','-2.3'),('8','8','3.0','-1.7'),('80','80','6.2','-2.3'),('81','81','6.2','-1.8'),('82','82','-0.7','-1.3'),('83','83','-3.2','0.9'),('84','84','14.1','0.1'),('85','85','-0.3','-1.9'),('86','86','-4.9','-2.3'),('87','87','-10.7','1.2'),('88','88','-7.0','0.1'),('89','89','-10.3','-2.3'),('9','9','-12.0','-1.2'),('90','90','-11.0','0.6'),('91','91','-13.7','0.2'),('92','92','12.0','0.7'),('93','93','-6.6','-2.1'),('94','94','-8.8','2.0'),('95','95','1.4','-0.9'),('96','96','-8.0','-1.7'),('97','97','11.1','-1.3'),('98','98','-2.9','-1.8'),('99','99','-7.0','0.4');
INSERT INTO `Month` VALUES
(133,133,1.10,18.77),(134,134,0.52,6.09),(131,131,23.21,10.77),(130,130,-31.13,23.36),(128,128,62.82,11.42),(126,126,1.45,2.56),
(125,125,1.70,5.38),(124,124,-1.11,-30.75),(123,123,23.21,7.96),(122,122,43.44,3.44),(121,121,-0.80,-0.59),(120,120,4.87,11.04),(119,119,4.61,2.91),
(118,118,-5.62,-2.04),(117,117,-4.35,-12.30),(116,116,6.02,18.17),(115,115,10.97,7.32),(112,112,20.81,1.17),(113,113,14.83,4.74),
(111,111,6.77,4.68);

/*!40000 ALTER TABLE `Month` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Quarter`
--

DROP TABLE IF EXISTS `Quarter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Quarter` (
  `Quarter_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Qt_change` varchar(45) NOT NULL,
  `Qt_percent` varchar(45) NOT NULL,
  PRIMARY KEY (`Quarter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Quarter`
--

LOCK TABLES `Quarter` WRITE;
/*!40000 ALTER TABLE `Quarter` DISABLE KEYS */;
INSERT INTO `Quarter` VALUES ('1','1','5.0','-1.5'),('10','10','5.1','-1.5'),('100','100','10.2','-1.0'),('11','11','1.6','1.8'),('12','12','15.0','2.6'),('13','13','4.5','2.5'),('14','14','8.7','-2.2'),('15','15','4.2','-3.0'),('16','16','4.6','-0.5'),('17','17','-7.1','-1.2'),('18','18','-0.6','-2.1'),('19','19','12.6','-0.1'),('2','2','11.9','-2.7'),('20','20','9.6','-1.1'),('21','21','2.9','2.3'),('22','22','3.2','1.9'),('23','23','-10.0','-0.1'),('24','24','-10.8','-0.9'),('25','25','12.4','-0.8'),('26','26','-4.3','-1.9'),('27','27','14.2','-1.0'),('28','28','7.8','1.8'),('29','29','-5.7','-2.1'),('3','3','5.6','1.5'),('30','30','3.0','2.1'),('31','31','13.9','2.9'),('32','32','-14.4','-2.9'),('33','33','-11.9','-0.3'),('34','34','-13.5','2.5'),('35','35','10.6','-2.8'),('36','36','1.0','0.5'),('37','37','-8.9','2.4'),('38','38','-6.9','2.0'),('39','39','6.8','1.8'),('4','4','-0.3','-2.7'),('40','40','11.0','0.3'),('41','41','-14.0','1.6'),('42','42','-0.5','-2.0'),('43','43','-14.6','0.3'),('44','44','-8.5','-0.5'),('45','45','-8.6','-1.1'),('46','46','1.0','-0.4'),('47','47','4.0','0.8'),('48','48','-14.4','2.5'),('49','49','0.6','-0.3'),('5','5','-9.1','2.4'),('50','50','-6.0','-1.9'),('51','51','-12.6','0.6'),('52','52','6.8','-2.8'),('53','53','8.1','1.5'),('54','54','0.7','-1.0'),('55','55','-12.6','1.8'),('56','56','-3.6','-1.4'),('57','57','1.4','2.3'),('58','58','-1.5','-0.6'),('59','59','6.8','0.5'),('6','6','-11.8','0.4'),('60','60','3.4','-1.0'),('61','61','4.3','-1.5'),('62','62','-8.2','2.9'),('63','63','0.1','1.9'),('64','64','14.7','-2.0'),('65','65','1.4','-0.3'),('66','66','11.8','-2.7'),('67','67','-0.1','0.2'),('68','68','6.0','2.8'),('69','69','11.3','-0.5'),('7','7','-2.2','-2.1'),('70','70','14.9','-0.8'),('71','71','-13.1','-0.7'),('72','72','-0.8','0.9'),('73','73','0.9','0.7'),('74','74','3.1','-0.1'),('75','75','2.0','-1.7'),('76','76','8.9','2.7'),('77','77','0.1','-0.1'),('78','78','10.3','-2.0'),('79','79','-8.4','-2.5'),('8','8','-3.5','-2.0'),('80','80','-11.7','-1.6'),('81','81','-3.8','-1.7'),('82','82','6.3','1.2'),('83','83','-4.9','-2.3'),('84','84','2.1','-0.6'),('85','85','10.9','2.7'),('86','86','13.0','1.6'),('87','87','3.5','2.0'),('88','88','-7.5','-2.4'),('89','89','6.2','-0.4'),('9','9','2.5','-0.5'),('90','90','4.1','1.1'),('91','91','9.2','1.4'),('92','92','-0.1','2.2'),('93','93','-13.0','1.7'),('94','94','-11.7','-2.1'),('95','95','7.6','-1.6'),('96','96','4.2','-2.6'),('97','97','10.2','2.5'),('98','98','3.5','-2.8'),('99','99','13.5','-2.2');
INSERT INTO Quarter VALUES(134,134,0.03,0.33);
INSERT INTO Quarter VALUES(133,133,3.82,125.24);
INSERT INTO Quarter VALUES(123,123,11.96,6.39);
INSERT INTO Quarter VALUES(130,130,-40.36,-27.27);
INSERT INTO Quarter VALUES(128,128,10.08,1.09);
INSERT INTO Quarter VALUES(126,126,10.82,22.44);
INSERT INTO Quarter VALUES(125,125,6.29,23.27);
INSERT INTO Quarter VALUES(124,124,-3.49,-58.26);
INSERT INTO Quarter VALUES(122,122,134.77,11.53);
INSERT INTO Quarter VALUES(121,121,-2.53,-1.92);
INSERT INTO Quarter VALUES(120,120,-5.17,-9.55);
INSERT INTO Quarter VALUES(119,119,11.06,7.28);
INSERT INTO Quarter VALUES(118,118,-69.66,-20.50);
INSERT INTO Quarter VALUES(117,117,-3.16,-9.85);
INSERT INTO Quarter VALUES(116,116,9.48,31.35);
INSERT INTO Quarter VALUES(115,115,14.48,9.93);
INSERT INTO Quarter VALUES(113,113,107.79,48.52);
INSERT INTO Quarter VALUES(112,112,56.68,2.21);
INSERT INTO Quarter VALUES(111,111,13.26,9.87);
/*!40000 ALTER TABLE `Quarter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Save`
--

DROP TABLE IF EXISTS `Save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Save` (
  `Save_id` varchar(20) NOT NULL,
  `User_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  PRIMARY KEY (`Save_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Save`
--

LOCK TABLES `Save` WRITE;
/*!40000 ALTER TABLE `Save` DISABLE KEYS */;
INSERT INTO `Save` VALUES ('1','4','10'),('10','7','4'),('11','21','29'),('12','20','29'),('13','13','3'),('14','24','28'),('15','1','3'),('16','24','10'),('17','29','4'),('18','2','30'),('19','1','24'),('2','25','10'),('20','20','5'),('21','29','24'),('22','18','15'),('23','8','3'),('24','16','26'),('25','21','14'),('26','18','17'),('27','8','7'),('28','14','28'),('29','5','16'),('3','7','11'),('30','30','1'),('31','30','30'),('32','12','6'),('33','21','19'),('34','15','22'),('35','14','5'),('36','3','15'),('37','8','12'),('38','19','12'),('39','12','21'),('4','12','17'),('40','18','9'),('41','10','3'),('42','12','23'),('43','23','17'),('44','28','27'),('45','25','24'),('46','30','24'),('47','23','29'),('48','30','22'),('49','7','16'),('5','5','9'),('50','3','17'),('51','9','2'),('52','25','8'),('53','7','15'),('54','13','15'),('55','28','26'),('56','10','23'),('57','23','26'),('58','1','5'),('59','11','28'),('6','23','23'),('60','3','16'),('7','9','1'),('8','24','29'),('9','28','24');
/*!40000 ALTER TABLE `Save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Search`
--

DROP TABLE IF EXISTS `Search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Search` (
  `Search_id` varchar(20) NOT NULL,
  `User_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Search_date` varchar(45) NOT NULL,
  `Search_time` varchar(45) NOT NULL,
  PRIMARY KEY (`Search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Search`
--

LOCK TABLES `Search` WRITE;
/*!40000 ALTER TABLE `Search` DISABLE KEYS */;
INSERT INTO `Search` VALUES ('1','30','1','10/16/2019','5:58'),('10','10','10','2/7/2019','2:28'),('11','30','11','8/13/2019','6:58'),('12','12','12','6/16/2019','12:31'),('13','13','13','2/23/2019','6:42'),('14','30','14','11/13/2019','17:15'),('15','15','15','4/24/2019','10:55'),('16','16','16','5/19/2019','20:35'),('17','17','17','12/13/2018','17:22'),('18','30','18','1/15/2019','6:24'),('19','19','19','12/5/2018','19:45'),('2','2','2','6/24/2019','23:03'),('20','20','20','8/8/2019','15:53'),('21','30','21','7/2/2019','20:04'),('22','12','22','12/17/2018','9:36'),('23','13','23','8/19/2019','16:12'),('24','30','24','7/18/2019','4:26'),('25','5','25','9/30/2019','1:57'),('26','6','26','11/4/2019','6:19'),('27','7','17','11/6/2019','9:29'),('28','2','10','8/19/2019','9:11'),('29','3','20','3/12/2019','10:52'),('3','3','3','5/13/2019','19:46'),('30','10','10','4/5/2019','1:56'),('4','4','4','10/30/2019','20:41'),('5','5','5','5/16/2019','21:34'),('6','6','6','4/10/2019','17:44'),('7','30','7','9/16/2019','0:34'),('8','8','8','5/18/2019','11:38'),('9','9','9','4/7/2019','12:06');
/*!40000 ALTER TABLE `Search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stock` (
  `Stock_id` varchar(20) NOT NULL,
  `Stock_ticker` varchar(45) NOT NULL,
  `Stock_name` varchar(45) NOT NULL,
  PRIMARY KEY (`Stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES ('1','FB','\"Facebook, Inc.\"'),('10','OI','\"Owens-Illinois, Inc.\"'),('100','MESO','Mesoblast Limited'),('11','SOHU','Sohu.com Inc.'),('12','SFUN','Fang Holdings Limited'),('13','ACP','Avenue Income Credit Strategies Fund'),('14','IVC','Invacare Corporation'),('15','PDLI','\"PDL BioPharma, Inc.\"'),('16','VAC','Marriot Vacations Worldwide Corporation'),('17','DFFN','Diffusion Pharmaceuticals Inc.'),('18','MLM','\"Martin Marietta Materials, Inc.\"'),('19','MTSI','\"MACOM Technology Solutions Holdings, Inc.\"'),('2','ORG','The Organics ETF'),('20','EHTH','\"eHealth, Inc.\"'),('21','LJPC','La Jolla Pharmaceutical Company'),('22','CPHC','Canterbury Park Holding Corporation'),('23','PRSC','The Providence Service Corporation'),('24','MBWM','Mercantile Bank Corporation'),('25','ESGE','iShares MSCI EM ESG Optimized ETF'),('26','TEVA','Teva Pharmaceutical Industries Limited'),('27','CAG','\"ConAgra Brands, Inc.\"'),('28','ORIT','Oritani Financial Corp.'),('29','ARCC','Ares Capital Corporation'),('3','TRIB','Trinity Biotech plc'),('30','NSH','\"Nustar GP Holdings, LLC\"'),('31','SMSI','\"Smith Micro Software, Inc.\"'),('32','BWFG','\"Bankwell Financial Group, Inc.\"'),('33','MLR','\"Miller Industries, Inc.\"'),('34','BMCH','\"BMC Stock Holdings, Inc.\"'),('35','FTXH','First Trust Nasdaq Pharmaceuticals ETF'),('36','BV','\"Bazaarvoice, Inc.\"'),('37','QADB','QAD Inc.'),('38','TIG','TiGenix'),('39','AOS','Smith (A.O.) Corporation'),('4','WGL','WGL Holdings Inc'),('40','SSBI','Summit State Bank'),('41','ALL^B','Allstate Corporation (The)'),('42','FGP','\"Ferrellgas Partners, L.P.\"'),('43','TCF^C','TCF Financial Corporation'),('44','EVN','Eaton Vance Municipal Income Trust'),('45','EYES','\"Second Sight Medical Products, Inc.\"'),('46','ACRX','\"AcelRx Pharmaceuticals, Inc.\"'),('47','ARTNA','Artesian Resources Corporation'),('48','TBI','\"TrueBlue, Inc.\"'),('49','WF','Woori Bank'),('5','ACXM','Acxiom Corporation'),('50','CPK','Chesapeake Utilities Corporation'),('51','DAL','\"Delta Air Lines, Inc.\"'),('52','STB','Student Transportation Inc'),('53','AKTX','Akari Therapeutics Plc'),('54','BG','Bunge Limited'),('55','PLYA','Playa Hotels & Resorts N.V.'),('56','DBL','DoubleLine Opportunistic Credit Fund'),('57','PTEN','\"Patterson-UTI Energy, Inc.\"'),('58','AMDA','Amedica Corporation'),('59','ATHM','Autohome Inc.'),('6','SNE','Sony Corp Ord'),('60','NTRI','NutriSystem Inc'),('61','NGHCO','National General Holdings Corp'),('62','CHNR','\"China Natural Resources, Inc.\"'),('63','RAS','RAIT Financial Trust'),('64','SNI','\"Scripps Networks Interactive, Inc\"'),('65','HTBI','\"HomeTrust Bancshares, Inc.\"'),('66','SLCT','\"Select Bancorp, Inc.\"'),('67','SRUN','Silver Run Acquisition Corporation II'),('68','CMI','Cummins Inc.'),('69','NTP','Nam Tai Property Inc.'),('7','MYD','\"Blackrock MuniYield Fund, Inc.\"'),('70','OLLI','\"Ollie\'s Bargain Outlet Holdings, Inc.\"'),('71','SITO','\"SITO Mobile, Ltd.\"'),('72','MPO','\"MIDSTATES PETROLEUM COMPANY, INC.\"'),('73','ROSG','Rosetta Genomics Ltd.'),('74','ASX','\"Advanced Semiconductor Engineering, Inc.\"'),('75','HURC','\"Hurco Companies, Inc.\"'),('76','URBN','\"Urban Outfitters, Inc.\"'),('77','SMMF','\"Summit Financial Group, Inc.\"'),('78','TNP^C','Tsakos Energy Navigation Ltd'),('79','AMGP','Antero Midstream GP LP'),('8','TCCB','Triangle Capital Corporation'),('80','RVT','\"Royce Value Trust, Inc.\"'),('81','ENLC','\"EnLink Midstream, LLC\"'),('82','MP^D','Mississippi Power Company'),('83','HSKA','Heska Corporation'),('84','VLY^A','Valley National Bancorp'),('85','SMCI','\"Super Micro Computer, Inc.\"'),('86','OASM','Oasmia Pharmaceutical AB'),('87','GBDC','\"Golub Capital BDC, Inc.\"'),('88','CG','The Carlyle Group L.P.'),('89','HBCP','\"Home Bancorp, Inc.\"'),('9','CHFC','Chemical Financial Corporation'),('90','RAND','Rand Capital Corporation'),('91','CSGS','\"CSG Systems International, Inc.\"'),('92','PES','Pioneer Energy Services Corp.'),('93','AMH^E','American Homes 4 Rent'),('94','FFWM','First Foundation Inc.'),('95','ULH','\"Universal Logistics Holdings, Inc.\"'),('96','MTW','\"Manitowoc Company, Inc. (The)\"'),('97','ATLO','Ames National Corporation'),('98','SAIA','\"Saia, Inc.\"'),('99','BCC','\"Boise Cascade, L.L.C.\"');
INSERT INTO Stock VALUES(111, 'MSFT', 'Microsoft Inc');
INSERT INTO Stock VALUES(113, 'TSLA', "Tesla");
INSERT INTO Stock VALUES(112, 'AMZN', "Amazon Inc");
INSERT INTO Stock VALUES(115, 'ROKU', "Roku Inc");
INSERT INTO Stock VALUES(116, 'AMD', "Advanced MicroDevices");
INSERT INTO Stock VALUES(117, 'UBER', "Uber Technologies Inc");
INSERT INTO Stock VALUES(118, 'COKE', "Coca-Cola Consolidated");
INSERT INTO Stock VALUES(119, 'CRM' ,"Salesforce Inc");
INSERT INTO Stock VALUES(120, 'LYFT', "Lyft Inc");
INSERT INTO Stock VALUES(121, 'IBM', "IBM Incorporated");
INSERT INTO Stock VALUES(122, 'GOOGL', "Alphabet Inc");
INSERT INTO Stock VALUES(123, 'NFLX', "Netflix Inc");
INSERT INTO Stock VALUES(124, 'ACB', "Aurora Cannabis Inc");
INSERT INTO Stock VALUES(125, 'BAC', "Bank of America Inc");
INSERT INTO Stock VALUES(126, 'INTC', "Intel Corp");
INSERT INTO Stock VALUES(128, 'CGSP', "Costar Group");
INSERT INTO Stock VALUES(130, 'GWPH', "GW Pharmaceuticals");
INSERT INTO Stock VALUES(133, 'FIT', "Fitbit Inc");
INSERT INTO Stock VALUES(134, 'F', "Ford Motor Company");
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `User_id` varchar(20) NOT NULL,
  `User_name` varchar(45) NOT NULL,
  `User_email` varchar(45) NOT NULL,
  `User_password` varchar(45) NOT NULL,
  PRIMARY KEY (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('1','Corly Saipy','csaipy0@ebay.com','QdSIbjXV8W'),('10','Jdavie Hyett','jhyett9@craigslist.org','mYuXlVvDQaIz'),('11','Alfi Kington','akingtona@bizjournals.com','aoWWyr'),('12','Ingemar Pack','ipackb@sciencedirect.com','ssptea'),('13','Frederique McCague','fmccaguec@privacy.gov.au','wIDiMBvW9Q'),('14','Rosalyn Skally','rskallyd@seattletimes.com','vIu7nu7n'),('15','Fidelity Galero','fgaleroe@yellowpages.com','tmpvWsZat'),('16','Anselm Patriche','apatrichef@umn.edu','DGZd65bVk'),('17','Hilly Bummfrey','hbummfreyg@about.com','jXlYxjb09'),('18','Igor Stitcher','istitcherh@newyorker.com','CbSuKqcfuQ9E'),('19','Jerri McGilvra','jmcgilvrai@time.com','nYlt0PXHHFk'),('2','Giulietta Chasier','gchasier1@youtu.be','r8YOkvfD'),('20','Sybille Matt','smattj@illinois.edu','XVk7aXl4'),('21','Burtie Khalid','bkhalidk@ifeng.com','CjG5gO'),('22','Christyna O\'Lehane','colehanel@wix.com','xiMfPT6kLclC'),('23','Anders Abad','aabadm@techcrunch.com','oTMS6w'),('24','Durward MacQuist','dmacquistn@bing.com','1X4B8XnxtJTF'),('25','Pattie Sandels','psandelso@simplemachines.org','9Gq6GVqK'),('26','Dennis Gibben','dgibbenp@dell.com','f2y2rY'),('27','Terri-jo Righy','trighyq@slashdot.org','g8CXNUBmleD'),('28','Lorenza Bolstridge','lbolstridger@ask.com','uBTyx22ona'),('29','Anette Carlesso','acarlessos@feedburner.com','8fx4HjHV'),('3','Peterus Lindmark','plindmark2@cnet.com','VaYjU1u'),('30','Bruce Wayne','batman@vinaora.com','iamBatman'),('4','Nannette Lyle','nlyle3@psu.edu','HNldcmb'),('5','Gianina Bentote','gbentote4@privacy.gov.au','2EwWQB'),('6','Stoddard Quartley','squartley5@oakley.com','dDuUetZ'),('7','Lexy Farrall','lfarrall6@4shared.com','ti5nVr55bUTc'),('8','Dov Belchambers','dbelchambers7@weather.com','jdRQIO2r'),('9','Jaime Chicchelli','jchicchelli8@furl.net','lJAu2R8CHdTB');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Week`
--

DROP TABLE IF EXISTS `Week`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Week` (
  `Week_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Wk_change` varchar(45) NOT NULL,
  `Wk_percent` varchar(45) NOT NULL,
  PRIMARY KEY (`Week_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Week`
--

LOCK TABLES `Week` WRITE;
/*!40000 ALTER TABLE `Week` DISABLE KEYS */;
INSERT INTO `Week` VALUES ('1','1','5.1','1.2'),('10','10','11.7','1.8'),('100','100','-14.3','2.1'),('11','11','4.2','0.2'),('12','12','11.9','-0.3'),('13','13','-14.7','-2.0'),('14','14','-0.3','0.9'),('15','15','4.1','0.7'),('16','16','8.0','2.8'),('17','17','-3.3','2.5'),('18','18','-5.2','0.9'),('19','19','3.9','-2.2'),('2','2','1.7','1.9'),('20','20','-0.3','1.1'),('21','21','-5.1','0.1'),('22','22','-4.9','-0.8'),('23','23','0.0','-0.1'),('24','24','-8.3','0.4'),('25','25','-3.3','-1.9'),('26','26','-11.2','2.6'),('27','27','-5.2','1.2'),('28','28','-8.9','1.3'),('29','29','3.9','-1.4'),('3','3','-5.1','-1.5'),('30','30','-5.2','0.7'),('31','31','0.7','-2.7'),('32','32','-6.7','2.2'),('33','33','-12.0','-1.8'),('34','34','1.7','0.4'),('35','35','-9.5','1.4'),('36','36','0.1','-2.3'),('37','37','8.0','-2.3'),('38','38','-13.6','-1.9'),('39','39','-12.6','-0.7'),('4','4','6.8','-2.8'),('40','40','10.8','-0.8'),('41','41','-5.8','-1.2'),('42','42','1.1','-0.9'),('43','43','-5.9','1.6'),('44','44','-8.9','1.7'),('45','45','-9.5','0.4'),('46','46','-9.4','2.7'),('47','47','-7.4','-2.7'),('48','48','-10.1','-2.7'),('49','49','-1.2','1.6'),('5','5','10.3','1.9'),('50','50','-12.8','0.0'),('51','51','6.1','1.3'),('52','52','-9.0','-1.1'),('53','53','-14.5','-0.3'),('54','54','-12.3','0.4'),('55','55','6.3','-1.8'),('56','56','8.8','-0.9'),('57','57','13.0','0.2'),('58','58','10.7','2.0'),('59','59','0.7','0.5'),('6','6','-7.7','0.3'),('60','60','5.4','-2.9'),('61','61','-0.1','-0.1'),('62','62','4.6','-0.1'),('63','63','13.2','2.5'),('64','64','-1.8','2.4'),('65','65','3.7','-0.8'),('66','66','2.5','1.9'),('67','67','-3.6','1.5'),('68','68','2.6','-2.0'),('69','69','14.6','2.0'),('7','7','9.6','1.4'),('70','70','0.7','0.4'),('71','71','-1.7','2.2'),('72','72','6.3','-2.5'),('73','73','7.2','-1.4'),('74','74','-2.7','-1.9'),('75','75','-7.2','1.8'),('76','76','2.3','1.0'),('77','77','12.0','1.4'),('78','78','13.4','2.0'),('79','79','11.9','-2.5'),('8','8','-3.7','1.1'),('80','80','7.7','1.8'),('81','81','1.9','-0.7'),('82','82','3.5','-1.6'),('83','83','-8.8','-2.8'),('84','84','12.7','-2.2'),('85','85','10.5','-1.3'),('86','86','-10.7','0.5'),('87','87','9.8','1.7'),('88','88','2.0','-2.9'),('89','89','2.0','-1.7'),('9','9','-14.4','1.3'),('90','90','11.3','-1.1'),('91','91','-7.4','2.4'),('92','92','13.1','-1.5'),('93','93','11.7','-1.3'),('94','94','8.9','2.2'),('95','95','-4.2','0.0'),('96','96','3.0','-0.3'),('97','97','-5.7','-2.3'),('98','98','1.3','-1.8'),('99','99','9.1','1.2');
INSERT INTO Week VALUES
(134,134,0.37,4.24),(133,133,0.38,5.68),(131,131,10.77,3.53),(130,130,1.22,1.23),(128,128,22.65,3.81),(126,126,0.61,1.05),
(125,125,0.73,2.23),(124,124,-0.12,-4.55),(123,123,2.97,1.35),(122,122,3.95,0.81),(121,121,0.61,0.08),(120,120,2.22,5.48),(119,119,0.01,0.05),
(118,118,-14.08,-0.60),(117,117,0.14,0.14),(116,116,-0.37,0.00),(115,115,4.46,1.02),(112,112,66.09,3.16),(113,113,-24.89,-0.93),
(111,111,1.90,1.20),(200,200,4.75,1.81);

/*!40000 ALTER TABLE `Week` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Year`
--

DROP TABLE IF EXISTS `Year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Year` (
  `Year_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Year_change` varchar(45) NOT NULL,
  `Year_percent` varchar(45) NOT NULL,
  PRIMARY KEY (`Year_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Year`
--

LOCK TABLES `Year` WRITE;
/*!40000 ALTER TABLE `Year` DISABLE KEYS */;
INSERT INTO `Year` VALUES ('1','1','-8.0','0.5'),('10','10','30.4','-1.0'),('100','100','-21.1','-8.1'),('11','11','38.9','8.2'),('12','12','-25.5','-2.7'),('13','13','26.1','18.4'),('14','14','35.1','-3.7'),('15','15','-23.3','10.6'),('16','16','11.9','7.1'),('17','17','-13.4','9.3'),('18','18','6.4','12.6'),('19','19','14.4','6.4'),('2','2','-28.1','17.5'),('20','20','8.2','6.5'),('21','21','13.9','-2.1'),('22','22','-27.5','8.0'),('23','23','35.3','19.2'),('24','24','19.3','12.7'),('25','25','19.9','12.3'),('26','26','-27.2','-8.7'),('27','27','36.9','12.5'),('28','28','-23.1','-8.4'),('29','29','-3.2','17.8'),('3','3','-14.3','7.1'),('30','30','-16.6','-5.2'),('31','31','19.0','2.3'),('32','32','21.8','-9.9'),('33','33','35.8','6.3'),('34','34','19.5','-1.2'),('35','35','-7.2','10.7'),('36','36','21.0','15.7'),('37','37','33.9','7.6'),('38','38','-23.9','0.8'),('39','39','-7.1','19.1'),('4','4','-9.2','13.9'),('40','40','36.6','10.0'),('41','41','-29.1','11.4'),('42','42','-13.3','-3.8'),('43','43','-27.8','4.6'),('44','44','-24.0','-7.5'),('45','45','-3.3','-9.9'),('46','46','27.1','19.4'),('47','47','-29.0','-7.4'),('48','48','-10.6','11.5'),('49','49','28.4','12.0'),('5','5','-9.3','-8.9'),('50','50','-22.1','1.1'),('51','51','-27.3','-3.5'),('52','52','6.3','13.9'),('53','53','-0.3','11.5'),('54','54','-22.1','2.3'),('55','55','19.9','-7.3'),('56','56','-7.7','-2.4'),('57','57','23.4','12.6'),('58','58','-7.9','5.4'),('59','59','33.0','-8.1'),('6','6','15.8','10.4'),('60','60','-15.9','-5.7'),('61','61','21.4','2.4'),('62','62','-12.1','18.8'),('63','63','-0.2','17.6'),('64','64','-6.1','12.2'),('65','65','18.6','9.6'),('66','66','24.9','14.3'),('67','67','-12.1','2.9'),('68','68','4.6','-4.1'),('69','69','-11.9','-5.7'),('7','7','26.8','10.9'),('70','70','21.5','-8.6'),('71','71','38.5','0.5'),('72','72','10.8','6.6'),('73','73','-13.0','-4.6'),('74','74','30.4','15.8'),('75','75','30.8','1.9'),('76','76','-0.9','16.3'),('77','77','-0.4','-8.9'),('78','78','-26.8','4.4'),('79','79','-26.7','10.4'),('8','8','6.4','18.1'),('80','80','35.3','-1.1'),('81','81','-9.3','8.6'),('82','82','-26.8','7.0'),('83','83','-24.9','11.4'),('84','84','-5.1','11.3'),('85','85','21.4','-4.0'),('86','86','28.9','13.0'),('87','87','-15.9','15.8'),('88','88','25.0','7.9'),('89','89','34.8','5.6'),('9','9','8.4','1.8'),('90','90','-26.0','-4.4'),('91','91','32.8','14.0'),('92','92','12.0','13.6'),('93','93','12.8','4.0'),('94','94','13.8','-7.6'),('95','95','6.9','3.4'),('96','96','-16.5','11.5'),('97','97','27.1','-0.3'),('98','98','-19.1','15.2'),('99','99','2.1','-5.4');
INSERT INTO Year VALUES(134,134,1.16,14.98);
INSERT INTO Year VALUES(133,133,1.78,29.70);
INSERT INTO Year VALUES(123,123,47.00,17.56);
INSERT INTO Year VALUES(130,130,1.10,1.09);
INSERT INTO Year VALUES(128,128,285.58,80.99);
INSERT INTO Year VALUES(126,126,10.97,24.11);
INSERT INTO Year VALUES(125,125,8.36,33.49);
INSERT INTO Year VALUES(124,124,-2.74,-52.29);
INSERT INTO Year VALUES(122,122,249.41,23.65);
INSERT INTO Year VALUES(121,121,19.24,16.70);
INSERT INTO Year VALUES(120,120,-29.31,-37.44);
INSERT INTO Year VALUES(119,119,25.96,19.30);
INSERT INTO Year VALUES(118,118,94.85,50.00);
INSERT INTO Year VALUES(117,117,-11.97,-29.06);
INSERT INTO Year VALUES(115,115,127.85,393.14);
INSERT INTO Year VALUES(113,113,19.82,6.39);
INSERT INTO Year VALUES(112,112,261.67,17.00);
INSERT INTO Year VALUES(111,111,50.26,49.70);
/*!40000 ALTER TABLE `Year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-27  6:24:36