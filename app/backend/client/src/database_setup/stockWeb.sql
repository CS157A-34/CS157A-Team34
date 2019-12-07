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

DROP TABLE IF EXISTS `Daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Daily` (
  `Daily_id` varchar(20) NOT NULL,
  `Stock_id` varchar(20) NOT NULL,
  `Open` varchar(45) NOT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `Low` varchar(45) NOT NULL,
  `High` varchar(45) NOT NULL,
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
INSERT INTO `Daily` VALUES ('1','1','200.60','200.90','200.07','201.57','12270000','1.69','0.85'),('10','10','10.27','10.36','10.26','10.46','1880000','0.21','2.07'),('111','111','152.32','152.33','151.52','152.50','15184000','0.29','0.19'),('113','113','331.12','331.29','328.57','333.93','5555600','2.37','0.72'),('115','115','167.05','168.85','159.61','161.64','19085100','-2.64','-1.61'),('116','116','39.46','39.76','39.07','39.41','33600100','0.42','1.08'),('117','117','29.42','28.88','29.49','29.49','22421400','-0.040','-0.14'),('118','118','273.90','275.45','272.05','274.96','18200','1.42','0.52'),('119','119','161.92','162.83','161.11','161.51','4012800','-1.03','-0.63'),('120','120','49.29','49.75','48.80','49.37','3044300','0.37','0.76'),('121','121','135.35','135.71','133.62','133.77','3280900','-1.32','-0.98'),('122','122','1313.42','1317.42','1309.47','1312.13','940000','-0.87','-0.66'),('123','123','313.93','316.92','312.75','315.93','4096900','3.44','1.10'),('124','124','2.47','2.54','2.43','2.52','36025000','0.13','5.44'),('125','125','33.49','33.60','33.31','33.42','32097700','0.0070','0.21'),('126','126','58.53','58.59','57.91','58.51','18184200','-0.39','-0.66'),('128','128','617.98','619.80','609.27','617.17','312600','-0.22','-0.036'),('130','130','99.16','101.24','98.01','100.43','597500','1.60','1.62'),('131','131','313.93','316.82','312.75','315.93','4096900','3.44','1.60'),('133','133','9.03','9.15','9.02','9.10','37396100','0.18','2.61'),('134','134','9.03','9.15','9.02','9.10','37396100','0.0090','1.00');
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
INSERT INTO `Earnings` VALUES ('11','1','120','49.67','5'),('12','29','121','135.80','1'),('13','10','134','9.21','3'),('15','27','111','152.01','1'),('16','25','123','314.12','4'),('18','13','126','58.02','2'),('19','28','125','33.52','3'),('2','13','122','1315.22','2'),('20','6','118','275.40','1'),('21','25','126','58.39','4'),('23','30','113','330.21','2'),('26','7','126','58.61','2'),('27','16','111','152.31','5'),('28','14','117','29.02','3'),('29','3','122','1316.56','5'),('3','24','120','49.50','2'),('31','4','128','618.90','4'),('32','7','133','9.08','3'),('33','98373069147471873','111','152.45','3'),('34','98373069147471874','126','58.50','5'),('35','5','130','100.12','3'),('36','23','128','617.21','5'),('37','6','122','1317.02','3'),('38','30','119','161.32','4'),('40','21','116','39.56','2'),('41','9','125','33.56','5'),('42','23','123','314.76','5'),('43','10','121','134.76','1'),('44','27','125','33.45','3'),('47','24','126','58.56','4'),('48','8','122','1314.03','1'),('49','29','119','161.77','2'),('5','9','116','40.77','1'),('50','20','130','101.02','2'),('51','1','1','197.31','2'),('52','10','10','10.21','3'),('7','21','130','103.6','5'),('8','98373069147471879','133','9.16','3'),('9','17','118','274.58','1'),('98373069147471881','11','1','200.30','5'),('98373069147471882','30','1','190.71','2'),('98480689485185036','30','10','10.40','2'),('98480689485185081','30','122','1313.50','2');
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
INSERT INTO `Half_year` VALUES ('1','1','22.72','12.82'),('10','10','-0.97','-8.56'),('111','111','25.65','20.40'),('112','112','-15.52','-0.85'),('113','113','141.72','75.29'),('115','115','67.03','71.81'),('116','116','11.12','39.67'),('117','117','-10.2','-25.6'),('118','118','-41.57','-13.34'),('119','119','7.23','4.64'),('120','120','-5.85','-10.17'),('121','121','4.88','3.77'),('122','122','182.68','16.29'),('123','123','-28.62','-8.34'),('124','124','-5.50','-68.75'),('125','125','6.16','22.88'),('126','126','13.31','29.78'),('128','128','113.24','19.42'),('130','130','-74.42','-42.16'),('133','133','2.26','50.31'),('134','134','-0.68','-0.98');
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
INSERT INTO `Month` VALUES ('1','1','6.87','3.54'),('10','10','1.08','1.6'),('111','111','6.77','4.68'),('112','112','20.81','1.17'),('113','113','14.83','4.74'),('115','115','10.97','7.32'),('116','116','6.02','18.17'),('117','117','-4.35','-12.30'),('118','118','-5.62','-2.04'),('119','119','4.61','2.91'),('120','120','4.87','11.04'),('121','121','-0.80','-0.59'),('122','122','43.44','3.44'),('123','123','23.21','7.96'),('124','124','-1.11','-30.75'),('125','125','1.70','5.38'),('126','126','1.45','2.56'),('128','128','62.82','11.42'),('130','130','-31.13','23.36'),('131','131','23.21','10.77'),('133','133','1.10','18.77'),('134','134','0.52','6.09');
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
INSERT INTO `Quarter` VALUES ('1','1','13.17','7.02'),('10','10','0.16','1.57'),('111','111','13.26','9.87'),('112','112','56.68','2.21'),('113','113','107.79','48.52'),('115','115','14.48','9.93'),('116','116','9.48','31.35'),('117','117','-3.16','-9.85'),('118','118','-69.66','-20.50'),('119','119','11.06','7.28'),('120','120','-5.17','-9.55'),('121','121','-2.53','-1.92'),('122','122','134.77','11.53'),('123','123','11.96','6.39'),('124','124','-3.49','-58.26'),('125','125','6.29','23.27'),('126','126','10.82','22.44'),('128','128','10.08','1.09'),('130','130','-40.36','-27.27'),('133','133','3.82','125.24'),('134','134','0.03','0.33');
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
INSERT INTO `Save` VALUES ('1','4','10'),('10','7','116'),('11','6','116'),('12','8','132'),('13','4','124'),('14','15','126'),('15','4','126'),('16','24','10'),('17','24','125'),('18','1','126'),('19','98373069147471873','117'),('2','25','10'),('20','98373069147471874','113'),('21','98373069147471879','120'),('22','9','128'),('23','22','122'),('25','24','119'),('26','28','121'),('27','30','120'),('29','19','124'),('3','98373069147471879','133'),('30','12','133'),('31','30','118'),('33','30','111'),('4','20','120'),('5','9','119'),('7','9','1'),('9','3','119'),('98480689485185031','30','1'),('98480689485185067','30','10'),('98480689485185085','30','122'),('98480689485185087','30','121');
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
  `Search_time` varchar(60) NOT NULL,
  PRIMARY KEY (`Search_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Search`
--

LOCK TABLES `Search` WRITE;
/*!40000 ALTER TABLE `Search` DISABLE KEYS */;
INSERT INTO `Search` VALUES ('1','30','1','Wed Nov 13 2019 15:05:17 GMT-0800 (Pacific Standard Time)'),('10','10','10','Mon Nov 04 2019 18:30:18 GMT-0800 (Pacific Standard Time)'),('11','30','11','Tue Nov 05 2019 15:34:11 GMT-0800 (Pacific Standard Time)'),('12','12','122','Wed Dec 04 2019 15:08:21 GMT-0800 (Pacific Standard Time)'),('13','13','113','Fri Dec 06 2019 10:05:07 GMT-0800 (Pacific Standard Time)'),('14','30','124','Tue Nov 05 2019 17:10:33 GMT-0800 (Pacific Standard Time)'),('15','15','115','Wed Dec 04 2019 13:07:37 GMT-0800 (Pacific Standard Time)'),('16','16','116','Tue Nov 05 2019 16:22:40 GMT-0800 (Pacific Standard Time)'),('17','17','117','Sat Nov 23 2019 21:34:16 GMT-0800 (Pacific Standard Time)'),('18','30','118','Sun Nov 24 2019 19:41:16 GMT-0800 (Pacific Standard Time)'),('19','19','119','Tue Nov 05 2019 17:48:25 GMT-0800 (Pacific Standard Time)'),('2','2','2','Fri Dec 06 2019 11:05:07 GMT-0800 (Pacific Standard Time)'),('20','20','120','Fri Dec 06 2019 12:05:07 GMT-0800 (Pacific Standard Time)'),('21','30','121','Tue Nov 05 2019 20:04:11 GMT-0800 (Pacific Standard Time)'),('22','12','122','Wed Nov 13 2019 15:25:27 GMT-0800 (Pacific Standard Time)'),('23','13','123','Tue Nov 05 2019 19:34:14 GMT-0800 (Pacific Standard Time)'),('24','30','124','Sat Nov 23 2019 17:34:16 GMT-0800 (Pacific Standard Time)'),('25','5','125','Fri Dec 06 2019 15:05:07 GMT-0800 (Pacific Standard Time)'),('26','6','126','Fri Dec 06 2019 16:05:07 GMT-0800 (Pacific Standard Time)'),('27','7','117','Fri Dec 06 2019 17:05:07 GMT-0800 (Pacific Standard Time)'),('28','2','10','Sun Nov 24 2019 16:41:16 GMT-0800 (Pacific Standard Time)'),('29','3','120','Sat Nov 04 2019 16:38:16 GMT-0800 (Pacific Standard Time)'),('3','3','113','Sat Nov 16 2019 19:46:16 GMT-0800 (Pacific Standard Time)'),('30','10','10','Mon Nov 04 2019 16:14:20 GMT-0800 (Pacific Standard Time)'),('4','4','134','Sun Nov 24 2019 20:41:16 GMT-0800 (Pacific Standard Time)'),('5','5','115','Sat Nov 23 2019 18:34:16 GMT-0800 (Pacific Standard Time)'),('6','6','116','Mon Nov 18 2019 17:44:24 GMT-0800 (Pacific Standard Time)'),('7','30','117','Wed Dec 04 2019 11:05:34 GMT-0800 (Pacific Standard Time)'),('8','8','118','Tue Nov 12 2019 13:42:48 GMT-0800 (Pacific Standard Time)'),('9','9','119','Mon Dec 02 2019 10:21:24 GMT-0800 (Pacific Standard Time)'),('98480689485185037','30','118','Fri Dec 06 2019 14:05:07 GMT-0800 (Pacific Standard Time)'),('98480689485185038','30','118','Fri Dec 06 2019 17:34:08 GMT-0800 (Pacific Standard Time)'),('98480689485185039','30','1','Fri Dec 06 2019 17:43:08 GMT-0800 (Pacific Standard Time)'),('98480689485185052','30','117','Fri Dec 06 2019 18:14:38 GMT-0800 (Pacific Standard Time)'),('98480689485185064','30','10','Fri Dec 06 2019 18:38:55 GMT-0800 (太平洋標準時間)'),('98480689485185065','30','1','Fri Dec 06 2019 18:43:26 GMT-0800 (太平洋標準時間)'),('98480689485185066','30','10','Fri Dec 06 2019 20:02:47 GMT-0800 (太平洋標準時間)'),('98480689485185068','30','1','Fri Dec 06 2019 20:19:54 GMT-0800 (太平洋標準時間)'),('98480689485185069','30','1','Fri Dec 06 2019 21:04:08 GMT-0800 (太平洋標準時間)'),('98480689485185070','30','10','Fri Dec 06 2019 21:06:17 GMT-0800 (太平洋標準時間)'),('98480689485185071','30','1','Fri Dec 06 2019 21:06:23 GMT-0800 (太平洋標準時間)'),('98480689485185072','30','10','Fri Dec 06 2019 21:06:59 GMT-0800 (太平洋標準時間)'),('98480689485185073','30','1','Fri Dec 06 2019 21:07:31 GMT-0800 (太平洋標準時間)'),('98480689485185074','30','10','Fri Dec 06 2019 21:07:37 GMT-0800 (太平洋標準時間)'),('98480689485185076','30','122','Fri Dec 06 2019 22:00:40 GMT-0800 (太平洋標準時間)'),('98480689485185080','30','128','Fri Dec 06 2019 22:02:42 GMT-0800 (太平洋標準時間)'),('98480689485185084','30','122','Fri Dec 06 2019 23:20:14 GMT-0800 (太平洋標準時間)'),('98480689485185086','30','121','Fri Dec 06 2019 23:31:31 GMT-0800 (太平洋標準時間)'),('98480689485185088','30','123','Fri Dec 06 2019 23:50:51 GMT-0800 (太平洋標準時間)');
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
INSERT INTO `Stock` VALUES ('1','FB','Facebook, Inc.'),('10','OI','Owens-Illinois, Inc.'),('111','MSFT','Microsoft Inc'),('112','AMZN','Amazon Inc'),('113','TSLA','Tesla'),('115','ROKU','Roku Inc'),('116','AMD','Advanced MicroDevices'),('117','UBER','Uber Technologies Inc'),('118','COKE','Coca-Cola Consolidated'),('119','CRM','Salesforce Inc'),('120','LYFT','Lyft Inc'),('121','IBM','IBM Incorporated'),('122','GOOGL','Alphabet Inc'),('123','NFLX','Netflix Inc'),('124','ACB','Aurora Cannabis Inc'),('125','BAC','Bank of America Inc'),('126','INTC','Intel Corp'),('128','CGSP','Costar Group'),('130','GWPH','GW Pharmaceuticals'),('133','FIT','Fitbit Inc'),('134','F','Ford Motor Company');
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
INSERT INTO `User` VALUES ('1','Corly Saipy','csaipy0@ebay.com','QdSIbjXV8W'),('10','Jdavie Hyett','jhyett9@craigslist.org','mYuXlVvDQaIz'),('11','Alfi Kington','akingtona@bizjournals.com','aoWWyr'),('12','Ingemar Pack','ipackb@sciencedirect.com','ssptea'),('13','Frederique McCague','fmccaguec@privacy.gov.au','wIDiMBvW9Q'),('14','Rosalyn Skally','rskallyd@seattletimes.com','vIu7nu7n'),('15','Fidelity Galero','fgaleroe@yellowpages.com','tmpvWsZat'),('16','Anselm Patriche','apatrichef@umn.edu','DGZd65bVk'),('17','Hilly Bummfrey','hbummfreyg@about.com','jXlYxjb09'),('18','Igor Stitcher','istitcherh@newyorker.com','CbSuKqcfuQ9E'),('19','Jerri McGilvra','jmcgilvrai@time.com','nYlt0PXHHFk'),('2','Giulietta Chasier','gchasier1@youtu.be','r8YOkvfD'),('20','Sybille Matt','smattj@illinois.edu','XVk7aXl4'),('21','Burtie Khalid','bkhalidk@ifeng.com','CjG5gO'),('22','Christyna O\'Lehane','colehanel@wix.com','xiMfPT6kLclC'),('23','Anders Abad','aabadm@techcrunch.com','oTMS6w'),('24','Durward MacQuist','dmacquistn@bing.com','1X4B8XnxtJTF'),('25','Pattie Sandels','psandelso@simplemachines.org','9Gq6GVqK'),('26','Dennis Gibben','dgibbenp@dell.com','f2y2rY'),('27','Terri-jo Righy','trighyq@slashdot.org','g8CXNUBmleD'),('28','Lorenza Bolstridge','lbolstridger@ask.com','uBTyx22ona'),('29','Anette Carlesso','acarlessos@feedburner.com','8fx4HjHV'),('3','Peterus Lindmark','plindmark2@cnet.com','VaYjU1u'),('30','Bruce Wayne','batman@vinaora.com','iamBatman'),('33','undefined','yesh123@yahh.com','shdiosdkjflsf'),('4','Nannette Lyle','nlyle3@psu.edu','HNldcmb'),('5','Gianina Bentote','gbentote4@privacy.gov.au','2EwWQB'),('6','Stoddard Quartley','squartley5@oakley.com','dDuUetZ'),('7','Lexy Farrall','lfarrall6@4shared.com','ti5nVr55bUTc'),('8','Dov Belchambers','dbelchambers7@weather.com','jdRQIO2r'),('9','Jaime Chicchelli','jchicchelli8@furl.net','lJAu2R8CHdTB'),('98373069147471873','Barry Allen','starlab@gmail.com','iamtheFlash'),('98373069147471874','Kate Kane','ab@gmail.com','iamhiscousin'),('98373069147471879','Kara Denvers','deo@123.com','supergirl');
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
INSERT INTO `Week` VALUES ('1','1','-1.19','-0.59'),('10','10','0.39','3.86'),('111','111','1.90','1.20'),('112','112','66.09','3.16'),('113','113','-24.89','-0.93'),('115','115','4.46','1.02'),('116','116','-0.37','0.00'),('117','117','0.14','0.14'),('118','118','-14.08','-0.60'),('119','119','0.01','0.05'),('120','120','2.22','5.48'),('121','121','0.61','0.08'),('122','122','3.95','0.81'),('123','123','2.97','1.35'),('124','124','-0.12','-4.55'),('125','125','0.73','2.23'),('126','126','0.61','1.05'),('128','128','22.65','3.81'),('130','130','1.22','1.23'),('131','131','10.77','3.53'),('133','133','0.38','5.68'),('134','134','0.37','4.24'),('200','200','4.75','1.81');
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
INSERT INTO `Year` VALUES ('1','1','61.65','50.13'),('10','10','-6.59','-38.88'),('111','111','50.26','49.70'),('112','112','261.67','17.00'),('113','113','19.82','6.39'),('115','115','127.85','393.14'),('117','117','-11.97','-29.06'),('118','118','94.85','50.00'),('119','119','25.96','19.30'),('120','120','-29.31','-37.44'),('121','121','19.24','16.70'),('122','122','249.41','23.65'),('123','123','47.00','17.56'),('124','124','-2.74','-52.29'),('125','125','8.36','33.49'),('126','126','10.97','24.11'),('128','128','285.58','80.99'),('130','130','1.10','1.09'),('133','133','1.78','29.70'),('134','134','1.16','14.98');
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

-- Dump completed on 2019-12-07  0:10:15
