-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3366
-- Generation Time: Jul 31, 2018 at 01:14 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 5.6.36-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony`
--

-- --------------------------------------------------------

--
-- Table structure for table `categroy`
--

CREATE TABLE `categroy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categroy`
--

INSERT INTO `categroy` (`id`, `name`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Water', 'Water', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(2, 'Mobile', 'Mobile', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(3, 'Electronic', 'Electronic', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(4, 'Educational', 'Educational', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(5, 'Food Products', 'Food Products', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(6, 'Kitchen Appliances', 'Kitchen Appliances', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(7, 'Life Insurance', 'Life Insurance', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(8, 'Mutual Fund', 'Mutual Fund', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(9, 'Consumer Durables', 'Consumer Durables', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(10, 'DTH', 'DTH', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(11, 'Laptop', 'Laptop', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(12, 'Retail', 'Retail', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(13, 'Matress ', 'Matress ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(14, 'AC ', 'AC ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(15, 'Beer ', 'Beer ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(16, 'Bi Cycle ', 'Bi Cycle ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(17, 'Biscuit ', 'Biscuit ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(18, 'Desktop Computer ', 'Desktop Computer ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(19, 'Basmati Rice ', 'Basmati Rice ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(20, 'Namkeen ', 'Namkeen ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(21, 'Shampoo ', 'Shampoo ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(22, 'Tea ', 'Tea ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(23, 'Baby Food ', 'Baby Food ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(24, 'Jewelry ', 'Jewelry ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(25, 'Perfume ', 'Perfume ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(26, 'Apparel ', 'Apparel ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(27, 'Chocolate ', 'Chocolate ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(28, 'Digital Camera ', 'Digital Camera ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(29, 'Lipstick ', 'Lipstick ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(30, 'hotel ', 'hotel ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(31, 'Shirt ', 'Shirt ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(32, 'Men Clothing ', 'Men Clothing ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(33, 'Milk ', 'Milk ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(34, 'Newspaper ', 'Newspaper ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(35, 'Restaurant Chain ', 'Restaurant Chain ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(36, 'Car ', 'Car ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(37, 'Coffee ', 'Coffee ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(38, 'ice Cream ', 'ice Cream ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(39, 'Mobile ', 'Mobile ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(40, 'Detergent ', 'Detergent ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(41, 'Face Wash ', 'Face Wash ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(42, 'Baby Toy ', 'Baby Toy ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(43, 'Skin Care Cream ', 'Skin Care Cream ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(44, 'Soap ', 'Soap ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(45, 'Tooth Paste ', 'Tooth Paste ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(46, 'Bathroom Fittings ', 'Bathroom Fittings ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(47, 'Washing Machine ', 'Washing Machine ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(48, 'Top Watch ', 'Top Watch ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(49, 'Microwave Oven ', 'Microwave Oven ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(50, 'Shoe ', 'Shoe ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(51, 'TV ', 'TV ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(52, 'Ketchup ', 'Ketchup ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(53, 'Motor Bike ', 'Motor Bike ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(54, 'Soft Drink ', 'Soft Drink ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(55, 'Noodle ', 'Noodle ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(56, 'Scooty ', 'Scooty ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(57, 'Shaving Cream ', 'Shaving Cream ', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(58, 'Top Online Retailers', 'Top Online Retailers', 0, '2018-07-01 00:00:00', '2018-07-01 00:00:00'),
(59, 'Fruit Juices', 'Food Products- fruit juices', 5, '2018-07-01 00:00:00', '2018-07-01 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categroy`
--
ALTER TABLE `categroy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categroy`
--
ALTER TABLE `categroy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
