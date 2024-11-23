-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: webpdc2t
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account_emailaddress`
--

DROP TABLE IF EXISTS `account_emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_emailaddress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account_emailaddress_user_id_email_987c8728_uniq` (`user_id`,`email`),
  KEY `account_emailaddress_upper` ((upper(`email`))),
  CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailaddress`
--

LOCK TABLES `account_emailaddress` WRITE;
/*!40000 ALTER TABLE `account_emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_emailconfirmation`
--

DROP TABLE IF EXISTS `account_emailconfirmation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_emailconfirmation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`),
  KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`),
  CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_emailconfirmation`
--

LOCK TABLES `account_emailconfirmation` WRITE;
/*!40000 ALTER TABLE `account_emailconfirmation` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_emailconfirmation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_blog`
--

DROP TABLE IF EXISTS `app_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_blog` (
  `blog_id` bigint NOT NULL AUTO_INCREMENT,
  `blogTitle` longtext NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogDate` date NOT NULL,
  `image_file` varchar(1000) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_blog`
--

LOCK TABLES `app_blog` WRITE;
/*!40000 ALTER TABLE `app_blog` DISABLE KEYS */;
INSERT INTO `app_blog` VALUES (1,'Tiêu điểm cuối năm 2023: Tổng hợp sản phẩm MacBook và iMac mới nhất của Apple','Sáng ngày 31/10, tại sự kiện Scary Fast mới nhất, những mẫu sản phẩm mới Mac của Apple đã chính thức ra mắt, tạo một làn sóng gây chấn động cộng đồng công nghệ toàn cầu.','2023-10-31',NULL,'https://shopdunk.com/images/thumbs/0022649_apple-wwdc-2023-logo_1600.jpeg'),(2,'Giá iPhone 15 Pro Max tháng 4-2024','Hàng loạt đơn vị cung cấp tại Việt Nam đã tung ra giá iPhone 15 Pro Max  chính thức với nhiều ưu đãi giảm giá thanh toán cực sâu','2023-11-13',NULL,'https://shopdunk.com/images/thumbs/0021938_iphone-15-pro-max%20(1)_1600.jpeg'),(3,'Đánh giá MacBook Air M1: MacBook Air M1 có ổn không?','Với sự kết hợp của vi xử lý 8 nhân và đồ họa 8 nhân trên cùng một con chip, Macbook Air M1 mang lại hiệu suất vượt trội hơn hẳn so với các thế hệ tiền nhiệm.','2024-04-07',NULL,'https://shopdunk.com/images/thumbs/0019069__DSC4273%20(1)_1600.jpeg'),(4,'iPad đang dần thay thế Macbook như thế nào?','Kể từ khi công bố lần đầu tiên vào năm 2010, cho tới nay, Apple đã liên tục cho ra mắt 10 thế hệ iPad với 27 loại máy cải tiến theo từng năm.','2024-02-17',NULL,'https://shopdunk.com/images/thumbs/0023801_%E1%BA%A2nh%20m%C3%A0n%20h%C3%ACnh%202023-11-15%20l%C3%BAc%2016.28.31_1600.png'),(5,'Trên tay Huawei Watch Fit 3: Thay đổi toàn diện về thiết kế, nhiều chế độ luyện tập, giá chỉ hơn 2 triệu đồng','Huawei Watch Fit 3 là chiếc đồng hồ thông minh mới nhất của Huawei, hứa hẹn mang đến trải nghiệm tuyệt vời cho người dùng với thiết kế thời trang, pin trâu và nhiều tính năng hữu ích.','2024-05-17',NULL,'https://cellphones.com.vn/sforum/_next/image?url=https%3A%2F%2Fcdn-media.sforum.vn%2Fstorage%2Fapp%2Fmedia%2Fquannguyen%2F2024%2Ftren-tay-Huawei-Watch-Fit-3-41.jpg&w=640&q=75'),(6,'Trên tay vivo V30e: Camera Sony IMX882, Snapdragon 6 Gen 1, pin 5500mAh cùng mức giá chỉ 10.49 triệu','vivo V30e tiếp tục là một sản phẩm tầm trung mà nhà vivo mang đến tại thị trường Việt Nam. Máy tạo được ấn tượng sâu sắc bởi thiết kế đẹp và cấu hình ổn áp.','2024-05-17',NULL,'https://cellphones.com.vn/sforum/_next/image?url=https%3A%2F%2Fcdn-media.sforum.vn%2Fstorage%2Fapp%2Fmedia%2Fhoangvu%2FTren-tay-vivo-v30e-thumb.jpg&w=640&q=75'),(7,'Thêm rò rỉ quan trọng về ASUS ROG Ally X: RAM LPDDR5X 24GB, thay đổi nhỏ về thiết kế','ROG Ally X là biến thể cao cấp hơn của ROG Ally dự kiến sẽ được ra mắt vào khoảng tháng 6 tới, một số thông tin quan trọng của thiết bị đã lộ diện.','2024-05-17',NULL,'https://cellphones.com.vn/sforum/_next/image?url=https%3A%2F%2Fcdn-media.sforum.vn%2Fstorage%2Fapp%2Fmedia%2Ftiz%2Frog-ally-cover.jpg&w=640&q=75'),(8,'Intel và HP đã tạo ra siêu máy tính nhanh nhất cho AI, phá vỡ thế độc quyền của Frontier','Siêu máy tính Aurora cuối cùng đã phá vỡ rào cản exascale và đạt được hiệu suất AI nhanh nhất với phần cứng Intel Ponte Vecchio.','2024-05-17',NULL,'https://cellphones.com.vn/sforum/_next/image?url=https%3A%2F%2Fcdn-media.sforum.vn%2Fstorage%2Fapp%2Fmedia%2Ftiz%2FAurora-supercomputer-cover.jpg&w=640&q=75'),(9,'Goodnotes cho iPad được cập nhật hỗ trợ Apple Pencil Pro','Goodnotes - phần mềm ghi chú có thể nói là tuyệt vời nhất cho iPad được rất nhiều người sử dụng đã tung ra bản cập nhật tối ưu cho Apple Pencil Pro mới.','2024-05-17',NULL,'https://cellphones.com.vn/sforum/_next/image?url=https%3A%2F%2Fcdn-media.sforum.vn%2Fstorage%2Fapp%2Fmedia%2Ftiz%2Fgoodnotes-cover.jpg&w=640&q=75');
/*!40000 ALTER TABLE `app_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_blogdetails`
--

DROP TABLE IF EXISTS `app_blogdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_blogdetails` (
  `blogDel_id` bigint NOT NULL AUTO_INCREMENT,
  `blogDelTitle` longtext NOT NULL,
  `image_file` varchar(1000) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `description` longtext NOT NULL,
  `blog_id` bigint NOT NULL,
  PRIMARY KEY (`blogDel_id`),
  KEY `app_blogdetails_blog_id_f097d53e_fk_app_blog_blog_id` (`blog_id`),
  CONSTRAINT `app_blogdetails_blog_id_f097d53e_fk_app_blog_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `app_blog` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_blogdetails`
--

LOCK TABLES `app_blogdetails` WRITE;
/*!40000 ALTER TABLE `app_blogdetails` DISABLE KEYS */;
INSERT INTO `app_blogdetails` VALUES (1,'1. MacBook Pro M3 14 inch và MacBook Pro 16 inch',NULL,NULL,'Sản phẩm MacBook Pro mới ra mắt bao gồm 2 phiên bản MacBook Pro M3 14 inch và MacBook Pro M3 16 inch với một số tính năng và cải tiến xuất sắc. Cả hai mẫu MacBook Pro này đều được trang bị chip M3 mới nhất của Apple, mang đến hiệu năng mạnh mẽ và khả năng tiết kiệm năng lượng vượt trội',1),(2,'Thiết kế',NULL,NULL,'Thiết kế mới sang trọng. với vỏ nhôm nguyên khối, với các góc cạnh được bo tròn. Máy có hai màu sắc chính là bạc và xám than.',1),(3,'Màu sắc',NULL,NULL,'Máy có hai màu sắc chính là bạc và xám than cực cáng trọng',1),(4,'Màn Hình',NULL,NULL,'MacBook Pro M3 có hai kích thước màn hình là 14 inch và 16 inch. Cả hai kích thước màn hình đều sử dụng tấm nền Liquid Retina XDR, với độ phân giải 3024 x 1964 pixel và tần số quét 120Hz. Màn hình Liquid Retina XDR tối ưu những vùng sáng, kể cả hình ảnh vùng tối vẫn chi tiết, sắc nét, độ tương phản cao và màu sắc chính xác. Đặc biệt, với tần số quét 120Hz hình ảnh hiển thị mượt mà và trơn tru hơn. Đặc biệt mãn nhãn khi chơi trò chơi điện tử đồ họa đẹp mắt, hay và xem video chất lượng.',1),(5,'Chip',NULL,NULL,'Chip M3, M3 Pro và M3 Max đều là con chip mới nhất của Apple, được sản xuất trên tiến trình 3nm. Chip M3 là dòng chip tiên tiến nhất từng được thiết kế cho máy tính cá nhân, hơn hết, hiệu năng CPU và GPU mạnh mẽ hơn so với chip M2.',1),(6,'Pin',NULL,NULL,'Thời gian xem video lên đến 22 giờ và thời gian duyệt web trên mạng không dây lên đến 15 giờ.',1),(7,'Camera & loa',NULL,NULL,'Camera FaceTime HD 1080p, với cảm biến lớn và khẩu độ lớn hơn, giúp cải thiện chất lượng hình ảnh trong điều kiện ánh sáng yếu. Tnh năng Center Stage, giúp giữ cho người dùng luôn ở trung tâm khung hình khi họ di chuyển. Song song hệ thống loa 6 loa, với âm thanh nổi Dolby Atmos truyền tải âm thanh sống động và mạnh mẽ.',1),(8,'Bàn phím và Touch Bar',NULL,NULL,'Bàn phím được thiết kế với các phím bấm có độ nảy tốt và độ chính xác cao. Touch Bar nhạy, gần như không có độ trễ, dễ dàng thao tác điều khiển máy.',1),(9,'Cổng kết nối',NULL,NULL,'MacBook Pro M3 có ba cổng Thunderbolt 4, một cổng HDMI và một cổng MagSafe 3.',1),(10,'Công nghệ dò tia tốc độ cao bằng phần cứng',NULL,NULL,'MacBook Pro giờ đây được trang bị công nghệ dò tia tốc độ cao bằng phần cứng, mang đến hiệu năng kết xuất nhanh hơn đến 2,5 giờ và giúp các ứng dụng chuyên nghiệp và trò chơi hiển thị chân thực hơn bao giờ hết.',1),(11,'Cảm biến Touch ID',NULL,NULL,'Touch ID bảo vệ dữ liệu và thông tin cá nhân của người dùng, cực kỳ an toàn và tiện lợi, chỉ cần chạm ngón tay mà không phải nhớ mật khẩu.',1),(12,'2. iMac M3',NULL,NULL,'iMac M3 - chiếc máy tính để bàn All-in-One mới của Apple mở ra một thế giới giải trí, sáng tạo không giới hạn.',1),(13,'Thiết kế',NULL,NULL,'Thiết kế đẹp và hiện đại viền mỏng chỉ 11,5mm, được làm bằng nhôm nguyên khối càng sang trọng và chắc chắn. Chân đế hình chữ V, cố định cho máy đứng vững. ',1),(14,'Màu sắc',NULL,NULL,'7 màu rực rỡ: Xanh lá, vàng, cam, hồng, tím, xanh dương, bạc',1),(15,'Màn Hình',NULL,NULL,'Màn hình Liquid Retina diện tích lớn 24 inch với độ phân giải 4,5K (4480 x 2520 pixel), mang đến một khung hình rộng rãi và chi tiết sắc nét. Độ sáng 500 nit giúp màn hình hiển thị rõ ràng ngay cả trong điều kiện ánh sáng mạnh. Dải màu rộng P3 biến mọi thứ trước mắt trở nên sống động và chân thực hơn.',1),(16,'Camera & hệ thống loa',NULL,NULL,'Camera và hệ thống âm thanh trên iMac M3 đều là những điểm mạnh của máy. Camera FaceTime HD 1080p quay video ở độ phân giải 1080p ở tốc độ 30 khung hình/giây, đem lại chất lượng hình ảnh tốt, phù hợp cho các cuộc gọi video, hội nghị trực tuyến và các tác vụ khác yêu cầu video. Đồng thời khi hệ thống âm thanh 6 loa mang lại âm thanh chất lượng cao ngập tràn không gian.',1),(17,'Bộ nhớ',NULL,NULL,'Bộ nhớ RAM lên đến 16GB và ổ cứng SSD lên đến 2TB.',1),(18,'Kết nối',NULL,NULL,'iMac M3 có các cổng Thunderbolt 4, USB-C, HDMI và giắc cắm tai nghe',1),(19,'Giá iPhone 15 Pro Max 256GB',NULL,NULL,'Có rất nhiều iFans băn khoăn ở thời điểm iPhone 15 Series ra mắt sau gần 1 năm thì iPhone 15 Pro Max 256GB giá bao nhiêu? Giá iPhone 15 Pro Max 256GB theo các phiên bản màu sẽ chênh nhau khoảng 500.000 VND ,đây là con số chênh lệch không đáng kể.  Cụ thể, bản màu Titan Xanh là phiên bản màu có mức giá thấp nhất là 28.790.000 VND. ',2),(20,'Giá iPhone 15 Pro Max 512GB',NULL,NULL,'Giá iPhone 15 Pro Max 512GB theo các phiên bản màu không có sự chênh lệch giá về màu sắc. Cụ thể, cả 4 phiên bản màu Titan Đen, Titan Trắng, Titan Xanh và Titan tự nhiên đều có mức giá là 36.950.000 VNĐ. ',2),(21,'Giá iPhone 15 Pro Max 1TB',NULL,NULL,'Mức giá chênh lệch với bản 256GB là 13.700.000 VNĐ, chênh lệch với bản 512GB là 6.000.000 VNĐ',2),(22,'So sánh giá iPhone 15 Pro Max và các dòng iPhone 15 Series',NULL,NULL,'Từ bảng giá trên có thể thấy mức giá cao nhất là 42.950.000 thuộc phiên bản iPhone 15 Pro Max 1TB . Con số này cao hơn các phiên bản có giá cao nhất của 3 dòng còn lại trong series lần lượt là iPhone 15 Pro Titan Tự Nhiên - 3 triệu, iPhone 15 Plus 512GB - 11.3 triệu, iPhone 15 tiêu chuẩn 512GB - 14.5 triệu.  ',2),(23,'Chip M1 sở hữu hiệu năng đỉnh cao',NULL,NULL,'MacBook Air M1 đã đánh dấu một bước tiến quan trọng trong việc tích hợp sức mạnh xử lý và hiệu năng đồ họa. Chip M1, được Apple phát triển dựa trên kiến trúc ARM, không chỉ mang lại hiệu năng nhanh chóng mà còn tiết kiệm năng lượng đáng kể. Bộ vi xử lý được thiết kế với mục tiêu cải thiện hiệu suất năng lượng và khả năng xử lý, điều này giúp tiết kiệm pin đáng kể. Chip M1 có thiết kế 8 lõi, bao gồm 4 lõi hiệu suất cao và GPU tích hợp với 7 lõi. GPU mạnh mẽ  không chỉ đáp ứng mượt mà các nhu cầu công việc hàng ngày mà còn đem lại khả năng xử lý đồ họa với tốc độ cao. Apple thậm chí khẳng định rằng GPU trên MacBook M1 là một trong những card đồ họa tích hợp nhanh nhất trên thế giới hiện nay.',3),(24,'Thiết kế tối giản',NULL,NULL,'Tinh tế trong thiết kế cùng với vỏ nhôm nguyên khối tạo ra vẻ ngoại hình sang trọng và chất lượng. Vỏ nhôm nguyên khối không chỉ mang lại sự bền bỉ mà còn tạo cảm giác cao cấp khi cầm trên tay. Khả năng chống va đập tốt cùng khung viền kim loại đảm bảo có thể dễ dàng mang đi khắp mọi nơi.',3),(25,'Màn hình',NULL,NULL,'Viền màn hình được thiết kế mỏng, tạo nên một trải nghiệm hấp dẫn và không gian hiển thị rộng lớn hơn. Độ phân giải cao không chỉ đảm bảo mọi chi tiết được hiển thị rõ ràng mà còn thỏa mãn được cả nhu cầu làm việc đồ họa chất lượng. ',3),(26,'Khả năng tương thích',NULL,NULL,'Một ưu điểm nổi bật của MacBook Air M1 chính là khả năng tương thích với hệ thống macOS và các ứng dụng trên Apple Store. Apple đã và đang tiếp tục hỗ trợ các phiên bản hệ điều hành mới, đảm bảo rằng người dùng có thể tiếp tục trải nghiệm các tính năng mới nhất và bảo mật tốt nhất. Ngoài ra, MacBook Air M1 còn tương thích với nhiều thiết bị ngoại vi như màn hình, ổ cứng di động, bàn phím, chuột, và  các thiết bị khác. ',3),(27,'Tuổi thọ',NULL,NULL,'Dù có thiết kế mỏng nhẹ, MacBook Air M1 không hề “bị lơ là” khả năng chống va đập và hao mòn. Vỏ nhôm nguyên khối cùng công nghệ chế tạo tiên tiến giúp sử dụng máy bền bỉ, đảm bảo tuổi thọ dài hơn.',3);
/*!40000 ALTER TABLE `app_blogdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_brand`
--

DROP TABLE IF EXISTS `app_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_brand` (
  `bra_id` bigint NOT NULL AUTO_INCREMENT,
  `braName` varchar(100) NOT NULL,
  `braImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_brand`
--

LOCK TABLES `app_brand` WRITE;
/*!40000 ALTER TABLE `app_brand` DISABLE KEYS */;
INSERT INTO `app_brand` VALUES (1,'Samsung','brand_images/samsung.png'),(2,'Apple','brand_images/apple_D8bBCAi.png'),(3,'Dell','brand_images/Dell.png'),(4,'LG','brand_images/lg.png'),(5,'Sony','brand_images/sony.png'),(6,'Logitech','brand_images/logitech.png'),(8,'Anker','brand_images/Anker.png'),(9,'OnePlus','brand_images/OnePlus.png'),(10,'Google','brand_images/google.png'),(11,'Microsoft','brand_images/microsoft.png'),(12,'Huawei','brand_images/huawei.png'),(13,'Xiaomi','brand_images/xiaomi.png');
/*!40000 ALTER TABLE `app_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_cartitem`
--

DROP TABLE IF EXISTS `app_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_cartitem` (
  `cartItem_id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `user_id` int NOT NULL,
  `pro_id` bigint NOT NULL,
  PRIMARY KEY (`cartItem_id`),
  KEY `app_cartitem_user_id_5085d435_fk_auth_user_id` (`user_id`),
  KEY `app_cartitem_pro_id_948c4f22_fk_app_product_pro_id` (`pro_id`),
  CONSTRAINT `app_cartitem_pro_id_948c4f22_fk_app_product_pro_id` FOREIGN KEY (`pro_id`) REFERENCES `app_product` (`pro_id`),
  CONSTRAINT `app_cartitem_user_id_5085d435_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_cartitem`
--

LOCK TABLES `app_cartitem` WRITE;
/*!40000 ALTER TABLE `app_cartitem` DISABLE KEYS */;
INSERT INTO `app_cartitem` VALUES (4,1,3,1),(5,2,3,9);
/*!40000 ALTER TABLE `app_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_category` (
  `cate_id` bigint NOT NULL AUTO_INCREMENT,
  `cateName` varchar(255) NOT NULL,
  `cateWarranty` int NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (1,'DienThoai',12),(2,'Tablet',12),(3,'Laptop',24),(4,'Monitor',36),(5,'Headphone',12),(6,'Mouse',6),(7,'Watch',12),(8,'Accessory',6);
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_image`
--

DROP TABLE IF EXISTS `app_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_image` (
  `img_id` bigint NOT NULL AUTO_INCREMENT,
  `image_file` varchar(1000) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `pro_id` bigint NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `app_image_pro_id_9f6e480a_fk_app_product_pro_id` (`pro_id`),
  CONSTRAINT `app_image_pro_id_9f6e480a_fk_app_product_pro_id` FOREIGN KEY (`pro_id`) REFERENCES `app_product` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_image`
--

LOCK TABLES `app_image` WRITE;
/*!40000 ALTER TABLE `app_image` DISABLE KEYS */;
INSERT INTO `app_image` VALUES (1,NULL,'https://tse4.mm.bing.net/th?id=OIP.O9HbjPQPddgICk9m7G4NyQHaHI&pid=Api&P=0&h=220',1),(2,NULL,'https://www.bhphotovideo.com/images/images2500x2500/apple_mtxv2ll_a_11_ipad_pro_1tb_1441864.jpg',2),(3,NULL,'https://tse4.mm.bing.net/th?id=OIP._-S8DuZMey4uN0Y6SfJ9EwHaHa&pid=Api&P=0&h=220',3),(4,NULL,'https://tse2.mm.bing.net/th?id=OIP.Um0RBAtzBkYcZkf-glFIlgHaHa&pid=Api&P=0&h=220',4),(5,NULL,'https://tse4.mm.bing.net/th?id=OIP.K2V8Vz-O9YJvE7aFeLoOuwAAAA&pid=Api&P=0&h=220',5),(6,NULL,'https://www.bhphotovideo.com/images/images1500x1500/logitech_g_910_006178_g502_x_lightspeed_wireless_1722687.jpg',6),(7,NULL,'https://tse1.mm.bing.net/th?id=OIP.uPqCouad9iL26LvNQBn9cAHaHa&pid=Api&P=0&h=220',7),(8,NULL,'https://www.bhphotovideo.com/images/images2500x2500/anker_powercore_fusion_10000mm2_in_1_hybrid_1484764.jpg',8),(9,NULL,'https://tse3.mm.bing.net/th?id=OIP.SvWqMUNLJkrcGBn2LhQvkQHaGk&pid=Api&P=0&h=220',9),(10,NULL,'https://tse2.mm.bing.net/th?id=OIP.zHCj6eiF6IEXnnlHMTZHvwHaHa&pid=Api&P=0&h=220',10),(11,NULL,'https://tse2.mm.bing.net/th?id=OIP.rGa9rzs9DkIX0aNMa0snIgHaE8&pid=Api&P=0&h=220',11),(12,NULL,'https://tse4.mm.bing.net/th?id=OIP.bbY9mQoNYCUw74NAjO7v-AHaGx&pid=Api&P=0&h=220',12),(13,NULL,'https://tse3.explicit.bing.net/th?id=OIP.ecoaTE6S6m3LFTwJCnRH5wAAAA&pid=Api&P=0&h=220',13),(14,NULL,'https://tse4.mm.bing.net/th?id=OIP.6gmdGlL9Hj0qSwlqFlSoNQHaHa&pid=Api&P=0&h=220',14),(15,NULL,'https://tse2.mm.bing.net/th?id=OIP.kMeVTyqhyx8rOldQTMaMFAHaGS&pid=Api&P=0&h=220',15),(16,NULL,'https://tse3.mm.bing.net/th?id=OIP.wlQbBhv6rUOgzTUrJ9-gUwHaKM&pid=Api&P=0&h=220',16),(17,NULL,'https://tse1.mm.bing.net/th?id=OIP.5RQdOA9szsAng6He8CUQFwHaHa&pid=Api&P=0&h=220',17),(18,NULL,'https://tse1.mm.bing.net/th?id=OIP.lGQF2G4rlc-7__4TmxbJzQHaOd&pid=Api&P=0&h=220',18),(19,NULL,'https://tse4.mm.bing.net/th?id=OIP.WFQGuy1E_uHc0Qwirt7J8QHaHa&pid=Api&P=0&h=220',19),(20,NULL,'https://tse4.mm.bing.net/th?id=OIP.vj6xmvNU6lyU6czcXqcNDwHaFK&pid=Api&P=0&h=220',20),(21,NULL,'https://www.m4g.com.my/image/m4g/image/cache/data/all_product_images/product-1716/3GAVSwbW1604402054-2480x2480.jpg',21),(22,NULL,'https://tse2.mm.bing.net/th?id=OIP.msy9VJmkowdZq_HBXzPf8AHaHa&pid=Api&P=0&h=220',22),(23,NULL,'https://tse3.mm.bing.net/th?id=OIP.7nbvlx-708WZlP_Q_XGulAHaFu&pid=Api&P=0&h=220',23),(24,NULL,'https://tse3.mm.bing.net/th?id=OIP.G69bxptvCn2efffWQdR7LQHaHa&pid=Api&P=0&h=220',24),(25,NULL,'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/g9_1_768x768.jpg',25),(26,NULL,'https://mresell.com.au/wp-content/uploads/attachments/refurbished_mac_mini_late_2014_intel_core_i7_3_0_ghz_16_gb_ram_1_tb_ssd_mresell_com_au_87231689.jpg',26),(27,NULL,'https://tse1.mm.bing.net/th?id=OIP.FX1cE9qlHvPK8jVc1V9dMAHaFZ&pid=Api&P=0&h=220',27),(28,NULL,'https://tse3.mm.bing.net/th?id=OIP.KtVWdzBt_xz-AgQnCTPShAHaF9&pid=Api&P=0&h=220',28),(29,NULL,'https://tse1.mm.bing.net/th?id=OIP.o_4zBtFjwM_5qQevL611hgHaE8&pid=Api&P=0&h=220',29),(30,NULL,'https://tse4.mm.bing.net/th?id=OIP.Y17ynQwwXXq8Ppns84RsDwHaHa&pid=Api&P=0&h=220',30),(31,NULL,'https://tse3.mm.bing.net/th?id=OIP.ohmnPhkbtA_4dkwgbyhTUQHaEK&pid=Api&P=0&h=220',31),(32,NULL,'https://tse2.mm.bing.net/th?id=OIP.nq7MlMSC-4n7sNsibA1K7QHaGk&pid=Api&P=0&h=220',32),(33,NULL,'https://tse3.mm.bing.net/th?id=OIP.wnj5H93R7nH0iJJ5MyC85QHaHa&pid=Api&P=0&h=220',33),(34,NULL,'https://tse1.mm.bing.net/th?id=OIP.ys3wfCOMvF9o35ljXgfMZwHaHa&pid=Api&P=0&h=220',34),(35,NULL,'https://tse3.mm.bing.net/th?id=OIP.c-jgTdtUbRM3SjS0OjQB0AHaGk&pid=Api&P=0&h=220',35),(36,NULL,'https://tse1.mm.bing.net/th?id=OIP.jcasYsBU3uUij6-_C_fYRgHaE6&pid=Api&P=0&h=220',36),(37,NULL,'https://tse4.mm.bing.net/th?id=OIP.uhc6IrphMGa1SwncVbpbgwHaGk&pid=Api&P=0&h=220',37),(38,NULL,'https://tse4.mm.bing.net/th?id=OIP.eolbv8POr8YtmeosXrmzPwHaGk&pid=Api&P=0&h=220',38),(39,NULL,'https://tse4.mm.bing.net/th?id=OIP.6tYbtu9wakJyPn1PE6dJ3AHaGp&pid=Api&P=0&h=220',39),(40,NULL,'https://tse4.mm.bing.net/th?id=OIP.OWowrEkxagTDRDh5MAVU6wHaHa&pid=Api&P=0&h=220',40),(41,NULL,'https://tse4.mm.bing.net/th?id=OIP.Pf6vs_0M3yjxCAq5plDoZAAAAA&pid=Api&P=0&h=220',41),(42,NULL,'https://tse1.mm.bing.net/th?id=OIP.tLdB5rtdzWQVE2uhP9JFcAHaHa&pid=Api&P=0&h=220',42),(43,NULL,'https://tse1.mm.bing.net/th?id=OIP.2_Z_C1xk5-xnJZFmt7h5SgHaHa&pid=Api&P=0&h=220',43),(44,NULL,'https://tse3.mm.bing.net/th?id=OIP.UdkOUDg5EY1B8vIK6oM1VQHaIG&pid=Api&P=0&h=220',44),(45,NULL,'https://tse4.mm.bing.net/th?id=OIP.l6OeTn17zftYUnqRlCLv2wHaHa&pid=Api&P=0&h=220',45),(46,NULL,'https://www.inside-digital.de/img/logitech-mx-keys-mini-tastatur-setup.jpg',46),(47,NULL,'https://tse2.mm.bing.net/th?id=OIP.5NtcGteM-HyXCVdUK-DWJwHaHa&pid=Api&P=0&h=220',47),(48,NULL,'https://tse3.mm.bing.net/th?id=OIP.fwk_EtbMZkDHiPkzoq2apwHaHa&pid=Api&P=0&h=220',48),(49,NULL,'https://tse1.mm.bing.net/th?id=OIP.M99caNONPz7jdBB-ILLlCQHaFH&pid=Api&P=0&h=220',49),(50,NULL,'https://tse4.mm.bing.net/th?id=OIP.bJTX67fJyrpo4nMDvPkLTgHaFj&pid=Api&P=0&h=220',50),(51,NULL,'https://tse4.mm.bing.net/th?id=OIP.Xrz2RP2JcGxyn_ppe1Pf6AHaH3&pid=Api&P=0&h=220',51),(52,NULL,'https://tse1.mm.bing.net/th?id=OIP.fan_IvuoTcrFZEASqWEp7QHaHa&pid=Api&P=0&h=220',52),(53,NULL,'https://tse2.mm.bing.net/th?id=OIP.PAxbMFwl-52apFrIientEwHaHa&pid=Api&P=0&h=220',53),(54,NULL,'https://tse3.mm.bing.net/th?id=OIP.givDIt-RY8cHj520gZYtlQHaHa&pid=Api&P=0&h=220',54),(55,NULL,'https://tse1.mm.bing.net/th?id=OIP.iNoAlucm04PxQ0f2O49YqwHaHa&pid=Api&P=0&h=220',55),(56,NULL,'https://tse3.mm.bing.net/th?id=OIP.SxEMLSG3s1vGcMphNocACQHaHa&pid=Api&P=0&h=220',56),(57,NULL,'https://tse2.mm.bing.net/th?id=OIP.fPOMGO85ujzdceOtC8paYwHaIV&pid=Api&P=0&h=220',57),(58,NULL,'https://tse4.mm.bing.net/th?id=OIP.yWqJAwPltWCX6fdhlWh6rQAAAA&pid=Api&P=0&h=220',58),(59,NULL,'https://tse2.mm.bing.net/th?id=OIP.0DnR_d8p1LjYnjPJ5R45tAHaF0&pid=Api&P=0&h=220',59),(60,NULL,'https://tse2.mm.bing.net/th?id=OIP.cazy3i_9NFyICDcnunc2ZQHaG5&pid=Api&P=0&h=220',60),(61,NULL,'https://tse3.mm.bing.net/th?id=OIP.ZnivvOp_S5gJ5r8408_dgwHaHa&pid=Api&P=0&h=220',61),(62,NULL,'https://www.bhphotovideo.com/images/images2500x2500/logitech_981_000811_g_pro_wired_stereo_1502156.jpg',62),(63,NULL,'https://tse2.mm.bing.net/th?id=OIP.A47fQrJlSxVqyyzFL-qBMQHaHa&pid=Api&P=0&h=220',63),(64,NULL,'https://tse2.mm.bing.net/th?id=OIP.JBe-2WgQ9jKVb3LShH2w2AHaHa&pid=Api&P=0&h=220',64),(65,NULL,'https://tse2.mm.bing.net/th?id=OIP.s7vEnxVKUOA_Je2FLR1JVwAAAA&pid=Api&P=0&h=220',65),(66,NULL,'https://tse4.mm.bing.net/th?id=OIP.GOJiQv9nLzLsCGTbu-Q7xgHaHa&pid=Api&P=0&h=220',66),(67,NULL,'https://www.bhphotovideo.com/images/images1500x1500/alien_aw2521hf_25_fhd_edge_led_1667998.jpg',67),(68,NULL,'https://tse3.mm.bing.net/th?id=OIP.5hAXA4TjLD_-Z__psKcRlAHaJd&pid=Api&P=0&h=220',68),(69,NULL,'https://tse3.mm.bing.net/th?id=OIP.dUkYbp4EYzLH2VgPnpMoQQHaHa&pid=Api&P=0&h=220',69),(70,NULL,'https://tse3.explicit.bing.net/th?id=OIP.VqA0GeYkZkfrWErB7e0RlQHaHa&pid=Api&P=0&h=220',70),(71,NULL,'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/apple-tv-gallery1-201709?wid=4000&hei=3072&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1508182636222',71),(72,NULL,'https://tse4.mm.bing.net/th?id=OIP.jboNMx7d4JAQeADvBE5engHaKL&pid=Api&P=0&h=220',72),(73,NULL,'https://tse2.mm.bing.net/th?id=OIP.OSghIITwBI8HvtcCRwYT6QHaGk&pid=Api&P=0&h=220',73),(74,NULL,'https://tse3.mm.bing.net/th?id=OIP.4GiZi5ibhHLI-0e3NQ2GNQHaHa&pid=Api&P=0&h=220',74),(75,NULL,'https://c1.neweggimages.com/ProductImageCompressAll1280/AKVHD21080615EI4S.jpg',75),(76,NULL,'https://tse3.mm.bing.net/th?id=OIP.myXRTHOeBwW-SpzbRMLiXAHaFj&pid=Api&P=0&h=220',76),(77,NULL,'https://tse4.mm.bing.net/th?id=OIP.99vPyetKgSVvwYQ8b4it8QHaGk&pid=Api&P=0&h=220',77),(78,NULL,'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6414/6414195cv13d.jpg',78),(79,NULL,'https://i5.walmartimages.com/asr/f8f9ce7c-3a87-41e8-a70a-a34a98e8600c_1.fed828d2b3f7432240e7fc6fd07fba95.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff',79),(80,NULL,'https://dablew.pk/wp-content/uploads/2020/04/anker-soundcore-infini-pro-dablewpk-official-price-pakistan.jpg',80),(81,NULL,'https://mobilehubofficial.com/wp-content/uploads/2021/07/IMG_1142-1536x2048.jpeg',81),(82,NULL,'https://www.bhphotovideo.com/images/images2500x2500/apple_mgn63ll_a_13_3_macbook_air_with_1604825.jpg',82),(83,NULL,'https://www.windowscentral.com/sites/wpcentral.com/files/styles/large_wm_brb/public/field/image/2020/06/dell-xps-15-9500-review-hero1.jpg',83),(84,NULL,'https://tse1.mm.bing.net/th?id=OIP.6tFF3R9CC81_zJFzelOjQgHaHa&pid=Api&P=0&h=220',84),(85,NULL,'https://tse3.mm.bing.net/th?id=OIP.zAgzeaPx7fXnJdHvCrPpqAHaHa&pid=Api&P=0&h=220',85),(86,NULL,'https://www.ergonomische-maus.org/wp-content/uploads/IMG_20210128_145002-scaled.jpg',86),(87,NULL,'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/49-cell-titanium-alpine-blue-ultra?wid=2000&hei=2000&fmt=jpeg&qlt=95&.v=1693501939819',87),(88,NULL,'https://tekshanghai.com/wp-content/uploads/2021/01/Anker-Soundcore-Liberty-Air-2-Pro_9.jpeg',88),(89,NULL,'https://images.priceoye.pk/samsung-galaxy-z-fold-3-pakistan-priceoye-zmnjq.jpg',89),(90,NULL,'https://techcart.com.au/wp-content/uploads/2022/07/66345-Apple-iPhone-13-Pro-Max-A2644-HK-1TB-Alpine-Green.jpg',90),(91,NULL,'https://www.bhphotovideo.com/images/images1500x1500/dell_aw2518h_25_gaming_monitor_with_1349060.jpg',91),(92,NULL,'https://salt.tikicdn.com/ts/product/13/a4/9c/1efe40305d21cf9b0be219309304bb4c.jpg',92),(93,NULL,'https://cdn.awsli.com.br/1000x1000/138/138431/produto/20125726/a5c54bbb58.jpg',93),(94,NULL,'https://www.bhphotovideo.com/images/images2000x2000/logitech_g_910_005878_pro_x_superilght_wireless_1609024.jpg',94),(95,NULL,'https://www.bhphotovideo.com/images/images2500x2500/oneplus_5011101665_9_pro_128gb_5g_1629057.jpg',95),(96,NULL,'https://www.googlewatchblog.de/wp-content/uploads/pixel-6-pro-2-1-1609x2048.jpg',96),(97,NULL,'https://m.media-amazon.com/images/I/711jgF2LHPL.jpg',97),(98,NULL,'https://www.lowyat.net/wp-content/uploads/2022/07/huawei-matebook-x-pro22-apac01.jpg',98),(99,NULL,'https://tse1.mm.bing.net/th?id=OIP.MjJKD5dhYOQh_0l7stwIxQHaHa&pid=Api&P=0&h=220',99),(100,NULL,'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6448/6448614cv15d.jpg',100),(101,NULL,'https://tse3.mm.bing.net/th?id=OIP.u0iabmWiJg3rJOF3xz-bTAHaHa&pid=Api&P=0&h=220',101),(102,NULL,'https://images.idgesg.net/images/article/2018/01/dell-xps-15-2-in-1-on-white_3-100746391-orig.jpg',102),(103,NULL,'https://cdn.mwave.com.au/images/400/lg_ultragear_24gn600b_24_144hz_full_hd_1ms_ips_hdr_freesync_gaming_monitor_ac43291_1.jpg',103),(104,NULL,'https://tse2.mm.bing.net/th?id=OIP.4IFBNwgtazRs2wHogRqcLgHaHa&pid=Api&P=0&h=220',104),(105,NULL,'https://as-elect.com/wp-content/uploads/2020/11/Logitech-G502-HERO.png',105),(106,NULL,'https://tse3.mm.bing.net/th?id=OIP.T35TirOSAyhkQU9iyOshjAHaIp&pid=Api&P=0&h=220',106),(107,NULL,'https://i5.walmartimages.com/asr/fd48656a-a733-4381-bf24-991ed92c9438_1.3a797809a977afce4d4f2a2bd63ae20a.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff',107),(108,NULL,'https://supercells.co.za/wp-content/uploads/2022/03/s22-ultra-black2.jpg',108),(109,NULL,'https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/Apple-iPhone-13-Pro/Sierra-Blue/Apple-iPhone-13-Pro-Sierra-Blue-frontimage.png',109),(110,NULL,'https://tse4.mm.bing.net/th?id=OIP.Szts3dLa0Y6QPhyYiEsApQHaHa&pid=Api&P=0&h=220',110),(111,NULL,'https://tse4.mm.bing.net/th?id=OIP.uxIq4tyAPRgH0cZy1zmyRgHaGk&pid=Api&P=0&h=220',111),(112,NULL,'https://tse2.mm.bing.net/th?id=OIP.e8J33-3BDAHT8HJ2dy60GgHaHa&pid=Api&P=0&h=220',112),(113,NULL,'https://tse1.mm.bing.net/th?id=OIP.ttTXeSeV5qgg0T-SyFbAlwHaHa&pid=Api&P=0&h=220',113),(114,NULL,'https://www.bhphotovideo.com/images/images2000x2000/Dell_X17L_3333ELS_XPS_17_X17L_3333ELS_17_3_827064.jpg',114),(115,NULL,'https://tse4.mm.bing.net/th?id=OIP.oWFlLTvRi8SFTUZT62BxAwHaGR&pid=Api&P=0&h=220',115),(116,NULL,'https://tse1.mm.bing.net/th?id=OIP.hfmdC1X9iqj8Wbm6K1FXQwHaHa&pid=Api&P=0&h=220',116),(117,NULL,'https://www.bhphotovideo.com/images/images1500x1500/lg_34um79m_p_34_wfhd_21_9_ultrawide_1279020.jpg',117),(118,NULL,'https://tse3.explicit.bing.net/th?id=OIP.MlzpfnuTSm7sVK8wmRTTLQHaHa&pid=Api&P=0&h=220',118),(119,NULL,'https://cdn.webshopapp.com/shops/256009/files/337170366/xiaomi-xiaomi-mi-curved-gaming-monitor-34-inch.jpg',119),(120,NULL,'http://www.jbhifi.com.au/cdn/shop/products/592551-Product-0-I-637878553977254838_1024x1024.jpg',120),(121,NULL,'https://5.imimg.com/data5/SELLER/Default/2021/3/IY/UG/ML/76438278/airpods-pro.jpg',121),(122,NULL,'https://cdn.shopify.com/s/files/1/1181/5664/products/Logitech-G-Pro-X-Gaming-Keyboard_1024x1024.jpg?v=1596617421',122),(123,NULL,'https://www.elgiganten.dk/image/dv_web_D1800010021147040/522075/logitech-g502-x-plus-tradlos-gaming-mus-hvid.jpg',123),(124,NULL,'https://tse2.mm.bing.net/th?id=OIP._HZBlmBs2iWKduAwu_beXQHaHa&pid=Api&P=0&h=220',124),(125,NULL,'https://tse2.mm.bing.net/th?id=OIP.Oxp7DApSc323WHoPywRvGAHaHa&pid=Api&P=0&h=220',125),(126,NULL,'https://static.digitecgalaxus.ch/Files/6/8/2/2/9/4/4/4/Apple_Watch_Series_8_LTE_45mm_Midnight_Aluminum_Midnight_Sport_Band_PDP_Image_Position-2__WWEN.jpg',126),(127,NULL,'https://tse3.mm.bing.net/th?id=OIP.1c_ZpgjQ8c9dpeWakgaocwHaHa&pid=Api&P=0&h=220',127),(128,NULL,'https://asset.conrad.com/media10/isa/160267/c1/-/en/002188128PI06/image.jpg',128),(129,NULL,'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6510/6510544cv11d.jpg',129),(130,NULL,'https://syntegritytech.com/wp-content/uploads/2021/06/Apple-A2140-iPhone-12-Series-MagSafe-Charger.jpg',130),(131,NULL,'https://resource.logitechg.com/d_transparent.gif/content/dam/gaming/en/non-braid/crush-powerplay/powerplay-gallery-1-nb.png',131),(132,NULL,'https://tse3.mm.bing.net/th?id=OIP.KiYYFcu8e0GTN7RU8EEZuAHaHa&pid=Api&P=0&h=220',132),(133,NULL,'https://tse4.mm.bing.net/th?id=OIP.q1p4n69d1dsJUgq___2rkAHaHa&pid=Api&P=0&h=220',133),(134,NULL,'https://tse3.mm.bing.net/th?id=OIP.x5kJ5VuOidwbue4Kx72XeQHaHf&pid=Api&P=0&h=220',134),(135,NULL,'https://www.bhphotovideo.com/images/images2500x2500/samsung_sm_t220nzaaxar_8_7_tab_a7_lite_1639807.jpg',135),(136,NULL,'https://www.tepte.com/pics/pbg/apple-ipad-3-retina-display-tablet-16gb-wi-fi-black-renewed-182205.jpg',136),(137,NULL,'https://tse1.mm.bing.net/th?id=OIP.0OuBdpP5CQJdw1D36Dmm7gHaHa&pid=Api&P=0&h=220',137),(138,NULL,'https://tse1.explicit.bing.net/th?id=OIP.Wia4rFCV7iF35Ng2YPvXwgAAAA&pid=Api&P=0&h=220',138),(139,NULL,'https://tse4.mm.bing.net/th?id=OIP.jm-57NOH1LH2kC4AXqCS0QHaHa&pid=Api&P=0&h=220',139),(140,NULL,'https://m.media-amazon.com/images/I/71YTX8Xu75L.jpg',140),(141,NULL,'https://tse1.mm.bing.net/th?id=OIP.A9PrGxiZnofOjr9kJCSdqwHaGH&pid=Api&P=0&h=220',141),(142,NULL,'https://cdn.webshopapp.com/shops/256009/files/337170366/xiaomi-xiaomi-mi-curved-gaming-monitor-34-inch.jpg',142),(143,NULL,'https://i5.walmartimages.com/asr/14891b7e-0094-4061-966a-7ea59e2d1333.b5dadea77be0a9114ea5840e5c4763e5.jpeg',143),(144,NULL,'https://m.media-amazon.com/images/I/5199Nx6s01L.jpg',144),(145,NULL,'https://tse4.mm.bing.net/th?id=OIP.ybtEbHak38dNOr0BLm9NlwHaHa&pid=Api&P=0&h=220',145),(146,NULL,'https://tse3.mm.bing.net/th?id=OIP.DDMOd_uER02rIb-PkALlrQHaGd&pid=Api&P=0&h=220',146),(147,NULL,'https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/accessories/wireless-mouse/image/sec1/huawei-wireless-mouse-kv.jpg',147),(148,NULL,'https://tse2.mm.bing.net/th?id=OIP.mr1eBrCXXRkX667TrFBIEAHaHa&pid=Api&P=0&h=220',148),(149,NULL,'https://tse3.mm.bing.net/th?id=OIP.Ff4qFjSwMpZD7q0AzBcyZwHaHa&pid=Api&P=0&h=220',149),(150,NULL,'https://tse4.mm.bing.net/th?id=OIP.79zd5yC9OZh-u4kHcZrIhwHaHa&pid=Api&P=0&h=220',150),(151,NULL,'https://tse2.mm.bing.net/th?id=OIP.ZN22iREc8m5CLDAtpCiSxAHaHa&pid=Api&P=0&h=220',151),(152,NULL,'https://www.elekdirect.co.uk/wp-content/uploads/2022/11/1-110.png',152),(153,NULL,'https://tse2.mm.bing.net/th?id=OIP.WBubYQnv8nRGFILmhzYpOwHaHZ&pid=Api&P=0&h=220',153),(154,NULL,'https://hoanghamobile.com/Uploads/2020/09/25/Apple.jpg',154),(155,NULL,'https://tse4.mm.bing.net/th?id=OIP.g-bmHEzmjMWy-auGOIRm5gHaHa&pid=Api&P=0&h=220',155),(156,NULL,'https://www.chooseyourmobile.com/wp-content/uploads/2021/01/Sony-Xperia-1-III-Purple.jpg',156),(157,NULL,'https://static.toiimg.com/thumb/resizemode-4,msid-83006478,imgsize-500,width-800/83006478.jpg',157),(158,NULL,'https://cdn.movertix.com/media/catalog/product/g/o/google-pixel-6a-5g-charcoal-black-128gb.jpg',158),(159,NULL,'https://tse2.mm.bing.net/th?id=OIP.Z7Zecvec7IGJu-qkWHKqJQHaGu&pid=Api&P=0&h=220',159),(160,NULL,'https://static.toiimg.com/thumb/resizemode-4,msid-71922278,imgsize-200,width-600,imgv-1/71922278.jpg',160),(161,NULL,'https://www.buyitdirect.ie/Images/8VB-00017_3_Supersize.jpg?v=8',161),(162,NULL,'https://tse2.mm.bing.net/th?id=OIP.40VI3puetKkOdZ3AZIsOqgHaGG&pid=Api&P=0&h=220',162),(163,NULL,'https://static.techspot.com/images/products/2021/laptops/org/2021-03-11-product-18.jpg',163),(164,NULL,'https://www.pcworld.com/wp-content/uploads/2021/10/Surface-Laptop-Studio-primary-1.jpg?quality=50&strip=all',164),(165,NULL,'https://www.luluhypermarket.com/medias/1838809-03.jpg-1200Wx1200H?context=bWFzdGVyfGltYWdlc3wyMzI4Njd8aW1hZ2UvanBlZ3xoZDIvaDY4LzExNzIwMzI4ODA2NDMwLzE4Mzg4MDktMDMuanBnXzEyMDBXeDEyMDBIfDcwZjYxZTM2YmVhOTg3ZmMxMzZkZmFhZjFhY2FhMDNiYWM4MDRkYTdmNDRhMDcxY2NkYzg5YTFmNmU3NDdjYjA',165),(166,NULL,'https://tse1.mm.bing.net/th?id=OIP.dkHz6HVt8VwqDGbirABm4wHaHa&pid=Api&P=0&h=220',166),(167,NULL,'https://i5.walmartimages.com/asr/b285dddd-0c47-4137-abb8-d7e940b987cc_1.bc5ed7f1f19d5032cc722a2838f9e93d.jpeg',167),(168,NULL,'https://www.bhphotovideo.com/images/images1000x1000/sony_wf1000xm5_s_wf_1000xm4_noise_canceling_true_wireless_1778672.jpg',168),(169,NULL,'https://tse3.mm.bing.net/th?id=OIP.Nf-kxjbORMcSQb9mEfu5fgHaFj&pid=Api&P=0&h=220',169),(170,NULL,'https://thereal.buydig.com/image100/1/617145/GOPIXELBUDQM.jpg',170),(171,NULL,'https://tse1.mm.bing.net/th?id=OIP.wECDsLu_6NEyk3E4g4oL0gHaHa&pid=Api&P=0&h=220',171),(172,NULL,'https://images-na.ssl-images-amazon.com/images/I/51iuN2jYKbL._SL1000_.jpg',172),(173,NULL,'https://tse2.mm.bing.net/th?id=OIP.JKH6yNJVStaA0pQ1S4W14AHaHa&pid=Api&P=0&h=220',173),(174,NULL,'https://tse2.mm.bing.net/th?id=OIP.ChYMgGlsJnxvpREFnVeMkwHaF7&pid=Api&P=0&h=220',174),(175,NULL,'https://www.smartwatchspex.com/wp-content/uploads/2017/10/lg-watch-sport-w280a-dark-blue-front-600x600.jpg',175),(176,NULL,'https://tse1.mm.bing.net/th?id=OIP.Jxm68IPGjaz-8EXtesNiOQHaIY&pid=Api&P=0&h=220',176),(177,NULL,'https://tse3.mm.bing.net/th?id=OIP.85GfIbD3qhz_q85fsEs1kAHaFY&pid=Api&P=0&h=220',177),(178,NULL,'https://cf.shopee.vn/file/4fb6dec134401fd6dc1629f8646bd99d',178),(179,NULL,'https://www.androidpolice.com/wp-content/uploads/2018/10/google-pixel-stand-square-768x768.png',179),(180,NULL,'https://cdn.mobilecity.vn/mobilecity-vn/images/2021/07/w300/oneplus-9-tim.jpg.webp',180),(181,NULL,'https://cdn.tgdd.vn/Products/Images/42/230770/oneplus-9-pro-600x600-1-600x600.jpg',181),(182,NULL,'https://cdn.tgdd.vn/Products/Images/42/225535/oneplus-nord-5g-xam-new600x600-600x600.jpg',182),(183,NULL,'https://cdn.xtmobile.vn/vnt_upload/product/10_2020/thumbs/600_oneplus_8t_xtmobile_1.jpg',183),(184,NULL,'https://cdn.tgdd.vn/Products/Images/42/212356/oneplus-8-600x600-2-600x600.jpg',184),(185,NULL,'https://cdn.tgdd.vn/Products/Images/42/233009/google-pixel-6-600x600.jpg',185),(186,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEOsX3RgfFCQStJh11sbhRAw_RmnlpUegMmPQgRehfxg&s',186),(187,NULL,'https://cdn.tgdd.vn/Products/Images/42/233254/google-pixel-5a-040921-051453-600x600.jpg',187),(188,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwycT1nLNqiAb20UCZWNyBcYMcVynUsu3FZK-4mTcL7A&s',188),(189,NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOx_bdqCWlevibBe2BowWF51qjPi6uk6NAOnicZvQpAQ&s',189);
/*!40000 ALTER TABLE `app_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_infordelivery`
--

DROP TABLE IF EXISTS `app_infordelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_infordelivery` (
  `inforDeli_id` bigint NOT NULL AUTO_INCREMENT,
  `receiverName` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `phoneNumber` varchar(20) NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`inforDeli_id`),
  KEY `app_infordelivery_order_id_680da226_fk_app_order_order_id` (`order_id`),
  CONSTRAINT `app_infordelivery_order_id_680da226_fk_app_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_infordelivery`
--

LOCK TABLES `app_infordelivery` WRITE;
/*!40000 ALTER TABLE `app_infordelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_infordelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_order`
--

DROP TABLE IF EXISTS `app_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_order` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `orderDate` date NOT NULL,
  `orderStatus` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `app_order_user_id_f25a9fc4_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_order_user_id_f25a9fc4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_order`
--

LOCK TABLES `app_order` WRITE;
/*!40000 ALTER TABLE `app_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_orderitem`
--

DROP TABLE IF EXISTS `app_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_orderitem` (
  `orderItem_id` bigint NOT NULL AUTO_INCREMENT,
  `proPrice` double NOT NULL,
  `proQuantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `pro_id` bigint NOT NULL,
  PRIMARY KEY (`orderItem_id`),
  KEY `app_orderitem_order_id_41257a1b_fk_app_order_order_id` (`order_id`),
  KEY `app_orderitem_pro_id_a22d712f_fk_app_product_pro_id` (`pro_id`),
  CONSTRAINT `app_orderitem_order_id_41257a1b_fk_app_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`order_id`),
  CONSTRAINT `app_orderitem_pro_id_a22d712f_fk_app_product_pro_id` FOREIGN KEY (`pro_id`) REFERENCES `app_product` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_orderitem`
--

LOCK TABLES `app_orderitem` WRITE;
/*!40000 ALTER TABLE `app_orderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_payment`
--

DROP TABLE IF EXISTS `app_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_payment` (
  `payment_id` bigint NOT NULL AUTO_INCREMENT,
  `paymentDate` date NOT NULL,
  `paymentStatus` varchar(255) NOT NULL,
  `order_id` bigint NOT NULL,
  `payMethod_id` bigint NOT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `app_payment_order_id_25ca945c_fk_app_order_order_id` (`order_id`),
  KEY `app_payment_payMethod_id_f7b790c0_fk_app_payme` (`payMethod_id`),
  CONSTRAINT `app_payment_order_id_25ca945c_fk_app_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `app_order` (`order_id`),
  CONSTRAINT `app_payment_payMethod_id_f7b790c0_fk_app_payme` FOREIGN KEY (`payMethod_id`) REFERENCES `app_paymentmethod` (`payMethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_payment`
--

LOCK TABLES `app_payment` WRITE;
/*!40000 ALTER TABLE `app_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_paymentmethod`
--

DROP TABLE IF EXISTS `app_paymentmethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_paymentmethod` (
  `payMethod_id` bigint NOT NULL AUTO_INCREMENT,
  `payName` varchar(255) NOT NULL,
  `description` longtext,
  `payImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payMethod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_paymentmethod`
--

LOCK TABLES `app_paymentmethod` WRITE;
/*!40000 ALTER TABLE `app_paymentmethod` DISABLE KEYS */;
INSERT INTO `app_paymentmethod` VALUES (1,'Cash','Thanh toán bằng tiền mặt','payment_method_images/cash.png'),(2,'PayPal','Thanh toán bằng PayPal','payment_method_images/paypal.png'),(3,'Momo','Thanh toán bằng Momo','payment_method_images/momo.png'),(4,'VNPay','Thanh toán bằng VNPay','payment_method_images/vnpay.png');
/*!40000 ALTER TABLE `app_paymentmethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_product`
--

DROP TABLE IF EXISTS `app_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_product` (
  `pro_id` bigint NOT NULL AUTO_INCREMENT,
  `proName` varchar(255) NOT NULL,
  `proDescription` longtext NOT NULL,
  `proPrice` double NOT NULL,
  `proManufature` int NOT NULL,
  `brand_id` bigint NOT NULL,
  `cate_id` bigint NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `app_product_brand_id_23d83d7f_fk_app_brand_bra_id` (`brand_id`),
  KEY `app_product_cate_id_d2296d4f_fk_app_category_cate_id` (`cate_id`),
  CONSTRAINT `app_product_brand_id_23d83d7f_fk_app_brand_bra_id` FOREIGN KEY (`brand_id`) REFERENCES `app_brand` (`bra_id`),
  CONSTRAINT `app_product_cate_id_d2296d4f_fk_app_category_cate_id` FOREIGN KEY (`cate_id`) REFERENCES `app_category` (`cate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_product`
--

LOCK TABLES `app_product` WRITE;
/*!40000 ALTER TABLE `app_product` DISABLE KEYS */;
INSERT INTO `app_product` VALUES (1,'Samsung Galaxy S21','Điện thoại Galaxy S21 nằm trong series S21 đến từ Samsung nổi bật với thiết kế tràn viền, cụm camera ấn tượng cho đến hiệu năng mạnh mẽ hàng đầu.',22999770,2021,1,1),(2,'iPadPro','High-performance tablet for professionals',25299770,2018,2,2),(3,'Dell XPS 13','Thin and light laptop with stunning display',29899770,2013,3,3),(4,'LG UltraGear','27-inch gaming monitor with high refresh rate',9199770,2022,4,4),(5,'Sony WH-1000XM4','Noise-cancelling headphones with premium sound quality',8049770,2018,5,5),(6,'Logitech G502','High-performance gaming mouse with customizable features',1839769,2016,6,6),(7,'Apple Watch Series 6','Smartwatch with advanced health tracking features',9199770,2023,2,7),(8,'Anker PowerCore 10000','Portable charger with high-capacity battery',1149770,2022,8,8),(9,'Samsung Galaxy Tab S7','Versatile tablet with stunning display and S Pen',14949770,2020,1,2),(10,'Apple MacBook Air','Thin and light laptop with long battery life',22999770,2018,2,3),(11,'Dell Alienware Area-51m','Powerful gaming laptop with upgradeable components',68999770,2022,3,3),(12,'LG OLED CX Series','55-inch 4K OLED TV with stunning picture quality',34499770,2016,4,4),(13,'Sony PlayStation 5','Next-generation gaming console with high-fidelity graphics',11499770,2024,5,8),(14,'Logitech MX Master 3','Advanced wireless mouse with ergonomic design',2299770,2019,6,6),(15,'Apple AirPods Pro','Wireless earbuds with active noise cancellation',5749770,2015,2,5),(16,'Anker Soundcore Liberty Air 2','True wireless earbuds with crystal-clear sound',1839769,2022,8,5),(17,'Samsung 4K QLED TV','65-inch QLED TV with Quantum HDR technology',34499770,2024,1,4),(18,'Apple iPhone 13','Latest smartphone with A15 Bionic chip and ProMotion display',22999770,2022,2,1),(19,'Dell Alienware AW3420DW','34-inch ultrawide gaming monitor with G-Sync',22999770,2021,3,4),(20,'LG Gram 17','Ultra-portable laptop with long battery life',29899770,2021,4,3),(21,'Sony WH-CH510','Wireless headphones with long battery life and lightweight design',1379770,2020,5,5),(22,'Logitech C920','Full HD webcam for video conferencing and streaming',1839769,2021,6,8),(23,'Apple AirTag','Item tracker with precision finding and privacy features',689770,2021,2,8),(24,'Anker Soundcore 2','Bluetooth speaker with deep bass and 24-hour playtime',919770,2022,8,8),(25,'Samsung Odyssey G9','49-inch super ultrawide gaming monitor with 240Hz refresh rate',45999770,2014,1,4),(26,'Apple Mac Mini','Compact desktop computer with Apple M1 chip',16099770,2018,2,8),(27,'Dell UltraSharp U2720Q','27-inch 4K USB-C monitor for professional use',12649770,2019,3,4),(28,'LG Tone Free FN7','True wireless earbuds with UVnano charging case',4139770,2020,4,5),(29,'Sony WF-1000XM4','True wireless earbuds with industry-leading noise cancellation',6239770,2020,5,5),(30,'Logitech G Pro X Superlight','Ultra-lightweight wireless gaming mouse with HERO sensor',3449770,2021,6,6),(31,'Apple MacBook Pro 16','Powerful laptop with M1 Pro chip and stunning Retina display',55199769,2023,2,3),(32,'Anker Nebula Capsule II','Portable smart projector with Android TV',13339770,2021,8,8),(33,'Samsung Odyssey G7','32-inch QHD gaming monitor with 240Hz refresh rate',16099770,2018,1,4),(34,'Apple Watch SE','Affordable smartwatch with heart rate monitoring and fitness tracking',6439770,2019,2,7),(35,'Dell S2721DGF','27-inch QHD gaming monitor with fast refresh rate',10349770,2020,3,4),(36,'LG CX Series','65-inch 4K OLED TV with AI ThinQ and Dolby Vision IQ',57499769,2019,4,4),(37,'Sony WH-CH700N','Wireless noise cancelling headphones with long battery life',4599770,2023,5,5),(38,'Logitech K780','Multi-device wireless keyboard for computer, phone, and tablet',1839769,2024,6,8),(39,'Apple Magic Mouse 2','Wireless mouse with multi-touch surface for gestures',1839769,2020,2,6),(40,'Anker Soundcore Liberty Neo','True wireless earbuds with graphene drivers',1149770,2021,8,5),(41,'Samsung Odyssey G5','27-inch Full HD gaming monitor with 144Hz refresh rate',6899770,2022,1,4),(42,'Apple AirPods Max','Over-ear headphones with high-fidelity audio and active noise cancellation',12649770,2021,2,5),(43,'Dell Inspiron 15','Budget-friendly laptop for everyday computing tasks',11499770,2022,3,3),(44,'LG Tone Ultra','Wireless neckband earbuds with premium audio quality',2299770,2023,4,5),(45,'Sony X950H','75-inch 4K LED TV with HDR and Dolby Vision',64399769,2024,5,4),(46,'Logitech MX Keys','Advanced wireless keyboard with backlit keys and customizable shortcuts',2299770,2022,6,8),(47,'Apple HomePod Mini','Compact smart speaker with Siri voice control',2299770,2023,2,8),(48,'Anker Soundcore Flare','360-degree Bluetooth speaker with colorful LED lights',1609769,2024,8,8),(49,'Samsung Galaxy Tab A7','Affordable Android tablet with immersive display',5289770,2021,1,2),(50,'Apple MacBook Pro 13','Powerful laptop with Intel Core processor and Retina display',29899770,2018,2,3),(51,'Dell UltraSharp U3219Q','32-inch 4K monitor with USB-C connectivity',20699770,2019,3,4),(52,'LG Gram 14','Ultra-lightweight laptop with long-lasting battery',27599770,2019,4,3),(53,'Sony BRAVIA X900H','55-inch 4K LED TV with HDR and Dolby Atmos support',29899770,2022,5,4),(54,'Logitech MX Anywhere 3','Compact wireless mouse for productivity on the go',1839769,2023,6,6),(55,'Apple iPad Mini','Compact tablet with A15 Bionic chip and 8.3-inch display',11499770,2019,2,2),(56,'Anker Soundcore Boost','Portable Bluetooth speaker with bass-up technology',1379770,2016,8,8),(57,'Samsung Galaxy Book Flex','2-in-1 laptop with QLED touchscreen display',31049770,2021,1,3),(58,'Apple iPad Air','Powerful tablet with A14 Bionic chip and 10.9-inch display',13799770,2018,2,2),(59,'Dell G5 15','Gaming laptop with NVIDIA GeForce GTX graphics',22999770,2023,3,3),(60,'LG C1 Series','77-inch 4K OLED TV with AI ThinQ and Dolby Vision IQ',91999770,2016,4,4),(61,'Sony WH-XB900N','Wireless headphones with extra bass and touch sensor controls',5749770,2018,5,5),(62,'Logitech G Pro X','Wired gaming headset with Blue Voice microphone technology',2989770,2016,6,5),(63,'Apple Magic Trackpad','Multi-touch trackpad for precise cursor control',2989770,2015,2,6),(64,'Anker Soundcore Motion+','Portable Bluetooth speaker with Hi-Res 30W audio',2299770,2013,8,8),(65,'Samsung Galaxy Tab S7 FE','High-end tablet with powerful Snapdragon processor',14949770,2022,1,2),(66,'Apple iMac','All-in-one desktop computer with 27-inch Retina 5K display',41399770,2014,2,3),(67,'Dell Alienware AW2521HF','24.5-inch gaming monitor with 240Hz refresh rate',9199770,2024,3,4),(68,'LG Velvet','5G smartphone with sleek design and triple rear cameras',16099770,2023,4,1),(69,'Sony WF-XB700','Wireless earbuds with EXTRA BASS for deep, punchy sound',2989770,2022,5,5),(70,'Logitech C922 Pro Stream','Full HD webcam with background replacement technology',2299770,2021,6,8),(71,'Apple TV 4K','Streaming media player with support for 4K HDR content',4139770,2017,2,8),(72,'Anker Soundcore Rave Neo','Portable party speaker with 60W of intense bass',3449770,2018,8,8),(73,'Samsung Galaxy Tab A7 Lite','Affordable Android tablet for entertainment and productivity',3449770,2021,1,2),(74,'Apple Mac Pro','Powerful workstation with Intel Xeon processor and up to 1.5TB of RAM',137999770,2022,2,3),(75,'Dell S3221QS','32-inch 4K curved monitor for immersive viewing experience',11499770,2023,3,4),(76,'LG Gram 17 (2021)','Ultra-lightweight laptop with long-lasting battery and Thunderbolt 4 ports',34499770,2019,4,3),(77,'Sony HT-X8500','2.1ch Dolby Atmos/DTS:X soundbar with built-in dual subwoofer',6899770,2018,5,8),(78,'Logitech G915 TKL','Wireless mechanical gaming keyboard with low-profile switches',5289770,2020,6,8),(79,'Apple iPod Touch','Portable media player with A10 Fusion chip and Retina display',4599770,2017,2,5),(80,'Anker Soundcore Infini Pro','Soundbar with Dolby Atmos support and 120W of audio power',4599770,2018,8,8),(81,'Samsung Galaxy Buds Pro','True wireless earbuds with intelligent active noise cancellation',4599770,2021,1,5),(82,'Apple MacBook Air M1','Thin and light laptop with Apple Silicon M1 chip',22999770,2022,2,3),(83,'Dell XPS 15 9500','High-performance laptop with stunning 4K InfinityEdge display',41399770,2023,3,3),(84,'LG C9 Series','55-inch 4K OLED TV with NVIDIA G-SYNC and Dolby Vision',45999770,2018,4,4),(85,'Sony SRS-XB43','Portable Bluetooth speaker with EXTRA BASS and LED lights',5749770,2021,5,8),(86,'Logitech MX Vertical','Ergonomic vertical mouse for comfortable and natural hand posture',2299770,2019,6,6),(87,'Apple Watch Ultra 2','Apple Watch Ultra 2 GPS + Cellular, 49mm Titanium Case with Blue Alpine Loop',6439770,2020,2,7),(88,'Anker Soundcore Liberty Air 2 Pro','True wireless earbuds with hybrid active noise cancellation',2989770,2023,8,5),(89,'Samsung Galaxy Z Fold 3','Foldable smartphone with large display and S Pen support',41399770,2021,1,1),(90,'Apple iPhone 13 Pro Max','High-end smartphone with A15 Bionic chip and ProMotion display',25299770,2022,2,1),(91,'Dell Alienware AW2518H','24.5-inch gaming monitor with 240Hz refresh rate',9199770,2023,3,4),(92,'LG Gram 14 (2021)','Ultra-lightweight laptop with long-lasting battery and Thunderbolt 4 ports',27599770,2014,4,3),(93,'Sony PlayStation 3','Next-generation gaming console with high-fidelity graphics',11499770,2015,5,8),(94,'Logitech G Pro X Wireless','High-performance wireless gaming headset with Blue Voice technology',4599770,2016,6,6),(95,'OnePlus 9','Premium smartphone with Hasselblad camera system and 120Hz Fluid Display',17249770,2017,2,1),(96,'Google Pixel 6','5G smartphone with Google Tensor chip and advanced camera features',16099770,2018,8,1),(97,'Microsoft Surface Laptop 4','Thin and light laptop with touchscreen display',29899770,2019,11,3),(98,'Huawei MateBook X Pro','Ultra-thin laptop with 3K touchscreen display and Nvidia GeForce MX250 GPU',34499770,2020,12,3),(99,'Xiaomi Mi 11 Ultra','Flagship smartphone with Snapdragon 888 processor and 120x zoom camera',20699770,2021,13,1),(100,'Samsung Odyssey G3','32-inch QHD gaming monitor with 240Hz refresh rate',16099770,2016,1,4),(101,'Apple AirPods 2','Wireless earbuds with active noise cancellation',5749770,2017,2,5),(102,'Dell XPS 15','Thin and light laptop with stunning display',29899770,2023,3,3),(103,'LG UltraGear 24NG600','27-inch gaming monitor with high refresh rate',9199770,2024,4,4),(104,'Sony WH-1000XM3','Noise-cancelling headphones with premium sound quality',8049770,2019,5,5),(105,'Logitech G502 Hero','High-performance gaming mouse with customizable features',1839769,2018,6,6),(106,'Apple Watch Series 7','Smartwatch with advanced health tracking features',9199770,2017,2,7),(107,'Anker PowerCore 20000','Portable charger with high-capacity battery',1149770,2022,8,8),(108,'Samsung Galaxy S22','Flagship smartphone with powerful features',22999770,2021,1,1),(109,'iPhone 13','High-performance smartphone with A15 Bionic chip',25299770,2021,2,1),(110,'OnePlus 9T','Premium smartphone with Snapdragon processor and 120Hz display',20699770,2022,2,1),(111,'Samsung Galaxy Tab S7 Plus','High-end tablet with powerful Snapdragon processor',14949770,2021,1,2),(112,'iPad Air','Powerful tablet with A14 Bionic chip and 10.9-inch display',13799770,2021,2,2),(113,'Huawei MatePad Pro','Premium tablet with Kirin processor and M-Pencil support',18399770,2022,12,2),(114,'Dell XPS 17','Thin and light laptop with stunning display',29899770,2021,3,3),(115,'MacBook Pro','Powerful laptop with Apple M1 chip and Retina display',29899770,2021,2,3),(116,'Microsoft Surface Laptop 3','Thin and light laptop with touchscreen display',29899770,2022,11,3),(117,'LG UltraWide','34-inch ultrawide monitor with QHD resolution',16099770,2021,4,4),(118,'Dell UltraSharp','27-inch 4K monitor with USB-C connectivity',11499770,2021,3,4),(119,'Xiaomi Mi Curved Gaming Monitor','34-inch gaming monitor with 144Hz refresh rate',13799770,2022,13,4),(120,'Sony WH-1000XM5','Noise-cancelling headphones with premium sound quality',8049770,2022,5,5),(121,'AirPods Pro','Wireless earbuds with active noise cancellation',5749770,2022,2,5),(122,'Logitech G Pro X Keyboard','Wired gaming headset with Blue Voice microphone technology',2989770,2022,6,8),(123,'Logitech G502 X Plus','High-performance gaming mouse with customizable features',1839769,2022,6,6),(124,'Microsoft Surface Precision Mouse','Ergonomic mouse with customizable buttons',2299770,2022,11,6),(125,'Xiaomi Mi Wireless Mouse','Wireless mouse with high precision optical sensor',689770,2022,13,6),(126,'Apple Watch Series 8','Smartwatch with advanced health tracking features',9199770,2021,2,7),(127,'Samsung Galaxy Watch 4','Fitness tracker with AMOLED display and SpO2 monitoring',6899770,2021,1,7),(128,'Huawei Watch GT 2','Smartwatch with long battery life and fitness tracking',5749770,2022,12,7),(129,'Samsung Galaxy Buds Pro 2','True wireless earbuds with intelligent active noise cancellation',4599770,2021,1,5),(130,'Apple MagSafe Charger','Wireless charging pad for iPhone 12 models',919770,2021,2,8),(131,'Logitech G PowerPlay','Wireless charging system for gaming mice',2299770,2022,6,6),(132,'Xiaomi Redmi Note 11 Pro','Mid-range smartphone with high refresh rate display',6899770,2022,13,1),(133,'Huawei P50 Pro','Flagship smartphone with Leica quad-camera system',20699770,2022,12,1),(134,'OnePlus Nord 2','Affordable 5G smartphone with AMOLED display',9199770,2022,2,1),(135,'Samsung Galaxy Tab A7 Lite 8.7\'\'','Affordable Android tablet for entertainment and productivity',3549770,2021,1,2),(136,'Apple iPad 3','Apple iPad 3 Retina Display Tablet 16GB, Wi-fi, Black',15499770,2021,2,2),(137,'Xiaomi Mi Pad 5','Android tablet with Snapdragon 860 processor',8049770,2022,13,2),(138,'LG Gram 17 (2022)','Ultra-lightweight laptop with long battery life and 17-inch display',39099770,2021,4,3),(139,'Dell Alienware X17','High-performance gaming laptop with NVIDIA RTX 3080 graphics',68999770,2021,3,3),(140,'Microsoft Surface Pro 8','Versatile 2-in-1 laptop with detachable keyboard',27599770,2022,11,2),(141,'Sony PlayStation 5 Monitor','27-inch gaming monitor with high refresh rate and HDR support',11499770,2022,5,4),(142,'Xiaomi Mi Curved Gaming Monitor 2','32-inch gaming monitor with 165Hz refresh rate',9199770,2022,13,4),(143,'Dell S2722DGM','27-inch QHD gaming monitor with AMD FreeSync Premium',8049770,2021,3,4),(144,'LG Tone Free FP9','True wireless earbuds with UVnano charging case',4139770,2021,4,5),(145,'OnePlus Buds Z2','Affordable true wireless earbuds with Dolby Atmos support',1609769,2022,2,5),(146,'Google Pixel Buds A-Series','Wireless earbuds with hands-free Google Assistant',2299770,2022,10,5),(147,'Huawei Bluetooth Mouse','Wireless mouse with long battery life and precise tracking',1149770,2022,12,6),(148,'Xiaomi Mi Wireless Mouse Lite','Budget-friendly wireless mouse with ergonomic design',459769,2022,13,6),(149,'Logitech MX Master 3s','Advanced wireless mouse with MagSpeed scrolling',2299770,2022,6,6),(150,'Samsung Galaxy Watch 4 Classic','Premium smartwatch with rotating bezel and Wear OS',8049770,2021,1,7),(151,'Xiaomi Mi Watch Revolve Active','Fitness-focused smartwatch with SpO2 monitoring',4599770,2022,13,7),(152,'Huawei Watch GT 3','Smartwatch with long battery life and health tracking features',5749770,2022,12,7),(153,'Samsung Galaxy SmartTag+','Bluetooth tracker with augmented reality finding features',919770,2021,1,8),(154,'Apple Lightning Cable','This is an accessory that helps you charge the battery',689770,2021,2,8),(155,'Xiaomi Mi Band 6','Fitness tracker with AMOLED display and SpO2 monitoring',1149770,2022,13,7),(156,'Sony Xperia 1 III','Flagship smartphone with 4K OLED display and triple camera setup',29899770,2022,5,1),(157,'LG Velvet 2 Pro','Premium smartphone with Dual Screen accessory support',20699770,2021,4,1),(158,'Google Pixel 6a','Affordable 5G smartphone with Google Tensor chip',11499770,2022,10,1),(159,'Sony Xperia Tablet Z4','Waterproof tablet with 2K display and Snapdragon processor',18399770,2022,5,2),(160,'LG G Pad 5','Mid-range tablet with FHD display and stylus support',8049770,2021,4,2),(161,'Microsoft Surface Go 3','Compact and lightweight Windows tablet with optional keyboard',9199770,2022,11,2),(162,'Sony VAIO Z','Premium ultraportable laptop with carbon fiber chassis',41399770,2022,5,3),(163,'LG Gram 16','Ultra-lightweight laptop with 16-inch display and Thunderbolt 4 ports',32199770,2022,4,3),(164,'Microsoft Surface Laptop Studio','Convertible laptop with unique hinged design and NVIDIA GPU',36799770,2022,11,3),(165,'Sony BRAVIA XR A90J','Master Series 4K OLED TV with Cognitive Processor XR',57499769,2022,5,4),(166,'LG UltraFine 5K Display','27-inch 5K monitor with Thunderbolt 3 connectivity',29899770,2022,4,4),(167,'Microsoft Surface Studio Monitor','28-inch touchscreen monitor with 3:2 aspect ratio',45999770,2022,11,4),(168,'Sony WF-1000XM5','True wireless earbuds with LDAC codec and Precise Voice Pickup',6439770,2022,5,5),(169,'LG Tone Free FN6','Wireless earbuds with UVnano charging case and Meridian audio',3449770,2022,4,5),(170,'Google Pixel Buds 2','True wireless earbuds with hands-free Google Assistant',4139770,2022,10,5),(171,'Sony VAIO Mouse VGP-BMS33','Wireless mouse with stylish design and precise tracking',1149770,2022,5,6),(172,'LG UltraGear Mouse','Gaming mouse with customizable RGB lighting and DPI adjustment',1609769,2022,4,6),(173,'Google Pixelbook Pen','Stylus pen for Pixelbook devices with pressure sensitivity',2299770,2022,10,8),(174,'Sony SmartWatch 4','Feature-rich smartwatch with Wear OS and health monitoring',8049770,2022,5,7),(175,'LG Watch Sport','Sport-focused smartwatch with built-in GPS and heart rate monitor',4599770,2022,4,7),(176,'Microsoft Surface Duo 2','Dual-screen device with enhanced productivity features',34499770,2022,11,1),(177,'Sony WF-SP800N Ear Tips','Replacement ear tips for WF-SP800N wireless earbuds',229770,2022,5,5),(178,'LG HBS 820S','LG HBS 820S headphones are genuine, highly durable headphones',1229770,2022,4,5),(179,'Google Pixel Stand','Wireless charging stand for Pixel smartphones with Google Assistant integration',1839769,2022,10,8),(180,'OnePlus 9','OnePlus 9 là điện thoại hàng đầu với thiết kế tinh tế, cụm camera đẳng cấp và hiệu năng vượt trội.',1800000,2021,10,1),(181,'OnePlus 9 Pro','OnePlus 9 Pro cung cấp trải nghiệm đỉnh cao với màn hình QHD+, hệ thống camera cao cấp và hiệu năng mạnh mẽ.',2200000,2021,9,1),(182,'OnePlus Nord','OnePlus Nord mang lại sự cân bằng hoàn hảo giữa giá cả và hiệu năng với thiết kế đẹp mắt và camera chất lượng.',1200000,2020,9,1),(183,'OnePlus 8T','OnePlus 8T với màn hình 120Hz, sạc nhanh Warp Charge 65W và hiệu năng mạnh mẽ.',1600000,2020,9,1),(184,'OnePlus 8','OnePlus 8 nổi bật với thiết kế gọn nhẹ, hiệu năng cao và camera chất lượng tốt.',1500000,2020,9,1),(185,'Google Pixel 6','Google Pixel 6 là chiếc điện thoại hàng đầu với hệ thống camera cao cấp và trải nghiệm Android nguyên bản.',18000000,2021,10,1),(186,'Google Pixel 6 Pro','Google Pixel 6 Pro mang đến hiệu suất mạnh mẽ, camera vượt trội và tích hợp công nghệ AI thông minh.',22000000,2021,10,1),(187,'Google Pixel 5a','Google Pixel 5a với camera ấn tượng, pin bền bỉ và trải nghiệm sử dụng gần như Android nguyên bản.',12000000,2021,10,1),(188,'Google Pixel 5','Google Pixel 5 là sự lựa chọn lý tưởng với camera đỉnh cao, hiệu suất ổn định và hỗ trợ 5G.',16000000,2020,10,1),(189,'Google Pixel 4a','Google Pixel 4a với thiết kế nhỏ gọn, camera chất lượng và trải nghiệm Android mượt mà.',15000000,2020,10,1);
/*!40000 ALTER TABLE `app_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_productspecification`
--

DROP TABLE IF EXISTS `app_productspecification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_productspecification` (
  `prod_spec_id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `spec` varchar(255) DEFAULT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`prod_spec_id`),
  KEY `app_productspecifica_product_id_0a6e49a6_fk_app_produ` (`product_id`),
  CONSTRAINT `app_productspecifica_product_id_0a6e49a6_fk_app_produ` FOREIGN KEY (`product_id`) REFERENCES `app_product` (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_productspecification`
--

LOCK TABLES `app_productspecification` WRITE;
/*!40000 ALTER TABLE `app_productspecification` DISABLE KEYS */;
INSERT INTO `app_productspecification` VALUES (1,'Công nghệ màn hình:','Dynamic AMOLED 2X',1),(2,'Độ phân giải:','Full HD+',1),(3,'Màn hình rộng:','6.4\" - Tần số quét 120 Hz',1),(4,'Độ phân giải:','Chính 12 MP & Phụ 12 MP, 8 MP',1),(5,'Hệ điều hành:','Android 13',1),(6,'Chip xử lý (CPU):','Snapdragon 888 8 nhân',1),(7,'Tốc độ CPU:','1 nhân 2.84 GHz, 3 nhân 2.4 GHz & 4 nhân 1.8 GHz',1),(8,'RAM:','6 GB',1),(9,'Dung lượng lưu trữ:','128 GB',1),(10,'Mạng di động:','Hỗ trợ 5G',1),(11,'Dung lượng pin:','4500 mAh',1),(12,'Loại pin:','Li-Po',1),(13,'Hỗ trợ sạc tối đa:','25 W',1),(14,'Thiết kế:','Nguyên khối',1),(15,'Chất liệu:','Mặt lưng kính',1),(16,'Công nghệ màn hình:','Ultra Retina XDR',2),(17,'Độ phân giải:','1668 x 2420 Pixels',2),(18,'Màn hình rộng:','11\" - Tần số quét 120 Hz',2),(19,'Hệ điều hành:','iPadOS 17',2),(20,'Chip xử lý (CPU):','Apple M4 9 nhân',2),(21,'Tốc độ CPU:','Hãng không công bố',2),(22,'Chip đồ hoạ (GPU):','Apple GPU 10 nhân',2),(23,'RAM:','8 GB',2),(24,'Dung lượng lưu trữ:','256 GB',2),(25,'Dung lượng còn lại (khả dụng) khoảng:','241 GB',2),(26,'Thực hiện cuộc gọi:','FaceTime',2),(27,'Wifi:','Wi-Fi 802.11 a/b/g/n/ac/axMIMO',2),(28,'GPS:','iBeacon, GPS',2),(29,'Bluetooth:','v5.3',2),(30,'Cổng kết nối/sạc:','Type-C',2),(31,'Jack tai nghe:','Type-C',2),(32,'Dung lượng pin:','31.29 Wh',2),(33,'Loại pin:','Li-Po',2),(34,'Chất liệu:','Nhôm nguyên khối',2);
/*!40000 ALTER TABLE `app_productspecification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_rating`
--

DROP TABLE IF EXISTS `app_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_rating` (
  `rate_id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `pro_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  PRIMARY KEY (`rate_id`),
  KEY `app_rating_pro_id_bf4d1ea1_fk_app_product_pro_id` (`pro_id`),
  KEY `app_rating_user_id_3d95154b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `app_rating_pro_id_bf4d1ea1_fk_app_product_pro_id` FOREIGN KEY (`pro_id`) REFERENCES `app_product` (`pro_id`),
  CONSTRAINT `app_rating_user_id_3d95154b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_rating`
--

LOCK TABLES `app_rating` WRITE;
/*!40000 ALTER TABLE `app_rating` DISABLE KEYS */;
INSERT INTO `app_rating` VALUES (1,'Sản phẩm chất lượng cao',1,3,5),(2,'Sản phẩm xài ổn định',1,4,5);
/*!40000 ALTER TABLE `app_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add email address',1,'add_emailaddress'),(2,'Can change email address',1,'change_emailaddress'),(3,'Can delete email address',1,'delete_emailaddress'),(4,'Can view email address',1,'view_emailaddress'),(5,'Can add email confirmation',2,'add_emailconfirmation'),(6,'Can change email confirmation',2,'change_emailconfirmation'),(7,'Can delete email confirmation',2,'delete_emailconfirmation'),(8,'Can view email confirmation',2,'view_emailconfirmation'),(9,'Can add social account',3,'add_socialaccount'),(10,'Can change social account',3,'change_socialaccount'),(11,'Can delete social account',3,'delete_socialaccount'),(12,'Can view social account',3,'view_socialaccount'),(13,'Can add social application',4,'add_socialapp'),(14,'Can change social application',4,'change_socialapp'),(15,'Can delete social application',4,'delete_socialapp'),(16,'Can view social application',4,'view_socialapp'),(17,'Can add social application token',5,'add_socialtoken'),(18,'Can change social application token',5,'change_socialtoken'),(19,'Can delete social application token',5,'delete_socialtoken'),(20,'Can view social application token',5,'view_socialtoken'),(21,'Can add log entry',6,'add_logentry'),(22,'Can change log entry',6,'change_logentry'),(23,'Can delete log entry',6,'delete_logentry'),(24,'Can view log entry',6,'view_logentry'),(25,'Can add permission',7,'add_permission'),(26,'Can change permission',7,'change_permission'),(27,'Can delete permission',7,'delete_permission'),(28,'Can view permission',7,'view_permission'),(29,'Can add group',8,'add_group'),(30,'Can change group',8,'change_group'),(31,'Can delete group',8,'delete_group'),(32,'Can view group',8,'view_group'),(33,'Can add user',9,'add_user'),(34,'Can change user',9,'change_user'),(35,'Can delete user',9,'delete_user'),(36,'Can view user',9,'view_user'),(37,'Can add content type',10,'add_contenttype'),(38,'Can change content type',10,'change_contenttype'),(39,'Can delete content type',10,'delete_contenttype'),(40,'Can view content type',10,'view_contenttype'),(41,'Can add session',11,'add_session'),(42,'Can change session',11,'change_session'),(43,'Can delete session',11,'delete_session'),(44,'Can view session',11,'view_session'),(45,'Can add blog',12,'add_blog'),(46,'Can change blog',12,'change_blog'),(47,'Can delete blog',12,'delete_blog'),(48,'Can view blog',12,'view_blog'),(49,'Can add brand',13,'add_brand'),(50,'Can change brand',13,'change_brand'),(51,'Can delete brand',13,'delete_brand'),(52,'Can view brand',13,'view_brand'),(53,'Can add category',14,'add_category'),(54,'Can change category',14,'change_category'),(55,'Can delete category',14,'delete_category'),(56,'Can view category',14,'view_category'),(57,'Can add payment method',15,'add_paymentmethod'),(58,'Can change payment method',15,'change_paymentmethod'),(59,'Can delete payment method',15,'delete_paymentmethod'),(60,'Can view payment method',15,'view_paymentmethod'),(61,'Can add blog details',16,'add_blogdetails'),(62,'Can change blog details',16,'change_blogdetails'),(63,'Can delete blog details',16,'delete_blogdetails'),(64,'Can view blog details',16,'view_blogdetails'),(65,'Can add order',17,'add_order'),(66,'Can change order',17,'change_order'),(67,'Can delete order',17,'delete_order'),(68,'Can view order',17,'view_order'),(69,'Can add infor delivery',18,'add_infordelivery'),(70,'Can change infor delivery',18,'change_infordelivery'),(71,'Can delete infor delivery',18,'delete_infordelivery'),(72,'Can view infor delivery',18,'view_infordelivery'),(73,'Can add payment',19,'add_payment'),(74,'Can change payment',19,'change_payment'),(75,'Can delete payment',19,'delete_payment'),(76,'Can view payment',19,'view_payment'),(77,'Can add product',20,'add_product'),(78,'Can change product',20,'change_product'),(79,'Can delete product',20,'delete_product'),(80,'Can view product',20,'view_product'),(81,'Can add order item',21,'add_orderitem'),(82,'Can change order item',21,'change_orderitem'),(83,'Can delete order item',21,'delete_orderitem'),(84,'Can view order item',21,'view_orderitem'),(85,'Can add image',22,'add_image'),(86,'Can change image',22,'change_image'),(87,'Can delete image',22,'delete_image'),(88,'Can view image',22,'view_image'),(89,'Can add cart item',23,'add_cartitem'),(90,'Can change cart item',23,'change_cartitem'),(91,'Can delete cart item',23,'delete_cartitem'),(92,'Can view cart item',23,'view_cartitem'),(93,'Can add product specification',24,'add_productspecification'),(94,'Can change product specification',24,'change_productspecification'),(95,'Can delete product specification',24,'delete_productspecification'),(96,'Can view product specification',24,'view_productspecification'),(97,'Can add rating',25,'add_rating'),(98,'Can change rating',25,'change_rating'),(99,'Can delete rating',25,'delete_rating'),(100,'Can view rating',25,'view_rating'),(101,'Can add policy',26,'add_policy'),(102,'Can change policy',26,'change_policy'),(103,'Can delete policy',26,'delete_policy'),(104,'Can view policy',26,'view_policy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$6lBwD60AQ29XXTm5U7LOxt$sFLWJJI4VlZ0A3ftG4bQ4rL7OpIatoxEir0Tobe8/nI=','2024-05-17 18:25:31.475466',0,'tien','Trần','Tiên','tientran010803@gmail.com',0,1,'2024-05-17 18:24:50.846649'),(2,'pbkdf2_sha256$720000$ovoaGAHlweZIwekZ2sqzhk$WPkFTN0ypT9uuITFOrcfNVSuA2Xt8tS8M4bWemtzXes=','2024-05-17 18:26:20.345872',1,'ATIEN','','','ATIEN@gmail.com',1,1,'2024-05-17 18:25:53.993289'),(3,'pbkdf2_sha256$720000$HJQWcPBuIEZfZ78tnZ5FB4$A+/J3/Oa8C9HReaHGXF/jLiHQ23zKxO33rqSfwm20CA=','2024-05-20 06:41:36.345328',0,'duyphat','Duy','Phat','duyphat@gmail.com',0,1,'2024-05-19 02:54:11.379368'),(4,'pbkdf2_sha256$720000$3qMzMyaOZ3PqbkTd1bE0MD$EMz0jAKGVkfstb/XUK7Qim3XIYEc/lhu33NfG7pKl84=','2024-05-20 06:44:50.969126',1,'admin','','','admin@gmail.com',1,1,'2024-05-19 08:31:41.820745');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-19 08:34:41.224253','1','Cash',1,'[{\"added\": {}}]',15,4),(2,'2024-05-19 08:34:54.937311','2','PayPal',1,'[{\"added\": {}}]',15,4),(3,'2024-05-19 08:35:04.627778','3','Momo',1,'[{\"added\": {}}]',15,4),(4,'2024-05-19 08:35:13.312746','4','VNPay',1,'[{\"added\": {}}]',15,4),(5,'2024-05-19 09:03:15.642295','5','Order object (5)',3,'',17,4),(6,'2024-05-19 09:03:15.644260','4','Order object (4)',3,'',17,4),(7,'2024-05-19 09:03:15.646253','3','Order object (3)',3,'',17,4),(8,'2024-05-19 09:03:15.649309','2','Order object (2)',3,'',17,4),(9,'2024-05-19 09:03:15.651499','1','Order object (1)',3,'',17,4),(10,'2024-05-19 09:47:58.623734','13','Xiaomi',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(11,'2024-05-19 09:52:55.099869','13','Xiaomi',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(12,'2024-05-19 09:53:05.980804','12','Huawei',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(13,'2024-05-19 09:53:19.223418','1','Samsung',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(14,'2024-05-19 09:53:25.407625','5','Sony',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(15,'2024-05-19 09:53:32.297033','6','Logitech',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(16,'2024-05-19 09:53:39.631508','7','Apple',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(17,'2024-05-19 09:53:49.777131','4','LG',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(18,'2024-05-19 09:54:35.105050','2','Apple',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(19,'2024-05-19 09:57:34.079628','11','Microsoft',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(20,'2024-05-19 09:57:43.760080','10','Google',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(21,'2024-05-19 09:57:53.304927','9','OnePlus',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(22,'2024-05-19 09:57:59.296803','8','Anker',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(23,'2024-05-19 09:58:07.134016','3','Dell',2,'[{\"changed\": {\"fields\": [\"BraImage\"]}}]',13,4),(24,'2024-05-19 10:13:26.452139','4','VNPay',2,'[{\"changed\": {\"fields\": [\"PayImage\"]}}]',15,4),(25,'2024-05-19 10:13:35.057783','4','VNPay',2,'[{\"changed\": {\"fields\": [\"PayImage\"]}}]',15,4),(26,'2024-05-19 10:18:49.563683','1','Cash',2,'[{\"changed\": {\"fields\": [\"PayImage\"]}}]',15,4),(27,'2024-05-19 10:18:55.486204','2','PayPal',2,'[{\"changed\": {\"fields\": [\"PayImage\"]}}]',15,4),(28,'2024-05-19 10:19:01.748703','3','Momo',2,'[{\"changed\": {\"fields\": [\"PayImage\"]}}]',15,4),(29,'2024-05-19 10:19:07.747356','4','VNPay',2,'[{\"changed\": {\"fields\": [\"PayImage\"]}}]',15,4),(30,'2024-05-19 10:38:32.367119','7','Order object (7)',3,'',17,4),(31,'2024-05-19 10:38:32.370231','6','Order object (6)',3,'',17,4);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'account','emailaddress'),(2,'account','emailconfirmation'),(6,'admin','logentry'),(12,'app','blog'),(16,'app','blogdetails'),(13,'app','brand'),(23,'app','cartitem'),(14,'app','category'),(22,'app','image'),(18,'app','infordelivery'),(17,'app','order'),(21,'app','orderitem'),(19,'app','payment'),(15,'app','paymentmethod'),(26,'app','policy'),(20,'app','product'),(24,'app','productspecification'),(25,'app','rating'),(8,'auth','group'),(7,'auth','permission'),(9,'auth','user'),(10,'contenttypes','contenttype'),(11,'sessions','session'),(3,'socialaccount','socialaccount'),(4,'socialaccount','socialapp'),(5,'socialaccount','socialtoken');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-17 09:43:25.956906'),(2,'auth','0001_initial','2024-05-17 09:43:30.185276'),(3,'account','0001_initial','2024-05-17 09:43:30.928295'),(4,'account','0002_email_max_length','2024-05-17 09:43:31.005291'),(5,'account','0003_alter_emailaddress_create_unique_verified_email','2024-05-17 09:43:31.115285'),(6,'account','0004_alter_emailaddress_drop_unique_email','2024-05-17 09:43:31.185284'),(7,'account','0005_emailaddress_idx_upper_email','2024-05-17 09:43:31.253280'),(8,'admin','0001_initial','2024-05-17 09:43:31.615480'),(9,'admin','0002_logentry_remove_auto_add','2024-05-17 09:43:31.645483'),(10,'admin','0003_logentry_add_action_flag_choices','2024-05-17 09:43:31.674479'),(11,'app','0001_initial','2024-05-17 09:43:35.486481'),(12,'contenttypes','0002_remove_content_type_name','2024-05-17 09:43:35.785478'),(13,'auth','0002_alter_permission_name_max_length','2024-05-17 09:43:35.998964'),(14,'auth','0003_alter_user_email_max_length','2024-05-17 09:43:36.077976'),(15,'auth','0004_alter_user_username_opts','2024-05-17 09:43:36.122983'),(16,'auth','0005_alter_user_last_login_null','2024-05-17 09:43:36.322072'),(17,'auth','0006_require_contenttypes_0002','2024-05-17 09:43:36.346475'),(18,'auth','0007_alter_validators_add_error_messages','2024-05-17 09:43:36.383472'),(19,'auth','0008_alter_user_username_max_length','2024-05-17 09:43:36.581472'),(20,'auth','0009_alter_user_last_name_max_length','2024-05-17 09:43:36.977473'),(21,'auth','0010_alter_group_name_max_length','2024-05-17 09:43:37.048513'),(22,'auth','0011_update_proxy_permissions','2024-05-17 09:43:37.087474'),(23,'auth','0012_alter_user_first_name_max_length','2024-05-17 09:43:37.264483'),(24,'sessions','0001_initial','2024-05-17 09:43:37.449476'),(25,'socialaccount','0001_initial','2024-05-17 09:43:38.503585'),(26,'socialaccount','0002_token_max_lengths','2024-05-17 09:43:38.630583'),(27,'socialaccount','0003_extra_data_default_dict','2024-05-17 09:43:38.661583'),(28,'socialaccount','0004_app_provider_id_settings','2024-05-17 09:43:39.210587'),(29,'socialaccount','0005_socialtoken_nullable_app','2024-05-17 09:43:39.631588'),(30,'socialaccount','0006_alter_socialaccount_extra_data','2024-05-17 09:43:39.971591'),(31,'app','0002_paymentmethod_payimage','2024-05-19 10:10:13.526730');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('g5relo81es0zkfw2jli4oj8lo7l1tf8x','.eJxVjssOwiAURP-FtSFAb4G6dO83kAtcSrUB08fCGP_d1nSh2zkzJ_NiDtclu3WmyQ2RnVnDTr-Zx3CnsoN4w9JXHmpZpsHzvcIPOvNrjTReju6fIOOct7XxEckqVLZTylKSMmjZGQut9CIYaCAZA9piQh2ETmAlCG0JvQcSTbtJx9r3FN1QvuL90fp8ZFzY-wMqeED8:1s8cSg:cV0b6TrBWnHA9OzvubEKaKIhyXqc2-ShvOn4L41Il58','2024-06-02 09:04:10.490937'),('hc21s5spsrp0p0lqj2bi1tetwpjurn41','.eJxVjDsOwjAQBe_iGln-beylpOcM1vqHA8iW4qRC3B0ipYD2zcx7MU_bWv028uLnxM7MsNPvFig-cttBulO7dR57W5c58F3hBx382lN-Xg7376DSqN9aJBnA5kICdElKSywxT644ZYLVYBHROKNlBJKRTJywZB0QAJxKwkj2_gDfJTdW:1s8d85:wY81ExWCEPYoQBEdvd4yA5h1l9ad36673Tti8xPhjwk','2024-06-02 09:46:57.748848'),('l1131rjjlwtwtwu9oo0ebvhczyeh5j8e','.eJxVjDsOwjAQBe_iGln-beylpOcM1vqHA8iW4qRC3B0ipYD2zcx7MU_bWv028uLnxM7MsNPvFig-cttBulO7dR57W5c58F3hBx382lN-Xg7376DSqN9aJBnA5kICdElKSywxT644ZYLVYBHROKNlBJKRTJywZB0QAJxKwkj2_gDfJTdW:1s8dp1:hGDNBFT1mmh4G7z5Y_jhHGtSUN5xLGtUyTPPjj7fLQA','2024-06-02 10:31:19.581283'),('ntwcord7sv6myq6wgtqcbkvqr1137fl3','.eJxVjDsOwjAQBe_iGln-beylpOcM1vqHA8iW4qRC3B0ipYD2zcx7MU_bWv028uLnxM7MsNPvFig-cttBulO7dR57W5c58F3hBx382lN-Xg7376DSqN9aJBnA5kICdElKSywxT644ZYLVYBHROKNlBJKRTJywZB0QAJxKwkj2_gDfJTdW:1s8dvs:5WkB_BnNv1iHkOpgSkaM3JMz9IXFo-3Oj7_tPGHOEZo','2024-06-02 10:38:24.115952'),('s7vyn3wmk4qiiihrlexue4usklb7do0d','e30:1s82Gg:eSY1Tk5v6U-DYhjciqe-PulEOaCGQlBHO9ltqsVOPa8','2024-05-31 18:25:22.904632'),('w1sxs95tt0y66f7ahq0tv5v9a9ly3vvj','.eJxVjDsOwyAQBe9CHSFjWBtSps8Z0MIuNvmA5E8V5e6xIxdJ-2bevITHdRn9OvPkM4mzMOL0uwWMdy47oBuWocpYyzLlIHdFHnSW10r8uBzuX2DEedzeDakAPSdsQCdqtXIpcmeTbU3oNfTOOWONVhFQRTSxc4l1cABgW2qM2qKPOgxMPpdveGsiPXMR7w-150AT:1s8wlO:jePnsVVMU9BJBrKffH76yQhAkLKEaW455i5xokqYblM','2024-06-03 06:44:50.975247'),('x2qno6cyauwg2eixtldtelu4g73b9mee','.eJxVjDsOwjAQBe_iGln-bWxT0nMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3Zmip1-N8L4yG0H6Y7t1nnsbV1m4rvCDzr4taf8vBzu30HFUb81AGkh5eQ1egcehJOlWCVxSpkURDAQhbFGgFQ6Ck3GkiIqDgGsp8zeH6tcNtc:1s82Hc:rZgvBbbcYMkpWytwm9bJu9FTr7tvaYu18Qfz36EXELA','2024-05-31 18:26:20.370872');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialaccount`
--

DROP TABLE IF EXISTS `socialaccount_socialaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialaccount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(200) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` json NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialaccount`
--

LOCK TABLES `socialaccount_socialaccount` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialapp`
--

DROP TABLE IF EXISTS `socialaccount_socialapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialapp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `provider_id` varchar(200) NOT NULL,
  `settings` json NOT NULL DEFAULT (_utf8mb3'{}'),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialapp`
--

LOCK TABLES `socialaccount_socialapp` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialapp` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialaccount_socialtoken`
--

DROP TABLE IF EXISTS `socialaccount_socialtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `socialaccount_socialtoken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int NOT NULL,
  `app_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`),
  CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialaccount_socialtoken`
--

LOCK TABLES `socialaccount_socialtoken` WRITE;
/*!40000 ALTER TABLE `socialaccount_socialtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialaccount_socialtoken` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 14:02:57
