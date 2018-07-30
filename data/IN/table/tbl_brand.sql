-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3366
-- Generation Time: Jul 30, 2018 at 07:17 PM
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
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `name`, `category_id`) VALUES
(1, 'dasd', 1),
(2, 'Pure Life', 1),
(3, 'Manikchand Oxyrich', 1),
(4, 'Tata Water Plus', 1),
(5, 'Qua', 1),
(6, 'Kingfisher', 1),
(7, 'Himalayan', 1),
(8, 'Bailley', 1),
(9, 'Aquafina', 1),
(10, 'Kinley', 1),
(11, 'Bisleri', 1),
(12, 'Acer', 2),
(13, 'alcatel', 2),
(14, 'Allview', 2),
(15, 'Amazon', 2),
(16, 'Amoi', 2),
(17, 'Apple', 2),
(18, 'Archos', 2),
(19, 'Asus', 2),
(20, 'AT&T', 2),
(21, 'Benefon', 2),
(22, 'BenQ', 2),
(23, 'BenSiemens', 2),
(24, 'Bird', 2),
(25, 'BlackBerry ', 2),
(26, 'Blackview', 2),
(27, 'BLU ', 2),
(28, 'Bosch', 2),
(29, 'BQ ', 2),
(30, 'Casio', 2),
(31, 'Cat ', 2),
(32, 'Celkon', 2),
(33, 'Chea ', 2),
(34, 'Coolpad', 2),
(35, 'delDell ', 2),
(36, 'emporiEmporia', 2),
(37, 'energizeEnergizer ', 2),
(38, 'ericssoEricsson', 2),
(39, 'eteEten ', 2),
(40, 'fujitsu_siemenFujitsu Siemens', 2),
(41, 'garmin_asuGarmiAsus ', 2),
(42, 'gigabytGigabyte', 2),
(43, 'gioneGionee ', 2),
(44, 'googlGoogle', 2),
(45, 'haieHaier ', 2),
(46, 'hHP', 2),
(47, 'htHTC ', 2),
(48, 'huaweHuawei', 2),
(49, 'Icemobile ', 2),
(50, 'Innostream', 2),
(51, 'NQ ', 2),
(52, 'ntex', 2),
(53, 'olla ', 2),
(54, 'Karbonn', 2),
(55, 'Kyocera ', 2),
(56, 'Lava', 2),
(57, 'LeEco ', 2),
(58, 'Lenovo', 2),
(59, 'LG ', 2),
(60, 'Maxon', 2),
(61, 'Maxwest ', 2),
(62, 'Meizu', 2),
(63, 'Micromax ', 2),
(64, 'Microsoft', 2),
(65, 'Mitac ', 2),
(66, 'Mitsubishi', 2),
(67, 'Modu ', 2),
(68, 'Motorola', 2),
(69, 'MWg ', 2),
(70, 'NEC', 2),
(71, 'Neonode ', 2),
(72, 'NIU', 2),
(73, 'Nokia ', 2),
(74, 'Nvidia', 2),
(75, 'OnePlus', 2),
(76, 'Oppo ', 2),
(77, 'Orange', 2),
(78, 'Palm ', 2),
(79, 'Panasonic', 2),
(80, 'Pantech ', 2),
(81, 'Parla', 2),
(82, 'Philips ', 2),
(83, 'Plum', 2),
(84, 'Posh ', 2),
(85, 'Prestigio', 2),
(86, 'QMobile ', 2),
(87, 'Qtek', 2),
(88, 'Sagem ', 2),
(89, 'Samsung', 2),
(90, 'Sendo ', 2),
(91, 'Sewon', 2),
(92, 'Sharp ', 2),
(93, 'Siemens', 2),
(94, 'Sonim ', 2),
(95, 'Sony', 2),
(96, 'Sony Ericsson ', 2),
(97, 'Spice', 2),
(98, 'Mobile ', 2),
(99, 'Tel.Me.', 2),
(100, 'Telit ', 2),
(101, 'Thuraya', 2),
(102, 'Toshiba ', 2),
(103, 'Unnecto', 2),
(104, 'Vertu ', 2),
(105, 'verykool', 2),
(106, 'vivo ', 2),
(107, 'VK Mobile', 2),
(108, 'Vodafone ', 2),
(109, 'Wiko', 2),
(110, 'WND ', 2),
(111, 'XCute', 2),
(112, 'Xiaomi ', 2),
(113, 'XOLO', 2),
(114, 'Yezz ', 2),
(115, 'Yota', 2),
(116, 'YU ', 2),
(117, 'ZTE', 2),
(118, 'Acer', 3),
(119, 'Amkette', 3),
(120, 'Beetel', 3),
(121, 'Bharat Electronics', 3),
(122, 'BPL', 3),
(123, 'Celkon', 3),
(124, 'Electronics Corporation of India', 3),
(125, 'Godrej', 3),
(126, 'HCL', 3),
(127, 'Havells', 3),
(128, 'IBALL', 3),
(129, 'Intex', 3),
(130, 'Karbonn', 3),
(131, 'Kenstar', 3),
(132, 'Micromax', 3),
(133, 'Myzornis', 3),
(134, 'Moser Baer', 3),
(135, 'Notion Ink', 3),
(136, 'Onida', 3),
(137, 'Surya Roshni Limited', 3),
(138, 'Simmtronics', 3),
(139, 'Sterlite Technologies', 3),
(140, 'Voltas', 3),
(141, 'Videocon', 3),
(142, 'Videotex', 3),
(143, 'Wipro', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
