-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: i11a502.p.ssafy.io    Database: koala
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `ai_talk_log`
--

DROP TABLE IF EXISTS `ai_talk_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_talk_log` (
  `user_id` bigint NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FK_users_TO_ai_talk_log_1` (`user_id`),
  CONSTRAINT `FK_users_TO_ai_talk_log_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_talk_log`
--

LOCK TABLES `ai_talk_log` WRITE;
/*!40000 ALTER TABLE `ai_talk_log` DISABLE KEYS */;
INSERT INTO `ai_talk_log` VALUES (1,'2024-08-15 17:46:11',NULL),(1292,'2024-08-15 08:51:55',NULL),(1293,'2024-08-15 09:33:35',NULL),(1294,'2024-08-15 09:59:57',NULL),(1297,'2024-08-15 09:00:34',NULL),(1298,NULL,NULL),(1299,NULL,NULL),(1300,NULL,NULL),(1301,NULL,NULL),(1302,NULL,NULL),(1303,NULL,NULL),(1304,NULL,NULL),(1305,NULL,NULL),(1306,NULL,NULL),(1307,NULL,NULL),(1308,NULL,NULL),(1309,NULL,NULL),(1310,NULL,NULL),(1311,NULL,NULL),(1312,NULL,NULL),(1313,NULL,NULL),(1314,NULL,NULL),(1315,NULL,NULL),(1316,NULL,NULL),(1317,NULL,NULL),(1318,NULL,NULL),(1319,NULL,NULL),(1320,NULL,NULL),(1321,NULL,NULL),(1322,NULL,NULL),(1323,NULL,NULL),(1324,NULL,NULL),(1325,NULL,NULL),(1326,NULL,NULL),(1327,NULL,NULL),(1328,NULL,NULL),(1333,NULL,NULL),(1335,NULL,NULL);
/*!40000 ALTER TABLE `ai_talk_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_talk_situation`
--

DROP TABLE IF EXISTS `ai_talk_situation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_talk_situation` (
  `situation_id` bigint NOT NULL AUTO_INCREMENT,
  `topic_category` varchar(255) DEFAULT NULL,
  `situation_title` varchar(255) DEFAULT NULL,
  `situation_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `situation_place` varchar(255) DEFAULT NULL,
  `ai_role` varchar(255) DEFAULT NULL,
  `user_role` varchar(255) DEFAULT NULL,
  `situation_img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`situation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_talk_situation`
--

LOCK TABLES `ai_talk_situation` WRITE;
/*!40000 ALTER TABLE `ai_talk_situation` DISABLE KEYS */;
INSERT INTO `ai_talk_situation` VALUES (1,'일상','자녀의 치료상담','자녀의 건강 문제로 병원에서 치료 상담을 받는 상황을 가정합니다. 의사와의 대화, 치료 계획 논의하는 방법을 AI와 함께 연습해 봅시다!','병원 상담실','의사','자녀의 건강문제로 치료 상담을 받는 학부모','https://plus.unsplash.com/premium_photo-1682130157004-057c137d96d5?q=80&w=2064&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(2,'일상','친구와의 갈등 상담','자녀가 친구와 갈등을 겪고, 부모와 함께 상황을 설명하고 해결 방법을 찾는 상황을 가정합니다. 감정 공유와 조언 하는 방식을 AI와 함께 연습해 봅시다!','집','친구와 갈등을 겪은 자녀','자녀의 상황을 돕고자 하는 학부모','https://images.unsplash.com/photo-1646816185462-b9970adda183?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(3,'일상','슈퍼마켓에서 직원에게 도움 요청','장을 보러 간 슈퍼마켓에서, 물건을 구매하려는 상황을 가정합니다. 상품을 구매하기 위한 과정을 AI와 함께 연습해 봅시다!','슈퍼마켓','슈퍼마켓 직원','물건을 구매하러 간 소비자','https://images.unsplash.com/photo-1695654397565-b904c10fe594?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(4,'일상','영화 관람','영화관에서 영화를 예매하려는 상황을 가정합니다. 영화 예매, 팝콘 구매, 입장 등의 과정을 AI와 함께 연습해 봅시다!','영화관','영화관 직원','영화를 예매하러 간 소비자','https://images.unsplash.com/photo-1517604931442-7e0c8ed2963c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(5,'일상','약국 방문','약국에서 필요한 약을 구매하는 상황을 가정합니다. 약사와 상담, 약품 선택, 복용 방법 등의 대화를 나누는 방법을 AI와 함꼐 연습해 봅시다!','약국','약사','필요한 약을 구매해야하는 소비자','https://images.unsplash.com/photo-1547489432-cf93fa6c71ee?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(6,'교육','자녀의 학원 등록 시','자녀를 학원에 등록하는 상황을 가정합니다. 학원 선택과 등록 절차에 대해 AI와 함께 연습해 봅시다!','학원 접수처','학원 원장','자녀의 학원을 등록하려는 학부모','https://images.unsplash.com/photo-1562564055-71e051d33c19?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(7,'교육','학교 행사 참여 시','자녀의 학교 행사에 참여하는 상황을 가정합니다. 행사에 대해 질문하고 필요한 정보를 얻는 연습을 AI와 함께 해 봅시다!','학교 강당','학교 관계자','학교 행사에 대해 질문하는 학부모','https://images.unsplash.com/photo-1503428593586-e225b39bddfe?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(8,'교육','학부모 상담 시','자녀의 교사와 학부모 상담을 진행하는 상황을 가정합니다. 자녀의 성적이나 학교 생활에 대해 논의하는 방법을 AI와 함께 연습해 봅시다!','교실 상담실','자녀의 담당 교사','학부모','https://images.unsplash.com/photo-1511376979163-f804dff7ad7b?q=80&w=3565&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(9,'교육','학원 수강료 문의','자녀가 다니는 학원의 수강료에 대해 문의하는 상황을 가정합니다. AI와 함께 학원 비용과 결제 방식에 대해 연습해 봅시다!','학원 상담실','학원 관계자','자녀의 학원 수강료에 대해 질문하는 학부모','https://images.unsplash.com/photo-1556740772-1a741367b93e?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(10,'교육','자녀의 학부모 모임 참석 시','자녀의 학부모 모임에 참석하는 상황을 가정합니다. 다른 학부모들과의 소통 방법을 AI와 함께 연습해 봅시다!','학교 회의실','다른 학부모','학부모 모임에 참석한 다문화 가정 학부모','https://plus.unsplash.com/premium_photo-1690479510681-aad612ec3987?q=80&w=3524&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(11,'행정','자녀가 쓰러졌을 때','자녀가 쓰러졌을 때 119 구급대에 신고하는 상황을 가정합니다. 신고 절차에 대해 AI와 함께 연습해 봅시다!','전화 통화','구급 대원','구급대에 신고하고자 하는 학부모','https://images.unsplash.com/photo-1578842077399-b98b5897ada2?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(12,'행정','자녀를 잃어버렸을 때','자녀가 길을 잃어 행방 불명이 된 상황을 가정합니다. 가까운 경찰서에 실종 신고를 하는 연습을 AI와 함께 해 봅시다!','경찰서','경찰서 직원','실종신고를 하는 학부모','https://images.unsplash.com/photo-1578842077399-b98b5897ada2?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(13,'행정','우체국에서 소포를 맡길 때','우체국에서 소포를 보내는 상황 가정합니다. 소포를 보내는 절차에 대해 AI와 함께 연습해 봅시다!','우체국','우체국 직원','소포를 보내고자 하는 다문화 가정 학부모','https://images.unsplash.com/photo-1621290719877-4c7f04087b63?q=80&w=1288&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(14,'행정','보건소에서 건강검진을 받을 때','보건소에서 건강검진을 받는 상황을 가정합니다. AI와 함께 건강검진을 받는 절차에 대해 알아봅시다!','보건소','보건소 직원','건강검진을 받고자하는 다문화 가정 학부모','https://images.unsplash.com/photo-1527613426441-4da17471b66d?q=80&w=1152&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(15,'행정','은행에서 예금할 때','은행에서 예금을 하는 상황을 가정합니다. 은행 예금 절차에 대해 AI와 함께 연습해 봅시다!','은행','은행 직원','예금 절차에 대해 질문하고자 하는 다문화 가정 학부모','https://images.unsplash.com/photo-1723095816936-fcda04ba0ece?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
/*!40000 ALTER TABLE `ai_talk_situation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth` (
  `auth_id` bigint NOT NULL COMMENT 'auto increment',
  `auth_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (0,'admin'),(1,'user'),(2,'teacher');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `user_id` bigint NOT NULL,
  `board_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `board_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `board_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `board_modified_at` datetime DEFAULT NULL,
  `hit` int DEFAULT '0' COMMENT '조회수',
  `comment_num` int DEFAULT '0',
  PRIMARY KEY (`board_id`),
  KEY `FK_users_TO_board_1` (`user_id`),
  CONSTRAINT `FK_users_TO_board_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=393 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (355,1,'오늘 아침 산책','오늘 아침 공원에서 산책을 하며 상쾌한 공기를 마셨어요.','2024-08-12 17:26:58',NULL,0,3),(356,1,'저녁 식사','친구들과 함께 맛있는 저녁 식사를 했어요. 정말 즐거웠어요.','2024-08-12 17:26:58',NULL,3,3),(357,1,'주말 여행 계획','이번 주말에 어디로 여행을 갈지 계획 중입니다. 추천해 주세요!','2024-08-12 17:26:58',NULL,0,3),(358,1305,'새로운 취미','요즘 그림 그리기에 빠졌어요. 생각보다 재미있네요.','2024-08-12 17:26:58',NULL,0,3),(359,1313,'영화 감상','오늘은 오랜만에 집에서 영화를 봤어요. 정말 감동적이었어요.','2024-08-12 17:26:58',NULL,0,3),(360,1322,'독서의 시간','새로 산 책을 읽기 시작했어요. 내용이 정말 흥미롭네요.','2024-08-12 17:26:58',NULL,0,3),(361,1308,'운동 시작','오랜만에 헬스장에 가서 운동을 시작했어요. 몸이 개운해요.','2024-08-12 17:26:58',NULL,6,3),(362,1319,'카페에서의 하루','동네 카페에서 여유롭게 커피 한 잔 마시며 하루를 보냈어요.','2024-08-12 17:26:58',NULL,0,3),(363,1298,'반려견 산책','반려견과 함께 공원을 산책했어요. 강아지가 너무 행복해 보였어요.','2024-08-12 17:26:58',NULL,0,3),(364,1320,'아침 요가','아침에 일어나서 요가를 했어요. 하루를 활기차게 시작할 수 있었어요.','2024-08-12 17:26:58',NULL,0,3),(365,1317,'주말 청소','주말 동안 집안을 깔끔하게 청소했어요. 정리가 잘 되니 기분이 좋아요.','2024-08-12 17:26:58',NULL,360,4),(366,1300,'새로운 요리 도전','오늘 저녁은 새로운 요리를 시도해봤어요. 맛있게 잘 됐어요!','2024-08-12 17:26:58',NULL,5,3),(367,1314,'비 오는 날의 생각','비 오는 날에는 창밖을 보며 생각이 많아져요. 조용히 책을 읽었어요.','2024-08-12 17:26:58',NULL,17,3),(368,1327,'야식의 유혹','야식이 당겨서 라면을 끓였어요. 역시 밤에는 라면이 최고예요.','2024-08-12 17:26:58',NULL,14,3),(369,1304,'친구와의 통화','오랜만에 친구와 긴 통화를 했어요. 시간 가는 줄 몰랐네요.','2024-08-12 17:26:58',NULL,9,3),(370,1321,'새로 산 옷','오늘은 새로 산 옷을 입고 외출했어요. 기분 전환이 되었어요.','2024-08-12 17:26:58',NULL,5,4),(371,1298,'퇴근 후 휴식','퇴근 후에 집에서 편하게 쉬었어요. 하루의 피로가 풀리는 기분이에요.','2024-08-12 17:26:58',NULL,0,3),(372,1311,'아침 출근길','출근길에 본 풍경이 너무 아름다웠어요. 하루의 시작이 좋았어요.','2024-08-12 17:26:58',NULL,4,3),(373,1326,'운동화 구입','새로운 운동화를 샀어요. 내일은 이걸 신고 산책할 예정이에요.','2024-08-12 17:26:58',NULL,7,3),(374,1316,'독서 모임 참석','독서 모임에 처음 참석했어요. 다양한 사람들과 이야기를 나누어 좋았어요.','2024-08-12 17:26:58',NULL,7,3),(392,1,'내일 ㅇ ㅏ이 학교에 상담가요','아이 성적이 너무 않좋아저서 학교에 상담가는데 준비물있나요. 가정통신문은 뭐라고 써잇는건지 알려주세요','2024-08-15 17:46:21',NULL,5,0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_comment`
--

DROP TABLE IF EXISTS `board_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_comment` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `board_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `comment_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `comment_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `comment_modified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_board_TO_board_comment_1` (`board_id`),
  KEY `FK_users_TO_board_comment_1` (`user_id`),
  CONSTRAINT `FK_board_TO_board_comment_1` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_users_TO_board_comment_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1072 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_comment`
--

LOCK TABLES `board_comment` WRITE;
/*!40000 ALTER TABLE `board_comment` DISABLE KEYS */;
INSERT INTO `board_comment` VALUES (1001,355,1302,'정말 상쾌한 아침이었겠네요! 공원에서의 산책은 언제나 기분이 좋죠.','2024-08-13 14:05:10',NULL),(1002,355,1315,'저도 오늘 아침에 공원에 갔었어요. 날씨가 좋아서 기분이 좋았습니다.','2024-08-13 14:05:10',NULL),(1003,355,1324,'산책 후에 좋은 기운이 느껴지죠. 내일도 계속 즐기세요!','2024-08-13 14:05:10',NULL),(1004,356,1309,'저녁 식사에 맛있는 음식이 많았군요! 친구들과 좋은 시간 보냈겠어요.','2024-08-13 14:05:10',NULL),(1005,356,1320,'저도 최근에 친구들과 외식했었는데, 정말 즐거운 시간이었어요.','2024-08-13 14:05:10',NULL),(1006,356,1310,'맛있는 저녁과 좋은 사람들과의 시간, 최고죠! 앞으로도 즐거운 시간 많이 가지세요.','2024-08-13 14:05:10',NULL),(1007,357,1322,'주말 여행은 항상 기대되죠! 추천으로는 제주도나 강릉이 좋을 것 같아요.','2024-08-13 14:05:11',NULL),(1008,357,1299,'여행 계획 세우는 것도 재밌죠. 좋은 여행지 많이 찾아보세요!','2024-08-13 14:05:11',NULL),(1009,357,1307,'저는 최근에 부산 여행 갔었는데, 바다와 음식이 최고였어요. 참고해보세요.','2024-08-13 14:05:11',NULL),(1010,358,1321,'그림 그리기는 정말 멋진 취미죠! 재미있게 잘 하시길 바랍니다.','2024-08-13 14:05:11',NULL),(1011,358,1298,'저도 그림 그리기를 좋아해요. 어떤 스타일의 그림을 그리시나요?','2024-08-13 14:05:11',NULL),(1012,358,1318,'새로운 취미를 찾는 건 멋진 일이에요. 계속해서 즐기세요!','2024-08-13 14:05:11',NULL),(1013,359,1303,'영화는 정말 감동적일 때가 많죠. 어떤 영화였는지 궁금하네요!','2024-08-13 14:05:11',NULL),(1014,359,1314,'오랜만의 영화 감상, 참 좋았겠어요. 저도 최근에 감명 깊은 영화를 봤어요.','2024-08-13 14:05:11',NULL),(1015,359,1326,'영화 감상은 항상 기분 전환에 좋죠. 다음에는 어떤 영화를 보실지 기대되네요.','2024-08-13 14:05:11',NULL),(1016,360,1306,'새 책을 읽는 건 언제나 신나는 일이죠. 어떤 내용인지 알려주세요!','2024-08-13 14:05:11',NULL),(1017,360,1312,'저도 최근에 독서에 빠졌어요. 흥미로운 책을 만나셨군요.','2024-08-13 14:05:11',NULL),(1018,360,1325,'독서 시간이 행복하시길 바랍니다. 좋은 책을 발견하셨군요.','2024-08-13 14:05:11',NULL),(1019,361,1304,'운동 시작은 항상 좋은 결정이죠. 몸이 개운해지셨군요!','2024-08-13 14:05:11',NULL),(1020,361,1323,'헬스장 운동, 계속해서 꾸준히 하시면 큰 성과를 보실 거예요.','2024-08-13 14:05:11',NULL),(1021,361,1298,'운동을 다시 시작하셨군요! 응원합니다. 계속 열심히 하세요.','2024-08-13 14:05:11',NULL),(1022,362,1319,'카페에서 여유로운 시간, 정말 좋죠. 다음에 어떤 카페를 가실지 궁금하네요.','2024-08-13 14:05:11',NULL),(1023,362,1327,'커피 한 잔과 여유는 언제나 좋죠. 하루가 훨씬 기분 좋아지겠어요.','2024-08-13 14:05:11',NULL),(1024,362,1301,'카페에서 보내는 시간은 언제나 즐겁습니다. 잘 보내셨네요.','2024-08-13 14:05:11',NULL),(1025,363,1311,'반려견과의 산책은 언제나 행복하죠. 강아지가 행복해 보였다는 말이 좋네요.','2024-08-13 14:05:11',NULL),(1026,363,1324,'저도 반려견과 산책할 때가 제일 행복해요. 좋은 시간 보내셨군요.','2024-08-13 14:05:11',NULL),(1027,363,1308,'강아지와의 산책은 정말 힐링이 되죠. 기분 좋게 산책하시길 바랍니다.','2024-08-13 14:05:11',NULL),(1028,364,1317,'요가는 정말 하루를 상쾌하게 시작할 수 있게 해줘요. 잘하셨네요!','2024-08-13 14:05:11',NULL),(1029,364,1306,'아침 요가는 몸과 마음을 준비시키는 좋은 방법이죠. 계속해서 하세요.','2024-08-13 14:05:11',NULL),(1030,364,1321,'요가로 하루를 시작하셨군요! 훌륭한 선택이에요. 기분 좋게 시작하시길 바랍니다.','2024-08-13 14:05:11',NULL),(1031,365,1309,'주말 청소로 집이 깔끔해지는 건 정말 기분이 좋죠. 잘하셨어요!','2024-08-13 14:05:11',NULL),(1032,365,1316,'청소 후 깔끔한 집에서의 시간은 정말 좋죠. 기분 전환 잘 되셨겠어요.','2024-08-13 14:05:11',NULL),(1033,365,1320,'청소 후에는 집이 참 시원해 보이죠. 좋은 시간 보내셨군요.','2024-08-13 14:05:11',NULL),(1034,366,1312,'새로운 요리에 도전한 것, 정말 멋지네요! 어떤 요리였는지 궁금해요.','2024-08-13 14:05:11',NULL),(1035,366,1322,'새 요리는 언제나 흥미로운 경험이죠. 맛있게 잘 되어서 좋네요!','2024-08-13 14:05:11',NULL),(1036,366,1303,'요리 시도는 항상 즐겁죠. 맛있게 잘 되어서 기쁘네요!','2024-08-13 14:05:11',NULL),(1037,367,1314,'비 오는 날은 조용하고 깊은 생각을 하기에 좋죠. 책 읽기 좋습니다.','2024-08-13 14:05:11',NULL),(1038,367,1307,'비 오는 날의 생각은 언제나 특별하죠. 편안한 시간이셨군요.','2024-08-13 14:05:11',NULL),(1039,367,1326,'비 오는 날의 여유로운 시간, 정말 좋죠. 조용히 책 읽으신 것도 멋져요.','2024-08-13 14:05:11',NULL),(1040,368,1327,'야식으로 라면, 정말 최고죠! 밤에는 특히 더 맛있어요.','2024-08-13 14:05:11',NULL),(1041,368,1302,'야식의 유혹, 저도 자주 느껴요. 라면이 정말 맛있죠!','2024-08-13 14:05:11',NULL),(1042,368,1318,'라면은 언제나 맛있죠. 야식으로 최고입니다!','2024-08-13 14:05:11',NULL),(1043,369,1315,'친구와의 긴 통화는 정말 즐겁죠. 시간이 빨리 가는 느낌이에요.','2024-08-13 14:05:11',NULL),(1044,369,1304,'오랜만에 친구와의 통화, 정말 좋았겠어요. 많은 이야기 나누셨겠네요.','2024-08-13 14:05:11',NULL),(1045,369,1324,'친구와의 통화는 언제나 기분 좋죠. 다음에는 어떤 이야기 나누셨는지 궁금해요.','2024-08-13 14:05:11',NULL),(1046,370,1306,'새로 산 옷이 정말 멋지네요! 기분 전환 잘 되셨군요.','2024-08-13 14:05:11',NULL),(1047,370,1317,'새 옷 입고 외출, 기분이 좋죠. 멋진 하루 되셨네요!','2024-08-13 14:05:11',NULL),(1048,370,1323,'새 옷으로 기분이 좋아지셨군요. 멋진 선택이었어요!','2024-08-13 14:05:11',NULL),(1049,371,1321,'퇴근 후의 휴식은 정말 소중하죠. 하루의 피로가 풀리는 기분, 좋네요.','2024-08-13 14:05:11',NULL),(1050,371,1303,'퇴근 후에 편하게 쉬는 시간, 정말 중요하죠. 좋은 휴식 되셨군요.','2024-08-13 14:05:11',NULL),(1051,371,1318,'휴식의 시간이 잘 되셨군요. 하루의 피로가 풀리셨길 바랍니다.','2024-08-13 14:05:11',NULL),(1052,372,1307,'출근길의 아름다운 풍경은 기분 좋게 시작할 수 있는 좋은 방법이죠.','2024-08-13 14:05:11',NULL),(1053,372,1315,'아름다운 출근길 풍경, 정말 좋죠. 하루가 더 밝게 느껴지네요.','2024-08-13 14:05:11',NULL),(1054,372,1320,'출근길의 경치는 하루를 시작하는 데 큰 도움이 되죠. 좋은 시작 되셨군요.','2024-08-13 14:05:11',NULL),(1055,373,1308,'새로운 운동화 구입, 정말 좋죠! 내일 산책에서 유용하게 쓰이길 바랍니다.','2024-08-13 14:05:11',NULL),(1056,373,1319,'새 운동화로 산책하는 것이 기대되네요. 좋은 선택 하셨군요!','2024-08-13 14:05:11',NULL),(1057,373,1327,'새 운동화가 멋지네요! 내일 산책이 기대됩니다.','2024-08-13 14:05:11',NULL),(1058,374,1311,'독서 모임은 새로운 사람들과의 만남이죠. 좋은 시간이었군요.','2024-08-13 14:05:11',NULL),(1059,374,1305,'독서 모임 참석은 항상 흥미롭죠. 많은 이야기를 나누셨겠어요.','2024-08-13 14:05:11',NULL),(1060,374,1325,'독서 모임에 참석해 보니 좋은 경험이었군요. 다음 모임도 기대됩니다.','2024-08-13 14:05:11',NULL),(1068,365,1333,'안녕하세요\n','2024-08-14 02:01:26',NULL),(1070,370,1,'정말 멋진 옷이에요!','2024-08-15 07:02:47',NULL);
/*!40000 ALTER TABLE `board_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_images`
--

DROP TABLE IF EXISTS `board_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_images` (
  `board_img_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `board_id` bigint NOT NULL,
  `board_img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `img_origin_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `img_stored_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`board_img_id`),
  KEY `FK_board_TO_board_images_1` (`board_id`),
  CONSTRAINT `FK_board_TO_board_images_1` FOREIGN KEY (`board_id`) REFERENCES `board` (`board_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_images`
--

LOCK TABLES `board_images` WRITE;
/*!40000 ALTER TABLE `board_images` DISABLE KEYS */;
INSERT INTO `board_images` VALUES (1,355,'https://images.unsplash.com/photo-1525864227164-45ecff3c7151?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','산책.jpg','https://images.unsplash.com/photo-1525864227164-45ecff3c7151?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(2,356,'https://images.unsplash.com/photo-1600209142000-aa256622e64a?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','저녁식사.jpg','https://images.unsplash.com/photo-1600209142000-aa256622e64a?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(3,357,'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?q=80&w=1421&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','여행계획.jpg','https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?q=80&w=1421&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(4,358,'https://plus.unsplash.com/premium_photo-1673514503010-58c013e17aae?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','새로운취미.jpg','https://plus.unsplash.com/premium_photo-1673514503010-58c013e17aae?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(5,359,'https://images.unsplash.com/photo-1505686994434-e3cc5abf1330?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','영화보기.jpg','https://images.unsplash.com/photo-1505686994434-e3cc5abf1330?q=80&w=1473&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(6,360,'https://images.unsplash.com/photo-1470549638415-0a0755be0619?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','독서.jpg','https://images.unsplash.com/photo-1470549638415-0a0755be0619?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(7,361,'https://plus.unsplash.com/premium_photo-1670505062582-fdaa83c23c9e?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','헬스장.jpg','https://plus.unsplash.com/premium_photo-1670505062582-fdaa83c23c9e?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(8,362,'https://images.unsplash.com/photo-1445116572660-236099ec97a0?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','카페.jpg','https://images.unsplash.com/photo-1445116572660-236099ec97a0?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(9,363,'https://images.unsplash.com/photo-1534361960057-19889db9621e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','반려견.jpg','https://images.unsplash.com/photo-1534361960057-19889db9621e?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(10,364,'https://plus.unsplash.com/premium_photo-1661777196224-bfda51e61cfd?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','요가.jpg','https://plus.unsplash.com/premium_photo-1661777196224-bfda51e61cfd?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(11,365,'https://plus.unsplash.com/premium_photo-1663011218145-c1d0c3ba3542?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','청소.jpg','https://plus.unsplash.com/premium_photo-1663011218145-c1d0c3ba3542?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(12,366,'https://images.unsplash.com/photo-1605433247501-698725862cea?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','요리.jpg','https://images.unsplash.com/photo-1605433247501-698725862cea?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(13,367,'https://images.unsplash.com/photo-1511634829096-045a111727eb?q=80&w=1334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','비.jpg','https://images.unsplash.com/photo-1511634829096-045a111727eb?q=80&w=1334&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(14,368,'https://images.unsplash.com/photo-1653982151807-a2ee87286ae1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','야식.jpg','https://images.unsplash.com/photo-1653982151807-a2ee87286ae1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(15,369,'https://images.unsplash.com/photo-1450297428000-5f0b50540da9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','친구.jpg','https://images.unsplash.com/photo-1450297428000-5f0b50540da9?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(16,370,'https://images.unsplash.com/photo-1596892003083-4280deaf4275?q=80&w=1582&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','새옷.jpg','https://images.unsplash.com/photo-1596892003083-4280deaf4275?q=80&w=1582&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(17,371,'https://images.unsplash.com/photo-1478719050108-41b67a7bc956?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','휴식.jpg','https://images.unsplash.com/photo-1478719050108-41b67a7bc956?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(18,372,'https://plus.unsplash.com/premium_photo-1672116452571-896980a801c8?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','출근.jpg','https://plus.unsplash.com/premium_photo-1672116452571-896980a801c8?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(19,373,'https://images.unsplash.com/photo-1465453869711-7e174808ace9?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','운동화.jpg','https://images.unsplash.com/photo-1465453869711-7e174808ace9?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(20,374,'https://plus.unsplash.com/premium_photo-1683887034327-169259e60076?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D','독서모임.jpg','https://plus.unsplash.com/premium_photo-1683887034327-169259e60076?q=80&w=1469&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),(168,392,'https://koalabucket1.s3.amazonaws.com/a3b97a2a-aad7-4ba7-98db-f290df5c7229..jpg','가정통신문.jpg','a3b97a2a-aad7-4ba7-98db-f290df5c7229..jpg');
/*!40000 ALTER TABLE `board_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koala`
--

DROP TABLE IF EXISTS `koala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `koala` (
  `koala_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `user_id` bigint NOT NULL,
  `koala_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '코알라',
  `koala_level` int DEFAULT '1' COMMENT '레벨 1부터 시작',
  `koala_exp` int DEFAULT '0',
  `koala_type` int DEFAULT '1' COMMENT '1: grey 2: pink 3: orange',
  `koala_created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '코알라 생성 시간',
  PRIMARY KEY (`koala_id`),
  KEY `FK_users_TO_koala_1` (`user_id`),
  CONSTRAINT `FK_users_TO_koala_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koala`
--

LOCK TABLES `koala` WRITE;
/*!40000 ALTER TABLE `koala` DISABLE KEYS */;
INSERT INTO `koala` VALUES (9,1292,'코알라',1,0,1,'2024-08-12 16:57:32'),(10,1293,'서알라',1,14,1,'2024-08-12 16:57:32'),(11,1294,'코알라',1,7,1,'2024-08-12 16:57:32'),(12,1295,'코알라',1,0,1,'2024-08-12 16:57:32'),(13,1296,'코알라알라',1,0,1,'2024-08-12 16:57:32'),(14,1297,'코알라',1,17,1,'2024-08-12 16:57:32'),(15,1298,'코알라',1,0,1,'2024-08-12 16:57:32'),(16,1299,'코알라',1,0,1,'2024-08-12 16:57:32'),(17,1300,'코알라',1,0,1,'2024-08-12 16:57:32'),(18,1301,'코알라',1,0,1,'2024-08-12 16:57:32'),(19,1302,'코알라',1,0,1,'2024-08-12 16:57:32'),(20,1303,'코알라',1,0,1,'2024-08-12 16:57:32'),(21,1304,'코알라',1,0,1,'2024-08-12 16:57:32'),(22,1305,'코알라',1,0,1,'2024-08-12 16:57:32'),(23,1306,'코알라',1,0,1,'2024-08-12 16:57:32'),(24,1307,'코알라',1,0,1,'2024-08-12 16:57:32'),(25,1308,'코알라',1,0,1,'2024-08-12 16:57:32'),(26,1309,'코알라',1,0,1,'2024-08-12 16:57:32'),(27,1310,'코알라',1,0,1,'2024-08-12 16:57:32'),(28,1311,'코알라',1,0,1,'2024-08-12 16:57:32'),(29,1312,'코알라',1,0,1,'2024-08-12 16:57:32'),(30,1313,'코알라',1,0,1,'2024-08-12 16:57:32'),(31,1314,'코알라',1,0,1,'2024-08-12 16:57:32'),(32,1315,'코알라',1,0,1,'2024-08-12 16:57:32'),(33,1316,'코알라',1,0,1,'2024-08-12 16:57:32'),(34,1317,'코알라',1,0,1,'2024-08-12 16:57:32'),(35,1318,'코알라',1,0,1,'2024-08-12 16:57:32'),(36,1319,'코알라',1,0,1,'2024-08-12 16:57:32'),(37,1320,'코알라',1,0,1,'2024-08-12 16:57:32'),(38,1321,'코알라',1,0,1,'2024-08-12 16:57:32'),(39,1322,'코알라',1,0,1,'2024-08-12 16:57:32'),(40,1323,'코알라',1,0,1,'2024-08-12 16:57:32'),(41,1324,'코알라',1,0,1,'2024-08-12 16:57:32'),(42,1325,'코알라',1,0,1,'2024-08-12 16:57:32'),(43,1326,'코알라',1,0,1,'2024-08-12 16:57:32'),(44,1327,'코알라',1,0,1,'2024-08-12 16:57:32'),(45,1,'샤를로트 루비아 엔젤',3,68,1,'2024-08-13 14:56:14'),(46,1333,'라알코알라',1,41,1,'2024-08-13 13:57:31'),(47,1328,'코알라',1,3,1,'2024-08-14 13:19:37'),(48,1329,'코알라',1,0,1,'2024-08-14 13:19:37'),(49,1330,'코알라',1,0,1,'2024-08-14 13:19:37'),(50,1331,'코알라',1,0,1,'2024-08-14 13:19:37'),(51,1332,'코알라',1,0,1,'2024-08-14 13:19:37'),(53,1335,'코알라',1,0,1,'2024-08-14 13:39:09');
/*!40000 ALTER TABLE `koala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_notes`
--

DROP TABLE IF EXISTS `lecture_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_notes` (
  `note_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `user_id` bigint NOT NULL,
  `lecture_id` bigint NOT NULL,
  `note_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `note_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `note_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`note_id`),
  KEY `FK_users_TO_lecture_notes_1` (`user_id`),
  KEY `FK_lectures_TO_lecture_notes_1` (`lecture_id`),
  CONSTRAINT `FK_lectures_TO_lecture_notes_1` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`lecture_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_users_TO_lecture_notes_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_notes`
--

LOCK TABLES `lecture_notes` WRITE;
/*!40000 ALTER TABLE `lecture_notes` DISABLE KEYS */;
INSERT INTO `lecture_notes` VALUES (70,1,1,'간단한 문장 만들기','주어, 목적어, 서술어를 사용해 간단한 문장을 만드는 연습을 했습니다.','2024-08-13 14:59:24'),(71,1,2,'중급 문법의 차이점','기초 문법과 중급 문법의 차이점을 정리했습니다.','2024-08-13 14:59:24'),(72,1,2,'높임말 사용법','한국어의 높임말 사용법과 이를 적용하는 방법을 배웠습니다.','2024-08-13 14:59:24'),(73,1,2,'복문 구성 연습','복문을 구성하고 다양한 접속사를 사용하는 연습을 했습니다.','2024-08-13 14:59:24'),(74,1,3,'고급 문법의 이해','한자어를 포함한 고급 문법 구조를 이해했습니다.','2024-08-13 14:59:24'),(75,1,3,'문법 예외 규칙','한국어 문법의 예외 규칙과 그에 따른 예시를 정리했습니다.','2024-08-13 14:59:24'),(76,1,3,'고급 문법 적용 연습','일상 대화에서 고급 문법을 어떻게 사용할 수 있는지 연습했습니다.','2024-08-13 14:59:24'),(77,1,4,'기본 회화 표현','일상 대화에서 자주 사용하는 기본 회화 표현을 학습했습니다.','2024-08-13 14:59:24'),(78,1,4,'회화 패턴 연습','기본적인 회화 패턴을 연습하고, 다양한 상황에 적용하는 방법을 익혔습니다.','2024-08-13 14:59:24'),(79,1,4,'실생활 회화 적용','실생활에서 사용되는 회화를 연습하고, 실제 상황에서 어떻게 응용할 수 있는지 정리했습니다.','2024-08-13 14:59:24'),(80,1,5,'비즈니스 회화 기초','비즈니스 상황에서 자주 사용되는 회화 표현을 학습했습니다.','2024-08-13 14:59:24'),(81,1,5,'공식적인 표현 연습','공식적인 상황에서 사용할 수 있는 표현을 연습했습니다.','2024-08-13 14:59:24'),(82,1,5,'비즈니스 대화 실습','비즈니스 대화에서 필요한 표현과 예절을 정리했습니다.','2024-08-13 14:59:24'),(86,1,1,'Very Important','은/는/이/가 are so complicated.... sad','2024-08-15 09:44:22');
/*!40000 ALTER TABLE `lecture_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecture_sentences`
--

DROP TABLE IF EXISTS `lecture_sentences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecture_sentences` (
  `lecture_sentence_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `lecture_id` bigint NOT NULL,
  `sentence_id` bigint NOT NULL,
  PRIMARY KEY (`lecture_sentence_id`),
  KEY `FK_lectures_TO_lecture_sentences_1` (`lecture_id`),
  KEY `FK_sentences_TO_lecture_sentences_1` (`sentence_id`),
  CONSTRAINT `FK_lectures_TO_lecture_sentences_1` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`lecture_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_sentences_TO_lecture_sentences_1` FOREIGN KEY (`sentence_id`) REFERENCES `sentences` (`sentence_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecture_sentences`
--

LOCK TABLES `lecture_sentences` WRITE;
/*!40000 ALTER TABLE `lecture_sentences` DISABLE KEYS */;
INSERT INTO `lecture_sentences` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,6),(7,2,7),(8,2,8),(9,2,9),(10,2,10),(11,3,11),(12,3,12),(13,3,13),(14,3,14),(15,3,15),(16,4,16),(17,4,17),(18,4,18),(19,4,19),(20,4,20),(21,5,21),(22,5,22),(23,5,23),(24,5,24),(25,5,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,2,31),(32,2,32),(33,2,33),(34,2,34),(35,2,35),(36,3,36),(37,3,37),(38,3,38),(39,3,39),(40,3,40),(41,4,41),(42,4,42),(43,4,43),(44,4,44),(45,4,45),(46,5,46),(47,5,47),(48,5,48),(49,5,49),(50,5,50);
/*!40000 ALTER TABLE `lecture_sentences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lectures`
--

DROP TABLE IF EXISTS `lectures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lectures` (
  `lecture_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `teacher_id` bigint NOT NULL,
  `lecture_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `lecture_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_open` int NOT NULL,
  `lecture_schedule` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lecture_img_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lecture_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`lecture_id`),
  KEY `FK_users_TO_lectures_1` (`teacher_id`),
  CONSTRAINT `FK_users_TO_lectures_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lectures`
--

LOCK TABLES `lectures` WRITE;
/*!40000 ALTER TABLE `lectures` DISABLE KEYS */;
INSERT INTO `lectures` VALUES (1,1328,'한국어 문법 기초','한국어 문법을 처음 배우시는 분께 추천합니다.','ses_Be7xuF7ePT',1,'월 수 금 15:00 ~ 17:00','https://images.unsplash.com/photo-1550177205-89d100b75c34?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL),(2,1329,'한국어 문법 중급','기본적인 문법을 이해하고 계신 분들께 추천합니다.','ses_TTQhvjkVRf',1,'화 목 17:00 ~ 20:00','https://images.unsplash.com/photo-1583133010801-0b9802ae9c17?q=80&w=1487&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL),(3,1330,'한국어 문법 고급','한자어와 같이 한국어 문법의 최종 단계를 알려드립니다.','ses_TIIMSXpvm0',1,'토 일 13:00 ~ 15:00','https://images.unsplash.com/photo-1485186667901-c039c19ecac3?q=80&w=1472&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL),(4,1331,'한국어 회화 (하)','기본적인 일상 대화를 연습해보아요.','ses_DzSBqswJE8',1,'월 수 금 19:00 ~ 21:00','https://images.unsplash.com/photo-1552664730-d307ca884978?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL),(5,1332,'한국어 회화 (상)','비지니스 대화로 고급 회화를 연습합시다!','ses_B4ZQsflTaI',1,'월 수 금 15:00 ~ 17:00','https://images.unsplash.com/photo-1543269865-cbf427effbad?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',NULL);
/*!40000 ALTER TABLE `lectures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking`
--

DROP TABLE IF EXISTS `ranking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking` (
  `user_id` bigint NOT NULL,
  `ranking` int DEFAULT '0',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FK_users_TO_ranking_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking`
--

LOCK TABLES `ranking` WRITE;
/*!40000 ALTER TABLE `ranking` DISABLE KEYS */;
INSERT INTO `ranking` VALUES (1,1),(1292,7),(1293,4),(1294,5),(1295,8),(1296,8),(1297,3),(1298,8),(1299,8),(1300,8),(1301,8),(1302,8),(1303,8),(1304,8),(1305,8),(1306,8),(1307,8),(1308,8),(1309,8),(1310,8),(1311,8),(1312,8),(1313,8),(1314,8),(1315,8),(1316,8),(1317,8),(1318,8),(1319,8),(1320,8),(1321,8),(1322,8),(1323,8),(1324,8),(1325,8),(1326,8),(1327,8),(1328,6),(1329,8),(1330,8),(1331,8),(1332,8),(1333,2),(1335,8);
/*!40000 ALTER TABLE `ranking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registered_lecture`
--

DROP TABLE IF EXISTS `registered_lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registered_lecture` (
  `user_id` bigint NOT NULL,
  `lecture_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`lecture_id`),
  KEY `FK_lectures_TO_registered_lecture_1` (`lecture_id`),
  CONSTRAINT `FK_lectures_TO_registered_lecture_1` FOREIGN KEY (`lecture_id`) REFERENCES `lectures` (`lecture_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_users_TO_registered_lecture_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registered_lecture`
--

LOCK TABLES `registered_lecture` WRITE;
/*!40000 ALTER TABLE `registered_lecture` DISABLE KEYS */;
INSERT INTO `registered_lecture` VALUES (1,1),(1293,1),(1328,1),(1333,1),(1,2),(1294,2),(1295,2),(1328,2),(1333,2),(1,3),(1328,3),(1,4),(1292,4),(1293,4),(1295,4),(1296,4),(1297,4),(1328,4),(1331,4),(1333,4),(1,5);
/*!40000 ALTER TABLE `registered_lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_sentences`
--

DROP TABLE IF EXISTS `review_sentences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_sentences` (
  `review_sentence_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `user_id` bigint NOT NULL,
  `sentence_id` bigint NOT NULL,
  `review_sentence_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_sentence_id`),
  KEY `FK_users_TO_review_sentences_1` (`user_id`),
  KEY `FK_sentences_TO_review_sentences_1` (`sentence_id`),
  CONSTRAINT `FK_sentences_TO_review_sentences_1` FOREIGN KEY (`sentence_id`) REFERENCES `sentences` (`sentence_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_users_TO_review_sentences_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=835 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_sentences`
--

LOCK TABLES `review_sentences` WRITE;
/*!40000 ALTER TABLE `review_sentences` DISABLE KEYS */;
INSERT INTO `review_sentences` VALUES (1,1,14,'2024-08-16 01:18:41'),(2,1,60,'2024-08-16 01:18:41'),(3,1,51,'2024-08-16 01:18:41'),(4,1,50,'2024-08-16 01:18:41'),(5,1,74,'2024-08-16 01:35:19'),(6,1,59,'2024-08-16 01:35:19'),(800,1,434,'2024-08-15 17:53:04'),(801,1,454,'2024-08-15 17:53:04'),(802,1,448,'2024-08-15 17:53:04'),(803,1,519,'2024-08-16 03:00:59'),(804,1,520,'2024-08-16 03:00:59'),(805,1,521,'2024-08-16 03:00:59'),(806,1,522,'2024-08-16 03:00:59'),(807,1,523,'2024-08-16 03:00:59'),(808,1,524,'2024-08-16 03:00:59'),(809,1,525,'2024-08-16 03:00:59'),(810,1,526,'2024-08-16 03:00:59'),(811,1,527,'2024-08-16 03:00:59'),(812,1,528,'2024-08-16 03:00:59'),(813,1,529,'2024-08-16 03:00:59'),(814,1,530,'2024-08-16 03:00:59'),(815,1,531,'2024-08-16 03:00:59'),(816,1,532,'2024-08-16 03:00:59'),(817,1,533,'2024-08-16 03:00:59'),(818,1,534,'2024-08-16 03:00:59'),(819,1,535,'2024-08-16 03:00:59'),(820,1,536,'2024-08-16 03:00:59'),(821,1,537,'2024-08-16 03:00:59'),(822,1,538,'2024-08-16 03:00:59'),(823,1,539,'2024-08-16 03:00:59'),(824,1,540,'2024-08-16 03:00:59'),(825,1,541,'2024-08-16 03:00:59'),(826,1,542,'2024-08-16 03:00:59'),(827,1,543,'2024-08-16 03:00:59'),(828,1,544,'2024-08-16 03:00:59'),(829,1,545,'2024-08-16 03:00:59'),(830,1,546,'2024-08-16 03:00:59'),(831,1,547,'2024-08-16 03:00:59'),(832,1,548,'2024-08-16 03:00:59'),(833,1,549,'2024-08-16 03:00:59'),(834,1,550,'2024-08-15 18:14:50');
/*!40000 ALTER TABLE `review_sentences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sentences`
--

DROP TABLE IF EXISTS `sentences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sentences` (
  `sentence_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `user_id` bigint NOT NULL COMMENT '회원 pk',
  `sentence_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `topic_category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sentence_length` int DEFAULT NULL,
  `sentence_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sentence_id`),
  KEY `FK_users_TO_sentences_1` (`user_id`),
  CONSTRAINT `FK_users_TO_sentences_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sentences`
--

LOCK TABLES `sentences` WRITE;
/*!40000 ALTER TABLE `sentences` DISABLE KEYS */;
INSERT INTO `sentences` VALUES (1,1328,'저는 학부모입니다.','교육',10,'2024-08-16 01:08:34'),(2,1328,'오늘 학교에 왔습니다.','일상',12,'2024-08-16 01:08:34'),(3,1328,'담임 선생님은 누구십니까?','교육',14,'2024-08-16 01:08:34'),(4,1328,'우리 아이는 1학년입니다.','교육',14,'2024-08-16 01:08:34'),(5,1328,'어제는 비가 왔습니다.','일상',12,'2024-08-16 01:08:34'),(6,1329,'학교 급식은 무엇이 나오나요?','교육',16,'2024-08-16 01:08:34'),(7,1329,'이번 학기 성적은 어떻게 나왔나요?','교육',19,'2024-08-16 01:08:34'),(8,1329,'학교에서 진행하는 프로그램이 있습니까?','교육',21,'2024-08-16 01:08:34'),(9,1329,'자녀의 출결 상태를 확인하고 싶습니다.','교육',21,'2024-08-16 01:08:34'),(10,1329,'이번 달 학부모 상담은 언제인가요?','교육',19,'2024-08-16 01:08:34'),(11,1330,'학부모 회의에서 어떤 주제가 논의되었습니까?','교육',24,'2024-08-16 01:08:34'),(12,1330,'이번 학년도 계획을 알고 싶습니다.','교육',19,'2024-08-16 01:08:34'),(13,1330,'규정에 대해 문의하고 싶습니다.','행정',17,'2024-08-16 01:08:34'),(14,1330,'아이의 성적표를 발급받을 수 있을까요?','교육',21,'2024-08-16 01:08:34'),(15,1330,'제공하는 자료를 받을 수 있습니까?','행정',19,'2024-08-16 01:08:34'),(16,1331,'이건 몇 시에 끝나나요?','일상',13,'2024-08-16 01:08:34'),(17,1331,'이 옷이 마음에 들어요.','일상',13,'2024-08-16 01:08:34'),(18,1331,'선생님, 잘 부탁드립니다.','교육',14,'2024-08-16 01:08:34'),(19,1331,'화장실은 어디에 있습니까?','일상',14,'2024-08-16 01:08:34'),(20,1331,'주문을 하고 싶습니다.','일상',12,'2024-08-16 01:08:34'),(21,1332,'학부모 회의는 몇 시에 시작하나요?','교육',19,'2024-08-16 01:08:34'),(22,1332,'교장 선생님과 면담을 요청하고 싶습니다.','교육',22,'2024-08-16 01:08:34'),(23,1332,'학교 행사에 참여할 수 있습니까?','일상',18,'2024-08-16 01:08:34'),(24,1332,'오늘 학교에서 무엇을 했니?','일상',15,'2024-08-16 01:08:34'),(25,1332,'자녀의 학업 성취도에 대해 더 알고 싶습니다.','교육',25,'2024-08-16 01:08:34'),(26,1328,'몇 시에 시작하나요?','일상',11,'2024-08-16 01:08:34'),(27,1328,'저기 예쁜 나비를 봐요.','일상',13,'2024-08-16 01:08:34'),(28,1328,'여기는 어떤 활동이 있나요?','일상',15,'2024-08-16 01:08:34'),(29,1328,'숙제를 잊지 마세요.','일상',11,'2024-08-16 01:08:34'),(30,1328,'선생님, 질문이 있습니다.','교육',14,'2024-08-16 01:08:34'),(31,1329,'오늘 수업은 몇 시에 끝나나요?','일상',17,'2024-08-16 01:08:34'),(32,1329,'자녀의 성적은 어떤가요?','교육',13,'2024-08-16 01:08:34'),(33,1329,'학교에서 어떤 점심을 제공하나요?','일상',18,'2024-08-16 01:08:34'),(34,1329,'학부모 모임은 언제인가요?','교육',14,'2024-08-16 01:08:34'),(35,1329,'아이의 수업 참여도는 어떠한가요?','교육',18,'2024-08-16 01:08:34'),(36,1330,'이 문법은 고급 과정에서 다룹니다.','교육',19,'2024-08-16 01:08:34'),(37,1330,'학교 규정은 어디에서 확인할 수 있나요?','행정',22,'2024-08-16 01:08:34'),(38,1330,'이번 학기의 목표는 무엇인가요?','교육',17,'2024-08-16 01:08:34'),(39,1330,'교장 선생님께 이 사안을 보고해야 합니다.','행정',23,'2024-08-16 01:08:34'),(40,1330,'자녀의 성적표를 언제 받을 수 있나요?','행정',21,'2024-08-16 01:08:34'),(41,1331,'오늘 날씨가 참 좋네요.','일상',13,'2024-08-16 01:08:34'),(42,1331,'당신은 학생인가요?','일상',10,'2024-08-16 01:08:34'),(43,1331,'피곤해서 졸았어요.','일상',10,'2024-08-16 01:08:34'),(44,1331,'밥 같이 먹어요.','일상',9,'2024-08-16 01:08:34'),(45,1331,'끝나고 뭐할 거예요?','일상',11,'2024-08-16 01:08:34'),(46,1332,'학교에서 어떤 대회가 열리나요?','일상',17,'2024-08-16 01:08:34'),(47,1332,'자녀의 학습 진도는 어떻습니까?','교육',17,'2024-08-16 01:08:34'),(48,1332,'학교 행사가 언제 있습니까?','교육',15,'2024-08-16 01:08:34'),(49,1332,'학급에서 자주 쓰는 표현은 무엇인가요?','교육',21,'2024-08-16 01:08:34'),(50,1332,'이 서류는 어디로 제출하면 되나요?','행정',19,'2024-08-16 01:08:34'),(51,1292,'아이가 아파요.','일상',8,'2024-08-16 01:10:29'),(52,1292,'열이 펄펄 나요.','일상',9,'2024-08-16 01:10:29'),(53,1292,'아파서 밥을 못 먹었어요.','일상',9,'2024-08-16 01:10:29'),(54,1292,'저는 한국어가 서툽니다.','일상',13,'2024-08-16 01:10:29'),(55,1292,'아이가 아파서 울었습니다.','일상',14,'2024-08-16 01:10:29'),(56,1292,'어제부터 아프다고 했습니다.','일상',15,'2024-08-16 01:10:29'),(57,1292,'아이의 처방전을 주세요.','행정',13,'2024-08-16 01:11:39'),(58,1292,'아이의 약이 필요해요.','일상',12,'2024-08-16 01:11:39'),(59,1292,'오늘 학교에서 재밌었어?','학교',13,'2024-08-16 01:12:25'),(60,1292,'친구랑 학교에서 놀았어?','학교',13,'2024-08-16 01:12:25'),(61,1292,'친구랑 학교에서 재밌었겠다.','학교',15,'2024-08-16 01:14:37'),(62,1292,'선생님 말씀을 잘 들어야지.','학교',14,'2024-08-16 01:14:37'),(63,1292,'선생님, 안녕하세요.','학교',11,'2024-08-16 01:16:10'),(64,1292,'저희 아이가 말을 잘 듣나요?','학교',16,'2024-08-16 01:16:10'),(65,1292,'선생님과 아이에 대해 상담을 하고 싶습니다.','학교',24,'2024-08-16 01:16:10'),(66,1292,'친구랑 영화 보고 싶어요.','일상',14,'2024-08-16 01:32:08'),(67,1292,'엄마, 오늘 친구랑 싸웠어요.','일상',16,'2024-08-16 01:32:08'),(68,1292,'친구랑 사이좋게 지내고 있어요.','학교',17,'2024-08-16 01:32:08'),(69,1292,'알림장을 꼭 읽어주세요.','학교',13,'2024-08-16 01:33:45'),(70,1292,'아이에게 문제는 없나요?','학교',13,'2024-08-16 01:33:45'),(71,1292,'부모님과 함께 하는 숙제입니다.','학교',17,'2024-08-16 01:33:45'),(72,1292,'엄마랑 숙제 같이 할까?','일상',13,'2024-08-16 01:34:48'),(73,1292,'아빠랑 같이 놀자.','일상',10,'2024-08-16 01:34:48'),(74,1292,'손 씻고 간식 먹자.','일상',11,'2024-08-16 01:34:48'),(398,1292,'오늘은 날씨가 맑아서 산책을 다녀왔어요.','일상',22,'2024-08-16 02:34:24'),(399,1292,'아침에 일어나서 커피 한 잔을 마셨어요.','일상',22,'2024-08-16 02:34:24'),(400,1292,'점심으로 김밥을 먹었어요.','일상',14,'2024-08-16 02:34:24'),(401,1292,'저녁에 가족과 함께 영화를 봤어요.','일상',19,'2024-08-16 02:34:24'),(402,1292,'주말에는 공원에 가서 자전거를 탔어요.','일상',21,'2024-08-16 02:34:24'),(403,1292,'친구와 카페에서 커피를 마셨어요.','일상',18,'2024-08-16 02:34:24'),(404,1292,'주말에 가족과 함께 등산을 다녀왔어요.','일상',21,'2024-08-16 02:34:24'),(405,1292,'오늘은 쇼핑몰에 가서 옷을 샀어요.','일상',19,'2024-08-16 02:34:24'),(406,1292,'집에서 책을 읽으며 휴식을 취했어요.','일상',20,'2024-08-16 02:34:24'),(407,1292,'아침 식사로 샌드위치를 먹었어요.','일상',18,'2024-08-16 02:34:24'),(408,1292,'오늘은 집에서 영화를 보며 쉬었어요.','일상',20,'2024-08-16 02:34:24'),(409,1292,'공원에서 산책을 하며 꽃을 감상했어요.','일상',21,'2024-08-16 02:34:24'),(410,1292,'오랜만에 친구를 만나서 이야기를 나눴어요.','일상',23,'2024-08-16 02:34:24'),(411,1292,'마트에 가서 장을 보고 왔어요.','일상',17,'2024-08-16 02:34:24'),(412,1292,'집에서 가족과 함께 저녁을 먹었어요.','일상',20,'2024-08-16 02:34:24'),(413,1292,'오늘은 도서관에 가서 책을 빌렸어요.','일상',20,'2024-08-16 02:34:24'),(414,1292,'아침 운동으로 조깅을 다녀왔어요.','일상',18,'2024-08-16 02:34:24'),(415,1292,'동네 공원에서 운동을 했어요.','일상',16,'2024-08-16 02:34:24'),(416,1292,'저녁에 가족과 함께 외식을 했어요.','일상',19,'2024-08-16 02:34:24'),(417,1292,'오늘은 친구들과 모임이 있었어요.','일상',18,'2024-08-16 02:34:24'),(418,1292,'저녁에 산책을 하면서 별을 봤어요.','일상',19,'2024-08-16 02:34:24'),(419,1292,'오늘은 집에서 음악을 들으며 쉬었어요.','일상',21,'2024-08-16 02:34:24'),(420,1292,'아침에 동네 산책을 다녀왔어요.','일상',17,'2024-08-16 02:34:24'),(421,1292,'저녁에 맛있는 음식을 만들어 먹었어요.','일상',21,'2024-08-16 02:34:24'),(422,1292,'주말에 친구들과 함께 놀러 갔어요.','일상',19,'2024-08-16 02:34:24'),(423,1292,'오늘은 공원에서 산책을 즐겼어요.','일상',18,'2024-08-16 02:34:24'),(424,1292,'집에서 좋아하는 책을 읽었어요.','일상',17,'2024-08-16 02:34:24'),(425,1292,'저녁에 친구와 카페에 갔어요.','일상',16,'2024-08-16 02:34:24'),(426,1292,'오후에 공원에서 운동을 했어요.','일상',17,'2024-08-16 02:34:24'),(427,1292,'집에서 요리를 하며 시간을 보냈어요.','일상',20,'2024-08-16 02:34:24'),(428,1292,'오늘은 수학 문제를 열심히 풀었어요.','교육',20,'2024-08-16 02:35:06'),(429,1292,'학교에서 영어 단어 시험이 있었어요.','교육',20,'2024-08-16 02:35:06'),(430,1292,'과학 수업 시간에 실험을 했어요.','교육',18,'2024-08-16 02:35:06'),(431,1292,'역사책에서 삼국시대에 대해 배웠어요.','교육',20,'2024-08-16 02:35:06'),(432,1292,'독서 시간에 책을 읽었어요.','교육',15,'2024-08-16 02:35:06'),(433,1292,'국어 수업에서 글쓰기를 배웠어요.','교육',18,'2024-08-16 02:35:06'),(434,1292,'체육 시간에 축구를 했어요.','교육',15,'2024-08-16 02:35:06'),(435,1292,'미술 시간에 그림을 그렸어요.','교육',16,'2024-08-16 02:35:06'),(436,1292,'음악 수업 시간에 피아노를 배웠어요.','교육',20,'2024-08-16 02:35:06'),(437,1292,'학교 도서관에서 책을 빌렸어요.','교육',17,'2024-08-16 02:35:06'),(438,1292,'오늘은 수학 문제집을 풀었어요.','교육',17,'2024-08-16 02:35:06'),(439,1292,'학원에서 영어 회화를 배웠어요.','교육',17,'2024-08-16 02:35:06'),(440,1292,'학교에서 수업을 듣고 과제를 했어요.','교육',20,'2024-08-16 02:35:06'),(441,1292,'방과 후에 학원에 다녀왔어요.','교육',16,'2024-08-16 02:35:06'),(442,1292,'오늘은 학교에서 발표를 했어요.','교육',17,'2024-08-16 02:35:06'),(443,1292,'온라인 강의를 통해 새로운 내용을 배웠어요.','교육',24,'2024-08-16 02:35:06'),(444,1292,'오늘은 과학 실험을 통해 많은 것을 배웠어요.','교육',25,'2024-08-16 02:35:06'),(445,1292,'학교에서 친구들과 그룹 과제를 했어요.','교육',21,'2024-08-16 02:35:06'),(446,1292,'수업 시간에 새로운 수학 공식을 배웠어요.','교육',23,'2024-08-16 02:35:06'),(447,1292,'오늘은 한국사 시험을 봤어요.','교육',16,'2024-08-16 02:35:06'),(448,1292,'학교에서 체육 대회를 준비했어요.','교육',18,'2024-08-16 02:35:06'),(449,1292,'방과 후에 도서관에서 공부를 했어요.','교육',20,'2024-08-16 02:35:06'),(450,1292,'오늘은 학교에서 생물 실험을 했어요.','교육',20,'2024-08-16 02:35:06'),(451,1292,'수업 시간에 역사에 대해 배웠어요.','교육',19,'2024-08-16 02:35:06'),(452,1292,'오늘은 학원에서 수학 문제를 풀었어요.','교육',21,'2024-08-16 02:35:06'),(453,1292,'학교에서 영어 독해 연습을 했어요.','교육',19,'2024-08-16 02:35:06'),(454,1292,'수업 시간에 과학 실험을 했어요.','교육',18,'2024-08-16 02:35:06'),(455,1292,'오늘은 국어 교과서를 읽었어요.','교육',17,'2024-08-16 02:35:06'),(456,1292,'학교에서 친구들과 공부를 했어요.','교육',18,'2024-08-16 02:35:06'),(457,1292,'오늘은 학원에서 영어 회화를 배웠어요.','교육',21,'2024-08-16 02:35:06'),(458,1292,'오늘 주민센터에서 서류를 제출했어요.','행정',20,'2024-08-16 02:35:26'),(459,1292,'주민등록증을 갱신하려고 갔어요.','행정',17,'2024-08-16 02:35:26'),(460,1292,'오늘은 공공도서관에 다녀왔어요.','행정',17,'2024-08-16 02:35:26'),(461,1292,'세금을 납부하려고 인터넷을 이용했어요.','행정',21,'2024-08-16 02:35:26'),(462,1292,'도서관에서 책을 빌렸어요.','행정',14,'2024-08-16 02:35:26'),(463,1292,'오늘은 민원실에서 서류를 발급받았어요.','행정',21,'2024-08-16 02:35:26'),(464,1292,'주민센터에서 건강보험 관련 서류를 받았어요.','행정',24,'2024-08-16 02:35:26'),(465,1292,'오늘은 출입국 관리사무소에 다녀왔어요.','행정',21,'2024-08-16 02:35:26'),(466,1292,'공공도서관에서 새로운 책을 빌렸어요.','행정',20,'2024-08-16 02:35:26'),(467,1292,'지방자치단체에서 세금 납부 안내를 받았어요.','행정',24,'2024-08-16 02:35:26'),(468,1292,'오늘은 시청에서 정보공개 청구를 했어요.','행정',22,'2024-08-16 02:35:26'),(469,1292,'공무원 시험을 준비하는 학원에 다녔어요.','행정',22,'2024-08-16 02:35:26'),(470,1292,'지역 주민을 위한 무료 강좌에 참석했어요.','행정',23,'2024-08-16 02:35:26'),(471,1292,'오늘은 주민센터에서 신분증을 발급받았어요.','행정',23,'2024-08-16 02:35:26'),(472,1292,'시청에서 도시계획 정보를 확인했어요.','행정',20,'2024-08-16 02:35:26'),(473,1292,'주민센터에서 건강보험 관련 상담을 받았어요.','행정',24,'2024-08-16 02:35:26'),(474,1292,'오늘은 온라인으로 주민세를 납부했어요.','행정',21,'2024-08-16 02:35:26'),(475,1292,'공공기관에서 주택 관련 정보를 얻었어요.','행정',22,'2024-08-16 02:35:26'),(476,1292,'도서관에서 전자책을 대출했어요.','행정',17,'2024-08-16 02:35:26'),(477,1292,'오늘은 주민센터에서 서류 발급을 요청했어요.','행정',24,'2024-08-16 02:35:26'),(478,1292,'시청에서 복지 관련 상담을 받았어요.','행정',20,'2024-08-16 02:35:26'),(479,1292,'오늘은 출입국 관리사무소에서 서류를 처리했어요.','행정',26,'2024-08-16 02:35:26'),(480,1292,'주민센터에서 기초생활보장 신청을 했어요.','행정',22,'2024-08-16 02:35:26'),(481,1292,'오늘은 인터넷으로 민원 신청을 했어요.','행정',21,'2024-08-16 02:35:26'),(482,1292,'도서관에서 새로운 자료를 열람했어요.','행정',20,'2024-08-16 02:35:26'),(483,1292,'주민센터에서 주소 이전 신청을 했어요.','행정',21,'2024-08-16 02:35:26'),(484,1292,'오늘은 시청에서 사업자등록증을 발급받았어요.','행정',24,'2024-08-16 02:35:26'),(485,1292,'도서관에서 전자책을 대출했어요.','행정',17,'2024-08-16 02:35:26'),(486,1292,'오늘은 시청에서 정보공개를 요청했어요.','행정',21,'2024-08-16 02:35:26'),(487,1292,'주민센터에서 건강보험료를 납부했어요.','행정',20,'2024-08-16 02:35:26'),(488,1301,'주문한 물건이 오늘 도착했어요.','사용자',17,'2024-08-16 02:35:42'),(489,1315,'오랜만에 친구를 만나서 반가웠어요.','사용자',19,'2024-08-16 02:35:42'),(490,1316,'새로운 취미로 요가를 시작했어요.','사용자',18,'2024-08-16 02:35:42'),(491,1306,'영화관에서 재미있는 영화를 봤어요.','사용자',19,'2024-08-16 02:35:42'),(492,1313,'오늘은 자전거를 타고 한강에 갔어요.','사용자',20,'2024-08-16 02:35:42'),(493,1322,'저녁에 친구와 카페에서 시간을 보냈어요.','사용자',22,'2024-08-16 02:35:42'),(494,1313,'새로 산 책을 읽으며 하루를 보냈어요.','사용자',21,'2024-08-16 02:35:42'),(495,1302,'오늘은 가족과 함께 저녁을 먹었어요.','사용자',20,'2024-08-16 02:35:42'),(496,1301,'오후에 산책하면서 사진을 찍었어요.','사용자',19,'2024-08-16 02:35:42'),(497,1304,'오늘은 친구들과 함께 놀이공원에 갔어요.','사용자',22,'2024-08-16 02:35:42'),(498,1321,'새로운 요리를 시도해봤어요.','사용자',15,'2024-08-16 02:35:42'),(499,1302,'이번 주말에 여행을 계획하고 있어요.','사용자',20,'2024-08-16 02:35:42'),(500,1311,'주말에 등산을 다녀왔어요.','사용자',14,'2024-08-16 02:35:42'),(501,1323,'오늘은 영화관에서 영화를 봤어요.','사용자',18,'2024-08-16 02:35:42'),(502,1324,'새로운 카페를 찾아가 봤어요.','사용자',16,'2024-08-16 02:35:42'),(503,1322,'집에서 요가를 하며 하루를 시작했어요.','사용자',21,'2024-08-16 02:35:42'),(504,1310,'친구와 함께 새로운 레스토랑에 갔어요.','사용자',21,'2024-08-16 02:35:42'),(505,1316,'오늘은 도시락을 싸서 피크닉을 다녀왔어요.','사용자',23,'2024-08-16 02:35:42'),(506,1324,'새로운 레시피로 요리를 해봤어요.','사용자',18,'2024-08-16 02:35:42'),(507,1315,'오늘은 새로 산 옷을 입고 외출했어요.','사용자',21,'2024-08-16 02:35:42'),(508,1304,'저녁에 친구와 함께 저녁 식사를 했어요.','사용자',22,'2024-08-16 02:35:42'),(509,1310,'오후에 공원에서 운동을 했어요.','사용자',17,'2024-08-16 02:35:42'),(510,1308,'오늘은 집에서 책을 읽으며 쉬었어요.','사용자',20,'2024-08-16 02:35:42'),(511,1314,'새로운 취미로 사진 찍기를 시작했어요.','사용자',21,'2024-08-16 02:35:42'),(512,1319,'저녁에 산책하면서 달을 감상했어요.','사용자',19,'2024-08-16 02:35:42'),(513,1327,'오늘은 동네 카페에서 시간을 보냈어요.','사용자',21,'2024-08-16 02:35:42'),(514,1317,'오전에 공원에서 운동을 했어요.','사용자',17,'2024-08-16 02:35:42'),(515,1309,'친구와 함께 저녁을 먹고 이야기를 나눴어요.','사용자',24,'2024-08-16 02:35:42'),(516,1324,'새로 생긴 식당에서 저녁을 먹었어요.','사용자',20,'2024-08-16 02:35:42'),(517,1308,'주말에 가족과 함께 여행을 다녀왔어요.','사용자',21,'2024-08-16 02:35:42'),(518,1299,'오늘은 친구들과 함께 맛있는 음식을 먹었어요.','사용자',25,'2024-08-16 02:35:42'),(519,1,'다음 주 금요일은 현장 체험 학습이 예정되어 있습니다.','사용자',30,'2024-08-16 02:50:12'),(520,1,'학생들의 안전을 위해 정문 주차를 자제해 주세요.','사용자',27,'2024-08-16 02:50:12'),(521,1,'이번 주 토요일에 학부모 참관 수업이 열립니다.','사용자',26,'2024-08-16 02:50:12'),(522,1,'학교 급식 메뉴가 변경되었으니 참고 바랍니다.','사용자',25,'2024-08-16 02:50:12'),(523,1,'2학기 방과후 학교 신청서를 제출해 주세요.','사용자',24,'2024-08-16 02:50:12'),(524,1,'학기말 성적표는 다음 주에 배부될 예정입니다.','사용자',25,'2024-08-16 02:50:12'),(525,1,'학생 건강검진 결과 통지서를 확인해 주세요.','사용자',24,'2024-08-16 02:50:12'),(526,1,'학교 행사 참여 여부를 알려주시기 바랍니다.','사용자',24,'2024-08-16 02:50:12'),(527,1,'이번 주 금요일은 학교 전체 휴일입니다.','사용자',22,'2024-08-16 02:50:12'),(528,1,'학교 도서관 이용 시간을 확인해 주세요.','사용자',22,'2024-08-16 02:50:12'),(529,1,'교내 체육대회 일정이 변경되었습니다.','사용자',20,'2024-08-16 02:50:12'),(530,1,'아이들의 안전한 귀가를 위해 협조 바랍니다.','사용자',24,'2024-08-16 02:50:12'),(531,1,'신입생 환영회가 다음 주에 열립니다.','사용자',20,'2024-08-16 02:50:12'),(532,1,'학생들의 독서활동을 장려해 주세요.','사용자',19,'2024-08-16 02:50:12'),(533,1,'여름방학 중 자율 학습 프로그램 안내입니다.','사용자',24,'2024-08-16 02:50:12'),(534,1,'학교폭력 예방 교육이 다음 주에 진행됩니다.','사용자',24,'2024-08-16 02:50:12'),(535,1,'각 가정에서는 위생 수칙을 지켜주시기 바랍니다.','사용자',26,'2024-08-16 02:50:12'),(536,1,'가정 통신문을 반드시 확인해 주시기 바랍니다.','사용자',25,'2024-08-16 02:50:12'),(537,1,'운동회 준비를 위해 학부모님들의 도움을 요청합니다.','사용자',28,'2024-08-16 02:50:12'),(538,1,'교내 방역 작업으로 인한 일정 변경 안내입니다.','사용자',26,'2024-08-16 02:50:12'),(539,1,'학교 주변 환경미화에 학부모님들의 참여를 부탁드립니다.','사용자',30,'2024-08-16 02:50:12'),(540,1,'졸업식 일정과 관련된 자세한 내용은 추후 공지하겠습니다.','사용자',31,'2024-08-16 02:50:12'),(541,1,'학교에서 제공되는 모든 급식은 알레르기 정보를 포함합니다.','사용자',32,'2024-08-16 02:50:12'),(542,1,'올해는 학생들의 야외 활동을 제한하고 있습니다.','사용자',26,'2024-08-16 02:50:12'),(543,1,'학생들은 다음 주에 있을 학급 발표회를 준비 중입니다.','사용자',30,'2024-08-16 02:50:12'),(544,1,'모든 학부모님께서는 학년말 상담 일정을 확인해 주세요.','사용자',30,'2024-08-16 02:50:12'),(545,1,'학교 행사 안내장은 학생편에 보내드립니다.','사용자',23,'2024-08-16 02:50:12'),(546,1,'다음 주부터 학교 교문 앞 교통 상황이 변경됩니다.','사용자',28,'2024-08-16 02:50:12'),(547,1,'수학여행 준비물 목록을 가정통신문으로 배부합니다.','사용자',27,'2024-08-16 02:50:12'),(548,1,'학생 건강과 안전을 위한 학교 규정을 준수해 주세요.','사용자',29,'2024-08-16 02:50:12'),(549,1,'겨울방학 동안 학생들이 자율 학습을 할 수 있도록 도와주세요.','사용자',34,'2024-08-16 02:50:12'),(550,1,'아이들의 세계를 존중해 주세요.','사용자',17,'2024-08-15 18:14:50');
/*!40000 ALTER TABLE `sentences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_time`
--

DROP TABLE IF EXISTS `study_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_time` (
  `time_cal_type` int NOT NULL COMMENT '총 시간(0)\n\n이번 주\n월(1)/화(2)/수(3)/목(4)/금(5)\n토(6)/일(7)\n\n지난주\n월(8)/화(9)/수(10)/목(11)/금(12)\n토(13)/일(14)',
  `user_id` bigint NOT NULL,
  `talk_time` int DEFAULT '0' COMMENT 'AI 회화 서비스 이용 시간',
  `sentence_num` int DEFAULT '0' COMMENT '받아쓰기 문작 작성 횟수',
  `lecture_num` int DEFAULT '0' COMMENT '참여한 화상 강의 수',
  PRIMARY KEY (`time_cal_type`,`user_id`),
  KEY `FK_users_TO_study_time_1` (`user_id`),
  CONSTRAINT `FK_users_TO_study_time_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_time`
--

LOCK TABLES `study_time` WRITE;
/*!40000 ALTER TABLE `study_time` DISABLE KEYS */;
INSERT INTO `study_time` VALUES (0,1,15,85,5),(0,1292,0,30,3),(0,1293,0,60,5),(0,1294,0,60,1),(0,1295,0,0,4),(0,1296,0,0,3),(0,1297,0,0,3),(0,1298,0,0,0),(0,1299,0,0,0),(0,1300,0,0,0),(0,1301,0,0,0),(0,1302,0,0,0),(0,1303,0,0,0),(0,1304,0,0,0),(0,1305,0,0,0),(0,1306,0,0,0),(0,1307,0,0,0),(0,1308,0,0,0),(0,1309,0,0,0),(0,1310,0,0,0),(0,1311,0,0,0),(0,1312,0,0,0),(0,1313,0,0,0),(0,1314,0,0,0),(0,1315,0,0,0),(0,1316,0,0,0),(0,1317,0,0,0),(0,1318,0,0,0),(0,1319,0,0,0),(0,1320,0,0,0),(0,1321,0,0,0),(0,1322,0,0,0),(0,1323,0,0,0),(0,1324,0,0,0),(0,1325,0,0,0),(0,1326,0,0,0),(0,1327,0,0,0),(0,1328,0,0,4),(0,1329,0,0,0),(0,1330,0,0,0),(0,1331,0,0,0),(0,1332,0,0,0),(0,1333,5,88,2),(0,1335,0,0,0),(1,1,5,10,1),(1,1292,0,10,1),(1,1293,0,20,1),(1,1294,0,20,0),(1,1295,0,0,1),(1,1296,0,0,1),(1,1297,0,0,1),(1,1298,0,0,0),(1,1299,0,0,0),(1,1300,0,0,0),(1,1301,0,0,0),(1,1302,0,0,0),(1,1303,0,0,0),(1,1304,0,0,0),(1,1305,0,0,0),(1,1306,0,0,0),(1,1307,0,0,0),(1,1308,0,0,0),(1,1309,0,0,0),(1,1310,0,0,0),(1,1311,0,0,0),(1,1312,0,0,0),(1,1313,0,0,0),(1,1314,0,0,0),(1,1315,0,0,0),(1,1316,0,0,0),(1,1317,0,0,0),(1,1318,0,0,0),(1,1319,0,0,0),(1,1320,0,0,0),(1,1321,0,0,0),(1,1322,0,0,0),(1,1323,0,0,0),(1,1324,0,0,0),(1,1325,0,0,0),(1,1326,0,0,0),(1,1327,0,0,0),(1,1328,0,0,4),(1,1329,0,0,0),(1,1330,0,0,0),(1,1331,0,0,1),(1,1332,0,0,0),(1,1333,1,10,0),(1,1335,0,0,0),(2,1,5,20,1),(2,1292,0,10,1),(2,1293,0,20,2),(2,1294,0,20,0),(2,1295,0,0,1),(2,1296,0,0,1),(2,1297,0,0,1),(2,1298,0,0,0),(2,1299,0,0,0),(2,1300,0,0,0),(2,1301,0,0,0),(2,1302,0,0,0),(2,1303,0,0,0),(2,1304,0,0,0),(2,1305,0,0,0),(2,1306,0,0,0),(2,1307,0,0,0),(2,1308,0,0,0),(2,1309,0,0,0),(2,1310,0,0,0),(2,1311,0,0,0),(2,1312,0,0,0),(2,1313,0,0,0),(2,1314,0,0,0),(2,1315,0,0,0),(2,1316,0,0,0),(2,1317,0,0,0),(2,1318,0,0,0),(2,1319,0,0,0),(2,1320,0,0,0),(2,1321,0,0,0),(2,1322,0,0,0),(2,1323,0,0,0),(2,1324,0,0,0),(2,1325,0,0,0),(2,1326,0,0,0),(2,1327,0,0,0),(2,1328,0,0,0),(2,1329,0,0,0),(2,1330,0,0,0),(2,1331,0,0,1),(2,1332,0,0,0),(2,1333,1,20,0),(2,1335,0,0,0),(3,1,0,5,2),(3,1292,0,0,0),(3,1293,0,0,0),(3,1294,0,0,0),(3,1295,0,0,0),(3,1296,0,0,0),(3,1297,0,0,0),(3,1298,0,0,0),(3,1299,0,0,0),(3,1300,0,0,0),(3,1301,0,0,0),(3,1302,0,0,0),(3,1303,0,0,0),(3,1304,0,0,0),(3,1305,0,0,0),(3,1306,0,0,0),(3,1307,0,0,0),(3,1308,0,0,0),(3,1309,0,0,0),(3,1310,0,0,0),(3,1311,0,0,0),(3,1312,0,0,0),(3,1313,0,0,0),(3,1314,0,0,0),(3,1315,0,0,0),(3,1316,0,0,0),(3,1317,0,0,0),(3,1318,0,0,0),(3,1319,0,0,0),(3,1320,0,0,0),(3,1321,0,0,0),(3,1322,0,0,0),(3,1323,0,0,0),(3,1324,0,0,0),(3,1325,0,0,0),(3,1326,0,0,0),(3,1327,0,0,0),(3,1328,0,0,0),(3,1329,0,0,0),(3,1330,0,0,0),(3,1331,0,0,0),(3,1332,0,0,0),(3,1333,1,30,1),(3,1335,0,0,0),(4,1,5,40,1),(4,1292,0,10,1),(4,1293,0,20,2),(4,1294,0,20,0),(4,1295,0,0,1),(4,1296,0,0,1),(4,1297,0,0,1),(4,1298,0,0,0),(4,1299,0,0,0),(4,1300,0,0,0),(4,1301,0,0,0),(4,1302,0,0,0),(4,1303,0,0,0),(4,1304,0,0,0),(4,1305,0,0,0),(4,1306,0,0,0),(4,1307,0,0,0),(4,1308,0,0,0),(4,1309,0,0,0),(4,1310,0,0,0),(4,1311,0,0,0),(4,1312,0,0,0),(4,1313,0,0,0),(4,1314,0,0,0),(4,1315,0,0,0),(4,1316,0,0,0),(4,1317,0,0,0),(4,1318,0,0,0),(4,1319,0,0,0),(4,1320,0,0,0),(4,1321,0,0,0),(4,1322,0,0,0),(4,1323,0,0,0),(4,1324,0,0,0),(4,1325,0,0,0),(4,1326,0,0,0),(4,1327,0,0,0),(4,1328,0,0,0),(4,1329,0,0,0),(4,1330,0,0,0),(4,1331,0,0,1),(4,1332,0,0,0),(4,1333,2,28,1),(4,1335,0,0,0),(5,1,0,10,0),(5,1292,0,0,0),(5,1293,0,0,0),(5,1294,0,0,1),(5,1295,0,0,1),(5,1296,0,0,0),(5,1297,0,0,0),(5,1298,0,0,0),(5,1299,0,0,0),(5,1300,0,0,0),(5,1301,0,0,0),(5,1302,0,0,0),(5,1303,0,0,0),(5,1304,0,0,0),(5,1305,0,0,0),(5,1306,0,0,0),(5,1307,0,0,0),(5,1308,0,0,0),(5,1309,0,0,0),(5,1310,0,0,0),(5,1311,0,0,0),(5,1312,0,0,0),(5,1313,0,0,0),(5,1314,0,0,0),(5,1315,0,0,0),(5,1316,0,0,0),(5,1317,0,0,0),(5,1318,0,0,0),(5,1319,0,0,0),(5,1320,0,0,0),(5,1321,0,0,0),(5,1322,0,0,0),(5,1323,0,0,0),(5,1324,0,0,0),(5,1325,0,0,0),(5,1326,0,0,0),(5,1327,0,0,0),(5,1328,0,0,0),(5,1329,0,0,0),(5,1330,0,0,0),(5,1331,0,0,0),(5,1332,0,0,0),(5,1333,0,0,0),(5,1335,0,0,0),(6,1,0,0,0),(6,1292,0,0,0),(6,1293,0,0,0),(6,1294,0,0,0),(6,1295,0,0,0),(6,1296,0,0,0),(6,1297,0,0,0),(6,1298,0,0,0),(6,1299,0,0,0),(6,1300,0,0,0),(6,1301,0,0,0),(6,1302,0,0,0),(6,1303,0,0,0),(6,1304,0,0,0),(6,1305,0,0,0),(6,1306,0,0,0),(6,1307,0,0,0),(6,1308,0,0,0),(6,1309,0,0,0),(6,1310,0,0,0),(6,1311,0,0,0),(6,1312,0,0,0),(6,1313,0,0,0),(6,1314,0,0,0),(6,1315,0,0,0),(6,1316,0,0,0),(6,1317,0,0,0),(6,1318,0,0,0),(6,1319,0,0,0),(6,1320,0,0,0),(6,1321,0,0,0),(6,1322,0,0,0),(6,1323,0,0,0),(6,1324,0,0,0),(6,1325,0,0,0),(6,1326,0,0,0),(6,1327,0,0,0),(6,1328,0,0,0),(6,1329,0,0,0),(6,1330,0,0,0),(6,1331,0,0,0),(6,1332,0,0,0),(6,1333,0,0,0),(6,1335,0,0,0),(7,1,0,0,0),(7,1292,0,0,0),(7,1293,0,0,0),(7,1294,0,0,0),(7,1295,0,0,0),(7,1296,0,0,0),(7,1297,0,0,0),(7,1298,0,0,0),(7,1299,0,0,0),(7,1300,0,0,0),(7,1301,0,0,0),(7,1302,0,0,0),(7,1303,0,0,0),(7,1304,0,0,0),(7,1305,0,0,0),(7,1306,0,0,0),(7,1307,0,0,0),(7,1308,0,0,0),(7,1309,0,0,0),(7,1310,0,0,0),(7,1311,0,0,0),(7,1312,0,0,0),(7,1313,0,0,0),(7,1314,0,0,0),(7,1315,0,0,0),(7,1316,0,0,0),(7,1317,0,0,0),(7,1318,0,0,0),(7,1319,0,0,0),(7,1320,0,0,0),(7,1321,0,0,0),(7,1322,0,0,0),(7,1323,0,0,0),(7,1324,0,0,0),(7,1325,0,0,0),(7,1326,0,0,0),(7,1327,0,0,0),(7,1328,0,0,0),(7,1329,0,0,0),(7,1330,0,0,0),(7,1331,0,0,0),(7,1332,0,0,0),(7,1333,0,0,0),(7,1335,0,0,0),(8,1,0,0,0),(8,1292,0,0,0),(8,1293,0,0,0),(8,1294,0,0,0),(8,1295,0,0,0),(8,1296,0,0,0),(8,1297,0,0,0),(8,1298,0,0,0),(8,1299,0,0,0),(8,1300,0,0,0),(8,1301,0,0,0),(8,1302,0,0,0),(8,1303,0,0,0),(8,1304,0,0,0),(8,1305,0,0,0),(8,1306,0,0,0),(8,1307,0,0,0),(8,1308,0,0,0),(8,1309,0,0,0),(8,1310,0,0,0),(8,1311,0,0,0),(8,1312,0,0,0),(8,1313,0,0,0),(8,1314,0,0,0),(8,1315,0,0,0),(8,1316,0,0,0),(8,1317,0,0,0),(8,1318,0,0,0),(8,1319,0,0,0),(8,1320,0,0,0),(8,1321,0,0,0),(8,1322,0,0,0),(8,1323,0,0,0),(8,1324,0,0,0),(8,1325,0,0,0),(8,1326,0,0,0),(8,1327,0,0,0),(8,1328,0,0,0),(8,1329,0,0,0),(8,1330,0,0,0),(8,1331,0,0,0),(8,1332,0,0,0),(8,1333,0,0,0),(8,1335,0,0,0),(9,1,0,0,0),(9,1292,0,0,0),(9,1293,0,0,0),(9,1294,0,0,0),(9,1295,0,0,0),(9,1296,0,0,0),(9,1297,0,0,0),(9,1298,0,0,0),(9,1299,0,0,0),(9,1300,0,0,0),(9,1301,0,0,0),(9,1302,0,0,0),(9,1303,0,0,0),(9,1304,0,0,0),(9,1305,0,0,0),(9,1306,0,0,0),(9,1307,0,0,0),(9,1308,0,0,0),(9,1309,0,0,0),(9,1310,0,0,0),(9,1311,0,0,0),(9,1312,0,0,0),(9,1313,0,0,0),(9,1314,0,0,0),(9,1315,0,0,0),(9,1316,0,0,0),(9,1317,0,0,0),(9,1318,0,0,0),(9,1319,0,0,0),(9,1320,0,0,0),(9,1321,0,0,0),(9,1322,0,0,0),(9,1323,0,0,0),(9,1324,0,0,0),(9,1325,0,0,0),(9,1326,0,0,0),(9,1327,0,0,0),(9,1328,0,0,0),(9,1329,0,0,0),(9,1330,0,0,0),(9,1331,0,0,0),(9,1332,0,0,0),(9,1333,0,0,0),(9,1335,0,0,0),(10,1,0,0,0),(10,1292,0,0,0),(10,1293,0,0,0),(10,1294,0,0,0),(10,1295,0,0,0),(10,1296,0,0,0),(10,1297,0,0,0),(10,1298,0,0,0),(10,1299,0,0,0),(10,1300,0,0,0),(10,1301,0,0,0),(10,1302,0,0,0),(10,1303,0,0,0),(10,1304,0,0,0),(10,1305,0,0,0),(10,1306,0,0,0),(10,1307,0,0,0),(10,1308,0,0,0),(10,1309,0,0,0),(10,1310,0,0,0),(10,1311,0,0,0),(10,1312,0,0,0),(10,1313,0,0,0),(10,1314,0,0,0),(10,1315,0,0,0),(10,1316,0,0,0),(10,1317,0,0,0),(10,1318,0,0,0),(10,1319,0,0,0),(10,1320,0,0,0),(10,1321,0,0,0),(10,1322,0,0,0),(10,1323,0,0,0),(10,1324,0,0,0),(10,1325,0,0,0),(10,1326,0,0,0),(10,1327,0,0,0),(10,1328,0,0,0),(10,1329,0,0,0),(10,1330,0,0,0),(10,1331,0,0,0),(10,1332,0,0,0),(10,1333,0,0,0),(10,1335,0,0,0),(11,1,0,0,0),(11,1292,0,0,0),(11,1293,0,0,0),(11,1294,0,0,0),(11,1295,0,0,0),(11,1296,0,0,0),(11,1297,0,0,0),(11,1298,0,0,0),(11,1299,0,0,0),(11,1300,0,0,0),(11,1301,0,0,0),(11,1302,0,0,0),(11,1303,0,0,0),(11,1304,0,0,0),(11,1305,0,0,0),(11,1306,0,0,0),(11,1307,0,0,0),(11,1308,0,0,0),(11,1309,0,0,0),(11,1310,0,0,0),(11,1311,0,0,0),(11,1312,0,0,0),(11,1313,0,0,0),(11,1314,0,0,0),(11,1315,0,0,0),(11,1316,0,0,0),(11,1317,0,0,0),(11,1318,0,0,0),(11,1319,0,0,0),(11,1320,0,0,0),(11,1321,0,0,0),(11,1322,0,0,0),(11,1323,0,0,0),(11,1324,0,0,0),(11,1325,0,0,0),(11,1326,0,0,0),(11,1327,0,0,0),(11,1328,0,0,0),(11,1329,0,0,0),(11,1330,0,0,0),(11,1331,0,0,0),(11,1332,0,0,0),(11,1333,0,0,0),(11,1335,0,0,0),(12,1,0,0,0),(12,1292,0,0,0),(12,1293,0,0,0),(12,1294,0,0,0),(12,1295,0,0,0),(12,1296,0,0,0),(12,1297,0,0,0),(12,1298,0,0,0),(12,1299,0,0,0),(12,1300,0,0,0),(12,1301,0,0,0),(12,1302,0,0,0),(12,1303,0,0,0),(12,1304,0,0,0),(12,1305,0,0,0),(12,1306,0,0,0),(12,1307,0,0,0),(12,1308,0,0,0),(12,1309,0,0,0),(12,1310,0,0,0),(12,1311,0,0,0),(12,1312,0,0,0),(12,1313,0,0,0),(12,1314,0,0,0),(12,1315,0,0,0),(12,1316,0,0,0),(12,1317,0,0,0),(12,1318,0,0,0),(12,1319,0,0,0),(12,1320,0,0,0),(12,1321,0,0,0),(12,1322,0,0,0),(12,1323,0,0,0),(12,1324,0,0,0),(12,1325,0,0,0),(12,1326,0,0,0),(12,1327,0,0,0),(12,1328,0,0,0),(12,1329,0,0,0),(12,1330,0,0,0),(12,1331,0,0,0),(12,1332,0,0,0),(12,1333,0,0,0),(12,1335,0,0,0),(13,1,0,0,0),(13,1292,0,0,0),(13,1293,0,0,0),(13,1294,0,0,0),(13,1295,0,0,0),(13,1296,0,0,0),(13,1297,0,0,0),(13,1298,0,0,0),(13,1299,0,0,0),(13,1300,0,0,0),(13,1301,0,0,0),(13,1302,0,0,0),(13,1303,0,0,0),(13,1304,0,0,0),(13,1305,0,0,0),(13,1306,0,0,0),(13,1307,0,0,0),(13,1308,0,0,0),(13,1309,0,0,0),(13,1310,0,0,0),(13,1311,0,0,0),(13,1312,0,0,0),(13,1313,0,0,0),(13,1314,0,0,0),(13,1315,0,0,0),(13,1316,0,0,0),(13,1317,0,0,0),(13,1318,0,0,0),(13,1319,0,0,0),(13,1320,0,0,0),(13,1321,0,0,0),(13,1322,0,0,0),(13,1323,0,0,0),(13,1324,0,0,0),(13,1325,0,0,0),(13,1326,0,0,0),(13,1327,0,0,0),(13,1328,0,0,0),(13,1329,0,0,0),(13,1330,0,0,0),(13,1331,0,0,0),(13,1332,0,0,0),(13,1333,0,0,0),(13,1335,0,0,0),(14,1,0,0,0),(14,1292,0,0,0),(14,1293,0,0,0),(14,1294,0,0,0),(14,1295,0,0,0),(14,1296,0,0,0),(14,1297,0,0,0),(14,1298,0,0,0),(14,1299,0,0,0),(14,1300,0,0,0),(14,1301,0,0,0),(14,1302,0,0,0),(14,1303,0,0,0),(14,1304,0,0,0),(14,1305,0,0,0),(14,1306,0,0,0),(14,1307,0,0,0),(14,1308,0,0,0),(14,1309,0,0,0),(14,1310,0,0,0),(14,1311,0,0,0),(14,1312,0,0,0),(14,1313,0,0,0),(14,1314,0,0,0),(14,1315,0,0,0),(14,1316,0,0,0),(14,1317,0,0,0),(14,1318,0,0,0),(14,1319,0,0,0),(14,1320,0,0,0),(14,1321,0,0,0),(14,1322,0,0,0),(14,1323,0,0,0),(14,1324,0,0,0),(14,1325,0,0,0),(14,1326,0,0,0),(14,1327,0,0,0),(14,1328,0,0,0),(14,1329,0,0,0),(14,1330,0,0,0),(14,1331,0,0,0),(14,1332,0,0,0),(14,1333,0,0,0),(14,1335,0,0,0);
/*!40000 ALTER TABLE `study_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_details` (
  `user_id` bigint NOT NULL COMMENT '회원ID 참조',
  `user_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `org_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `FK_users_TO_user_details_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1292,'동동바리입니다만','코리안 알고싶으면 와라'),(1293,'샬롯입니다만','코리안 알고싶으면 와라'),(1294,'대주형입니다만','코리안 알고싶으면 와라'),(1295,'성현성현성현입니다만','코리안 알고싶으면 와라'),(1296,'박박수진입니다만','코리안 알고싶으면 와라'),(1297,'갱갱갱입니다만','코리안 알고싶으면 와라'),(1328,'한국어 교육의 기초부터 고급까지 폭넓은 지식을 제공하는 경험 많은 강사입니다. 다문화 사회에서의 언어 교육에 깊은 열정을 가지고 있습니다.','서울 지역 한국어 학습 지원센터'),(1329,'한국어를 쉽고 재미있게 배울 수 있도록 체계적인 커리큘럼을 제공하는 강사입니다. 다양한 연령층과 배경을 가진 학생들과의 교육 경험이 풍부합니다.','부산 다문화 교육 협회'),(1330,'한국어 학습에 대한 효과적인 접근법과 학생 맞춤형 교육을 통해 빠른 성과를 이끌어내는 전문가입니다. 교육 방법론에 대한 연구와 개발에 많은 시간을 투자하고 있습니다.','대구 지역 사회 통합 연구소'),(1331,'다양한 한국어 교육 프로그램을 운영하며, 특히 실용적인 회화 중심의 수업을 전문으로 합니다. 학생들이 일상에서 자연스럽게 한국어를 사용할 수 있도록 돕습니다.','인천 다문화 교류 센터'),(1332,'언어 학습과 문화 이해를 동시에 배울 수 있는 교육을 제공합니다. 학생들이 한국어를 통해 문화와 소통할 수 있도록 하는 데 중점을 둡니다.','광주 한국어 교육 봉사단');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'auto increment',
  `login_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '로그인 아이디',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '비밀번호',
  `auth_id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '사용자 실명',
  `nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '사용자 닉네임',
  `leaves` int DEFAULT '0',
  `user_exp` bigint DEFAULT '0',
  `user_level` int DEFAULT '1' COMMENT '경험치에 따라 오름',
  `user_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `refresh_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login_id_UNIQUE` (`login_id`),
  KEY `FK_auth_TO_users_1` (`auth_id`),
  KEY `idx_user_exp` (`user_exp`),
  CONSTRAINT `FK_auth_TO_users_1` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ssafy','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'싸피','한국어마스터',99887,88,3,'2024-08-13 14:51:55','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzc2FmeSIsImV4cCI6MTcyMzgzMTQ0MiwidHlwZSI6InJlZnJlc2gifQ.YaoQYws6R54nkX3ubcb_llq4gOditAsCZitqgBZzyNo'),(1292,'uuas5866','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',0,'고동연','까오동옌',2,1,1,'2024-08-12 16:42:40','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1dWFzNTg2NiIsImV4cCI6MTcyMzc5NzY1NywidHlwZSI6InJlZnJlc2gifQ.sVVb6AYPjxibl0SdtYGgMraSHWg0krmA7SpJKMunIiA'),(1293,'ssyoung102','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',0,'윤서영','소크라테스',23,16,1,'2024-08-12 16:42:40','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJzc3lvdW5nMTAyIiwiZXhwIjoxNzIzNzk3OTg2LCJ0eXBlIjoicmVmcmVzaCJ9.WIdvBfVp_HHnajRxZ4pDTM1DYhRSxmLsHgx8gkDmIuU'),(1294,'wewqwew153','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',0,'대주형','오스틴',37,10,1,'2024-08-12 16:42:40','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ3ZXdxd2V3MTUzIiwiZXhwIjoxNzIzODI2MDM3LCJ0eXBlIjoicmVmcmVzaCJ9.tYLY1AVXOwHhRexYj8hURv9gwjeZp6o0H16MMXW8698'),(1295,'tjdgus2308','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',0,'김성현','응 위옌',2,0,1,'2024-08-12 16:42:40','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0amRndXMyMzA4IiwiZXhwIjoxNzIzODI1Nzc0LCJ0eXBlIjoicmVmcmVzaCJ9.spyj6EJcgAskG_l0XSc9bMAR5nVomVCS8vjvuaqBYEg'),(1296,'one_pst','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',0,'박수진','관리자박박',1,0,1,'2024-08-12 16:42:40','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJvbmVfcHN0IiwiZXhwIjoxNzIzODAxOTYxLCJ0eXBlIjoicmVmcmVzaCJ9.16LfnQGHP27dM_O37CQx4w2gTdXd5iy9nQ_mwjvXJ2E'),(1297,'kyg0954','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',0,'김유갱','유갱갱',40,17,1,'2024-08-12 16:42:40','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJreWcwOTU0IiwiZXhwIjoxNzIzNzk3NjYwLCJ0eXBlIjoicmVmcmVzaCJ9.YipA_ZObayEVYdk5uJ67ceeTmX8J6x3G7JB238nKbLA'),(1298,'user1','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'John Doe','존도',0,0,1,'2024-08-12 16:42:40',NULL),(1299,'user2','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Jane Smith','열정소녀',0,0,1,'2024-08-12 16:42:40',NULL),(1300,'user3','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Alice Johnson','커피중독자',0,0,1,'2024-08-12 16:42:40',NULL),(1301,'user4','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Bob Brown','브라운곰',0,0,1,'2024-08-12 16:42:40',NULL),(1302,'user5','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Charlie Davis','햄버거광',0,0,1,'2024-08-12 16:42:40',NULL),(1303,'user6','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Diana Evans','고양이집사',0,0,1,'2024-08-12 16:42:40',NULL),(1304,'user7','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Frank Green','프랭크왕자',0,0,1,'2024-08-12 16:42:40',NULL),(1305,'user8','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Grace Hill','반짝반짝',0,0,1,'2024-08-12 16:42:40',NULL),(1306,'user9','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Henry Scott','헨리호',0,0,1,'2024-08-12 16:42:40',NULL),(1307,'user10','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'Ivy Taylor','하이브이비',0,0,1,'2024-08-12 16:42:40',NULL),(1308,'user11','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'김철수','대한민국철수',0,0,1,'2024-08-12 16:42:40',NULL),(1309,'user12','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'이영희','영희는귀여워',0,0,1,'2024-08-12 16:42:40',NULL),(1310,'user13','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'박민수','민수짱',0,0,1,'2024-08-12 16:42:40',NULL),(1311,'user14','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'최수정','수정크리스탈',0,0,1,'2024-08-12 16:42:40',NULL),(1312,'user15','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'정호석','호석파워',0,0,1,'2024-08-12 16:42:40',NULL),(1313,'user16','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'한예은','예쁜예은',0,0,1,'2024-08-12 16:42:40',NULL),(1314,'user17','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'고동엽','동엽이형',0,0,1,'2024-08-12 16:42:40',NULL),(1315,'user18','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'고혜민','미녀혜민',0,0,1,'2024-08-12 16:42:40',NULL),(1316,'user19','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'문지호','지호의모험',0,0,1,'2024-08-12 16:42:40',NULL),(1317,'user20','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'오서준','서준이도전',0,0,1,'2024-08-12 16:42:40',NULL),(1318,'user21','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'에밀리 해일럿','에밀리햇',0,0,1,'2024-08-12 16:42:40',NULL),(1319,'user22','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'제이콥 리차드슨','제이콥',0,0,1,'2024-08-12 16:42:40',NULL),(1320,'user23','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'올리비아 윌슨','올리비아',0,0,1,'2024-08-12 16:42:40',NULL),(1321,'user24','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'루카스 브라운','루카스',0,0,1,'2024-08-12 16:42:40',NULL),(1322,'user25','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'이사벨라 테일러','벨라',0,0,1,'2024-08-12 16:42:40',NULL),(1323,'user26','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'한리 존슨','한지좋아',0,0,1,'2024-08-12 16:42:40',NULL),(1324,'user27','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'샬롯 데이비스','샬롯',0,0,1,'2024-08-12 16:42:40',NULL),(1325,'user28','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'메이슨 가르시아','메이슨',0,0,1,'2024-08-12 16:42:40',NULL),(1326,'user29','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'소피아 로드리게즈','소피',0,0,1,'2024-08-12 16:42:40',NULL),(1327,'user30','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',1,'제임스 마르티네즈','제임스',0,0,1,'2024-08-12 16:42:40',NULL),(1328,'teacher1','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',2,'김지희','김지희선생님',37,3,1,'2024-08-12 17:25:02','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZWFjaGVyMSIsImV4cCI6MTcyMzgyNTY4NiwidHlwZSI6InJlZnJlc2gifQ.4j-U4oXIyjHIVKWJI4kEbXlsdEsUsJhYD9Pc0mKeLx0'),(1329,'teacher2','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',2,'최미주','최미주선생님',0,0,1,'2024-08-12 17:25:02',NULL),(1330,'teacher3','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',2,'조수빈','조수빈선생님',0,0,1,'2024-08-12 17:25:02',NULL),(1331,'teacher4','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',2,'남지현','남지현선생님',1,0,1,'2024-08-12 17:25:02','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZWFjaGVyNCIsImV4cCI6MTcyMzc5NzQ4NiwidHlwZSI6InJlZnJlc2gifQ.s1f95g9lIbmAQi72k6G0_0mO3RiUd0VDLx4N-NPv6JY'),(1332,'teacher5','{bcrypt}$2a$10$ohb1.RATzM9wf0uY.7c9tOf.CHanCeIz/32IzCug9CroOd/b1pWdS',2,'정지훈','정지훈선생님',0,0,1,'2024-08-12 17:25:02',NULL),(1333,'test','{bcrypt}$2a$10$N9gtBBjETbOjqq5QQlGECupB3z5hJVOl8TRX0pgyw.NKaLDicS0Ia',1,'박박박','유갱갱갱',6,41,1,'2024-08-13 13:57:31','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0ZXN0IiwiZXhwIjoxNzIzODI3MDgxLCJ0eXBlIjoicmVmcmVzaCJ9.lo2beYQ0cHDXsVYEpdCsTy4Fhn0BD6AcPGHwqYSuHeg'),(1335,'tjdgus1234','{bcrypt}$2a$10$2aYCQ6VMxg2ouUFBzWbyq.jpJiyfVYn04OeMI6Uh15gTuypNnZIIi',1,'김성현','성현성현성현',0,0,1,'2024-08-14 13:39:09','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0amRndXMxMjM0IiwiZXhwIjoxNzIzNzI5MTUzLCJ0eXBlIjoicmVmcmVzaCJ9.kK7yifL6qh3KzsCDHoZRcjzY0-uVLI-nQdfkgkeZ6b4');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'koala'
--

--
-- Dumping routines for database 'koala'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16  3:19:21
