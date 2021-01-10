-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: university
-- ------------------------------------------------------
-- Server version	8.0.22

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
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (4,'Nur','Mohsin','mohsin@gmail.com','01677876551','Dhaka','$5$rounds=535000$WOAOMdgoK2JpZLY5$RFH9BZQCB3NEvG4R/FofxxJL/PUaeZm7T6G9P3PRg05','manager','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int NOT NULL,
  `quantity` int NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,NULL,'Kashmiri Chador',1,2,'Khilkhet, Dhaka','01609876543','no','2018-09-21 13:05:07',NULL),(2,NULL,'Nur Mohsin',1,3,'Khilkhet, Dhaka','01609876543','no','2018-09-21 13:08:55',NULL),(3,NULL,'Nur Mohsin',2,4,'Dhaka','09876543123','no','2018-09-21 13:13:04',NULL),(4,NULL,'Nur Mohsin',4,1,'Manikganj','798345','no','2018-09-21 13:18:47',NULL),(5,NULL,'Nur Mohsin',9,4,'Dhaka, Bangladesh','01609876543','no','2018-09-22 02:01:02',NULL),(6,NULL,'Nur Mohsin',2,1,'Manikganj','01609876543','no','2018-09-22 02:09:29',NULL),(7,9,'Nur Mohsin',2,1,'Manikganj','01609876543','no','2018-09-22 02:10:46',NULL),(8,9,'Nur Mohsin',1,1,'Manikganj','0994','no','2018-09-22 03:04:13',NULL),(9,9,'Kashmiri Chador',12,4,'Dhaka','01609876543','no','2018-09-22 03:21:14','2018-09-29'),(10,9,'Chador',13,1,'Dhaka','01609876543','no','2018-09-22 03:22:05','2018-09-29'),(11,NULL,'daya',1,1,'aslkfdnasjk','7411943858','no','2021-01-10 15:30:35','2021-01-17'),(12,NULL,'dad',1,1,'sdas','287382764876','no','2021-01-10 15:37:31','2021-01-17'),(13,NULL,'sadasdasdas',2,1,'asdasd','asdasdasdas','no','2021-01-10 15:41:31','2021-01-17');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_level`
--

DROP TABLE IF EXISTS `product_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_level`
--

LOCK TABLES `product_level` WRITE;
/*!40000 ALTER TABLE `product_level` DISABLE KEYS */;
INSERT INTO `product_level` VALUES (1,1,'no','no','yes','no','no','no','no','no','no','no','no'),(2,2,'no','no','no','no','yes','yes','no','no','no','no','no'),(3,3,'no','no','no','no','no','yes','no','no','no','no','yes'),(4,4,'no','no','no','no','no','yes','yes','no','no','no','no'),(5,5,'no','yes','yes','no','no','no','no','no','no','no','no'),(6,6,'no','yes','yes','no','no','no','no','no','no','no','no'),(7,7,'yes','no','no','yes','no','no','no','no','no','no','no'),(8,8,'no','no','yes','no','no','no','no','no','no','no','no'),(9,9,'yes','no','no','yes','no','no','no','no','no','no','no'),(10,10,'yes','no','yes','no','no','no','no','no','no','no','no'),(14,14,'no','no','no','no','no','yes','yes','no','no','no','no'),(12,12,'yes','no','no','yes','no','no','no','no','no','no','no'),(13,13,'no','no','no','no','no','yes','no','no','no','no','yes'),(15,15,'no','no','no','no','no','yes','no','yes','no','no','no'),(16,16,'no','no','no','no','no','yes','yes','yes','no','no','no'),(17,17,'no','no','no','no','yes','yes','no','no','no','no','no'),(18,18,'no','no','no','no','yes','yes','no','no','no','no','no'),(19,19,'no','no','no','yes','yes','yes','no','no','no','no','no'),(20,20,'no','no','no','no','no','yes','no','no','no','yes','no'),(21,21,'no','no','no','no','no','yes','no','no','yes','no','no');
/*!40000 ALTER TABLE `product_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_view`
--

DROP TABLE IF EXISTS `product_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_view` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_view`
--

LOCK TABLES `product_view` WRITE;
/*!40000 ALTER TABLE `product_view` DISABLE KEYS */;
INSERT INTO `product_view` VALUES (1,9,9,'2018-09-22 02:19:30'),(2,9,7,'2018-09-27 02:47:43'),(3,9,12,'2018-09-22 03:20:59'),(4,9,10,'2018-09-29 03:07:11'),(5,9,5,'2018-09-22 03:19:19'),(6,9,8,'2018-09-21 15:57:50'),(7,9,6,'2018-09-22 02:12:54'),(8,9,1,'2018-09-22 03:03:36'),(9,16,1,'2021-01-10 15:23:40'),(10,16,5,'2021-01-10 15:23:50');
/*!40000 ALTER TABLE `product_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `description` text NOT NULL,
  `available` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'LG - 8KG',40000,'LG - 8KG',4,'washingmachine','washing-machine','t-007','lgg.jpeg','2018-09-20 07:10:40'),(2,'IPhone - 10',96000,'IPhone - 10',3,'mobiles','mobiles','w-004','apple.jpeg','2018-09-20 07:40:28'),(3,'Dell Laptop',36000,'Dell Laptop',8,'laptops','laptops','s-001','dell.jpeg','2018-09-20 08:33:57'),(4,'Samsung - Ultra HD',36000,'Samsung - Ultra HD',9,'television','television','b-001','samsung.jpeg','2018-09-20 08:35:44'),(5,'IFB - 8KG',35000,'IFB - 8KG',10,'washingmachine','washing-machine','s-002','ifb.jpeg','2018-09-20 08:40:06'),(6,'Samsung - 6KG',30000,'Samsung - 6KG',12,'washingmachine','washing-machine','t-003','samsung.jpeg','2018-09-20 08:41:18'),(7,'Bosch - 7KG',33000,'Bosch - 7KG',10,'washingmachine','washing-machine','t-004','bosch.jpeg','2018-09-20 08:42:11'),(8,'WhirlPool - 7KG',36000,'Whirlpool - 7KG',20,'washingmachine','washing-machine','t-005','whirlpool.jpeg','2018-09-20 08:45:39'),(9,'Hairer - 6.5KG',29000,'Hairer - 6.5KG',20,'washingmachine','washing-machine','t-006','hairer.jpeg','2018-09-20 08:57:07'),(10,'LG - 6.5KG',25000,'LG - 6.5KG',5,'washingmachine','washing-machine','t-007','lgg.jpeg','2018-09-20 08:58:38'),(12,'IFB - 6.5KG',26000,'IFB - 6.5KG',10,'washingmachine','washing-machine','t-010','ifb.jpeg','2018-09-20 09:02:04'),(13,'HP - NoteBook',32000,'HP - NoteBook',10,'laptops','laptops','s-002','hp.jpeg','2018-09-21 10:39:32'),(14,'One Plus - 4K',72000,'One Plus - 4K',20,'television','television','b-003','oneplus.jpeg','2018-10-01 03:47:08'),(15,'MI - LCD Ultra',46000,'MI - LCD Ultra',20,'television','television','b-004','mi.jpeg','2018-10-01 03:48:09'),(16,'Sony - Ultra',43000,'Sony - Ultra',15,'television','television','b-005','sony.jpeg','2018-10-01 03:49:08'),(17,'Nokia - Pro',36000,'Nokia - Pro',10,'mobiles','mobiles','w-005','nokia.jpeg','2018-10-01 03:51:52'),(18,'Samsung - Galaxy',56000,'Samsung - Galaxy',20,'mobiles','mobiles','w-007','samsung.jpeg','2018-10-01 03:52:43'),(19,'Mi - Note 7 Pro',13000,'Mi - Note 7 Pro',20,'mobiles','mobiles','w-009','mi.jpeg','2018-10-01 03:53:37'),(20,'Lenovo - ThinkPad',26000,'Lenovo - ThinkPad',23,'laptops','laptops','s-003','lenovo.jpeg','2018-10-01 03:56:41'),(21,'Mac - Book',63000,'Mac - Book',12,'laptops','laptops','s-004','apple.jpeg','2018-10-01 03:57:24');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'Mukul','mukul@gmail.com','mukul','$5$rounds=535000$6PJhbzFlfJbcQbza$FbrPa3qqk1RJ5MSffRLO6LrQJXbgO8SudFuBpNf.wR7','','2018-07-23 14:09:14','0','yes'),(9,'Nur Mohsin','mohsin@gmail.com','mohsin','$5$rounds=535000$EnLkwqfGWGcWklRL$q9PbYw/TVXSzs.QpgUouZ3.6BzaPG2eLHkTyv.Qx80D','123456789022','2018-07-21 06:47:57','1','yes'),(14,'Nur Mohsin','khan@gmail.com','khan','$5$rounds=535000$wLKTQexvPQHueUsK$aFrFUXBHjrrAH61EFiYgj8cZECaaz8y6S5XS/zkkHw9','','2018-09-07 09:02:35','0','yes'),(13,'Robin','robin@gmail.com','robin','$5$rounds=535000$uiZc/VCwwa3XCTTe$Ec.JOjy4GkjpAXHtAvGt6pSc6KszajHgcyZy8v6Ivk1','','2018-07-26 12:36:57','0','yes'),(15,'Sujon','sujon@yahoo.com','sujons','$5$rounds=535000$aGykDT1yrocgTaDt$p2dDAMDz9g3N6o/Jj7QJY9B6NnMlUot.DCq/LOsCS13','89345793753','2018-09-08 13:58:36','0','yes'),(16,'dayananda','daya@gmail.com','daya','$5$rounds=535000$GLNqvICmW2CRf7AO$9b8kp2O8e6Ofq4chYh18Wzpg5xP0ZlCTsaicnt2/wn6','7411943858','2021-01-10 15:23:13','1','yes');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 21:50:50
