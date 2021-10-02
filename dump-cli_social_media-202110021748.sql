-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 34.82.158.11    Database: cli_social_media
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.21-MariaDB-1:10.4.21+maria~stretch

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

--
-- Table structure for table `exploits`
--

DROP TABLE IF EXISTS `exploits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exploits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exploits_FK` (`user_id`),
  CONSTRAINT `exploits_FK` FOREIGN KEY (`user_id`) REFERENCES `hackers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exploits`
--

LOCK TABLES `exploits` WRITE;
/*!40000 ALTER TABLE `exploits` DISABLE KEYS */;
/*!40000 ALTER TABLE `exploits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hackers`
--

DROP TABLE IF EXISTS `hackers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hackers`
--

LOCK TABLES `hackers` WRITE;
/*!40000 ALTER TABLE `hackers` DISABLE KEYS */;
INSERT INTO `hackers` VALUES (1,'Laurence','gThe'),(2,'Roberta','lazy do'),(3,'Cardew','dogThe q'),(4,'Imelda','t'),(5,'Candy','quic'),(6,'Jess','the '),(7,'Mary','dog'),(8,'Stella','do'),(9,'Iris','the'),(10,'Tracy','the laz'),(11,'Cindy','fox ju'),(12,'Zelda','jumps '),(13,'Cassandra','dogT'),(14,'Deanne','brown f'),(15,'Julian','j'),(16,'Thomasina','th'),(17,'Drew','the '),(18,'Janee','the l'),(19,'Richie','t'),(20,'Irene','over '),(21,'Charlotte','the laz'),(22,'Jemima','brown f'),(23,'Raymond','bro'),(24,'Tracy','l'),(25,'Helena','o'),(26,'Peleg','brown fo'),(27,'Bronwen','o'),(28,'Alice','T'),(29,'Travis','fox ju'),(30,'Susanne','The q'),(31,'Ray','dogThe'),(32,'Satyana','ogThe qu'),(33,'Effie','fox'),(34,'Blake','jumps o'),(35,'Maureen','jumps o'),(36,'Vanessa','fo'),(37,'Elliot','f'),(38,'Michele','qu'),(39,'Dana','over the'),(40,'Rob','dogTh'),(41,'Colby','jumps'),(42,'Addys','brow'),(43,'Lara','fox '),(44,'Narcissa','dog'),(45,'Zadoc','brown fo'),(46,'Chas','fo'),(47,'Liza','quick br'),(48,'Malachi','the lazy'),(49,'Benjamin','brow'),(50,'Paul','dogThe');
/*!40000 ALTER TABLE `hackers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cli_social_media'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-02 17:48:34
