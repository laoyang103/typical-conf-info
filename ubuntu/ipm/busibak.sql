-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ipm
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.13.10.1

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
use ipm

--
-- Table structure for table `ipm_busi_set`
--

DROP TABLE IF EXISTS `ipm_busi_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipm_busi_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Common_alarm` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `Important_warning` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `Emergency_alarm` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipm_busi_set`
--

LOCK TABLES `ipm_busi_set` WRITE;
/*!40000 ALTER TABLE `ipm_busi_set` DISABLE KEYS */;
INSERT INTO `ipm_busi_set` VALUES (3,'北京_开户','北京_开户','90','70','60','12'),(13,'北京_套餐办理','北京_套餐办理','80','70','60','12'),(14,'北京_销户','北京_销户','80','70','50','12'),(15,'上海_开户','上海_开户','80','60','40','12'),(16,'上海_套餐办理','上海_套餐办理','80','70','50','12'),(17,'上海_销户','上海_销户','70','60','50','12');
/*!40000 ALTER TABLE `ipm_busi_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipm_url_mon_view`
--

DROP TABLE IF EXISTS `ipm_url_mon_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipm_url_mon_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `des` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imgname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monsid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipm_url_mon_view`
--

LOCK TABLES `ipm_url_mon_view` WRITE;
/*!40000 ALTER TABLE `ipm_url_mon_view` DISABLE KEYS */;
INSERT INTO `ipm_url_mon_view` VALUES (3,'北京联通','北京联通','w-23.png','3,13,14'),(4,'上海联通','上海联通','w-23.png','15,16,17'),(6,'开户业务','开户业务','w-23.png','3,15'),(7,'套餐办理业务','套餐办理业务','w-23.png','13,16'),(8,'销户业务','销户业务','w-23.png','14,17');
/*!40000 ALTER TABLE `ipm_url_mon_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipm_url_set`
--

DROP TABLE IF EXISTS `ipm_url_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipm_url_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `busid` int(20) DEFAULT NULL,
  `domain` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `putong` int(20) DEFAULT NULL,
  `zhongyao` int(20) DEFAULT NULL,
  `jinji` int(20) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipm_url_set`
--

LOCK TABLES `ipm_url_set` WRITE;
/*!40000 ALTER TABLE `ipm_url_set` DISABLE KEYS */;
INSERT INTO `ipm_url_set` VALUES (11,3,'192.168.1.12','/alertStatistic',100,200,300,2,'选号'),(19,14,'pan.baidu.com','pan.baidu.com/rest/2.0/dss/command',100,200,300,2,'登录'),(14,13,'g.163.com','/jr',100,200,300,2,'登录'),(15,13,'g.163.com','/r',100,200,300,1,'首页'),(17,13,'g.163.com','/r',100,200,300,3,'套餐选择'),(18,14,'pan.baidu.com','/res/static/thirdparty/connect.jpg?t=***',100,200,300,3,'注销'),(16,3,'192.168.1.12','/netStatistic',100,200,300,3,'选号'),(13,3,'192.168.1.12','/netStatistic',100,200,300,1,'登录'),(20,14,'pan.baidu.com','/res/static/thirdparty/connect.jpg?t=***',100,200,300,1,'首页'),(21,15,'sax.sina.com.cn','/newimpress?adunitid=***',10,20,30,3,'选号'),(22,15,'sax.sina.com.cn','/newimpress?adunitid=***',10,20,30,2,'登录'),(24,15,'sax.sina.com.cn','/newimpress?adunitid=***',11,20,30,1,'首页'),(25,15,'sax.sina.com.cn','/newimpress?adunitid=***',11,20,30,1,'首页'),(26,15,'sax.sina.com.cn','/newimpress?adunitid=***',11,20,30,1,'首页'),(27,16,'miserupdate.aliyun.com','/data/2.4.0.8/brfversion.xml',10,20,30,3,'选择套餐'),(28,16,'miserupdate.aliyun.com','/data/2.4.0.8/brfversion.xml',10,20,30,2,'登陆'),(29,16,'miserupdate.aliyun.com','/data/2.4.0.8/brfversion.xml',10,20,30,1,'首页'),(30,17,'toruk.tanx.com','/ex',10,20,30,3,'注销'),(31,17,'toruk.tanx.com','/ex',10,20,30,2,'登录'),(32,17,'toruk.tanx.com','/ex',10,20,30,1,'首页');
/*!40000 ALTER TABLE `ipm_url_set` ENABLE KEYS */;
UNLOCK TABLES;

