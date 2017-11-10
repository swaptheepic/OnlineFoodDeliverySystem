-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ofd_db
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Not dumping tablespaces as no INFORMATION_SCHEMA.FILES table on this server
--

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` varchar(45) NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `rest_id` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `menu` varchar(45) NOT NULL,
  `qty` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('B38D8809CD5C7367FC90F4F94A76AD6C','swapnil','rest1','true','Mc.Spicicy','2'),('B38D8809CD5C7367FC90F4F94A76AD6C','swapnil','rest1','true','Mex.','2'),('D900210812B1CA4B43DC19EC6FCA2764','swapnil','rest1','true','Mc.Spicicy','2'),('D900210812B1CA4B43DC19EC6FCA2764','swapnil','rest1','false','Mex.','1'),('7493B8180E9D18186784B15D9B80C2E1','swapnil','rest1','false','Mc.Spicicy','2'),('7493B8180E9D18186784B15D9B80C2E1','swapnil','rest1','false','Ch.Kabab','1'),('659E5824424F37BED035C135B1A81254','swapnil','rest1','false','Mc.Spicicy','1'),('971AA18A9C94A2C8FB077154660FA8E8','s','rest1','false','Mc.Spicicy','2'),('B811D5C8045017F14CD444AD605E3391','s','rest2','true','Peshwari','2'),('FD928553A66337A39085B1DDAC7A48A5','s','rest1','false','Mc.Spicicy','1'),('FD928553A66337A39085B1DDAC7A48A5','s','rest1','false','Mc.Spicicy','1'),('FD928553A66337A39085B1DDAC7A48A5','s','rest1','false','Ch.Kabab','1'),('FD928553A66337A39085B1DDAC7A48A5','s','rest1','false','Mc.Spicicy','1'),('86A6CEB3A5999136DC9FCD93233BFC0D','s','rest1','false','Ch.Kabab','2'),('86A6CEB3A5999136DC9FCD93233BFC0D','s','rest1','false','Mex.','1'),('A9F44428DEE99870B924B7A552794F00','s','rest1','false','Ch.Kabab','3'),('5F9A5C22D4EB37E3881A6A8C2FCB82A7','s','rest1','false','Mc.Spicicy','1'),('894FCDB8B23E17FFEF38C67964A8B71F','s','rest5','false','Lolipop','1'),('267E25B989F4A899C40172FCFAC3CDF2','ashwini','rest1','false','Mc.Spicicy','1'),('267E25B989F4A899C40172FCFAC3CDF2','ashwini','rest1','false','Ch.Kabab','2'),('E3E43B25AC626765C88EDB191AFBB43F','s','rest1','false','Mc.Spicicy','4'),('E3E43B25AC626765C88EDB191AFBB43F','s','rest1','false','Ch.Kabab','4'),('E3E43B25AC626765C88EDB191AFBB43F','s','rest1','false','Mex.','4'),('E3E43B25AC626765C88EDB191AFBB43F','s','rest1','false','Fries','4'),('984F7703FA63CC7355A624E66190DA87','s','rest4','false','Chesse','2'),('9C0527EFFFD1F78A0821A245B2FC8120','s','rest2','false','Peshwari','1'),('9C0527EFFFD1F78A0821A245B2FC8120','s','rest2','false','Tand.','1'),('BD4E65CA3153720BEF73B86C34F8AEC5','ashwini','rest3','false','BBQ','1'),('BD4E65CA3153720BEF73B86C34F8AEC5','ashwini','rest3','false','Burito','2'),('BD4E65CA3153720BEF73B86C34F8AEC5','ashwini','rest3','false','Angry','1'),('BD4E65CA3153720BEF73B86C34F8AEC5','ashwini','rest3','false','BBQ','1'),('BD4E65CA3153720BEF73B86C34F8AEC5','ashwini','rest3','false','Burito','2'),('BD4E65CA3153720BEF73B86C34F8AEC5','s','rest3','false','BBQ','2'),('BD4E65CA3153720BEF73B86C34F8AEC5','s','rest3','false','BBQ','2'),('BD4E65CA3153720BEF73B86C34F8AEC5','s','rest3','false','Burito','2'),('BD4E65CA3153720BEF73B86C34F8AEC5','s','rest3','false','BBQ','2'),('4569E5E441DF573F8180BE9A3186194D','s','rest3','false','BBQ','2');
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

-- Dump completed on 2017-11-10 14:33:39
