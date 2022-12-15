-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2022 at 06:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_park`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`name`, `id`, `nid`, `address`, `contact_no`) VALUES
('Sojib', 101, 123456, 'Nator', '01728382133'),
('Roni', 102, 123654, 'Mohammadpur Housing', '01628381233'),
('Joni', 103, 213456, 'Lalmatia-B-3', '01526214491'),
('Mutalab', 104, 654321, 'Sankar', '01615292399'),
('Shanto', 105, 567890, 'Kaderabadh Housing', '01674863291'),
('Samia', 106, 456789, 'Dhanmondi-15', '01555466981'),
('Ferdouse', 107, 234567, 'Kalabagan', '01678945632'),
('Raju', 108, 987654, 'Samoli', '01544496325'),
('Rokeya', 109, 789654, 'Lalmatia-B-4', '01741285369'),
('Shakib', 110, 987234, 'Satmasjid Road', '01612345698'),
('Sweety', 111, 596471, 'Jigatola', '01785225852'),
('Abbas', 112, 918273, 'Mohammadpur Housing', '01614774114'),
('Kuddus', 113, 963123, 'Dhanmondi-27', '01771471444'),
('Monisa', 114, 852258, 'Dhanmondi-15', '01745645665'),
('Tasnim', 115, 789753, 'Jigatola', '01558528552'),
('Joy', 116, 871055, 'Tatibajar', '01310320385'),
('Shourav', 117, 159826, 'Malibag', '01612035566'),
('Ratul', 118, 258826, 'Mirpur 1', '01912037771'),
('Nahid', 119, 586160, 'Kajipara', '01385236974'),
('Mursalin', 120, 741852, 'Matuail', '01588996601'),
('Anonto Jalil', 121, 155950, 'Pabna Mental Hospital', '01412581230'),
('Mahfuzur Rahman', 122, 131313, 'ATN Bangla Head Office', '01715684123');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `salary` int(11) NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`name`, `id`, `nid`, `joining_date`, `salary`, `contact_no`, `address`, `designation`) VALUES
('Fakur', 501, 159623, '2018-05-05', 7500, '01776212449', 'Barishal', 'Sales Executive'),
('Rosy', 502, 159632, '2018-07-02', 7500, '01776214944', 'Noakhali', 'Sales Executive'),
('Riya', 504, 159624, '2018-05-05', 7500, '01776212400', 'Dhaka', 'Sales Executive'),
('Rimi', 505, 159635, '2018-05-02', 7500, '01776214955', 'Dhaka', 'Sales Executive'),
('Toma', 506, 156565, '2017-09-04', 9500, '01765121944', 'Narayanganj', 'Accountant'),
('Touhidul', 507, 164556, '2017-05-03', 10500, '01628382133', 'Bagerhat', 'Manager'),
('Shattar', 508, 145003, '2022-01-01', 4500, '01700022233', 'Bola', 'Cleaner'),
('Shohan', 509, 201035, '2022-07-01', 7000, '01985235954', 'Noya Polton', 'Sales Executive'),
('Shihab', 510, 807098, '2022-08-02', 6500, '01985612358', 'Shahjahanpur', 'Assistant Manager'),
('Puspa', 511, 159352, '2022-06-01', 7500, '01766541800', 'Taltola', 'Brand Manager');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `suplier_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`order_id`, `order_date`, `delivery_date`, `suplier_id`, `product_id`) VALUES
(10001, '2022-02-01', '2022-02-05', 904, 105),
(10002, '2022-03-05', '2022-03-10', 901, 100),
(10003, '2022-03-05', '2022-03-10', 901, 101),
(10004, '2022-03-05', '2022-03-10', 901, 102),
(10005, '2022-04-05', '2022-04-10', 903, 104),
(10006, '2022-03-05', '2022-03-12', 905, 107),
(10007, '2022-05-15', '2022-05-17', 902, 113),
(10008, '2022-06-05', '2022-06-07', 902, 112),
(10009, '2022-07-10', '2022-07-11', 906, 105),
(10010, '2022-07-15', '2022-07-17', 904, 106),
(10011, '2022-08-21', '2022-08-22', 905, 114);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `bar_code` int(11) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`name`, `id`, `type`, `companyName`, `bar_code`, `price`) VALUES
('7up(600ml)', 100, 'Beverage', 'PepsiCo', 1234, '35.00'),
('7up(1.25ltr)', 101, 'Beverage', 'PepsiCo', 1235, '60.00'),
('7up(2.25ltr)', 102, 'Beverage', 'PepsiCo', 1236, '110.00'),
('Mountain Dew (600ml)', 103, 'Beverage', 'PepsiCo', 1237, '35.00'),
('Speed (250ml)', 104, 'Beverage', 'Akij Food and Beverage Ltd (AFBL)', 1238, '35.00'),
('Rupchanda(2 ltr)', 105, 'Soyabean Oil', 'Indian Adani Wilmar Ltd', 4321, '286.00'),
('Fresh(5 ltr)', 106, 'Soyabean Oil', 'Edible Oil', 4322, '728.00'),
('Chashi Aromatic Chinigura Rice(1 kg)', 107, 'Rice', 'Square', 5431, '130.00'),
('Chashi Aromatic Chinigura Rice(5 kg)', 108, 'Rice', 'Square', 5432, '630.00'),
('Aarong Dairy(1 ltr)', 109, 'Dairy Milk', 'Arong', 6541, '75.00'),
('Aarong Dairy(500 ml)', 110, 'Dairy Milk', 'Arong', 6542, '40.00'),
('Gold Coffee', 111, 'Coffee', 'ACI Ltd', 2581, '410'),
('Mustard Oil (250 ml) ', 112, 'Oil', 'ACI Ltd', 2418, '75'),
('ACI Pure Najirshail Rice (10 kg)', 113, 'Rice', 'ACI Ltd', 4758, '875'),
('CORONA BEER 330ml', 114, 'Drinks', 'AB InBev', 2356, '550'),
('BREAD', 115, 'Braed', 'Bosundhara', 1406, '50');

-- --------------------------------------------------------

--
-- Table structure for table `receipt`
--

CREATE TABLE `receipt` (
  `transaction_no` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `cashier_name` varchar(20) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `time_` datetime NOT NULL DEFAULT current_timestamp(),
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`transaction_no`, `product_name`, `quantity`, `cashier_name`, `total_amount`, `time_`, `product_id`, `customer_id`) VALUES
(1, '7up', 1.00, 'Toma', '35.00', '2022-04-19 00:05:40', 100, 107),
(2, 'Rupchanda', 1.00, 'Toma', '286.00', '2022-04-19 00:47:02', 105, 107),
(3, 'Chashi Aromatic Chinigura Rice', 1.00, 'Toma', '130.00', '2022-04-19 00:47:02', 107, 107),
(4, 'Chashi Aromatic Chinigura Rice', 1.00, 'Toma', '130.00', '2022-04-19 00:49:07', 107, 107),
(5, 'Chashi Aromatic Chinigura Rice', 1.00, 'Toma', '630.00', '2022-04-19 00:50:05', 108, 115),
(6, 'Speed', 1.00, 'Toma', '25.00', '2022-04-19 00:51:30', 104, 111),
(7, 'Speed', 4.00, 'Toma', '100.00', '2022-04-19 00:52:45', 104, 109),
(8, 'Fresh(5ltr)', 2.00, 'Toma', '1450', '2022-04-19 20:29:15', 106, 111),
(9, 'Aarong Dairy(1ltr)', 2.00, 'Toma', '150', '2022-04-19 20:29:15', 109, 115),
(10, 'Gold Coffee', 1.00, 'Toma', '410', '2022-09-02 19:50:59', 111, 120),
(11, 'CORONA BEER ', 6.00, 'Toma', '3300', '2022-09-02 19:50:59', 114, 116),
(12, 'ACI Pure Najirshail Rice (10 kg)', 1.00, 'Toma', '875', '2022-09-02 19:50:59', 113, 117);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_name` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_name`, `id`, `address`, `contact_no`) VALUES
('RR Enterprise', 901, 'Gazipur', '01345678947'),
('Arong', 902, 'Dhaka', '01396336963'),
('SKD Traders', 903, 'Khulna', '01772621944'),
('Meghna LTD', 904, 'Narayangang', '0137415983'),
('RPG Trade', 905, 'Mymenshing', '01385245675'),
('Shaheen Food Suppliers', 906, 'Dhaka', '01782563321'),
('Organic Manure Enterprise', 907, 'Chottogram', '01965214589'),
('Goods From BD', 908, 'Gazipur', '01832144567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nid` (`nid`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nid` (`nid`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `suplier_id` (`suplier_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bar_code` (`bar_code`);

--
-- Indexes for table `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`transaction_no`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564232;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10012;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `receipt`
--
ALTER TABLE `receipt`
  MODIFY `transaction_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=909;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`suplier_id`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `receipt`
--
ALTER TABLE `receipt`
  ADD CONSTRAINT `receipt_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `receipt_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
