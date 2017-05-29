-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2017 at 10:02 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_walfi`
--

-- --------------------------------------------------------

--
-- Table structure for table `wf_login`
--

CREATE TABLE `wf_login` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `starting_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wf_login`
--

INSERT INTO `wf_login` (`id`, `username`, `email`, `password`, `starting_date`, `modified_date`, `status`) VALUES
(1, 'admin', 'admin@walfie.com', 'admin', '2017-03-03 00:00:00', '2017-03-03 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wf_user_detail`
--

CREATE TABLE `wf_user_detail` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `starting_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wf_user_detail`
--

INSERT INTO `wf_user_detail` (`id`, `first_name`, `last_name`, `starting_date`, `modified_date`, `address`, `phone_no`, `login_id`) VALUES
(1, 'Vikranta', 'Sharma', '2017-03-03 00:00:00', '2017-03-03 00:00:00', 'Vshyrad', '704455464', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wf_login`
--
ALTER TABLE `wf_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wf_user_detail`
--
ALTER TABLE `wf_user_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wf_login`
--
ALTER TABLE `wf_login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wf_user_detail`
--
ALTER TABLE `wf_user_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
