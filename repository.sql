CREATE DATABASE  IF NOT EXISTS `collage_library_database` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `collage_library_database`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: collage_library_database
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `author` (
  `author_id` varchar(100) NOT NULL,
  `author_name` varchar(100) DEFAULT NULL,
  `author_address` varchar(100) DEFAULT NULL,
  `author_phone` varbinary(100) DEFAULT NULL,
  `author_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES ('aut001','arihant khicha','jaipur',_binary '8095453423','arihantkhicha@gmail.com'),('aut002','neeti kapoor','kota',_binary '8047483647','neetikapoor@gmail.com'),('aut003','ajay singh','jaipur',_binary '9580686969','ajaysingh@gmail.com'),('aut004','rosy bhumrah','kota',_binary '9647483647','rosybhumrah@gmail.com'),('aut005','suresh fatehpuria','jaipur',_binary '9947483647','suresh006@gmail.com'),('aut006','ram kumar','jaipur',_binary '8047483647','aut006@gmail.com'),('aut007','sherya gupta','kota',_binary '7847483647','sheryagupta55@gmail.com'),('aut008','abhishek sharma','delhi',_binary '8096453535','abhi567@gmail.com'),('aut009','v.k. jain','jaipur',_binary '9657482432','vkjain@gmail.com'),('aut010','arti agarwal','jaipur',_binary '8095334434','arti56@gmail.com'),('aut011','mukesh gupta','jaipur',_binary '8059493493','mukeshgupta213@gmail.com'),('aut012','neetu agrawal','jaipur',_binary '9645532135','neetu33@gmail.com'),('aut013','suresh sharma','kota',_binary '8067567567','suresh23@gmail.com'),('aut014','manish gupta','jaipur',_binary '9856356635','manish234@gmail.com'),('aut015','rahul kumar','delhi',_binary '9845645645','rahulkumar32@gmail.com');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `book_id` varchar(100) NOT NULL,
  `book_title` varchar(100) DEFAULT NULL,
  `author_id` varchar(100) DEFAULT NULL,
  `publisher_id` varchar(100) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `supplier_id` varchar(100) DEFAULT NULL,
  `isbn` varchar(100) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('book001','poc','aut001','pub001','cat001','sup001','12345',200),('book002','machine drawing','aut002','pub002','cat002','sup002','54321',300),('book003','gk','aut003','pub003','cat003','sup005','23235',300),('book004','english','aut004','pub004','cat004','sup004','32456',400),('book005','css','aut005','pub004','cat005','sup003','23578',320),('book006','c++','aut006','pub004','cat006','sup002','23562',300),('book007','java','aut007','pub005','cat007','sup005','32455',500),('book008','html','aut008','pub002','cat008','sup007','12233',340),('book009','bootstrap','aut009','pub006','cat009','sup010','12413',240),('book010','digital electronics','aut010','pub006','cat010','sup004','12344',560),('book011','computer system architecture','aut011','pub001','cat011','sup007','23523',560),('book012','theory of computation','aut012','pub006','cat012','sup008','34523',340),('book013','design & analysis','aut013','pub006','cat013','sup004','34524',340),('book014','advance data structure','aut014','pub001','cat014','sup009','53663',430),('book015','operating system','aut015','pub001','cat015','sup004','25656',450),('book016','social sience','aut004','pub005','cat007','sup007','24452',450);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `category_id` varchar(50) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('cat001','poc'),('cat002','machine drawing'),('cat003','gk'),('cat004','english'),('cat005','css'),('cat006','c++'),('cat007','java'),('cat008','html'),('cat009','bootstap'),('cat010','digital electronics'),('cat011','computer system architecture'),('cat012','theory of computation'),('cat013','design & analysis'),('cat014','advance data structure'),('cat015','operating system'),('cat016','spcial science');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `issue` (
  `member_id` varchar(100) NOT NULL,
  `book_id` varchar(100) DEFAULT NULL,
  `book_title` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES ('member001','book003','math','2016-02-02','2016-03-03'),('member002','book002','music','2016-07-05','2016-07-04'),('member003','book006','poc','2016-03-04','2016-03-03'),('member004','book007','math','2016-03-04','2016-03-03'),('member005','book001','music','2016-03-04','2016-03-03'),('member006','book002','music','2016-07-03','2016-08-02'),('member007','book004','drama','2016-12-07','2016-12-21'),('member008','book004','english','2016-12-06','2017-01-05');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `member` (
  `member_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `user_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('member001','lms','lms','pardeep bishnoi','sgnr','pbishnoi029029@gmail.com','8096546734','1994-05-05','admin'),('member002','vishal','vishal','vishal singh','sgnr','ram@gmail.com','9723453425','1995-07-03','faculty'),('member003','kpbrar','kpbrar','kp singh','sgnr,jaipur','kps@gmail.com','9937483647','1997-06-07','faculty'),('member004','pawan','pawan','paean bishnoi','sgnr','pawan@gmail.com','9675456789','2016-07-09','faculty'),('member005','mohit','mohit','mohit kumar','jaipur','mem0055@gmail.com','9647483647','1997-06-09','faculty'),('member006','manjot','manjot ','manjot singh','sgnr','shiva@gmail.com','9947483647','1999-06-07','faculty'),('member007','rahul','rahul','rahul kumar','kota','rahul@gmail.com','9934647474','1989-07-07','faculty'),('member008','pooja','pooja','pooja','jaipur','poojamishra23@gmail.com','9976543675','1995-09-23','faculty');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `publisher` (
  `publisher_id` varchar(100) NOT NULL,
  `publisher_name` varchar(100) DEFAULT NULL,
  `publishing_year` varchar(100) DEFAULT NULL,
  `publisher_addition` varchar(100) DEFAULT NULL,
  `publisher_address` varchar(100) DEFAULT NULL,
  `publisher_phone` varchar(200) DEFAULT NULL,
  `publisher_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`publisher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES ('pub001','mohan sons','2016','3rd','jaipu','2147483647','1@gmail.com'),('pub002','ram lumar','2012','1st','kota','2147483647','wer@gmail.com'),('pub003','mukesh','2016','4th','sgnr','2147483647','asd@gmail.com'),('pub004','mukesh kumar','2015','3rd','jaipur','2147483647','pub003@gmail.com'),('pub005','ram kumar','2016','3rd','sgnr','908896778890','ram@gmail.com'),('pub006','abhishek','2014','2nd','sgnr,raj,india','8980789068','abhishek@gmail.com'),('pub008','mohamad','2016','3rd','sgnr','2147483647','ad@gmail.com'),('pub009','vishal sain','2015','3rd','delhi','8967905758','vishalsain@gmail.com');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `supplier_id` varchar(100) NOT NULL,
  `supplier_name` varchar(100) DEFAULT NULL,
  `supplier_address` varchar(100) DEFAULT NULL,
  `supplier_phone` varchar(100) DEFAULT NULL,
  `supplier_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('sup001','ram kumar ','jaipur','9056342345','sff@gmail.com'),('sup002','pardeep bishnoi','jaipur','8976854567','p234@gmal.com'),('sup003','rahul','sgnr','9080123456','pardeepbishnoi029029@gmail.com'),('sup004','prem','alwar','8970595746','omprakesh@gmail.com'),('sup005','vishal','kota','9523423444','vishal@gmail.com'),('sup006','manjot','delhi','9523423423','manjot1313@gmail.com'),('sup007','mandeep','mumbai','8047564665','mandeep43@gmail.com'),('sup008','piyush kumar','amritsar','9854564511','piyush34@gmail.com'),('sup009','sonu','jaipur','8055455525','sonu234@gmail.com'),('sup010','nitin','jaipur','8055122124','nitin245@gmail.com');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-20 10:40:15
