-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2019 at 09:59 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trekkerguide`
--
CREATE DATABASE IF NOT EXISTS `trekkerguide` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `trekkerguide`;

-- --------------------------------------------------------

--
-- Table structure for table `app_admin`
--

CREATE TABLE `app_admin` (
  `admin_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(10) NOT NULL,
  `user_img` varchar(255) NOT NULL DEFAULT 'admin.png',
  `token_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_category`
--

CREATE TABLE `app_category` (
  `cat_id` int(255) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `category_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_places`
--

CREATE TABLE `app_places` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `place_id` int(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `website` varchar(300) NOT NULL,
  `cat_id` varchar(250) NOT NULL,
  `facility` varchar(1000) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` longtext NOT NULL,
  `image1` varchar(500) DEFAULT NULL,
  `image2` varchar(500) DEFAULT NULL,
  `image3` varchar(500) DEFAULT NULL,
  `image4` varchar(500) DEFAULT NULL,
  `image5` varchar(500) DEFAULT NULL,
  `latitude` varchar(400) NOT NULL,
  `longitude` varchar(400) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_placesmain`
--

CREATE TABLE `app_placesmain` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `place_id` int(250) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `website` varchar(300) NOT NULL,
  `facility` varchar(1000) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` longtext NOT NULL,
  `image1` varchar(500) DEFAULT 'NULL',
  `image2` varchar(500) DEFAULT 'NULL',
  `image3` varchar(500) DEFAULT 'NULL',
  `image4` varchar(500) DEFAULT 'NULL',
  `image5` varchar(500) DEFAULT 'NULL',
  `latitude` varchar(400) NOT NULL,
  `longitude` varchar(400) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `treklocation` varchar(300) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `gender` varchar(60) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_admin`
--
ALTER TABLE `app_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `app_category`
--
ALTER TABLE `app_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `app_places`
--
ALTER TABLE `app_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `app_placesmain`
--
ALTER TABLE `app_placesmain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_admin`
--
ALTER TABLE `app_admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_category`
--
ALTER TABLE `app_category`
  MODIFY `cat_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_places`
--
ALTER TABLE `app_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_placesmain`
--
ALTER TABLE `app_placesmain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
