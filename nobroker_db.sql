-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nobroker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_tbl`
--

CREATE TABLE `enquiry_tbl` (
  `eid` int(20) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `bemail` varchar(20) NOT NULL,
  `bmob` varchar(100) NOT NULL,
  `badd` varchar(100) NOT NULL,
  `detail` varchar(100) NOT NULL,
  `pid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry_tbl`
--

INSERT INTO `enquiry_tbl` (`eid`, `bname`, `bemail`, `bmob`, `badd`, `detail`, `pid`) VALUES
(1, 'nikita', 'nikita@gmail.com', '741852789', 'dhule', 'Is this Available ?', 15),
(2, 'nikita', 'nikita@gmail.com', '741852789', 'dhule', 'Is this Available ?', 15),
(3, 'ankita', 'ankita@gmail.com', '741852789', 'dhule', 'Is this Available ?', 20);

-- --------------------------------------------------------

--
-- Table structure for table `property_tbl`
--

CREATE TABLE `property_tbl` (
  `pid` int(50) NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `padd` varchar(100) NOT NULL,
  `pprice` varchar(100) NOT NULL,
  `pstatus` varchar(100) NOT NULL DEFAULT 'Available',
  `uemail` varchar(50) NOT NULL,
  `lat` varchar(50) NOT NULL,
  `lng` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property_tbl`
--

INSERT INTO `property_tbl` (`pid`, `ptype`, `padd`, `pprice`, `pstatus`, `uemail`, `lat`, `lng`) VALUES
(27, 'house', 'Santaji Chauk Walwadi', '800000000', 'Available', 'dadu@gmail.com', '20.92653968645081', '74.75758629398774'),
(28, 'house', 'Dhule', '90000000', 'Sold', 'darshan@gmail.com', '20.92657042072901', '74.75757278549973'),
(30, 'flat', 'Chandwad', '741852', 'Available', 'darshan@gmail.com', '20.005850041823727', '73.81078860333253'),
(31, 'plot', 'Chandwad', '454500', 'Sold', 'darshan@gmail.com', '20.00464026517062', '73.77731463482667'),
(32, 'plot', 'Amalner', '120000', 'Available', 'darshan@gmail.com', '20.005769390336184', '73.79104754498292'),
(33, 'house', 'Nashik', '120000', 'Available', 'mayur@gmail.com', '20.005890367551995', '73.78130576184083'),
(34, 'Flat', 'Bhusawal', '454500', 'Sold', 'mayur@gmail.com', '21.016515802395194', '75.72646715738055'),
(35, 'house', 'Chandwad', '741852', 'Available', 'mayur@gmail.com', '20.030546995847505', '73.75915749521586'),
(36, 'Hotel', 'shirpur,dhule', '454500', 'Sold', 'mayur@gmail.com', '19.990489827449952', '73.78962993621826'),
(37, 'plot', 'Chandwad', '741852', 'Sold', 'devendra@gmail.com', '20.00653557779898', '73.76474043896485'),
(38, 'farm ', 'Nashik', '123456', 'Available', 'devendra@gmail.com', '20.11300392065533', '73.89378547668457'),
(39, 'farm house', 'shirpur,dhule', '650000', 'Available', 'devendra@gmail.com', '19.9883120103197', '73.76671314239502'),
(40, 'farm ', 'Chandwad', '650000', 'Sold', 'devendra@gmail.com', '20.00383374223539', '73.77452513745118'),
(41, 'farm house', 'Shirsoli', '454500', 'Sold', 'tej@gmail.com', '18.928563110538942', '74.00764450789244'),
(42, 'plot', 'Bhavnagar', '987654', 'Available', 'tej@gmail.com', '21.833908475976127', '72.13508819142282'),
(43, 'flat', 'Akola', '741852', 'Available', 'tej@gmail.com', '19.995284345050024', '73.8053812699585');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `uid` int(10) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `upass` varchar(100) NOT NULL,
  `umob` varchar(15) NOT NULL,
  `uadd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`uid`, `uname`, `uemail`, `upass`, `umob`, `uadd`) VALUES
(14, 'darshan chaudhari', 'darshan@gmail.com', '1234', '8412926777', 'dhule'),
(15, 'Mayuresh Patil', 'mayur@gmail.com', '1234', '02416161616', 'shirpur,dhule'),
(16, 'Devendra Chaudhari', 'devendra@gmail.com', '1234', '02547264355', 'dhule'),
(17, 'Tejas Patil', 'tej@gmail.com', '1234', '02547264355', 'Nashik'),
(18, 'Sadanand Chaudhari', 'sadanand@gmail.com', '1234', '7465765813', 'Chandwad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry_tbl`
--
ALTER TABLE `enquiry_tbl`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `property_tbl`
--
ALTER TABLE `property_tbl`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiry_tbl`
--
ALTER TABLE `enquiry_tbl`
  MODIFY `eid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_tbl`
--
ALTER TABLE `property_tbl`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
