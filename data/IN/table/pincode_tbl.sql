
--
-- Table structure for table `tbl_pincode`
--

CREATE TABLE `tbl_pincode` (
  `id` int(11) NOT NULL,
  `country_code` char(2) NOT NULL,
  `postal_code` int(6) NOT NULL,
  `place_name` varchar(180) NOT NULL,
  `state` varchar(100) NOT NULL,
  `admin_code1` varchar(20) NOT NULL,
  `county_province` varchar(180) NOT NULL,
  `county_province_code` varchar(20) NOT NULL,
  `community` varchar(100) NOT NULL,
  `community_code` varchar(20) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `accuracy` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pincode`
--
ALTER TABLE `tbl_pincode`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pincode`
--
ALTER TABLE `tbl_pincode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
