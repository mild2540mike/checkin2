-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2017 at 06:50 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students`
--

-- --------------------------------------------------------

--
-- Table structure for table `usercheckin`
--

CREATE TABLE `usercheckin` (
  `id` int(4) NOT NULL,
  `studentid` int(5) NOT NULL,
  `checkin` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usercheckin`
--

INSERT INTO `usercheckin` (`id`, `studentid`, `checkin`) VALUES
(1, 10001, '2017-08-02 10:41:50'),
(2, 10003, '2017-08-02 10:47:45'),
(3, 10000, '2017-08-02 10:47:50'),
(4, 10002, '2017-08-02 10:47:53'),
(5, 10001, '2017-08-02 10:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(5) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `firstname`, `lastname`, `level`) VALUES
(10000, 'ชัยวัฒน์', 'รุจิเมธาภาส', 'ม.1/1'),
(10001, 'ธเนศ', 'รุจิเมธาภาส', 'อ.1/3'),
(10002, 'สุกัญญา', 'ทองนาค', 'ม.6/1'),
(10003, 'นิรพันธ์', 'จิตรสุวรรณ', 'ม.1/1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usercheckin`
--
ALTER TABLE `usercheckin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usercheckin`
--
ALTER TABLE `usercheckin`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
