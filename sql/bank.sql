-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 01:20 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_no` int(11) NOT NULL,
  `account_type` varchar(20) NOT NULL COMMENT '1 for savings\r\n2 for current account',
  `balance` float NOT NULL,
  `initial_deposit` float NOT NULL,
  `customer_nic` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_no`, `account_type`, `balance`, `initial_deposit`, `customer_nic`) VALUES
(4, 'savings', 4000, 5000, '983142044v'),
(5, 'Current', 5050, 5050, '983142044v'),
(6, 'Current', 10050, 10050, '983142044v'),
(7, 'Savings', 10000, 10000, '983142044v'),
(8, 'Current', 1500, 1500, '983142044v'),
(9, 'Current', 500, 500, '983142044v'),
(10, 'Current', 500, 500, '983142044v'),
(11, 'Current', 10000, 10000, '983142045v'),
(12, 'SELECT ONE', 25000, 25000, '9');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `nic` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `contact`, `gender`, `dob`, `nic`, `name`, `address`) VALUES
(9, 'Shpsachitha@gmail.com', '0000000000', 'MALE', '2021-06-12', '983142044v', 'sachithaHirushan', 'No 101,Jayalanda,Mahagalkadawala'),
(11, 'Shpsachitha@gmail.co', '0000000000', 'FEMALE', '2021-06-18', '983142045v', 'sachithaHirushan', 'No 101,Jayalanda,Mahagalkadawala'),
(13, 'Shpsachitha@c.c', '0000000000', 'SELECT ONE', '2021-06-25', '9', 'sachithaHirushan', 'No 101,Jayalanda,Mahagalkadawala');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `t_id` int(11) NOT NULL,
  `t_type` int(11) NOT NULL COMMENT '1 for +\r\n2 for minus',
  `amount` float NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`t_id`, `t_type`, `amount`, `date`, `time`, `account_id`, `user_id`) VALUES
(6, 1, -500, '2021-06-09', '13:29:56', 10, 12),
(7, 1, 10000, '2021-06-09', '13:36:18', 11, 12),
(8, 1, -1000, '2021-06-09', '13:36:18', 11, 12),
(9, 1, 25000, '2021-06-09', '14:13:01', 12, 12),
(10, 1, 500, '2021-06-09', '15:01:10', 4, 12),
(11, 1, -500, '2021-06-09', '15:05:30', 4, 12),
(12, 1, -500, '2021-06-09', '15:05:52', 4, 12),
(13, 1, 1500, '2021-06-09', '15:06:40', 4, 12),
(14, 1, 1500, '2021-06-09', '15:06:51', 4, 12),
(15, 1, 500, '2021-06-09', '15:08:05', 4, 12),
(16, 1, 500, '2021-06-09', '15:08:18', 4, 12),
(17, 1, 5000, '2021-06-09', '15:12:16', 4, 12),
(18, 1, -5000, '2021-06-09', '15:12:25', 4, 12),
(19, 1, 500, '2021-06-09', '15:13:12', 4, 12),
(20, 1, -500, '2021-06-09', '15:13:27', 4, 12),
(21, 1, 400, '2021-06-09', '16:14:19', 4, 12),
(22, 2, -5000, '2021-06-09', '16:18:29', 4, 12),
(23, 2, -5000, '2021-06-09', '16:21:03', 4, 12),
(24, 1, 500, '2021-06-09', '16:22:16', 4, 12),
(25, 1, 500, '2021-06-09', '16:23:02', 4, 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nic` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 for cashier\r\n2 for manager'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `gender`, `dob`, `email`, `name`, `nic`, `password`, `type`) VALUES
(10, 'MALE', '2021-01-01', 's@s.s', 'sachithaHirushan', '98', '1', 1),
(11, 'MALE', '2021-01-01', 'a@a.a', 'sachithaHirushan', '98', '1', 2),
(12, 'MALE', '2021-01-01', 'Shpsachitha@gmail.com', 'sachithaHirushan', '98', 'a', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`t_id`);

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
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `account_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
