-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2015 at 09:11 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `db_stores`;
USE `db_stores`


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_stores`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_item`
--

CREATE TABLE IF NOT EXISTS `tb_item` (
  `item_upc` int(13) NOT NULL,
  `item_description` varchar(30) NOT NULL,
  `item_height` int(3) NOT NULL,
  `item_width` int(3) NOT NULL,
  `item_quantity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_items_on_shelf`
--

CREATE TABLE IF NOT EXISTS `tb_items_on_shelf` (
  `shelf_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `tb_items_on_shelf`:
--   `shelf_id`
--       `tb_shelf` -> `shelf_id`
--   `item_id`
--       `tb_item` -> `item_upc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_shelf`
--

CREATE TABLE IF NOT EXISTS `tb_shelf` (
`shelf_id` int(11) NOT NULL,
  `shelf_height` int(4) NOT NULL,
  `shelf_width` int(4) NOT NULL,
  `shelf_orientation` varchar(5) NOT NULL,
  `shelf_aisle_number_1` int(3) NOT NULL,
  `shelf_aisle_number_2` int(3) DEFAULT NULL,
  `item_upc` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `tb_shelf`:
--   `item_upc`
--       `tb_item` -> `item_upc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_shelves_in_store`
--

CREATE TABLE IF NOT EXISTS `tb_shelves_in_store` (
  `store_id` int(11) NOT NULL,
  `shelf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `tb_shelves_in_store`:
--   `store_id`
--       `tb_store` -> `store_id`
--   `shelf_id`
--       `tb_shelf` -> `shelf_id`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_store`
--

CREATE TABLE IF NOT EXISTS `tb_store` (
`store_id` int(11) NOT NULL,
  `store_address` varchar(100) NOT NULL,
  `store_name` varchar(50) NOT NULL,
  `shelf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `tb_store`:
--   `shelf_id`
--       `tb_shelf` -> `shelf_id`
--

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_item`
--
ALTER TABLE `tb_item`
 ADD PRIMARY KEY (`item_upc`);

--
-- Indexes for table `tb_items_on_shelf`
--
ALTER TABLE `tb_items_on_shelf`
 ADD KEY `item_id` (`item_id`), ADD KEY `shelf_id` (`shelf_id`);

--
-- Indexes for table `tb_shelf`
--
ALTER TABLE `tb_shelf`
 ADD PRIMARY KEY (`shelf_id`), ADD KEY `item_upc` (`item_upc`);

--
-- Indexes for table `tb_shelves_in_store`
--
ALTER TABLE `tb_shelves_in_store`
 ADD KEY `store_id` (`store_id`), ADD KEY `shelf_id` (`shelf_id`);

--
-- Indexes for table `tb_store`
--
ALTER TABLE `tb_store`
 ADD PRIMARY KEY (`store_id`), ADD KEY `shelf_id` (`shelf_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_shelf`
--
ALTER TABLE `tb_shelf`
MODIFY `shelf_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_store`
--
ALTER TABLE `tb_store`
MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_items_on_shelf`
--
ALTER TABLE `tb_items_on_shelf`
ADD CONSTRAINT `tb_items_on_shelf_ibfk_1` FOREIGN KEY (`shelf_id`) REFERENCES `tb_shelf` (`shelf_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_items_on_shelf_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `tb_item` (`item_upc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_shelf`
--
ALTER TABLE `tb_shelf`
ADD CONSTRAINT `tb_shelf_ibfk_1` FOREIGN KEY (`item_upc`) REFERENCES `tb_item` (`item_upc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_shelves_in_store`
--
ALTER TABLE `tb_shelves_in_store`
ADD CONSTRAINT `tb_shelves_in_store_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `tb_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_shelves_in_store_ibfk_2` FOREIGN KEY (`shelf_id`) REFERENCES `tb_shelf` (`shelf_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_store`
--
ALTER TABLE `tb_store`
ADD CONSTRAINT `tb_store_ibfk_1` FOREIGN KEY (`shelf_id`) REFERENCES `tb_shelf` (`shelf_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
