--
-- Table structure for table `state`
--


DROP TABLE IF EXISTS `state
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`state_id`),
  KEY `fk_state_idx` (`country_id`),
  CONSTRAINT `fk_state` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`state_id`, `state_name`, `country_id`)
VALUES 
(1,'Andaman and Nicobar Islands',101),
(2,'Andhra Pradesh',101),
(3,'Arunachal Pradesh',101),
(4,'Assam',101),
(5,'Bihar',101),
(6,'Chandigarh',101),
(7,'Chhattisgarh',101),
(8,'Dadra and Nagar Haveli',101),
(9,'Daman and Diu',101),
(10,'Delhi',101),(11,'Goa',101),
(12,'Gujarat',101),
(13,'Haryana',101),
(14,'Himachal Pradesh',101),
(15,'Jammu and Kashmir',101),
(16,'Jharkhand',101),
(17,'Karnataka',101),
(19,'Kerala',101),
(20,'Lakshadweep',101),
(21,'Madhya Pradesh',101),
(22,'Maharashtra',101),
(23,'Manipur',101),
(24,'Meghalaya',101),
(25,'Mizoram',101),
(26,'Nagaland',101),
(29,'Odisha',101),
(31,'Pondicherry',101),
(32,'Punjab',101),
(33,'Rajasthan',101),
(34,'Sikkim',101),
(35,'Tamil Nadu',101),
(36,'Telangana',101),
(37,'Tripura',101),
(38,'Uttar Pradesh',101),
(39,'Uttarakhand',101),
(41,'West Bengal',101);
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;
