-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: courses
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `length` int NOT NULL DEFAULT '4',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Web-мастеринг. Основы серверного программирования',32,'Данный курс посвящен технологиям Веб-мастеринга. В курсе рассматриваются основные, базовые понятия, которые необходимы веб-мастеру для успешного создания решений на базе веб-серверов. Слушатели приобретают навыки администрирования веб-серверов, использования баз данных на веб-серверах, узнают основные характеристики и возможности наиболее часто используемых веб-серверов.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(2,'Основы PHP программирования',32,'Вы научитесь профессионально создавать Web-сайты и Web-приложения при помощи языка PHP. Вы получите полное представление о возможностях применения технологии PHP – от настройки для совместной работы с серверами Apache и MySQL до создания профессиональных Web-интерфейсов к базам данных в Интернет и написания форума.\r\nВ курсе рассмотрено больше количество примеров и готовых наработок, что позволит слушателям практически сразу после окончания приступить к реальной работе с PHP.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(3,'Профессиональное программирование на PHP 5',32,'Вы изучите профессиональные приёмы программирования на PHP, сможете использовать полученные навыки для построения сложных, эффективных и безопасных Web-приложений.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(4,'Сервер MySQL 5',32,'Сервер MySQL очень распространен и часто используется в Веб–технологиях. На этом сервере базируются большинство сайтов и решений в Интернете. На курсе «Сервер MySQL 5» рассматриваются основные приемы и методы эффективной работы с сервером MySQL 5. Данный курс предназначен для разработчиков, которые планируют использовать сервер MySQL в своей практике. Особенно курс будет интересен Веб– разработчикам, использующимм PHP и Perl.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(5,'Современные XML технологии',32,'Вы научитесь применять XML-технологии в процессе создания сайтов и других Интернет-решений. В современном мире эти технологии активно используются при решении самых разнообразных задач, и, изучив их, Вы будете идти в ногу со временем.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(6,'Web-маркетинг',20,'Сегодня специалист по Интернет-технологиям должен не только владеть техническими навыками, но и понимать значение своей работы для бизнеса заказчика. Никому не нужен сайт (каким бы хорошим он ни был!), который не посещается целевой аудиторией.\r\nУспешно пройдя обучение на этом уникальном авторском курсе, Вы научитесь привлекать максимальное количество заинтересованных пользователей, проводить эффективную электронную рекламу, привлекать внимание к представленной на сайте информации.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.'),(7,'2310 Разработка Web-приложений ASP .NET',40,'Этот курс обеспечивает студентов знаниями и навыками, которые необходимы для разработки Web приложений на базе Microsoft Visual Studio .NET и Microsoft ASP .NET.\r\n\r\nКурс также будет полезен тем, кто обладает знаниями в объёме программы, но хочет их систематизировать, а также повысить свою эффективность за счёт новых приёмов и методов работы.');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher` int DEFAULT NULL,
  `course` int DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `lesson_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (1,1,1,'БК-1','2006-09-15 00:00:00'),(2,2,2,'БК-2','2006-09-16 00:00:00'),(3,3,3,'БК-3','2006-09-17 00:00:00'),(4,4,4,'БК-4','2006-09-18 00:00:00'),(5,5,5,'БК-5','2006-09-19 00:00:00'),(6,1,6,'БК-6','2006-09-20 00:00:00'),(7,2,7,'БК-7','2006-09-21 00:00:00'),(8,3,1,'БК-8','2006-09-22 00:00:00'),(9,4,2,'БК-9','2006-09-23 00:00:00'),(10,5,3,'БК-10','2006-09-24 00:00:00'),(11,1,4,'БК-11','2006-09-25 00:00:00'),(12,2,5,'БК-12','2006-09-26 00:00:00'),(13,3,6,'БК-14','2006-09-27 00:00:00'),(14,4,7,'БК-15','2006-09-28 00:00:00'),(15,5,1,'БК-16','2006-09-29 00:00:00'),(16,1,2,'БК-17','2006-09-30 00:00:00'),(17,2,3,'БК-18','2006-10-01 00:00:00'),(18,3,4,'БК-19','2006-10-02 00:00:00'),(19,4,5,'БК-1','2006-10-03 00:00:00'),(20,5,6,'БК-12','2006-10-04 00:00:00'),(21,1,7,'БК-14','2006-10-05 00:00:00'),(22,2,1,'БК-15','2006-10-06 00:00:00'),(23,3,2,'БК-16','2006-10-07 00:00:00'),(24,4,3,'БК-17','2006-10-08 00:00:00'),(25,5,4,'БК-18','2006-10-09 00:00:00'),(26,1,5,'БК-19','2006-10-10 00:00:00'),(27,2,6,'БК-20','2006-10-11 00:00:00'),(28,3,7,'БК-1','2006-10-12 00:00:00');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `addr` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'Иванов Иван Иванович','Москва, Бакунинская, 71','123-45-67'),(2,'Петров Петр Петрович','Москва, Госпитальный пер. 4/5','765-43-21'),(3,'Сидоров Сидор Сидорович','Москва, Цветной бульвар, 19','987-65-43'),(4,'Пупкин Василий Иванович','Щелково, Комарова, 21','456-23-12'),(5,'Сумкин Федор Михайлович','Королев, проспект Космонавтов, 15','543-43-23');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `login` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Sergey','Brin','brin@mail.ru','brin','1234'),(3,'Ivan','Ivanov','ivanov@mail.ru','ivan','1234'),(4,'Sergey','Pchelov','pchelov@mail.ru','pchela','1234'),(5,'Ruslan','Bichkov','bichkov@mail.ru','bichkov','1234'),(6,'asd','asd','asdf','sadf','asdf');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-28  0:33:20
