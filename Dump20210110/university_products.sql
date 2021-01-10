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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-10 21:45:15
