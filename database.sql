-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2017 at 05:42 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `testing2`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE IF NOT EXISTS `brand` (
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `brand_status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `category_status` enum('active','inactive') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `inventory_order`
--

CREATE TABLE IF NOT EXISTS `inventory_order` (
  `inventory_order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `inventory_order_total` double(10,2) NOT NULL,
  `inventory_order_date` date NOT NULL,
  `inventory_order_name` varchar(255) NOT NULL,
  `inventory_order_address` text NOT NULL,
  `payment_status` enum('cash','credit') NOT NULL,
  `inventory_order_status` varchar(100) NOT NULL,
  `inventory_order_created_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `inventory_order_product`
--

CREATE TABLE IF NOT EXISTS `inventory_order_product` (
  `inventory_order_product_id` int(11) NOT NULL,
  `inventory_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_description` text NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_unit` varchar(150) NOT NULL,
  `product_base_price` double(10,2) NOT NULL,
  `product_tax` decimal(4,2) DEFAULT 0,
  `product_minimum_order` double(10,2) NOT NULL,
  `product_enter_by` int(11) NOT NULL,
  `product_status` enum('active','inactive') NOT NULL,
  `product_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_type` enum('master','user') NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `inventory_order`
--
ALTER TABLE `inventory_order`
  ADD PRIMARY KEY (`inventory_order_id`);

--
-- Indexes for table `inventory_order_product`
--
ALTER TABLE `inventory_order_product`
  ADD PRIMARY KEY (`inventory_order_product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `inventory_order`
--
ALTER TABLE `inventory_order`
  MODIFY `inventory_order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `inventory_order_product`
--
ALTER TABLE `inventory_order_product`
  MODIFY `inventory_order_product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
