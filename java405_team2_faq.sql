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
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'게임 이용 안내','* 입장 전 게임 설명 및 유의사항 안내를 위하여 이용 시간보다 10분 일찍 도착 부탁드립니다. (게임 시작 시간 이후 도착 시 테마 이용 시간이 차감될 수 있습니다.)<br>\r* 휴대폰, 인화성 물질 및 소지품은 라커룸에 보관하셔야 합니다.<br>* 과도한 음주 후 플레이는 입장이 제한될 수 있습니다.<br>* 힌트용 태블릿에 힌트 코드를 입력하여 힌트를 사용할 수 있습니다. 힌트 사용 횟수는 무제한이며, 탈출 시 탈출 성공 기념 티켓을 제공합니다.<br>\r* 게임의 상세한 내용에 대한 스포일러는 금지되어 있습니다.'),(2,'예약 오픈 안내','* 평일/주말 상관없이 예약 오픈됩니다.<br>* 매일 하루씩 예약 오픈하며 일주일 치의 예약만 가능합니다.'),(3,'예약 안내','* 로그인 후 예약이 가능합니다.<br> * 회원가입 시 예약 확정 및 예약번호 문자 발송을 위하여 확인 가능한 연락처로 입력 부탁드립니다.<br>* 입금 시 예약자명과 입금자명이 일치해야 합니다.<br>* 문자로 발송된 예약번호로 예약 조회 및 취소 가능합니다.<br>* 예약완료 문자를 받지 못하신 경우 예약이 안된 경우이니 해당 매장으로 유선 문의 부탁드립니다.'),(4,'예약 변경(날짜 / 시간 / 인원변경)','* 이용 날짜 및 시간, 테마 변경은 불가능합니다. 사이트를 통해 취소 후 재예약 부탁드립니다.<br>* 이용 인원이 변경된 경우, 이용일 당일 매장에서 추가 결제 및 부분 환불 도와드리겠습니다.'),(5,'예약 취소','* 홈페이지 상단 \'마이페이지\' > \'상세보기\'를 통해 예약 취소하실 수 있습니다.<br>* 환불 계좌번호 입력 시, 예약자명과 예금주명이 일치해야 합니다.<br>* 환불은 영업일 기준 최대 1~2일 소요될 수 있습니다.'),(6,'단체 문의','* 각 지점별 단체 예약에 대한 규정이 상이하므로, 단체 예약을 원하실 경우 각 지점에 유선 문의 부탁드립니다.'),(7,'날짜 선택이 안될 경우','* 인터넷 쿠키 및 캐시를 삭제하신 뒤 다시 이용 부탁드립니다.');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
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
