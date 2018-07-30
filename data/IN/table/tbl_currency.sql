-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3366
-- Generation Time: Jul 30, 2018 at 06:48 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 5.6.36-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `symfony3`
--

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `status`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0),
(2, 'Dollars', 'USD', '$', 0),
(3, 'Leke', 'ALL', 'Lek', 0),
(4, 'Dollars', 'USD', '$', 0),
(5, 'Leke', 'ALL', 'Lek', 0),
(6, 'Dollars', 'USD', '$', 0),
(7, 'Pesos', 'ARS', '$', 0),
(8, 'Guilders', 'AWG', 'ƒ', 0),
(9, 'Dollars', 'AUD', '$', 0),
(10, 'Leke', 'ALL', 'Lek', 0),
(11, 'Dollars', 'USD', '$', 0),
(12, 'Pesos', 'ARS', '$', 0),
(13, 'Guilders', 'AWG', 'ƒ', 0),
(14, 'Dollars', 'AUD', '$', 0),
(15, 'Dollars', 'BSD', '$', 0),
(16, 'Dollars', 'BBD', '$', 0),
(17, 'Rubles', 'BYR', 'p.', 0),
(18, 'Euro', 'EUR', '€', 0),
(19, 'Dollars', 'BZD', 'BZ$', 0),
(20, 'Dollars', 'BMD', '$', 0),
(21, 'Bolivianos', 'BOB', '$b', 0),
(22, 'Convertible Marka', 'BAM', 'KM', 0),
(23, 'Pula', 'BWP', 'P', 0),
(24, 'Leke', 'ALL', 'Lek', 0),
(25, 'Dollars', 'USD', '$', 0),
(26, 'Pesos', 'ARS', '$', 0),
(27, 'Guilders', 'AWG', 'ƒ', 0),
(28, 'Dollars', 'AUD', '$', 0),
(29, 'Dollars', 'BSD', '$', 0),
(30, 'Dollars', 'BBD', '$', 0),
(31, 'Rubles', 'BYR', 'p.', 0),
(32, 'Euro', 'EUR', '€', 0),
(33, 'Dollars', 'BZD', 'BZ$', 0),
(34, 'Dollars', 'BMD', '$', 0),
(35, 'Bolivianos', 'BOB', '$b', 0),
(36, 'Convertible Marka', 'BAM', 'KM', 0),
(37, 'Pula', 'BWP', 'P', 0),
(38, 'Reais', 'BRL', 'R$', 0),
(39, 'Pounds', 'GBP', '£', 0),
(40, 'Dollars', 'BND', '$', 0),
(41, 'Leke', 'ALL', 'Lek', 0),
(42, 'Dollars', 'USD', '$', 0),
(43, 'Pesos', 'ARS', '$', 0),
(44, 'Guilders', 'AWG', 'ƒ', 0),
(45, 'Dollars', 'AUD', '$', 0),
(46, 'Dollars', 'BSD', '$', 0),
(47, 'Dollars', 'BBD', '$', 0),
(48, 'Rubles', 'BYR', 'p.', 0),
(49, 'Euro', 'EUR', '€', 0),
(50, 'Dollars', 'BZD', 'BZ$', 0),
(51, 'Dollars', 'BMD', '$', 0),
(52, 'Bolivianos', 'BOB', '$b', 0),
(53, 'Convertible Marka', 'BAM', 'KM', 0),
(54, 'Pula', 'BWP', 'P', 0),
(55, 'Reais', 'BRL', 'R$', 0),
(56, 'Pounds', 'GBP', '£', 0),
(57, 'Dollars', 'BND', '$', 0),
(58, 'Dollars', 'CAD', '$', 0),
(59, 'Dollars', 'KYD', '$', 0),
(60, 'Pesos', 'CLP', '$', 0),
(61, 'Yuan Renminbi', 'CNY', '¥', 0),
(62, 'Pesos', 'COP', '$', 0),
(63, 'Rupees', 'INR', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
