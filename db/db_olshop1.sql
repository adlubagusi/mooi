-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 05:26 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'aQ20VVR9RDzf6ClUrMncPstv8LrGNYMpkoW87SWw7CXb5qTpymKdTn53zHH1Ee4h');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(19, '1602921038655.png', 'http://localhost/olshop/c/pakaian-wanita'),
(20, '1602921337255.png', 'http://localhost/olshop/c/komputer');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(9, 'Komputer', '1598502155371.png', 'komputer'),
(10, 'Gadget', '1598502251489.png', 'gadget'),
(11, 'Kaos', '1598502325740.png', 'kaos'),
(12, 'Sepatu', '1598502389843.png', 'sepatu'),
(13, 'Pakaian Wanita', '1602920425507.png', 'pakaian-wanita');

-- --------------------------------------------------------

--
-- Table structure for table `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `navbar_color` varchar(10) NOT NULL,
  `host_mail` varchar(50) NOT NULL,
  `port_mail` varchar(5) NOT NULL,
  `crypto_mail` varchar(10) NOT NULL,
  `account_mail` varchar(50) NOT NULL,
  `pass_mail` varchar(150) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `whatsappv2` varchar(20) NOT NULL,
  `email_contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `app_name`, `slogan`, `navbar_color`, `host_mail`, `port_mail`, `crypto_mail`, `account_mail`, `pass_mail`, `whatsapp`, `whatsappv2`, `email_contact`) VALUES
(1, 'BT Store', 'Easy and Reliable Online Shop', '#2d2d2d', 'ssl://gmail.com', '465', '', 'banatechindonesia@gmail.com', '12345', '081235375548', '6281234567890', 'cs@banatechindo.com');

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
(7, 30, '1598796094098.jpg'),
(8, 30, '1598796099769.jpg'),
(9, 31, '1598800027430.jpg'),
(10, 35, '1598800578610.jpg'),
(11, 37, '1598800774520.jpg'),
(13, 42, '1602920870406.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `region` int(11) NOT NULL,
  `address` text NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_code`, `name`, `email`, `telp`, `region`, `address`, `ongkir`, `total_price`, `total_all`, `date_input`, `status`) VALUES
(150, '237194', 'Adlu Bagus', 'adlubagusi@gmail.com', '081246319759', 5, 'Perum Griya Permata Alam Blok Q 27', '1500000', 172700099, 174200099, '2020-10-17 13:47:17', 1),
(151, '981165', 'Tes', 'tes@email.com', '081246319759', 5, 'Perum Griya Permata Alam', '1500000', 62500, 1562500, '2020-10-18 13:36:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `banner` varchar(30) NOT NULL,
  `link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `banner` varchar(30) NOT NULL,
  `slug` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `title`, `banner`, `slug`) VALUES
(7, 'Daily Necessities For You', '1598803806568.png', 'daily-necessities-for-you'),
(8, 'Today Fashion Trend', '1598836944368.png', 'today-fashion-trend');

-- --------------------------------------------------------

--
-- Table structure for table `package_product`
--

CREATE TABLE `package_product` (
  `id` int(11) NOT NULL,
  `package` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_product`
--

INSERT INTO `package_product` (`id`, `package`, `product`) VALUES
(24, 7, 41),
(25, 7, 36),
(26, 7, 29),
(27, 7, 37),
(28, 7, 33),
(29, 7, 34),
(30, 8, 38),
(31, 8, 35),
(32, 8, 32),
(33, 8, 33),
(34, 8, 34),
(35, 8, 41);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'About Us', '<p>This is an example of our about page</p>', 'about-us'),
(2, 'Contact', '<p>This is an example of a contact page</p>', 'contact'),
(3, 'Testimonial', '<p>Don\'t change slug</p>', 'testimony'),
(4, 'Privacy Policy', '<p>This is an example of a privacy policy page</p>', 'privacy-policy'),
(5, 'Terms and Conditions', '<p>This is an example of the terms and conditions page</p>', 'terms'),
(6, 'How to Shop', '<p>This is an example of how to shop page</p>', 'shopping-help'),
(7, 'Delivery Order', '<p>This is an example of delivery order page</p>', 'delivery-order');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` varchar(30) NOT NULL,
  `viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
(29, 'Lenovo Legion Y540 15.6 Laptop 144Hz i7-9750H 16GB RAM 256GB SSD GTX 1660Ti 6GB', '1,727,000.99', 10, 9, 1, 3000, '1598503579663.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-08-27 11:46:19', 1, 'lenovo-legion-y540-156-laptop-144hz-i7-9750h-16gb-ram-256gb-ssd-gtx-1660ti-6gb', 0, '0', 84),
(30, 'Nillkin For Huawei P30 P20 Pro P30 Lite Nature Transparent Soft TPU Case Cover', '5.59', 100, 10, 1, 500, '1598795905577.jpg', 'Package Content: 1 x Phone cover\r\n100% brand new and fashion design.\r\nYour device will be attractive with this stylish new case.\r\nEasy access to all buttons, controls and ports without having to remove the case.\r\nProtect your phone back and frame from fingerprints, scratches, dusts, collisions and abrasion.', '2020-08-30 20:58:25', 1, 'nillkin-for-huawei-p30-p20-pro-p30-lite-nature-transparent-soft-tpu-case-cover', 0, '4.55', 19),
(31, 'For Huawei P40 P30 Pro P20 Mate 30 20 Lite Matte Marble Silicone Soft Case Cover', '2.99', 100, 10, 1, 400, '1598800013862.jpg', 'Condition:	\r\nNew: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is ... Read more\r\nBrand:	\r\nUnbranded\r\nDesign/Finish:	Marble	Compatible Brand:	For Huawei\r\nFeatures:	Lightweight, Shockproof	Compatible Model:	For Huawei Mate 20, For Huawei Mate 20 Pro, For Huawei Mate 30, For Huawei Mate 30 Pro, For Huawei P20, For Huawei P20 Lite, For Huawei P20 Pro, For Huawei P30, For Huawei P30 Lite, For Huawei P30 Pro, For Huawei P40, For Huawei P40 Pro\r\nMaterial:	Silicone/Gel/Rubber	Country/Region of Manufacture:	China', '2020-08-30 22:06:53', 1, 'for-huawei-p40-p30-pro-p20-mate-30-20-lite-matte-marble-silicone-soft-case-cover', 0, '2.55', 3),
(32, 'INC International Concepts Womens Too 6 Chambray Button-Up Shirt Embroidered', '2.00', 200, 11, 1, 100, '1598800149683.jpg', 'INC International Concepts Womens Too 6 Chambray Button-Up Shirt Embroidered\r\nMeasurements Approximate & taken with item laying flat\r\nChest (armpit-armpit)- 19\"\r\nLength- 26\"', '2020-08-30 22:09:09', 1, 'inc-international-concepts-womens-too-6-chambray-button-up-shirt-embroidered', 0, '0', 5),
(33, 'INC NEW Women\'s Cold Shoulder Button Down Shirt Top TEDO', '51.21', 200, 11, 1, 100, '1598800351934.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:12:31', 1, 'inc-new-womens-cold-shoulder-button-down-shirt-top-tedo', 0, '0', 10),
(34, 'ALFANI NEW Women\'s Navy Geo Striped Cold Shoulder Blouse Shirt Top XS TEDO', '55.51', 200, 11, 1, 200, '1598800477349.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:14:37', 1, 'alfani-new-womens-navy-geo-striped-cold-shoulder-blouse-shirt-top-xs-tedo', 0, '0', 1),
(35, 'PUMA Women\'s X-RAY Game Sneakers', '75.00', 100, 12, 1, 600, '1598800566606.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:16:06', 1, 'puma-womens-x-ray-game-sneakers', 0, '65.00', 9),
(36, 'NEW UNLOCKED Samsung Galaxy S7 Edge SM-G935A 32GB Black Gold Titanium G935A AT&T', '228.88', 50, 10, 1, 500, '1598800681486.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:18:01', 1, 'new-unlocked-samsung-galaxy-s7-edge-sm-g935a-32gb-black-gold-titanium-g935a-att', 0, '189.00', 8),
(37, 'MACBOOK PRO 13\" RETINA @ CORE i7 @ 16GB RAM 1TB SSD 3 YEAR WARRANTY @ OS-2019', '647.00', 50, 9, 1, 3000, '1598800762902.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:19:22', 1, 'macbook-pro-13-retina-core-i7-16gb-ram-1tb-ssd-3-year-warranty-os-2019', 0, '625.00', 8),
(38, 'Nike Air Max 720 SE White HYPER Crimson Cd2047 100 Women\'s Size 7', '125.55', 50, 12, 1, 400, '1598801918697.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:38:38', 1, 'nike-air-max-720-se-white-hyper-crimson-cd2047-100-womens-size-7', 0, '0', 2),
(40, 'Powerful Laptop Notebook 8GB RAM 15.6 inch Windows 10 Pro 1920*1080 1TB HDMI', '759.90', 50, 9, 1, 400, '1598802501190.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2020-08-30 22:48:21', 1, 'powerful-laptop-notebook-8gb-ram-156-inch-windows-10-pro-19201080-1tb-hdmi', 0, '0', 4),
(41, 'Cole Haan Original Grand Stitchlite Wingtip Oxford Mens Size 9.5 Navy / Ivory', '1,250,000.00', 50, 12, 1, 600, '1598802675617.jpg', 'Cole Haan Original Grand Stitchlite Wingtip\r\n\r\nBrand new never worn. Does not come with the original box. \r\nBrand: Cole Haan\r\nSize: Mens 9.5 M\r\nColor: Navy / Ivory\r\nPlease see photos above for condition. \r\nShips within 1 business day.\r\nBe sure to follow us. We offer bundle pricing.', '2020-08-30 22:51:15', 1, 'cole-haan-original-grand-stitchlite-wingtip-oxford-mens-size-95-navy-ivory', 0, '0', 2),
(42, 'KAMI. Yarra Print Scarf Nuvoile Aster Jilbab Segiempat', '192,000.00', 10, 13, 1, 100, '1602920836385.jpg', '<p>KAMI. Yarra Print Scarf Nuvoile Aster Jilbab Segiempat adalah kerudung segiempat berbahan Nuvoile yang didesain comfy dalam patterned dan mudah diatur sehingga nyaman saat digunakan. Ukuran : 115x115 cm</p>', '2020-10-17 14:47:16', 1, 'kami-yarra-print-scarf-nuvoile-aster-jilbab-segiempat', 0, '100,000.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `region` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `region`, `price`) VALUES
(5, 'Malang Kota/Kab.', 500000),
(6, 'Surabaya Kota/Kab.', 1500000),
(8, 'Bali', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `favicon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `logo`, `favicon`) VALUES
(1, 0, '2020-10-24T01:00', 'BT Store is an easy and reliable online shop site. We have a physical shop that you can visit. Here sells a variety of computers, gadgets, and men\'s and women\'s clothing', 'Malang, Indonesia', '1602916934871.jpg', '1602916934871.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', 'https://facebook.com/banatechindo'),
(3, 'Twitter', 'twitter', 'https://twitter.com/tonisuwen'),
(4, 'Linkedin', 'linkedin-in', 'https://linkedin.com/in/tonisuwendi'),
(5, 'Instagram', 'instagram', 'https://instagram.com/tonisuwen'),
(6, 'Youtube', 'youtube', 'https://youtube.com/tonisuwendi');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
(0, 'All Emails', '2020-04-21 13:59:23', ''),
(22, 'adlubagusi@gmail.com', '2020-10-17 13:47:17', '16029172372082800676'),
(23, 'tes@email.com', '2020-10-18 13:36:21', '1603002981273190241');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `product_name`, `price`, `qty`, `slug`, `ket`) VALUES
(208, 237194, 'Lenovo Legion Y540 15.6 Laptop 144Hz i7-9750H 16GB RAM 256GB SSD GTX 1660Ti 6GB', 172700099, 1, 'lenovo-legion-y540-156-laptop-144hz-i7-9750h-16gb-ram-256gb-ssd-gtx-1660ti-6gb', ''),
(209, 981165, 'MACBOOK PRO 13\" RETINA @ CORE i7 @ 16GB RAM 1TB SSD 3 YEAR WARRANTY @ OS-2019', 62500, 1, 'macbook-pro-13-retina-core-i7-16gb-ram-1tb-ssd-3-year-warranty-os-2019', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_product`
--
ALTER TABLE `package_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package_product`
--
ALTER TABLE `package_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
