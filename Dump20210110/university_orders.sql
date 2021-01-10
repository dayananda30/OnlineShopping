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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 21:45:15
