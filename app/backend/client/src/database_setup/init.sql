-- Created by En-Ping Shih
-- Goal: Create all the tables

CREATE TABLE `stockWeb`.`User` (
  `User_id` VARCHAR(20) NOT NULL,
  `User_name` VARCHAR(45) NOT NULL,
  `User_email` VARCHAR(45) NOT NULL,
  `User_password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`User_id`));

CREATE TABLE `stockWeb`.`Search` (
  `Search_id` VARCHAR(20) NOT NULL,
  `User_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Search_date` VARCHAR(45) NOT NULL,
  `Search_time` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Search_id`));

CREATE TABLE `stockWeb`.`Earnings` (
  `Earning_id` VARCHAR(20) NOT NULL,
  `User_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Cost` VARCHAR(45) NOT NULL,
  `Share` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Earning_id`));
  
  CREATE TABLE `stockWeb`.`Save` (
  `Save_id` VARCHAR(20) NOT NULL,
  `User_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`Save_id`));
  
  CREATE TABLE `stockWeb`.`Stock` (
  `Stock_id` VARCHAR(20) NOT NULL,
  `Stock_ticker` VARCHAR(45) NOT NULL,
  `Stock_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Stock_id`));
  
  CREATE TABLE `stockWeb`.`Daily` (
  `Daily_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Open` VARCHAR(45) NOT NULL,
  `Closing` VARCHAR(45) NOT NULL,
  `High` VARCHAR(45) NOT NULL,
  `Low` VARCHAR(45) NOT NULL,
  `Price` VARCHAR(45) NOT NULL,
  `Volume` VARCHAR(45) NOT NULL,
  `Change` VARCHAR(45) NOT NULL,
  `Change_percent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Daily_id`));
  
  CREATE TABLE `stockWeb`.`Week` (
  `Week_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Wk_change` VARCHAR(45) NOT NULL,
  `Wk_percent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Week_id`));
  
  CREATE TABLE `stockWeb`.`Month` (
  `Month_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Mth_change` VARCHAR(45) NOT NULL,
  `Mth_percent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Month_id`));
  
  CREATE TABLE `stockWeb`.`Quarter` (
  `Quarter_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Qt_change` VARCHAR(45) NOT NULL,
  `Qt_percent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Quarter_id`));
  
  CREATE TABLE `stockWeb`.`Half_year` (
  `Half_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Half_change` VARCHAR(45) NOT NULL,
  `Half_percent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Half_id`));
  
  CREATE TABLE `stockWeb`.`Year` (
  `Year_id` VARCHAR(20) NOT NULL,
  `Stock_id` VARCHAR(20) NOT NULL,
  `Year_change` VARCHAR(45) NOT NULL,
  `Year_percent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Year_id`));
  


