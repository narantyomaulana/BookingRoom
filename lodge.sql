-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2021 at 02:39 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lodge`
--

-- --------------------------------------------------------

--
-- Table structure for table `ldg_bookings`
--

CREATE TABLE `ldg_bookings` (
  `bookingId` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `bookingDtm` datetime NOT NULL,
  `roomId` int(11) NOT NULL,
  `bookStartDate` datetime NOT NULL,
  `bookEndDate` datetime NOT NULL,
  `bookingComments` varchar(2048) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `kontakpic` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ldg_bookings`
--

INSERT INTO `ldg_bookings` (`bookingId`, `customerName`, `bookingDtm`, `roomId`, `bookStartDate`, `bookEndDate`, `bookingComments`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `kontakpic`) VALUES
(51, 'olan', '2021-10-24 20:43:16', 1, '2021-10-18 00:00:00', '2021-10-24 12:00:00', 'Rapat besar', 0, 1, '2021-10-24 20:43:16', NULL, NULL, '0876467788'),
(52, 'nanda', '2021-10-24 21:02:18', 1, '2021-10-18 00:00:00', '2021-10-24 20:00:00', 'Marhaban', 0, 1, '2021-10-24 21:02:18', NULL, NULL, '8382382372'),
(53, 'Ahmad', '2021-10-24 21:39:49', 2, '2021-10-24 00:00:00', '2021-10-24 20:00:00', 'Silahturahmi', 0, 1, '2021-10-24 21:39:49', NULL, NULL, '0910831831'),
(54, 'Bu Rama', '2021-10-24 21:47:32', 2, '2021-10-24 00:00:00', '2021-10-24 20:00:00', 'Meeting Puasa', 0, 1, '2021-10-24 21:47:32', NULL, NULL, '9819317313'),
(58, 'Saipul', '2021-10-25 08:29:56', 3, '2021-10-25 09:00:00', '2021-10-25 06:52:20', 'Rapat besar', 0, 1, '2021-10-25 08:29:56', NULL, NULL, '0812398123'),
(59, 'Intan', '2021-10-25 08:50:45', 3, '2021-10-25 10:00:00', '2021-10-26 09:34:49', 'Makan Besar', 0, 1, '2021-10-25 08:50:45', NULL, NULL, '0910831831'),
(60, 'Putri', '2021-10-25 09:02:01', 1, '2021-10-25 09:00:00', '2021-10-26 06:34:30', 'Silahturahmi', 0, 1, '2021-10-25 09:02:01', NULL, NULL, '88888888888'),
(61, 'Abdur', '2021-10-25 09:03:09', 1, '2021-10-25 11:00:00', '2021-10-26 12:00:00', '17 Agustus', 0, 1, '2021-10-25 09:03:09', NULL, NULL, '0910831831'),
(69, 'Bu Rama', '2021-10-28 13:31:33', 2, '2021-10-28 00:00:00', '2021-10-28 14:00:00', 'Bukber', 0, 1, '2021-10-28 13:31:33', NULL, NULL, '9819317313'),
(70, 'Fikri', '2021-10-28 14:47:51', 2, '2021-10-28 18:22:54', '2021-10-29 20:19:27', 'Maulid Nabi', 0, 1, '2021-10-28 13:44:32', NULL, NULL, '0876467788'),
(71, 'Alfan', '2021-10-28 21:28:17', 2, '2021-10-30 00:00:00', '2021-10-30 10:00:00', 'Jalan jalan', 0, 1, '2021-10-28 21:28:17', NULL, NULL, '9819317313'),
(72, 'Vincent', '2021-10-28 21:40:56', 1, '2021-10-28 21:40:00', '2021-10-28 23:00:00', 'Mabar', 0, 1, '2021-10-28 21:37:56', NULL, NULL, '0910831831'),
(73, 'Abdul', '2021-11-01 12:53:28', 1, '2021-11-01 13:00:00', '2021-11-01 14:00:00', 'Cuti Bersama', 0, 7, '2021-11-01 12:53:28', NULL, NULL, '777777777777777'),
(74, 'Lang ', '2021-11-02 08:53:04', 1, '2021-11-02 08:52:00', '2021-11-02 09:00:00', 'Bukber', 0, 1, '2021-11-02 08:53:04', NULL, NULL, '88888888888'),
(76, 'Simad', '2021-11-02 09:44:51', 4, '2021-11-02 09:00:00', '2021-11-02 11:00:00', 'Bukber', 0, 1, '2021-11-02 09:44:51', NULL, NULL, '0812398123'),
(77, 'Reva', '2021-11-02 15:27:59', 1, '2021-11-02 15:00:00', '2021-11-02 17:00:00', 'Class', 0, 1, '2021-11-02 15:27:59', NULL, NULL, '0910831831'),
(78, 'Bu Rama', '2021-11-02 16:25:51', 3, '2021-11-02 17:00:00', '2021-11-02 18:00:00', 'Meeting Puasa', 0, 1, '2021-11-02 16:25:51', NULL, NULL, '88888888888'),
(80, 'Bu ambar', '2021-11-02 17:28:22', 3, '2021-11-02 17:29:00', '2021-11-02 18:00:00', 'Bukber', 0, 1, '2021-11-02 16:28:22', NULL, NULL, '9819317313'),
(81, 'Pincen', '2021-11-02 22:01:26', 2, '2021-11-02 21:00:00', '2021-11-02 23:30:00', 'Silahturahmi', 0, 1, '2021-11-02 22:01:26', NULL, NULL, '9819317313'),
(83, 'Fikri', '2021-11-03 09:15:13', 1, '2021-11-03 10:00:00', '2021-11-03 11:00:00', 'Rapat besar', 0, 7, '2021-11-03 09:15:13', NULL, NULL, '88888888888'),
(84, 'Dian', '2021-11-03 09:16:17', 1, '2021-11-03 09:15:00', '2021-11-03 10:35:58', 'Maulid Nabi', 0, 7, '2021-11-03 09:16:17', NULL, NULL, '0910831831'),
(85, 'olan', '2021-11-03 09:16:56', 1, '2021-11-03 12:00:00', '2021-11-03 13:00:00', 'Silahturahmi', 0, 7, '2021-11-03 09:16:56', NULL, NULL, '8382382372');

-- --------------------------------------------------------

--
-- Table structure for table `ldg_customer`
--

CREATE TABLE `ldg_customer` (
  `customerId` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerAddress` varchar(2048) DEFAULT NULL,
  `customerPhone` varchar(15) DEFAULT NULL,
  `customerEmail` varchar(128) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ldg_customer`
--

INSERT INTO `ldg_customer` (`customerId`, `customerName`, `customerAddress`, `customerPhone`, `customerEmail`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'John Doe', 'The Big Street Address, Near Corner', '123456789', '', 0, 1, '2017-08-02 18:25:01', 1, '2018-12-30 06:47:31'),
(2, 'Alfan', 'The Big Street Address, Near Corner', '', 'email@outlook.com', 0, 1, '2017-08-02 18:35:04', 1, '2018-12-30 06:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `ldg_floor`
--

CREATE TABLE `ldg_floor` (
  `floorId` tinyint(4) NOT NULL,
  `floorCode` varchar(10) NOT NULL,
  `floorName` varchar(50) NOT NULL,
  `floorDescription` text NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Floor Table';

--
-- Dumping data for table `ldg_floor`
--

INSERT INTO `ldg_floor` (`floorId`, `floorCode`, `floorName`, `floorDescription`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Lantai 1', 'Lobby', '0', 0, 1, '2016-12-31 19:25:12', 1, '2021-10-22 15:10:39'),
(2, 'Lantai 2-T', 'Timur', 'televisi\r\nproyektor \r\nkursi \r\ntoilet 1\r\nac\r\nkomputer\r\nmicrofon\r\ntelfon ', 0, 1, '2017-01-04 18:01:16', 1, '2021-10-21 10:05:24'),
(3, 'Lantai 2-B', 'Barat', '0', 0, 1, '2017-01-04 18:01:16', 1, '2021-10-22 15:10:20'),
(16, 'Lantai 3', 'Aula', '0', 0, 1, '2017-01-04 18:01:16', 1, '2021-10-22 15:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `ldg_lodge`
--

CREATE TABLE `ldg_lodge` (
  `lodgeId` int(11) NOT NULL,
  `lodgeName` varchar(128) NOT NULL,
  `lodgeAddress` varchar(512) NOT NULL,
  `lodgeCity` varchar(50) NOT NULL,
  `lodgeState` varchar(50) NOT NULL,
  `lodgeCountry` varchar(50) DEFAULT NULL,
  `lodgePincode` varchar(10) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of lodge';

-- --------------------------------------------------------

--
-- Table structure for table `ldg_reset_password`
--

CREATE TABLE `ldg_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldg_reset_password`
--

INSERT INTO `ldg_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(25, 'email@gmail.com', 'nxwY5JKbbNcTRju', 'Chrome 56.0.2924.87', '0.0.0.0', 0, 1, '2017-03-22 18:11:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ldg_roles`
--

CREATE TABLE `ldg_roles` (
  `roleId` tinyint(4) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of roles';

--
-- Dumping data for table `ldg_roles`
--

INSERT INTO `ldg_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Booker');

-- --------------------------------------------------------

--
-- Table structure for table `ldg_rooms`
--

CREATE TABLE `ldg_rooms` (
  `roomId` int(11) NOT NULL,
  `roomNumber` varchar(50) NOT NULL,
  `roomSizeId` int(11) NOT NULL COMMENT 'FK : ldg_room_sizes',
  `floorId` tinyint(4) NOT NULL COMMENT 'FK : ldg_floor',
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of rooms';

--
-- Dumping data for table `ldg_rooms`
--

INSERT INTO `ldg_rooms` (`roomId`, `roomNumber`, `roomSizeId`, `floorId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Lobby', 1, 1, 0, 1, '2021-10-21 10:21:39', NULL, NULL),
(2, 'Timur', 2, 2, 0, 1, '2021-10-22 17:51:05', NULL, NULL),
(3, 'Barat', 6, 3, 0, 1, '2021-10-22 17:51:30', NULL, NULL),
(4, 'Aula', 3, 16, 0, 1, '2021-10-22 16:58:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ldg_room_base_fare`
--

CREATE TABLE `ldg_room_base_fare` (
  `bfId` bigint(20) NOT NULL,
  `sizeId` int(11) NOT NULL,
  `baseFareHour` double NOT NULL,
  `baseFareDay` double NOT NULL,
  `serviceTax` double NOT NULL,
  `serviceCharge` double NOT NULL,
  `fareTotal` double NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ldg_room_base_fare`
--

INSERT INTO `ldg_room_base_fare` (`bfId`, `sizeId`, `baseFareHour`, `baseFareDay`, `serviceTax`, `serviceCharge`, `fareTotal`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 1, 40, 500, 15, 3.5, 592.5, 0, 1, '2017-02-11 19:14:24', 1, '2017-02-11 19:16:14'),
(2, 2, 55, 700, 15, 3.5, 829.5, 0, 1, '2017-02-11 19:19:52', 1, '2017-02-11 19:25:38'),
(3, 3, 60, 800, 15, 3.5, 948, 0, 1, '2017-02-11 19:20:07', NULL, NULL),
(4, 4, 70, 900, 15, 3.5, 1066.5, 0, 1, '2017-02-11 19:20:35', NULL, NULL),
(5, 5, 100, 1100, 15, 3.5, 1303.5, 0, 1, '2017-02-11 19:20:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ldg_room_sizes`
--

CREATE TABLE `ldg_room_sizes` (
  `sizeId` int(11) NOT NULL,
  `sizeTitle` varchar(512) NOT NULL,
  `sizeDescription` text NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of room sizes';

--
-- Dumping data for table `ldg_room_sizes`
--

INSERT INTO `ldg_room_sizes` (`sizeId`, `sizeTitle`, `sizeDescription`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Kapasitas 5-7 Orang(Lobby)', '<ol>\r\n<li>Televisi</li>\r\n<li>Ac</li>\r\n<li>Meja</li>\r\n<li>Kursi</li>\r\n<li>Pengganti udara</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + Lan)</li>\r\n</ol>', 0, 1, '2017-01-04 18:05:53', 1, '2021-10-27 10:26:01'),
(2, 'Kapasitas 6-8 Orang(Timur)', '<ol>\r\n<li>Televisi</li>\r\n<li>Kursi</li>\r\n<li>Meja</li>\r\n<li>Ac</li>\r\n<li>Tempat Sampah</li>\r\n<li>Air Purifier</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet(Wifi + Lan)</li>\r\n</ol>', 0, 1, '2017-01-04 18:07:56', 1, '2021-10-27 10:26:18'),
(3, 'Kapasitas 30-35 Orang(Aula)', '<p> </p>\r\n<ol>\r\n<li>Kursi</li>\r\n<li>Meja</li>\r\n<li>Proyektor</li>\r\n<li>Sound Sytem</li>\r\n<li>Panggung</li>\r\n<li>Ac</li>\r\n<li>Microphone</li>\r\n<li>Smoke Detector</li>\r\n<li>Alat Pemadam Kebakaran</li>\r\n<li>Smoking area </li>\r\n<li>Internet</li>\r\n<li>Toilet 2</li>\r\n</ol>', 0, 1, '2017-01-04 18:09:09', 1, '2021-10-27 10:28:25'),
(6, 'Kapasitas 6-8 Orang (Barat)', '<ol>\r\n<li>Televisi</li>\r\n<li>Proyektor</li>\r\n<li>Kursi</li>\r\n<li>Toilet 1</li>\r\n<li>Ac</li>\r\n<li>Komputer</li>\r\n<li>Microphone</li>\r\n<li>Telpon</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet(Wifi + Lan)</li>\r\n</ol>', 0, 1, '2021-10-22 17:21:11', 1, '2021-10-27 10:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `ldg_users`
--

CREATE TABLE `ldg_users` (
  `userId` int(11) NOT NULL,
  `userNIK` varchar(128) NOT NULL,
  `userPassword` varchar(128) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userPhone` varchar(20) NOT NULL,
  `userAddress` varchar(1024) NOT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of administrative users';

--
-- Dumping data for table `ldg_users`
--

INSERT INTO `ldg_users` (`userId`, `userNIK`, `userPassword`, `userName`, `userPhone`, `userAddress`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@gmail.com', '$2y$10$DuLcQ6jBDRGP5uMHYSgb/.q5kEmsXYzymaElAdMUqYlYKQHwDtbz6', 'Admin', '9890098900', 'Purwokerto', 1, 0, 1, '2017-01-01 00:00:00', 1, '2021-10-25 08:11:32'),
(2, 'subadmin@gmail.com', '$2y$10$sqyx0XUQhJxIJ6lq9adpV.ioq97zngNXeT33b/n5M2KbWdyzfALie', 'Sub Admin', '9890098900', '', 2, 1, 1, '2017-03-23 18:19:38', 1, '2021-10-13 09:00:50'),
(3, 'admin@codeinsect.com', '$2y$10$0zdAvfmzLst8d2aoD5vi6emxmcT4idjjTl1Uz3zkKwzRGbaAk0qk.', 'Book Admin', '9890098900', '', 3, 1, 1, '2017-03-24 16:26:31', 1, '2021-10-13 09:00:46'),
(4, '3329091505010012', '$2y$10$LwTNiWqNiYv3vfF0idkwheuQAS24rGIapTMESNrJgONmXJYzTxK06', 'Gilang', '1234567890', '', 2, 0, 1, '2021-10-13 08:22:42', 4, '2021-10-25 08:09:46'),
(5, '1111111111111', '$2y$10$DWTLoV9R53YJGYRhawi3b.zYmtFGycbJp9O7nLDsJ.uboeF0EELeu', 'Olan', '0812375123', '', 3, 0, 1, '2021-10-19 04:01:40', NULL, NULL),
(6, '2222222222222', '$2y$10$40Fkz27jo3cUz5ziWbVrkuBeVKAw1tsf6dkVDmvi6MER9wmyvpHou', 'Fikri', '0091283731', '', 3, 0, 1, '2021-10-19 04:02:09', NULL, NULL),
(7, '810120', '$2y$10$FOuc5NOkh2yKFiz01f3E6.nLRViKmtGsVMYi2DUjRKaCxCXAtdbQa', 'Bu Rama', '0812371371', '', 3, 0, 1, '2021-10-19 11:55:08', NULL, NULL),
(8, '0000000000000', '$2y$10$Ip7sxwGNuJPp39.f3Kxmr.1fj67d6KtxXE2eLGiX9MAFVsYn8P1Dq', 'Olan', '8089897779', '', 3, 0, 1, '2021-10-20 06:47:23', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indexes for table `ldg_customer`
--
ALTER TABLE `ldg_customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `ldg_floor`
--
ALTER TABLE `ldg_floor`
  ADD PRIMARY KEY (`floorId`),
  ADD UNIQUE KEY `floorCode` (`floorCode`);

--
-- Indexes for table `ldg_lodge`
--
ALTER TABLE `ldg_lodge`
  ADD PRIMARY KEY (`lodgeId`);

--
-- Indexes for table `ldg_reset_password`
--
ALTER TABLE `ldg_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ldg_roles`
--
ALTER TABLE `ldg_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `ldg_rooms`
--
ALTER TABLE `ldg_rooms`
  ADD PRIMARY KEY (`roomId`);

--
-- Indexes for table `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  ADD PRIMARY KEY (`bfId`);

--
-- Indexes for table `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  ADD PRIMARY KEY (`sizeId`);

--
-- Indexes for table `ldg_users`
--
ALTER TABLE `ldg_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `ldg_customer`
--
ALTER TABLE `ldg_customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ldg_floor`
--
ALTER TABLE `ldg_floor`
  MODIFY `floorId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ldg_lodge`
--
ALTER TABLE `ldg_lodge`
  MODIFY `lodgeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ldg_reset_password`
--
ALTER TABLE `ldg_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ldg_roles`
--
ALTER TABLE `ldg_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ldg_rooms`
--
ALTER TABLE `ldg_rooms`
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  MODIFY `bfId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  MODIFY `sizeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ldg_users`
--
ALTER TABLE `ldg_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
