CREATE DATABASE  IF NOT EXISTS `duanxaydungdb2` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `duanxaydungdb2`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: duanxaydungdb2
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `person_responsible` int DEFAULT NULL,
  `id_project` int DEFAULT NULL,
  `id_status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_to_personnel_idx` (`person_responsible`),
  KEY `fk_category_to_project_idx` (`id_project`),
  KEY `fk_category_to_status_idx` (`id_status`),
  CONSTRAINT `fk_category_to_personnel` FOREIGN KEY (`person_responsible`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_category_to_project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_category_to_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Lập phương án tiến độ thi công','Lập phương án tiến độ thi công phù hợp','2022-10-01','2022-10-07',0,_binary '',2,1,1),(2,'Chuẩn bị công trường','Chuẩn bị công trường phục vụ thi công ','2022-10-01','2022-10-07',0,_binary '',2,1,3),(3,'Thi công hạ tầng','Thi công từ sàn trệt trở xuống','2022-10-07','2022-10-27',0,_binary '',10,1,8),(4,'Thi công sàn tầng','Thi công sàn tầng','2022-10-28','2022-11-10',0,_binary '',10,1,8),(5,'Thi công xây tường','Thi công tường','2022-11-11','2022-12-05',0,_binary '',10,1,8),(6,'Thi công tô trát tường','Thi công tô trác tường','2022-12-06','2023-01-02',0,_binary '',10,1,8),(7,'Thi công mái che','Thi công mái che','2023-01-03','2023-01-23',0,_binary '',10,1,8),(8,'Công tác hoàn thiện','Thi công giai đoạn cuối','2023-01-24','2023-03-02',0,_binary '',10,1,8),(9,'Kiểm tra công trình','Kiểm tra trước khi bàn giao mặt bằng','2023-03-03','2023-03-14',0,_binary '',11,1,8),(10,'Tháo dỡ công trường','Di dời trang thiết bị xây dựng','2023-03-15','2023-03-22',0,_binary '',2,1,8);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `change`
--

DROP TABLE IF EXISTS `change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `change` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `new_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `old_content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_project` int DEFAULT NULL,
  `id_personnel` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_change_to_project_idx` (`id_project`),
  KEY `fk_change_to_personnel_idx` (`id_personnel`),
  CONSTRAINT `fk_change_to_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_change_to_project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change`
--

LOCK TABLES `change` WRITE;
/*!40000 ALTER TABLE `change` DISABLE KEYS */;
/*!40000 ALTER TABLE `change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Phòng kế toán - tài chính','Quản lý tài chính','2022-10-15 16:54:53',_binary ''),(2,'Phòng ý tưởng và cung ứng','Quản lý ý tưởng, thiết kế','2022-05-01 00:00:00',_binary ''),(3,'Phòng tổ chức hành chính','Quản lý hành chính','2022-05-01 00:00:00',_binary ''),(4,'Phòng quản lý kỹ thuật sản xuất và thi công','Quản lý kỹ thuật, thi công dự án','2022-05-01 00:00:00',_binary ''),(5,'Phòng đầu tư','Quản lý đầu tư','2022-05-01 00:00:00',_binary '');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discuss`
--

DROP TABLE IF EXISTS `discuss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discuss` (
  `id` int NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_date` datetime DEFAULT NULL,
  `id_project` int DEFAULT NULL,
  `person_created` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_discuss_to_project_idx` (`id_project`),
  KEY `fk_discuss_to_personnel_idx` (`person_created`),
  CONSTRAINT `fk_discuss_to_personnel` FOREIGN KEY (`person_created`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_discuss_to_project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discuss`
--

LOCK TABLES `discuss` WRITE;
/*!40000 ALTER TABLE `discuss` DISABLE KEYS */;
/*!40000 ALTER TABLE `discuss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invest`
--

DROP TABLE IF EXISTS `invest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invest` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` decimal(12,0) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `approved_date` date DEFAULT NULL,
  `id_project` int DEFAULT NULL,
  `id_personnel` int DEFAULT NULL,
  `id_status` int DEFAULT NULL,
  `id_partner` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invest_to_project_idx` (`id_project`),
  KEY `fk_invest_to_status_idx` (`id_status`),
  KEY `fk_invest_to_personnel_idx` (`id_personnel`),
  KEY `fk_invest_to_partner_idx` (`id_partner`),
  CONSTRAINT `fk_invest_to_partner` FOREIGN KEY (`id_partner`) REFERENCES `partner` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_invest_to_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_invest_to_project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_invest_to_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invest`
--

LOCK TABLES `invest` WRITE;
/*!40000 ALTER TABLE `invest` DISABLE KEYS */;
/*!40000 ALTER TABLE `invest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `id_task` int DEFAULT NULL,
  `id_personnel` int DEFAULT NULL,
  `id_status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_issue_to_task_idx` (`id_task`),
  KEY `fk_issue_to_personnel_idx` (`id_personnel`),
  KEY `fk_issue_to_status_idx` (`id_status`),
  CONSTRAINT `fk_issue_to_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_issue_to_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_issue_to_task` FOREIGN KEY (`id_task`) REFERENCES `task` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participation`
--

DROP TABLE IF EXISTS `participation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `id_project` int DEFAULT NULL,
  `id_personnel` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_participation_to_project_idx` (`id_project`),
  KEY `fk_prticipation_to_personnel_idx` (`id_personnel`),
  CONSTRAINT `fk_participation_to_project` FOREIGN KEY (`id_project`) REFERENCES `project` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_prticipation_to_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participation`
--

LOCK TABLES `participation` WRITE;
/*!40000 ALTER TABLE `participation` DISABLE KEYS */;
INSERT INTO `participation` VALUES (2,'2022-10-01','2022-10-14','Thiết kế nội thất',_binary '\0',1,9),(3,'2022-10-01',NULL,'Kiến trúc sư',_binary '',1,3),(4,'2022-10-01',NULL,'Kỹ sư xây dựng',_binary '',1,10),(5,'2022-10-01',NULL,'Kỹ sư giám sát xây dựng',_binary '',1,11);
/*!40000 ALTER TABLE `participation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` VALUES (1,'Công ty TNHH Thương Mại Green Tech','0972699926','partner@greentechco.com.vn','https://www.greentechco.com.vn','Việt Nam','B2, đường số 3, khu phố 4, phường An Khánh, Tp Thủ Đức, Tp Hồ Chí Minh','Tổ chức','Công ty vật liệu xây dựng',_binary ''),(2,'Công ty TNHH Adal Home 123','0901189896','partner@adalhome.com.vn','https://www.adalhome.com.vn','Việt Nam','Số 2, đường số 7, khu phố 4, phường An Phú, Thủ Đức, thành phố Hồ Chí Minh','Tổ chức','Demo update',_binary ''),(3,'Công ty TNHH MTV Vina Built','0987447766','vinbuilt7777@gmail.com','https://www.vinbuilt.bizz.vn','Việt Nam','394/35, Âu Cơ, phường 10, quận Tân Bình, Tp Hồ Chí Minh','Tổ chức','Công ty vật liệu xây dựng',_binary ''),(4,'Công ty TNHH vật liệu xây dựng An Nhiên Phát','0868697082','sanvachtran@gmail.com','https://www.sanvachtran.com','Việt Nam','52, Lê Hoàng Phái, phường 17, quận Gò Vấp, Tp Hồ Chí Minh','Tổ chức','Công ty cung cấp vật liệu xây dựng',_binary ''),(5,'Công ty TNHH MTV vật liệu xây dựng Hiệp Hà','0909672222','ctyhiepha@gmail.com','https://www.vlxdhiepha.com','Việt Nam','33/2, Cao Lỗ, phường 4, quận 8, Tp Hồ Chí Minh','Tổ chức','Công ty cung cấp vật liệu xây dựng',_binary '');
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personnel`
--

DROP TABLE IF EXISTS `personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personnel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `identity` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_position` int DEFAULT NULL,
  `id_department` int DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_personnel_to_position_idx` (`id_position`),
  KEY `fk_personnel_to_department_idx` (`id_department`),
  CONSTRAINT `fk_personnel_to_department` FOREIGN KEY (`id_department`) REFERENCES `department` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_personnel_to_position` FOREIGN KEY (`id_position`) REFERENCES `position` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnel`
--

LOCK TABLES `personnel` WRITE;
/*!40000 ALTER TABLE `personnel` DISABLE KEYS */;
INSERT INTO `personnel` VALUES (1,'https://res.cloudinary.com/dgqmraoge/image/upload/v1662860612/photo-1438761681033-6461ffad8d80_vkpkbo.jpg','Trần Phương','Anh','Nữ','1999-01-24','107936578401','0909123564','107936578401anh@gmail.com','Quận 5, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',1,2,_binary ''),(2,'https://res.cloudinary.com/dgqmraoge/image/upload/v1662860902/photo-1619895862022-09114b41f16f_jyuw1s.jpg','Lê Trần Phương','Nhi','Nữ','2001-01-11','107423804325','0339559723','107423804325nhi@gmail.com','Quận 9, Tp Hồ Chí Minh','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',2,2,_binary ''),(3,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Vương Gia','Thanh','Nữ','2000-10-18','107423466831','0357070746','107423466831thanh@gmail.com','Quận Hóc Môn, Tp Hồ Chí Minh','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',3,4,_binary '\0'),(4,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Nguyễn Phương','Linh','Nữ','1999-11-28','107422175693','0961687266','107422175693linh@gmail.com','Quận 2, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',4,1,_binary ''),(5,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Phạm Văn','Nam','Nam','1999-04-19','107022201304','0339559721','107022201304nam@gmail.com','Quận 8, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',3,4,_binary ''),(6,'https://res.cloudinary.com/dgqmraoge/image/upload/v1662860984/photo-1557862921-37829c790f19_oqd0w4.jpg','Nguyễn Thiện Minh','Tâm','Nam','1997-06-14','106822980298','0347311331','106822980298tam@gmail.com','Quận Bình Thạnh, Tp Hồ Chí Minh','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',24,4,_binary ''),(7,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Trần Lê Quang','Chiến','Nam','2001-04-25','106822261393','0372405209','106822261393chien@gmail.com','Nhà Bè, Tp Hồ Chí Minh','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',4,1,_binary ''),(8,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Lê Đức Anh','Tuấn','Nam','1999-04-19','106822126899','0342461880','106822126899tuan@gmail.com','Quận 7, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',3,4,_binary ''),(9,'https://res.cloudinary.com/dgqmraoge/image/upload/v1662860529/photo-1633332755192-727a05c4013d_iwfpkd.jpg','Nguyễn Hữu','Minh','Nam','2000-10-01','106822059551','0392620393','106822059551minh@gmail.com','Quận Gò Vấp, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',2,2,_binary ''),(10,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Nguyễn Đăng Quốc','Anh','Nam','2000-07-07','104520019506','0902902019','104520019506anh@gmail.com','Quận 1, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',23,4,_binary ''),(11,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Lê Đức','Trung','Nam','1993-01-20','104520019555','0862902019','104520019555trung@gmail.com','Quận 7, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_STAFF',24,4,_binary ''),(15,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Phan Đình','Văn','Nam','1996-07-07','107932226437','0785976966','107932226437van@gmail.com','Hóc Môn, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',24,4,_binary ''),(16,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Trần Quốc','Thắng','Nam','1997-10-06','101556010091','0785976696','101556010091thang@gmail.com','Gò Vấp, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',24,4,_binary ''),(17,'https://res.cloudinary.com/dgqmraoge/image/upload/v1658919834/UserAvatar_l51jgw.png','Nguyễn Văn','Hữu','Nam','1997-09-17','101651010076','0859284220','101651010076huu@gmail.com','Bình Thạnh, Tp Hồ Chí Minh','$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','ROLE_ADMIN',24,4,_binary '');
/*!40000 ALTER TABLE `personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `position` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (1,'Kỹ sư thiết kế cảnh quan','Chịu trách nhiệm thiết kế cảnh quan',_binary ''),(2,'Kỹ sư thiết kế nội thất','Chịu trách nhiệm thiết kế nội thất cho dự án thi công',_binary ''),(3,'Kiến trúc sư','Chịu trách nhiệm về bản vẻ xây dựng',_binary ''),(4,'Kế toán tài chính','Chịu trách nhiệm về các khoản chi cho công trình',_binary ''),(23,'Kỹ sư xây dựng','Chịu trách nhiệm xây dựng công trình',_binary ''),(24,'Kỹ sư giám sát xây dựng','Chịu trách nhiệm giám sát thi công công trình',_binary ''),(25,'Demo','Demo',_binary '\0');
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `max_person` int DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `id_status` int DEFAULT NULL,
  `id_personnel` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_project_to_status_idx` (`id_status`),
  KEY `fk_project_to_personnel_idx` (`id_personnel`),
  CONSTRAINT `fk_project_to_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_project_to_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Dự án xây dựng nhà ở','Xây dựng nhà ở đơn giản, hiện đại','https://res.cloudinary.com/dgqmraoge/image/upload/v1664517641/photo-1512917774080-9991f1c4c750_pefctw.jpg','Quận 2, thành phố Hồ Chí Minh','2022-10-01','2023-04-20','2022-09-30 00:00:00',120,0,_binary '',2,2),(2,'Dự án xây dựng căn hộ cao cấp','Xây dựng căn hộ cho khách hàng VIP','https://res.cloudinary.com/dgqmraoge/image/upload/v1664517641/photo-1512917774080-9991f1c4c750_pefctw.jpg','Quận 7, thành phố Hồ Chí Minh','2022-10-01','2023-08-20','2022-09-20 00:00:00',200,0,_binary '',1,6),(6,'Dự án xây dựng biệt thự cao cấp','Xây dựng biệt thự cho khách hàng thân thiết','https://res.cloudinary.com/dgqmraoge/image/upload/v1664517641/photo-1512917774080-9991f1c4c750_pefctw.jpg','Quận 7, thành phố Hồ Chí Minh','2023-01-01','2023-12-28','2022-10-24 00:00:00',100,0,_binary '',1,15),(7,'Dự án xây dựng nhà thi đấu','Xây dựng nhà thi đấu cho bộ môn cầu lông','https://res.cloudinary.com/dgqmraoge/image/upload/v1664517641/photo-1512917774080-9991f1c4c750_pefctw.jpg','Quận Gò Vấp, thành phố Hồ Chí Minh','2023-01-01','2023-12-28','2022-10-24 00:00:00',200,0,_binary '',1,16),(9,'Xây dựng bệnh viện quận 4','Xây dựng bệnh viện đa khoa','https://res.cloudinary.com/dgqmraoge/image/upload/v1664517641/photo-1512917774080-9991f1c4c750_pefctw.jpg','Quận 4, thành phố Hồ Chí Minh','2023-01-01','2023-12-20','2022-10-24 00:00:00',500,0,_binary '',1,17);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Lập kế hoạch',NULL),(2,'Đã duyệt',NULL),(3,'Đang tiến hành',NULL),(4,'Đúng hướng',NULL),(5,'Đã hoãn',NULL),(6,'Đang kiểm tra',NULL),(7,'Đã hủy',NULL),(8,'Đang chờ',NULL),(9,'Đã hoàn tất',NULL),(10,'Đã lập hóa đơn',NULL);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `task` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `finish_date` date DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percent` float DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `id_personnel` int DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `id_status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_task_to_personnel_idx` (`id_personnel`),
  KEY `fk_task_to_status_idx` (`id_status`),
  KEY `fk_stak_to_category_idx` (`id_category`),
  CONSTRAINT `fk_stak_to_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_task_to_personnel` FOREIGN KEY (`id_personnel`) REFERENCES `personnel` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_task_to_status` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Lập kế hoạch tiến độ thi công','Lập kế hoạch chi tiết tiến độ thi công','2022-10-01','2022-10-07','Trung bình',0,_binary '',2,1,3),(2,'Tổ chức công trường, làm láng trại cho công nhân','Làm lán trại cho công nhân thi công','2022-10-01','2022-10-07','Trung bình',0,_binary '',2,2,3),(3,'Vận chuyển thiết bị, vật tư, chuẩn bị mặt bằng thi công','Vận chuyển thiết bị vật tư','2022-10-01','2022-10-07','Trung bình',0,_binary '',2,2,3),(4,'Lập biên bản bàn giao mặt bằng, xác định ngày khởi công','Bàn giao, xác định ngày khởi công','2022-10-01','2022-10-07','Trung bình',0,_binary '',2,2,3),(5,'Kiểm tra hiện trạng đất, đo đạc, dọn dẹp mặt bằng thi công','Kiểm tra đất, đo đạc, dọn dẹp mặt bằng','2022-10-01','2022-10-06','Trung bình',0,_binary '',2,2,3);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31  0:12:19
