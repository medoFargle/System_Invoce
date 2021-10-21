-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.50-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for sale_system
CREATE DATABASE IF NOT EXISTS `sale_system` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sale_system`;


-- Dumping structure for table sale_system.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `Customer_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(250) DEFAULT NULL,
  `Customer_Phone_Number` varchar(50) DEFAULT NULL,
  `Customer_Address` varchar(100) DEFAULT NULL,
  `Customer_Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table sale_system.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `InvoiceId_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_ID` int(11) DEFAULT NULL,
  `InvoiceId_DateTime` datetime DEFAULT NULL,
  `Value` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`InvoiceId_ID`),
  KEY `FK_invoice_customer` (`Customer_ID`),
  CONSTRAINT `FK_invoice_customer` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.


-- Dumping structure for table sale_system.s_invoice_items
CREATE TABLE IF NOT EXISTS `s_invoice_items` (
  `Invoice_items_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Branch_ID` int(11) DEFAULT NULL,
  `Invoice_ID` int(11) DEFAULT NULL,
  `Item_ID` int(11) DEFAULT NULL,
  `Gauge_ID` int(11) DEFAULT NULL,
  `invoice_Type_ID` int(11) DEFAULT NULL,
  `Item_Quantity` double DEFAULT '0',
  `Item_Sale` double DEFAULT '0',
  `User_ID` int(11) DEFAULT '0',
  PRIMARY KEY (`Invoice_items_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
