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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deleted_yn` char(1) DEFAULT 'N',
  `hit_cnt` int DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `notice_image` varchar(600) DEFAULT NULL,
  `cafe_id` int DEFAULT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `fk_cafe_id_idx` (`cafe_id`),
  KEY `fk_cafe_id_notice` (`cafe_id`),
  CONSTRAINT `fk_cafe_id_notice` FOREIGN KEY (`cafe_id`) REFERENCES `cafe` (`cafe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='notice 테스트 테이블';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'이벤트','던전 타임 할인','2024-07-25 10:19:29','2024-07-28 20:18:53','Y',91,'2024-05-01','2024-05-31','time_sale.jpg',NULL),(2,'이벤트','이벤트 모음','2024-07-25 12:21:54','2024-07-28 20:19:19','Y',93,'2024-06-02','2024-08-20','seomyeon_dungeon_event.jpg',6),(3,'공지','던전 예약 안내 수정2','2024-07-26 13:49:12','2024-07-28 18:46:26','N',66,NULL,NULL,'time_sale.jpg',NULL),(4,'공지','던전 예약 안내','2024-07-26 13:49:40','2024-07-28 20:20:02','Y',11,NULL,NULL,'time_sale.jpg',1),(5,'공지','던전 예약 안내','2024-07-26 14:04:41','2024-07-28 20:20:05','Y',10,'2024-01-31','2024-02-03','time_sale.jpg',1),(6,'공지','던전 예약 안내','2024-07-26 14:05:12','2024-07-28 20:20:07','Y',15,NULL,NULL,'time_sale.jpg',1),(10,'공지','던전 예약 안내','2024-07-27 19:45:43','2024-07-28 18:08:14','N',3,'2024-07-01','2024-07-31','1194627541210200.PNG',1),(11,'공지','test2 수정','2024-07-27 19:49:13','2024-07-28 20:41:37','Y',94,'2024-06-30','2024-08-31','1275057222507300.png',6),(12,'이벤트','test3','2024-07-27 19:51:07','2024-07-28 15:00:45','Y',6,NULL,NULL,'1194951282079900.PNG',8),(13,'공지','지점 전체 test','2024-07-27 23:19:46','2024-07-28 21:05:11','Y',20,NULL,NULL,'1207473419193200.png',NULL),(14,'이벤트','bbb','2024-07-27 23:56:55','2024-07-28 14:59:48','Y',23,'2024-03-01','2024-06-30','1209703222046700.png',8),(15,'공지','TESTTEST 수정2','2024-07-28 18:51:53','2024-07-28 19:04:04','Y',11,NULL,NULL,'1278522273334500.PNG',8),(16,'공지','TESTTESTTESTTEST 수정','2024-07-28 18:52:52','2024-07-28 18:55:52','Y',8,NULL,NULL,'1278014154509100.PNG',2),(17,'공지','test10 수정','2024-07-28 20:12:57','2024-07-28 20:18:06','Y',7,'2024-07-28','2024-07-31','1282967166673900.PNG',NULL),(18,'공지','test11 수정','2024-07-28 20:13:52','2024-07-28 20:17:09','Y',7,'2024-09-01','2024-09-30','1282877356479100.PNG',6),(19,'이벤트','test12','2024-07-28 20:15:15','2024-07-28 20:15:20','Y',1,NULL,NULL,'1282803848908900.PNG',3),(20,'공지','test13 수정','2024-07-28 21:03:49','2024-07-29 09:34:52','Y',15,'2024-08-28','2024-08-29','1557393441577800.jpg',6),(21,'이벤트','1','2024-07-28 23:06:41','2024-07-28 23:07:04','Y',3,'2024-07-28','2024-07-31','1293107707302100.PNG',6),(22,'이벤트','던전 타임 할인','2024-07-29 09:33:40',NULL,'N',89,'2024-05-01','2024-05-31','1557335150396200.jpg',NULL),(23,'이벤트','[종료] 2024 수험생 할인 이벤트','2024-07-29 16:17:44','2024-07-29 16:18:24','Y',3,'2023-11-16','2023-12-15','1581579444146900.jpg',NULL),(24,'이벤트','[종료] 2024 수험생 할인 이벤트','2024-07-29 16:19:15',NULL,'N',292,'2023-11-16','2023-12-15','1581670649501800.jpg',NULL),(25,'이벤트','image test1','2024-07-29 22:21:47','2024-07-30 09:16:56','Y',67,NULL,NULL,'1376798249976300.PNG',6),(26,'이벤트','image test2','2024-07-30 09:17:28',NULL,'N',20,'2024-07-01','2024-07-31','1642767498747700.png',5),(27,'이벤트','d','2024-07-30 09:22:52',NULL,'N',22,NULL,NULL,'1643090907704900.PNG',NULL),(28,'공지','image test3','2024-07-30 09:29:39','2024-07-30 09:29:56','N',78,'2024-06-03','2024-07-30','1643515496933300.PNG',6),(29,'이벤트','image test4','2024-07-30 09:30:28',NULL,'N',144,NULL,NULL,'1643547092191900.jpg',2),(30,'공지','이미지 테스트4','2024-07-30 11:32:11',NULL,'N',22,'2024-07-30','2024-07-31','1650851074160200.jpg',6),(31,'공지','html 다 옮긴 후 테스트','2024-07-30 11:37:10',NULL,'N',9,'2024-07-16','2024-07-31','1651150065983800.PNG',NULL),(32,'공지','html 다 옮긴 후 테스트2','2024-07-30 11:40:34',NULL,'N',3,NULL,NULL,'1651353921823700.png',NULL),(33,'공지','config 옮긴 후 테스트','2024-07-30 11:41:43',NULL,'N',5,NULL,NULL,'1651422468288100.PNG',1),(34,'이벤트','main theme pop.java 옮긴 후 테스트','2024-07-30 11:42:44',NULL,'N',7,NULL,NULL,'1651484090623600.jpg',2),(35,'이벤트','pop cafe 옮긴 후 테스트','2024-07-30 11:43:22',NULL,'N',6,NULL,NULL,'1651521276595600.png',NULL),(36,'이벤트','profile 옮긴 후 테스트','2024-07-30 11:44:08',NULL,'N',11,NULL,NULL,'1651567776686300.png',2),(37,'이벤트','cafeReservation 빼고 테스트','2024-07-30 11:47:47',NULL,'N',119,'2024-07-01','2024-07-31','1651786807475900.jpg',2),(38,'이벤트','기존 프로젝트로 돌아와서 테스트','2024-07-30 12:03:46',NULL,'N',57,'2024-07-01','2024-07-31','1652744885733100.PNG',1),(39,'이벤트','[종료] 서면 던전 할인 모음','2024-07-30 12:06:45','2024-08-02 14:39:03','N',70,'2023-11-14','2023-12-15','1921268843788100.jpg',6),(40,'이벤트','[종료] 2024 수험생 할인 이벤트','2024-07-30 15:27:23','2024-08-02 14:36:07','N',128,'2023-11-16','2023-12-15','1921093521751000.jpg',NULL),(41,'이벤트','던전 타임 할인','2024-07-30 15:57:55','2024-08-02 14:34:41','N',125,'2024-05-01','2024-08-31','1921002327816300.jpg',NULL),(42,'공지','던전 예약 안내','2024-07-30 16:11:55','2024-08-02 14:32:20','N',190,NULL,NULL,'1920866275990400.jpg',NULL),(43,'이벤트','서면던전 레드 이벤트 모음','2024-07-31 12:46:07','2024-08-06 19:54:40','Y',135,NULL,NULL,'344697843855800.jpg',6),(44,'이벤트','test title 수정','2024-08-01 15:08:02','2024-08-01 15:08:25','Y',4,'2024-08-12','2024-08-29','1836623875069400.jpg',1),(45,'공지','예약 안내 수정','2024-08-06 09:32:38','2024-08-06 09:33:10','Y',4,NULL,NULL,'2248508935011200.jpg',NULL),(46,'이벤트','서면 던전레드 이벤트 모음','2024-08-06 19:55:52','2024-08-06 19:55:55','Y',1,'2024-08-06','2024-08-21','344813886726500.jpg',6),(47,'이벤트','서면 던전레드 이벤트 모음','2024-08-06 20:04:17','2024-08-06 20:08:13','Y',3,NULL,NULL,'345318709083300.jpg',6),(48,'이벤트','서면 던전레드 이벤트 모음','2024-08-06 20:08:36','2024-08-06 20:17:48','Y',3,'2024-08-07','2024-08-31','345578192065200.jpg',6),(49,'이벤트','서면 던전레드 이벤트 모음','2024-08-06 20:18:12',NULL,'N',1,'2024-08-07','2024-08-31','346153698766100.jpg',6);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 16:19:16