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
-- Table structure for table `theme`
--

DROP TABLE IF EXISTS `theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme` (
  `theme_idx` int NOT NULL AUTO_INCREMENT,
  `theme_id` int DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `theme_rank` varchar(50) NOT NULL COMMENT 'rank 컬럼명으로 못써서 theme_rank로 바꿈',
  `genre` varchar(100) NOT NULL,
  `synopsis` varchar(500) NOT NULL,
  `particulars` varchar(500) DEFAULT NULL,
  `people_limit` int NOT NULL,
  `playtime` int NOT NULL,
  `payment` int NOT NULL,
  `cafe_id` int NOT NULL,
  `img_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`theme_idx`),
  KEY `cafe_id_idx` (`cafe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme`
--

LOCK TABLES `theme` WRITE;
/*!40000 ALTER TABLE `theme` DISABLE KEYS */;
INSERT INTO `theme` VALUES (1,1,'사라진 보물 : 대저택의 비밀','NORMAL','탈출·잠입','“화제의 목걸이, 인어의 눈물이 사라졌습니다.”내가 똑똑히 봤어.그 대저택 안으로 인어의 눈물이 들어가는 걸 분명히 봤다고.이제 그 목걸이는 내거야.어디에 숨겼을까?','',4,60,50000,1,'https://xdungeon.net/file/theme/15/15_3539534119.jpg'),(2,2,'날씨의 신 (홍대)','NORMAL','판타지','2050년, 전 세계에 걸쳐 비가 내리지 않기 시작했다. 사람들은 황폐해진 땅을 보며 한숨만 쉴 뿐이었고, 수많은 어린아이들이 영양실조로 죽어가고 있었다. 이러한 광경을 눈뜨고 볼 수 없었던 나는 간절히 기도를 시작했다.','',4,60,50000,1,'https://xdungeon.net/file/theme/14/14_1175778262.jpg'),(3,3,'꿈의 공장 (홍대)','NORMAL','판타지','\"OK 컷! 모두 수고하셨습니다!!!\" 이게 무슨 소리냐고요? 꿈 제작이 완료됐음을 알리는 소리에요!','',4,60,50000,1,'https://xdungeon.net/file/theme/13/13_7475838983.jpg'),(4,4,'오늘 나는 (홍대)','NORMAL','드라마·서사','잠에서 깨고 나면, 오늘도 나는 새로운 사람이 되어 하루를 살아간다.','',4,60,50000,1,'https://xdungeon.net/file/theme/3/3_8186075995.png'),(5,1,'강남목욕탕','EASY','코믹','“한 번 들어갔다 나오면 무조건 100% 피로가 회복되는 1인 강남목욕탕” 중요한 경기를 앞두고 완벽한 컨디션 관리를 위해서 강남목욕탕에 방문했는데, 오늘이 강남목욕탕 휴일이라니… 이대로 돌아갈 순 없다. 어떻게든 들어가서 최고의 컨디션을 만들어 나와야 한다!','',4,60,50000,2,'https://xdungeon.net/file/theme/2/2_1141758698.jpg'),(6,2,'대호시장 살인사건','HARD','추리','대호 시장에 위치한 집에서 한 남자의 사체가 발견된다. 사인은 손목의 상처로 인한 과다출혈이었고, 사체의 곁에서 유서가 발견되었기에 자살이라 보였다. 하지만 이 사건이 단순한 자살이 아닌 교묘하게 계획된 살인이 아닐까 의구심이 들기 시작한 당신은 강력반 동료들과 함께 피해자와 관련된 사람들을 용의자로 지목해 본격적으로 수사를 진행하기 시작하는데…','',4,60,50000,2,'https://xdungeon.net/file/theme/10/10_1395908201.jpg'),(7,3,'마음을 그려드립니다','NORMAL','판타지','모든 감정에는 고유의 색이 있다는 것을 아시나요? 지치는 일상 속에서 점점 바래져가는 마음들. 그리고 그 마음을 어루만져 주고자 한 사람. 감정의 색을 모아 당신의 \"마음을 그려드립니다\".','',4,60,50000,2,'https://xdungeon.net/file/theme/11/11_6145641280.jpg'),(8,4,'LOST KINGDOM : 잊혀진 전설','NORMAL','모험·탐험','누가 이런 편지를 보낸 거지? ’아틀란티스는 여기에 묻혀있다.’ 아틀란티스는 없어. 몇 년간 연구했지만 실마리도 못 찾았는데.. 아틀란티스는 여기에 묻혀있다... 아틀란티스는… 그래, 마지막으로 한 번만 더 믿어보자.','',4,60,50000,2,'https://xdungeon.net/file/theme/12/12_3322874120.jpg'),(9,1,'고시원 살인사건','EASY','추리','부산의 한 고시원에서 살인사건이 벌어졌다. 하지만 무슨 연유에서인지 경찰들은 빠르게 범인을 밝혀내지 못했고, 어느덧 많은 시일이 지나게 되었다. 지지부진한 수사에 지친 피해자의 애인은 사립탐정인 당신에게 사건수사를 의뢰한다.도대체 무슨 이유 때문에 경찰의 수사는 빠르게 이루어지지 않는 것일까?',NULL,4,60,40000,6,'https://xdungeon.net/file/theme/53/53_6665881096.jpg'),(10,2,'AMEN','NORMAL','호러·공포','“저의 죄를 사하여 주시옵소서” 100일의 회개 기도를 올리면 그 어떤 죄도 씻어낼 수 있다는 단 한 명 만을 위한 외딴 수도원. 벌써 13명의 사제가 이곳에서 회개 받았다. 그리고 14번째 사제인 나는 이제 99일째의 아침을 맞는다.',NULL,4,60,40000,6,'https://xdungeon.net/file/theme/56/56_8563141336.jpg'),(11,3,'산장으로의 초대','NORMAL','호러·공포','“나는 지난 여름 너희들이 한 일을 알고 있다“ 지난 여름 실수로 벌어진 그 사건, 우리의 실수로 친구가 죽었다. 사소한 말다툼이 그녀를 죽음으로 이끌었고, 우리는 이 사실을 숨겼다. 오늘은 그녀가 죽은 지 딱 1년이 되는 날, 그녀의 오빠가 동생을 추모하자며 그 산장으로 우리를 초대했다. 죄책감을 떨쳐 내기 위해 다시 모인 우리. 산장에 들어서자 그녀의 웃음소리가 들려온다! 그녀의 원혼이 우리를 괴롭히는 걸까!',NULL,4,60,40000,6,'https://xdungeon.net/file/theme/54/54_4771846903.jpg'),(12,4,'부적','EASY','스릴러','“다음 소식입니다. 태국의 한 마을에서 갓난아이들이 잇달아 출산 직전 사망한 채 태어나는 일이 일어나고 있습니다. 이 일이 지속된 지 꽤나 되었지만, 아직 그 누구도 원인을 찾지…” 이 마을 사원에서 풍기는 향내에는, 아이들의 울음소리가 서려 있다. 마치, 한을 풀어 달라는 듯이….',NULL,4,60,40000,6,'https://xdungeon.net/file/theme/57/57_2736427488.jpg');
/*!40000 ALTER TABLE `theme` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 16:19:18
