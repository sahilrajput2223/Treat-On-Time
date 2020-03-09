-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2020 at 11:20 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java_treat_on_time`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  `password_reset` varchar(20) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `password`, `email`, `c_password`, `password_reset`, `creation_date`) VALUES
(1, 'Sahil2223', 'abc', 'rajputsahil.2204@gmail.com', 'abc', 'aabbcc', '2020-03-06 14:55:54'),
(4, 'zeel ', 'zeel', 'zeelpatel1905@gmail.com', 'zeel', 'zeel', '2020-03-07 14:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(5) NOT NULL,
  `d_email` varchar(50) NOT NULL,
  `p_email` varchar(50) NOT NULL,
  `d_name` varchar(50) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `day` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `d_email`, `p_email`, `d_name`, `p_name`, `day`, `time`, `creation_date`) VALUES
(8, 'BB@gmail.com', 'rajputsahil.2204@gmail.com', 'BB', 'rajputsahil.2204@gmail.com', 'Wednesday', '05:00', '2020-03-07 06:02:18'),
(9, 'CC@gmail.com', 'rajputsahil.2204@gmail.com', 'CC', 'rajputsahil.2204@gmail.com', 'Sunday', '05:00', '2020-03-07 08:41:38'),
(10, 'CC@gmail.com', 'rajputsahil.2204@gmail.com', 'CC', 'rajputsahil.2204@gmail.com', 'Sunday', '05:00', '2020-03-07 08:42:36'),
(11, 'CC@gmail.com', 'rajputsahil.2204@gmail.com', 'CC', 'rajputsahil.2204@gmail.com', 'Sunday', '05:00', '2020-03-07 08:42:46'),
(12, 'aaa@gmail.com', 'rajputsahil.2204@gmail.com', 'aa', 'rajputsahil.2204@gmail.com', 'Saturday', '01:00', '2020-03-07 08:43:41'),
(13, 'CC@gmail.com', 'rajputsahil.2204@gmail.com', 'CC', 'rajputsahil.2204@gmail.com', 'Sunday', '05:00', '2020-03-07 09:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `edu` varchar(100) NOT NULL,
  `days` varchar(500) NOT NULL,
  `time_slot` varchar(100) NOT NULL,
  `h_name` varchar(100) NOT NULL,
  `contact` bigint(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  `password_reset` varchar(20) NOT NULL,
  `specification` varchar(1000) NOT NULL,
  `date_to_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `edu`, `days`, `time_slot`, `h_name`, `contact`, `email`, `password`, `c_password`, `password_reset`, `specification`, `date_to_upload`) VALUES
(1, 'aa', 'aa aa ', 'Sunday,Tuesday,Friday,Saturday', '01:00 PM To 04:00 PM', 'AA', 1111111111, 'aaa@gmail.com', 'aa11', 'aa11', 'AA', 'Neurologist', '2020-03-05 17:22:04'),
(2, 'BB', 'BBBB', 'Tuesday,Wednesday,Thursday,Friday,Saturday', '05:00 PM To 09:00 PM', 'BB', 2222222222, 'BB@gmail.com', 'bb', 'bb', 'bb', 'Nephrologist', '2020-03-05 19:53:55'),
(3, 'CC', 'CC', 'Sunday', '05:00 PM To 09:00 PM', 'AA', 3333333333, 'CC@gmail.com', 'CC33', 'CC33', 'cc', 'Radiologist', '2020-03-06 14:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL,
  `p_email` varchar(50) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date_to_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `p_email`, `content`, `date_to_upload`) VALUES
(1, 'rajputsahil.2204@gmail.com', 'hi', '2020-03-07 15:32:41'),
(2, 'rajputsahil.2204@gmail.com', 'hi', '2020-03-07 15:32:57'),
(3, 'rajputsahil.2204@gmail.com', 'bye', '2020-03-07 15:33:05'),
(4, 'rajputsahil.2204@gmail.com', 'bye', '2020-03-07 15:33:34'),
(5, 'rajputsahil.2204@gmail.com', 'how you doing !!', '2020-03-07 15:37:52');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `bio` varchar(500) NOT NULL,
  `contact` bigint(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `facilites` varchar(1000) NOT NULL,
  `date_to_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `street`, `area`, `city`, `state`, `country`, `bio`, `contact`, `email`, `facilites`, `date_to_upload`) VALUES
(11, 'AA', 'AA', 'AA', 'AA', 'AA', 'AA', 'AA AA AA AA ', 1111111111, 'AA@gmail.com', 'Birth Center,Dialysis Center,Mental health,OPD,Laboratory Service', '2020-03-05 15:22:46'),
(12, 'BB', 'BB', 'BB', 'BB', 'BB', 'BB', 'BB BB BB', 2222222222, 'BB@gmail.com', 'Blood Bank,Mental health,Nursing Home,Laboratory Service', '2020-03-05 16:38:05'),
(13, 'zydas', 's.g. highway', 'sola', 'ahemedabad', 'gujarat', 'india', 'zydas', 1234567890, 'zydas@gmail.com', 'Birth Center,Blood Bank,Dialysis Center,Canser Center,OPD', '2020-03-07 14:52:18'),
(14, 'kd', 's.p. ring road', 'vaisnavdevi', 'ahemedabad', 'gujarat', 'india', 'kd kd', 9807654321, 'kd@gmail.com', 'Dental Facility,Physiotherapy,Laboratory Service,Ambulance Service', '2020-03-07 14:53:39'),
(15, 'abc', 'abc', 'abc', 'abc', 'abc', 'abc', 'abc abc', 3213213211, 'abc@gmail.com', 'Dialysis Center,Nursing Home,Physiotherapy', '2020-03-07 14:54:45'),
(16, 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz yxyz', 4564564562, 'xyz@gmail.com', 'Blood Bank,Dental Facility,Laboratory Service', '2020-03-07 14:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `bio` varchar(500) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` bigint(12) NOT NULL,
  `street` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `creation_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `date_of_birth`, `bio`, `blood_group`, `email`, `contact`, `street`, `area`, `city`, `state`, `country`, `creation_date`) VALUES
(1, 'rajputsahil.2204@gmail.com', '1999-04-22', 'kaks  asdas dasdsa ', 'B-', 'rajputsahil.2204@gmail.com', 7359880845, 'I.O.C', 'chandkheda', 'Ahmedabad', 'Gujarat', 'India', '2020-03-07 03:00:08.391053');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
