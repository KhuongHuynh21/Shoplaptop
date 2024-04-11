-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 07, 2024 at 05:15 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id_bill` int UNSIGNED NOT NULL,
  `id_customer` int DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `order_code` varchar(50) NOT NULL,
  `total` float DEFAULT NULL COMMENT 'tổng tiền',
  `payment` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'hình thức thanh toán',
  `status_bill` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id_bill`, `id_customer`, `date_order`, `order_code`, `total`, `payment`, `status_bill`) VALUES
(132, 139, '2020-11-29', 'a269b', 15000, 'ATM', 2),
(134, 141, '2020-12-01', '24bee', 120000, 'COD', 1),
(137, 144, '2021-02-27', '0b4be', 24000, 'ATM', 1),
(138, 145, '2021-03-03', '4100e', 12000, 'COD', 1),
(139, 146, '2021-03-03', '91fdd', 12000, 'COD', 1),
(140, 147, '2021-04-06', '2e52f', 420000, 'COD', 0),
(141, 148, '2021-03-09', '05ff8', 30000, 'COD', 1),
(142, 149, '2021-03-11', '6fa57', 30000, 'COD', 1),
(143, 150, '2021-03-13', '25a6f', 29000, 'COD', 1),
(144, 151, '2021-03-13', '4cb98', 30000, 'ATM', 1),
(145, 152, '2021-04-01', 'f2282', 22000, 'COD', 1),
(146, 153, '2021-04-02', 'ee61f', 12000, 'COD', 1),
(149, 156, '2021-04-05', '80cdd', 3000000, 'COD', 0),
(147, 154, '2021-04-03', '01011', 12000, 'COD', 1),
(148, 155, '2021-04-04', '277be', 20000000, 'COD', 0),
(150, 157, '2021-04-06', '6355b', 120000, 'COD', 0),
(151, 164, '2021-04-07', '118f3', 2700000, 'COD', 0),
(152, 165, '2021-04-08', '58863', 21560, 'COD', 0),
(153, 166, '2021-04-09', '7b65c', 21560, 'COD', 0),
(154, 167, '2021-04-10', '5f3ac', 22000, 'COD', 0),
(155, 168, '2021-04-29', '296f1', 2850000, 'COD', 0),
(156, 169, '2021-04-30', '42863', 2850000, 'COD', 1),
(157, 170, '2021-05-02', '0361d', 2850000, 'COD', 0),
(158, 171, '2021-05-01', '96781', 12000, 'COD', 0),
(159, 174, '2021-05-01', 'f6e74', 120000, 'COD', 0),
(160, 175, '2021-04-13', '7fede', 120000, 'COD', 0),
(161, 176, '2021-04-14', 'a18aa', 32000, 'COD', 0),
(162, 177, '2021-04-15', '9fc23', 24000, 'COD', 1),
(163, 178, '2021-05-01', 'dbd76', 10000000, 'COD', 1),
(167, 181, '2021-05-01', 'ecda9', 1200000, 'ATM', 1),
(168, 181, '2021-05-02', '2f829', 12000000, 'ATM', 1),
(169, 182, '2021-05-04', 'd8611', 24000000, 'ATM', 1),
(170, 183, '2021-05-13', '4f49d', 9900000, 'ATM', 0),
(171, 184, '2021-05-13', '5960c', 9000000, 'ATM', 0),
(172, 185, '2021-05-13', '2ec8d', 12000000, 'ATM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id_bill_detail` int UNSIGNED NOT NULL,
  `id_bill` int DEFAULT NULL,
  `id_product` int DEFAULT NULL,
  `id_post_bill_detail` int NOT NULL,
  `order_code` varchar(50) NOT NULL,
  `quantity` int DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id_bill_detail`, `id_bill`, `id_product`, `id_post_bill_detail`, `order_code`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(75, 132, 90, 16, 'a269b', 1, 15000, '2020-11-29 13:50:09', '2020-11-29 13:50:09'),
(77, 134, 16, 5, '24bee', 1, 120000, '2020-12-01 02:58:19', '2020-12-01 02:58:19'),
(110, 168, 77, 4, '2f829', 1, 12000000, '2021-05-02 02:46:51', '2021-05-02 02:46:51'),
(80, 137, 74, 1, '0b4be', 2, 12000, '2021-02-27 06:22:44', '2021-02-27 06:22:44'),
(81, 138, 74, 1, '4100e', 1, 12000, '2021-03-03 08:17:51', '2021-03-03 08:17:51'),
(82, 139, 74, 1, '91fdd', 1, 12000, '2021-03-03 08:21:01', '2021-03-03 08:21:01'),
(83, 140, 13, 7, '2e52f', 1, 300000, '2021-03-06 05:46:18', '2021-03-06 05:46:18'),
(84, 140, 16, 5, '2e52f', 1, 120000, '2021-03-06 05:46:18', '2021-03-06 05:46:18'),
(85, 141, 74, 1, '05ff8', 1, 30000, '2021-03-09 02:29:34', '2021-03-09 02:29:34'),
(86, 142, 74, 1, '6fa57', 1, 30000, '2021-03-11 03:28:46', '2021-03-11 03:28:46'),
(87, 143, 87, 9, '25a6f', 1, 29000, '2021-03-13 10:05:38', '2021-03-13 10:05:38'),
(88, 144, 74, 1, '4cb98', 1, 30000, '2021-03-13 10:07:53', '2021-03-13 10:07:53'),
(89, 145, 88, 11, 'f2282', 1, 22000, '2021-03-13 10:38:13', '2021-03-13 10:38:13'),
(90, 146, 75, 3, 'ee61f', 1, 12000, '2021-03-13 11:28:40', '2021-03-13 11:28:40'),
(91, 147, 75, 3, '01011', 1, 12000, '2021-03-30 13:17:25', '2021-03-30 13:17:25'),
(92, 148, 99, 1, '277be', 1, 20000000, '2021-03-30 13:19:20', '2021-03-30 13:19:20'),
(93, 149, 74, 1, '80cdd', 1, 3000000, '2021-03-31 14:19:30', '2021-03-31 14:19:30'),
(94, 150, 16, 5, '6355b', 1, 120000, '2021-04-01 01:22:49', '2021-04-01 01:22:49'),
(95, 151, 13, 7, '118f3', 2, 3000000, '2021-04-01 01:43:16', '2021-04-01 01:43:16'),
(96, 152, 88, 11, '58863', 1, 22000, '2021-04-02 10:51:32', '2021-04-02 10:51:32'),
(97, 153, 88, 11, '7b65c', 1, 22000, '2021-04-02 10:52:53', '2021-04-02 10:52:53'),
(98, 154, 88, 11, '5f3ac', 1, 22000, '2021-04-02 10:53:35', '2021-04-02 10:53:35'),
(99, 155, 74, 1, '296f1', 1, 3000000, '2021-04-06 05:10:04', '2021-04-06 05:10:04'),
(100, 156, 74, 1, '42863', 1, 3000000, '2021-04-06 05:10:05', '2021-04-06 05:10:05'),
(101, 157, 74, 1, '0361d', 1, 3000000, '2021-04-06 05:10:07', '2021-04-06 05:10:07'),
(102, 158, 74, 1, '96781', 1, 12000, '2021-04-06 05:10:08', '2021-04-06 05:10:08'),
(103, 159, 16, 5, 'f6e74', 1, 120000, '2021-04-06 05:16:10', '2021-04-06 05:16:10'),
(104, 160, 16, 5, '7fede', 1, 120000, '2021-04-06 05:19:15', '2021-04-06 05:19:15'),
(105, 161, 98, 19, 'a18aa', 1, 32000, '2021-04-06 05:36:00', '2021-04-06 05:36:00'),
(106, 162, 77, 4, '9fc23', 2, 12000, '2021-04-06 05:41:04', '2021-04-06 05:41:04'),
(107, 163, 96, 8, 'dbd76', 1, 10000000, '2021-04-06 05:56:48', '2021-04-06 05:56:48'),
(109, 167, 16, 5, 'ecda9', 1, 1200000, '2021-05-02 02:42:39', '2021-05-02 02:42:39'),
(111, 169, 77, 4, 'd8611', 2, 12000000, '2021-05-02 10:45:08', '2021-05-02 10:45:08'),
(112, 170, 91, 15, '4f49d', 1, 11000000, '2021-05-13 13:40:44', '2021-05-13 13:40:44'),
(113, 171, 77, 4, '5960c', 1, 10000000, '2021-05-13 13:56:58', '2021-05-13 13:56:58'),
(114, 172, 86, 2, '2ec8d', 1, 12000000, '2021-05-13 13:58:46', '2021-05-13 13:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_qty` int NOT NULL,
  `coupon_number` int NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_condition` int NOT NULL,
  `coupon_date_start` varchar(50) NOT NULL,
  `coupon_date_end` varchar(50) NOT NULL,
  `coupon_status` int NOT NULL,
  `coupon_used` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `coupon_name`, `coupon_qty`, `coupon_number`, `coupon_code`, `coupon_condition`, `coupon_date_start`, `coupon_date_end`, `coupon_status`, `coupon_used`) VALUES
(12, 'hello', 10, 30, 'hello', 0, '01-04-2024', '10-04-2024', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `note` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(139, 'SWSW', 'nữ', 'npn0208@gmail.com', 'xsxsxs', '0773654033', 'xsx', '2020-11-29 13:50:09', '2020-11-29 13:50:09'),
(141, 'xsxs', 'nam', 'namnguyen@gmail.com', 'dfdf', '077365403', NULL, '2021-03-06 05:44:22', '2020-12-01 02:58:19'),
(181, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-05-02 02:46:51', '2021-05-02 02:46:51'),
(144, 'qqqqqqqqqqqqqqqqqqqqqq', 'nữ', 'namnguyen.08@gmail.com', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '0773654031', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq', '2021-03-06 05:44:41', '2021-02-27 06:22:44'),
(145, 'ccce', 'nam', 'namnguyen.02.08@gmail.com', 'xssxaxsa', '03333333333', 'dedw', '2021-03-06 05:44:47', '2021-03-03 08:17:51'),
(146, 'cdcdc', 'nam', 'namnguyen99@gmail.com', 'dcdcdcdcdc', '1111111111222222', 'ded', '2021-03-06 05:44:54', '2021-03-03 08:21:01'),
(147, 'namphuong 12', 'nam', 'namnguyen.02.08.99@gmail.com', 'Binh Dinh', '0773654033', NULL, '2021-03-06 05:46:18', '2021-03-06 05:46:18'),
(148, 'namphuong', 'nam', 'namnguyen.02.08.99@gmail.com', 'Binh Dinh', '0773654033', NULL, '2021-03-09 02:29:34', '2021-03-09 02:29:34'),
(149, 'Nam Admin', 'nam', 'namnguyen.02.08.99@gmail.com', 'bình duong', '0773654033', NULL, '2021-03-11 03:28:46', '2021-03-11 03:28:46'),
(150, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-03-13 10:05:38', '2021-03-13 10:05:38'),
(151, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-03-13 10:07:53', '2021-03-13 10:07:53'),
(152, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-03-13 10:38:13', '2021-03-13 10:38:13'),
(153, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-03-13 11:28:40', '2021-03-13 11:28:40'),
(154, 'Nam Admin', 'nam', 'npn0208@gmail.com', 'bình duong', '0773654033', NULL, '2021-03-30 13:17:25', '2021-03-30 13:17:25'),
(155, 'Nam Admin', 'nam', 'namnguyen.02.08.99@gmail.com', 'bình duong', '0773654033', NULL, '2021-03-30 13:19:20', '2021-03-30 13:19:20'),
(156, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', 'ghi chú nè', '2021-03-31 14:19:30', '2021-03-31 14:19:30'),
(157, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:22:49', '2021-04-01 01:22:49'),
(158, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:30:23', '2021-04-01 01:30:23'),
(159, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:30:57', '2021-04-01 01:30:57'),
(160, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:32:51', '2021-04-01 01:32:51'),
(161, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:34:25', '2021-04-01 01:34:25'),
(162, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:34:39', '2021-04-01 01:34:39'),
(163, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:42:25', '2021-04-01 01:42:25'),
(164, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-01 01:43:16', '2021-04-01 01:43:16'),
(165, 'Nam Admin', 'nam', 'npn0208@gmail.com', 'bình duong', '0773654033', NULL, '2021-04-02 10:51:32', '2021-04-02 10:51:32'),
(166, 'Nam Admin', 'nam', 'npn0208@gmail.com', 'bình duong', '0773654033', NULL, '2021-04-02 10:52:53', '2021-04-02 10:52:53'),
(167, 'Nam Admin', 'nam', 'npn0208@gmail.com', 'bình duong', '0773654033', NULL, '2021-04-02 10:53:35', '2021-04-02 10:53:35'),
(168, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:10:04', '2021-04-06 05:10:04'),
(169, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:10:05', '2021-04-06 05:10:05'),
(170, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:10:07', '2021-04-06 05:10:07'),
(171, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:10:08', '2021-04-06 05:10:08'),
(172, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:10:09', '2021-04-06 05:10:09'),
(173, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:11:07', '2021-04-06 05:11:07'),
(174, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:16:10', '2021-04-06 05:16:10'),
(175, '22222222222222', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', '2222222222', '2021-04-06 05:19:15', '2021-04-06 05:19:15'),
(176, '44444444', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:36:00', '2021-04-06 05:36:00'),
(177, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:41:04', '2021-04-06 05:41:04'),
(178, '0000000000000000', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-04-06 05:56:48', '2021-04-06 05:56:48'),
(180, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-05-02 02:42:39', '2021-05-02 02:42:39'),
(182, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-05-02 10:45:08', '2021-05-02 10:45:08'),
(183, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-05-13 13:40:44', '2021-05-13 13:40:44'),
(184, 'test1', 'nam', 'test1@gmail.com', 'sqsqs', '0773654059', NULL, '2021-05-13 13:56:58', '2021-05-13 13:56:58'),
(185, 'Nguyễn Phương Nam', 'nam', '2nmusic02@gmail.com', '312/3/4 tổ 5 khu 3 Phú Hòa', '0773654031', NULL, '2021-05-13 13:58:46', '2021-05-13 13:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int NOT NULL,
  `gallery_name` varchar(255) NOT NULL,
  `gallery_image` varchar(255) NOT NULL,
  `gallery_product_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `gallery_name`, `gallery_image`, `gallery_product_id`) VALUES
(1, '80_jj', '80_1635395636_bannerlaptopthang12_800x450-600x400.png', 103),
(2, '77_1635395636_banner-web-2.jpg', '77_1635395636_banner-web-2.jpg', 103),
(3, '24_1635395636_banner-web-laptop-11.png', '24_1635395636_banner-web-laptop-11.png', 103),
(4, '55_1635395864_banner1.jpg', '55_1635395864_banner1.jpg', 103),
(5, '33_1635395864_banner2.jpg', '33_1635395864_banner2.jpg', 103);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id_payment` int NOT NULL,
  `id_customer` varchar(255) NOT NULL,
  `id_post_payment` int NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `code_bank` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id_payment`, `id_customer`, `id_post_payment`, `order_code`, `code_bank`, `time`) VALUES
(1, '182', 5, 'ecda9', 'NCB', '02-05-2021 09:42:39'),
(2, '182', 4, '2f829', 'NCB', '02-05-2021 09:46:51'),
(3, '182', 4, 'd8611', 'NCB', '02-05-2021 17:45:08'),
(4, '183', 15, '4f49d', 'NCB', '13-05-2021 20:40:44'),
(5, '184', 4, '5960c', 'NCB', '13-05-2021 20:56:58'),
(6, '185', 2, '2ec8d', 'NCB', '13-05-2021 20:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int NOT NULL,
  `sp_vi` varchar(255) NOT NULL,
  `sp_en` varchar(255) NOT NULL,
  `description_vi` text,
  `description_en` text,
  `product_slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `sp_vi`, `sp_en`, `description_vi`, `description_en`, `product_slug`) VALUES
(1, 'Sản Phẩm 1', 'Product 1', '<p>D&ograve;ng m&aacute;y Thinkpad T460S thiết kế sang trọng v&agrave; cứng c&aacute;p</p>\r\n\r\n<p>CPU: Intel Core i3-10210U (thế hệ thứ 10).</p>\r\n\r\n<p>RAM: DDR4 8 GB&nbsp;(On board 4 GB +1 khe 4 GB).</p>\r\n\r\n<p>Ổ cứng: SSD 120GB M.2 PCIe, hỗ trợ khe cắm HDD SATA.</p>\r\n\r\n<p>Card đồ họa rời:&nbsp;NVIDIA GeForce MX250 2 GB.</p>', '<p>description 1</p>', 'san-pham-1'),
(2, 'Sản Phẩm 2', 'Product 2', '<p>CPU: Intel Core i5-10210U (thế hệ thứ 10).</p>\r\n\r\n<p>RAM: DDR4 8 GB&nbsp;(On board 4 GB +1 khe 4 GB).</p>\r\n\r\n<p>Ổ cứng: SSD 512 GB M.2 PCIe, hỗ trợ khe cắm HDD SATA.</p>\r\n\r\n<p>Card đồ họa rời:&nbsp;NVIDIA GeForce MX250 2 GB.</p>', '<p>description 2</p>', 'san-pham-2'),
(3, 'Sản Phẩm 3', 'Product 3', '<p>D&ograve;ng sản phẩm: MacBook</p>  <p>Tốc độ CPU: 2.0GHz</p>  <p>Bộ xử l&yacute; đồ họa (GPU): NVIDIA GeForce 9400M</p>  <p>Độ lớn m&agrave;n h&igrave;nh (inch): 13.3 inch</p>  <p>Ổ cứng (HDD): 160GB</p>  <p>Loại bộ vi xử l&yacute; (CPU): Intel Core 2 Duo</p>  <p>Dung lượng bộ nhớ ch&iacute;nh (RAM): 2.0GB</p>', 'description 3', 'san-pham-3'),
(4, 'Sản Phẩm 4', 'Product 4', '<p>CPU: Intel Core i7 720QM 4 nh&acirc;n x 1,6Ghz, Turboboost 2,8Ghz.</p>  <p>RAM: 2GB x 2 DD3 8500 1066Mhz.<br /> Card đồ họa: nVidia GTX260, 1GB VRAM<br /> Ổ cứng: 2 x 500GB, 7200 v&ograve;ng.<br /> Ổ đĩa: đọc Bluray, đọc + ghi DVD/CD.<br /> Giao tiếp: 4 cổng USB, ng&otilde; nhập/xuất audio, microphone, khe đọc thẻ SD/MMC/MS, Express Card 54, HDMI, eSata, mini-FireWire, cổng VGA.<br /> Pin: 6 cell, 4800mAh</p>', 'description 4', 'san-pham-4'),
(5, 'Sản Phẩm 5', 'Product 5', '<p>CPU: Intel Core i7 2630QM, 2.00 GHz<br />\r\nBộ nhớ: DDR3, 8 GB.<br />\r\nỔ đĩa 750GB 7200Rpm<br />\r\nM&agrave;n h&igrave;nh: 15.6 inch Led HD 1366- 768<br />\r\nĐồ họa: NVIDIA GeForce GTX 460M, 1.5 GB Uptu 3GB 192Bit&nbsp;<br />\r\n&Acirc;m thanh 2.1 C&ocirc;ng nghệ EAX Advanced HD 5.0, THX TruStudio Pro</p>', '<p>description 5</p>', 'san-pham-5'),
(6, 'Sản Phẩm 6', 'Product 6', '<p>CPU: Intel Core i7 2630QM, 2.00 GHz<br />\r\nBộ nhớ: DDR3, 8 GB.<br />\r\nỔ đĩa 750GB 7200Rpm<br />\r\nM&agrave;n h&igrave;nh: 15.6 inch Led HD 1366- 768<br />\r\nĐồ họa: NVIDIA GeForce GTX 460M, 1.5 GB Uptu 3GB 192Bit&nbsp;<br />\r\n&Acirc;m thanh 2.1 C&ocirc;ng nghệ EAX Advanced HD 5.0, THX TruStudio Pro</p>', '<p>description 6</p>', 'san-pham-6'),
(7, 'Sản Phẩm 7', 'Product 7', '<p>CPU: Intel Core i5-10210U (thế hệ thứ 10).</p>\r\n\r\n<p>RAM: DDR4 8 GB&nbsp;(On board 4 GB +1 khe 4 GB).</p>\r\n\r\n<p>Ổ cứng: SSD 512 GB M.2 PCIe, hỗ trợ khe cắm HDD SATA.</p>\r\n\r\n<p>Card đồ họa rời:&nbsp;NVIDIA GeForce MX250 2 GB.</p>', '<p>description 7</p>', 'san-pham-7'),
(8, 'Sản Phẩm 8', 'Product 8', '<p>bgfbgf</p>', 'description 8', 'san-pham-8'),
(9, 'Sản Phẩm 9', 'Product 9', '<p>Dell XPS 13 7390 I5 10210U 8GB 256SS 13.3FHD W10 Finger Silver</p>', 'description 9', 'san-pham-9'),
(10, 'Sản Phẩm 10', 'Product 10', 'frferwfrwferfe', 'description 10', 'san-pham-10'),
(11, 'HP OMEN 16 (2022)', 'HP OMEN 16 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; AMD Ryzen 9 6900HX v&agrave; card đồ họa NVIDIA GeForce RTX 3070 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 16,1 inch với độ ph&acirc;n giải FHD v&agrave; tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 9 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; AMD Ryzen 9 6900HX v&agrave; card đồ họa NVIDIA GeForce RTX 3070 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 16,1 inch với độ ph&acirc;n giải FHD v&agrave; tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 9 giờ</li>\r\n</ul>', 'hp-omen-16-2022'),
(13, 'Lenovo Legion 5 Pro (2023)', 'Lenovo Legion 5 Pro (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; AMD Ryzen 9 6900HX v&agrave; card đồ họa NVIDIA GeForce RTX 3070 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 16 inch với độ ph&acirc;n giải WQHD (2560 x 1440) v&agrave; tốc độ l&agrave;m mới 240Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 7 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; AMD Ryzen 9 6900HX v&agrave; card đồ họa NVIDIA GeForce RTX 3070 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 16 inch với độ ph&acirc;n giải WQHD (2560 x 1440) v&agrave; tốc độ l&agrave;m mới 240Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 7 giờ</li>\r\n</ul>', 'lenovo-legion-5-pro-2023'),
(14, 'HP Spectre x360 14 (2022)', 'HP Spectre x360 14 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay cao cấp với vi xử l&yacute; Intel Core i7 thế hệ thứ 12 v&agrave; card đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh AMOLED 14 inch với độ ph&acirc;n giải 4K v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay cao cấp với vi xử l&yacute; Intel Core i7 thế hệ thứ 12 v&agrave; card đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh AMOLED 14 inch với độ ph&acirc;n giải 4K v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', 'hp-spectre-x360-14-2022'),
(15, 'Sản Phẩm 14', 'Product 14', '<p>CPU: Intel&reg;&nbsp; Core&trade; i3-7130U</p>  <p>RAM: 4GB DDR44</p>  <p>M&agrave;n h&igrave;nh:&nbsp;14&Prime; FHD IPS LCD with glass</p>  <p>Cổng kết nối:&nbsp;1 x USB 3.1 Type C Gen 1 5Gbps, 2 x USB 3.0 ( One with off-line charger), 1 x USB 2.0, 1 x SD Card Reader, 1 x HDMI (v1.4), 1 x DC-In, 1 x Headphone Jack, 1 x K-lock, Fingerprint reader.</p>', 'description 14', 'san-pham-14'),
(16, 'Sản Phẩm 15', 'Product 15', '<p>THE NEW RAZER BLADE 15 ADVANCE 2020</p>', 'description 15', 'san-pham-15'),
(17, 'HP Envy 13 (2022)', 'HP Envy 13 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay thời trang với vi xử l&yacute; Intel Core i5 thế hệ thứ 12 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh OLED 13,3 inch với độ ph&acirc;n giải 4K v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 11 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay thời trang với vi xử l&yacute; Intel Core i5 thế hệ thứ 12 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh OLED 13,3 inch với độ ph&acirc;n giải 4K v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 11 giờ</li>\r\n</ul>', 'hp-envy-13-2022'),
(18, 'Sản phẩm 17', 'Product 17', '<p>CPU: Intel Core i7-10210U (thế hệ thứ 10).</p>', 'description 17', 'san-pham-17'),
(19, 'Sản Phẩm 18', 'Product 18', '<p>Sản Phẩm 18</p>', 'description 18', 'san-pham-18'),
(24, 'Sản Phẩm 19', 'Product 19', '<p>Sản Phẩm 19</p>', 'description 19', 'san-pham-19'),
(25, 'Lenovo Yoga Slim 7 Pro (2023)', 'Lenovo Yoga Slim 7 Pro (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay mỏng nhẹ với vi xử l&yacute; AMD Ryzen 9 6900HS v&agrave; card đồ họa AMD Radeon 680M</li>\r\n	<li>M&agrave;n h&igrave;nh 14,5 inch với độ ph&acirc;n giải OLED 2.8K (2880 x 1800)</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 15 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay mỏng nhẹ với vi xử l&yacute; AMD Ryzen 9 6900HS v&agrave; card đồ họa AMD Radeon 680M</li>\r\n	<li>M&agrave;n h&igrave;nh 14,5 inch với độ ph&acirc;n giải OLED 2.8K (2880 x 1800)</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 15 giờ</li>\r\n</ul>', 'lenovo-yoga-slim-7-pro-2023'),
(26, 'Lenovo ThinkPad X1 Carbon Gen 10 (2023)', 'Lenovo ThinkPad X1 Carbon Gen 10 (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghiệp cao cấp với vi xử l&yacute; Intel Core thế hệ thứ 13 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 14 inch với độ ph&acirc;n giải WQHD (2560 x 1440)</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 29 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghiệp cao cấp với vi xử l&yacute; Intel Core thế hệ thứ 13 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 14 inch với độ ph&acirc;n giải WQHD (2560 x 1440)</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 29 giờ</li>\r\n</ul>', 'lenovo-thinkpad-x1-carbon-gen-10-2023'),
(27, 'Sản Phẩm 22', 'Product 22', '<p>22222222222222</p>', 'description 22', 'san-pham-22'),
(28, 'Sản Phẩm 23', 'Product 23', '<p>Sản Phẩm 23</p>', '<p>Product 23</p>', 'san-pham-23'),
(29, 'sqsqsq', 'sqsqs', '<p>sqsq</p>', '<p>sqsq</p>', 'sqsqsq'),
(30, 'xwwxw', 'xwxwxwx', '<p>xwxw</p>', '<p>xwxw</p>', 'xwwxw'),
(31, 'bgbgbg', 'bgbgb', '<p>bgbg</p>', '<p>bgbg</p>', 'bgbgbg'),
(32, 'frfrf', 'frfrf', '<p>frfr</p>', '<p>frfr</p>', 'frfrf'),
(33, 'crcrc', 'crcrc', '<p>crcrcr</p>', '<p>crcr</p>', 'crcrc'),
(34, 'MSI Stealth 15M', 'MSI Stealth 15M', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mỏng v&agrave; nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3060</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mỏng v&agrave; nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3060</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'msi-stealth-15m'),
(35, 'MSI GE66 Raider', 'MSI GE66 Raider', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 300Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1440p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 300Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1440p</li>\r\n</ul>', 'msi-ge66-raider'),
(36, 'MSI Crosshair 15', 'MSI Crosshair 15', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; d&agrave;nh cho người đam m&ecirc;</li>\r\n	<li>Bộ xử l&yacute; AMD Ryzen&trade; 9 6900HX</li>\r\n	<li>Card đồ họa AMD Radeon&trade; RX 6800M</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; d&agrave;nh cho người đam m&ecirc;</li>\r\n	<li>Bộ xử l&yacute; AMD Ryzen&trade; 9 6900HX</li>\r\n	<li>Card đồ họa AMD Radeon&trade; RX 6800M</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'msi-crosshair-15'),
(37, 'MSI Katana GF66', 'MSI Katana GF66', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'msi-katana-gf66'),
(38, 'MSI Modern 14', 'MSI Modern 14', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ v&agrave; thời trang</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ v&agrave; thời trang</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'msi-modern-14'),
(39, 'MSI Prestige 14 Evo', 'MSI Prestige 14 Evo', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; cao cấp d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce GTX&trade; 1650</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng OLED 4K</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; cao cấp d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce GTX&trade; 1650</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng OLED 4K</li>\r\n</ul>', 'msi-prestige-14-evo'),
(40, 'MSI Creator Z16', 'MSI Creator Z16', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 16&rdquo; mạnh mẽ d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 4K UHD</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 16&rdquo; mạnh mẽ d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 4K UHD</li>\r\n</ul>', 'msi-creator-z16'),
(41, 'MSI Summit E14 Flip Evo', 'MSI Summit E14 Flip Evo', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; 2 trong 1 d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; 2 trong 1 d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'msi-summit-e14-flip-evo'),
(42, 'MSI Cubi 5 10M', 'MSI Cubi 5 10M', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n mini nhỏ gọn v&agrave; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 10</li>\r\n	<li>Đồ họa Intel&reg; UHD Graphics 630</li>\r\n	<li>Hỗ trợ ba m&agrave;n h&igrave;nh</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n mini nhỏ gọn v&agrave; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 10</li>\r\n	<li>Đồ họa Intel&reg; UHD Graphics 630</li>\r\n	<li>Hỗ trợ ba m&agrave;n h&igrave;nh</li>\r\n</ul>', 'msi-cubi-5-10m'),
(43, 'MSI Pro DP21', 'MSI Pro DP21', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n All-in-One 21,5&rdquo; cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>Webcam bật l&ecirc;n</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n All-in-One 21,5&rdquo; cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>Webcam bật l&ecirc;n</li>\r\n</ul>', 'msi-pro-dp21'),
(44, 'MSI Titan GT77', 'MSI Titan GT77', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 17,3&rdquo; cao cấp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 4K UHD</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 17,3&rdquo; cao cấp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 4K UHD</li>\r\n</ul>', 'msi-titan-gt77'),
(45, 'MSI Prestige 15 Evo', 'MSI Prestige 15 Evo', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15&rdquo; cao cấp d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce GTX&trade; 1650</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng OLED 4K</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15&rdquo; cao cấp d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce GTX&trade; 1650</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng OLED 4K</li>\r\n</ul>', 'msi-prestige-15-evo'),
(46, 'MSI Summit E16 Flip Evo', 'MSI Summit E16 Flip Evo', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 16&rdquo; 2 trong 1 d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 16&rdquo; 2 trong 1 d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'msi-summit-e16-flip-evo'),
(47, 'MSI Pro 24X', 'MSI Pro 24X', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n All-in-One 24&rdquo; cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>Webcam bật l&ecirc;n</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n All-in-One 24&rdquo; cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>Webcam bật l&ecirc;n</li>\r\n</ul>', 'msi-pro-24x'),
(48, 'MSI Wind Top AE22', 'MSI Wind Top AE22', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n All-in-One 22&rdquo; cho giải tr&iacute;</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce&reg; MX350</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n All-in-One 22&rdquo; cho giải tr&iacute;</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce&reg; MX350</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'msi-wind-top-ae22'),
(49, 'MSI Vector GP66', 'MSI Vector GP66', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; với thiết kế hầm hố</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3070 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; với thiết kế hầm hố</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3070 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'msi-vector-gp66'),
(50, 'Toshiba Dynabook Tecra A50-J', 'Toshiba Dynabook Tecra A50-J', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay doanh nghiệp 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay doanh nghiệp 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'toshiba-dynabook-tecra-a50-j'),
(51, 'Toshiba Dynabook Satellite Pro C50-G', 'Toshiba Dynabook Satellite Pro C50-G', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'toshiba-dynabook-satellite-pro-c50-g'),
(52, 'Toshiba Dynabook Satellite Pro L50-G', 'Toshiba Dynabook Satellite Pro L50-G', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'toshiba-dynabook-satellite-pro-l50-g'),
(53, 'Toshiba Dynabook Satellite Pro U40-G', 'Toshiba Dynabook Satellite Pro U40-G', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'toshiba-dynabook-satellite-pro-u40-g'),
(54, 'Acer Swift X', 'Acer Swift X', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay mỏng nhẹ 14&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; AMD Ryzen&trade; 7 6800U</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay mỏng nhẹ 14&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; AMD Ryzen&trade; 7 6800U</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'acer-swift-x'),
(55, 'Acer Nitro 5', 'Acer Nitro 5', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-nitro-5'),
(56, 'Acer Aspire 5', 'Acer Aspire 5', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho sinh vi&ecirc;n</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho sinh vi&ecirc;n</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-aspire-5'),
(57, 'Acer Predator Helios 300', 'Acer Predator Helios 300', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3060</li>\r\n	<li>Tốc độ l&agrave;m mới 300Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3060</li>\r\n	<li>Tốc độ l&agrave;m mới 300Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-predator-helios-300'),
(58, 'Acer ConceptD 3', 'Acer ConceptD 3', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 4K UHD</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 4K UHD</li>\r\n</ul>', 'acer-conceptd-3'),
(59, 'Acer Chromebook Spin 713', 'Acer Chromebook Spin 713', '<ul>\r\n	<li>Chromebook 13,3&rdquo; c&oacute; thể xoay được</li>\r\n	<li>Bộ xử l&yacute; MediaTek Kompanio 1380</li>\r\n	<li>Đồ họa Mali-G76 MC4</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>Chromebook 13,3&rdquo; c&oacute; thể xoay được</li>\r\n	<li>Bộ xử l&yacute; MediaTek Kompanio 1380</li>\r\n	<li>Đồ họa Mali-G76 MC4</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'acer-chromebook-spin-713'),
(60, 'Acer Swift 3', 'Acer Swift 3', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; AMD Ryzen&trade; 7 5700U</li>\r\n	<li>Đồ họa AMD Radeon&trade; Graphics</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; AMD Ryzen&trade; 7 5700U</li>\r\n	<li>Đồ họa AMD Radeon&trade; Graphics</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-swift-3'),
(61, 'Acer Nitro 7', 'Acer Nitro 7', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3070</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1440p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; mạnh mẽ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3070</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1440p</li>\r\n</ul>', 'acer-nitro-7'),
(62, 'Acer Aspire 7', 'Acer Aspire 7', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho năng suất</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-aspire-7'),
(63, 'Acer Predator Orion 9000', 'Acer Predator Orion 9000', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 17,3&rdquo; cao cấp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 17,3&rdquo; cao cấp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i9 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080 Ti</li>\r\n	<li>Tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-predator-orion-9000'),
(64, 'Acer ConceptD 7', 'Acer ConceptD 7', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 4K UHD</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 12</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3080</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 4K UHD</li>\r\n</ul>', 'acer-conceptd-7'),
(65, 'Acer Chromebook Spin 714', 'Acer Chromebook Spin 714', '<ul>\r\n	<li>Chromebook 14&rdquo; c&oacute; thể xoay được</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>Chromebook 14&rdquo; c&oacute; thể xoay được</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 12</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'acer-chromebook-spin-714'),
(66, 'Acer Aspire Vero', 'Acer Aspire Vero', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; th&acirc;n thiện với m&ocirc;i trường</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; th&acirc;n thiện với m&ocirc;i trường</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-aspire-vero'),
(67, 'Acer Chromebook 514', 'Acer Chromebook 514', '<ul>\r\n	<li>Chromebook 14&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Celeron N4020</li>\r\n	<li>Đồ họa Intel&reg; UHD Graphics 600</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>Chromebook 14&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Celeron N4020</li>\r\n	<li>Đồ họa Intel&reg; UHD Graphics 600</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-chromebook-514'),
(68, 'Acer Enduro Urban N3', 'Acer Enduro Urban N3', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; được thiết kế chắc chắn</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; được thiết kế chắc chắn</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-enduro-urban-n3'),
(69, 'Acer TravelMate P6', 'Acer TravelMate P6', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay doanh nghiệp 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay doanh nghiệp 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-travelmate-p6'),
(70, 'Acer Spin 5', 'Acer Spin 5', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 13,3&rdquo; 2 trong 1</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 13,3&rdquo; 2 trong 1</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'acer-spin-5'),
(71, 'Acer Swift 1', 'Acer Swift 1', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14&rdquo; mỏng nhẹ</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-swift-1'),
(72, 'Acer Predator Orion 3000', 'Acer Predator Orion 3000', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game 15,6&rdquo; gi&aacute; cả phải chăng</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>Tốc độ l&agrave;m mới 144Hz</li>\r\n	<li>M&agrave;n h&igrave;nh 1080p</li>\r\n</ul>', 'acer-predator-orion-3000'),
(73, 'Acer ConceptD 5', 'Acer ConceptD 5', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>M&agrave;n h&igrave;nh 4K UHD</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 15,6&rdquo; d&agrave;nh cho người s&aacute;ng tạo</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i7 thế hệ thứ 11</li>\r\n	<li>Card đồ họa NVIDIA&reg; GeForce RTX&trade; 3050</li>\r\n	<li>M&agrave;n h&igrave;nh 4K UHD</li>\r\n</ul>', 'acer-conceptd-5'),
(74, 'Acer Chromebook Enterprise Spin 713', 'Acer Chromebook Enterprise Spin 713', '<ul>\r\n	<li>Chromebook 13,3&rdquo; c&oacute; thể xoay được d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', '<ul>\r\n	<li>Chromebook 13,3&rdquo; c&oacute; thể xoay được d&agrave;nh cho doanh nghiệp</li>\r\n	<li>Bộ xử l&yacute; Intel&reg; Core&trade; i5 thế hệ thứ 11</li>\r\n	<li>Đồ họa Intel&reg; Iris&trade; Xe</li>\r\n	<li>M&agrave;n h&igrave;nh cảm ứng 1080p</li>\r\n</ul>', 'acer-chromebook-enterprise-spin-713'),
(75, 'Laptop Asus TUF Gaming FX506LH', 'Laptop Asus TUF Gaming FX506LH', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i5, 10300H, 2.5GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/nen-mua-laptop-co-card-do-hoa-roi-nao-1181568\" rel=\"noopener\" target=\"_blank\">Card rời</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-roi-nvidia-geforce-gtx-1650-co-manh-kh-1201415\" rel=\"noopener\" target=\"_blank\">NVIDIA GeForce GTX 1650 4 GB</a>.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/bluetooth-50-chuan-bluetooth-danh-cho-thoi-dai-1113891\" rel=\"noopener\" target=\"_blank\">Bluetooth 5.0</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wi-fi-chuan-80211ax-la-gi-tim-hieu-ve-wi-fi-the-he-thu-6-1187524\" rel=\"noopener\" target=\"_blank\">Wi-Fi 6 (802.11ax)</a>.</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.3 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i5, 10300H, 2.5GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/nen-mua-laptop-co-card-do-hoa-roi-nao-1181568\" rel=\"noopener\" target=\"_blank\">Card rời</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/card-do-hoa-roi-nvidia-geforce-gtx-1650-co-manh-kh-1201415\" rel=\"noopener\" target=\"_blank\">NVIDIA GeForce GTX 1650 4 GB</a>.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/bluetooth-50-chuan-bluetooth-danh-cho-thoi-dai-1113891\" rel=\"noopener\" target=\"_blank\">Bluetooth 5.0</a>,&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/wi-fi-chuan-80211ax-la-gi-tim-hieu-ve-wi-fi-the-he-thu-6-1187524\" rel=\"noopener\" target=\"_blank\">Wi-Fi 6 (802.11ax)</a>.</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.3 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx506lh'),
(76, 'Laptop Asus TUF Gaming FX506HCB', 'Laptop Asus TUF Gaming FX506HCB', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-bo-xu-ly-intel-core-the-he-thu-11-1304404\" rel=\"noopener\" target=\"_blank\">Intel Core i5 Tiger Lake</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/danh-gia-hieu-nang-on-dinh-tren-intel-core-i5-11400h-1389833\" rel=\"noopener\" target=\"_blank\">11400H</a>.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chat-lieu-thuong-dung-tren-laptop-va-uu-nhuoc-diem-1192823\" rel=\"noopener\" target=\"_blank\">Vỏ nhựa</a>.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.3 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-bo-xu-ly-intel-core-the-he-thu-11-1304404\" rel=\"noopener\" target=\"_blank\">Intel Core i5 Tiger Lake</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/danh-gia-hieu-nang-on-dinh-tren-intel-core-i5-11400h-1389833\" rel=\"noopener\" target=\"_blank\">11400H</a>.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chat-lieu-thuong-dung-tren-laptop-va-uu-nhuoc-diem-1192823\" rel=\"noopener\" target=\"_blank\">Vỏ nhựa</a>.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.3 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx506hcb'),
(77, 'Laptop Asus TUF Gaming FX516PC', 'Laptop Asus TUF Gaming FX516PC', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i7, 11370H, 3.3GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.1, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-laptop-956550\" target=\"_blank\">Đ&egrave;n b&agrave;n ph&iacute;m</a>.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2 kg</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i7, 11370H, 3.3GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.1, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/cach-bat-den-ban-phim-laptop-956550\" target=\"_blank\">Đ&egrave;n b&agrave;n ph&iacute;m</a>.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2 kg</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx516pc'),
(78, 'Laptop Asus TUF Gaming FX706HC', 'Laptop Asus TUF Gaming FX706HC', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i5, 11400H, 2.7GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 17.3&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.6 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i5, 11400H, 2.7GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 17.3&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.6 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx706hc'),
(79, 'Laptop Asus TUF Gaming FX517ZC', 'Laptop Asus TUF Gaming FX517ZC', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i5, 12450H, 3.3GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i5, 12450H, 3.3GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx517zc'),
(80, 'Laptop Asus TUF Gaming FX516PM', 'Laptop Asus TUF Gaming FX516PM', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i7, 11370H, 3.3GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3060 6GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.1, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i7, 11370H, 3.3GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3060 6GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.1, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx516pm'),
(81, 'Laptop Asus Rog Zephyrus Gaming G14 GA401QH R7', 'Laptop Asus Rog Zephyrus Gaming G14 GA401QH R7', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chip-amd-la-gi-uu-va-nhuoc-diem-so-voi-chip-intel-1191868\" rel=\"noopener\" target=\"_blank\">AMD Ryzen 7</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/kham-pha-hieu-nang-manh-me-tren-ryzen-7-5800h-1388466\" rel=\"noopener\" target=\"_blank\">5800HS</a>.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 14&quot;, WQXGA (2560 x 1600), 120Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, GTX 1650 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.1, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Bảo mật v&acirc;n tay.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 1.6 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/chip-amd-la-gi-uu-va-nhuoc-diem-so-voi-chip-intel-1191868\" rel=\"noopener\" target=\"_blank\">AMD Ryzen 7</a>&nbsp;-&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/kham-pha-hieu-nang-manh-me-tren-ryzen-7-5800h-1388466\" rel=\"noopener\" target=\"_blank\">5800HS</a>.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 14&quot;, WQXGA (2560 x 1600), 120Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, GTX 1650 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.1, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Bảo mật v&acirc;n tay.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 1.6 kg.</li>\r\n</ul>', 'laptop-asus-rog-zephyrus-gaming-g14-ga401qh-r7'),
(82, 'Laptop Asus TUF Gaming FA707RC R7', 'Laptop Asus TUF Gaming FA707RC R7', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: Ryzen 7, 6800H, 3.2GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 17.3&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.6 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: Ryzen 7, 6800H, 3.2GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 17.3&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa - nắp lưng bằng kim loại.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.6 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fa707rc-r7');
INSERT INTO `post` (`id_post`, `sp_vi`, `sp_en`, `description_vi`, `description_en`, `product_slug`) VALUES
(83, 'Laptop Asus TUF Gaming FX507ZC', 'Laptop Asus TUF Gaming FX507ZC', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i7, 12700H, 2.30 GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.2 kg.</li>\r\n</ul>', '<ul>\r\n	<li><strong>C&ocirc;ng nghệ CPU</strong>: i7, 12700H, 2.30 GHz.</li>\r\n	<li><strong>RAM</strong>: 8 GB.</li>\r\n	<li><strong>M&agrave;n h&igrave;nh</strong>: 15.6&quot;, Full HD (1920 x 1080), 144Hz.</li>\r\n	<li><strong>Card m&agrave;n h&igrave;nh</strong>: Card rời, RTX 3050 4GB.</li>\r\n	<li><strong>Kết nối kh&ocirc;ng d&acirc;y</strong>: Bluetooth 5.2, Wi-Fi 6 (802.11ax).</li>\r\n	<li><strong>T&iacute;nh năng kh&aacute;c</strong>: Đ&egrave;n b&agrave;n ph&iacute;m chuyển m&agrave;u RGB.</li>\r\n	<li><strong>Chất liệu</strong>: Vỏ nhựa.</li>\r\n	<li><strong>Trọng lượng</strong>: Nặng 2.2 kg.</li>\r\n</ul>', 'laptop-asus-tuf-gaming-fx507zc'),
(84, 'MacBook Air (M2, 2022)', 'MacBook Air (M2, 2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 13,6 inch mỏng nhẹ</li>\r\n	<li>Chip Apple M2 thế hệ tiếp theo</li>\r\n	<li>CPU 8 l&otilde;i với 4 l&otilde;i hiệu suất v&agrave; 4 l&otilde;i hiệu quả</li>\r\n	<li>GPU 10 l&otilde;i</li>\r\n	<li>RAM 8GB hoặc 24GB</li>\r\n	<li>Dung lượng lưu trữ 256GB, 512GB, 1TB hoặc 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Bốn loa với &acirc;m thanh kh&ocirc;ng gian</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 13,6 inch mỏng nhẹ</li>\r\n	<li>Chip Apple M2 thế hệ tiếp theo</li>\r\n	<li>CPU 8 l&otilde;i với 4 l&otilde;i hiệu suất v&agrave; 4 l&otilde;i hiệu quả</li>\r\n	<li>GPU 10 l&otilde;i</li>\r\n	<li>RAM 8GB hoặc 24GB</li>\r\n	<li>Dung lượng lưu trữ 256GB, 512GB, 1TB hoặc 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Bốn loa với &acirc;m thanh kh&ocirc;ng gian</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', 'macbook-air-m2-2022'),
(85, 'MacBook Pro 13 inch (M2, 2022)', 'MacBook Pro 13 inch (M2, 2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 13,3 inch mạnh mẽ</li>\r\n	<li>Chip Apple M2 thế hệ tiếp theo</li>\r\n	<li>CPU 8 l&otilde;i với 4 l&otilde;i hiệu suất v&agrave; 4 l&otilde;i hiệu quả</li>\r\n	<li>GPU 10 l&otilde;i</li>\r\n	<li>RAM 8GB hoặc 24GB</li>\r\n	<li>Dung lượng lưu trữ 256GB, 512GB, 1TB hoặc 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Retina</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Hệ thống loa &acirc;m thanh nổi</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 13,3 inch mạnh mẽ</li>\r\n	<li>Chip Apple M2 thế hệ tiếp theo</li>\r\n	<li>CPU 8 l&otilde;i với 4 l&otilde;i hiệu suất v&agrave; 4 l&otilde;i hiệu quả</li>\r\n	<li>GPU 10 l&otilde;i</li>\r\n	<li>RAM 8GB hoặc 24GB</li>\r\n	<li>Dung lượng lưu trữ 256GB, 512GB, 1TB hoặc 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Retina</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Hệ thống loa &acirc;m thanh nổi</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', 'macbook-pro-13-inch-m2-2022'),
(86, 'MacBook Pro 14 inch (M1 Pro, 2021)', 'MacBook Pro 14 inch (M1 Pro, 2021)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14,2 inch mạnh mẽ</li>\r\n	<li>Chip Apple M1 Pro hoặc M1 Max</li>\r\n	<li>CPU tối đa 10 l&otilde;i với 2 l&otilde;i hiệu suất v&agrave; 8 l&otilde;i hiệu quả</li>\r\n	<li>GPU tối đa 32 l&otilde;i</li>\r\n	<li>RAM 16GB, 32GB hoặc 64GB</li>\r\n	<li>Dung lượng lưu trữ 512GB, 1TB, 2TB, 4TB hoặc 8TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina XDR</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Hệ thống loa s&aacute;u loa với &acirc;m thanh kh&ocirc;ng gian</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 14,2 inch mạnh mẽ</li>\r\n	<li>Chip Apple M1 Pro hoặc M1 Max</li>\r\n	<li>CPU tối đa 10 l&otilde;i với 2 l&otilde;i hiệu suất v&agrave; 8 l&otilde;i hiệu quả</li>\r\n	<li>GPU tối đa 32 l&otilde;i</li>\r\n	<li>RAM 16GB, 32GB hoặc 64GB</li>\r\n	<li>Dung lượng lưu trữ 512GB, 1TB, 2TB, 4TB hoặc 8TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina XDR</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Hệ thống loa s&aacute;u loa với &acirc;m thanh kh&ocirc;ng gian</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', 'macbook-pro-14-inch-m1-pro-2021'),
(87, 'MacBook Pro 16 inch (M1 Pro, 2021)', 'MacBook Pro 16 inch (M1 Pro, 2021)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 16,2 inch mạnh mẽ</li>\r\n	<li>Chip Apple M1 Pro hoặc M1 Max</li>\r\n	<li>CPU tối đa 10 l&otilde;i với 2 l&otilde;i hiệu suất v&agrave; 8 l&otilde;i hiệu quả</li>\r\n	<li>GPU tối đa 32 l&otilde;i</li>\r\n	<li>RAM 16GB, 32GB hoặc 64GB</li>\r\n	<li>Dung lượng lưu trữ 512GB, 1TB, 2TB, 4TB hoặc 8TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina XDR</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Hệ thống loa s&aacute;u loa với &acirc;m thanh kh&ocirc;ng gian</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay 16,2 inch mạnh mẽ</li>\r\n	<li>Chip Apple M1 Pro hoặc M1 Max</li>\r\n	<li>CPU tối đa 10 l&otilde;i với 2 l&otilde;i hiệu suất v&agrave; 8 l&otilde;i hiệu quả</li>\r\n	<li>GPU tối đa 32 l&otilde;i</li>\r\n	<li>RAM 16GB, 32GB hoặc 64GB</li>\r\n	<li>Dung lượng lưu trữ 512GB, 1TB, 2TB, 4TB hoặc 8TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina XDR</li>\r\n	<li>Camera FaceTime HD 1080p</li>\r\n	<li>Hệ thống loa s&aacute;u loa với &acirc;m thanh kh&ocirc;ng gian</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n</ul>', 'macbook-pro-16-inch-m1-pro-2021'),
(88, 'Mac mini (M2, 2022)', 'Mac mini (M2, 2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n nhỏ gọn</li>\r\n	<li>Chip Apple M2 thế hệ tiếp theo</li>\r\n	<li>CPU 8 l&otilde;i với 4 l&otilde;i hiệu suất v&agrave; 4 l&otilde;i hiệu quả</li>\r\n	<li>GPU 10 l&otilde;i</li>\r\n	<li>RAM 8GB hoặc 24GB</li>\r\n	<li>Dung lượng lưu trữ 256GB, 512GB, 1TB hoặc 2TB</li>\r\n	<li>Hai cổng Thunderbolt 4, hai cổng USB-A, cổng HDMI, giắc cắm Gigabit Ethernet v&agrave; giắc cắm tai nghe</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh để b&agrave;n nhỏ gọn</li>\r\n	<li>Chip Apple M2 thế hệ tiếp theo</li>\r\n	<li>CPU 8 l&otilde;i với 4 l&otilde;i hiệu suất v&agrave; 4 l&otilde;i hiệu quả</li>\r\n	<li>GPU 10 l&otilde;i</li>\r\n	<li>RAM 8GB hoặc 24GB</li>\r\n	<li>Dung lượng lưu trữ 256GB, 512GB, 1TB hoặc 2TB</li>\r\n	<li>Hai cổng Thunderbolt 4, hai cổng USB-A, cổng HDMI, giắc cắm Gigabit Ethernet v&agrave; giắc cắm tai nghe</li>\r\n</ul>', 'mac-mini-m2-2022'),
(89, 'MacBook Air (M1, 2020)', 'MacBook Air (M1, 2020)', '<ul>\r\n	<li>Chip M1 do Apple thiết kế</li>\r\n	<li>CPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 3,5 lần nhanh hơn</li>\r\n	<li>GPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 5 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n để học m&aacute;y nhanh hơn gấp 9 lần</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 16 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Retina True Tone 13,3 inch</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n	<li>Hai cổng Thunderbolt/USB 4</li>\r\n	<li>Pin d&ugrave;ng được đến 18 tiếng</li>\r\n	<li>macOS Big Sur</li>\r\n</ul>', '<ul>\r\n	<li>Chip M1 do Apple thiết kế</li>\r\n	<li>CPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 3,5 lần nhanh hơn</li>\r\n	<li>GPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 5 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n để học m&aacute;y nhanh hơn gấp 9 lần</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 16 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Retina True Tone 13,3 inch</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n	<li>Hai cổng Thunderbolt/USB 4</li>\r\n	<li>Pin d&ugrave;ng được đến 18 tiếng</li>\r\n	<li>macOS Big Sur</li>\r\n</ul>', 'macbook-air-m1-2020'),
(90, 'MacBook Pro 16 inch (M1 Max, 2021)', 'MacBook Pro 16 inch (M1 Max, 2021)', '<ul>\r\n	<li>Chip M1 Pro hoặc M1 Max do Apple thiết kế</li>\r\n	<li>CPU tối đa 10 nh&acirc;n với hiệu suất l&ecirc;n đến 3,7 lần nhanh hơn</li>\r\n	<li>GPU tối đa 32 nh&acirc;n với hiệu suất l&ecirc;n đến 13 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 64 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 8TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina XDR 16,2 inch</li>\r\n	<li>Hệ thống &acirc;m thanh s&aacute;u loa với force-cancelling woofers</li>\r\n	<li>Ba cổng Thunderbolt 4, cổng HDMI, khe cắm thẻ SDXC v&agrave; giắc cắm tai nghe</li>\r\n	<li>Pin d&ugrave;ng được đến 21 tiếng</li>\r\n	<li>macOS Monterey</li>\r\n</ul>', '<ul>\r\n	<li>Chip M1 Pro hoặc M1 Max do Apple thiết kế</li>\r\n	<li>CPU tối đa 10 nh&acirc;n với hiệu suất l&ecirc;n đến 3,7 lần nhanh hơn</li>\r\n	<li>GPU tối đa 32 nh&acirc;n với hiệu suất l&ecirc;n đến 13 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 64 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 8TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina XDR 16,2 inch</li>\r\n	<li>Hệ thống &acirc;m thanh s&aacute;u loa với force-cancelling woofers</li>\r\n	<li>Ba cổng Thunderbolt 4, cổng HDMI, khe cắm thẻ SDXC v&agrave; giắc cắm tai nghe</li>\r\n	<li>Pin d&ugrave;ng được đến 21 tiếng</li>\r\n	<li>macOS Monterey</li>\r\n</ul>', 'macbook-pro-16-inch-m1-max-2021'),
(91, 'MacBook Air (M2, 2022)', 'MacBook Air (M2, 2022)', '<ul>\r\n	<li>Chip M2 do Apple thiết kế</li>\r\n	<li>CPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 1,4 lần nhanh hơn</li>\r\n	<li>GPU 10 nh&acirc;n với hiệu suất l&ecirc;n đến 2 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 24 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina 13,6 inch</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n	<li>Hai cổng Thunderbolt/USB 4</li>\r\n	<li>Pin d&ugrave;ng được đến 18 tiếng</li>\r\n	<li>macOS Monterey</li>\r\n</ul>', '<ul>\r\n	<li>Chip M2 do Apple thiết kế</li>\r\n	<li>CPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 1,4 lần nhanh hơn</li>\r\n	<li>GPU 10 nh&acirc;n với hiệu suất l&ecirc;n đến 2 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 24 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Liquid Retina 13,6 inch</li>\r\n	<li>Magic Keyboard với Touch ID</li>\r\n	<li>Hai cổng Thunderbolt/USB 4</li>\r\n	<li>Pin d&ugrave;ng được đến 18 tiếng</li>\r\n	<li>macOS Monterey</li>\r\n</ul>', 'macbook-air-m2-2022'),
(92, 'MacBook Pro 13 inch (M2, 2022)', 'MacBook Pro 13 inch (M2, 2022)', '<ul>\r\n	<li>Chip M2 do Apple thiết kế</li>\r\n	<li>CPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 1,4 lần nhanh hơn</li>\r\n	<li>GPU 10 nh&acirc;n với hiệu suất l&ecirc;n đến 2 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 24 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Retina True Tone 13,3 inch</li>\r\n	<li>Magic Keyboard với Touch Bar v&agrave; Touch ID</li>\r\n</ul>', '<ul>\r\n	<li>Chip M2 do Apple thiết kế</li>\r\n	<li>CPU 8 nh&acirc;n với hiệu suất l&ecirc;n đến 1,4 lần nhanh hơn</li>\r\n	<li>GPU 10 nh&acirc;n với hiệu suất l&ecirc;n đến 2 lần nhanh hơn</li>\r\n	<li>Neural Engine 16 nh&acirc;n</li>\r\n	<li>RAM thống nhất l&ecirc;n đến 24 GB</li>\r\n	<li>Lưu trữ SSD si&ecirc;u nhanh l&ecirc;n đến 2TB</li>\r\n	<li>M&agrave;n h&igrave;nh Retina True Tone 13,3 inch</li>\r\n	<li>Magic Keyboard với Touch Bar v&agrave; Touch ID</li>\r\n</ul>', 'macbook-pro-13-inch-m2-2022'),
(93, 'Razer Blade 15 (2023)', 'Razer Blade 15 (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; Intel Core i7 thế hệ thứ 13 v&agrave; card đồ họa NVIDIA GeForce RTX 40 Series</li>\r\n	<li>M&agrave;n h&igrave;nh OLED 15,6 inch với độ ph&acirc;n giải 4K v&agrave; tốc độ l&agrave;m mới 240Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học Razer Chroma RGB với mỗi ph&iacute;m c&oacute; thể lập tr&igrave;nh</li>\r\n	<li>Hệ thống &acirc;m thanh THX Spatial Audio</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 7 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; Intel Core i7 thế hệ thứ 13 v&agrave; card đồ họa NVIDIA GeForce RTX 40 Series</li>\r\n	<li>M&agrave;n h&igrave;nh OLED 15,6 inch với độ ph&acirc;n giải 4K v&agrave; tốc độ l&agrave;m mới 240Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học Razer Chroma RGB với mỗi ph&iacute;m c&oacute; thể lập tr&igrave;nh</li>\r\n	<li>Hệ thống &acirc;m thanh THX Spatial Audio</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 7 giờ</li>\r\n</ul>', 'razer-blade-15-2023'),
(94, 'Razer Blade 14 (2023)', 'Razer Blade 14 (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game nhỏ gọn với vi xử l&yacute; AMD Ryzen 9 6900HS v&agrave; card đồ họa NVIDIA GeForce RTX 3070 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh QHD 14 inch với tốc độ l&agrave;m mới 165Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học Razer Chroma RGB với mỗi ph&iacute;m c&oacute; thể lập tr&igrave;nh</li>\r\n	<li>Hệ thống &acirc;m thanh THX Spatial Audio</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game nhỏ gọn với vi xử l&yacute; AMD Ryzen 9 6900HS v&agrave; card đồ họa NVIDIA GeForce RTX 3070 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh QHD 14 inch với tốc độ l&agrave;m mới 165Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học Razer Chroma RGB với mỗi ph&iacute;m c&oacute; thể lập tr&igrave;nh</li>\r\n	<li>Hệ thống &acirc;m thanh THX Spatial Audio</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', 'razer-blade-14-2023'),
(95, 'Razer Blade 17 (2023)', 'Razer Blade 17 (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game mạnh mẽ với vi xử l&yacute; Intel Core i9 thế hệ thứ 13 v&agrave; card đồ họa NVIDIA GeForce RTX 40 Series</li>\r\n	<li>M&agrave;n h&igrave;nh 17,3 inch với t&ugrave;y chọn độ ph&acirc;n giải 4K hoặc FHD v&agrave; tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học Razer Chroma RGB với mỗi ph&iacute;m c&oacute; thể lập tr&igrave;nh</li>\r\n	<li>Hệ thống &acirc;m thanh THX Spatial Audio</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 8 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game mạnh mẽ với vi xử l&yacute; Intel Core i9 thế hệ thứ 13 v&agrave; card đồ họa NVIDIA GeForce RTX 40 Series</li>\r\n	<li>M&agrave;n h&igrave;nh 17,3 inch với t&ugrave;y chọn độ ph&acirc;n giải 4K hoặc FHD v&agrave; tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học Razer Chroma RGB với mỗi ph&iacute;m c&oacute; thể lập tr&igrave;nh</li>\r\n	<li>Hệ thống &acirc;m thanh THX Spatial Audio</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 8 giờ</li>\r\n</ul>', 'razer-blade-17-2023'),
(96, 'Razer Blade Stealth 13 (2023)', 'Razer Blade Stealth 13 (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay si&ecirc;u di động với vi xử l&yacute; Intel Core i7 thế hệ thứ 13 v&agrave; card đồ họa NVIDIA GeForce RTX 3050 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 13,4 inch với t&ugrave;y chọn độ ph&acirc;n giải 4K hoặc FHD v&agrave; tốc độ l&agrave;m mới 120Hz</li>\r\n	<li>B&agrave;n ph&iacute;m chiclet backlit</li>\r\n	<li>Hệ thống &acirc;m thanh 4 loa</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay si&ecirc;u di động với vi xử l&yacute; Intel Core i7 thế hệ thứ 13 v&agrave; card đồ họa NVIDIA GeForce RTX 3050 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 13,4 inch với t&ugrave;y chọn độ ph&acirc;n giải 4K hoặc FHD v&agrave; tốc độ l&agrave;m mới 120Hz</li>\r\n	<li>B&agrave;n ph&iacute;m chiclet backlit</li>\r\n	<li>Hệ thống &acirc;m thanh 4 loa</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', 'razer-blade-stealth-13-2023'),
(97, 'Razer Book 13 (2023)', 'Razer Book 13 (2023)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghiệp với vi xử l&yacute; Intel Core i7 thế hệ thứ 13 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh OLED 13,4 inch với độ ph&acirc;n giải QHD</li>\r\n	<li>B&agrave;n ph&iacute;m chiclet backlit</li>\r\n	<li>Hệ thống &acirc;m thanh 4 loa</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghiệp với vi xử l&yacute; Intel Core i7 thế hệ thứ 13 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh OLED 13,4 inch với độ ph&acirc;n giải QHD</li>\r\n	<li>B&agrave;n ph&iacute;m chiclet backlit</li>\r\n	<li>Hệ thống &acirc;m thanh 4 loa</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', 'razer-book-13-2023'),
(98, 'Razer Huntsman V2 (2023)', 'Razer Huntsman V2 (2023)', '<ul>\r\n	<li>B&agrave;n ph&iacute;m chơi game cao cấp với c&ocirc;ng tắc quang học Razer Huntsman V2</li>\r\n	<li>Keycaps PBT doubleshot</li>\r\n	<li>Đ&egrave;n LED RGB cho mỗi ph&iacute;m</li>\r\n	<li>B&agrave;n k&ecirc; tay từ t&iacute;nh</li>\r\n	<li>T&ugrave;y chọn c&oacute; hoặc kh&ocirc;ng c&oacute; n&uacute;m xoay đa chức năng</li>\r\n</ul>', '<ul>\r\n	<li>B&agrave;n ph&iacute;m chơi game cao cấp với c&ocirc;ng tắc quang học Razer Huntsman V2</li>\r\n	<li>Keycaps PBT doubleshot</li>\r\n	<li>Đ&egrave;n LED RGB cho mỗi ph&iacute;m</li>\r\n	<li>B&agrave;n k&ecirc; tay từ t&iacute;nh</li>\r\n	<li>T&ugrave;y chọn c&oacute; hoặc kh&ocirc;ng c&oacute; n&uacute;m xoay đa chức năng</li>\r\n</ul>', 'razer-huntsman-v2-2023'),
(99, 'Razer BlackWidow V3 Pro (2023)', 'Razer BlackWidow V3 Pro (2023)', '<ul>\r\n	<li>B&agrave;n ph&iacute;m chơi game kh&ocirc;ng d&acirc;y cao cấp với c&ocirc;ng tắc cơ học Razer Green hoặc Yellow</li>\r\n	<li>Keycaps PBT doubleshot</li>\r\n	<li>Đ&egrave;n LED RGB cho mỗi ph&iacute;m</li>\r\n	<li>B&agrave;n k&ecirc; tay từ t&iacute;nh</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y HyperSpeed ​​2.4GHz</li>\r\n</ul>', '<ul>\r\n	<li>B&agrave;n ph&iacute;m chơi game kh&ocirc;ng d&acirc;y cao cấp với c&ocirc;ng tắc cơ học Razer Green hoặc Yellow</li>\r\n	<li>Keycaps PBT doubleshot</li>\r\n	<li>Đ&egrave;n LED RGB cho mỗi ph&iacute;m</li>\r\n	<li>B&agrave;n k&ecirc; tay từ t&iacute;nh</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y HyperSpeed ​​2.4GHz</li>\r\n</ul>', 'razer-blackwidow-v3-pro-2023'),
(100, 'Razer Viper V2 Pro (2023)', 'Razer Viper V2 Pro (2023)', '<ul>\r\n	<li>Chuột chơi game kh&ocirc;ng d&acirc;y cao cấp với cảm biến quang học Razer Focus Pro 30K</li>\r\n	<li>Switch quang học Razer thế hệ thứ 2</li>\r\n	<li>Thiết kế ultralightweight</li>\r\n	<li>Ch&acirc;n đế chuột bằng PTFE</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y HyperSpeed ​​2.4GHz</li>\r\n</ul>', '<ul>\r\n	<li>Chuột chơi game kh&ocirc;ng d&acirc;y cao cấp với cảm biến quang học Razer Focus Pro 30K</li>\r\n	<li>Switch quang học Razer thế hệ thứ 2</li>\r\n	<li>Thiết kế ultralightweight</li>\r\n	<li>Ch&acirc;n đế chuột bằng PTFE</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y HyperSpeed ​​2.4GHz</li>\r\n</ul>', 'razer-viper-v2-pro-2023'),
(101, 'Razer Kraken V3 Pro (2023)', 'Razer Kraken V3 Pro (2023)', '<ul>\r\n	<li>Tai nghe chơi game kh&ocirc;ng d&acirc;y cao cấp với tr&igrave;nh điều khiển Razer TriForce Titanium 50mm</li>\r\n	<li>&Acirc;m thanh v&ograve;m THX Spatial Audio</li>\r\n	<li>Micro HyperClear Cardioid c&oacute; thể th&aacute;o rời</li>\r\n	<li>Thiết kế thoải m&aacute;i với lớp đệm FlowKnit</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y HyperSpeed ​​2.4GHz</li>\r\n</ul>', '<ul>\r\n	<li>Tai nghe chơi game kh&ocirc;ng d&acirc;y cao cấp với tr&igrave;nh điều khiển Razer TriForce Titanium 50mm</li>\r\n	<li>&Acirc;m thanh v&ograve;m THX Spatial Audio</li>\r\n	<li>Micro HyperClear Cardioid c&oacute; thể th&aacute;o rời</li>\r\n	<li>Thiết kế thoải m&aacute;i với lớp đệm FlowKnit</li>\r\n	<li>Kết nối kh&ocirc;ng d&acirc;y HyperSpeed ​​2.4GHz</li>\r\n</ul>', 'razer-kraken-v3-pro-2023'),
(102, 'Dell XPS 13 (2022)', 'Dell XPS 13 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay cao cấp với vi xử l&yacute; Intel Core thế hệ thứ 12 v&agrave; card đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh InfinityEdge 13,4 inch với độ ph&acirc;n giải 4K+</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 12 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay cao cấp với vi xử l&yacute; Intel Core thế hệ thứ 12 v&agrave; card đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh InfinityEdge 13,4 inch với độ ph&acirc;n giải 4K+</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 12 giờ</li>\r\n</ul>', 'dell-xps-13-2022'),
(103, 'Dell XPS 15 (2022)', 'Dell XPS 15 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay cao cấp với vi xử l&yacute; Intel Core thế hệ thứ 12 v&agrave; card đồ họa NVIDIA GeForce RTX 3050 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh InfinityEdge 15,6 inch với độ ph&acirc;n giải 4K+</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay cao cấp với vi xử l&yacute; Intel Core thế hệ thứ 12 v&agrave; card đồ họa NVIDIA GeForce RTX 3050 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh InfinityEdge 15,6 inch với độ ph&acirc;n giải 4K+</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', 'dell-xps-15-2022'),
(104, 'Dell Alienware m15 R7 (2022)', 'Dell Alienware m15 R7 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; AMD Ryzen 9 6900HX v&agrave; card đồ họa NVIDIA GeForce RTX 3080 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD v&agrave; tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 8 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game cao cấp với vi xử l&yacute; AMD Ryzen 9 6900HX v&agrave; card đồ họa NVIDIA GeForce RTX 3080 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD v&agrave; tốc độ l&agrave;m mới 360Hz</li>\r\n	<li>B&agrave;n ph&iacute;m cơ học backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 8 giờ</li>\r\n</ul>', 'dell-alienware-m15-r7-2022'),
(105, 'Dell G15 (2022)', 'Dell G15 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game gi&aacute; cả phải chăng với vi xử l&yacute; Intel Core i5 thế hệ thứ 12 v&agrave; card đồ họa NVIDIA GeForce RTX 3050</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD v&agrave; tốc độ l&agrave;m mới 120Hz</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 12 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay chơi game gi&aacute; cả phải chăng với vi xử l&yacute; Intel Core i5 thế hệ thứ 12 v&agrave; card đồ họa NVIDIA GeForce RTX 3050</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD v&agrave; tốc độ l&agrave;m mới 120Hz</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 12 giờ</li>\r\n</ul>', 'dell-g15-2022'),
(106, 'Dell Inspiron 15 3000 (2022)', 'Dell Inspiron 15 3000 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay gi&aacute; rẻ cho học sinh v&agrave; sinh vi&ecirc;n với vi xử l&yacute; Intel Core i3 thế hệ thứ 12 v&agrave; đồ họa Intel UHD</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 8 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay gi&aacute; rẻ cho học sinh v&agrave; sinh vi&ecirc;n với vi xử l&yacute; Intel Core i3 thế hệ thứ 12 v&agrave; đồ họa Intel UHD</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 8 giờ</li>\r\n</ul>', 'dell-inspiron-15-3000-2022'),
(107, 'Dell Vostro 15 5000 (2022)', 'Dell Vostro 15 5000 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghiệp nhỏ với vi xử l&yacute; Intel Core i5 thế hệ thứ 12 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho doanh nghiệp nhỏ với vi xử l&yacute; Intel Core i5 thế hệ thứ 12 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 10 giờ</li>\r\n</ul>', 'dell-vostro-15-5000-2022'),
(108, 'Dell Latitude 9510 (2022)', 'Dell Latitude 9510 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay doanh nghiệp cao cấp với vi xử l&yacute; Intel Core i7 thế hệ thứ 11 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay doanh nghiệp cao cấp với vi xử l&yacute; Intel Core i7 thế hệ thứ 11 v&agrave; đồ họa Intel Iris Xe</li>\r\n	<li>M&agrave;n h&igrave;nh 15,6 inch với độ ph&acirc;n giải FHD</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', 'dell-latitude-9510-2022'),
(109, 'HP ZBook Studio G8 (2022)', 'HP ZBook Studio G8 (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho người s&aacute;ng tạo với vi xử l&yacute; Intel Core i9 thế hệ thứ 12 v&agrave; card đồ họa NVIDIA GeForce RTX 3080 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh DreamColor 16 inch với độ ph&acirc;n giải 4K v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay d&agrave;nh cho người s&aacute;ng tạo với vi xử l&yacute; Intel Core i9 thế hệ thứ 12 v&agrave; card đồ họa NVIDIA GeForce RTX 3080 Ti</li>\r\n	<li>M&agrave;n h&igrave;nh DreamColor 16 inch với độ ph&acirc;n giải 4K v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', 'hp-zbook-studio-g8-2022'),
(110, 'HP Chromebook x360 14c (2022)', 'HP Chromebook x360 14c (2022)', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay Chromebook gi&aacute; rẻ với vi xử l&yacute; Intel Celeron N4500 v&agrave; đồ họa Intel UHD</li>\r\n	<li>M&agrave;n h&igrave;nh 14 inch với độ ph&acirc;n giải FHD v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', '<ul>\r\n	<li>M&aacute;y t&iacute;nh x&aacute;ch tay Chromebook gi&aacute; rẻ với vi xử l&yacute; Intel Celeron N4500 v&agrave; đồ họa Intel UHD</li>\r\n	<li>M&agrave;n h&igrave;nh 14 inch với độ ph&acirc;n giải FHD v&agrave; cảm ứng đa điểm</li>\r\n	<li>B&agrave;n ph&iacute;m backlit</li>\r\n	<li>Pin dung lượng cao l&ecirc;n đến 13 giờ</li>\r\n</ul>', 'hp-chromebook-x360-14c-2022');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `id_type` int UNSIGNED DEFAULT NULL,
  `id_post` int DEFAULT NULL,
  `product_quantity` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_soid` int NOT NULL,
  `unit_price` int DEFAULT NULL,
  `promotion_price` int DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sub_image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `new` tinyint DEFAULT '0',
  `date_sale` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hours_sale` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_type`, `id_post`, `product_quantity`, `product_soid`, `unit_price`, `promotion_price`, `image`, `sub_image`, `new`, `date_sale`, `hours_sale`, `created_at`, `updated_at`) VALUES
(13, 2, 7, '0', 0, 3000000, 2700000, '1619760945.1afe610e80ac771a43941adfe2f8ac5b38405c2d82.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEvfHDYHNAFV3QnNLkSF_0Kl7fpjA4xdU4zA&usqp=CAU', 1, '2021/05/15', '22:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 5, '5', 1, 1500000, 1200000, '1619761795.ASUS-TUF-Gaming-F1558.jpg', '', 1, '2021/05/10', '19:28', '2020-11-01 13:00:25', '2021-03-31 05:15:32'),
(74, 1, 1, '26', 8, 14500000, 0, '1619762352.16771-laptop-acer-swift-3-sf314-57-52gb-176.jpg', '', 1, '2021/04/30', '20:29', '2020-11-21 11:42:06', '2021-04-01 06:18:47'),
(75, 3, 3, '3', 2, 19000000, 17000000, '1619762517.macbook 13inch63.jpg', '', 0, '2021/04/20', '19:28', '2020-11-22 02:28:07', '2021-03-13 11:37:33'),
(77, 2, 4, '4', 5, 15000000, 10000000, '1619761818.23b98f8a489c5b537975ab4f013d912797.jpg', '', 0, '2021/05/26', '19:28', '2020-11-22 11:45:10', '2020-12-08 08:18:53'),
(78, 2, 6, '10', 0, 16000000, 0, '1635389516_a337464d-11d0-4ab0-8d73-e75ca910d122_200x200.png', '', 1, '2021/10/29', '12:50', '2020-11-22 13:18:01', '2020-12-08 08:19:04'),
(86, 1, 2, '9', 1, 19000000, 12000000, '1619761062.acer-nitro-5-an515-54-main42.png', '', 1, '2021/05/29', '19:28', '2020-11-23 13:41:34', '2020-12-08 08:19:14'),
(87, 4, 9, '9', 1, 29000000, 0, '1619762061.637436514731163376_dell-inspiron-n5406-xam-145.png', '', 1, NULL, '12:53', '2020-11-23 13:44:10', '2020-12-08 08:19:24'),
(88, 7, 11, '6', 1, 22000000, 0, '1619761581.big_365667_untitled-132.jpg', '', 1, NULL, '12:41', '2020-11-23 14:03:09', '2021-04-02 11:16:03'),
(89, 5, 13, '4', 0, 16000000, 14000000, '1606791910.lenovo48.jpg', '', 1, '2021/04/12', '19:28', '2020-11-23 14:04:28', '2020-12-01 03:05:10'),
(90, 2, 16, '10', 0, 15000000, 0, '1619761926.NATION4GAMERSa-01-123.png', '', 1, NULL, '12:51', '2020-11-23 14:05:55', '2021-03-31 05:14:56'),
(91, 4, 15, '3', 0, 12000000, 11000000, '1619760916.70899.jpg', NULL, 1, '2021/05/23', '14:06', '2021-02-28 10:53:04', '2021-03-06 11:23:19'),
(93, 7, 17, '10', 0, 5000000, 0, '1619761611.HP_Pavilion_Gaming_15-254.jpg', NULL, 0, NULL, '12:46', '2021-02-28 11:03:42', '2021-03-06 11:26:27'),
(94, 7, 14, '10', 0, 5000000, 4000000, '1619761777.5de0fa5b2500004f19d2e9d026.jpg', NULL, 1, NULL, '12:46', '2021-02-28 11:07:47', '2021-03-06 11:26:44'),
(95, 6, 10, '10', 0, 20000000, 19000000, '1615638903.razer-book91.jpg', NULL, 0, NULL, '13:01', '2021-02-28 11:10:39', '2021-03-13 12:35:03'),
(96, 3, 8, '8', 1, 10000000, 0, '1619762534.12472_laptop_apple_macbook_air_mvfn2sa_gold_cpu_i5_132.jpg', NULL, 1, NULL, '13:01', '2021-02-28 11:29:20', '2021-03-13 12:40:52'),
(97, 1, 18, '10', 0, 5000000, 3500000, '1619760931.410F458D-FBAB-4A29-BC17-54DF85F6137D57.png', NULL, 1, '2021/05/18', '20:32', '2021-03-06 10:47:45', '2021-03-12 10:45:31'),
(98, 4, 19, '10', 0, 32000000, 0, '1619762082.unnamed92.jpg', NULL, 1, NULL, '12:54', '2021-03-06 11:06:33', '2021-03-12 13:29:38'),
(99, 6, 27, '10', 0, 20000000, 0, '1615638734.shopping (1)69.png', NULL, 0, NULL, '13:08', '2021-03-06 11:07:12', '2021-03-13 12:35:34'),
(100, 2, 24, '2', 0, 20000000, 18000000, '1617244911.ausu67.png', NULL, 1, '2021/05/30', '20:32', '2021-04-01 02:41:51', '2021-04-01 03:08:14'),
(101, 5, 25, '2', 0, 10000000, 9000000, '1619761264.lenovo-ideapad-l34028.png', NULL, 0, NULL, '12:37', '2021-04-03 05:20:51', '2021-04-03 05:20:51'),
(102, 5, 26, '2', 0, 20000000, 10000000, '1619761280.66603-511057-product_original-laptop-lenovo-legion-5-15arh05-82b500agpb-16gb-1tbssd-ryzen-7-4800h-156fhd-16gb-512ssd-1000ssd-gtx1650-noos54.jpg', NULL, 1, '2021/05/09', '22:11', NULL, NULL),
(103, 15, 28, '10', 0, 50000000, 0, '1620389257.Microsoft-Surface-Pro-7-PVR-00021-1237.jpg', NULL, 1, '2021/05/08', '11:06', NULL, NULL),
(108, 13, 34, '10', 0, 20000000, 18000000, '1712460459_MSI Stealth 15M.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(109, 13, 35, '10', 0, 20000000, 19000000, '1712460568_MSI GE66 Raider.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(110, 13, 36, '5', 0, 21000000, 20000000, '1712460613_MSI Crosshair 15.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(111, 13, 37, '10', 0, 19000000, 18000000, '1712460664_MSI Katana GF66.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(112, 13, 38, '10', 0, 20000000, 19000000, '1712460724_MSI Modern 14.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(113, 13, 39, '10', 0, 17000000, 16000000, '1712460808_MSI Prestige 14 Evo.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(114, 13, 40, '10', 0, 20000000, 19000000, '1712460862_MSI Creator Z16.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(115, 13, 41, '10', 0, 20000000, 19500000, '1712460909_MSI Summit E14 Flip Evo.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(116, 13, 42, '5', 0, 18000000, 17000000, '1712460967_MSI Cubi 5 10M.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(117, 13, 43, '10', 0, 30000000, 29000000, '1712461057_MSI Pro DP21.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(118, 13, 44, '10', 0, 20000000, 19000000, '1712461139_MSI Titan GT77.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(119, 13, 45, '10', 0, 60000000, 50000000, '1712461231_MSI Prestige 15 Evo.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(120, 13, 46, '10', 0, 100000000, 90000000, '1712461295_MSI Summit E16 Flip Evo.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(121, 13, 47, '10', 0, 25000000, 24000000, '1712461353_MSI Pro 24X.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(122, 13, 48, '10', 0, 30000000, 20000000, '1712461400_MSI Wind Top AE22.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(123, 13, 49, '10', 0, 100000000, 80000000, '1712461469_MSI Vector GP66.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(124, 14, 50, '5', 0, 15000000, 14000000, '1712461778_Toshiba Dynabook Tecra A50-J.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(125, 14, 51, '5', 0, 15000000, 14000000, '1712461835_Toshiba Dynabook Satellite Pro C50-G.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(126, 14, 52, '5', 0, 10000000, 9000000, '1712461890_Toshiba Dynabook Satellite Pro L50-G.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(127, 14, 53, '10', 0, 17000000, 16000000, '1712461952_Toshiba Dynabook Satellite Pro U40-G.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(128, 1, 54, '10', 0, 19000000, 18000000, '1712462143_Acer Swift X.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(129, 1, 55, '10', 0, 20000000, 19000000, '1712462188_Acer Nitro 5.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(130, 1, 56, '10', 0, 18500000, 17000000, '1712462246_Acer Aspire 5.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(131, 1, 57, '10', 0, 20000000, 19000000, '1712462288_Acer Predator Helios 300.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(132, 1, 58, '10', 0, 19000000, 18000000, '1712462343_Acer ConceptD 3.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(133, 1, 59, '1', 0, 100000000, 90000000, '1712462396_Acer Chromebook Spin 713.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(134, 1, 60, '10', 0, 15000000, 14000000, '1712462464_Acer Swift 3.jpg', NULL, 1, '2024/04/07', '10:04', NULL, NULL),
(135, 1, 61, '10', 0, 19000000, 18000000, '1712462516_Acer Nitro 7.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(136, 1, 62, '10', 0, 20000000, 19000000, '1712462552_Acer Aspire 7.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(137, 1, 63, '10', 0, 80000000, 70000000, '1712462624_Acer Predator Orion 9000.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(138, 1, 64, '10', 0, 30000000, 25000000, '1712462669_Acer ConceptD 7.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(139, 1, 65, '10', 0, 40000000, 30000000, '1712462714_Acer Chromebook Spin 714.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(140, 1, 66, '10', 0, 25000000, 20000000, '1712462802_Acer Aspire Vero.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(141, 1, 67, '10', 0, 9000000, 8000000, '1712462927_Acer Chromebook 514.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(142, 1, 68, '10', 0, 12000000, 10000000, '1712462972_Acer Enduro Urban N3.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(143, 1, 69, '10', 0, 8000000, 7000000, '1712463055_Acer TravelMate P6.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(144, 1, 70, '10', 0, 20000000, 19000000, '1712463088_Acer Spin 5.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(145, 1, 71, '10', 0, 19000000, 18000000, '1712463125_Acer Swift 1.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(146, 1, 72, '10', 0, 100000000, 90000000, '1712463164_Acer Predator Orion 3000.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(147, 1, 73, '10', 0, 15000000, 10000000, '1712463208_Acer ConceptD 5.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(148, 1, 74, '10', 0, 16000000, 15000000, '1712463276_Acer Chromebook Enterprise Spin 713.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(149, 2, 75, '10', 0, 25000000, 20000000, '1712463523_Laptop Asus TUF Gaming FX506LH.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(150, 2, 76, '10', 0, 25000000, 20000000, '1712463587_Laptop Asus TUF Gaming FX506HCB.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(151, 2, 77, '10', 0, 50000000, 30000000, '1712463643_Laptop Asus TUF Gaming FX516PC.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(152, 2, 78, '10', 0, 30000000, 20000000, '1712463687_Laptop Asus TUF Gaming FX706HC.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(153, 2, 79, '10', 0, 25000000, 20000000, '1712463757_Laptop Asus TUF Gaming FX517ZC.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(154, 2, 80, '10', 0, 25000000, 20000000, '1712463800_Laptop Asus TUF Gaming FX516PM.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(155, 2, 81, '10', 0, 30000000, 20000000, '1712463842_Laptop Asus Rog Zephyrus Gaming G14 GA401QH R7.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(156, 2, 82, '10', 0, 20000000, 10000000, '1712463927_Laptop Asus TUF Gaming FX706HC.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(157, 2, 83, '10', 0, 10000000, 9000000, '1712463973_Laptop Asus TUF Gaming FX517ZC.jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(158, 3, 84, '10', 0, 30000000, 20000000, '1712464515_MacBook Air (M2, 2022).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(159, 3, 85, '10', 0, 35000000, 20000000, '1712464563_MacBook Pro 13 inch (M2, 2022).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(160, 3, 86, '10', 0, 20000000, 10000000, '1712464616_MacBook Pro 14 inch (M1 Pro, 2021).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(161, 3, 87, '10', 0, 40000000, 30000000, '1712464667_MacBook Pro 16 inch (M1 Pro, 2021).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(162, 3, 88, '10', 0, 30000000, 20000000, '1712464752_Mac mini (M2, 2022).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(163, 3, 89, '10', 0, 30000000, 10000000, '1712464881_MacBook Air (M1, 2020).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(164, 3, 90, '10', 0, 40000000, 30000000, '1712464951_MacBook Pro 16 inch (M1 Pro, 2021).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(165, 3, 91, '10', 0, 100000000, 90000000, '1712465035_MacBook Air (M2, 2022) 2.jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(166, 3, 92, '10', 0, 60000000, 50000000, '1712465084_MacBook Pro 13 inch (M2, 2022) 2.jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(167, 6, 93, '10', 0, 5000000, 4000000, '1712465273_Razer Blade 15 (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(168, 6, 94, '10', 0, 20000000, 18000000, '1712465326_Razer Blade 14 (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(169, 6, 95, '10', 0, 20000000, 10000000, '1712465377_Razer Blade 17 (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(170, 6, 96, '10', 0, 20000000, 18000000, '1712465428_Razer Blade Stealth 13 (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(171, 6, 97, '10', 0, 30000000, 20000000, '1712465492_Razer Book 13 (2023).jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(172, 6, 98, '10', 0, 3000000, 1000000, '1712465556_Razer Huntsman V2 (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(173, 15, 99, '10', 0, 30000000, 100000, '1712465606_Razer Huntsman V2 (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(174, 6, 100, '20', 0, 2000000, 1000000, '1712465678_Razer Viper V2 Pro (2023).jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(175, 6, 101, '10', 0, 2000000, 1000000, '1712465719_Razer Kraken V3 Pro (2023).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(176, 4, 102, '10', 0, 10000000, 9000000, '1712465970_Dell XPS 13 (2022).jpg', NULL, 0, '2024/04/07', '11:04', NULL, NULL),
(177, 4, 103, '10', 0, 50000000, 40000000, '1712466020_Dell XPS 15 (2022).jpg', NULL, 1, '2024/04/07', '11:04', NULL, NULL),
(178, 4, 104, '10', 0, 10000000, 9000000, '1712466062_Dell Alienware m15 R7 (2022).jpg', NULL, 0, '2024/04/07', '12:04', NULL, NULL),
(179, 4, 105, '10', 0, 20000000, 3000000, '1712466103_Dell G15 (2022).jpg', NULL, 1, '2024/04/07', '12:04', NULL, NULL),
(180, 4, 106, '10', 0, 19000000, 15000000, '1712466141_Dell Inspiron 15 3000 (2022).jpg', NULL, 0, '2024/04/07', '12:04', NULL, NULL),
(181, 4, 107, '10', 0, 19000000, 16000000, '1712466204_Dell Vostro 15 5000 (2022).jpg', NULL, 0, '2024/04/07', '12:04', NULL, NULL),
(182, 4, 108, '10', 0, 5000000, 4000000, '1712466244_Dell Latitude 9510 (2022).jpg', NULL, 1, '2024/04/07', '12:04', NULL, NULL),
(183, 7, 109, '10', 0, 50000000, 40000000, '1712466645_HP ZBook Studio G8 (2022).jpg', NULL, 1, '2024/04/07', '12:04', NULL, NULL),
(184, 7, 110, '10', 0, 10000000, 8000000, '1712466683_HP Chromebook x360 14c (2022).jpg', NULL, 1, '2024/04/07', '12:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int NOT NULL,
  `product_id` int NOT NULL,
  `rating_number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `product_id`, `rating_number`) VALUES
(1, 16, 2),
(2, 16, 4),
(3, 77, 3),
(4, 74, 3),
(5, 74, 1),
(6, 91, 4),
(7, 91, 3),
(8, 91, 3),
(9, 91, 3),
(10, 91, 4),
(11, 91, 4),
(12, 91, 4),
(13, 91, 3),
(14, 91, 2),
(15, 91, 1),
(16, 91, 1),
(17, 91, 1),
(18, 100, 3),
(19, 100, 3),
(20, 86, 3),
(21, 95, 2);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `status_slide` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `link`, `image`, `status_slide`) VALUES
(18, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1620138936.dell_pro_hpb___web_banner30.jpg', 0),
(19, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1620177863.banner00361.jpg', 0),
(20, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1606225287.banner-web-laptop-1199.png', 1),
(22, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1606225797.banner417.jpg', 0),
(23, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1606791963.banner399.jpg', 1),
(24, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1615196388.gs75-20190107-152.jpg', 0),
(25, 'https://www.youtube.com/watch?v=GWJae2ECSxI', '1635481716.banner292.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `social_id` int NOT NULL,
  `provider_user_id` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`social_id`, `provider_user_id`, `provider`, `user`) VALUES
(1, '100417728284693981439', 'GOOGLE', 27),
(2, '108072461302466486528', 'GOOGLE', 17);

-- --------------------------------------------------------

--
-- Table structure for table `statistical`
--

CREATE TABLE `statistical` (
  `id_statistic` int NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `sales` varchar(255) NOT NULL,
  `profit` varchar(255) NOT NULL,
  `quantity` int NOT NULL,
  `total_order` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statistical`
--

INSERT INTO `statistical` (`id_statistic`, `order_date`, `sales`, `profit`, `quantity`, `total_order`) VALUES
(1, '2021-03-06', '10000000', '9999000', 1, 1),
(2, '2021-03-05', '30000000', '29999000', 2, 1),
(3, '2021-03-27', '29000000', '28999000', 2, 1),
(4, '2021-03-03', '29000000', '28998000', 2, 2),
(5, '2021-03-09', '14500000', '14499000', 1, 1),
(6, '2021-03-11', '14500000', '14499000', 1, 1),
(7, '2021-03-13', '43500000', '43498000', 2, 2),
(8, '2021-04-01', '22000000', '21999000', 1, 1),
(9, '2021-04-02', '19000000', '18999000', 1, 1),
(10, '2021-05-03', '19000000', '18999000', 1, 1),
(11, '2021-05-01', '1500000', '1499000', 1, 1),
(12, '2021-05-02', '15000000', '14999000', 1, 1),
(13, '2021-04-30', '14500000', '14499000', 1, 1),
(14, '2021-04-15', '30000000', '29999000', 2, 1),
(15, '2021-05-13', '19000000', '18999000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_products`
--

CREATE TABLE `type_products` (
  `id` int UNSIGNED NOT NULL,
  `name_type` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `type_products`
--

INSERT INTO `type_products` (`id`, `name_type`, `image`) VALUES
(1, 'Acer', '1620386954.acer-logo-icon41.png'),
(2, 'Asus', 'asus.png'),
(3, 'Apple', '37150-apple-logo-icon-vector-icon-vector-eps.png'),
(4, 'Dell', 'dell-4-569248.png'),
(5, 'Lenovo', 'lenovo-226431.png'),
(6, 'Razer', 'razer-1-285174.png'),
(7, 'HP', '1024px-HP_logo_2012.png'),
(13, 'MSI', 'msi-1-286075.png'),
(14, 'Toshiba', 'toshiba-1-282829.png'),
(15, 'Microsoft', 'microsoft-26-722716.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_token` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `phone`, `address`, `user_token`, `remember_token`, `level`, `created_at`, `updated_at`) VALUES
(11, 'namphuong1a', 'bac@gmail.com', '$2y$10$f9T36WpzK80pllMnookQ0eGbOpy5/ri6Dmgsx2PN2z80FJC2JZ68q', '0773654033', 'binh duong', NULL, NULL, 2, '2020-11-13 09:41:44', '2021-04-26 10:12:35'),
(13, 'namphuong11', 'npn123@gmail.com', '$2y$10$Mmc.GBGffmiGqjVCH8Z8wOY2bH6iYST5S4C8aXudkdv2FWh0hwlMS', '0773654033', 'binh duong', NULL, NULL, 2, '2020-11-14 02:56:24', '2021-04-02 14:34:11'),
(19, 'Admin 2', 'npn020811@gmail.com', '$2y$10$Ya3ks9kmawTCBgFz/n8coeUPgSgovIE8DkxElnUcvSGcHyxMY83ue', '0773654033', 'binh duong', NULL, NULL, 1, '2020-11-16 14:31:38', '2024-04-07 03:48:37'),
(20, 'namPhuong023', 'npn0211@gmail.com', '$2y$10$qp1SGtLzEOSsraCD7HDxnuTuclGncfcH6ZQURXhJ3KuJ7SZoAZhB.', '0773654033', 'binh duong', NULL, NULL, 2, '2020-11-17 02:45:54', '2021-04-02 14:34:17'),
(22, 'namPhuong021111', 'bac123@gmail.com', '$2y$10$Ls4KGY3DszKcL/2v.b5J.OpEAmHYkg30oexpJFg1UY4CfVAv.2MyW', '0773654033', 'binh duong', NULL, NULL, 2, '2020-11-18 06:13:32', '2021-04-02 14:34:20'),
(30, 'CaT CaT', '2nmusic020899@gmail.com', '$2y$10$JGcARn9I2Y93.JKpZQ0Icuh3vMK04uPFvPkm8ezk6wvxo3kmcgG2m', '0773654059', 'sqsqs', NULL, NULL, 2, '2021-03-14 07:40:05', '2021-04-02 14:34:26'),
(31, 'Test Test Test', '2nmusic024444@gmail.com', '$2y$10$MDHnnvf6yjitmH2AmxsFv.7wO9MIWw7e3pqMaJHj.RZHlir21NjeG', '0773654059', 'sqsqs', NULL, NULL, 2, '2021-04-03 12:41:35', '2021-04-07 10:35:38'),
(32, 'Admin ', 'admin@gmail.com', '$2y$10$JAOJihKYDwzmgWL.psvJXepGnrkQPbSS51L2zwGKGPmgUtTN8j5/2', '0773654036', 'binh duong', NULL, NULL, 1, NULL, NULL),
(33, 'demo', 'demo@gmail.com', '$2y$10$r4U2d26bJjuYrz3FhEiXLOuYpD/uJZq3Y4NJw6FWtH1qjyuYJlfcu', '0773654059', 'sqsqs', NULL, NULL, 2, '2021-05-13 13:28:55', '2021-05-13 13:28:55'),
(34, 'demo2', 'demo2@gmail.com', '$2y$10$yegCn6Zw3Z8mZNwD9N9m8.p02pbYMmp1sTdvT0k.cvhM1hsW.oNXW', '0773654059', 'sqsqs', NULL, NULL, 2, '2021-05-13 13:32:16', '2021-05-13 13:32:16'),
(35, 'demo1', 'demo1@gmail.com', '$2y$10$hZK69jLVFtkr5oEBPgTN2OqoER5DXfBowRprVnVY2c9Ejfomaj7BC', '0773654059', 'sqsqs', NULL, NULL, 2, '2021-05-13 13:37:00', '2021-05-13 13:37:00'),
(36, 'test1', 'test1@gmail.com', '$2y$10$EYD5NyEMCBR9HJE3TE1Jx..yxL5Awoou5YdK.KZq4nF.KxMDEnidu', '0773654059', 'sqsqs', NULL, NULL, 2, '2021-05-13 13:54:50', '2021-05-13 13:54:50'),
(37, 'aaaaaaaa', 'aaa@gmail.com', '$2y$10$yEsnwQ08/CocnGgVaV8f/e/wkjPlk8Gc3Y65E0jZdvI4SXS95kBMO', '11212121212', 'aaaaaaa', NULL, NULL, 2, '2021-10-23 07:46:43', '2021-10-23 07:46:43'),
(38, 'swswswsws', 'swswsw@gmail.com', '$2y$10$SubC6y6bbibovVgeGsoMo.bBob/MaWeM6zqx.ztsslRZZt9oyWn7a', '121212121', 'wswswswsw', NULL, NULL, 2, '2021-10-23 07:47:36', '2021-10-23 07:47:36'),
(39, 'dwdwdw', 'dwdwdwdwdwdwd@gmail.com', '$2y$10$OZSkKEvoO42Il11bQcLpXOJcNU4a8TpoSNi3wPuu.4xSPL0yKZdm2', '12212121212', 'dwdwdw', NULL, NULL, 2, '2021-10-23 07:49:59', '2021-10-23 07:49:59'),
(40, 'wdwdwd', 'zzzzzzz@gmail.com', '$2y$10$0AQ.cpqcuJTPsowg16deteoKe4fXbIGemdhZq/yCqJbnYz1uB22o6', '121212121212', 'dwdwdw', NULL, NULL, 2, '2021-10-23 07:51:59', '2021-10-23 07:51:59'),
(41, 'dededededed', 'edededededededede@gmail.com', '$2y$10$E2omuishuNKKG2wInyvxj.HNXc5mWGs9pTsCB5J8VxmD/AjwOaxeG', '2121212121', 'ddeded', NULL, NULL, 2, '2021-10-23 08:01:00', '2021-10-23 08:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id_visitors` int NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `date_visitor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id_visitors`, `ip_address`, `date_visitor`) VALUES
(1, '192.168.2.1', '2021-01-03'),
(2, '192.168.1.1', '2021-03-11'),
(3, '::1', '2021-03-30'),
(4, '127.0.0.1', '2021-05-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id_bill`),
  ADD KEY `bills_ibfk_1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id_bill_detail`),
  ADD KEY `bill_detail_ibfk_2` (`id_product`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`),
  ADD KEY `gallery_product_id` (`gallery_product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `zazaza` (`id_post`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id_statistic`);

--
-- Indexes for table `type_products`
--
ALTER TABLE `type_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id_visitors`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id_bill` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id_bill_detail` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id_payment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `social_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id_statistic` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `type_products`
--
ALTER TABLE `type_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id_visitors` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_ibfk_1` FOREIGN KEY (`gallery_product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `type_products` (`id`),
  ADD CONSTRAINT `zazaza` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
