-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: fp_pwd_5
-- ------------------------------------------------------
-- Server version	8.0.25

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
  `address_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `user_address` varchar(300) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `default_address` tinyint NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,5,'Jl. Raya Kalibata No.1, RT.9/RW.4, Rawajati, Kec. Pancoran, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12750','-6.255409322689378,106.85226289970407',1),(2,5,'Jl. Padasuka Atas No.233, Padasuka, Kec. Cimenyan, Bandung, Jawa Barat 40192','-6.884294224824708,107.66148351850873',0),(3,6,'Jl. Terompong No.24, Sumerta Kelod, Kec. Denpasar Tim., Kota Denpasar, Bali 80239','-8.654857030889817,115.2431416799489',1),(4,6,'Jl. P. Antasari No.139, Sungai Baru, Kec. Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70233','-3.322764595480353,114.60475593804104',0),(5,6,'Jl. Mayjen Sungkono No.89, Gn. Sari, Kec. Dukuhpakis, Kota SBY, Jawa Timur 60224','-7.286518385847658,112.72099510190635',0),(6,7,'Jalan K.H. Ahmad Dahlan, Jl. Banteng Dalam Kel No.6, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat 40264','-6.931290474533568,107.62421110595317',1),(7,8,'Jl. Raya Serpong No.8A, Pd. Jagung, Kec. Serpong Utara, Kota Tangerang Selatan, Banten 15326','-6.260942454566785,106.6552117607698',1),(8,8,'Jl. MT. Haryono No.47, Suryodiningratan, Kec. Mantrijeron, Kota Yogyakarta, Daerah Istimewa Yogyakarta 55141','-7.811808127053831,110.35791972766002',0),(9,11,'Jl. Ahmad Yani No.66, Gelangan, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56117','-7.467776135553615,110.21803873768839',1),(10,13,'Jl. Abubakar Lambogo No.83, Bukit Indah, Kec. Soreang, Kota Parepare, Sulawesi Selatan 91131','-4.002518856111405,119.64243848385566',1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (0,0,1),(1,1,2),(2,2,3),(3,3,4),(4,1,9);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (14,8),(15,5),(16,10),(17,6),(18,7),(20,0),(21,1),(22,11),(23,13);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `cart_items_id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`cart_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (115,23,2,'l',3),(116,23,8,'xl',5);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `price_buy` int NOT NULL,
  `price_sell` int NOT NULL,
  `product_desc` varchar(1000) NOT NULL,
  `category` varchar(45) NOT NULL,
  `color` varchar(45) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `hide` tinyint DEFAULT '1',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Kaftan Dress',565000,899900,'Long, wide kaftan dress in woven fabric. V-neck with a pleat at the front for added width, long, wide batwing sleeves and a wide tie belt at the waist. Discreet pockets in the side seams, and a slit in each side of the hem.','dress','brown','/images/IMG1635037319677.jpg',1),(2,'Flared Skirt',325000,559900,'CONSCIOUS Voluminous, calf-length skirt in lightweight cotton voile. High waist with concealed elastication. Lined. Made from organic cotton, this skirt is part of our hand-painted meadow flowers collection. The pattern was developed by our print designers Kavita, Abigail, Holly and Florentin, who picked their favourite wild flowers and recreated them in watercolour.','skirt','yellow','/images/IMG1635037179070.jpg',1),(3,'Belted Flat Shoes',150000,339900,'Flat shoes with thin belt for everyday use.','shoes','black','/images/IMG1634837132326.jpg',0),(4,'Puff-sleeved Cardigan',250000,319900,'Short cardigan in a soft rib knit containing some wool with a V-neck, buttons down the front and long puff sleeves with defined shoulders and close-fitting cuffs. The polyester content of the cardigan is recycled. ','cardigan','blue','/images/IMG1634837868569.jpg',1),(5,'Maxi Skirt',275000,389900,'Ankle-length skirt in a woven viscose blend. High waist with covered elastication at the back and buttons down the front with an opening at the hem. Unlined.','skirt','green','/images/IMG1634837164514.jpg',1),(6,'Pleated Skirt',355000,449900,'Calf-length skirt in pleated chiffon with a high, elasticated waist. Satin lining.','skirt','pink','/images/IMG1634837223860.jpg',1),(7,'Wide Floral Dress',175000,279900,'Short, A-line dress woven in a viscose blend with a wide neckline and 3/4-length balloon sleeves with narrow trims.','dress','turqoise','/images/IMG1634837547518.jpg',1),(8,'Flounce-collared Blouse',245000,399900,'Blouse in a patterned weave made from a viscose blend with a wide, flounced collar and a V-shaped opening at the front with narrow ties.','shirt','turqoise','/images/IMG1634837366894.jpg',1),(9,'Velour Trousers',135000,299900,'Trousers in soft velour. High waist with covered elastication and a drawstring, discreet pockets in the side seams and wide, straight legs.','trouser','pink','/images/IMG1634837574449.jpg',1),(10,'V-neck Blouse',125000,329900,'V-neck blouse in woven fabric with a sheen. Collar, buttons down the front, long sleeves with a sleeve placket and buttoned cuffs, and a rounded hem.','shirt','blue','/images/IMG1634837600232.jpg',0),(11,'Pleat-hem Trousers',105000,189900,'Ankle-length, pull-on trousers in an airy weave. High waist with covered elastication, side pockets and rounded balloon legs that are close-fitting with a pleat at the hems.','trouser','beige','/images/IMG1634837824318.jpg',1),(12,'Wide High Jeans',200000,299900,'5-pocket jeans in washed denim with a high waist, zip fly and button and wide, straight legs.','jeans','blue','/images/IMG1634837647991.jpg',1),(13,'Hard-worn Jeans',250000,429900,'5-pocket jeans in washed cotton denim with hard-worn details. High waist, a button fly and straight legs to create the perfect 90s vibe.','jeans','blue','/images/IMG1634837624744.jpg',1),(14,'Rib-knit Cardigan',205000,349900,'Boxy-style cardigan in a soft, rib-knit cotton blend with a V-neck and buttons down the front. Dropped shoulders with seams positioned towards the back and long, wide sleeves that are close-fitting at the cuffs.','cardigan','beige','/images/IMG1634837670088.jpg',1),(15,'Ribbed Sweater Vest',99000,179900,'V-neck sweater vest in a rib knit.','cardigan','blue','/images/IMG1634837690182.jpg',1),(16,'Hooded Top',200000,349900,'Wide top in sweatshirt fabric with a lined drawstring hood, kangaroo pocket and ribbing at the cuffs and hem.','hoodie','pink','/images/IMG1634837767259.jpg',1),(17,'Sleeveless Hoodie',100000,179900,'Short, sleeveless hoodie in lightweight sweatshirt fabric with a drawstring hood and a small appliqué at the hem.','hoodie','black','/images/IMG1634837787200.jpg',1),(18,'Ballet Pumps',200000,329900,'Ballet pumps in imitation leather with chisel toes and a loop at the back. Imitation leather linings and insoles. Heel 1 cm.','shoes','beige','/images/IMG1634837964650.jpg',1),(19,'90s Baggy High Jeans',350000,499900,'CONSCIOUS 5-pocket jeans in sturdy, washed denim. Loose fit with a high waist, zip fly and button, and straight legs.','jeans','black','/images/IMG1634625492023.jpg',1),(65,'Knitted Cardigan',180000,279900,'Cardigan in a soft knit with dropped shoulders, long sleeves, front pockets and no buttons.','cardigan','maroon','/images/IMG1634837745676.jpg',1),(66,'Oversized Zip-through Hoodie',255000,399900,'Oversized zip-through hoodie in soft sweatshirt fabric. Lined, drawstring hood, a zip down the front and kangaroo pockets. Dropped shoulders, long sleeves and ribbing at the cuffs and hem. Soft brushed inside.','hoodie','white','/images/IMG1634837721143.jpg',1),(67,'Chiffon Dress',525000,899900,'Maxi dress in crinkled chiffon with a round neckline and concealed zip at the back. Seam at the waist with a drawstring that adjusts at the sides. Lined.','dress','pink','/images/IMG1634837900080.jpg',1),(68,'Pleated Chiffon Blouse',324999,449000,'Small stand-up collar with pleats that continue down over the shoulders, a V-neck opening at the top with narrow ties at the neckline and long, wide raglan sleeves with narrow cuffs and a covered button.','shirt','blue','/images/IMG1634837940945.jpg',1),(69,'Crêpe Blouse',250000,349900,'Blouse in a crêpe weave. Round neckline with gathers at the front to create soft draping and an opening with a button at the back of the neck. Long sleeves and wide, buttoned cuffs. Unlined.','shirt','green','/images/IMG1634837312293.jpg',1),(70,'Leggings With Creases',225000,349900,'Leggings in stretch fabric. High waist with concealed elastication and legs with sewn-in creases at the front and raw-edge hems.','trouser','brown','/images/IMG1634837281801.jpg',1),(71,'Wide Paper Bag Jeans',255000,339900,'Ankle-length jeans in soft, washed denim. High, elasticated paper bag waist with a small frill trim and detachable tie belt, and wide, straight legs.','trouser','black','/images/IMG1634837256067.jpg',1),(72,'Puff-sleeved Blouse',100000,319900,'The finely woven blouse hangs in a pattern with a pointed collar, buttons at the front and a pleated yoke at the back. Long puff sleeves with buttoned cuffs, and rounded hem.','shirt','white','/images/IMG1634837036909.jpg',1),(73,'Wide Ribbed Trousers',100000,299900,'Wide trousers in wide-ribbed jersey with covered elastication at the waist and straight legs.','trouser','beige','/images/IMG1634837064800.jpg',1),(74,'Ribboned Flat Shoes',150000,349900,'Flower-ribboned flat shoes for a chick look.','shoes','black','/images/IMG1634837197480.jpg',1),(76,'Blend Shirt Dress',200000,389900,'Every day look deepneckline with a turndowncollar shirtdress.','dress','black','/images/IMG1634837333496.jpg',1),(78,'Tie-belt Dress',250000,359900,'A midi, shortsleeved, simple but angelic shirt dress.','dress','white','/images/IMG1634837510989.jpg',1),(85,'Airy Dress',250000,399900,'Knee-length dress in an airy weave with a gathered V-neck and wide, 3/4-length raglan sleeves with wide cuffs. Gathered seam at the hips for added width. Unlined.','dress','cream','/images/IMG1635054022904.jpg',1),(86,'Shimmering Beach Kaftan',300000,449900,'Short kaftan in airy jersey containing glittery threads. Long, wide sleeves with narrow elastication at the cuffs, a drawstring at the waist and high slits in the sides.','dress','beige','/images/IMG1635054058244.jpg',1),(87,'Airy Lyocell-blend Dress',235000,499900,'CONSCIOUS Knee-length, A-line dress woven in an airy lyocell blend with a V-neck, low back with a horizontal strap and narrow, elastic shoulder straps. Unlined.','dress','blue','/images/IMG1635054102336.jpg',1),(88,'Chiffon Maxi Dress',350000,669900,'CONSCIOUS A-line maxi dress in airy chiffon with elegant frills down the front and back. Double-layered, frilled collar with an opening at the front and narrow ties at the neckline. Long, voluminous sleeves with vertical frills, and smocked, frill-trimmed cuffs. V-neck underdress in jersey with adjustable shoulder straps.','dress','beige','/images/IMG1635054146099.jpg',1),(89,'Rib-knit Dress',200000,499900,'Long dress in a soft rib knit containing some wool with a collar and V-neck. Gently dropped shoulders, short sleeves and a slit in each side of the hem.','dress','white','/images/IMG1635054185456.jpg',1),(90,'Flounce-collared Blouse',125000,299900,'Blouse in an airy weave made from a lyocell blend with a wide, flounced collar and V-neck opening at the front with narrow ties. Long puff sleeves with buttoned cuffs.','shirt','pink','/images/IMG1635054022904.jpg',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_size`
--

DROP TABLE IF EXISTS `products_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_size` (
  `products_size_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  PRIMARY KEY (`products_size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_size`
--

LOCK TABLES `products_size` WRITE;
/*!40000 ALTER TABLE `products_size` DISABLE KEYS */;
INSERT INTO `products_size` VALUES (1,1,'s'),(2,1,'m'),(3,1,'l'),(4,1,'xl'),(5,2,'s'),(6,2,'m'),(7,2,'l'),(8,2,'xl'),(9,3,'37'),(10,3,'38'),(11,3,'39'),(12,3,'40'),(13,4,'37'),(14,4,'38'),(15,4,'39'),(16,4,'40'),(17,5,'s'),(18,5,'m'),(19,5,'l'),(20,5,'xl'),(21,6,'s'),(22,6,'m'),(23,6,'l'),(24,6,'xl'),(25,7,'s'),(26,7,'m'),(27,7,'l'),(28,7,'xl'),(29,8,'s'),(30,8,'m'),(31,8,'l'),(32,8,'xl'),(33,9,'s'),(34,9,'m'),(35,9,'l'),(36,9,'xl'),(37,10,'s'),(38,10,'m'),(39,10,'l'),(40,10,'xl'),(41,11,'s'),(42,11,'m'),(43,11,'l'),(44,11,'xl'),(45,12,'s'),(46,12,'m'),(47,12,'l'),(48,12,'xl'),(49,13,'s'),(50,13,'m'),(51,13,'l'),(52,13,'xl'),(53,14,'s'),(54,14,'m'),(55,14,'l'),(56,14,'xl'),(57,15,'s'),(58,15,'m'),(59,15,'l'),(60,15,'xl'),(61,16,'s'),(62,16,'m'),(63,16,'l'),(64,16,'xl'),(65,17,'s'),(66,17,'m'),(67,17,'l'),(68,17,'xl');
/*!40000 ALTER TABLE `products_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `warehouse_id_form` int NOT NULL,
  `warehouse_id_to` int NOT NULL,
  `amount` int NOT NULL,
  `status` varchar(45) NOT NULL,
  `transactions_id` varchar(45) NOT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES (246,2,'m',1,2,2,'unconfirmed','78'),(247,16,'xl',1,2,2,'unconfirmed','79'),(249,18,'40',2,3,1,'unconfirmed','80'),(251,70,'s',3,1,1,'unconfirmed','81'),(253,69,'l',3,1,1,'unconfirmed','81'),(254,15,'l',1,2,2,'unconfirmed','82'),(255,15,'l',1,3,1,'unconfirmed','82'),(264,6,'xl',1,2,1,'unconfirmed','93'),(269,9,'s',2,1,1,'unconfirmed','99'),(273,1,'l',3,1,2,'unconfirmed','101'),(275,12,'l',3,2,1,'unconfirmed','103'),(280,15,'l',2,3,1,'unconfirmed','105'),(281,65,'m',2,1,2,'unconfirmed','105'),(283,85,'l',3,2,2,'unconfirmed','108'),(284,4,'s',1,2,1,'unconfirmed','110'),(285,5,'xl',1,2,1,'unconfirmed','110'),(287,67,'xl',1,2,1,'unconfirmed','112'),(288,12,'l',3,2,1,'unconfirmed','115'),(289,1,'l',2,1,1,'unconfirmed','118'),(290,85,'l',1,2,1,'unconfirmed','119'),(291,7,'xl',3,2,2,'unconfirmed','125'),(292,7,'xl',3,1,1,'unconfirmed','125'),(299,2,'l',3,2,0,'unconfirmed','129'),(300,2,'l',3,1,2,'unconfirmed','129'),(301,8,'xl',3,2,1,'unconfirmed','129'),(302,8,'xl',3,1,2,'unconfirmed','129');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping`
--

DROP TABLE IF EXISTS `shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping` (
  `shipping_id` int NOT NULL AUTO_INCREMENT,
  `transactions_id` int NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `user_address` varchar(300) NOT NULL,
  `warehouse_id` int NOT NULL,
  `shipping_status` varchar(45) NOT NULL DEFAULT 'waiting_confirmation',
  `shipping_price` int NOT NULL,
  PRIMARY KEY (`shipping_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping`
--

LOCK TABLES `shipping` WRITE;
/*!40000 ALTER TABLE `shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_in`
--

DROP TABLE IF EXISTS `stock_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_in` (
  `stock_in_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `initial_stock` int NOT NULL,
  `stock_in` int NOT NULL,
  `final_stock` int NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`stock_in_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_in`
--

LOCK TABLES `stock_in` WRITE;
/*!40000 ALTER TABLE `stock_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_out`
--

DROP TABLE IF EXISTS `stock_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_out` (
  `stockout_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `initial_stock` int NOT NULL,
  `stock_out` int NOT NULL,
  `final_stock` int NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`stockout_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_out`
--

LOCK TABLES `stock_out` WRITE;
/*!40000 ALTER TABLE `stock_out` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_items`
--

DROP TABLE IF EXISTS `transaction_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_items` (
  `transaction_items_id` int NOT NULL AUTO_INCREMENT,
  `transactions_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `quantity` int NOT NULL,
  `transaction_price` int NOT NULL,
  PRIMARY KEY (`transaction_items_id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_items`
--

LOCK TABLES `transaction_items` WRITE;
/*!40000 ALTER TABLE `transaction_items` DISABLE KEYS */;
INSERT INTO `transaction_items` VALUES (145,78,2,'m',4,559900),(146,78,1,'l',1,899900),(147,79,9,'xl',1,299900),(148,79,16,'xl',3,349900),(149,80,18,'40',1,329900),(150,80,13,'m',1,429900),(151,80,5,'s',1,389900),(152,81,70,'s',1,349900),(153,81,69,'l',1,349900),(154,82,15,'l',4,179900),(155,82,14,'m',2,349900),(167,89,4,'l',1,319900),(168,89,8,'s',1,399900),(169,89,72,'l',1,319900),(170,90,4,'l',1,319900),(171,90,8,'s',1,399900),(172,90,72,'l',1,319900),(173,91,4,'l',1,319900),(174,91,8,'s',1,399900),(175,91,72,'l',1,319900),(176,92,6,'xl',2,449900),(177,92,16,'l',3,349900),(178,93,6,'xl',2,449900),(179,93,16,'l',3,349900),(180,94,71,'l',1,339900),(181,94,69,'xl',1,349900),(182,95,71,'l',1,339900),(183,95,69,'xl',1,349900),(184,96,5,'l',1,389900),(185,96,16,'xl',1,349900),(186,97,5,'l',1,389900),(187,97,16,'xl',1,349900),(188,98,5,'l',1,389900),(189,98,8,'xl',1,399900),(190,99,9,'s',1,299900),(191,99,17,'xl',2,179900),(192,100,1,'l',2,899900),(193,100,18,'39',1,329900),(194,101,1,'l',2,899900),(195,101,18,'39',1,329900),(196,102,12,'l',1,299900),(197,102,13,'xl',3,429900),(198,103,12,'l',1,299900),(199,103,13,'xl',3,429900),(200,104,15,'l',1,179900),(201,104,65,'m',2,279900),(202,105,15,'l',1,179900),(203,105,65,'m',2,279900),(204,106,85,'l',2,399900),(205,107,85,'l',2,399900),(206,108,85,'l',2,399900),(207,109,4,'s',1,319900),(208,109,5,'xl',1,389900),(209,110,4,'s',1,319900),(210,110,5,'xl',1,389900),(211,111,67,'xl',1,899900),(212,111,11,'xl',1,189900),(213,111,88,'l',1,669900),(214,112,67,'xl',1,899900),(215,112,11,'xl',1,189900),(216,112,88,'l',1,669900),(217,113,70,'xl',1,349900),(218,113,86,'xl',1,449900),(219,114,70,'xl',1,349900),(220,114,86,'xl',1,449900),(221,115,5,'l',1,389900),(222,115,7,'l',1,279900),(223,115,12,'l',1,299900),(224,116,17,'l',1,179900),(225,116,16,'l',1,349900),(226,117,17,'l',1,179900),(227,117,16,'l',1,349900),(228,118,8,'l',1,399900),(229,118,1,'l',1,899900),(230,119,85,'l',1,399900),(231,119,87,'l',1,499900),(232,119,89,'l',1,499900),(233,120,2,'m',1,559900),(234,121,16,'l',1,349900),(241,125,2,'m',1,559900),(242,125,7,'xl',6,279900),(243,126,2,'m',1,559900),(244,126,7,'xl',6,279900),(247,128,2,'l',3,559900),(248,128,8,'xl',5,399900),(249,129,2,'l',3,559900),(250,129,8,'xl',5,399900);
/*!40000 ALTER TABLE `transaction_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transactions_id` int NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int NOT NULL,
  `transaction_status` varchar(45) NOT NULL DEFAULT 'pending',
  `payment_proof` varchar(45) DEFAULT NULL,
  `warehouse_id` int DEFAULT NULL,
  PRIMARY KEY (`transactions_id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (78,'2021-02-23 12:16:58',8,'paid',NULL,1),(79,'2021-03-24 00:39:03',8,'paid',NULL,1),(80,'2021-06-24 00:42:22',7,'paid',NULL,2),(81,'2021-04-24 00:43:28',6,'paid',NULL,3),(82,'2021-05-24 00:46:36',5,'paid',NULL,1),(89,'2021-04-24 02:24:38',8,'user_cancelled',NULL,1),(90,'2021-10-24 02:24:41',8,'user_cancelled',NULL,1),(91,'2021-09-24 02:24:42',8,'paid',NULL,1),(92,'2021-05-24 02:25:31',5,'user_cancelled',NULL,1),(93,'2021-06-24 02:25:33',5,'paid',NULL,1),(94,'2021-05-24 02:26:37',5,'user_cancelled',NULL,1),(95,'2021-07-24 02:26:41',5,'paid',NULL,1),(96,'2021-06-24 02:27:31',7,'user_cancelled',NULL,2),(97,'2021-08-24 02:27:33',7,'paid',NULL,2),(98,'2021-07-24 02:31:56',7,'paid',NULL,2),(99,'2021-08-24 02:32:12',7,'paid',NULL,2),(100,'2021-08-24 02:32:58',6,'user_cancelled',NULL,3),(101,'2021-04-24 02:33:00',6,'paid',NULL,3),(102,'2021-08-24 02:34:24',6,'user_cancelled',NULL,3),(103,'2021-10-24 02:34:29',6,'paid',NULL,3),(104,'2021-06-24 02:47:25',7,'user_cancelled',NULL,2),(105,'2021-04-24 02:47:26',7,'paid',NULL,2),(106,'2021-10-24 08:04:27',7,'user_cancelled',NULL,2),(107,'2021-08-24 08:05:32',6,'user_cancelled',NULL,3),(108,'2021-08-24 08:05:35',6,'paid',NULL,3),(109,'2021-10-24 09:11:09',8,'paid',NULL,1),(110,'2021-03-24 09:13:50',8,'paid',NULL,1),(111,'2021-07-25 03:00:41',5,'user_cancelled',NULL,1),(112,'2021-08-25 03:00:42',5,'paid',NULL,1),(113,'2021-10-25 03:01:31',5,'user_cancelled',NULL,1),(114,'2021-09-25 03:01:41',5,'paid',NULL,1),(115,'2021-10-25 03:07:20',6,'paid',NULL,3),(116,'2021-10-25 03:07:43',6,'user_cancelled',NULL,3),(117,'2021-10-25 03:07:50',6,'paid',NULL,3),(118,'2021-10-25 03:10:48',7,'paid',NULL,2),(119,'2021-10-25 03:12:55',8,'paid',NULL,1),(120,'2021-10-25 03:16:07',8,'paid',NULL,1),(121,'2021-10-25 03:17:54',8,'paid',NULL,1),(125,'2021-10-25 07:45:02',11,'paid',NULL,3),(126,'2021-10-25 08:08:04',11,'paid',NULL,3),(128,'2021-10-25 08:24:31',13,'user_cancelled',NULL,3),(129,'2021-10-25 08:25:07',13,'paid',NULL,3);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `profpic` varchar(200) DEFAULT NULL,
  `auth_status` varchar(45) NOT NULL,
  `verification_status` varchar(45) NOT NULL DEFAULT 'unverified',
  `pic_title` varchar(45) DEFAULT NULL,
  `pic_location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'simon','simon_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Simon Ewing','M',32,NULL,'superadmin','verified',NULL,NULL),(2,'bruno','bruno_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Bruno Villarreal','M',NULL,NULL,'admin','verified',NULL,NULL),(3,'jasmine','jasmine_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Jasmine Robinson','F',NULL,NULL,'admin','verified',NULL,NULL),(4,'lucas','lucas_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Lucas Harmon','M',NULL,NULL,'admin','verified',NULL,NULL),(5,'maggy','maggy_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','',NULL,NULL,NULL,'user','verified',NULL,NULL),(6,'emerald','emerald_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Emerald Green',NULL,NULL,NULL,'user','verified',NULL,NULL),(7,'gail','gail_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Gail Carter','F',27,NULL,'user','verified',NULL,NULL),(8,'duncan','duncan_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Duncan Haynes','F',NULL,NULL,'user','verified',NULL,NULL),(9,'walter','walter_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Walter Hall',NULL,NULL,NULL,'admin','verified',NULL,NULL),(10,'michael','michael_pwd_warehouse@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba',NULL,NULL,NULL,NULL,'user','verified',NULL,NULL),(11,'almasutami','almasutami@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Almas','Female',20,NULL,'user','verified',NULL,NULL),(13,'almas22','almasutami@gmail.com','50c0a75fc06685c2e86aa40e6eea5af2bd9d2fba','Almas Utami','Female',25,NULL,'user','verified',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `warehouse_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_name` varchar(45) NOT NULL,
  `warehouse_location` varchar(100) NOT NULL,
  PRIMARY KEY (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (0,'superadmin','superadmin'),(1,'Jakarta','-6.168573296254959,106.82739267779641'),(2,'Bandung','-6.918481927070166,107.6060782364931'),(3,'Surabaya','-7.259266968418259,112.75078977847072');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_stock`
--

DROP TABLE IF EXISTS `warehouse_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_stock` (
  `warehouse_stock_id` int NOT NULL AUTO_INCREMENT,
  `warehouse_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(45) NOT NULL,
  `warehouse_stock` int NOT NULL,
  `user_stock` int NOT NULL,
  PRIMARY KEY (`warehouse_stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_stock`
--

LOCK TABLES `warehouse_stock` WRITE;
/*!40000 ALTER TABLE `warehouse_stock` DISABLE KEYS */;
INSERT INTO `warehouse_stock` VALUES (1,1,1,'s',1,1),(2,1,1,'m',2,2),(3,1,1,'l',1,1),(4,1,1,'xl',0,0),(5,1,2,'s',3,3),(6,1,2,'m',2,2),(7,1,2,'l',0,0),(9,1,3,'37',2,2),(10,1,3,'38',2,2),(11,1,3,'39',1,1),(12,1,3,'40',4,4),(13,1,4,'s',2,2),(14,1,4,'m',3,3),(15,1,4,'l',1,1),(16,1,4,'xl',1,1),(17,1,5,'s',3,3),(18,1,5,'m',1,1),(19,1,5,'l',3,3),(20,1,5,'xl',2,2),(21,1,6,'s',3,3),(22,1,6,'m',2,2),(23,1,6,'l',1,1),(24,1,6,'xl',2,2),(25,1,7,'s',2,2),(26,1,7,'m',2,2),(27,1,7,'l',1,1),(28,1,7,'xl',0,0),(29,1,8,'s',1,1),(30,1,8,'m',2,2),(31,1,8,'l',1,1),(32,1,8,'xl',0,0),(33,1,9,'s',2,2),(34,1,9,'m',2,2),(35,1,9,'l',3,3),(36,1,9,'xl',1,1),(37,1,10,'s',3,3),(38,1,10,'m',2,2),(39,1,10,'l',1,1),(40,1,10,'xl',2,2),(41,1,11,'s',3,3),(42,1,11,'m',2,2),(43,1,11,'l',1,1),(44,1,11,'xl',2,2),(45,1,12,'s',3,3),(46,1,12,'m',2,2),(47,1,12,'l',1,1),(48,1,12,'xl',2,2),(49,1,13,'s',3,3),(50,1,13,'m',2,2),(51,1,13,'l',3,3),(52,1,13,'xl',3,3),(53,1,14,'s',3,3),(54,1,14,'m',1,1),(55,1,14,'l',3,3),(56,1,14,'xl',3,3),(57,1,15,'s',3,3),(58,1,15,'m',2,2),(59,1,15,'l',1,1),(60,1,15,'xl',1,1),(61,1,16,'s',3,3),(62,1,16,'m',2,2),(63,1,16,'l',1,1),(64,1,16,'xl',1,1),(65,1,17,'s',3,3),(66,1,17,'m',2,2),(67,1,17,'l',1,1),(68,1,17,'xl',1,1),(77,2,3,'37',1,1),(78,2,3,'38',2,2),(79,2,3,'39',3,3),(80,2,3,'40',4,4),(81,2,4,'s',1,1),(82,2,4,'m',2,2),(83,2,4,'l',2,2),(84,2,4,'xl',2,2),(85,2,5,'s',2,2),(86,2,5,'m',2,2),(87,2,5,'l',2,2),(88,2,5,'xl',1,1),(89,2,6,'s',2,2),(90,2,6,'m',2,2),(91,2,6,'l',2,2),(92,2,6,'xl',1,1),(93,2,7,'s',1,1),(94,2,7,'m',2,2),(95,2,7,'l',2,2),(96,2,7,'xl',1,1),(97,2,8,'s',3,3),(98,2,8,'m',2,2),(99,2,8,'l',1,1),(100,2,8,'xl',0,0),(101,2,9,'s',2,2),(102,2,9,'m',2,2),(103,2,9,'l',3,3),(104,2,9,'xl',2,2),(105,2,10,'s',3,3),(106,2,10,'m',2,2),(107,2,10,'l',2,2),(108,2,10,'xl',1,1),(109,2,12,'s',3,3),(110,2,12,'m',1,1),(111,2,12,'l',1,1),(112,2,12,'xl',2,2),(113,2,12,'s',3,3),(114,2,12,'m',2,2),(115,2,12,'l',0,0),(116,2,12,'xl',2,2),(117,2,13,'s',3,3),(118,2,13,'m',1,1),(119,2,13,'l',3,3),(120,2,13,'xl',3,3),(121,2,14,'s',3,3),(122,2,14,'m',2,2),(123,2,14,'l',3,3),(124,2,14,'xl',3,3),(125,2,15,'s',3,3),(126,2,15,'m',2,2),(127,2,15,'l',1,1),(128,2,15,'xl',2,2),(129,2,16,'s',3,3),(130,2,16,'m',2,2),(131,2,16,'l',2,2),(132,2,16,'xl',1,1),(133,2,17,'s',3,3),(134,2,17,'m',1,1),(135,2,17,'l',2,2),(136,2,17,'xl',1,1),(141,3,2,'s',1,1),(142,3,2,'m',1,1),(143,3,2,'l',0,0),(145,3,3,'37',3,3),(146,3,3,'38',3,3),(147,3,3,'39',3,3),(148,3,3,'40',4,4),(149,3,4,'s',2,2),(150,3,4,'m',1,1),(151,3,4,'l',3,3),(152,3,4,'xl',1,1),(153,3,5,'s',1,1),(154,3,5,'m',3,3),(155,3,5,'l',1,1),(156,3,5,'xl',3,3),(157,3,6,'s',3,3),(158,3,6,'m',3,3),(159,3,6,'l',3,3),(160,3,6,'xl',1,1),(161,3,7,'s',3,3),(162,3,7,'m',3,3),(163,3,7,'l',2,2),(164,3,7,'xl',0,0),(165,3,8,'s',3,3),(166,3,8,'m',1,1),(167,3,8,'l',3,3),(168,3,8,'xl',0,0),(169,3,9,'s',1,1),(170,3,9,'m',3,3),(171,3,9,'l',1,1),(172,3,9,'xl',3,3),(173,3,10,'s',3,3),(174,3,10,'m',1,1),(175,3,10,'l',3,3),(176,3,10,'xl',3,3),(177,3,13,'s',1,1),(178,3,13,'m',3,3),(179,3,13,'l',1,1),(180,3,13,'xl',1,1),(181,3,13,'s',3,3),(182,3,13,'m',3,3),(183,3,13,'l',3,3),(184,3,13,'xl',1,1),(185,3,13,'s',3,3),(186,3,13,'m',3,3),(187,3,13,'l',1,1),(188,3,13,'xl',1,1),(189,3,14,'s',3,3),(190,3,14,'m',1,1),(191,3,14,'l',2,2),(192,3,14,'xl',1,1),(193,3,15,'s',3,3),(194,3,15,'m',3,3),(195,3,15,'l',1,1),(196,3,15,'xl',3,3),(197,3,16,'s',1,1),(198,3,16,'m',3,3),(199,3,16,'l',2,2),(200,3,16,'xl',1,1),(201,3,17,'s',3,3),(202,3,17,'m',3,3),(203,3,17,'l',1,1),(204,3,17,'xl',1,1),(205,3,18,'37',1,1),(206,3,18,'38',2,2),(207,3,18,'39',2,2),(208,3,18,'40',2,2),(212,1,65,'s',1,1),(213,1,65,'m',1,1),(214,1,65,'l',1,1),(215,1,65,'xl',1,1),(216,1,66,'s',1,1),(217,1,66,'m',2,2),(218,1,66,'l',1,1),(219,1,66,'xl',1,1),(220,2,67,'s',1,1),(221,2,67,'m',3,3),(222,2,67,'l',2,2),(223,2,67,'xl',1,1),(224,3,68,'s',2,2),(225,3,68,'m',3,3),(226,3,68,'l',4,4),(227,3,68,'xl',2,2),(228,1,69,'s',2,2),(229,1,69,'m',1,1),(230,1,69,'l',2,2),(231,1,69,'xl',2,2),(232,1,70,'s',1,1),(233,1,70,'m',1,1),(234,1,70,'l',1,1),(235,1,70,'xl',1,1),(236,1,71,'s',1,1),(237,1,71,'m',1,1),(238,1,71,'l',1,1),(239,1,71,'xl',2,2),(240,1,72,'s',2,2),(241,1,72,'m',2,2),(242,1,72,'l',1,1),(243,1,72,'xl',1,1),(244,1,73,'s',2,2),(245,1,73,'m',2,2),(246,1,73,'l',2,2),(247,1,73,'xl',1,1),(248,2,74,'37',2,2),(249,2,74,'38',1,1),(250,2,74,'39',1,1),(251,2,74,'40',1,1),(256,1,76,'s',2,2),(257,1,76,'m',3,3),(258,1,76,'l',4,4),(259,1,76,'xl',2,2),(264,3,78,'s',2,2),(265,3,78,'m',3,3),(266,3,78,'l',1,1),(267,2,85,'s',2,2),(268,2,85,'m',2,2),(269,2,85,'l',1,1),(270,1,86,'s',2,2),(271,1,86,'m',2,2),(272,1,86,'l',2,2),(273,1,86,'xl',1,1),(274,1,87,'s',2,2),(275,1,87,'m',1,1),(276,1,87,'l',1,1),(277,1,87,'xl',2,2),(278,1,88,'s',1,1),(279,1,88,'m',1,1),(280,1,88,'l',1,1),(281,1,89,'s',1,1),(282,1,89,'m',1,1),(283,1,89,'l',1,1),(284,1,89,'xl',2,2),(285,1,8,'s',1,1),(286,1,8,'m',1,1),(287,1,8,'l',2,2),(288,1,8,'xl',0,0);
/*!40000 ALTER TABLE `warehouse_stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-26 10:55:13
