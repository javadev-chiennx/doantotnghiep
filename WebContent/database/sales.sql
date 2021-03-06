# Exporting metadata from sales
DROP DATABASE IF EXISTS `sales`;
CREATE DATABASE `sales`;
USE `sales`;
# TABLE: sales.category
CREATE TABLE `category` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=234360 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.country
CREATE TABLE `country` (
  `countryID` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`countryID`)
) ENGINE=InnoDB AUTO_INCREMENT=444342 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.customer
CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) DEFAULT NULL,
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=245460 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.feedaback
CREATE TABLE `feedaback` (
  `feedID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`feedID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.orders
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  `establish_date` datetime NOT NULL,
  `pay_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'Direct',
  `shipperID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.order_details
CREATE TABLE `order_details` (
  `order_detailsID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `price` float NOT NULL,
  `total_money` float DEFAULT NULL,
  `unit` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`order_detailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.product
CREATE TABLE `product` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `categoryID` int(11) NOT NULL,
  `supplierID` int(11) NOT NULL,
  `purchase_price` float DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `product_date` date DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `color` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guarantee_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `isSpecifial` bit(1) DEFAULT b'0',
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=423502 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.shippers
CREATE TABLE `shippers` (
  `shipperID` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) DEFAULT NULL,
  `shipper_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `birth_date` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`shipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=975350 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.staff
CREATE TABLE `staff` (
  `staffID` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card_number` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` bit(1) DEFAULT b'0',
  PRIMARY KEY (`staffID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=434574 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
# TABLE: sales.supplier
CREATE TABLE `supplier` (
  `supplierID` int(11) NOT NULL AUTO_INCREMENT,
  `countryID` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`supplierID`),
  UNIQUE KEY `tax_code_UNIQUE` (`tax_code`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=657424 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
#...done.
USE `sales`;
# Exporting data from sales
# Data for table `sales`.`category`:
INSERT INTO `sales`.`category` VALUES  (234346, 'Máy tính xách tay', 'laptop'),  (234347, 'Máy tính để bàn', 'desktop'),  (234349, 'CPU', 'chip vi xử lí'),  (234351, 'Mainbroad', 'main máy tính'),  (234352, 'USB', 'thiết bị lưu trữ ngoài'),  (234353, 'SSD', 'ổ lưu trữ ssd'),  (234354, 'HDD', 'ổ lưu trữ HDD'),  (234359, 'HUB', 'Thiết bị mạng');
# Data for table `sales`.`country`:
INSERT INTO `sales`.`country` VALUES  (444334, 'VN', 'Việt Nam'),  (444335, 'JAP', 'Nhật bản'),  (444336, 'KORE', 'Hà Quốc'),  (444337, 'USA', 'Hoa Kỳ'),  (444338, 'THA', 'Thái Lan '),  (444339, 'MEX', 'Mexico'),  (444341, 'ARA', 'A Rập xeus');
# Data for table `sales`.`customer`:
INSERT INTO `sales`.`customer` VALUES  (245454, 444334, 'Trần Kim Anh', 'test123435', 'test@545433', '1990-03-14 00:00:00', 'Hà Nam', '0987545488'),  (245455, 444335, 'Sumoroai ', 'test574475', 'test@565699', '1992-05-07 00:00:00', 'Onatawoa', '0987635745'),  (245456, 444336, 'Lee Doong Chun', 'test643488', 'test@574548', '1990-06-02 00:00:00', 'Kangnam - Soul', '0134354549'),  (245457, 444337, 'Antony ', 'test654533', 'test@656453', '1993-01-01 00:00:00', 'Thung lũng Silicol', '0986344589'),  (245458, 444338, 'Chun Pa Chec', 'test566453', 'test@565656', '1989-09-09 00:00:00', 'Bankog Thai land', '0983463748'),  (245459, 444339, 'Effenrayes', 'test234335', 'test@656554', '1990-04-02 00:00:00', 'Urugouay - Mexico', '0977634348');
# Data for table `sales`.`feedaback`:
# Table feedaback has no data.
# Data for table `sales`.`orders`:
# Table orders has no data.
# Data for table `sales`.`order_details`:
# Table order_details has no data.
# Data for table `sales`.`product`:
INSERT INTO `sales`.`product` VALUES  (423463, 'Macbook Air 11\'\' - MD711ZP/B (2014)', 234346, 657393, 18290000, 19500000, '2013-04-05', 23, 'black', 'images/apple/apple1.png', '12 tháng', ,  ),  (423464, 'Macbook Air 13\'\' - MJVE2ZP/A', 234346, 657393, 19000000, 20500000, '2014-09-09', 0, 'red', 'images/apple/apple2.png', '24 tháng', ,  ),  (423465, 'Máy tính xách tay Apple Macbook Air - MD711ZP/B', 234346, 657393, 18700000, 19800000, '2015-05-12', 34, 'gray', 'images/apple/apple3.png', '12 tháng', ,  ),  (423466, 'Máy tính xách tay Apple MacBook Pro MGX72ZP/A', 234346, 657393, 22500000, 23500000, '2012-01-02', 23, 'red', 'images/apple/apple4.png', '12 tháng', ,  ),  (423467, 'Máy tính xách tay APPLE MACBOOK Air 2015 MJVM2ZP/A', 234346, 657393, 18700000, 20700000, '2010-08-07', 34, 'red', 'images/apple/apple5.png', '12 tháng', ,  ),  (423468, 'Dell-N7537/i5-4210U/15.6inch', 234346, 657389, 10200000, 11200000, '2010-06-04', 53, 'black', 'images/dell/dell6.png', '12 tháng', ,  ),  (423469, 'Máy tính xách tay Dell Vostro V3446V4I33009', 234346, 657389, 13899000, 15000000, '2015-05-12', 0, 'gray', 'images/dell/dell7.png', '12 tháng', ,  ),  (423470, 'Máy tính xách tay DELL Vostro V5480-70057780', 234346, 657389, 12500000, 14000000, '2012-01-02', 54, 'red', 'images/dell/dell8.png', '12 tháng', ,  ),  (423471, 'Máy tính xách tay DELL Inspiron N3542-70044438', 234346, 657389, 24000000, 26000000, '2012-01-02', 17, 'black', 'images/dell/dell9.png', '12 tháng', ,  ),  (423472, 'Máy tính xách tay Dell Ins N344270043191', 234346, 657389, 10200000, 11200000, '2015-05-12', 0, 'red', 'images/dell/dell10.png', '12 tháng', ,  ),  (423473, 'Máy tính để bàn HP Stream 11-d001TU K5C41PA-Magenta miễn phí Office 365 1 năm và 1TB onedriver', 234347, 657397, 12500000, 14000000, '2012-01-02', 32, 'black', 'images/hp/hpdesk1.png', '12 tháng', ,  ),  (423474, 'Máy tính để bàn HP Pavilion 14-v023TU J6M76PA', 234347, 657397, 13899000, 15100000, '2015-05-12', 54, 'blue', 'images/hp/hpdesk2.png', '12 tháng', ,  ),  (423475, 'Máy tính để bàn HP Pavilion 15-p040TU-J6M80PA', 234347, 657397, 12500000, 13500000, '2012-01-02', 24, 'white', 'images/hp/hpdesk3.png', '12 tháng', ,  ),  (423476, 'Máy tính để bàn HP Probook 450 K9R22PA', 234347, 657397, 13899000, 14899000, '2013-04-05', 0, 'gold', 'images/hp/hpdesk4.png', '12 tháng', ,  ),  (423477, 'Máy tính để bàn HP Probook 450-L9W05PA', 234347, 657397, 18290000, 21400000, '2014-09-09', 35, 'black', 'images/hp/hpdesk5.png', '12 tháng', ,  ),  (423478, 'Máy tính để bàn ACER Aspire One Z1401-C283 NX.MT1SV.002-Đen', 234347, 657396, 13899000, 14500000, '2012-01-02', 32, 'black', 'images/acer/acerdesk1.png', '12 tháng', ,  ),  (423479, 'Máy tính để bàn Acer E5-571 NX.ML8SV.002', 234347, 657396, 12500000, 14000000, '2015-05-12', 12, 'black', 'images/acer/acerdesk2.png', '12 tháng', ,  ),  (423480, 'Máy tính để bàn Acer E5-471 NX.MP9SV.001', 234347, 657396, 18290000, 20000000, '2013-04-05', 0, 'black', 'images/acer/acerdesk3.png', '12 tháng', ,  ),  (423481, 'Acer E1-472/i3-4010U/2G/500G', 234347, 657396, 12500000, 13500000, '2010-06-04', 43, 'black', 'images/acer/acerdesk4.png', '12 tháng', ,  ),  (423482, 'Acer V3-371-33XH/i3-4005U/Steel Grey', 234347, 657396, 18290000, 19200000, '2013-04-05', 0, 'black', 'images/acer/acerdesk5.png', '12 tháng', ,  ),  (423483, 'DELL VOSTRO 3900MT (70047913)', 234347, 657389, 18290000, 19500000, '2013-04-05', 23, 'black', 'images/dell/delldesk1.png', '12 tháng', ,  ),  (423484, 'DELL VOSTRO 3900MT (FV4X311)', 234347, 657389, 18290000, 19500000, '2013-04-05', 23, 'black', 'images/dell/delldesk2.png', '12 tháng', ,  ),  (423485, 'DELL INSPIRON 3647ST (70045406)-BLACK', 234347, 657389, 18290000, 19500000, '2013-04-05', 23, 'black', 'images/dell/delldesk3.png', '12 tháng', ,  ),  (423486, 'DELL INSPIRON 3647SF (GENSFF1503312)', 234347, 657389, 18290000, 19500000, '2013-04-05', 23, 'black', 'images/dell/delldesk4.png', '12 tháng', ,  ),  (423487, 'DELL VOSTRO 3902MT (50RYV2)', 234347, 657389, 19000000, 20500000, '2014-09-09', 0, 'red', 'images/dell/delldesk5.png', '24 tháng', ,  ),  (423488, 'HP 110-021L (H5Y97AA)/ (E9T28AA)', 234347, 657397, 18700000, 19800000, '2015-05-12', 34, 'gray', 'images/dell/delldesk6.png', '12 tháng', ,  ),  (423489, 'HP 110-221X - (E9U06AA)', 234347, 657397, 22500000, 23500000, '2012-01-02', 23, 'red', 'images/hp/hpdesk1.png', '12 tháng', ,  ),  (423490, 'HP PAVILION 500-311X (F7G32AA)', 234347, 657397, 18700000, 20700000, '2010-08-07', 34, 'red', 'images/hp/hpdesk2.png', '12 tháng', ,  ),  (423491, 'HP PRODESK 400 G2 (G3V26AV) - G3240', 234347, 657397, 10200000, 11200000, '2010-06-04', 53, 'black', 'images/hp/hpdesk3.png', '12 tháng', ,  ),  (423492, 'HP PAVILION 500-500X (K5M20AA)', 234347, 657397, 13899000, 15000000, '2015-05-12', 0, 'gray', 'images/hp/hpdesk4.png', '12 tháng', ,  ),  (423493, 'HP PRODESK 400 G2 MT (L0J19PA)', 234347, 657397, 12500000, 14000000, '2012-01-02', 54, 'red', 'images/hp/hpdesk5.png', '12 tháng', ,  ),  (423494, 'ACER K30AD-VN013D (NEW!!)', 234347, 657396, 24000000, 26000000, '2012-01-02', 17, 'black', 'images/acer/acerdesk1.png', '12 tháng', ,  ),  (423495, 'ACER K5130-VN007D', 234347, 657396, 12500000, 14000000, '2012-01-02', 32, 'black', 'images/acer/acerdesk2.png', '12 tháng', ,  ),  (423496, 'ACER P30AD-VN011D', 234347, 657396, 13899000, 15100000, '2015-05-12', 54, 'blue', 'images/acer/acerdesk3.png', '12 tháng', ,  ),  (423497, 'ACER K30AD-VN002D', 234347, 657396, 12500000, 13500000, '2012-01-02', 24, 'white', 'images/acer/acerdesk4.png', '12 tháng', ,  ),  (423498, 'ACER ET2020IUTI-B011M (NON OS)', 234347, 657396, 13899000, 14899000, '2013-04-05', 0, 'gold', 'images/acer/acerdesk5.png', '12 tháng', ,  ),  (423499, 'ACER P30AD-VN013D', 234347, 657396, 18290000, 21400000, '2014-09-09', 35, 'black', 'images/acer/acerdesk6.png', '12 tháng', ,  ),  (423500, 'May tinh xach aaaaaaaaaaaa', 234384, 657391, 234439, 4364379, '2015-06-10', 43, 'do', '', '12 tháng', ,  ),  (423501, 'Lap top dell bbbbbbbb', 344345, 343534, 43436800, 47544460, '2015-06-03', 45, 'xanh', 'img/mainbk.png', '24 tháng', ,  );
# Data for table `sales`.`shippers`:
INSERT INTO `sales`.`shippers` VALUES  (975344, 444334, 'Ngô Ứng Hùng', '1990-05-06 00:00:00', 'Nam Định', '0984574854', 'images/'),  (975345, 444334, 'Trần Việt Bách', '1996-09-02 00:00:00', 'Hà Nam', '01673384783', 'images/'),  (975346, 444334, 'Nguyễn Kim hùng', '1994-09-03 00:00:00', 'Hà Tây', '0987734384', 'images/'),  (975347, 444334, 'Vũ Văn Hải', '1992-09-03 00:00:00', 'Nam Đàn - Nghệ An', '01667856564', 'images/'),  (975348, 444334, 'Nguyễn Thị Duyên', '1995-09-03 00:00:00', 'Quảng Xương - Thanh Hóa', '0986647383', 'images/'),  (975349, 343532, 'ggdfgdfgdg', '1993-01-01 00:00:00', 'ergdffgd', '09867565', 'dfdfgfdfd');
# Data for table `sales`.`staff`:
INSERT INTO `sales`.`staff` VALUES  (434543, 444334, 'Ngô Xuân Bách', 'bachnx123', 'nxbach@12345', '012435445', '1992-01-01 00:00:00', 'Tứ Kỳ - Hải Dương', 'bachnx@gmail.com', '0987343423', NULL,  ),  (434565, 444334, 'Trịnh Tuấn Anh', 'anhtt321', 'sakila12345', '017664673', '1990-09-07 00:00:00', 'Diễn Châu  - Nghệ An', 'anhtt@gmail.com', '01679645453', NULL,  ),  (434566, 444334, 'Nguyễn Thị Trang', 'trangtt54321', 'trangnt@123', '012385764', '1989-06-23 00:00:00', 'Quỳnh Lưu - Nghệ An', 'trangnt@gmail.com', '0987654321', NULL, ),  (434567, 444334, 'Phạm Trưởng', 'phamtruongxp', 'truongpham0305', '017654546', '1988-08-01 00:00:00', 'Văn Lâm - Hưng Yên', 'phamtruong@gmail.com', '01234568764', NULL,  ),  (434568, 444334, 'Nguyễn Thu', 'thunguyen', 'nguyenthu123', '012367654', '1990-04-04 00:00:00', 'Ba Vì - Hà Nội', 'thunguyen@gmail.com', '0986474389', NULL,  ),  (434569, 444334, 'Vũ Thu Hà', 'thuhavu@552', 'thuha9876', '012435466', '1992-05-07 00:00:00', 'Thanh Chương - Nghệ An', 'thuha@gmail.com', '0997774848', NULL,  ),  (434570, 444334, 'Trương Gia Hùng', 'hungtt@345', 'hungtruong3421', '017884746', '1993-09-09 00:00:00', 'Cầu Diễn - Từ Liêm', 'truonghung@gmail.com', '0998854592', NULL,  ),  (434571, 444337, 'Solikia Tran', 'matazawoa@244', 'hihimi23342', '013455656', '1990-04-06 00:00:00', 'Cẩm Thủy - Thanh Hóa', 'minikiawoa@gmail.com', '01256785546', NULL, ),  (434572, 444335, 'Mokiziao Nguyen', 'okoxima1352', 'olaola3434', '012466764', '1992-09-06 00:00:00', 'Cẩm Xương - Phú Thọ', 'okixima@gmail.com', '0988845455', NULL,  ),  (434573, 444334, 'Tony Nguyen', 'tomnguyen122', 'nguyentom@344', '017454343', '1990-07-04 00:00:00', 'Ba Đình - Hà Nội', 'tonynguyen@gmail.com', '01678656453', NULL,  );
# Data for table `sales`.`supplier`:
INSERT INTO `sales`.`supplier` VALUES  (657389, 444337, 'Dell corporation', '23 - bagola street - canifornia', 'dell@support.com', '13849599334', '4555676887'),  (657390, 444337, 'Intel corporation', '54 - butuna- silicon - canifornia', 'intel@suppot.com', '13586586565', '8474865659'),  (657391, 444337, 'AMD corporation', '86 - lucxambua - texas', 'amd@support.com', '13965965965', '2345654566'),  (657392, 444337, 'King corporation', '98 - bacxmax - newooc', 'king@supprt.com', '13455657689', '6545677879'),  (657393, 444337, 'Apple group', '75 - butuna - silicol', 'apple@support.com', '13356768787', '7866434357'),  (657394, 444335, 'Toshiba corporation', '34 - matazatue - tokyo', 'toshiba@suppor.com', '81345456578', '5465786543'),  (657395, 444337, 'Microsoft corporation', '43 - baladesk - silicol', 'microsoft@suppot.com', '81345656768', '7786756453'),  (657396, 444337, 'Acer corporation', '69 - malikia - oasintonk ', 'acer@support.com', '81345467678', '4657876543'),  (657397, 444335, 'Hp corporation ', '87 - miakio - usa', 'hp@support.com', '81335465768', '7454556762'),  (657398, 444336, 'SamSung group', '12 - makioke - kangnam - soul ', 'samsung@support.com', '79774584845', '6344676753'),  (657410, 435236, 'Thành Phát', 'Ha Noi viet nam', 'xuanchienbka10@gmail.com', '0986374743', '0976484838'),  (657417, 434523, 'Thuận thiên', 'Xuân Trường - Nam Định', 'thuanthien@gmail.com', '0743665424', '9374838390'),  (657420, 435563, 'FPT INF-SYS', 'Phạm Hùng - Cầu Giấy - Hà Nội', 'fpt@yahoo.com', '0456653753', '9087473385'),  (657423, 343553, 'Thinh Phat', 'Truong trinh - Ha Noi - VN', 'thinhphat@gmail.com', '0454565639', '9874883743');
#...done.
