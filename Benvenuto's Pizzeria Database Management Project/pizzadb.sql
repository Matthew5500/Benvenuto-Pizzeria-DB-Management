CREATE DATABASE  IF NOT EXISTS `pizzadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pizzadb`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzadb
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `add_id` int NOT NULL,
  `delivery_address1` varchar(200) NOT NULL,
  `delivery_address2` varchar(200) DEFAULT NULL,
  `delivery_city` varchar(50) NOT NULL,
  `delivery_zipcode` varchar(20) NOT NULL,
  PRIMARY KEY (`add_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'789 Elm St','793 Elm St','Toronto','M5H 2N2'),(2,'789 Elm St','','Ottawa','K1P 1A4'),(3,'789 Elm St','','Mississauga','L5B 3C2'),(4,'789 Elm St','773 Elm St','Hamilton','L8P 1H5'),(5,'789 Elm St','','London','N6A 1C9');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cust_id` int NOT NULL,
  `cust_firstname` varchar(50) NOT NULL,
  `cust_lastname` varchar(50) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Amanda ','Thompson'),(2,'Michael','Rivera'),(3,'Sarah','Nguyen'),(4,'Emily','Rodriguez'),(5,'David','Johnson');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers table`
--

DROP TABLE IF EXISTS `customers table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers table` (
  `cust_id` text,
  `cust_firstname` text,
  `cust_lastname` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers table`
--

LOCK TABLES `customers table` WRITE;
/*!40000 ALTER TABLE `customers table` DISABLE KEYS */;
INSERT INTO `customers table` VALUES ('cust_id','cust_firstname','cust_lastname'),('1','Amanda ','Thompson'),('2','Michael','Rivera'),('3','Sarah','Nguyen'),('4','Emily','Rodriguez'),('5','David','Johnson');
/*!40000 ALTER TABLE `customers table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ing_id` varchar(10) NOT NULL,
  `ing_name` varchar(200) NOT NULL,
  `ing_weight` int NOT NULL,
  `ing_meas` varchar(20) NOT NULL,
  `ing_price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`ing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (' ING010','Ricotta cheese',1500,'grams',3.99),('ING001','Pizza dough ball (8 pack)',2000,'grams',4.22),('ING002','Tomato sauce',4500,'grams',3.89),('ING003','Mozzarella cheese',2500,'grams',14.45),('ING004','Dried oregano',500,'grams',5.99),('ING005','Spicy salami',3500,'grams',37.64),('ING006','Chilli pepper',1000,'grams',6.49),('ING007','Eggplant',1000,'grams',1.90),('ING008','Parmesan cheese',2500,'grams',18.75),('ING009','Gorgonzola cheese',3500,'grams',27.64),('ING011','Anchovies',1000,'grams',10.99),('ING012','Capers',1000,'grams',4.16),('ING013','Pepperoni',2500,'grams',24.18),('ING014','Shrimp',1000,'grams',8.98),('ING015','Tuna',2000,'grams',7.66),('ING016','Calamari',2500,'grams',28.77),('ING017','Ham',5000,'grams',32.45),('ING018','Pineapple',5000,'grams',6.23),('ING019','Garlic and parsley butter',3000,'grams',52.10),('ING020','Chicken wings',6000,'grams',69.83),('ING021','Rotisserie chicken pieces',5000,'grams',34.45),('ING022','Croutons',1250,'grams',5.25),('ING023','Romain lettuce',7500,'grams',13.72),('ING024','Caesar dressing',3800,'grams',17.98),('ING025','Vanilla ice cream',4500,'mililiters',15.45),('ING026','Chocolate ice cream',4500,'mililiters',15.45),('ING027','Strawberry ice cream',4500,'mililiters',15.45),('ING028','Pistachio ice cream',4500,'mililiters',15.45),('ING029','Chocolate brownie',2500,'grams',4.45),('ING030','Banoffee pie',1200,'grams',1.15),('ING031','Fruit salad',5000,'grams',7.12);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inv_id` varchar(10) NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`inv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('INV001','ING001',250),('INV002','ING002',80),('INV003','ING003',170),('INV004','ING004',5),('INV005','ING001',300),('INV006','ING002',100),('INV007','ING003',200),('INV008','ING004',8),('INV009','ING001',250),('INV010','ING002',80),('INV011','ING003',170),('INV012','ING005',50),('INV013','ING006',10),('INV014','ING001',300),('INV015','ING002',100),('INV016','ING003',200),('INV017','ING005',70),('INV018','ING006',15),('INV019','ING001',250),('INV020','ING002',80),('INV021','ING003',170),('INV022','ING007',120),('INV023','ING008',170),('INV024','ING001',300),('INV025','ING002',100),('INV026','ING003',200),('INV027','ING007',150),('INV028','ING008',200),('INV029','ING001',250),('INV030','ING002',80),('INV031','ING003',170),('INV032','ING008',150),('INV033','ING009',150),('INV034','ING010',150),('INV035','ING001',300),('INV036','ING002',100),('INV037','ING003',200),('INV038','ING008',250),('INV039','ING009',300);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` varchar(10) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `item_cat` varchar(100) NOT NULL,
  `item_size` varchar(10) NOT NULL,
  `item_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('it001','PIZZ-MARG-R','Margherita','Pizza','Regular',12.00),('it002','PIZZ-MARG-L','Margherita','Pizza','Large',14.00),('it003','PIZZ-DIAV-R','Diavola','Pizza','Regular',16.00),('it004','PIZZ-DIAV-L','Diavola','Pizza','Large',19.00),('it005','PIZZ-PARM-R','Parmigiana','Pizza','Regular',15.00),('it006','PIZZ-PARM-L','Parmigiana','Pizza','Large',18.00),('it007','PIZZ-QUAT-R','Quattro Formaggi','Pizza','Regular',16.00),('it008','PIZZ-QUAT-L','Quattro Formaggi','Pizza','Large',19.00),('it009','PIZZ-NAPO-R','Napolitana','Pizza','Regular',16.00),(' it010','PIZZ-NAPO-L','Napolitana','Pizza','Large',18.00),('it011','PIZZ-PEPP-R','Pepperoni','Pizza','Regular',15.00),('it012','PIZZ-PEPP-L','Pepperoni','Pizza','Large',17.00),('it013','PIZZ-SEAF-R','Seafood','Pizza','Regular',17.00),('it014','PIZZ-SEAF-L','Seafood','Pizza','Large',20.00),('it015','SIDE-HAWA-R','Hawaiian','Pizza','Regular',15.00),('it016','SIDE-HAWA-L','Hawaiian','Pizza','Large',17.00),('it017','SIDE-GARL-R','Garlic Bread','Side','Regular',6.00),('it018','SIDE-CHIC-R','Chicken Wings','Side','Regular',7.00),('it019','SIDE-BREA-R','Breadsticks','Side','Regular',5.00),('it020','SIDE-CAES-R','Caesar Salad','Side','Regular',7.00),('it021','DESS-ICE-CHOC','Chocolate Ice Cream','Dessert','Regular',6.00),('it022','DESS-ICE-VANI','Vanilla Ice Cream','Dessert','Regular',6.00),('it023','DESS-ICE-STRA','Strawberry Ice Cream','Dessert','Regular',6.00),('it024','DESS-ICE-PIST','Pistachio Ice Cream','Dessert','Regular',6.00),('it025','DESS-CHOC-BROW','Chocolate Brownie','Dessert','Regular',5.00),('it026','DRESS-BANO-PIE','Banoffee Pie','Dessert','Regular',7.00),('it027','DRESS-BANO-SALA','Fruit Salad','Dessert','Regular',5.00),('it028','BEVA-CC-REG33','Coca Cola','Beverage','33cl',3.00),('it029','BEVA-CC-REG1500','Coca Cola','Beverage','1.5l',6.00),('it030','BEVA-CC-DIE33','Diet Coke','Beverage','33cl',3.00),('it031','BEVA-CC-DIE1500','Diet Coke','Beverage','1.5l',6.00),('it032','BEVA-7U-REG33','7 Up','Beverage','33cl',3.00),('it033','BEVA-7U-REG1500','7 Up','Beverage','1.5l',6.00);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `row_id` int NOT NULL,
  `order_id` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  `cust_id` int NOT NULL,
  `delivery` tinyint(1) NOT NULL,
  `add_id` int NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'ORD_001','2024-05-14 00:00:00','it001',2,1,1,1),(2,'ORD_002','2024-05-16 00:00:00','it020',1,2,1,2),(3,'ORD_003','2024-05-20 00:00:00','it004',1,3,1,3),(4,'ORD_004','2024-05-26 00:00:00','it029',2,4,1,4),(5,'ORD_005','2024-06-01 00:00:00','it017',1,5,1,5);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `row_id` int NOT NULL,
  `recipe_id` varchar(20) NOT NULL,
  `ing_id` varchar(10) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'PIZZ-MARG-R','ING001',250),(2,'PIZZ-MARG-R','ING002',80),(3,'PIZZ-MARG-R','ING003',170),(4,'PIZZ-MARG-R','ING004',5),(5,'PIZZ-MARG-L','ING001',300),(6,'PIZZ-MARG-L','ING002',100),(7,'PIZZ-MARG-L','ING003',200),(8,'PIZZ-MARG-L','ING004',8),(9,'PIZZ-DIAV-R','ING001',250),(10,'PIZZ-DIAV-R','ING002',80),(11,'PIZZ-DIAV-R','ING003',170),(12,'PIZZ-DIAV-R','ING005',50),(13,'PIZZ-DIAV-R','ING006',10),(14,'PIZZ-DIAV-L','ING001',300),(15,'PIZZ-DIAV-L','ING002',100),(16,'PIZZ-DIAV-L','ING003',200),(17,'PIZZ-DIAV-L','ING005',70),(18,'PIZZ-DIAV-L','ING006',15),(19,'PIZZ-PARM-R','ING001',250),(20,'PIZZ-PARM-R','ING002',80),(21,'PIZZ-PARM-R','ING003',170),(22,'PIZZ-PARM-R','ING007',120),(23,'PIZZ-PARM-R','ING008',170),(24,'PIZZ-PARM-L','ING001',300),(25,'PIZZ-PARM-L','ING002',100),(26,'PIZZ-PARM-L','ING003',200),(27,'PIZZ-PARM-L','ING007',150),(28,'PIZZ-PARM-L','ING008',200),(29,'PIZZ-QUAT-R','ING001',250),(30,'PIZZ-QUAT-R','ING002',80),(31,'PIZZ-QUAT-R','ING003',170),(32,'PIZZ-QUAT-R','ING008',150),(33,'PIZZ-QUAT-R','ING009',150),(34,'PIZZ-QUAT-R','ING010',150),(35,'PIZZ-QUAT-L','ING001',300),(36,'PIZZ-QUAT-L','ING002',100),(37,'PIZZ-QUAT-L','ING003',200),(38,'PIZZ-QUAT-L','ING008',250),(39,'PIZZ-QUAT-L','ING009',300);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rota`
--

DROP TABLE IF EXISTS `rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rota` (
  `row_id` int NOT NULL,
  `rota_id` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `shift_id` varchar(20) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rota`
--

LOCK TABLES `rota` WRITE;
/*!40000 ALTER TABLE `rota` DISABLE KEYS */;
INSERT INTO `rota` VALUES (1,'ro0001','2022-02-16 00:00:00','sh0005','st0001'),(2,'ro0001','2022-02-16 00:00:00','sh0005','st0002'),(3,'ro0001','2022-02-16 00:00:00','sh0005','st0009'),(4,'ro0001','2022-02-16 00:00:00','sh0005','st0010'),(5,'ro0001','2022-02-16 00:00:00','sh0006','st0001'),(6,'ro0001','2022-02-16 00:00:00','sh0006','st0002'),(7,'ro0001','2022-02-16 00:00:00','sh0006','st0009'),(8,'ro0001','2022-02-16 00:00:00','sh0006','st0010'),(9,'ro0002','2022-02-17 00:00:00','sh0007','st0001'),(10,'ro0002','2022-02-17 00:00:00','sh0007','st0002'),(11,'ro0002','2022-02-17 00:00:00','sh0007','st0009'),(12,'ro0002','2022-02-17 00:00:00','sh0007','st0010'),(13,'ro0002','2022-02-17 00:00:00','sh0008','st0001'),(14,'ro0002','2022-02-17 00:00:00','sh0008','st0002'),(15,'ro0002','2022-02-17 00:00:00','sh0008','st0009'),(16,'ro0002','2022-02-17 00:00:00','sh0008','st0010'),(17,'ro0003','2022-02-18 00:00:00','sh0009','st0001'),(18,'ro0003','2022-02-18 00:00:00','sh0009','st0002'),(19,'ro0003','2022-02-18 00:00:00','sh0009','st0009'),(20,'ro0003','2022-02-18 00:00:00','sh0009','st0010'),(21,'ro0003','2022-02-18 00:00:00','sh0010','st0001'),(22,'ro0003','2022-02-18 00:00:00','sh0010','st0002'),(23,'ro0003','2022-02-18 00:00:00','sh0010','st0009'),(24,'ro0003','2022-02-18 00:00:00','sh0010','st0010'),(25,'ro0004','2022-02-19 00:00:00','sh0011','st0001'),(26,'ro0004','2022-02-19 00:00:00','sh0011','st0002'),(27,'ro0004','2022-02-19 00:00:00','sh0011','st0009'),(28,'ro0004','2022-02-19 00:00:00','sh0011','st0010'),(29,'ro0004','2022-02-19 00:00:00','sh0012','st0001'),(30,'ro0004','2022-02-19 00:00:00','sh0012','st0002'),(31,'ro0004','2022-02-19 00:00:00','sh0012','st0009'),(32,'ro0004','2022-02-19 00:00:00','sh0012','st0010');
/*!40000 ALTER TABLE `rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift` (
  `shift_id` varchar(20) NOT NULL,
  `day_of_week` varchar(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  PRIMARY KEY (`shift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES ('','','00:00:00','00:00:00'),('sh0001','Monday','10:30:00','14:00:00'),('sh0002','Monday','18:30:00','23:00:00'),('sh0003','Tuesday','10:30:00','14:00:00'),('sh0004','Tuesday','18:30:00','23:00:00'),('sh0005','Wednesday','10:30:00','14:00:00'),('sh0006','Wednesday','18:30:00','23:00:00'),('sh0007','Thursday','10:30:00','14:00:00'),('sh0008','Thursday','18:30:00','23:00:00'),('sh0009','Friday','10:30:00','14:00:00'),('sh0010','Friday','18:30:00','23:00:00'),('sh0011','Saturday','10:30:00','14:00:00'),('sh0012','Saturday','18:30:00','23:00:00'),('sh0013','Sunday','10:30:00','14:00:00'),('sh0014','Sunday','18:30:00','23:00:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `position` varchar(100) NOT NULL,
  `hourly_rate` decimal(5,2) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('st0001','Mindy','Sloan','Chef',17.25),('st0002','Luqman','Cantu','Head chef',21.50),('st0003','Seren','Lindsey','Chef',17.25),('st0004','Arran','Hodgson','Head chef',21.50),('st0005','Talha','Portillo','Chef',17.25),('st0006','San','Black','Head chef',21.50),('st0007','Zachery','Robins','Chef',17.25),('st0008','Faraz','Peck','Head chef',21.50),('st0009','Lilly-Rose','Vaughn','Delivery rider',14.50),('st0010','Desiree','Gardner','Delivery rider',14.50),('st0011','Ivan','English','Delivery rider',14.50),('st0012','Johnathon','Bradford','Delivery rider',14.50),('st0013','Matilda','Mccarty','Delivery rider',14.50),('st0014','Areeb','Vasquez','Delivery rider',14.50),('st0015','Amiyah','Lambert','Delivery rider',14.50),('st0016','Amrit','Greaves','Delivery rider',14.50);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `stock1`
--

DROP TABLE IF EXISTS `stock1`;
/*!50001 DROP VIEW IF EXISTS `stock1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stock1` AS SELECT 
 1 AS `item_name`,
 1 AS `ing_id`,
 1 AS `ing_name`,
 1 AS `ing_weight`,
 1 AS `ing_price`,
 1 AS `order_quantity`,
 1 AS `recipe_quantity`,
 1 AS `ordered_weight`,
 1 AS `unit_cost`,
 1 AS `ingredient_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `stock1`
--

/*!50001 DROP VIEW IF EXISTS `stock1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stock1` AS select `s1`.`item_name` AS `item_name`,`s1`.`ing_id` AS `ing_id`,`s1`.`ing_name` AS `ing_name`,`s1`.`ing_weight` AS `ing_weight`,`s1`.`ing_price` AS `ing_price`,`s1`.`order_quantity` AS `order_quantity`,`s1`.`recipe_quantity` AS `recipe_quantity`,(`s1`.`order_quantity` * `s1`.`recipe_quantity`) AS `ordered_weight`,(`s1`.`ing_price` / `s1`.`ing_weight`) AS `unit_cost`,((`s1`.`order_quantity` * `s1`.`recipe_quantity`) * (`s1`.`ing_price` / `s1`.`ing_weight`)) AS `ingredient_cost` from (select `o`.`item_id` AS `item_id`,`i`.`sku` AS `sku`,`i`.`item_name` AS `item_name`,`r`.`ing_id` AS `ing_id`,`ing`.`ing_name` AS `ing_name`,`r`.`quantity` AS `recipe_quantity`,sum(`o`.`quantity`) AS `order_quantity`,`ing`.`ing_weight` AS `ing_weight`,`ing`.`ing_price` AS `ing_price` from (((`orders` `o` left join `item` `i` on((`o`.`item_id` = `i`.`item_id`))) left join `recipe` `r` on((`i`.`sku` = `r`.`recipe_id`))) left join `ingredient` `ing` on((`ing`.`ing_id` = `r`.`ing_id`))) group by `o`.`item_id`,`i`.`sku`,`i`.`item_name`,`r`.`ing_id`,`r`.`quantity`,`ing`.`ing_name`,`ing`.`ing_weight`,`ing`.`ing_price`) `s1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-11  0:28:45
