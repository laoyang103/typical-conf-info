-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ipm
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1
use ipm;

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
-- Table structure for table `ipm_url_set`
--

DROP TABLE IF EXISTS `ipm_url_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipm_url_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busid` int(20) DEFAULT NULL,
  `url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `putong` int(20) DEFAULT NULL,
  `zhongyao` int(20) DEFAULT NULL,
  `jinji` int(20) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipm_url_set`
--

LOCK TABLES `ipm_url_set` WRITE;
/*!40000 ALTER TABLE `ipm_url_set` DISABLE KEYS */;
INSERT INTO `ipm_url_set` VALUES (3,3,'192.168.1.3:1900/ipc',1000,1500,2000,2,'操作_02'),(2,3,'sax.sina.com.cn/newimpress',1000,1500,2000,1,'操作_01'),(11,4,'upt.sg.baidu.com/',1000,2000,3000,2,'操作_02'),(5,4,'g.163.com/r',500,1000,1500,1,'操作_01'),(6,5,'192.168.1.3:1900/ipc',500,1000,1500,2,'操作_02'),(7,5,'192.168.1.12/netStatistic',500,1000,1500,1,'操作_01'),(12,6,'pan.baidu.com/res/static/thirdparty/connect.jpg',1000,2000,3000,2,'操作_02'),(10,6,'miserupdate.aliyun.com/data/2.4.0.8/brfversion.xml',1000,2000,3000,1,'操作_01');
/*!40000 ALTER TABLE `ipm_url_set` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-08 16:04:10
