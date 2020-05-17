-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2018 at 06:30 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodfinder`
--

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `r_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `cuisine` varchar(50) DEFAULT NULL,
  `rating` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`r_id`, `name`, `location`, `cuisine`, `rating`) VALUES
(1, 'Takeout', 'Dhanmondi', 'Burger', '4.8'),
(2, 'Pizza inn', 'Dhanmondi', 'Pizza', '4.4'),
(3, 'Chillox', 'Dhanmondi', 'Burger', '4.6'),
(4, 'Sultans Dine', 'Dhanmondi', 'Biriyani', '5.0'),
(5, 'Madchef', 'Dhanmondi', 'Burger', '4.7'),
(6, 'Cherry Drops', 'Khilgaon', 'Pizza', '3.9'),
(7, 'Tradition bd', 'Khilgaon', 'Biriyani', '4.4'),
(8, 'Cafe Appeliano', 'Khilgaon', 'Italian', '4.3'),
(9, 'Mr. Burger', 'Khilgaon', 'Burger', '4.6'),
(10, 'Cloud Flame', 'Khilgaon', 'Italian', '3.6'),
(11, 'Nandos', 'Gulshan', 'African', '4.6'),
(12, 'Sbarro', 'Gulshan', 'Pizza', '4.3'),
(13, 'kfc', 'Gulshan', 'Fastfood', '4.2'),
(14, 'Gloria Jeans', 'Gulshan', 'Coffee', '4.9'),
(15, 'Barcode Cafe', 'Gulshan', 'Italian', '4.6'),
(16, 'Popeyes Coffee', 'Khilgaon', 'Coffee', '4.0'),
(17, 'Tasty Treat', 'Dhanmondi', 'Fastfood', '3.5'),
(18, 'Fakruddin', 'Gulshan', 'Biriyani', '4.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
