-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2018 at 06:29 PM
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
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `r_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`r_id`, `menu_id`, `item`, `price`) VALUES
(1, 1, 'Beef Cheese Delight burger', '260'),
(1, 2, 'Beef & Bacon burger', '280'),
(1, 3, 'Chicken Supreme burger', '360'),
(2, 4, 'bbq Chicken pizza small', '390'),
(2, 5, 'Beef Temptation pizza medium', '700'),
(2, 6, 'Vege Delight pizza large', '1300'),
(3, 7, 'Beef Cheese blast burger', '280'),
(3, 8, 'bbq chicken burger', '230'),
(3, 9, 'Smoky Chicken burger', '250'),
(4, 10, 'kacchi platter', '400'),
(4, 11, 'Chicken Biriyani', '250'),
(4, 12, 'Basmoti Kacchi', '330'),
(5, 13, 'Chicken Steak', '300'),
(5, 14, 'Dhakaiya Burger', '280'),
(5, 15, 'Nutella Shake', '120'),
(6, 16, 'bbq Chicken pizza small', '350'),
(6, 17, 'Four Season pizza medium', '500'),
(6, 18, 'Hot & Spicy Pizza large', '800'),
(7, 19, 'kacchi biriyani', '350'),
(7, 20, 'Chicken biriyani', '300'),
(7, 21, 'Beef Tehari', '230'),
(8, 22, 'Pasta Europa', '340'),
(8, 23, 'Pasta Basta', '320'),
(8, 24, 'Naga Pasta', '300'),
(9, 25, 'Mr. Cowboy burger', '270'),
(9, 26, 'Chicken Supreme burger', '290'),
(9, 27, 'Mr. Naga burger', '240'),
(10, 28, 'Pasta Basta', '200'),
(10, 29, 'Rice bowl', '120'),
(10, 30, 'Classic Burger', '190'),
(11, 31, 'Peri Peri Chicken', '400'),
(11, 32, 'Lunch Platter', '670'),
(11, 33, 'Chicken Wings', '250'),
(12, 34, 'NY Chicken Tikka Slice', '300'),
(12, 35, 'NY Mushroom Pizza slice', '330'),
(12, 36, 'Super Supreme whole pizza', '1600'),
(13, 37, 'Lunch Box', '400'),
(13, 38, 'Crispy Fried Chicken', '200'),
(13, 39, 'Virgin Mojito', '170'),
(14, 40, 'Tiramisu Cappuccino', '270'),
(14, 41, 'Coffee Americano', '300'),
(14, 42, 'Caramel Eclairs', '120'),
(15, 43, 'Mozzarella Cheese Pizza', '400'),
(15, 44, 'Oven baked Pasta', '360'),
(15, 45, 'Pizza Fold', '1100'),
(16, 46, 'Chocolate Cold Coffee', '50'),
(16, 47, 'Hot Coffee', '40'),
(16, 48, 'Strawberry Smoothie', '70'),
(17, 49, 'Black Forest Slice', '80'),
(17, 50, 'Mini Pizza Bun', '100'),
(17, 51, 'Chicken Sausage', '60'),
(18, 52, 'Kacchi Biriyani', '230'),
(18, 53, 'Chicken Biriyani', '220'),
(18, 54, 'Beef Tehari', '180');

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
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`r_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `restaurant` (`r_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
