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
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication` (
  `board_idx` int NOT NULL AUTO_INCREMENT,
  `comm_title` varchar(200) NOT NULL,
  `contents` varchar(500) NOT NULL,
  `create_user` varchar(45) NOT NULL,
  `createAt` datetime NOT NULL,
  `updateAt` datetime DEFAULT NULL,
  `hit_cnt` int DEFAULT '0',
  `deleted_yn` char(1) NOT NULL DEFAULT 'N',
  `cafe_id` int DEFAULT NULL,
  `comm_image` varchar(500) DEFAULT NULL,
  `comm_theme_idx` int DEFAULT NULL,
  PRIMARY KEY (`board_idx`),
  KEY `fk_cafe_id_co_idx` (`cafe_id`),
  KEY `fk_theme_idx_idx` (`comm_theme_idx`),
  KEY `fk_user_id_co_idx` (`create_user`),
  CONSTRAINT `fk_cafe_id_co` FOREIGN KEY (`cafe_id`) REFERENCES `cafe` (`cafe_id`),
  CONSTRAINT `fk_theme_idx` FOREIGN KEY (`comm_theme_idx`) REFERENCES `theme` (`theme_idx`),
  CONSTRAINT `fk_user_id_co` FOREIGN KEY (`create_user`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
INSERT INTO `communication` VALUES (1,'강남지점 테마1 리뷰테스트1','리뷰테스트','test1','2024-07-29 14:09:48',NULL,1,'N',2,'time_sale.jpg',5),(2,'강남지점 테마2 리뷰테스트','리뷰테스트','test1','2024-07-29 14:09:48',NULL,0,'Y',2,'time_sale.jpg',6),(3,'강남지점 테마3 리뷰테스트','리뷰테스트','test1','2024-07-29 14:09:48',NULL,0,'N',2,'time_sale.jpg',7),(4,'강남지점 테마4 리뷰테스트','리뷰테스트','test1','2024-07-29 14:09:48',NULL,1,'N',2,'time_sale.jpg',8),(5,'부산지점 테마1 리뷰테스트','리뷰테스트','test1','2024-07-29 14:09:48',NULL,0,'N',6,'time_sale.jpg',9),(6,'이 테마 진짜 재미있어요~!','리뷰테스트','test1','2024-07-29 14:09:48',NULL,2,'N',6,NULL,10),(7,'부산지점 테마3 리뷰테스트','리뷰테스트','test1','2024-07-29 14:09:48',NULL,3,'N',6,NULL,11),(8,'부산지점 테마3 리뷰테스트','리뷰테스트','test1','2024-07-29 14:09:48',NULL,12,'N',6,NULL,12),(9,'홍대지점 테마1 리뷰테스트','리뷰테스트','test1','2024-07-31 16:01:35',NULL,81,'N',1,'time_sale.jpg',1),(10,'홍대지점 테마2 리뷰테스트','리뷰ㅌㅅㅌ','test2','2024-07-31 22:59:45',NULL,36,'N',1,'time_sale.jpg',2),(11,'홍대 테마2 리뷰테스트','e','test1','2024-08-01 09:16:51',NULL,7,'N',1,'1815534724039600.PNG',2),(12,'사장님이 너무 친절하셔서 좋았어요!','다음에 또 놀러가겠습니다ㅎㅎ','test4','2024-08-01 09:34:11',NULL,8,'N',1,NULL,3),(13,'ㅁㅁ','ㅁㅁ','test1','2024-08-01 09:34:20','2024-08-02 13:54:10',5,'Y',6,'1816583082381300.PNG',11),(14,'탈출 성공했어요~!','너무 재미있었습니당','test3','2024-08-01 09:46:14','2024-08-02 14:26:14',91,'N',2,'1920501021650900.jpg',7),(15,'재방문했어요','이번에 새로운 테마가 나왔다고 해서 재방문 했는데 새 테마도 너무 재미있었습니다!','test1','2024-08-01 09:46:43','2024-08-01 12:05:55',296,'N',1,'',1),(16,'사진 포인트 테스트 제목','사진 포인트 테스트 내용','test1','2024-08-01 09:47:56','2024-08-01 09:56:32',26,'Y',6,'1817399190009300.jpg',11),(17,'홍대 테마2 리뷰테스트','123123','admin','2024-08-01 10:24:49',NULL,51,'Y',1,NULL,2),(18,'탈출은 실패했지만 재미있었습니당','이 테마 추천합니다!','test1','2024-08-01 12:52:02','2024-08-02 13:48:09',161,'N',6,NULL,10),(19,'이 테마 추천합니당','직원분도 친절하시고 재미있었어요','test2','2024-08-01 16:47:45',NULL,38,'N',2,'',6),(20,'재미있었어요','재미있었어요','admin','2024-08-06 09:35:01','2024-08-06 09:35:09',3,'Y',6,NULL,10),(21,'사라진 보물 너무 재밌어요!','추천합니다~!!','test22','2024-08-06 19:59:32','2024-08-06 19:59:51',3,'Y',1,NULL,1),(22,'강남목욕탕 재밌어요~','추천합니다~~~~~~','test33','2024-08-06 20:10:30','2024-08-06 20:10:43',3,'Y',2,NULL,5),(23,'cnc','aa','test33','2024-08-06 20:15:41','2024-08-06 20:15:47',1,'Y',2,'346002340811700.png',5),(24,'너무 무서워요','추천합니다~@@@@@@','test44','2024-08-06 20:20:19','2024-08-06 20:20:33',3,'Y',2,NULL,6);
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
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
