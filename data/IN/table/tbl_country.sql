-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost:3366
-- Generation Time: Jul 30, 2018 at 05:50 PM
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
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `nationality` varchar(150) DEFAULT NULL,
  `iso_code` varchar(3) DEFAULT NULL COMMENT 'not in use',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `active_flag` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `name`, `nationality`, `iso_code`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`, `active_flag`) VALUES
(1, 'Andorra', 'Andorran', 'AD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(2, 'United Arab Emirates', 'United Arab Emiratesan', 'AE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(3, 'Afghanistan', 'Afghanistanan', 'AF', '2010-09-17 11:01:32', '2011-02-01 13:20:50', 1, 2, NULL, 'Y'),
(4, 'Antigua and Barbuda', 'Antigua and Barbudan', 'AG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(5, 'Albania', 'Albanian', 'AL', '2010-09-17 11:01:32', '2010-12-15 10:24:30', 1, 2, NULL, 'Y'),
(6, 'Armenia', 'Armenian', 'AM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(7, 'Angola', 'Angolan', 'AO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(8, 'Argentina', 'Argentinan', 'AR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(9, 'Austria', 'Austrian', 'AT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(10, 'Australia', 'Australian', 'AU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(11, 'Azerbaijan', 'Azerbaijanan', 'AZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(12, 'Bosnia and Herzegovina', 'Bosnia and Herzegovinan', 'BA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(13, 'Barbados', 'Barbadosan', 'BB', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(14, 'Bangladesh', 'Bangladeshan', 'BD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(15, 'Belgium', 'Belgiuman', 'BE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(16, 'Burkina Faso', 'Burkina Fasoan', 'BF', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(17, 'Bulgaria', 'Bulgarian', 'BG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(18, 'Bahrain', 'Bahrainan', 'BH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(19, 'Burundi', 'Burundian', 'BI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(20, 'Benin', 'Beninan', 'BJ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(21, 'Brunei', 'Bruneian', 'BN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(22, 'Bolivia', 'Bolivian', 'BO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(23, 'Brazil', 'Brazilan', 'BR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(24, 'Bahamas', 'Bahamasan', 'BS', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(25, 'Bhutan', 'Bhutanan', 'BT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(26, 'Botswana', 'Botswanan', 'BW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(27, 'Belarus', 'Belarusan', 'BY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(28, 'Belize', 'Belizean', 'BZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(29, 'Canada', 'Canadan', 'CA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(30, 'Democratic Republic of the Congo', 'Democratic Republic of the Congoan', 'CD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(31, 'Central African Republic', 'Central African Republican', 'CF', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(32, 'Congo', 'Congoan', 'CG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(33, 'Switzerland', 'Switzerlandan', 'CH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(34, 'Côte d.Ivoire', 'Côte d.Ivoire', 'CI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(35, 'Chile', 'Chilean', 'CL', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(36, 'Cameroon', 'Cameroonan', 'CM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(37, 'China', 'Chinan', 'CN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(38, 'Colombia', 'Colombian', 'CO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(39, 'Costa Rica', 'Costa Rican', 'CR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(40, 'Cuba', 'Cuban', 'CU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(41, 'Cabo Verde', 'Cabo Verdean', 'CV', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(42, 'Cyprus', 'Cyprusan', 'CY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(43, 'Czech Republic', 'Czech Republican', 'CZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(44, 'Germany', 'Germanyan', 'DE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(45, 'Djibouti', 'Djiboutian', 'DJ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(46, 'Denmark', 'Denmarkan', 'DK', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(47, 'Dominica', 'Dominican', 'DM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(48, 'Dominican Republic', 'Dominican Republican', 'DO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(49, 'Algeria', 'Algerian', 'DZ', '2010-09-17 11:01:32', '2010-12-15 10:26:56', 1, 2, NULL, 'Y'),
(50, 'Ecuador', 'Ecuadoran', 'EC', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(51, 'Estonia', 'Estonian', 'EE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(52, 'Egypt', 'Egyptan', 'EG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(53, 'Western Sahara', 'Western Saharan', 'EH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(54, 'Eritrea', 'Eritrean', 'ER', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(55, 'Spain', 'Spainan', 'ES', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(56, 'Ethiopia', 'Ethiopian', 'ET', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(57, 'Finland', 'Finlandan', 'FI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(58, 'Fiji', 'Fijian', 'FJ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(59, 'Micronesia', 'Micronesian', 'FM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(60, 'France', 'Francean', 'FR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(61, 'Gabon', 'Gabonan', 'GA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(62, 'United Kingdom', 'United Kingdoman', 'GB', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(63, 'Grenada', 'Grenadan', 'GD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(64, 'Georgia', 'Georgian', 'GE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(65, 'Ghana', 'Ghanan', 'GH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(66, 'Gambia', 'Gambian', 'GM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(67, 'Guinea', 'Guinean', 'GN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(68, 'Equatorial Guinea', 'Equatorial Guinean', 'GQ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(69, 'Greece', 'Greecean', 'GR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(70, 'Guatemala', 'Guatemalan', 'GT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(71, 'Guinea-Bissau', 'Guinea-Bissauan', 'GW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(72, 'Guyana', 'Guyanan', 'GY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(73, 'Honduras', 'Hondurasan', 'HN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(74, 'Croatia', 'Croatian', 'HR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(75, 'Haiti', 'Haitian', 'HT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(76, 'Hungary', 'Hungaryan', 'HU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(77, 'Indonesia', 'Indonesian', 'ID', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(78, 'Ireland', 'Irelandan', 'IE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(79, 'Israel', 'Israelan', 'IL', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(80, 'India', 'Indian', 'IN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(81, 'Iraq', 'Iraqan', 'IQ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(82, 'Iran', 'Iranan', 'IR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(83, 'Iceland', 'Icelandan', 'IS', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(84, 'Italy', 'Italyan', 'IT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(85, 'Jamaica', 'Jamaican', 'JM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(86, 'Jordan', 'Jordanan', 'JO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(87, 'Japan', 'Japanan', 'JP', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(88, 'Kenya', 'Kenyan', 'KE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(89, 'Kyrgyzstan', 'Kyrgyzstanan', 'KG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(90, 'Cambodia', 'Cambodian', 'KH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(91, 'Kiribati', 'Kiribatian', 'KI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(92, 'Comoros', 'Comorosan', 'KM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(93, 'Saint Kitts and Nevis', 'Saint Kitts and Nevisan', 'KN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(94, 'North Korea', 'North Korean', 'KP', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(95, 'South Korea', 'South Korean', 'KR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(96, 'Kuwait', 'Kuwaitan', 'KW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(97, 'Kazakhstan', 'Kazakhstanan', 'KZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(98, 'Laos', 'Laosan', 'LA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(99, 'Lebanon', 'Lebanonan', 'LB', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(100, 'Saint Lucia', 'Saint Lucian', 'LC', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(101, 'Liechtenstein', 'Liechtensteinan', 'LI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(102, 'Sri Lanka', 'Sri Lankan', 'LK', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(103, 'Liberia', 'Liberian', 'LR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(104, 'Lesotho', 'Lesothoan', 'LS', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(105, 'Lithuania', 'Lithuanian', 'LT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(106, 'Luxembourg', 'Luxembourgan', 'LU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(107, 'Latvia', 'Latvian', 'LV', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(108, 'Libya', 'Libyan', 'LY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(109, 'Morocco', 'Moroccoan', 'MA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(110, 'Monaco', 'Monacoan', 'MC', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(111, 'Moldova', 'Moldovan', 'MD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(112, 'Madagascar', 'Madagascaran', 'MG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(113, 'Marshall Islands', 'Marshall Islandsan', 'MH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(114, 'Macedonia', 'Macedonian', 'MK', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(115, 'Mali', 'Malian', 'ML', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(116, 'Myanmar', 'Myanmaran', 'MM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(117, 'Mongolia', 'Mongolian', 'MN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(118, 'Mauritania', 'Mauritanian', 'MR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(119, 'Malta', 'Maltan', 'MT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(120, 'Mauritius', 'Mauritiusan', 'MU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(121, 'Maldives', 'Maldivesan', 'MV', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(122, 'Malawi', 'Malawian', 'MW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(123, 'Mexico', 'Mexicoan', 'MX', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(124, 'Malaysia', 'Malaysian', 'MY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(125, 'Mozambique', 'Mozambiquean', 'MZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(126, 'Namibia', 'Namibian', 'NA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(127, 'Niger', 'Nigeran', 'NE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(128, 'Nigeria', 'Nigerian', 'NG', '2010-09-17 11:01:32', '2010-12-03 10:46:14', 1, 2, NULL, 'Y'),
(129, 'Nicaragua', 'Nicaraguan', 'NI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(130, 'Netherlands', 'Netherlandsan', 'NL', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(131, 'Norway', 'Norwayan', 'NO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(132, 'Nepal', 'Nepalan', 'NP', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(133, 'Nauru', 'Nauruan', 'NR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(134, 'New Zealand', 'New Zealandan', 'NZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(135, 'Oman', 'Omanan', 'OM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(136, 'Panama', 'Panaman', 'PA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(137, 'Peru', 'Peruan', 'PE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(138, 'Papua New Guinea', 'Papua New Guinean', 'PG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(139, 'Philippines', 'Philippinesan', 'PH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(140, 'Pakistan', 'Pakistanan', 'PK', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(141, 'Poland', 'Polandan', 'PL', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(142, 'Portugal', 'Portugalan', 'PT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(143, 'Palau', 'Palauan', 'PW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(144, 'Paraguay', 'Paraguayan', 'PY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(145, 'Qatar', 'Qataran', 'QA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(146, 'Romania', 'Romanian', 'RO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(147, 'Russia', 'Russian', 'RU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(148, 'Rwanda', 'Rwandan', 'RW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(149, 'Saudi Arabia', 'Saudi Arabian', 'SA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(150, 'Solomon Islands', 'Solomon Islandsan', 'SB', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(151, 'Seychelles', 'Seychellesan', 'SC', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(152, 'Sudan', 'Sudanan', 'SD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(153, 'Sweden', 'Swedenan', 'SE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(154, 'Singapore', 'Singaporean', 'SG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(155, 'Slovenia', 'Slovenian', 'SI', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(156, 'Slovakia', 'Slovakian', 'SK', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(157, 'Sierra Leone', 'Sierra Leonean', 'SL', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(158, 'San Marino', 'San Marinoan', 'SM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(159, 'Senegal', 'Senegalan', 'SN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(160, 'Somalia', 'Somalian', 'SO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(161, 'Serbia', 'Serbian', 'SP', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(162, 'Suriname', 'Surinamean', 'SR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(163, 'Sao Tome and Principe', 'Sao Tome and Principean', 'ST', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(164, 'El Salvador', 'El Salvadoran', 'SV', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(165, 'Syria', 'Syrian', 'SY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(166, 'Swaziland', 'Swazilandan', 'SZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(167, 'Chad', 'Chadan', 'TD', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(168, 'Togolese', 'Togolesean', 'TG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(169, 'Thailand', 'Thailandan', 'TH', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(170, 'Tajikistan', 'Tajikistanan', 'TJ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(171, 'Timor-Leste', 'Timor-Lestean', 'TL', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(172, 'Turkmenistan', 'Turkmenistanan', 'TM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(173, 'Tunisia', 'Tunisian', 'TN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(174, 'Tonga', 'Tongan', 'TO', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(175, 'Turkey', 'Turkeyan', 'TR', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(176, 'Trinidad and Tobago', 'Trinidad and Tobagoan', 'TT', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(177, 'Tuvalu', 'Tuvaluan', 'TV', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(178, 'Taiwan', 'Taiwanan', 'TW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(179, 'Tanzania', 'Tanzanian', 'TZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(180, 'Ukraine', 'Ukrainean', 'UA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(181, 'Uganda', 'Ugandan', 'UG', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(182, 'United States', 'United Statesan', 'US', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(183, 'Uruguay', 'Uruguayan', 'UY', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(184, 'Uzbekistan', 'Uzbekistanan', 'UZ', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(185, 'Vatican', 'Vaticanan', 'VA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(186, 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadinesan', 'VC', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(187, 'Venezuela', 'Venezuelan', 'VE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(188, 'Vietnam', 'Vietnaman', 'VN', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(189, 'Vanuatu', 'Vanuatuan', 'VU', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(190, 'Samoa', 'Samoan', 'WS', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(191, 'Yemen', 'Yemenan', 'YE', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(192, 'South Africa', 'South African', 'ZA', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(193, 'Zambia', 'Zambian', 'ZM', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y'),
(194, 'Zimbabwe', 'Zimbabwean', 'ZW', '2010-09-17 11:01:32', '2010-09-17 11:01:32', 1, 1, NULL, 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
