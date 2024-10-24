-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 58.239.58.243    Database: java405_team2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `cafe`
--

DROP TABLE IF EXISTS `cafe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe` (
  `cafe_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `cafe_img` varchar(200) DEFAULT NULL,
  `sales_times` varchar(50) NOT NULL,
  `reservation_open_times` varchar(50) NOT NULL,
  PRIMARY KEY (`cafe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe`
--

LOCK TABLES `cafe` WRITE;
/*!40000 ALTER TABLE `cafe` DISABLE KEYS */;
INSERT INTO `cafe` VALUES (1,'홍대던전','02-322-4997','서울 마포구 독막로3길 30, B2','https://xdungeon.net/file/zizum/3/3_4696977071.jpg','평일 : 12:00~24:00, 주말/공휴일 : 10:00~24:00','매일 14:00'),(2,'강남던전','02-555-4360','서울 강남구 강남대로84길 33, 대우디오빌플러스 B1','https://xdungeon.net/file/zizum/2/2_4854618857.jpg','평일 : 12:00~24:00, 주말/공휴일 : 10:00~24:00','매일 14:00'),(3,'던전루나(강남)','02-555-1008','서울 강남구 강남대로94길 20, 삼오빌딩 B1','https://xdungeon.net/file/zizum/3/3_4696977071.jpg','평일 : 9:30~24:00, 주말/공휴일 : 9:30~24:00','매일 14:00'),(4,'던전101','02-3144-2342','서울 마포구 와우산로 74, 2층','https://xdungeon.net/file/zizum/3/3_4696977071.jpg','평일 : 10:00~24:00, 주말/공휴일 : 10:00~24:00','매일 14:00'),(5,'서면던전(부산)','051-818-4888','부산 부산진구 동천로 66, 5층','https://xdungeon.net/file/zizum/3/3_4696977071.jpg','평일 : 12:00 ~ 24:00, 주말/공휴일 : 09:30~24:00','매일 14:00'),(6,'서면던전 레드(부산)','051-803-5556','부산 부산진구 부전동 171, 5층','https://xdungeon.net/file/zizum/10/10_8929561228.jpg','평일 : 12:00-24:00, 주말/공휴일 : 10:00~24:00','매일 14:00'),(7,'홍대던전Ⅲ','02-3141-9421','서울 마포구 와우산로29길 21, 3층','https://xdungeon.net/file/zizum/3/3_4696977071.jpg','평일 : 09:20~24:00, 주말/공휴일 : 09:20~24:00','매일 14:00'),(8,'강남던전Ⅱ','02-501-0323','서울 강남구 테헤란로4길 32, 우정에쉐르1 B1','https://xdungeon.net/file/zizum/3/3_4696977071.jpg','평일 : 10:00~24:00, 주말/공휴일 : 10:00~24:00','매일 14:00');
/*!40000 ALTER TABLE `cafe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 16:19:17
