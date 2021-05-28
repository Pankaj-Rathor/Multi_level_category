-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 12:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evince`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `status`) VALUES
(1, 'Mobile', 0, 0),
(2, 'Laptop', 0, 0),
(4, 'Samsung', 1, 1),
(5, 'Mi', 1, 1),
(6, 'Hp', 2, 1),
(11, 'Samsung s6', 4, 1),
(12, 'Mi10', 5, 1),
(13, 'Hp i3', 6, 1),
(14, 'Hp i5', 6, 1),
(15, 'Hp i7', 6, 1),
(20, 'Dell i3', 7, 0),
(24, 'Vivo', 0, 1),
(25, 'I-ball', 0, 1),
(27, 'Smart Watch', 0, 0),
(28, 'Tv', 0, 1),
(29, 'Fan', 0, 1),
(30, 'Tablet', 0, 1),
(48, 'Bazaj', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uniqid`
--

CREATE TABLE `uniqid` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `random_str` varchar(255) NOT NULL,
  `otp` varchar(20) NOT NULL,
  `link_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uniqid`
--

INSERT INTO `uniqid` (`id`, `email`, `random_str`, `otp`, `link_time`) VALUES
(2, 'pankajrathore9424@gmail.com', '60adecd42ddb5', '9798', '2021-05-26 06:38:18'),
(3, 'pankajrathore9424@gmail.com', '60adee83748b2', '3117', '2021-05-26 06:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `password`, `age`, `phone`, `gender`, `reg_date`, `user_level`) VALUES
(46, 'Pankaj', 'prathore9669@gmail.com', '$2y$10$Qlfed5bdIkAQSFBXNpQZNOAGyHSpiePYuthc41XP3xyAZYXu12H6i', 20, '9999999999', 'male', '2021-05-25 11:09:15', 0),
(47, 'sonu', 'sonu@gmail.com', '$2y$10$OOxdxRRKLguBf3.HOawix.CamRPaAKOERTtuWdkyXBGiV10pBS3WC', 20, '54541541554', 'male', '2021-05-24 13:02:15', 0),
(59, 'vikas', 'vikas@gmail.com', '$2y$10$k2YSSFewOWR1ZKGR5GiV6euI9k7OnNR1K5J8ouVQCn40kOv7ts/Tm', 20, '9243345443', 'male', '2021-05-25 10:12:44', 0),
(60, 'sonu', 'pankajrathore9424@gmail.com', '$2y$10$gb1fORTykhUFsF8JBO8AqOByOt70bwWmzFlmmTHYUUsjo4LmQNMwK', 20, '8827612115', 'male', '2021-05-26 07:11:06', 0),
(62, 'so', 'pankajrare9424@gmail.com', '$2y$10$rFZBiSyRB5KduAEUlqn1huft28zHeNQmgfO7DIun1H9brLzNUCw.O', 20, '8827612115', 'male', '2021-05-25 10:16:47', 0),
(64, 'so', 'pankajra424@gmail.com', '$2y$10$DvYXI4IDo1/hMdvJT5tHLO9wi3SYSvIXgIyWbqmHUXLQZ2Vbv3b/.', 20, '8827612115', 'male', '2021-05-25 10:19:18', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `uniqid`
--
ALTER TABLE `uniqid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `uniqid`
--
ALTER TABLE `uniqid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
