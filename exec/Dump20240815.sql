-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: i11b304.p.ssafy.io    Database: supia
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `bgi`
--

DROP TABLE IF EXISTS `bgi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bgi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgi`
--

LOCK TABLES `bgi` WRITE;
/*!40000 ALTER TABLE `bgi` DISABLE KEYS */;
INSERT INTO `bgi` VALUES (1,'0','forest_1','https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_1.png',1000),(2,'1','forest_2','https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_2.png',1500),(3,'2','forest_3','https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_3.png',2000),(4,'3','forest_4','https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_4.png',3000),(5,'4','forest_5','https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_5.png',4000);
/*!40000 ALTER TABLE `bgi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bgm`
--

DROP TABLE IF EXISTS `bgm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bgm` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bgm`
--

LOCK TABLES `bgm` WRITE;
/*!40000 ALTER TABLE `bgm` DISABLE KEYS */;
INSERT INTO `bgm` VALUES (1,'0','Aalaap_in_Raag_Jhinjhoti','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Aalaap_in_Raag_Jhinjhoti.mp3',1000),(2,'0','Blue_Ribbons','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Blue_Ribbons.mp3',1000),(3,'1','Cafe_Regrette','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Cafe_Regrette.mp3',2000),(4,'1','Forest_Lullabye','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Forest_Lullabye.mp3',2000),(5,'2','No.9_Esther’s_Waltz','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/No.9_Esther%E2%80%99s_Waltz.mp3',3000),(6,'2','Raga_Legacy','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Raga_Legacy.mp3',3000),(7,'2','Russian_Dance','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Russian_Dance.mp3',4000),(8,'3','Swans_In_Flight','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Swans_In_Flight.mp3',5000),(9,'3','Sweethearts','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Sweethearts.mp3',6000),(10,'4','Swimming_Lessons','https://supia.s3.ap-northeast-2.amazonaws.com/background/music/Swimming_Lessons.mp3',8000);
/*!40000 ALTER TABLE `bgm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forest`
--

DROP TABLE IF EXISTS `forest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forest` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `thumbnail` varchar(255) DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `bgi` varchar(255) DEFAULT 'https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_1.png',
  `bgm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK5u5ni8akfy0iu9hnofyso9owb` (`member_id`),
  CONSTRAINT `FK5budmxhmsk2sm1nqfou7wrukq` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forest`
--

LOCK TABLES `forest` WRITE;
/*!40000 ALTER TABLE `forest` DISABLE KEYS */;
INSERT INTO `forest` VALUES (1,'Default thumbnail',1,NULL,NULL),(2,'Default thumbnail',2,NULL,NULL),(3,'Default thumbnail',3,NULL,NULL),(4,'Default thumbnail',4,NULL,NULL),(5,'Default thumbnail',5,NULL,NULL),(6,'Default thumbnail',6,NULL,NULL),(7,'Default thumbnail',7,NULL,NULL),(8,'1',8,'https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_3.png',NULL),(9,'s3://supia/background/image/forest_1.png',9,'s3://supia/background/image/forest_1.png',NULL),(10,'https://supia.s3.ap-northeast-2.amazonaws.com/forest_thumbnail/10.png',10,'https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_2.png',NULL),(11,'https://supia.s3.ap-northeast-2.amazonaws.com/forest_thumbnail/11.png',11,'https://supia.s3.ap-northeast-2.amazonaws.com/background/image/forest_2.png',NULL),(12,'https://supia.s3.ap-northeast-2.amazonaws.com/forest_thumbnail/12.png',12,'s3://supia/background/image/forest_1.png',NULL),(13,'file:///data/user/0/com.supia_native/cache/ReactNative-snapshot-image2619205974624645286.png',13,'s3://supia/background/image/forest_1.png',NULL),(14,'file:///data/user/0/com.supia_native/cache/ReactNative-snapshot-image4628887708242970268.png',14,'s3://supia/background/image/forest_1.png',NULL),(15,'s3://supia/background/image/forest_1.png',15,'s3://supia/background/image/forest_1.png',NULL),(16,'file:///data/user/0/com.supia_native/cache/ReactNative-snapshot-image9017876557371955056.png',16,'s3://supia/background/image/forest_1.png',NULL),(17,'s3://supia/background/image/forest_1.png',17,'s3://supia/background/image/forest_1.png',NULL),(18,'s3://supia/background/image/forest_1.png',18,'s3://supia/background/image/forest_1.png',NULL),(19,'s3://supia/background/image/forest_1.png',19,'s3://supia/background/image/forest_1.png',NULL),(20,'s3://supia/background/image/forest_1.png',20,'s3://supia/background/image/forest_1.png',NULL),(21,'s3://supia/background/image/forest_1.png',21,'s3://supia/background/image/forest_1.png',NULL),(22,'s3://supia/background/image/forest_1.png',22,'s3://supia/background/image/forest_1.png',NULL),(23,'s3://supia/background/image/forest_1.png',23,'s3://supia/background/image/forest_1.png',NULL),(24,'s3://supia/background/image/forest_1.png',24,'s3://supia/background/image/forest_1.png',NULL),(25,'s3://supia/background/image/forest_1.png',25,'s3://supia/background/image/forest_1.png',NULL),(26,'s3://supia/background/image/forest_1.png',26,'s3://supia/background/image/forest_1.png',NULL),(27,'s3://supia/background/image/forest_1.png',27,'s3://supia/background/image/forest_1.png',NULL),(28,'s3://supia/background/image/forest_1.png',28,'s3://supia/background/image/forest_1.png',NULL),(29,'https://supia.s3.ap-northeast-2.amazonaws.com/forest_thumbnail/29.png',29,'s3://supia/background/image/forest_1.png',NULL),(30,'s3://supia/background/image/forest_1.png',30,'s3://supia/background/image/forest_1.png',NULL),(31,'s3://supia/background/image/forest_1.png',31,'s3://supia/background/image/forest_1.png',NULL),(32,'s3://supia/background/image/forest_1.png',32,'s3://supia/background/image/forest_1.png',NULL);
/*!40000 ALTER TABLE `forest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forest_item`
--

DROP TABLE IF EXISTS `forest_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forest_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sound_on` bit(1) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `forest_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKm3wa17pt59n0g8gw6v1wlib4r` (`item_id`),
  KEY `FKg78d17y3ul7i66x5qr0np4e5q` (`forest_id`),
  CONSTRAINT `FK1hw6bct1lee4d0ab40dwffio0` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FKg78d17y3ul7i66x5qr0np4e5q` FOREIGN KEY (`forest_id`) REFERENCES `forest` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forest_item`
--

LOCK TABLES `forest_item` WRITE;
/*!40000 ALTER TABLE `forest_item` DISABLE KEYS */;
INSERT INTO `forest_item` VALUES (15,_binary '',-625.6947631835938,53.21791076660156,8,34),(16,_binary '',-347.98828315734863,313.00780868530273,8,35),(19,_binary '',0,0,NULL,NULL),(67,_binary '',0,0,NULL,NULL),(68,_binary '',0,0,NULL,NULL),(69,_binary '',0,0,NULL,NULL),(70,_binary '',0,0,NULL,NULL),(71,_binary '\0',0,0,NULL,NULL),(72,_binary '\0',0,0,NULL,NULL),(75,_binary '\0',0,0,NULL,NULL),(76,_binary '\0',0,0,NULL,NULL),(77,_binary '\0',0,0,NULL,NULL),(78,_binary '',0,0,NULL,NULL),(79,_binary '\0',0,0,NULL,NULL),(80,_binary '',0,0,NULL,NULL),(81,_binary '\0',0,0,NULL,NULL),(82,_binary '',0,0,NULL,NULL),(83,_binary '\0',0,0,NULL,NULL),(84,_binary '',0,0,NULL,NULL),(85,_binary '\0',0,0,NULL,NULL),(88,_binary '\0',0,0,NULL,NULL),(89,_binary '',0,0,NULL,NULL),(90,_binary '\0',0,0,NULL,NULL),(91,_binary '',0,0,NULL,NULL),(92,_binary '\0',0,0,NULL,NULL),(93,_binary '',0,0,NULL,NULL),(94,_binary '\0',0,0,NULL,NULL),(95,_binary '',0,0,NULL,NULL),(96,_binary '\0',0,0,NULL,NULL),(97,_binary '',0,0,NULL,NULL),(98,_binary '\0',0,0,NULL,NULL),(99,_binary '',0,0,NULL,NULL),(100,_binary '\0',0,0,NULL,NULL),(101,_binary '',0,0,NULL,NULL),(102,_binary '\0',0,0,NULL,NULL),(103,_binary '',0,0,NULL,NULL),(104,_binary '\0',0,0,NULL,NULL),(105,_binary '',0,0,NULL,NULL),(106,_binary '\0',0,0,NULL,NULL),(107,_binary '',0,0,NULL,NULL),(108,_binary '\0',0,0,NULL,NULL),(109,_binary '',0,0,NULL,NULL),(110,_binary '',0,0,NULL,NULL),(111,_binary '\0',0,0,NULL,NULL),(114,_binary '\0',0,0,NULL,NULL),(115,_binary '\0',0,0,NULL,NULL),(118,_binary '\0',0,0,NULL,NULL),(119,_binary '\0',0,0,NULL,NULL),(124,_binary '\0',0,0,NULL,NULL),(127,_binary '\0',0,0,NULL,NULL),(128,_binary '\0',0,0,NULL,NULL),(133,_binary '\0',0,0,NULL,NULL),(144,_binary '\0',0,0,NULL,NULL),(147,_binary '\0',0,0,NULL,NULL),(148,_binary '\0',0,0,NULL,NULL),(163,_binary '\0',0,0,NULL,NULL),(164,_binary '\0',0,0,NULL,NULL),(165,_binary '',0,0,NULL,NULL),(166,_binary '',0,0,NULL,NULL),(167,_binary '',0,0,NULL,NULL),(169,_binary '\0',0,0,NULL,NULL),(170,_binary '',0,0,NULL,NULL),(171,_binary '\0',0,0,NULL,NULL),(173,_binary '\0',0,0,NULL,NULL),(175,_binary '\0',0,0,NULL,NULL),(176,_binary '',0,0,NULL,NULL),(177,_binary '\0',0,0,NULL,NULL),(178,_binary '',0,0,NULL,NULL),(180,_binary '\0',0,0,NULL,NULL),(182,_binary '\0',0,0,NULL,NULL),(183,_binary '',0,0,NULL,NULL),(184,_binary '\0',0,0,NULL,NULL),(185,_binary '',0,0,NULL,NULL),(186,_binary '\0',0,0,NULL,NULL),(187,_binary '',0,0,NULL,NULL),(189,_binary '\0',0,0,NULL,NULL),(190,_binary '',0,0,NULL,NULL),(191,_binary '\0',0,0,NULL,NULL),(192,_binary '',0,0,NULL,NULL),(194,_binary '\0',0,0,NULL,NULL),(199,_binary '\0',0,0,NULL,NULL),(202,_binary '\0',0,0,NULL,NULL),(213,_binary '\0',0,0,NULL,NULL),(214,_binary '',0,0,NULL,NULL),(215,_binary '\0',0,0,NULL,NULL),(218,_binary '\0',0,0,NULL,NULL),(219,_binary '',0,0,NULL,NULL),(220,_binary '\0',0,0,NULL,NULL),(223,_binary '\0',0,0,NULL,NULL),(230,_binary '\0',0,0,NULL,NULL),(231,_binary '\0',0,0,NULL,NULL),(234,_binary '\0',0,0,NULL,NULL),(267,_binary '\0',0,0,NULL,NULL),(268,_binary '',0,0,NULL,NULL),(271,_binary '\0',0,0,NULL,NULL),(272,_binary '',0,0,NULL,NULL),(273,_binary '\0',0,0,NULL,NULL),(274,_binary '',0,0,NULL,NULL),(279,_binary '\0',0,0,NULL,NULL),(282,_binary '\0',0,0,NULL,NULL),(374,_binary '\0',0,0,NULL,NULL),(375,_binary '',0,0,NULL,NULL),(376,_binary '\0',0,0,NULL,NULL),(381,_binary '',-589.9257168769836,273.56014013290405,12,96),(382,_binary '',-661.5085296630859,609.1978867053986,12,98),(383,_binary '',-384.84009873867035,133.70865631103516,11,49),(384,_binary '',-526.4956331253052,88.64620018005371,11,61),(385,_binary '',-617.924251832068,355.1115145087242,10,36);
/*!40000 ALTER TABLE `forest_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend`
--

DROP TABLE IF EXISTS `friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `are_we_friend` bit(1) NOT NULL,
  `from_member_id` bigint DEFAULT NULL,
  `to_member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKg2x0pnnygratdt8p37ps8torr` (`from_member_id`),
  KEY `FKkplwuye8arugi953achlx2dom` (`to_member_id`),
  CONSTRAINT `FKg2x0pnnygratdt8p37ps8torr` FOREIGN KEY (`from_member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKkplwuye8arugi953achlx2dom` FOREIGN KEY (`to_member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend`
--

LOCK TABLES `friend` WRITE;
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` VALUES (1,_binary '\0',1,2),(2,_binary '\0',1,8),(3,_binary '\0',5,8),(18,_binary '',12,10),(20,_binary '',11,10),(21,_binary '\0',11,20),(22,_binary '\0',11,11),(23,_binary '',12,25),(24,_binary '',12,23),(25,_binary '\0',20,12),(26,_binary '\0',21,12),(27,_binary '\0',19,12),(28,_binary '\0',17,12),(29,_binary '',16,12),(30,_binary '\0',13,12),(31,_binary '\0',12,11),(32,_binary '',12,29),(33,_binary '',32,32),(34,_binary '',31,32),(35,_binary '',29,31),(36,_binary '\0',29,32);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acquire_date` date DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `origin_url` varchar(255) DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  `species_id` bigint DEFAULT NULL,
  `walk_id` bigint DEFAULT NULL,
  `dong_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpuyun1nwd8fupsib8ekn7vrpm` (`member_id`),
  KEY `FKps58f3j6cb0d20gr0pr0t2ww5` (`species_id`),
  KEY `FKk13wuyh52ppbxbqkcrfayua1` (`walk_id`),
  CONSTRAINT `FKps58f3j6cb0d20gr0pr0t2ww5` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`),
  CONSTRAINT `FKpuyun1nwd8fupsib8ekn7vrpm` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1447_animal_digital_clock.png','/data/user/0/com.supia_native/cache/mrousavy9091378932311129390.jpg',8,1,3,'4420025331'),(2,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1448_animal_digital_clock.png','/data/user/0/com.supia_native/cache/mrousavy1972568082757041580.jpg',8,1,4,'4420025331'),(3,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1448_animal_television.png','/data/user/0/com.supia_native/cache/mrousavy1459186683421729250.jpg',8,2,4,'4420025331'),(4,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1448_animal_television.png','/data/user/0/com.supia_native/cache/mrousavy2798331077130551544.jpg',8,2,4,'4420025331'),(5,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1449_animal_handkerchief.png','/data/user/0/com.supia_native/cache/mrousavy3684163277153452423.jpg',8,3,4,'4420025331'),(6,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1449_animal_window_shade.png','/data/user/0/com.supia_native/cache/mrousavy914841496933978673.jpg',8,4,4,'4420025331'),(7,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1458_animal_abaya.png','/data/user/0/com.supia_native/cache/mrousavy4735935411068362080.jpg',8,5,5,'4420025331'),(8,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1505_animal_digital_clock.png','/data/user/0/com.supia_native/cache/mrousavy802144563670501157.jpg',8,1,7,'4420025331'),(9,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1512_animal_digital_clock.png','/data/user/0/com.supia_native/cache/mrousavy1537229724523445381.jpg',8,1,9,'4420025331'),(10,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1524_animal_modem.png','/data/user/0/com.supia_native/cache/mrousavy7076609698057387939.jpg',8,6,10,'4420025331'),(11,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1525_animal_notebook.png','/data/user/0/com.supia_native/cache/mrousavy5914982392592018439.jpg',8,7,10,'4420025331'),(12,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1525_animal_digital_clock.png','/data/user/0/com.supia_native/cache/mrousavy5648617903744561444.jpg',8,1,10,'4420025331'),(13,'2024-08-08','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1525_animal_television.png','/data/user/0/com.supia_native/cache/mrousavy9056211762388054098.jpg',8,2,10,'4420025331'),(14,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0118_animal_daisy.png','/data/user/0/com.supia_native/cache/mrousavy636943575347740294.jpg',8,8,12,'대전광역시 유성구 덕명동'),(15,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0122_animal_daisy.png','/data/user/0/com.supia_native/cache/mrousavy4163150330481182686.jpg',8,8,13,'대전광역시 유성구 덕명동'),(16,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0125_animal_bubble.png','/data/user/0/com.supia_native/cache/mrousavy9072954694596453098.jpg',8,9,13,'대전광역시 유성구 덕명동'),(17,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0945_animal_necklace.png','/data/user/0/com.supia_native/cache/mrousavy3607312124603128136.jpg',8,23,14,'대전광역시 유성구 덕명동'),(18,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0105_animal_sweatshirt.png','/data/user/0/com.supia_native/cache/mrousavy5590985213531454340.jpg',8,24,17,'충청남도 아산시 배방읍 장재리'),(19,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1022_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy1212478558815344549.jpg',8,25,18,'대전광역시 유성구 덕명동'),(20,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1030_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy6706702164230348933.jpg',8,26,20,'대전광역시 유성구 덕명동'),(21,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1035_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy2185543905230623007.jpg',8,26,21,'대전광역시 유성구 덕명동'),(22,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy9148699899881353316.jpg',12,26,24,'대전광역시 유성구 덕명동'),(23,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_곤충_butterfly.png','/data/user/0/com.supia_native/cache/mrousavy6515674266024842382.jpg',8,27,24,'대전광역시 유성구 덕명동'),(24,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1100_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy6206769085881425566.jpg',NULL,12,25,'대전광역시 유성구 덕명동'),(25,'2024-08-09','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1106_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy4111945960902613315.jpg',NULL,12,26,'대전광역시 유성구 덕명동'),(26,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0738_식물_sunflower.png','/data/user/0/com.supia_native/cache/mrousavy1859072414224141323.jpg',NULL,21,33,'대전광역시 유성구 덕명동'),(27,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0910_식물_dandelion.png','/data/user/0/com.supia_native/cache/mrousavy3599546330580029482.jpg',NULL,19,34,'대전광역시 유성구 덕명동'),(28,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0911_곤충_grasshopper.png','/data/user/0/com.supia_native/cache/mrousavy5976797796014828038.jpg',NULL,15,34,'대전광역시 유성구 덕명동'),(29,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0912_곤충_dragonfly.png','/data/user/0/com.supia_native/cache/mrousavy6479078625799058603.jpg',NULL,14,34,'대전광역시 유성구 덕명동'),(30,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0928_곤충_grasshopper.png','/data/user/0/com.supia_native/cache/mrousavy2640883377771345777.jpg',NULL,15,35,'대전광역시 유성구 덕명동'),(31,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0929_동물_bird.png','/data/user/0/com.supia_native/cache/mrousavy1817724477185115697.jpg',NULL,10,35,'대전광역시 유성구 덕명동'),(32,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1638_곤충_dragonfly.png','/data/user/0/com.supia_native/cache/mrousavy5528693658124448888.jpg',NULL,14,36,'대전광역시 유성구 덕명동'),(33,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1638_곤충_grasshopper.png','/data/user/0/com.supia_native/cache/mrousavy7620839313765617761.jpg',NULL,15,36,'대전광역시 유성구 덕명동'),(34,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1639_식물_daisy.png','/data/user/0/com.supia_native/cache/mrousavy266770283387288005.jpg',10,18,36,'대전광역시 유성구 덕명동'),(35,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1640_동물_bird.png','/data/user/0/com.supia_native/cache/mrousavy4975309023251939380.jpg',10,10,36,'대전광역시 유성구 덕명동'),(36,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1641_곤충_butterfly.png','/data/user/0/com.supia_native/cache/mrousavy7101652986856065882.jpg',10,13,36,'대전광역시 유성구 덕명동'),(37,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1445_곤충_butterfly.png','/data/user/0/com.supia_native/cache/mrousavy1341460219357915170.jpg',8,28,37,NULL),(38,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1445_곤충_butterfly.png','/data/user/0/com.supia_native/cache/mrousavy1341460219357915170.jpg',8,28,38,NULL),(39,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1459_동물_cat.png','/data/user/0/com.supia_native/cache/mrousavy9204562916387493416.jpg',8,28,39,NULL),(40,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_0048_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy5812570935682840126.jpg',8,28,40,'대전광역시 유성구 봉명동'),(41,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_0048_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy5812570935682840126.jpg',8,28,41,'대전광역시 유성구 봉명동'),(42,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1710_곤충_dragonfly.png','/data/user/0/com.supia_native/cache/mrousavy1016501696232115198.jpg',8,28,43,NULL),(43,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1711_동물_cat.png','/data/user/0/com.supia_native/cache/mrousavy2991232889805483131.jpg',8,28,43,NULL),(44,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1713_식물_tulip.png','/data/user/0/com.supia_native/cache/mrousavy7581800968718094437.jpg',8,28,43,NULL),(45,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1714_식물_tulip.png','/data/user/0/com.supia_native/cache/mrousavy4352523547547981046.jpg',8,28,43,NULL),(46,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1732_식물_tulip.png','/data/user/0/com.supia_native/cache/mrousavy5644720206981525188.jpg',10,28,44,'대전광역시 유성구 덕명동'),(47,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1732_동물_cat.png','/data/user/0/com.supia_native/cache/mrousavy3214405126096380302.jpg',NULL,28,44,'대전광역시 유성구 덕명동'),(48,'2024-08-10','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1732_곤충_butterfly.png','/data/user/0/com.supia_native/cache/mrousavy9006806161275247531.jpg',NULL,28,44,'대전광역시 유성구 덕명동'),(49,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_1954_동물_cat.png','/data/user/0/com.supia_native/cache/mrousavy3962656623999261542.jpg',11,28,NULL,'대전광역시 유성구 덕명동'),(50,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_1954_동물_cat.png','/data/user/0/com.supia_native/cache/mrousavy3962656623999261542.jpg',11,28,NULL,'대전광역시 유성구 덕명동'),(51,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_2004_동물_cat.png','/data/user/0/com.supia_native/cache/mrousavy8298819078216691771.jpg',12,28,NULL,'대전광역시 유성구 덕명동'),(52,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_2005_식물_sunflower.png','/data/user/0/com.supia_native/cache/mrousavy6815607731055538872.jpg',11,28,NULL,'대전광역시 유성구 덕명동'),(53,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_2011_식물_daisy.png','/data/user/0/com.supia_native/cache/mrousavy1877580388810906818.jpg',10,28,NULL,'대전광역시 유성구 덕명동'),(54,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_2017_식물_daisy.png','/data/user/0/com.supia_native/cache/mrousavy8823499133821179372.jpg',10,28,NULL,'대전광역시 유성구 덕명동'),(55,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_1124_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy4514202335024069727.jpg',11,28,NULL,'대전광역시 유성구 궁동'),(56,'2024-08-11','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240811_1126_동물_dog.png','/data/user/0/com.supia_native/cache/mrousavy8386634600822158320.jpg',11,28,NULL,'대전광역시 유성구 궁동'),(57,'2024-08-12','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_2024-08-12_15:41:06_동물_dog.png',NULL,10,12,NULL,'대전광역시 유성구 덕명동'),(58,'2024-08-12','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_2024-08-12_15:46:37_기타_mosquito.png',NULL,NULL,29,NULL,'대전광역시 유성구 덕명동'),(59,'2024-08-12','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240812_2208_동물_bird.png',NULL,11,10,NULL,'대전광역시 유성구 덕명동'),(60,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1404_곤충_mosquito.png',NULL,10,17,NULL,'대전광역시 유성구 덕명동'),(61,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1404_기타_mosquito.png',NULL,NULL,30,NULL,'대전광역시 유성구 덕명동'),(62,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1405_기타_mosquito.png',NULL,11,31,NULL,'대전광역시 유성구 덕명동'),(63,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1413_기타_cat.png',NULL,10,32,NULL,'대전광역시 유성구 덕명동'),(64,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1603_기타_unknown.png',NULL,23,33,NULL,'대전광역시 유성구 덕명동'),(65,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1616_식물_사피니아.png',NULL,23,34,NULL,'대전광역시 유성구 덕명동'),(66,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1618_기타_unknown.png',NULL,23,35,NULL,'대전광역시 유성구 덕명동'),(67,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1618_기타_unknown.png',NULL,23,35,NULL,'대전광역시 유성구 덕명동'),(68,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1618_기타_unknown.png',NULL,23,35,NULL,'대전광역시 유성구 덕명동'),(69,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1636_기타_unknown.png',NULL,23,36,NULL,'대전광역시 유성구 덕명동'),(70,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1730_기타_unknown.png',NULL,11,31,NULL,'대전광역시 유성구 덕명동'),(71,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1742_기타_unknown.png',NULL,23,37,NULL,'대전광역시 유성구 덕명동'),(72,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1744_동물_달팽이.png',NULL,23,38,NULL,'대전광역시 유성구 덕명동'),(73,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1748_동물_강아지.png',NULL,23,12,NULL,'대전광역시 유성구 덕명동'),(74,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_2231_기타_unknown.png',NULL,26,18,NULL,'충청북도 청주시 서원구 개신동'),(75,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_2231_기타_unknown.png',NULL,26,18,NULL,'충청북도 청주시 서원구 개신동'),(76,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_2251_기타_unknown.png',NULL,26,21,NULL,'충청북도 청주시 서원구 개신동'),(77,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_2252_식물_민들레.png',NULL,26,19,NULL,'충청북도 청주시 서원구 개신동'),(78,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_2251_기타_unknown.png',NULL,26,21,NULL,'충청북도 청주시 서원구 개신동'),(79,'2024-08-13','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_2252_식물_민들레.png',NULL,26,19,NULL,'충청북도 청주시 서원구 개신동'),(80,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1002_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(81,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1013_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(82,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1013_기타_unknown.png',NULL,23,21,NULL,'대전광역시 유성구 덕명동'),(83,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1022_기타_unknown.png',NULL,23,21,NULL,'대전광역시 유성구 덕명동'),(84,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1023_기타_unknown.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(85,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1043_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(86,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1044_식물_해바라기.png',NULL,23,21,NULL,'대전광역시 유성구 덕명동'),(87,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1045_식물_데이지.png',NULL,23,18,NULL,'대전광역시 유성구 덕명동'),(88,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1047_기타_unknown.png',NULL,12,39,NULL,'대전광역시 유성구 덕명동'),(89,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1056_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(90,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1117_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(93,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1116_기타_unknown.png',NULL,NULL,40,NULL,'대전광역시 유성구 덕명동'),(94,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1123_기타_unknown.png',NULL,12,31,NULL,'대전광역시 유성구 덕명동'),(95,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1215_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(96,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1212_식물_장미.png',NULL,12,20,NULL,'대전광역시 유성구 덕명동'),(97,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1212_기타_unknown.png',NULL,12,21,NULL,'대전광역시 유성구 덕명동'),(98,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1217_기타_unknown.png',NULL,NULL,41,NULL,'대전광역시 유성구 덕명동'),(99,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1218_식물_장미.png',NULL,12,20,NULL,'대전광역시 유성구 덕명동'),(100,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1218_동물_달팽이.png',NULL,12,38,NULL,'대전광역시 유성구 덕명동'),(101,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1236_식물_해바라기.png',NULL,23,21,NULL,'대전광역시 유성구 덕명동'),(102,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1239_식물_해바라기.png',NULL,23,21,NULL,'대전광역시 유성구 덕명동'),(103,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1240_기타_unknown.png',NULL,23,42,NULL,'대전광역시 유성구 덕명동'),(104,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1242_동물_새.png',NULL,30,10,NULL,'대전광역시 유성구 덕명동'),(105,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1242_식물_장미.png',NULL,23,20,NULL,'대전광역시 유성구 덕명동'),(106,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1307_식물_장미.png',NULL,29,20,NULL,'대전광역시 유성구 덕명동'),(107,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1309_기타_unknown.png',NULL,30,43,NULL,'대전광역시 유성구 덕명동'),(108,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1620_기타_unknown.png',NULL,12,44,NULL,'대전광역시 유성구 덕명동'),(109,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1624_동물_고양이.png',NULL,12,11,NULL,'대전광역시 유성구 덕명동'),(110,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1737_기타_unknown.png',NULL,12,41,NULL,'대전광역시 유성구 덕명동'),(111,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1934_동물_고양이.png',NULL,10,11,NULL,'대전광역시 유성구 봉명동'),(112,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1935_기타_unknown.png',NULL,11,21,NULL,'대전광역시 유성구 봉명동'),(113,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1935_기타_unknown.png',NULL,11,45,NULL,'대전광역시 유성구 봉명동'),(114,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1937_기타_unknown.png',NULL,11,46,NULL,'대전광역시 유성구 봉명동'),(115,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1939_기타_unknown.png',NULL,11,47,NULL,'대전광역시 유성구 봉명동'),(116,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1943_기타_unknown.png',NULL,11,14,NULL,'대전광역시 유성구 봉명동'),(117,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1939_기타_unknown.png',NULL,11,47,NULL,'대전광역시 유성구 봉명동'),(118,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1943_기타_unknown.png',NULL,11,14,NULL,'대전광역시 유성구 봉명동'),(119,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2006_기타_unknown.png',NULL,11,48,NULL,'대전광역시 유성구 봉명동'),(120,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2007_동물_고양이.png',NULL,11,11,NULL,'대전광역시 유성구 봉명동'),(121,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2054_기타_unknown.png',NULL,11,49,NULL,'대전광역시 유성구 봉명동'),(122,'2024-08-14','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2057_기타_unknown.png',NULL,11,50,NULL,'대전광역시 유성구 봉명동'),(123,'2024-08-15','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240815_0049_기타_unknown.png',NULL,11,58,NULL,'대전광역시 유성구 봉명동');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `exp` int NOT NULL,
  `level` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `point` int NOT NULL,
  `profile_img` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `visit` int NOT NULL,
  `forest_id` bigint DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKf4cqo9yxx25yvg34bw5y0k6f0` (`forest_id`),
  CONSTRAINT `FKrobbkekjdmfijjnxhcgq6qsvn` FOREIGN KEY (`forest_id`) REFERENCES `forest` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'10@ssafy.com',65,0,'김싸피','2d','$2a$10$YGPTg9BXRUH0wL29QL.rSeQox4XNFcwJqpAydXOy08d6RH/6RgufS',0,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMEBzc2FmeS5jb20iLCJtZW1iZXJJZCI6MSwiaWF0IjoxNzIzNTk5ODM4LCJleHAiOjE3NTUxMzU4Mzh9.WKbi_OcHedmsyE6zdeSR7cSNMW6xbv5GCp9yIrE2xPW7zwbxcELMFu9X9VkWN2D1q0uhwWhIouFOez6jpE9UJg',0,1,1),(2,'1234@naver.com',5,0,'1234','1234','$2a$10$Vu0a5K3IX0Xj4oRHeUVPu.44hTpXULqnsVkTwaQv3QtgBDu52BpY2',0,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMjM0QG5hdmVyLmNvbSIsIm1lbWJlcklkIjoyLCJpYXQiOjE3MjM1MzY4NTgsImV4cCI6MTc1NTA3Mjg1OH0.PMRaB4AMDX203zW0bI-55er_zNEaqGQSe8b_MwzV8-WA6GuYfHYS-EVZbwXfCFh4INuuk3SMHh4n_IO86_KhDQ',0,2,1),(3,'rtcTest1@naver.com',0,0,'1234','1234','$2a$10$IAZpPkE8N8gwDgERNBvzAOi//mpH82kmsAcPILAMN7AIMdye8r3t.',0,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJydGNUZXN0MUBuYXZlci5jb20iLCJtZW1iZXJJZCI6MywiaWF0IjoxNzIzMDE0NDU1LCJleHAiOjE3NTQ1NTA0NTV9.cEMM5asSKHqhL0Uz0yLyWScBqk_y9JGrcf83zdA_XOADDkr3y3R96g8iABQsBYqT_6wt0oy1VHZM83sgjj3UlQ',0,3,1),(4,'rtcTest2@naver.com',5,0,'1234','1234','$2a$10$LsavmgUOjtXI3WJqYTzktuQY0ijt19x6fnlIwbpkfJusCSOh/PcAa',0,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJydGNUZXN0MkBuYXZlci5jb20iLCJtZW1iZXJJZCI6NCwiaWF0IjoxNzIzMzgwOTkyLCJleHAiOjE3NTQ5MTY5OTJ9.ZpS-3pgMgzjRc9AXtncRef6XNtWj-ur-cM5rANuhSs1Qn-Lq-pjImBGS96I9v22FLmUSQKX9ubHflagg_T9sDA',0,4,1),(5,'rtcTest3@naver.com',115,1,'1234','1234','$2a$10$4ElIiU1It8TF264ZWOO0wuhBVaFqkNDxRNGkGLeijBE/V7Y44ceGi',0,'https://supia.s3.ap-northeast-2.amazonaws.com/profile/5.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJydGNUZXN0M0BuYXZlci5jb20iLCJtZW1iZXJJZCI6NSwiaWF0IjoxNzIzNDM4NzY5LCJleHAiOjE3NTQ5NzQ3Njl9.azlN8JsXqRp7IlJNaJDlv6TFBLyKVhO2O_QV7JP7OV6ZAHy9Y8jgzZwaeDQhS-LNXM5TuKrdEwEr4ucYe0zmQw',0,5,1),(6,'0000@naver.com',120,1,'1234','1234','$2a$10$jsCgrB1KCFeB7ohRB95hB.xWILJbLa.cBlS5MDvY1uPkeoLqV9HDi',200,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIwMDAwQG5hdmVyLmNvbSIsIm1lbWJlcklkIjo2LCJpYXQiOjE3MjMyODAyOTAsImV4cCI6MTc1NDgxNjI5MH0.tKsYQG5x8489B5d4BDVKAZIvUiBoQtbfIQ4fOI6pqqlNenOXk0dDZ3ZKw6jAcjRDIZIhe-mEnbnix4RaK-M5VA',0,6,1),(7,'111@naver.com',25,0,'111','111','$2a$10$B9C5346S37YKrojjGd1cKu2oa6IbDBts.3LP8Ldyx1u7xYbpivyC.',0,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMTFAbmF2ZXIuY29tIiwibWVtYmVySWQiOjcsImlhdCI6MTcyMzA5NTg4OCwiZXhwIjoxNzU0NjMxODg4fQ.eHST1iNyUeA1f44O_b5DIb3vh6I-ClJzsHztkp7HYjecaufIdjwndg7n4ZtXcNjBHNsc_nMQtnIdOolwI8Eq7w',0,7,1),(8,'abab@naver.com',505,3,'김예원','4','$2a$10$yzRci/oZbzQuuBJwMg5n3OiTuvK/D1JWh/ueLAS0Q4rlNYCS7AqfS',3480,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhYmFiQG5hdmVyLmNvbSIsIm1lbWJlcklkIjo4LCJpYXQiOjE3MjMyOTU4ODAsImV4cCI6MTc1NDgzMTg4MH0.xn8dll26jQMmatz68ctgyWNyXgOh04ltuvBhYOSSldStiOpQ55Dnm3zres_O4t1tNw8rXU70n1Qm5xcVAx6NKA',0,8,1),(9,'jihyeon@naver.com',0,0,'jihyeon','jihyeon','$2a$10$.zKdSwzxP66X0Qdf8mOEEeAbXFeJ0A9WbxSSwkcPHHmEVFt8He/1i',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqaWh5ZW9uQG5hdmVyLmNvbSIsIm1lbWJlcklkIjo5LCJpYXQiOjE3MjMyNjcyMzgsImV4cCI6MTc1NDgwMzIzOH0.s_r6hvBPIJ_oDkItuB1nlE0U3V22BXGH1DmCrYqSA_vHkiQLY84JJy1abbSdnOSHTZDH0R8wD-5mrVeYoTMeRg',0,9,1),(10,'1016@naver.com',130,1,'김미량','1016','$2a$10$uc/ttXslFeioAvsddHZxm.xGaW8duQIZcDHJcVZ4CnhIO5NxWTIE.',240,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMDE2QG5hdmVyLmNvbSIsIm1lbWJlcklkIjoxMCwiaWF0IjoxNzIzNzA5MjIzLCJleHAiOjE3NTUyNDUyMjN9.1bKtAUUs4pkXF_9o0eoVv2gnGU8MHvjonBjZ1PbNgQ4p70mfSJIL8seR-ALSOzkwfAhjK9yIVAyKNND_hYR33w',1,10,1),(11,'11111@naver.com',395,2,'11111','aba','$2a$10$Y70Du7lNvIyiGru4EFCY2uYETJLhh3YKinbMkoeu77Ikd36WSdfq2',7000,'https://supia.s3.ap-northeast-2.amazonaws.com/profile/11.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMTExMUBuYXZlci5jb20iLCJtZW1iZXJJZCI6MTEsImlhdCI6MTcyMzcwOTI5OSwiZXhwIjoxNzU1MjQ1Mjk5fQ.zYrm4Z4OMn3TNnbjWvMzgVneRRLg-Yc86TD0XN2hKZWxSdZNxANoqjt-gqqMOk_Fb27nQHUIWy7LIUV7XqdesA',1,11,1),(12,'0125@naver.com',200,1,'미량','mill','$2a$10$6lYzrYtTKeDP8tywfcAwtemlGIV6ike2VbFNaEv2U3K6IbDab9LDS',1200,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIwMTI1QG5hdmVyLmNvbSIsIm1lbWJlcklkIjoxMiwiaWF0IjoxNzIzNzA4MTA3LCJleHAiOjE3NTUyNDQxMDd9.hJ-QMk2DwqbgiWoz922c2soFJoHO261driOFCl1yWCpfI2YZxU1J1oSB1lH86clWyI8EAB5x0EJwWjsC7uAqfA',1,12,1),(13,'rtcTest99@naver.com',5,0,'name','nickname','$2a$10$pjT7KzY8pwltN8XVPHX0O.Nf7ZlGjrQUASTjRSmWRm6LrROAbdkz6',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJydGNUZXN0OTlAbmF2ZXIuY29tIiwibWVtYmVySWQiOjEzLCJpYXQiOjE3MjM0MjUyMTcsImV4cCI6MTc1NDk2MTIxN30.Db-yGI7v1JUtN3zPc89YOUXXJo70NTJS8KtFDTEqNtYiTMmoLJ7THEqbzPCisTaqNEzZXPgvTXhC5ioE04CJkQ',0,13,0),(14,'test123@naver.com',10,0,'승주니','쭈니','$2a$10$/px2BoC/DFjtqI6P3INDouxYXKK0OyCG/vkhXBxPn8AcUORxnotSK',0,'https://supia.s3.ap-northeast-2.amazonaws.com/profile/14.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0MTIzQG5hdmVyLmNvbSIsIm1lbWJlcklkIjoxNCwiaWF0IjoxNzIzNDc2MzczLCJleHAiOjE3NTUwMTIzNzN9.jxM7_6c97-AQLa-kJW6IHsSWNAohAfc8d0PyQXUw_kUDxaMUzQ7jkM5a9Q8IHx95ewYF6COjeKdRYgyod6jXvw',0,14,0),(15,'jh@naver.com',5,0,'유지현','뚱땅','$2a$10$qnhrQBvwWf9O7xmCfNouCuvC50tyUyMv82tpXaRCF3423C5a19JRu',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJqaEBuYXZlci5jb20iLCJtZW1iZXJJZCI6MTUsImlhdCI6MTcyMzQ0OTYxOCwiZXhwIjoxNzU0OTg1NjE4fQ.hNeKNjTZdag38G-igUm7tBeoRVWuUjd2nsFTURlUAYwv8IiYwvQbP9UJERpALDGwJUJ8OVtmP5jen3_fHS5ftA',0,15,1),(16,'Hoho@naver.com',50,0,'이찬호','이찬호','$2a$10$rVJzfFQ.Nb8.AJfLEUiSWu6AY5GBIDY2HUEdDzWz2BXzCfr53.fe6',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJIb2hvQG5hdmVyLmNvbSIsIm1lbWJlcklkIjoxNiwiaWF0IjoxNzIzNjE0OTY0LCJleHAiOjE3NTUxNTA5NjR9.IXKnUS11JWJTLHYPHImdVDpBShvwJCDw52k8VD2H5veqjnQwfe-wgpC9p_Ja3pQb3__H6rgA9fx6nlOT3z8xWw',0,16,1),(17,'test100@naver.com',0,0,'test','test','$2a$10$SLNeLXcdPlx4EAizdJMLC.DW.35wzbsI31NuS2vtl6LQwb4/DS.Mm',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0MTAwQG5hdmVyLmNvbSIsIm1lbWJlcklkIjoxNywiaWF0IjoxNzIzNDY5NzIyLCJleHAiOjE3NTUwMDU3MjJ9.rag3_3o84vgVvxz9kumKnigTsa8k4KVMU9GJZs9DpZPpr-eLXpQyW55pjTuE5Lli26a4r424uBQxQkXpx1yLaA',0,17,0),(18,'test98@naver.com',0,0,'name','nickname','$2a$10$V2a6hqgFIu/JO5zP84PjfuQeQtr40KCFn.Ar2.FJULnwBuuceO4A.',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0OThAbmF2ZXIuY29tIiwibWVtYmVySWQiOjE4LCJpYXQiOjE3MjM0NzExMjYsImV4cCI6MTc1NTAwNzEyNn0.OmYKAJRdZHa1NCF9haCLgDq_zZYkv9EdZs0RSig4A2K73vVuV0NpgAbi7dAqWIBht5Zbg9zgcoDMyvfGxSvaZQ',0,18,0),(19,'12@12.com',5,0,'test12','test123','$2a$10$FeoV0rfnigkhrOj0sSWejeIc05pEM3jPjPbeNrxOzqg4cmjI3sbQy',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxMkAxMi5jb20iLCJtZW1iZXJJZCI6MTksImlhdCI6MTcyMzQ3NzE0NSwiZXhwIjoxNzU1MDEzMTQ1fQ.1nj9SO8YGlQ-mEya7-JfgUbtqj3iDBeeURTrCwPvLsb396dzhyvaZ5VMQa77y-2SS6jRnb0-vzr2gys4zK_5VA',0,19,0),(20,'test1@naver.com',0,0,'123','123','$2a$10$HdAwRidRbIHv.NUBaiGBlOP5kFTEhBxssux5hC4Rf0yZS4yk/Gh92',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0MUBuYXZlci5jb20iLCJtZW1iZXJJZCI6MjAsImlhdCI6MTcyMzQ3NzMyOCwiZXhwIjoxNzU1MDEzMzI4fQ.s9h4O2ubVH7T5X0Wj33mMZOTSpdftdJpfYDhAhhU_4vYmwI5AuBMaln8fdGcDJcQhqc0o-pSypROpFzESnjdyg',0,20,1),(21,'333@naver.com',15,0,'12345','12345','$2a$10$J.mLas0l6Ub4REDKns31PuxjoIbM6rj8RNYB38ggwMXOHB71NEsuG',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIzMzNAbmF2ZXIuY29tIiwibWVtYmVySWQiOjIxLCJpYXQiOjE3MjM1Mzg3MjcsImV4cCI6MTc1NTA3NDcyN30.MqzkXWNiNB8rw1tfo_gLRhOcmGI6M2MvVFnydOEWUeba0iNxh5_w6fDyYt5p6srZmzzNdmKNbGq-WQO9LVw9QA',0,21,0),(22,'15@ssafy.com',0,0,'김싸피','2d','$2a$10$XkMFpZP6e1vkTmdkZI7g1OMTrR9sbJt81tckuvlQ3NkzoqnH0twOC',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxNUBzc2FmeS5jb20iLCJtZW1iZXJJZCI6MjIsImlhdCI6MTcyMzYxMjczOCwiZXhwIjoxNzU1MTQ4NzM4fQ.vrzpmYV_AYfFlS0Bu7LZ7ruoiGeKA46Yk_YNGsw_RDSM85W5bZetNkRe4PEd51e3mfbVA-R5oU4fYQg1K-klEw',0,22,1),(23,'bb@naver.com',275,1,'Jh','Jh','$2a$10$gIEHR5Gtx43Tb6pKnHAu4OdoT07QNsn6WtFErs6qE.zEj8M3W3s5K',1400,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJiYkBuYXZlci5jb20iLCJtZW1iZXJJZCI6MjMsImlhdCI6MTcyMzY0NTAyNywiZXhwIjoxNzU1MTgxMDI3fQ.zNdKQpyL5IpF7LarQNfKszUUOcW9TI7R4RXNT6qH7iJBL4qoxbrDa75VUBOWpFyguK8LSRG2-QmAcwJGJdNp1g',1,23,1),(24,'',0,0,'','','$2a$10$n8temeBFVBhRJF2t1lM6pONWa484wxDinUNfQJmhSAAGZEK/HMDqu',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIiLCJtZW1iZXJJZCI6MjQsImlhdCI6MTcyMzY0MTAwNiwiZXhwIjoxNzU1MTc3MDA2fQ.hQKZUDjDX8w2sxFPBi2wUWu476F5CjZWTlWMKQXjwJPWJwk1E1hdhCF7rnEkffZndSQkyNuw5mPN2wFUhZFy8g',0,24,1),(25,'tmdwns@naver.com',65,0,'seungjun','seungjun122','$2a$10$SsKktuqp8YrpxdcgoHdAkuh71pXUpNzYqOVBlQETpRx1ljSpuDGLi',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0bWR3bnNAbmF2ZXIuY29tIiwibWVtYmVySWQiOjI1LCJpYXQiOjE3MjM3MDc0MTEsImV4cCI6MTc1NTI0MzQxMX0.Gq4bRMN3H9ErYplvSYy5fxgY3vTBwpCE42WplGc_7ASYT0DiIw6kbuX11oNt6dHQSmPKpZ_j7pQbtlA19p8zew',1,25,1),(26,'oo@naver.com ',65,0,'oo','Oo','$2a$10$qDBJ6xKwm6CB2zQEpxqmbO8sWUAGSwagUlt4Sl4y0qBAEuHDwq0HO',600,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJvb0BuYXZlci5jb20gIiwibWVtYmVySWQiOjI2LCJpYXQiOjE3MjM1NTczMzksImV4cCI6MTc1NTA5MzMzOX0.oQjksaED5V2hUS3SD-xEKS-OuTsCBmWKr4a2gDLRihJfgdc0WK3M5Al4-lg7A-ZYr1K4HeR4rXNqEsGIHvM1Jw',0,26,1),(27,'gg@gg.om',0,0,'abcdef','gg','$2a$10$Zen4c4yXar0rBfHVW8Xof.S7mmGiUFxRA1mla.x2ljwkzhpLS0b1y',0,'s3://supia/profile/default.png',NULL,0,27,1),(28,'qwerWd.vom',0,0,'qwer','qwer','$2a$10$9y52PnK.Gez0cLE8TU5tQuy4lIIrpeuCbmAEo0sPE..0WYnNV/CpG',0,'s3://supia/profile/default.png',NULL,0,28,1),(29,'rewq@g.com',30,0,'0100','qwerrr','$2a$10$R2VAoG2NIV.Q.Z85KbgRN.QUlPxNVqbuvIslUQyJS/WbJomkpGeGq',0,'https://supia.s3.ap-northeast-2.amazonaws.com/profile/29.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJyZXdxQGcuY29tIiwibWVtYmVySWQiOjI5LCJpYXQiOjE3MjM3MDg2NTQsImV4cCI6MTc1NTI0NDY1NH0.wr6ezj_8lEIT4LZhr3HWPMjFv0tZYWjcUuRC6YgQzMLqdAUw1V08pz7vNb5KItL03dUgjwvjKL2t7aymE2ni6w',1,29,1),(30,'test1234',25,0,'test1234','test1234','$2a$10$ToNetgdk5dlg4BgcxhAUc..AHsSpYkFV//cidU7bCKcNu.1rTRYgK',200,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ0ZXN0MTIzNCIsIm1lbWJlcklkIjozMCwiaWF0IjoxNzIzNjA4Njg3LCJleHAiOjE3NTUxNDQ2ODd9.6rCjDKI8XDkBigCLIs3PT0FuKLPfn7IHN82yB2UyM3GdcvyvU0HFdwm4J6_ovfoEcwGBFycZsVZ3BnFq_Py6YQ',0,30,1),(31,'Sj@sj.com',5,0,'Sj','Sjk','$2a$10$tbtjAij6kWEonPBKk7x4tumw59T8weGWELin3uiitb73/qT8PPLYi',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJTakBzai5jb20iLCJtZW1iZXJJZCI6MzEsImlhdCI6MTcyMzcwODc0MiwiZXhwIjoxNzU1MjQ0NzQyfQ.8hGsOr1zDSoIECES0mnG5TZmDSeZEYSfhgkPGG3YxYUK433EoCMdnlUoXjE9w7oLPs8yC0ZS06Sl3WUJyQlNwg',1,31,1),(32,'sj1@sj.com',5,0,'sj','sj','$2a$10$GU9EcxgGhZlPnP50q.8km.cDZhiYYpHM/9aM7.NUHNHxOKWyhbqwy',0,'s3://supia/profile/default.png','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJzajFAc2ouY29tIiwibWVtYmVySWQiOjMyLCJpYXQiOjE3MjM3MDYzNTEsImV4cCI6MTc1NTI0MjM1MX0.8VvJHWx3jWAr0S4fj-cHC6ibXYr7Q3zVkNQAGl4PvzGSYF7YzYaCkLioGvtFs1LstwsMXXDdzx9kliyDI7DNJQ',1,32,1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `from_member_delete` bit(1) NOT NULL,
  `is_check` bit(1) NOT NULL,
  `sent_time` datetime(6) DEFAULT NULL,
  `to_member_delete` bit(1) NOT NULL,
  `from_member_id` bigint DEFAULT NULL,
  `to_member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4cxpaa8qkx3dnvnk1cicqxbwr` (`from_member_id`),
  KEY `FKry90r1osli3dh2v49ivp6bswo` (`to_member_id`),
  CONSTRAINT `FK4cxpaa8qkx3dnvnk1cicqxbwr` FOREIGN KEY (`from_member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKry90r1osli3dh2v49ivp6bswo` FOREIGN KEY (`to_member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,1,'하이',_binary '\0',_binary '\0','2024-08-07 12:47:57.817045',_binary '\0',1,2),(2,1,'안녕',_binary '\0',_binary '\0','2024-08-07 12:51:35.779073',_binary '\0',1,2),(3,1,'안녕 못함',_binary '\0',_binary '\0','2024-08-07 12:52:56.119649',_binary '\0',1,2),(4,1,'하이',_binary '\0',_binary '\0','2024-08-08 01:57:52.148176',_binary '\0',1,2),(5,1,'바보',_binary '',_binary '\0','2024-08-08 02:01:58.313330',_binary '\0',6,7),(6,1,'예원아 안녕',_binary '',_binary '\0','2024-08-08 02:24:38.299659',_binary '\0',6,7),(7,1,'졸려',_binary '',_binary '\0','2024-08-08 04:02:31.148904',_binary '\0',6,7),(8,1,'된건가...',_binary '',_binary '\0','2024-08-08 04:53:06.799496',_binary '\0',6,8),(9,1,'why hangul an ssu jiji..',_binary '\0',_binary '','2024-08-08 04:56:42.484430',_binary '',8,6),(10,1,'huk!\nthen da!',_binary '\0',_binary '','2024-08-08 04:57:10.918184',_binary '',8,6),(11,1,'안녕\n그래서 큰! 잘했어요\n이게 무슨 번역인가',_binary '\0',_binary '\0','2024-08-08 05:00:09.497694',_binary '',8,6),(12,1,'8번 김예원',_binary '',_binary '\0','2024-08-08 07:29:31.899146',_binary '\0',6,8),(13,1,'테스트',_binary '',_binary '\0','2024-08-08 08:30:04.755203',_binary '\0',6,8),(14,1,'안녕',_binary '',_binary '\0','2024-08-08 08:39:29.619354',_binary '\0',6,8),(15,1,'하',_binary '',_binary '\0','2024-08-08 10:22:35.910905',_binary '\0',6,8),(16,1,'다시',_binary '',_binary '\0','2024-08-08 10:22:42.712774',_binary '\0',6,8),(17,1,'hihi\nbyebye',_binary '\0',_binary '','2024-08-08 10:22:48.768259',_binary '\0',8,6),(18,1,'시작',_binary '',_binary '\0','2024-08-08 10:22:53.291838',_binary '\0',6,8),(19,1,'wow',_binary '\0',_binary '\0','2024-08-08 10:22:56.945449',_binary '',8,6),(20,1,'great',_binary '\0',_binary '\0','2024-08-08 10:23:09.396489',_binary '',8,6),(21,1,'amazing!',_binary '\0',_binary '\0','2024-08-08 10:23:20.931695',_binary '',8,6),(22,1,'????',_binary '\0',_binary '','2024-08-08 10:23:30.924988',_binary '',8,6),(23,1,'?????????',_binary '\0',_binary '','2024-08-08 10:23:42.321908',_binary '\0',8,6),(24,1,'사진이',_binary '',_binary '\0','2024-08-08 11:07:48.613608',_binary '\0',6,8),(25,1,'왜 안나올까',_binary '',_binary '\0','2024-08-08 11:07:58.493124',_binary '\0',6,8),(26,1,'예원아',_binary '\0',_binary '\0','2024-08-08 11:29:11.918530',_binary '\0',6,8),(27,1,'날 살려줘',_binary '\0',_binary '\0','2024-08-08 11:29:18.877015',_binary '\0',6,8),(28,1,'예원이 바보',_binary '\0',_binary '\0','2024-08-08 12:15:57.435884',_binary '\0',6,8),(29,1,'답장!',_binary '\0',_binary '\0','2024-08-08 13:44:41.176709',_binary '\0',6,8),(30,1,'djdjdjdjej',_binary '\0',_binary '\0','2024-08-09 00:48:06.399187',_binary '\0',6,8),(31,1,'랴갹',_binary '\0',_binary '\0','2024-08-09 02:09:20.206770',_binary '\0',6,8),(32,3,'김싸피님이 친구를 요청하셨습니다.',_binary '\0',_binary '\0','2024-08-09 08:26:25.055626',_binary '\0',1,2),(33,3,'김싸피님이 친구를 요청하셨습니다.',_binary '\0',_binary '\0','2024-08-09 08:26:37.676659',_binary '\0',1,8),(34,3,'1234님이 친구를 요청하셨습니다.',_binary '\0',_binary '\0','2024-08-09 08:30:18.875868',_binary '\0',5,8),(35,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1100_동물_dog.png',_binary '\0',_binary '\0','2024-08-09 23:51:29.441398',_binary '\0',8,7),(36,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1100_동물_dog.png',_binary '\0',_binary '\0','2024-08-09 23:51:57.193892',_binary '\0',8,6),(37,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0738_식물_sunflower.png',_binary '\0',_binary '\0','2024-08-10 00:05:13.639870',_binary '\0',8,6),(38,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1106_동물_dog.png',_binary '\0',_binary '\0','2024-08-10 00:07:05.467972',_binary '\0',8,6),(39,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0910_식물_dandelion.png',_binary '\0',_binary '\0','2024-08-10 00:23:03.391926',_binary '\0',8,6),(40,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0910_식물_dandelion.png',_binary '\0',_binary '\0','2024-08-10 00:23:03.663325',_binary '\0',8,6),(41,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0910_식물_dandelion.png',_binary '\0',_binary '\0','2024-08-10 00:23:04.169236',_binary '\0',8,6),(42,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0910_식물_dandelion.png',_binary '\0',_binary '\0','2024-08-10 00:23:05.073225',_binary '\0',8,6),(43,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0911_곤충_grasshopper.png',_binary '\0',_binary '\0','2024-08-10 00:25:55.870005',_binary '\0',8,6),(44,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0912_곤충_dragonfly.png',_binary '\0',_binary '\0','2024-08-10 00:27:08.813208',_binary '\0',8,6),(46,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_0929_동물_bird.png',_binary '\0',_binary '\0','2024-08-10 07:33:06.874170',_binary '\0',8,6),(50,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-10 12:03:46.383442',_binary '\0',10,8),(52,3,'1234님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-10 12:07:35.734978',_binary '\0',2,10),(53,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-10 12:12:09.225041',_binary '\0',10,8),(54,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-10 12:12:25.978330',_binary '\0',10,2),(55,3,'1234님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-10 12:12:35.243199',_binary '\0',3,10),(56,3,'1234님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-10 12:12:38.353381',_binary '\0',4,10),(57,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1638_곤충_grasshopper.png',_binary '\0',_binary '','2024-08-10 12:54:21.006167',_binary '\0',8,10),(62,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-10 14:07:12.243290',_binary '\0',10,8),(64,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-10 14:18:18.061165',_binary '\0',10,9),(65,1,'지현이랑 친구 됐다!!',_binary '\0',_binary '\0','2024-08-10 14:20:35.572229',_binary '\0',10,9),(66,1,'메세지 잘 가나요~',_binary '\0',_binary '','2024-08-10 14:40:46.222603',_binary '\0',9,11),(67,1,'메시지가 지금 어디로 가니 ..?',_binary '\0',_binary '\0','2024-08-10 14:44:49.442515',_binary '\0',10,9),(68,3,'김예원님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-10 14:54:11.927718',_binary '\0',8,10),(71,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-10 15:07:50.835669',_binary '\0',10,11),(73,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-10 15:09:56.695767',_binary '\0',10,9),(74,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1732_곤충_butterfly.png',_binary '\0',_binary '','2024-08-10 17:39:24.750519',_binary '\0',8,10),(76,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-11 06:01:58.813576',_binary '\0',10,9),(78,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-11 06:04:54.997133',_binary '\0',10,11),(80,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-11 06:34:29.890664',_binary '\0',10,12),(81,1,'안녕',_binary '',_binary '','2024-08-11 09:02:43.346131',_binary '',12,10),(82,1,'나 바쁘다',_binary '',_binary '','2024-08-11 09:02:49.408656',_binary '',12,10),(83,1,'이번 것도 빠르게 끝내보자^^',_binary '',_binary '','2024-08-11 09:02:59.480132',_binary '',12,10),(84,1,'마지막이라고 해줘',_binary '',_binary '','2024-08-11 09:17:51.904318',_binary '',12,10),(85,1,'문자 그만 보내게 해줘 ....',_binary '',_binary '','2024-08-11 09:18:02.933585',_binary '',12,10),(86,1,'잠온다',_binary '\0',_binary '\0','2024-08-11 15:41:26.261576',_binary '',10,12),(87,1,'안녕',_binary '\0',_binary '\0','2024-08-12 03:15:39.435137',_binary '',10,12),(88,1,'되는거지',_binary '\0',_binary '\0','2024-08-12 04:43:01.493731',_binary '\0',6,8),(89,1,'ㄹㄹ',_binary '\0',_binary '\0','2024-08-12 04:45:07.178041',_binary '\0',6,8),(90,1,'Hihi',_binary '\0',_binary '\0','2024-08-13 01:21:04.293054',_binary '\0',11,10),(91,1,'Woe',_binary '\0',_binary '\0','2024-08-13 01:21:13.129925',_binary '\0',11,10),(92,1,'???',_binary '\0',_binary '\0','2024-08-13 01:21:23.461210',_binary '\0',11,10),(96,1,'HEllo!',_binary '\0',_binary '\0','2024-08-13 04:09:07.113339',_binary '\0',12,10),(97,3,'11111님이 친구를 요청하셨습니다.',_binary '\0',_binary '\0','2024-08-13 04:25:39.746198',_binary '\0',11,21),(99,3,'김미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-13 04:26:16.025642',_binary '\0',10,11),(102,3,'11111님이 친구를 요청하셨습니다.',_binary '\0',_binary '\0','2024-08-13 04:53:38.869172',_binary '\0',11,20),(103,3,'11111님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-13 04:54:25.967590',_binary '\0',11,11),(117,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '','2024-08-13 06:43:17.138302',_binary '\0',2,12),(119,3,'seungjun님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-13 13:25:00.060176',_binary '\0',25,12),(120,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '\0','2024-08-14 00:17:49.960982',_binary '\0',1,16),(121,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '\0','2024-08-14 00:19:38.174761',_binary '\0',1,16),(122,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '\0','2024-08-14 00:41:58.416759',_binary '\0',1,16),(123,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '\0','2024-08-14 01:44:07.123089',_binary '\0',1,16),(124,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '\0','2024-08-14 02:01:10.383837',_binary '\0',1,16),(125,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '\0','2024-08-14 02:02:22.875831',_binary '\0',1,16),(127,3,'Jh님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-14 03:21:34.315038',_binary '\0',23,12),(128,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1116_기타_unknown.png',_binary '\0',_binary '\0','2024-08-14 03:22:13.485522',_binary '\0',12,23),(129,1,'하이티비',_binary '\0',_binary '\0','2024-08-14 03:37:15.724616',_binary '',23,12),(130,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.084561',_binary '',23,12),(131,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.089190',_binary '',23,12),(132,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.202167',_binary '',23,12),(133,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.208445',_binary '',23,12),(134,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.282891',_binary '',23,12),(135,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.283158',_binary '',23,12),(136,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.369956',_binary '',23,12),(137,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.370228',_binary '',23,12),(138,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.442226',_binary '',23,12),(139,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.447307',_binary '',23,12),(140,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.520604',_binary '',23,12),(141,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.528507',_binary '',23,12),(142,1,'메세지',_binary '\0',_binary '\0','2024-08-14 03:41:28.632099',_binary '',23,12),(143,1,'ㅎㅇ',_binary '\0',_binary '','2024-08-14 03:44:15.851840',_binary '\0',23,12),(144,1,'Sjdjd',_binary '\0',_binary '\0','2024-08-14 04:05:27.094259',_binary '\0',12,10),(145,1,'Tft',_binary '\0',_binary '\0','2024-08-14 04:05:47.604035',_binary '\0',6,8),(146,1,'sse 제바루ㅜ',_binary '\0',_binary '\0','2024-08-14 04:33:45.333024',_binary '\0',10,12),(147,1,'sse ,,',_binary '\0',_binary '\0','2024-08-14 04:34:06.776490',_binary '\0',10,12),(148,1,'sse!!',_binary '\0',_binary '','2024-08-14 04:35:12.247716',_binary '\0',10,12),(149,1,'흠 ..',_binary '\0',_binary '\0','2024-08-14 04:35:46.661124',_binary '\0',10,12),(150,1,'흠 ..',_binary '\0',_binary '','2024-08-14 04:36:45.392735',_binary '\0',11,12),(151,1,'흐으으음',_binary '\0',_binary '\0','2024-08-14 04:37:50.076542',_binary '\0',11,12),(153,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_2024-08-12_15:46:37_기타_mosquito.png',_binary '\0',_binary '','2024-08-14 04:42:21.678171',_binary '\0',11,10),(154,3,'123님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-14 04:44:32.574774',_binary '\0',20,12),(155,3,'12345님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-14 04:45:02.938431',_binary '\0',21,12),(156,1,'sse!',_binary '\0',_binary '\0','2024-08-14 04:47:38.806915',_binary '\0',10,12),(157,3,'test12님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-14 04:49:13.943118',_binary '\0',19,12),(158,1,'message sse 성공!',_binary '\0',_binary '\0','2024-08-14 04:56:55.984394',_binary '\0',10,12),(159,1,'message sse 성공!',_binary '\0',_binary '\0','2024-08-14 04:57:10.873225',_binary '\0',11,12),(160,1,'msg sse 성공!',_binary '\0',_binary '\0','2024-08-14 04:57:56.244656',_binary '\0',11,12),(161,3,'test님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-14 04:58:53.564374',_binary '\0',17,12),(163,3,'name님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-14 05:15:49.772983',_binary '\0',13,12),(164,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '','2024-08-14 05:19:10.675611',_binary '\0',2,12),(165,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '','2024-08-14 05:23:03.728377',_binary '\0',2,12),(167,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_동물_dog.png',_binary '\0',_binary '','2024-08-14 05:34:49.670726',_binary '\0',2,12),(168,1,'msg sse 성공!',_binary '\0',_binary '\0','2024-08-14 05:41:49.304819',_binary '\0',11,12),(170,1,'ㅎㅇ',_binary '\0',_binary '\0','2024-08-14 05:56:26.288556',_binary '\0',16,12),(171,1,'ㅎㅇ',_binary '\0',_binary '\0','2024-08-14 05:56:34.925199',_binary '\0',16,12),(172,1,'키키',_binary '\0',_binary '\0','2024-08-14 06:00:52.756228',_binary '\0',16,10),(173,1,'H',_binary '\0',_binary '\0','2024-08-14 13:18:22.554681',_binary '\0',6,8),(174,1,'12',_binary '\0',_binary '\0','2024-08-14 13:19:02.851476',_binary '\0',11,2),(175,1,'2',_binary '\0',_binary '\0','2024-08-14 13:19:13.024317',_binary '\0',11,2),(176,3,'미량님이 친구를 요청하셨습니다.',_binary '\0',_binary '','2024-08-14 14:06:22.570564',_binary '\0',12,11),(178,4,'010님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-14 14:08:03.246864',_binary '\0',29,12),(179,1,'2',_binary '\0',_binary '\0','2024-08-14 14:38:50.421473',_binary '\0',11,3),(180,1,'qw',_binary '\0',_binary '\0','2024-08-14 14:49:37.037179',_binary '\0',11,2),(181,1,'qq',_binary '\0',_binary '\0','2024-08-14 14:49:49.772332',_binary '\0',11,2),(182,4,'미량님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-14 14:59:14.798217',_binary '\0',12,16),(183,1,'111',_binary '\0',_binary '\0','2024-08-14 15:03:18.224525',_binary '\0',11,2),(184,1,'제발',_binary '\0',_binary '','2024-08-14 18:18:24.582885',_binary '\0',12,29),(185,1,'ㅎㅇ\n',_binary '\0',_binary '','2024-08-14 19:54:04.868332',_binary '\0',11,12),(186,1,'Sse',_binary '\0',_binary '\0','2024-08-14 19:54:47.681723',_binary '\0',6,8),(187,1,'제바류ㅠㅠㅠㅜㅠ',_binary '\0',_binary '','2024-08-14 19:56:34.774267',_binary '\0',12,11),(190,2,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1217_기타_unknown.png',_binary '\0',_binary '','2024-08-14 20:21:00.759751',_binary '\0',12,29),(191,1,'Djdudjdj',_binary '\0',_binary '','2024-08-14 20:24:24.986248',_binary '\0',10,29),(192,1,'sss',_binary '\0',_binary '\0','2024-08-14 20:25:27.110311',_binary '\0',6,8),(193,1,'진짜로',_binary '\0',_binary '\0','2024-08-14 20:26:17.219492',_binary '\0',6,8),(194,1,'진짜로',_binary '\0',_binary '\0','2024-08-14 20:26:41.189622',_binary '\0',6,8),(195,1,'왜',_binary '\0',_binary '\0','2024-08-14 20:27:08.964030',_binary '\0',6,8),(196,1,'선물',_binary '\0',_binary '\0','2024-08-14 20:30:56.883913',_binary '\0',6,8),(197,1,'짘짜',_binary '\0',_binary '\0','2024-08-14 20:31:04.764684',_binary '\0',6,8),(198,1,'왜',_binary '\0',_binary '\0','2024-08-14 20:31:41.000912',_binary '\0',6,8),(199,1,'dd',_binary '\0',_binary '\0','2024-08-14 20:32:03.020493',_binary '\0',29,6),(200,1,'예',_binary '\0',_binary '','2024-08-14 20:32:35.123366',_binary '\0',29,10),(201,1,'원',_binary '\0',_binary '\0','2024-08-14 20:32:58.802685',_binary '\0',6,8),(202,1,'원',_binary '\0',_binary '\0','2024-08-14 20:33:47.648864',_binary '\0',6,8),(205,4,'sj님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-14 21:32:45.815782',_binary '\0',32,31),(206,4,'sj님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '\0','2024-08-15 00:05:03.145724',_binary '\0',32,32),(207,1,'heelllllpopppeopeope',_binary '\0',_binary '','2024-08-15 00:05:24.316577',_binary '\0',32,31),(208,1,'heelllllpopppeopeope',_binary '\0',_binary '\0','2024-08-15 00:05:34.495876',_binary '\0',32,31),(209,1,'22',_binary '\0',_binary '\0','2024-08-15 07:28:47.778856',_binary '\0',29,11),(210,1,'22',_binary '\0',_binary '\0','2024-08-15 07:29:06.972181',_binary '\0',29,11),(211,1,'..\n',_binary '\0',_binary '\0','2024-08-15 07:29:22.729052',_binary '\0',29,11),(213,3,'0100님이 친구를 요청하셨습니다.',_binary '\0',_binary '\0','2024-08-15 07:58:36.000193',_binary '\0',29,32),(214,4,'Sj님이 친구 요청을 수락하셨습니다.',_binary '\0',_binary '','2024-08-15 07:59:10.223487',_binary '\0',31,29);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `own_bgi`
--

DROP TABLE IF EXISTS `own_bgi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `own_bgi` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bgi_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoxc14s4cubjp39e951nvw6w2l` (`bgi_id`),
  KEY `FKnorgc51spsgujilu2nxaueoc8` (`member_id`),
  CONSTRAINT `FKnorgc51spsgujilu2nxaueoc8` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKoxc14s4cubjp39e951nvw6w2l` FOREIGN KEY (`bgi_id`) REFERENCES `bgi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `own_bgi`
--

LOCK TABLES `own_bgi` WRITE;
/*!40000 ALTER TABLE `own_bgi` DISABLE KEYS */;
INSERT INTO `own_bgi` VALUES (1,1,6),(2,5,6),(3,1,8),(4,2,8),(6,3,8),(7,1,11),(8,1,10),(9,2,11),(10,1,23),(11,1,23),(12,2,10);
/*!40000 ALTER TABLE `own_bgi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `own_bgm`
--

DROP TABLE IF EXISTS `own_bgm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `own_bgm` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bgm_id` bigint DEFAULT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoyiqgw56fg542awfnad0fmtyh` (`bgm_id`),
  KEY `FKf7t7v3v162krljta4b347cf4m` (`member_id`),
  CONSTRAINT `FKf7t7v3v162krljta4b347cf4m` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `FKoyiqgw56fg542awfnad0fmtyh` FOREIGN KEY (`bgm_id`) REFERENCES `bgm` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `own_bgm`
--

LOCK TABLES `own_bgm` WRITE;
/*!40000 ALTER TABLE `own_bgm` DISABLE KEYS */;
INSERT INTO `own_bgm` VALUES (1,2,6),(2,1,6),(3,6,6),(4,1,8),(5,2,8),(6,6,8),(7,2,10),(8,1,11),(9,3,11),(10,3,10);
/*!40000 ALTER TABLE `own_bgm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_history`
--

DROP TABLE IF EXISTS `purchase_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_history` (
  `purchase_id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_date` datetime(6) DEFAULT NULL,
  `theme_id` bigint DEFAULT NULL,
  `theme_type` int NOT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`purchase_id`),
  KEY `FK8u1bjhwjddya18j3vfa4f9amq` (`member_id`),
  CONSTRAINT `FK8u1bjhwjddya18j3vfa4f9amq` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_history`
--

LOCK TABLES `purchase_history` WRITE;
/*!40000 ALTER TABLE `purchase_history` DISABLE KEYS */;
INSERT INTO `purchase_history` VALUES (1,'2024-08-09 05:18:31.251908',1,2,6),(2,'2024-08-09 05:19:00.011187',2,1,6),(3,'2024-08-09 13:53:04.344897',5,2,6),(4,'2024-08-09 13:58:19.828759',1,1,6),(5,'2024-08-09 14:05:27.813033',6,1,6),(6,'2024-08-10 05:27:09.406983',1,2,8),(7,'2024-08-10 06:15:14.148752',2,2,8),(8,'2024-08-10 06:15:17.416475',2,2,8),(9,'2024-08-10 06:15:20.639888',3,2,8),(10,'2024-08-10 08:34:53.725598',1,1,8),(11,'2024-08-10 08:34:55.676744',2,1,8),(12,'2024-08-10 08:34:57.888014',6,1,8),(13,'2024-08-11 14:48:52.809938',1,2,11),(14,'2024-08-12 03:12:45.998212',1,2,10),(15,'2024-08-12 03:13:18.256349',2,1,10),(16,'2024-08-12 05:55:51.445987',1,1,11),(17,'2024-08-12 05:55:54.434391',3,1,11),(18,'2024-08-13 05:16:07.697663',2,2,11),(19,'2024-08-14 01:49:15.976421',1,2,23),(20,'2024-08-14 01:49:15.979055',1,2,23),(21,'2024-08-14 20:29:17.815251',2,2,10),(22,'2024-08-14 20:29:28.459381',3,1,10);
/*!40000 ALTER TABLE `purchase_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species`
--

DROP TABLE IF EXISTS `species`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `representative_img` varchar(255) DEFAULT NULL,
  `sound` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species`
--

LOCK TABLES `species` WRITE;
/*!40000 ALTER TABLE `species` DISABLE KEYS */;
INSERT INTO `species` VALUES (1,'','사용자가 등록한 아이템입니다.','digital_clock','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1447_animal_digital_clock.png',''),(2,'','사용자가 등록한 아이템입니다.','television','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1448_animal_television.png',''),(3,'','사용자가 등록한 아이템입니다.','handkerchief','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1449_animal_handkerchief.png',''),(4,'','사용자가 등록한 아이템입니다.','window_shade','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1449_animal_window_shade.png',''),(5,'','사용자가 등록한 아이템입니다.','abaya','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1458_animal_abaya.png',''),(6,'','사용자가 등록한 아이템입니다.','modem','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1524_animal_modem.png',''),(7,'','사용자가 등록한 아이템입니다.','notebook','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240808_1525_animal_notebook.png',''),(8,'','사용자가 등록한 아이템입니다.','daisy','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0118_animal_daisy.png',''),(9,'','사용자가 등록한 아이템입니다.','bubble','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0125_animal_bubble.png',''),(10,'동물','bird입니다.','새','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/bird.png','https://supia.s3.ap-northeast-2.amazonaws.com/item/sound/bird.mp3'),(11,'동물','cat입니다.','고양이','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/cat.png','https://supia.s3.ap-northeast-2.amazonaws.com/item/sound/cat.mp3'),(12,'동물','dog입니다.','강아지','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/dog.png','https://supia.s3.ap-northeast-2.amazonaws.com/item/sound/dog.mp3'),(13,'곤충','Butterfly입니다.','나비','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/butterfly.png',''),(14,'곤충','Dragonfly입니다.','잠자리','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/dragonfly.png',''),(15,'곤충','Grasshopper입니다.','메뚜기','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/grasshopper.png',''),(16,'곤충','Ladybird입니다.','무당벌레','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/ladybird.png',''),(17,'곤충','Mosquito입니다.','모기','s3://supia/item/illustrated/123_240806_1047_animal_cougar.png',''),(18,'식물','daisy입니다.','데이지','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/daisy.png',''),(19,'식물','dandelion입니다.','민들레','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/dandelion.png',''),(20,'식물','rose입니다.','장미','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/rose.png',''),(21,'식물','sunflower입니다.','해바라기','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/sunflower.png',''),(22,'식물','tulip입니다.','튤립','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/tulip.png',''),(23,'','사용자가 등록한 아이템입니다.','necklace','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0945_animal_necklace.png',''),(24,'','사용자가 등록한 아이템입니다.','sweatshirt','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_0105_animal_sweatshirt.png',''),(25,'','사용자가 등록한 아이템입니다.','2','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1022_동물_dog.png',''),(26,'','사용자가 등록한 아이템입니다.','1','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1030_동물_dog.png',''),(27,'','사용자가 등록한 아이템입니다.','3','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240809_1051_곤충_butterfly.png',''),(28,'기타','사용자가 등록한 아이템입니다.','unknown','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/1_240810_1445_곤충_butterfly.png',''),(29,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_2024-08-12_15:46:37_기타_mosquito.png',''),(30,'기타','사용자가 등록한 아이템입니다.','마우스','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1404_기타_mosquito.png',''),(31,'기타','사용자가 등록한 아이템입니다.','종이컵','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1405_기타_mosquito.png',''),(32,'기타','사용자가 등록한 아이템입니다.','에어팟','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1413_기타_cat.png',''),(33,'기타','사용자가 등록한 아이템입니다.','폰','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1603_기타_unknown.png',''),(34,'기타','사용자가 등록한 아이템입니다.','사피니아','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1616_식물_사피니아.png',''),(35,'기타','사용자가 등록한 아이템입니다.','흰꽃','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1618_기타_unknown.png',''),(36,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1636_기타_unknown.png',''),(37,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1742_기타_unknown.png',''),(38,'기타','사용자가 등록한 아이템입니다.','달팽이','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240813_1744_동물_달팽이.png',''),(39,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1047_기타_unknown.png',''),(40,'기타','사용자가 등록한 아이템입니다.','콩떡','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1116_기타_unknown.png',''),(41,'기타','사용자가 등록한 아이템입니다.','파란꽃','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1217_기타_unknown.png',''),(42,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1240_기타_unknown.png',''),(43,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/null_240814_1309_기타_unknown.png',''),(44,'기타','사용자가 등록한 아이템입니다.','립밤','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/12_240814_1620_기타_unknown.png',''),(45,'기타','사용자가 등록한 아이템입니다.','누구','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1935_기타_unknown.png',''),(46,'기타','사용자가 등록한 아이템입니다.','사마귀','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1937_기타_unknown.png',''),(47,'기타','사용자가 등록한 아이템입니다.','거미','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_1939_기타_unknown.png',''),(48,'기타','사용자가 등록한 아이템입니다.','판다ㅏ','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2006_기타_unknown.png',''),(49,'기타','사용자가 등록한 아이템입니다.','선인장','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2054_기타_unknown.png',''),(50,'기타','사용자가 등록한 아이템입니다.','선인쟝','https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240814_2057_기타_unknown.png',''),(51,'식물','바질입니다.','바질','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/basil.png',NULL),(52,'식물','선인장입니다.','선인장','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/cactus.png',NULL),(53,'동물','개구리입니다.','개구리','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/frog.png','https://supia.s3.ap-northeast-2.amazonaws.com/item/sound/frog.mp3'),(54,'식물','메리골드입니다.','메리골드','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/marigold.png',NULL),(55,'동물','달팽이입니다.','달팽이','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/snail.png',NULL),(56,'곤충','사슴벌레입니다.','사슴벌레','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/stag_beetle.png',NULL),(57,'식물','사피니아입니다.','사피니아','https://supia.s3.ap-northeast-2.amazonaws.com/item/species_default_img/surfinia.png',NULL),(58,'기타','사용자가 등록한 아이템입니다.',NULL,'https://supia.s3.ap-northeast-2.amazonaws.com/item/illustrated/11_240815_0049_기타_unknown.png','');
/*!40000 ALTER TABLE `species` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `species_items`
--

DROP TABLE IF EXISTS `species_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `species_items` (
  `species_id` bigint NOT NULL,
  `items_id` bigint NOT NULL,
  UNIQUE KEY `UK2jygs9nr61280rmcn18aqf3hs` (`items_id`),
  KEY `FKvi0ifdxugf0buqs4b3um2v7v` (`species_id`),
  CONSTRAINT `FK703o6n3vgxbrm6crr0tx0r5gj` FOREIGN KEY (`items_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FKvi0ifdxugf0buqs4b3um2v7v` FOREIGN KEY (`species_id`) REFERENCES `species` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `species_items`
--

LOCK TABLES `species_items` WRITE;
/*!40000 ALTER TABLE `species_items` DISABLE KEYS */;
INSERT INTO `species_items` VALUES (1,1),(1,2),(1,8),(1,9),(1,12),(2,3),(2,4),(2,13),(3,5),(4,6),(5,7),(6,10),(7,11),(8,14),(8,15),(9,16),(10,31),(10,35),(10,59),(10,104),(11,109),(11,111),(11,120),(12,24),(12,25),(12,57),(12,73),(13,36),(14,29),(14,32),(14,116),(14,118),(15,28),(15,30),(15,33),(17,60),(18,34),(18,74),(18,75),(18,87),(19,27),(19,77),(19,79),(20,80),(20,81),(20,84),(20,85),(20,89),(20,90),(20,95),(20,96),(20,99),(20,105),(20,106),(21,26),(21,76),(21,78),(21,82),(21,83),(21,86),(21,97),(21,101),(21,102),(21,112),(23,17),(24,18),(25,19),(26,20),(26,21),(26,22),(27,23),(28,37),(28,38),(28,39),(28,40),(28,41),(28,42),(28,43),(28,44),(28,45),(28,46),(28,47),(28,48),(28,49),(28,50),(28,51),(28,52),(28,53),(28,54),(28,55),(28,56),(29,58),(30,61),(31,62),(31,70),(31,94),(32,63),(33,64),(34,65),(35,66),(35,67),(35,68),(36,69),(37,71),(38,72),(38,100),(39,88),(40,93),(41,98),(41,110),(42,103),(43,107),(44,108),(45,113),(46,114),(47,115),(47,117),(48,119),(49,121),(50,122),(58,123);
/*!40000 ALTER TABLE `species_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk`
--

DROP TABLE IF EXISTS `walk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `walk` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `distance` double NOT NULL,
  `walk_date` date DEFAULT NULL,
  `walk_time` bigint NOT NULL,
  `member_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhj3h76rpdg06abb79n0d22np` (`member_id`),
  CONSTRAINT `FKhj3h76rpdg06abb79n0d22np` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk`
--

LOCK TABLES `walk` WRITE;
/*!40000 ALTER TABLE `walk` DISABLE KEYS */;
INSERT INTO `walk` VALUES (1,0,'2024-08-08',7,8),(2,4,'2024-08-08',189,8),(3,0,'2024-08-08',17,8),(4,1,'2024-08-08',45,8),(5,0,'2024-08-08',11,8),(6,0,'2024-08-08',11,8),(7,0,'2024-08-08',19,8),(8,1,'2024-08-08',3,8),(9,22,'2024-08-08',38,8),(10,9,'2024-08-08',34,8),(11,9,'2024-08-08',126,8),(12,0,'2024-08-09',48,8),(13,2,'2024-08-09',260,8),(14,0,'2024-08-09',73,8),(15,0,'2024-08-09',141,8),(16,0,'2024-08-09',1,8),(17,0,'2024-08-09',13,8),(18,0,'2024-08-09',112,8),(19,2,'2024-08-09',97,8),(20,0,'2024-08-09',37,8),(21,1,'2024-08-09',78,8),(22,0,'2024-08-07',12,8),(23,604,'2024-08-09',284,8),(24,0,'2024-08-09',112,8),(25,0,'2024-08-09',50,8),(26,0,'2024-08-09',59,8),(27,120,'2024-08-09',88,8),(28,36,'2024-08-09',16,8),(29,145,'2024-08-09',29,8),(30,8,'2024-08-09',383,8),(31,15,'2024-08-09',386,8),(32,5,'2024-08-09',171,8),(33,0,'2024-08-10',123,8),(34,0,'2024-08-10',150,8),(35,0,'2024-08-10',154,8),(36,0,'2024-08-10',230,8),(37,0,'2024-08-10',21,8),(38,0,'2024-08-10',23,8),(39,0,'2024-08-10',33,8),(40,2,'2024-08-11',296,8),(41,4,'2024-08-11',298,8),(42,0,'2024-08-11',134,8),(43,5,'2024-08-10',316,8),(44,0,'2024-08-10',53,11),(45,0,'2024-08-11',11,11),(46,0,'2024-08-11',11,11),(47,0,'2024-08-08',481,11),(48,1,'2024-08-11',668,11),(49,1,'2024-08-11',224,11),(50,2,'2024-08-11',225,11),(51,45,'2024-08-11',100,11),(52,0,'2024-08-11',243,11),(53,0,'2024-08-11',244,11),(54,0,'2024-08-11',48,11),(55,0,'2024-08-11',9,11),(56,0,'2024-08-11',124,11),(57,29,'2024-08-11',103,11),(58,173,'2024-08-11',52,11),(59,0,'2024-08-11',16,11),(60,0,'2024-08-11',18,11),(61,0,'2024-08-11',30,11),(62,1,'2024-08-11',118,11),(63,11,'2024-08-11',109,11),(64,0,'2024-08-12',36,11),(65,1,'2024-08-08',60,11),(66,0,'2024-08-12',67,11),(67,0,'2024-08-12',69,11),(68,0,'2024-08-12',2,11),(69,0,'2024-08-12',3,11),(70,0,'2024-08-12',3,11),(71,0,'2024-08-12',70,11),(72,0,'2024-08-08',53,11),(73,0,'2024-08-08',36,11),(74,0,'2024-08-12',4,11),(75,0,'2024-08-08',321,10),(76,31,'2024-08-08',22,10),(77,1488,'2024-08-08',838,10),(78,36,'2024-08-12',848,10),(79,13,'2024-08-08',970,10),(80,0,'2024-08-12',67,11),(83,0,'2024-08-13',100,10),(84,0,'2024-08-13',96,10),(85,0,'2024-08-13',2,11),(86,0,'2024-08-13',66,11),(87,0,'2024-08-13',68,11),(88,0,'2024-08-13',69,11),(89,0,'2024-08-13',246,11),(90,0,'2024-08-13',361,11),(91,0,'2024-08-13',362,11),(92,0,'2024-08-13',4,11),(93,0,'2024-08-13',52,11),(94,0,'2024-08-13',250,11),(95,0,'2024-08-13',280,11),(96,0,'2024-08-13',77,11),(97,0,'2024-08-13',52,23),(98,0,'2024-08-13',70,23),(99,0,'2024-08-09',142,10),(100,0,'2024-08-09',143,10),(101,0,'2024-08-13',454,23),(102,0,'2024-08-13',455,23),(103,0,'2024-08-13',455,23),(104,0,'2024-08-13',1,23),(105,30,'2024-08-13',799,23),(106,0,'2024-08-09',50,10),(107,0,'2024-08-09',53,10),(108,0,'2024-08-13',4,11),(109,0,'2024-08-13',7,11),(110,0,'2024-08-09',5,10),(111,0,'2024-08-09',44,12),(112,0,'2024-08-13',83,12),(113,0,'2024-08-13',50,11),(114,0,'2024-08-13',166,23),(115,0,'2024-08-13',143,23),(116,0,'2024-08-13',47,12),(117,0,'2024-08-13',199,12),(118,0,'2024-08-13',121,12),(119,0,'2024-08-13',2,26),(120,0,'2024-08-13',60,26),(121,0,'2024-08-13',62,26),(122,0,'2024-08-13',109,26),(123,0,'2024-08-13',110,26),(124,0,'2024-08-13',47,25),(125,0,'2024-08-13',8,25),(126,0,'2024-08-14',56,23),(127,0,'2024-08-14',101,23),(128,0,'2024-08-14',109,23),(129,0,'2024-08-14',165,23),(130,0,'2024-08-14',85,29),(131,0,'2024-08-14',602,12),(132,0,'2024-08-14',79,29),(133,0,'2024-08-14',1450,23),(135,0,'2024-08-14',2946,12),(136,0,'2024-08-14',39,23),(137,0,'2024-08-14',486,12),(138,0,'2024-08-14',56,23),(139,0,'2024-08-14',89,23),(140,0,'2024-08-14',58,30),(141,0,'2024-08-14',78,23),(142,0,'2024-08-14',98,23),(143,0,'2024-08-14',44,12),(144,0,'2024-08-14',41,29),(145,0,'2024-08-14',42,29),(146,0,'2024-08-14',60,12),(147,0,'2024-08-14',75,30),(148,4,'2024-08-14',132,12),(149,0,'2024-08-14',6,12),(150,0,'2024-08-14',14,12),(151,0,'2024-08-14',54,12),(152,0,'2024-08-14',289,12),(153,0,'2024-08-14',154,12),(154,0,'2024-08-14',273,12),(155,0,'2024-08-14',47,11),(156,0,'2024-08-14',137,11),(157,7,'2024-08-14',392,11),(158,7,'2024-08-14',393,11),(159,0,'2024-08-14',3,11),(160,0,'2024-08-14',48,11),(161,0,'2024-08-14',61,11),(162,0,'2024-08-14',12,11),(163,0,'2024-08-14',147,11),(164,0,'2024-08-14',148,11),(165,0,'2024-08-14',89,12),(166,0,'2024-08-14',7,11),(167,0,'2024-08-14',8,11),(168,0,'2024-08-14',154,12),(169,0,'2024-08-14',3,12),(170,0,'2024-08-14',911,11),(171,0,'2024-08-14',35,11),(172,0,'2024-08-14',276,11),(173,0,'2024-08-14',277,11),(174,0,'2024-08-14',562,11),(175,0,'2024-08-14',673,11),(176,0,'2024-08-14',677,11),(177,0,'2024-08-14',680,11),(178,0,'2024-08-14',1,11),(179,0,'2024-08-14',376,11),(180,0,'2024-08-14',35,25),(181,0,'2024-08-15',37,11),(182,0,'2024-08-15',31,29),(183,0,'2024-08-15',32,29),(184,0,'2024-08-15',116,29),(185,0,'2024-08-15',272,11),(186,0,'2024-08-15',274,11),(187,2,'2024-08-15',191,29),(188,2,'2024-08-15',193,29),(189,0,'2024-08-15',79,29),(190,0,'2024-08-15',81,29),(191,0,'2024-08-15',7,29),(192,0,'2024-08-15',11,29),(193,0,'2024-08-15',44,29),(194,0,'2024-08-15',45,29),(195,0,'2024-08-15',152,29),(196,0,'2024-08-15',152,29),(197,3,'2024-08-15',17,29),(198,0,'2024-08-15',31,29),(199,1,'2024-08-15',32,29),(200,1,'2024-08-15',34,29),(201,0,'2024-08-15',20,31),(202,0,'2024-08-15',21,31),(203,0,'2024-08-15',21,31),(204,0,'2024-08-15',1063,31),(205,0,'2024-08-15',470,31),(206,0,'2024-08-15',471,31);
/*!40000 ALTER TABLE `walk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'supia'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `update_member_levels` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`%`*/ /*!50106 EVENT `update_member_levels` ON SCHEDULE EVERY 1 HOUR STARTS '2024-08-10 15:05:29' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    UPDATE member
    SET level = CASE
        WHEN exp >= 1500 THEN 5
        WHEN exp >= 1000 THEN 4
        WHEN exp >= 500 THEN 3
        WHEN exp >= 300 THEN 2
        WHEN exp >= 100 THEN 1
        ELSE level
    END;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'supia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-15 17:09:12
