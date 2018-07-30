-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3366
-- Generation Time: Jul 30, 2018 at 05:56 PM
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
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(225) NOT NULL,
  `state_id` int(11) NOT NULL,
  `state_name` varchar(225) NOT NULL,
  `local` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cities`
--

INSERT INTO `tbl_cities` (`id`, `city_name`, `state_id`, `state_name`, `local`) VALUES
(1, 'Adilabad', 32, 'Telangana', NULL),
(2, 'Agra', 34, 'Uttar Pradesh', NULL),
(3, 'Ahmed Nagar', 21, 'Maharashtra', NULL),
(4, 'Ahmedabad City', 12, 'Gujarat', NULL),
(5, 'Aizawl', 24, 'Mizoram', NULL),
(6, 'Ajmer', 29, 'Rajasthan', NULL),
(7, 'Akola', 21, 'Maharashtra', NULL),
(8, 'Aligarh', 34, 'Uttar Pradesh', NULL),
(9, 'Allahabad', 34, 'Uttar Pradesh', NULL),
(10, 'Alleppey', 18, 'Kerala', NULL),
(11, 'Almora', 35, 'Uttarakhand', NULL),
(12, 'Alwar', 29, 'Rajasthan', NULL),
(13, 'Alwaye', 18, 'Kerala', NULL),
(14, 'Amalapuram', 2, 'Andhra Pradesh', NULL),
(15, 'Ambala', 13, 'Haryana', NULL),
(16, 'Ambedkar Nagar', 34, 'Uttar Pradesh', NULL),
(17, 'Amravati', 21, 'Maharashtra', NULL),
(18, 'Amreli', 12, 'Gujarat', NULL),
(19, 'Amritsar', 28, 'Punjab', NULL),
(20, 'Anakapalle', 2, 'Andhra Pradesh', NULL),
(21, 'Anand', 12, 'Gujarat', NULL),
(22, 'Anantapur', 2, 'Andhra Pradesh', NULL),
(23, 'Ananthnag', 15, 'Jammu & Kashmir', NULL),
(24, 'Anna Road H.O', 31, 'Tamil Nadu', NULL),
(25, 'Arakkonam', 31, 'Tamil Nadu', NULL),
(26, 'Asansol', 36, 'West Bengal', NULL),
(27, 'Aska', 26, 'Odisha', NULL),
(28, 'Auraiya', 34, 'Uttar Pradesh', NULL),
(29, 'Aurangabad', 21, 'Maharashtra', NULL),
(30, 'Aurangabad(Bihar)', 5, 'Bihar', NULL),
(31, 'Azamgarh', 34, 'Uttar Pradesh', NULL),
(32, 'Bagalkot', 17, 'Karnataka', NULL),
(33, 'Bageshwar', 35, 'Uttarakhand', NULL),
(34, 'Bagpat', 34, 'Uttar Pradesh', NULL),
(35, 'Bahraich', 34, 'Uttar Pradesh', NULL),
(36, 'Balaghat', 20, 'Madhya Pradesh', NULL),
(37, 'Balangir', 26, 'Odisha', NULL),
(38, 'Balasore', 26, 'Odisha', NULL),
(39, 'Ballia', 34, 'Uttar Pradesh', NULL),
(40, 'Balrampur', 34, 'Uttar Pradesh', NULL),
(41, 'Banasanktha', 12, 'Gujarat', NULL),
(42, 'Banda', 34, 'Uttar Pradesh', NULL),
(43, 'Bandipur', 15, 'Jammu & Kashmir', NULL),
(44, 'Bankura', 36, 'West Bengal', NULL),
(45, 'Banswara', 29, 'Rajasthan', NULL),
(46, 'Barabanki', 34, 'Uttar Pradesh', NULL),
(47, 'Baramulla', 15, 'Jammu & Kashmir', NULL),
(48, 'Baran', 29, 'Rajasthan', NULL),
(49, 'Bardoli', 12, 'Gujarat', NULL),
(50, 'Bareilly', 34, 'Uttar Pradesh', NULL),
(51, 'Barmer', 29, 'Rajasthan', NULL),
(52, 'Barnala', 28, 'Punjab', NULL),
(53, 'Barpeta', 4, 'Assam', NULL),
(54, 'Bastar', 7, 'Chattisgarh', NULL),
(55, 'Basti', 34, 'Uttar Pradesh', NULL),
(56, 'Bathinda', 28, 'Punjab', NULL),
(57, 'Beed', 21, 'Maharashtra', NULL),
(58, 'Begusarai', 5, 'Bihar', NULL),
(59, 'Belgaum', 17, 'Karnataka', NULL),
(60, 'Bellary', 17, 'Karnataka', NULL),
(61, 'Bengaluru East', 17, 'Karnataka', NULL),
(62, 'Bengaluru South', 17, 'Karnataka', NULL),
(63, 'Bengaluru West', 17, 'Karnataka', NULL),
(64, 'Berhampur', 26, 'Odisha', NULL),
(65, 'Bhadrak', 26, 'Odisha', NULL),
(66, 'Bhagalpur', 5, 'Bihar', NULL),
(67, 'Bhandara', 21, 'Maharashtra', NULL),
(68, 'Bharatpur', 29, 'Rajasthan', NULL),
(69, 'Bharuch', 12, 'Gujarat', NULL),
(70, 'Bhavnagar', 12, 'Gujarat', NULL),
(71, 'Bhilwara', 29, 'Rajasthan', NULL),
(72, 'Bhimavaram', 2, 'Andhra Pradesh', NULL),
(73, 'Bhiwani', 13, 'Haryana', NULL),
(74, 'Bhojpur', 5, 'Bihar', NULL),
(75, 'Bhopal', 20, 'Madhya Pradesh', NULL),
(76, 'Bhubaneswar', 26, 'Odisha', NULL),
(77, 'Bidar', 17, 'Karnataka', NULL),
(78, 'Bijapur', 17, 'Karnataka', NULL),
(79, 'Bijnor', 34, 'Uttar Pradesh', NULL),
(80, 'Bikaner', 29, 'Rajasthan', NULL),
(81, 'Bilaspur', 7, 'Chattisgarh', NULL),
(82, 'Birbhum', 36, 'West Bengal', NULL),
(83, 'Bishnupur', 22, 'Manipur', NULL),
(84, 'Bongaigaon', 4, 'Assam', NULL),
(85, 'Budaun', 34, 'Uttar Pradesh', NULL),
(86, 'Budgam', 15, 'Jammu & Kashmir', NULL),
(87, 'Bulandshahr', 34, 'Uttar Pradesh', NULL),
(88, 'Buldhana', 21, 'Maharashtra', NULL),
(89, 'Bundi', 29, 'Rajasthan', NULL),
(90, 'Burdwan', 36, 'West Bengal', NULL),
(91, 'Cachar', 4, 'Assam', NULL),
(92, 'Calicut', 18, 'Kerala', NULL),
(93, 'Carnicobar', 1, 'Andaman & Nicobar Islands', NULL),
(94, 'Chamba', 14, 'Himachal Pradesh', NULL),
(95, 'Chamoli', 35, 'Uttarakhand', NULL),
(96, 'Champawat', 35, 'Uttarakhand', NULL),
(97, 'Champhai', 24, 'Mizoram', NULL),
(98, 'Chandauli', 34, 'Uttar Pradesh', NULL),
(99, 'Chandel', 22, 'Manipur', NULL),
(100, 'Chandigarh', 6, 'Chandigarh', NULL),
(101, 'Chandrapur', 21, 'Maharashtra', NULL),
(102, 'Changanacherry', 18, 'Kerala', NULL),
(103, 'Changlang', 3, 'Arunachal Pradesh', NULL),
(104, 'Channapatna', 17, 'Karnataka', NULL),
(105, 'Chengalpattu', 31, 'Tamil Nadu', NULL),
(106, 'Chennai City Central', 31, 'Tamil Nadu', NULL),
(107, 'Chennai City North', 31, 'Tamil Nadu', NULL),
(108, 'Chennai City South', 31, 'Tamil Nadu', NULL),
(109, 'Chhatarpur', 20, 'Madhya Pradesh', NULL),
(110, 'Chhindwara', 20, 'Madhya Pradesh', NULL),
(111, 'Chikmagalur', 17, 'Karnataka', NULL),
(112, 'Chikodi', 17, 'Karnataka', NULL),
(113, 'Chitradurga', 17, 'Karnataka', NULL),
(114, 'Chitrakoot', 34, 'Uttar Pradesh', NULL),
(115, 'Chittoor', 2, 'Andhra Pradesh', NULL),
(116, 'Chittorgarh', 29, 'Rajasthan', NULL),
(117, 'Churachandpur', 22, 'Manipur', NULL),
(118, 'Churu', 29, 'Rajasthan', NULL),
(119, 'Coimbatore', 31, 'Tamil Nadu', NULL),
(120, 'Contai', 36, 'West Bengal', NULL),
(121, 'Cooch Behar', 36, 'West Bengal', NULL),
(122, 'Cuddalore', 31, 'Tamil Nadu', NULL),
(123, 'Cuddapah', 2, 'Andhra Pradesh', NULL),
(124, 'Cuttack City', 26, 'Odisha', NULL),
(125, 'Cuttack North', 26, 'Odisha', NULL),
(126, 'Cuttack South', 26, 'Odisha', NULL),
(127, 'Dadra & Nagar Haveli', 8, 'Dadra & Nagar Haveli', NULL),
(128, 'Daman', 9, 'Daman & Diu', NULL),
(129, 'Darbhanga', 5, 'Bihar', NULL),
(130, 'Darjiling', 36, 'West Bengal', NULL),
(131, 'Darrang', 4, 'Assam', NULL),
(132, 'Dausa', 29, 'Rajasthan', NULL),
(133, 'Dehra Gopipur', 14, 'Himachal Pradesh', NULL),
(134, 'Dehradun', 35, 'Uttarakhand', NULL),
(135, 'Delhi', 10, 'Delhi', NULL),
(136, 'Deoria', 34, 'Uttar Pradesh', NULL),
(137, 'Dhalai', 33, 'Tripura', NULL),
(138, 'Dhanbad', 16, 'Jharkhand', NULL),
(139, 'Dharamsala', 14, 'Himachal Pradesh', NULL),
(140, 'Dharmapuri', 31, 'Tamil Nadu', NULL),
(141, 'Dharwad', 17, 'Karnataka', NULL),
(142, 'Dhemaji', 4, 'Assam', NULL),
(143, 'Dhenkanal', 26, 'Odisha', NULL),
(144, 'Dholpur', 29, 'Rajasthan', NULL),
(145, 'Dhubri', 4, 'Assam', NULL),
(146, 'Dhule', 21, 'Maharashtra', NULL),
(147, 'Dibang Valley', 3, 'Arunachal Pradesh', NULL),
(148, 'Dibrugarh', 4, 'Assam', NULL),
(149, 'Diglipur', 1, 'Andaman & Nicobar Islands', NULL),
(150, 'Dimapur', 25, 'Nagaland', NULL),
(151, 'Dindigul', 31, 'Tamil Nadu', NULL),
(152, 'Diu', 9, 'Daman & Diu', NULL),
(153, 'Doda', 15, 'Jammu & Kashmir', NULL),
(154, 'Dungarpur', 29, 'Rajasthan', NULL),
(155, 'Durg', 7, 'Chattisgarh', NULL),
(156, 'East Champaran', 5, 'Bihar', NULL),
(157, 'East Garo Hills', 23, 'Meghalaya', NULL),
(158, 'East Kameng', 3, 'Arunachal Pradesh', NULL),
(159, 'East Khasi Hills', 23, 'Meghalaya', NULL),
(160, 'East Siang', 3, 'Arunachal Pradesh', NULL),
(161, 'East Sikkim', 30, 'Sikkim', NULL),
(162, 'Eluru', 2, 'Andhra Pradesh', NULL),
(163, 'Ernakulam', 18, 'Kerala', NULL),
(164, 'Erode', 31, 'Tamil Nadu', NULL),
(165, 'Etah', 34, 'Uttar Pradesh', NULL),
(166, 'Etawah', 34, 'Uttar Pradesh', NULL),
(167, 'Faizabad', 34, 'Uttar Pradesh', NULL),
(168, 'Faridabad', 13, 'Haryana', NULL),
(169, 'Faridkot', 28, 'Punjab', NULL),
(170, 'Farrukhabad', 34, 'Uttar Pradesh', NULL),
(171, 'Fatehgarh Sahib', 28, 'Punjab', NULL),
(172, 'Fatehpur', 34, 'Uttar Pradesh', NULL),
(173, 'Fazilka', 28, 'Punjab', NULL),
(174, 'Ferrargunj', 1, 'Andaman & Nicobar Islands', NULL),
(175, 'Firozabad', 34, 'Uttar Pradesh', NULL),
(176, 'Firozpur', 28, 'Punjab', NULL),
(177, 'Gadag', 17, 'Karnataka', NULL),
(178, 'Gadchiroli', 21, 'Maharashtra', NULL),
(179, 'Gandhinagar', 12, 'Gujarat', NULL),
(180, 'Ganganagar', 29, 'Rajasthan', NULL),
(181, 'Gautam Buddha Nagar', 34, 'Uttar Pradesh', NULL),
(182, 'Gaya', 5, 'Bihar', NULL),
(183, 'Ghaziabad', 34, 'Uttar Pradesh', NULL),
(184, 'Ghazipur', 34, 'Uttar Pradesh', NULL),
(185, 'Giridih', 16, 'Jharkhand', NULL),
(186, 'Goa', 11, 'Goa', NULL),
(187, 'Goalpara', 4, 'Assam', NULL),
(188, 'Gokak', 17, 'Karnataka', NULL),
(189, 'Golaghat', 4, 'Assam', NULL),
(190, 'Gonda', 34, 'Uttar Pradesh', NULL),
(191, 'Gondal', 12, 'Gujarat', NULL),
(192, 'Gondia', 21, 'Maharashtra', NULL),
(193, 'Gorakhpur', 34, 'Uttar Pradesh', NULL),
(194, 'Gudivada', 2, 'Andhra Pradesh', NULL),
(195, 'Gudur', 2, 'Andhra Pradesh', NULL),
(196, 'Gulbarga', 17, 'Karnataka', NULL),
(197, 'Guna', 20, 'Madhya Pradesh', NULL),
(198, 'Guntur', 2, 'Andhra Pradesh', NULL),
(199, 'Gurdaspur', 28, 'Punjab', NULL),
(200, 'Gurugram', 13, 'Haryana', NULL),
(201, 'Gwalior', 20, 'Madhya Pradesh', NULL),
(202, 'Hailakandi', 4, 'Assam', NULL),
(203, 'Hamirpur (HP)', 14, 'Himachal Pradesh', NULL),
(204, 'Hamirpur (UP)', 34, 'Uttar Pradesh', NULL),
(205, 'Hanamkonda', 32, 'Telangana', NULL),
(206, 'Hanumangarh', 29, 'Rajasthan', NULL),
(207, 'Hardoi', 34, 'Uttar Pradesh', NULL),
(208, 'Haridwar', 35, 'Uttarakhand', NULL),
(209, 'Hassan', 17, 'Karnataka', NULL),
(210, 'Hathras', 34, 'Uttar Pradesh', NULL),
(211, 'Haveri', 17, 'Karnataka', NULL),
(212, 'Hazaribagh', 16, 'Jharkhand', NULL),
(213, 'Hindupur', 2, 'Andhra Pradesh', NULL),
(214, 'Hingoli', 21, 'Maharashtra', NULL),
(215, 'Hissar', 13, 'Haryana', NULL),
(216, 'Hooghly', 36, 'West Bengal', NULL),
(217, 'Hoshangabad', 20, 'Madhya Pradesh', NULL),
(218, 'Hoshiarpur', 28, 'Punjab', NULL),
(219, 'Howrah', 36, 'West Bengal', NULL),
(220, 'Hut Bay', 1, 'Andaman & Nicobar Islands', NULL),
(221, 'Hyderabad City', 32, 'Telangana', NULL),
(222, 'Hyderabad South East', 32, 'Telangana', NULL),
(223, 'Idukki', 18, 'Kerala', NULL),
(224, 'Imphal East', 22, 'Manipur', NULL),
(225, 'Imphal West', 22, 'Manipur', NULL),
(226, 'Indore City', 20, 'Madhya Pradesh', NULL),
(227, 'Indore Moffusil', 20, 'Madhya Pradesh', NULL),
(228, 'Irinjalakuda', 18, 'Kerala', NULL),
(229, 'Jabalpur', 20, 'Madhya Pradesh', NULL),
(230, 'Jaintia Hills', 23, 'Meghalaya', NULL),
(231, 'Jaipur', 29, 'Rajasthan', NULL),
(232, 'Jaisalmer', 29, 'Rajasthan', NULL),
(233, 'Jalandhar', 28, 'Punjab', NULL),
(234, 'Jalaun', 34, 'Uttar Pradesh', NULL),
(235, 'Jalgaon', 21, 'Maharashtra', NULL),
(236, 'Jalna', 21, 'Maharashtra', NULL),
(237, 'Jalor', 29, 'Rajasthan', NULL),
(238, 'Jalpaiguri', 36, 'West Bengal', NULL),
(239, 'Jammu', 15, 'Jammu & Kashmir', NULL),
(240, 'Jamnagar', 12, 'Gujarat', NULL),
(241, 'Jaunpur', 34, 'Uttar Pradesh', NULL),
(242, 'Jhalawar', 29, 'Rajasthan', NULL),
(243, 'Jhansi', 34, 'Uttar Pradesh', NULL),
(244, 'Jhujhunu', 29, 'Rajasthan', NULL),
(245, 'Jodhpur', 29, 'Rajasthan', NULL),
(246, 'Jorhat', 4, 'Assam', NULL),
(247, 'Junagadh', 12, 'Gujarat', NULL),
(248, 'Jyotiba Phule Nagar', 34, 'Uttar Pradesh', NULL),
(249, 'Kakinada', 2, 'Andhra Pradesh', NULL),
(250, 'Kalahandi', 26, 'Odisha', NULL),
(251, 'Kamrup', 4, 'Assam', NULL),
(252, 'Kanchipuram', 31, 'Tamil Nadu', NULL),
(253, 'Kannauj', 34, 'Uttar Pradesh', NULL),
(254, 'Kanniyakumari', 31, 'Tamil Nadu', NULL),
(255, 'Kannur', 18, 'Kerala', NULL),
(256, 'Kanpur Dehat', 34, 'Uttar Pradesh', NULL),
(257, 'Kanpur Nagar', 34, 'Uttar Pradesh', NULL),
(258, 'Kapurthala', 28, 'Punjab', NULL),
(259, 'Karaikal', 27, 'Poducherry', NULL),
(260, 'Karaikudi', 31, 'Tamil Nadu', NULL),
(261, 'Karauli', 29, 'Rajasthan', NULL),
(262, 'Karbi Anglong', 4, 'Assam', NULL),
(263, 'Kargil', 15, 'Jammu & Kashmir', NULL),
(264, 'Karimganj', 4, 'Assam', NULL),
(265, 'Karimnagar', 32, 'Telangana', NULL),
(266, 'Karnal', 13, 'Haryana', NULL),
(267, 'Karur', 31, 'Tamil Nadu', NULL),
(268, 'Karwar', 17, 'Karnataka', NULL),
(269, 'Kasaragod', 18, 'Kerala', NULL),
(270, 'Kathua', 15, 'Jammu & Kashmir', NULL),
(271, 'Kaushambi', 34, 'Uttar Pradesh', NULL),
(272, 'Keonjhar', 26, 'Odisha', NULL),
(273, 'Khammam (AP)', 2, 'Andhra Pradesh', NULL),
(274, 'Khammam (TL)', 32, 'Telangana', NULL),
(275, 'Khandwa', 20, 'Madhya Pradesh', NULL),
(276, 'Kheda', 12, 'Gujarat', NULL),
(277, 'Kheri', 34, 'Uttar Pradesh', NULL),
(278, 'Kiphire', 25, 'Nagaland', NULL),
(279, 'Kodagu', 17, 'Karnataka', NULL),
(280, 'Kohima', 25, 'Nagaland', NULL),
(281, 'Kokrajhar', 4, 'Assam', NULL),
(282, 'Kolar', 17, 'Karnataka', NULL),
(283, 'Kolasib', 24, 'Mizoram', NULL),
(284, 'Kolhapur', 21, 'Maharashtra', NULL),
(285, 'Kolkata', 36, 'West Bengal', NULL),
(286, 'Koraput', 26, 'Odisha', NULL),
(287, 'Kota', 29, 'Rajasthan', NULL),
(288, 'Kottayam', 18, 'Kerala', NULL),
(289, 'Kovilpatti', 31, 'Tamil Nadu', NULL),
(290, 'Krishnagiri', 31, 'Tamil Nadu', NULL),
(291, 'Kulgam', 15, 'Jammu & Kashmir', NULL),
(292, 'Kumbakonam', 31, 'Tamil Nadu', NULL),
(293, 'Kupwara', 15, 'Jammu & Kashmir', NULL),
(294, 'Kurnool', 2, 'Andhra Pradesh', NULL),
(295, 'Kurukshetra', 13, 'Haryana', NULL),
(296, 'Kurung Kumey', 3, 'Arunachal Pradesh', NULL),
(297, 'Kushinagar', 34, 'Uttar Pradesh', NULL),
(298, 'Kutch', 12, 'Gujarat', NULL),
(299, 'Lakhimpur', 4, 'Assam', NULL),
(300, 'Lakshadweep', 19, 'Lakshadweep', NULL),
(301, 'Lalitpur', 34, 'Uttar Pradesh', NULL),
(302, 'Latur', 21, 'Maharashtra', NULL),
(303, 'Lawngtlai', 24, 'Mizoram', NULL),
(304, 'Leh', 15, 'Jammu & Kashmir', NULL),
(305, 'Lohit', 3, 'Arunachal Pradesh', NULL),
(306, 'Longleng', 25, 'Nagaland', NULL),
(307, 'Lower Subansiri', 3, 'Arunachal Pradesh', NULL),
(308, 'Lucknow', 34, 'Uttar Pradesh', NULL),
(309, 'Ludhiana', 28, 'Punjab', NULL),
(310, 'Lunglei', 24, 'Mizoram', NULL),
(311, 'Machilipatnam', 2, 'Andhra Pradesh', NULL),
(312, 'Madhubani', 5, 'Bihar', NULL),
(313, 'Madurai', 31, 'Tamil Nadu', NULL),
(314, 'Mahabubnagar', 32, 'Telangana', NULL),
(315, 'Maharajganj', 34, 'Uttar Pradesh', NULL),
(316, 'Mahesana', 12, 'Gujarat', NULL),
(317, 'Mahoba', 34, 'Uttar Pradesh', NULL),
(318, 'Mainpuri', 34, 'Uttar Pradesh', NULL),
(319, 'Malda', 36, 'West Bengal', NULL),
(320, 'Mammit', 24, 'Mizoram', NULL),
(321, 'Mandi', 14, 'Himachal Pradesh', NULL),
(322, 'Mandsaur', 20, 'Madhya Pradesh', NULL),
(323, 'Mandya', 17, 'Karnataka', NULL),
(324, 'Mangalore', 17, 'Karnataka', NULL),
(325, 'Manjeri', 18, 'Kerala', NULL),
(326, 'Mansa', 28, 'Punjab', NULL),
(327, 'Marigaon', 4, 'Assam', NULL),
(328, 'Mathura', 34, 'Uttar Pradesh', NULL),
(329, 'Mau', 34, 'Uttar Pradesh', NULL),
(330, 'Mavelikara', 18, 'Kerala', NULL),
(331, 'Mayabander', 1, 'Andaman & Nicobar Islands', NULL),
(332, 'Mayiladuthurai', 31, 'Tamil Nadu', NULL),
(333, 'Mayurbhanj', 26, 'Odisha', NULL),
(334, 'Medak', 32, 'Telangana', NULL),
(335, 'Meerut', 34, 'Uttar Pradesh', NULL),
(336, 'Meghalaya', 23, 'Meghalaya', NULL),
(337, 'Midnapore', 36, 'West Bengal', NULL),
(338, 'Mirzapur', 34, 'Uttar Pradesh', NULL),
(339, 'Moga', 28, 'Punjab', NULL),
(340, 'Mohali', 28, 'Punjab', NULL),
(341, 'Mokokchung', 25, 'Nagaland', NULL),
(342, 'Mon', 25, 'Nagaland', NULL),
(343, 'Monghyr', 5, 'Bihar', NULL),
(344, 'Moradabad', 34, 'Uttar Pradesh', NULL),
(345, 'Morena', 20, 'Madhya Pradesh', NULL),
(346, 'Muktsar', 28, 'Punjab', NULL),
(347, 'Mumbai', 21, 'Maharashtra', NULL),
(348, 'Murshidabad', 36, 'West Bengal', NULL),
(349, 'Muzaffarnagar', 34, 'Uttar Pradesh', NULL),
(350, 'Muzaffarpur', 5, 'Bihar', NULL),
(351, 'Mysore', 17, 'Karnataka', NULL),
(352, 'Nadia', 36, 'West Bengal', NULL),
(353, 'Nagaon', 4, 'Assam', NULL),
(354, 'Nagapattinam', 31, 'Tamil Nadu', NULL),
(355, 'Nagaur', 29, 'Rajasthan', NULL),
(356, 'Nagpur', 21, 'Maharashtra', NULL),
(357, 'Nainital', 35, 'Uttarakhand', NULL),
(358, 'Nalanda', 5, 'Bihar', NULL),
(359, 'Nalbari', 4, 'Assam', NULL),
(360, 'Nalgonda', 32, 'Telangana', NULL),
(361, 'Namakkal', 31, 'Tamil Nadu', NULL),
(362, 'Nancorie', 1, 'Andaman & Nicobar Islands', NULL),
(363, 'Nancowrie', 1, 'Andaman & Nicobar Islands', NULL),
(364, 'Nanded', 21, 'Maharashtra', NULL),
(365, 'Nandurbar', 21, 'Maharashtra', NULL),
(366, 'Nandyal', 2, 'Andhra Pradesh', NULL),
(367, 'Nanjangud', 17, 'Karnataka', NULL),
(368, 'Narasaraopet', 2, 'Andhra Pradesh', NULL),
(369, 'Nashik', 21, 'Maharashtra', NULL),
(370, 'Navsari', 12, 'Gujarat', NULL),
(371, 'Nawadha', 5, 'Bihar', NULL),
(372, 'Nawanshahr', 28, 'Punjab', NULL),
(373, 'Nellore', 2, 'Andhra Pradesh', NULL),
(374, 'Nilgiris', 31, 'Tamil Nadu', NULL),
(375, 'Nizamabad', 32, 'Telangana', NULL),
(376, 'North 24 Parganas', 36, 'West Bengal', NULL),
(377, 'North Cachar Hills', 4, 'Assam', NULL),
(378, 'North Dinajpur', 36, 'West Bengal', NULL),
(379, 'North Sikkim', 30, 'Sikkim', NULL),
(380, 'North Tripura', 33, 'Tripura', NULL),
(381, 'Osmanabad', 21, 'Maharashtra', NULL),
(382, 'Ottapalam', 18, 'Kerala', NULL),
(383, 'Palamau', 16, 'Jharkhand', NULL),
(384, 'Palghat', 18, 'Kerala', NULL),
(385, 'Pali', 29, 'Rajasthan', NULL),
(386, 'Panchmahals', 12, 'Gujarat', NULL),
(387, 'Papum Pare', 3, 'Arunachal Pradesh', NULL),
(388, 'Parbhani', 21, 'Maharashtra', NULL),
(389, 'Parvathipuram', 2, 'Andhra Pradesh', NULL),
(390, 'Patan', 12, 'Gujarat', NULL),
(391, 'Pathanamthitta', 18, 'Kerala', NULL),
(392, 'Patiala', 28, 'Punjab', NULL),
(393, 'Patna', 5, 'Bihar', NULL),
(394, 'Pattukottai', 31, 'Tamil Nadu', NULL),
(395, 'Pauri Garhwal', 35, 'Uttarakhand', NULL),
(396, 'Peddapalli', 32, 'Telangana', NULL),
(397, 'Peren', 25, 'Nagaland', NULL),
(398, 'Phek', 25, 'Nagaland', NULL),
(399, 'Phulbani', 26, 'Odisha', NULL),
(400, 'Pilibhit', 34, 'Uttar Pradesh', NULL),
(401, 'Pithoragarh', 35, 'Uttarakhand', NULL),
(402, 'Poducherry (PD)', 27, 'Poducherry', NULL),
(403, 'Poducherry (TN)', 31, 'Tamil Nadu', NULL),
(404, 'Pollachi', 31, 'Tamil Nadu', NULL),
(405, 'Poonch', 15, 'Jammu & Kashmir', NULL),
(406, 'Porbandar', 12, 'Gujarat', NULL),
(407, 'Port Blair', 1, 'Andaman & Nicobar Islands', NULL),
(408, 'Prakasam', 2, 'Andhra Pradesh', NULL),
(409, 'Pratapgarh', 34, 'Uttar Pradesh', NULL),
(410, 'Proddatur', 2, 'Andhra Pradesh', NULL),
(411, 'Pudukkottai', 31, 'Tamil Nadu', NULL),
(412, 'Pulwama', 15, 'Jammu & Kashmir', NULL),
(413, 'Pune', 21, 'Maharashtra', NULL),
(414, 'Puri', 26, 'Odisha', NULL),
(415, 'Purnea', 5, 'Bihar', NULL),
(416, 'Purulia', 36, 'West Bengal', NULL),
(417, 'Puttur', 17, 'Karnataka', NULL),
(418, 'Quilon', 18, 'Kerala', NULL),
(419, 'Raebareli', 34, 'Uttar Pradesh', NULL),
(420, 'Raichur', 17, 'Karnataka', NULL),
(421, 'Raigarh (CT)', 7, 'Chattisgarh', NULL),
(422, 'Raigarh (MH)', 21, 'Maharashtra', NULL),
(423, 'Raipur', 7, 'Chattisgarh', NULL),
(424, 'Rajahmundry', 2, 'Andhra Pradesh', NULL),
(425, 'Rajauri', 15, 'Jammu & Kashmir', NULL),
(426, 'Rajkot', 12, 'Gujarat', NULL),
(427, 'Rajsamand', 29, 'Rajasthan', NULL),
(428, 'Ramanathapuram', 31, 'Tamil Nadu', NULL),
(429, 'Rampur', 34, 'Uttar Pradesh', NULL),
(430, 'Rampur Bushahr', 14, 'Himachal Pradesh', NULL),
(431, 'Ranchi', 16, 'Jharkhand', NULL),
(432, 'Rangat', 1, 'Andaman & Nicobar Islands', NULL),
(433, 'Ratlam', 20, 'Madhya Pradesh', NULL),
(434, 'Ratnagiri', 21, 'Maharashtra', NULL),
(435, 'Reasi', 15, 'Jammu & Kashmir', NULL),
(436, 'Rewa', 20, 'Madhya Pradesh', NULL),
(437, 'Ri Bhoi', 23, 'Meghalaya', NULL),
(438, 'Rohtak', 13, 'Haryana', NULL),
(439, 'Rohtas', 5, 'Bihar', NULL),
(440, 'Ropar', 28, 'Punjab', NULL),
(441, 'Rudraprayag', 35, 'Uttarakhand', NULL),
(442, 'Rupnagar', 28, 'Punjab', NULL),
(443, 'Sabarkantha', 12, 'Gujarat', NULL),
(444, 'Sagar', 20, 'Madhya Pradesh', NULL),
(445, 'Saharanpur', 34, 'Uttar Pradesh', NULL),
(446, 'Saharsa', 5, 'Bihar', NULL),
(447, 'Salem East', 31, 'Tamil Nadu', NULL),
(448, 'Salem West', 31, 'Tamil Nadu', NULL),
(449, 'Samastipur', 5, 'Bihar', NULL),
(450, 'Sambalpur', 26, 'Odisha', NULL),
(451, 'Sangareddy', 32, 'Telangana', NULL),
(452, 'Sangli', 21, 'Maharashtra', NULL),
(453, 'Sangrur', 28, 'Punjab', NULL),
(454, 'Sant Kabir Nagar', 34, 'Uttar Pradesh', NULL),
(455, 'Sant Ravidas Nagar', 34, 'Uttar Pradesh', NULL),
(456, 'Santhal Parganas', 16, 'Jharkhand', NULL),
(457, 'Saran', 5, 'Bihar', NULL),
(458, 'Satara', 21, 'Maharashtra', NULL),
(459, 'Sawai Madhopur', 29, 'Rajasthan', NULL),
(460, 'Secunderabad', 32, 'Telangana', NULL),
(461, 'Sehore', 20, 'Madhya Pradesh', NULL),
(462, 'Senapati', 22, 'Manipur', NULL),
(463, 'Serchhip', 24, 'Mizoram', NULL),
(464, 'Shahdol', 20, 'Madhya Pradesh', NULL),
(465, 'Shahjahanpur', 34, 'Uttar Pradesh', NULL),
(466, 'Shimla', 14, 'Himachal Pradesh', NULL),
(467, 'Shimoga', 17, 'Karnataka', NULL),
(468, 'Shrawasti', 34, 'Uttar Pradesh', NULL),
(469, 'Sibsagar', 4, 'Assam', NULL),
(470, 'Siddharthnagar', 34, 'Uttar Pradesh', NULL),
(471, 'Sikar', 29, 'Rajasthan', NULL),
(472, 'Sindhudurg', 21, 'Maharashtra', NULL),
(473, 'Singhbhum', 16, 'Jharkhand', NULL),
(474, 'Sirohi', 29, 'Rajasthan', NULL),
(475, 'Sirsi', 17, 'Karnataka', NULL),
(476, 'Sitamarhi', 5, 'Bihar', NULL),
(477, 'Sitapur', 34, 'Uttar Pradesh', NULL),
(478, 'Sivaganga', 31, 'Tamil Nadu', NULL),
(479, 'Siwan', 5, 'Bihar', NULL),
(480, 'Solan', 14, 'Himachal Pradesh', NULL),
(481, 'Solapur', 21, 'Maharashtra', NULL),
(482, 'Sonbhadra', 34, 'Uttar Pradesh', NULL),
(483, 'Sonepat', 13, 'Haryana', NULL),
(484, 'Sonitpur', 4, 'Assam', NULL),
(485, 'South 24 Parganas', 36, 'West Bengal', NULL),
(486, 'South Dinajpur', 36, 'West Bengal', NULL),
(487, 'South Garo Hills', 23, 'Meghalaya', NULL),
(488, 'South Sikkim', 30, 'Sikkim', NULL),
(489, 'South Tripura', 33, 'Tripura', NULL),
(490, 'Srikakulam', 2, 'Andhra Pradesh', NULL),
(491, 'Srinagar', 15, 'Jammu & Kashmir', NULL),
(492, 'Srirangam', 31, 'Tamil Nadu', NULL),
(493, 'Sultanpur', 34, 'Uttar Pradesh', NULL),
(494, 'Sundargarh', 26, 'Odisha', NULL),
(495, 'Surat', 12, 'Gujarat', NULL),
(496, 'Surendranagar', 12, 'Gujarat', NULL),
(497, 'Suryapet', 32, 'Telangana', NULL),
(498, 'Tadepalligudem', 2, 'Andhra Pradesh', NULL),
(499, 'Tambaram', 31, 'Tamil Nadu', NULL),
(500, 'Tamenglong', 22, 'Manipur', NULL),
(501, 'Tamluk', 36, 'West Bengal', NULL),
(502, 'Tarn Taran', 28, 'Punjab', NULL),
(503, 'Tawang', 3, 'Arunachal Pradesh', NULL),
(504, 'Tehri Garhwal', 35, 'Uttarakhand', NULL),
(505, 'Tenali', 2, 'Andhra Pradesh', NULL),
(506, 'Thalassery', 18, 'Kerala', NULL),
(507, 'Thane', 21, 'Maharashtra', NULL),
(508, 'Thanjavur', 31, 'Tamil Nadu', NULL),
(509, 'Theni', 31, 'Tamil Nadu', NULL),
(510, 'Thoubal', 22, 'Manipur', NULL),
(511, 'Tinsukia', 4, 'Assam', NULL),
(512, 'Tirap', 3, 'Arunachal Pradesh', NULL),
(513, 'Tiruchirapalli', 31, 'Tamil Nadu', NULL),
(514, 'Tirunelveli', 31, 'Tamil Nadu', NULL),
(515, 'Tirupati', 2, 'Andhra Pradesh', NULL),
(516, 'Tirupattur', 31, 'Tamil Nadu', NULL),
(517, 'Tirupur', 31, 'Tamil Nadu', NULL),
(518, 'Tirur', 18, 'Kerala', NULL),
(519, 'Tiruvalla', 18, 'Kerala', NULL),
(520, 'Tiruvannamalai', 31, 'Tamil Nadu', NULL),
(521, 'Tonk', 29, 'Rajasthan', NULL),
(522, 'Trichur', 18, 'Kerala', NULL),
(523, 'Trivandrum North', 18, 'Kerala', NULL),
(524, 'Trivandrum South', 18, 'Kerala', NULL),
(525, 'Tuensang', 25, 'Nagaland', NULL),
(526, 'Tumkur', 17, 'Karnataka', NULL),
(527, 'Tuticorin', 31, 'Tamil Nadu', NULL),
(528, 'Udaipur', 29, 'Rajasthan', NULL),
(529, 'Udham Singh Nagar', 35, 'Uttarakhand', NULL),
(530, 'Udhampur', 15, 'Jammu & Kashmir', NULL),
(531, 'Udupi', 17, 'Karnataka', NULL),
(532, 'Ujjain', 20, 'Madhya Pradesh', NULL),
(533, 'Ukhrul', 22, 'Manipur', NULL),
(534, 'Una', 14, 'Himachal Pradesh', NULL),
(535, 'Unnao', 34, 'Uttar Pradesh', NULL),
(536, 'Upper Siang', 3, 'Arunachal Pradesh', NULL),
(537, 'Upper Subansiri', 3, 'Arunachal Pradesh', NULL),
(538, 'Uttarkashi', 35, 'Uttarakhand', NULL),
(539, 'Vadakara', 18, 'Kerala', NULL),
(540, 'Vadodara East', 12, 'Gujarat', NULL),
(541, 'Vadodara West', 12, 'Gujarat', NULL),
(542, 'Vaishali', 5, 'Bihar', NULL),
(543, 'Valsad', 12, 'Gujarat', NULL),
(544, 'Varanasi', 34, 'Uttar Pradesh', NULL),
(545, 'Vellore', 31, 'Tamil Nadu', NULL),
(546, 'Vidisha', 20, 'Madhya Pradesh', NULL),
(547, 'Vijayawada', 2, 'Andhra Pradesh', NULL),
(548, 'Virudhunagar', 31, 'Tamil Nadu', NULL),
(549, 'Visakhapatnam', 2, 'Andhra Pradesh', NULL),
(550, 'Vizianagaram', 2, 'Andhra Pradesh', NULL),
(551, 'Vriddhachalam', 31, 'Tamil Nadu', NULL),
(552, 'Wanaparthy', 32, 'Telangana', NULL),
(553, 'Warangal', 32, 'Telangana', NULL),
(554, 'Wardha', 21, 'Maharashtra', NULL),
(555, 'Washim', 21, 'Maharashtra', NULL),
(556, 'West Champaran', 5, 'Bihar', NULL),
(557, 'West Garo Hills', 23, 'Meghalaya', NULL),
(558, 'West Kameng', 3, 'Arunachal Pradesh', NULL),
(559, 'West Khasi Hills', 23, 'Meghalaya', NULL),
(560, 'West Siang', 3, 'Arunachal Pradesh', NULL),
(561, 'West Sikkim', 30, 'Sikkim', NULL),
(562, 'West Tripura', 33, 'Tripura', NULL),
(563, 'Wokha', 25, 'Nagaland', NULL),
(564, 'Yavatmal', 21, 'Maharashtra', NULL),
(565, 'Zunhebotto', 25, 'Nagaland', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cities`
--
ALTER TABLE `tbl_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;