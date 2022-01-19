-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2022 at 08:52 AM
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
-- Table structure for table `ldg_absensi`
--

CREATE TABLE `ldg_absensi` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nik` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `is_delete` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ldg_absensi`
--

INSERT INTO `ldg_absensi` (`id`, `booking_id`, `nama`, `nik`, `email`, `created_at`, `updated_at`, `file`, `is_delete`) VALUES
(18, 198, 'gilang, ollan , rdian, fikri', '19104043', 'admin@gmail.com', '2022-01-06 14:18:33pm', '2022-01-10 09:11:52am', '78fed2887cdc15529384e9f04da66e4d.jpg', 1),
(19, 215, 'Olan,Alfan,Fikri,Dian', '19104043', 'olan@gmail.com', '2022-01-09 13:05:14pm', '2022-01-09 14:49:48pm', '5da9849ab3cd42ee8b9c0cd4ed8a08b9.jpg', 1),
(20, 215, 'gilang', '19104048', 'zidan@gmail.com', '2022-01-09 13:05:56pm', '2022-01-09 14:49:37pm', '3f7ce759b1541b6e0b9c1a9472fbf026.jpg', 1),
(22, 217, 'gilang', '19104043', 'gilang@gmail.com', '2022-01-10 13:12:34pm', '2022-01-11 09:50:03am', '8fc96f6fa5d006c1e970ec3d13c8e9e0.png', 1),
(23, 217, 'Olan', '19104048', 'olan@gmail.com', '2022-01-10 13:13:08pm', '2022-01-11 09:49:57am', 'd0d5ca8b119787c035d57a5237ea8645.jpg', 1),
(24, 218, 'gilang', '19104043', 'gilang@gmail.com', '2022-01-11 09:55:39am', '2022-01-11 09:55:39am', '5e6085b6c1226858e2b1d4db9636d6f0.png', 0);

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
  `kontakpic` varchar(20) NOT NULL,
  `jumlahpeserta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ldg_bookings`
--

INSERT INTO `ldg_bookings` (`bookingId`, `customerName`, `bookingDtm`, `roomId`, `bookStartDate`, `bookEndDate`, `bookingComments`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`, `kontakpic`, `jumlahpeserta`) VALUES
(51, 'olan', '2021-10-24 20:43:16', 1, '2021-10-18 00:00:00', '2021-10-24 12:00:00', 'Rapat besar', 1, 1, '2021-10-24 20:43:16', 1, '2021-12-21 13:20:12', '0876467788', ''),
(52, 'nanda', '2021-10-24 21:02:18', 1, '2021-10-18 00:00:00', '2021-10-24 20:00:00', 'Marhaban', 1, 1, '2021-10-24 21:02:18', 1, '2021-12-21 13:20:15', '8382382372', ''),
(53, 'Ahmad', '2021-10-24 21:39:49', 2, '2021-10-24 00:00:00', '2021-10-24 20:00:00', 'Silahturahmi', 1, 1, '2021-10-24 21:39:49', 1, '2021-12-21 13:20:06', '0910831831', ''),
(54, 'Bu Rama', '2021-10-24 21:47:32', 2, '2021-10-24 00:00:00', '2021-10-24 20:00:00', 'Meeting Puasa', 1, 1, '2021-10-24 21:47:32', 1, '2021-12-21 13:20:09', '9819317313', ''),
(58, 'Saipul', '2021-10-25 08:29:56', 3, '2021-10-25 09:00:00', '2021-10-25 06:52:20', 'Rapat besar', 1, 1, '2021-10-25 08:29:56', 1, '2021-12-21 13:19:54', '0812398123', ''),
(59, 'Intan', '2021-10-25 08:50:45', 3, '2021-10-25 10:00:00', '2021-10-26 09:34:49', 'Makan Besar', 1, 1, '2021-10-25 08:50:45', 1, '2021-12-21 13:19:50', '0910831831', ''),
(60, 'Putri', '2021-10-25 09:02:01', 1, '2021-10-25 09:00:00', '2021-10-26 06:34:30', 'Silahturahmi', 1, 1, '2021-10-25 09:02:01', 1, '2021-12-21 13:20:02', '88888888888', ''),
(61, 'Abdur', '2021-10-25 09:03:09', 1, '2021-10-25 11:00:00', '2021-10-26 12:00:00', '17 Agustus', 1, 1, '2021-10-25 09:03:09', 1, '2021-12-21 13:19:47', '0910831831', ''),
(69, 'Bu Rama', '2021-10-28 13:31:33', 2, '2021-10-28 00:00:00', '2021-10-28 14:00:00', 'Bukber', 1, 1, '2021-10-28 13:31:33', 1, '2021-12-21 13:19:44', '9819317313', ''),
(70, 'Fikri', '2021-10-28 14:47:51', 2, '2021-10-28 18:22:54', '2021-10-29 20:19:27', 'Maulid Nabi', 1, 1, '2021-10-28 13:44:32', 1, '2021-12-21 13:19:41', '0876467788', ''),
(71, 'Alfan', '2021-10-28 21:28:17', 2, '2021-10-30 00:00:00', '2021-10-30 10:00:00', 'Jalan jalan', 1, 1, '2021-10-28 21:28:17', 1, '2021-12-21 13:19:34', '9819317313', ''),
(72, 'Vincent', '2021-10-28 21:40:56', 1, '2021-10-28 21:40:00', '2021-10-28 23:00:00', 'Mabar', 1, 1, '2021-10-28 21:37:56', 1, '2021-12-21 13:19:38', '0910831831', ''),
(73, 'Abdul', '2021-11-01 12:53:28', 1, '2021-11-01 13:00:00', '2021-11-01 14:00:00', 'Cuti Bersama', 1, 7, '2021-11-01 12:53:28', 1, '2021-12-21 13:19:30', '777777777777777', ''),
(74, 'Lang ', '2021-11-02 08:53:04', 1, '2021-11-02 08:52:00', '2021-11-02 09:00:00', 'Bukber', 1, 1, '2021-11-02 08:53:04', 1, '2021-12-21 13:19:28', '88888888888', ''),
(76, 'Simad', '2021-11-02 09:44:51', 4, '2021-11-02 09:00:00', '2021-11-02 11:00:00', 'Bukber', 1, 1, '2021-11-02 09:44:51', 1, '2021-12-21 13:19:25', '0812398123', ''),
(77, 'Reva', '2021-11-02 15:27:59', 1, '2021-11-02 15:00:00', '2021-11-02 17:00:00', 'Class', 1, 1, '2021-11-02 15:27:59', 1, '2021-12-21 13:19:16', '0910831831', ''),
(78, 'Bu Rama', '2021-11-02 16:25:51', 3, '2021-11-02 17:00:00', '2021-11-02 18:00:00', 'Meeting Puasa', 1, 1, '2021-11-02 16:25:51', 1, '2021-12-21 13:19:13', '88888888888', ''),
(80, 'Bu ambar', '2021-11-02 17:28:22', 3, '2021-11-02 17:29:00', '2021-11-02 18:00:00', 'Bukber', 1, 1, '2021-11-02 16:28:22', 1, '2021-12-21 13:19:11', '9819317313', ''),
(81, 'Pincen', '2021-11-02 22:01:26', 2, '2021-11-02 21:00:00', '2021-11-02 23:30:00', 'Silahturahmi', 1, 1, '2021-11-02 22:01:26', 1, '2021-12-21 13:19:08', '9819317313', ''),
(83, 'Fikri', '2021-11-03 09:15:13', 1, '2021-11-03 10:00:00', '2021-11-03 11:00:00', 'Rapat besar', 1, 7, '2021-11-03 09:15:13', 1, '2021-12-21 13:19:03', '88888888888', ''),
(84, 'Dian', '2021-11-03 09:16:17', 1, '2021-11-03 09:15:00', '2021-11-03 10:35:58', 'Maulid Nabi', 1, 7, '2021-11-03 09:16:17', 1, '2021-12-21 13:19:05', '0910831831', ''),
(85, 'olan', '2021-11-03 09:16:56', 1, '2021-11-03 12:00:00', '2021-11-03 13:00:00', 'Silahturahmi', 1, 7, '2021-11-03 09:16:56', 1, '2021-12-21 13:19:00', '8382382372', ''),
(92, 'Fikri', '2021-11-03 22:59:59', 1, '2021-11-04 08:00:00', '2021-11-04 09:00:00', 'Bukber', 1, 1, '2021-11-03 22:59:59', 1, '2021-12-21 13:18:58', '0876467788', ''),
(93, 'Ahmad', '2021-11-03 23:01:13', 1, '2021-11-04 10:00:00', '2021-11-04 11:00:00', 'Marhaban', 1, 1, '2021-11-03 23:01:13', 1, '2021-12-21 13:18:52', '9819317313', ''),
(101, 'Slamet Riyadi', '2021-11-04 08:59:49', 1, '2021-11-04 09:00:00', '2021-11-04 10:00:00', 'Upacara', 1, 1, '2021-11-04 08:59:49', 1, '2021-12-21 13:18:55', '9819317313', ''),
(106, 'sugender', '2021-11-04 09:11:44', 1, '2021-11-04 12:00:00', '2021-11-04 13:00:00', 'moshing', 1, 1, '2021-11-04 09:11:44', 1, '2021-12-21 12:32:25', '00000000000', ''),
(107, 'ipul', '2021-11-04 09:14:55', 1, '2021-11-04 11:00:00', '2021-11-04 12:00:00', 'racingan', 1, 1, '2021-11-04 09:14:55', 1, '2021-12-21 12:32:28', '9819317313', ''),
(111, 'Ahmad', '2021-11-04 09:32:05', 1, '2021-11-04 13:00:00', '2021-11-04 14:00:00', 'Silahturahmi', 1, 1, '2021-11-04 09:32:05', 1, '2021-12-21 12:32:22', '0876467788', ''),
(112, 'Faisal', '2021-11-04 13:27:56', 1, '2021-11-04 14:00:00', '2021-11-04 15:00:00', 'Rapat besar', 1, 7, '2021-11-04 13:27:56', 1, '2021-12-21 12:32:19', '0876467788', ''),
(118, 'Bu Rama', '2021-11-08 15:38:27', 1, '2021-11-08 15:00:00', '2021-11-08 17:00:00', 'Rapat besar', 1, 7, '2021-11-08 15:38:27', 1, '2021-12-21 12:32:17', '88888888888', ''),
(120, 'Narantyo', '2021-11-09 20:16:40', 1, '2021-11-10 08:00:00', '2021-11-10 09:00:00', 'Hari pahlawan', 1, 1, '2021-11-09 20:16:40', 1, '2021-12-21 12:32:14', '99999999', ''),
(123, 'Bu Rama', '2021-11-09 21:01:46', 1, '2021-11-10 09:00:00', '2021-11-10 10:00:00', 'asd', 1, 1, '2021-11-09 21:01:46', 1, '2021-12-21 12:32:10', '23213', ''),
(138, 'olan', '2021-11-10 08:47:26', 1, '2021-11-10 11:00:00', '2021-11-10 12:00:00', 'Silahturahmi', 1, 1, '2021-11-10 08:47:26', 1, '2021-12-21 12:32:07', '8382382372', ''),
(140, 'Rama', '2021-11-17 11:25:33', 1, '2021-11-17 12:00:00', '2021-11-17 12:01:00', 'Sas', 1, 7, '2021-11-17 11:25:33', 1, '2021-12-21 12:32:04', '08111221234', ''),
(141, 'Ambar', '2021-11-17 11:51:17', 1, '2021-11-17 14:00:00', '2021-11-16 18:00:00', 'Coba cobi', 1, 24, '2021-11-17 11:51:17', 1, '2021-12-21 12:32:01', '08221815667789', ''),
(142, 'Brian', '2021-11-17 12:48:45', 1, '2021-11-18 09:00:00', '2021-11-17 12:00:00', 'Rapat Hore', 1, 25, '2021-11-17 12:48:45', 1, '2021-12-21 12:31:05', '081227165324', ''),
(143, 'Mbak Rifa', '2021-11-18 14:21:23', 4, '2021-11-19 09:00:00', '2021-11-19 11:00:00', 'Approval SF baru ', 1, 1, '2021-11-18 14:21:23', 1, '2021-12-21 12:31:01', '082298659737', ''),
(154, 'Alfan', '2021-12-02 20:58:40', 1, '2021-12-02 00:00:00', '2021-12-03 00:00:00', 'Makan', 1, 1, '2021-12-02 20:58:40', 1, '2021-12-21 12:30:55', '83749499', ''),
(155, 'Uuy', '2021-12-02 20:59:51', 2, '2021-12-02 20:00:00', '2021-12-02 22:00:00', 'Ieorio', 1, 1, '2021-12-02 20:59:51', 1, '2021-12-21 12:30:51', '83749499', ''),
(172, 'Reva', '2021-12-12 21:15:05', 1, '2021-12-12 00:00:00', '2021-12-13 00:00:00', 'Mbuhh', 1, 1, '2021-12-12 21:15:05', 1, '2021-12-21 12:30:46', '9819239', ''),
(173, 'Bu Rama', '2021-12-13 15:44:13', 1, '2021-12-13 13:00:00', '2021-12-13 17:00:00', 'Maulid Nabi', 1, 7, '2021-12-13 15:44:13', 1, '2021-12-21 12:30:41', '0812398123', ''),
(174, 'Ahmad', '2021-12-13 15:44:59', 1, '2021-12-13 14:00:00', '2021-12-13 16:00:00', 'Rapat besar', 1, 7, '2021-12-13 15:44:59', 1, '2021-12-21 12:30:37', '0910831831', ''),
(175, 'ipul', '2021-12-21 12:10:29', 2, '2021-12-21 12:00:00', '2021-12-21 13:00:00', 'tess', 1, 1, '2021-12-21 12:10:29', 1, '2021-12-21 12:12:17', '684939', '15'),
(178, 'tester', '2021-12-21 12:19:01', 3, '2021-12-21 13:00:00', '2021-12-21 14:00:00', 'rapat', 1, 1, '2021-12-21 12:19:01', 1, '2021-12-21 12:30:29', '0819278393', '8'),
(179, 'ipul', '2021-12-21 12:22:01', 2, '2021-12-21 12:00:00', '2021-12-20 14:00:00', 'rapat', 1, 1, '2021-12-21 12:22:01', 1, '2021-12-21 12:30:33', '019182732828', '15'),
(180, 'anis', '2021-12-21 12:24:17', 3, '2021-12-22 13:00:00', '2021-12-22 14:00:00', 'tess', 1, 1, '2021-12-21 12:24:17', 1, '2021-12-21 12:30:24', '9823982', '15'),
(181, 'ipul', '2021-12-21 14:02:08', 3, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'tess', 1, 1, '2021-12-21 14:02:08', 1, '2021-12-23 11:17:51', '9823982', '7'),
(182, 'tester', '2021-12-21 14:09:49', 2, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'tester', 1, 1, '2021-12-21 14:09:49', 1, '2021-12-23 11:18:56', '088997', '8'),
(183, 'ree', '2021-12-21 14:10:32', 1, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'tess', 1, 1, '2021-12-21 14:10:32', 1, '2021-12-23 11:18:59', '899233', '5'),
(184, 'qq', '2021-12-21 14:11:31', 4, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'rqqq', 1, 1, '2021-12-21 14:11:31', 1, '2021-12-23 11:18:51', '89797', '30'),
(185, 'tester', '2021-12-21 14:12:31', 3, '2021-12-21 15:00:00', '2021-12-21 16:00:00', 'rapat', 1, 1, '2021-12-21 14:12:31', 1, '2021-12-23 11:18:00', '019182732828', '6'),
(186, 'tester', '2021-12-21 14:13:29', 2, '2021-12-21 16:00:00', '2021-12-21 17:00:00', 'tester', 1, 1, '2021-12-21 14:13:29', 1, '2021-12-23 11:18:31', '0819278393', '6'),
(187, 'galuh', '2021-12-21 14:13:58', 3, '2021-12-21 17:00:00', '2021-12-21 18:00:00', 'rapat', 1, 1, '2021-12-21 14:13:58', 1, '2021-12-21 15:21:39', '0819278393', '6'),
(188, 'ipul', '2021-12-21 14:15:05', 3, '2021-12-21 18:00:00', '2021-12-21 19:00:00', 'tester', 1, 1, '2021-12-21 14:15:05', 1, '2021-12-23 11:18:35', '0819278393', '15'),
(189, 'tester', '2021-12-21 14:16:04', 3, '2021-12-21 20:00:00', '2021-12-21 21:00:00', 'rapat', 1, 1, '2021-12-21 14:16:04', 1, '2021-12-23 11:18:45', '9823982', '6'),
(190, 'Teeess', '2021-12-21 15:22:26', 2, '2021-12-21 17:00:00', '2021-12-21 19:00:00', 'Tess Aja', 1, 1, '2021-12-21 15:22:26', 1, '2021-12-23 11:18:39', '09898', '8 Orang'),
(191, 'teeeess', '2021-12-21 15:23:26', 3, '2021-12-21 16:00:00', '2021-12-21 18:00:00', 'rqqq', 1, 1, '2021-12-21 15:23:26', 1, '2021-12-23 11:17:55', '999', '10'),
(192, 'Saddek', '2021-12-22 11:07:15', 1, '2021-12-22 13:00:00', '2021-12-22 16:00:00', 'Rekon PT-3 Node-B', 0, 27, '2021-12-22 11:07:15', NULL, NULL, '081277557186', '4'),
(193, 'Rifa HS', '2021-12-23 09:25:57', 2, '2021-12-23 09:30:00', '2021-12-23 12:00:00', 'Rapat Internal Sales', 0, 29, '2021-12-23 09:25:57', NULL, NULL, '082298659737', '5'),
(194, 'Rama', '2021-12-23 10:29:23', 2, '2021-12-23 13:00:00', '2021-12-23 17:00:00', 'Rapat SMK3', 1, 7, '2021-12-23 10:29:23', 1, '2021-12-23 14:48:47', '08111221234', '6'),
(195, 'Rama', '2021-12-23 14:48:38', 1, '2021-12-23 14:50:00', '2021-12-23 17:00:00', 'Rapat SMK3', 0, 1, '2021-12-23 14:48:38', NULL, NULL, '0274 577227', '6'),
(196, 'Saddek', '2021-12-23 16:00:44', 2, '2021-12-23 16:00:00', '2021-12-23 18:00:00', 'Rekon PT3/STTF3', 0, 27, '2021-12-23 16:00:44', NULL, NULL, '081277557186', '3'),
(197, 'Saddek', '2021-12-23 18:35:28', 1, '2021-12-24 13:30:00', '2021-12-24 16:00:00', 'Rekon Pekerjaan HEM (BGES)', 0, 27, '2021-12-23 18:35:28', NULL, NULL, '081277557186', '3'),
(198, 'Erni', '2021-12-23 18:39:18', 1, '2021-12-24 00:00:00', '2021-12-24 00:00:00', '1on1 WMS dengan Cons', 0, 32, '2021-12-23 18:39:18', NULL, NULL, '08123423274', '10'),
(199, 'Erni', '2021-12-23 18:41:02', 2, '2021-12-24 13:30:00', '2021-12-24 17:00:00', '1on1 WMS dengan Cons', 0, 32, '2021-12-23 18:41:02', NULL, NULL, '08123423274', '10'),
(200, 'Trinil', '2021-12-24 08:45:26', 1, '2021-12-24 09:00:00', '2021-12-24 11:00:00', 'Meeting', 0, 34, '2021-12-24 08:45:26', NULL, NULL, '08122690706', '6'),
(201, 'Martarini', '2021-12-24 15:17:34', 2, '2021-12-24 15:30:00', '2021-12-24 17:00:00', 'Meeting Internal WR', 0, 35, '2021-12-24 15:17:34', NULL, NULL, 'Martarini', '4'),
(202, 'Rifa HS', '2021-12-28 08:47:41', 1, '2021-12-28 09:00:00', '2021-12-28 15:00:00', 'Interview Rekrutmen Sales Agency KYK', 0, 29, '2021-12-28 08:47:41', NULL, NULL, '082298659737', '4'),
(203, 'Ilham/arum', '2021-12-29 09:26:14', 1, '2021-12-30 00:00:00', '2021-12-30 00:00:00', 'Meet dg team SP dan AM perwakilan', 0, 36, '2021-12-29 09:26:14', NULL, NULL, 'Ilham/Arum', '8 orang'),
(204, 'Tasia', '2021-12-30 10:49:54', 1, '2021-12-31 07:00:00', '2021-12-31 15:00:00', 'Interview Enterprise', 0, 24, '2021-12-30 10:49:54', NULL, NULL, '0811 2571112', '7'),
(205, 'Rama', '2022-01-03 08:49:01', 1, '2022-01-03 15:00:00', '2022-01-03 17:00:00', 'Rapat SMK3', 1, 7, '2022-01-03 08:49:01', 1, '2022-01-03 15:34:34', '08111221234', '6'),
(206, 'Rifa HS', '2022-01-03 09:05:40', 3, '2022-01-03 09:15:00', '2022-01-03 13:00:00', 'Rapat Internal HS', 0, 29, '2022-01-03 09:05:40', NULL, NULL, '082298659737', '5'),
(207, 'Rama', '2022-01-03 16:18:15', 1, '2022-01-04 09:00:00', '2022-01-04 17:00:00', 'Rapat SMK3', 0, 7, '2022-01-03 16:18:15', NULL, NULL, '08111221234', '6'),
(208, 'Martarini', '2022-01-03 17:12:21', 2, '2022-01-04 10:00:00', '2022-01-04 14:00:00', 'Rekon Data Reseller', 0, 35, '2022-01-03 17:12:21', NULL, NULL, 'Martarini', '8'),
(209, 'Ilham/arum', '2022-01-04 11:07:46', 2, '2022-01-04 14:00:00', '2022-01-04 16:00:00', 'Remaping plg BS', 0, 36, '2022-01-04 11:07:46', NULL, NULL, 'Ilham/Arum', '8 orang'),
(210, 'Catharina Nariswari', '2022-01-04 14:51:29', 1, '2022-01-06 08:00:00', '2022-01-06 13:00:00', 'Product Knowledge Sales', 0, 38, '2022-01-04 14:51:29', NULL, NULL, '082219137720', '8'),
(211, 'Catharina Nariswari', '2022-01-04 14:52:19', 1, '2022-01-07 08:00:00', '2022-01-07 13:00:00', 'Product Knowledge Sales', 0, 38, '2022-01-04 14:52:19', NULL, NULL, '082219137720', '8'),
(212, 'Catharina Nariswari', '2022-01-04 15:19:56', 4, '2022-01-05 08:00:00', '2022-01-05 15:00:00', 'weekly meeting spv', 0, 38, '2022-01-04 15:19:56', NULL, NULL, '082219137720', '50'),
(213, 'Aufa', '2022-01-05 12:19:24', 1, '2022-01-05 13:00:00', '2022-01-04 16:00:00', 'Rapat internal Es', 0, 39, '2022-01-05 12:19:24', NULL, NULL, '081392998184', '5'),
(214, 'Dian Ayu Puspitaningrum', '2022-01-06 11:06:44', 2, '2022-01-05 11:00:00', '2022-01-06 16:00:00', ' Koordinator Mapping reseller', 0, 42, '2022-01-06 11:06:44', NULL, NULL, '081227836083', '3'),
(215, 'Olan', '2022-01-06 14:56:07', 1, '2022-01-06 14:00:00', '2022-01-06 15:00:00', 'Tes Booking Room Fitur Baru', 1, 26, '2022-01-06 14:56:07', 1, '2022-01-06 15:14:51', '081238', '6'),
(216, 'Ambar', '2022-01-06 15:19:48', 1, '2022-01-06 18:00:00', '2022-01-06 19:00:00', 'tes', 0, 24, '2022-01-06 15:19:48', NULL, NULL, '082218115910', '7'),
(217, 'Ambar', '2022-01-06 15:31:23', 1, '2022-01-06 15:30:00', '2022-01-06 16:15:00', 'tes2', 0, 24, '2022-01-06 15:31:23', NULL, NULL, '082218115910', '7'),
(218, 'Martarini', '2022-01-07 13:10:46', 2, '2022-01-07 14:00:00', '2022-01-07 17:00:00', 'Prepare 1on1 Capex STTF1 2022', 0, 35, '2022-01-07 13:10:46', NULL, NULL, 'Martarini', '6'),
(219, 'Ambar', '2022-01-09 17:32:43', 1, '2022-01-10 09:00:00', '2022-01-11 12:00:00', 'Interview Sales', 0, 24, '2022-01-09 17:32:43', NULL, NULL, '082218115910', '7'),
(220, 'Meyta', '2022-01-10 08:41:05', 1, '2022-01-10 09:00:00', '2022-01-10 12:00:00', 'visit GM CTS', 0, 44, '2022-01-10 08:41:05', NULL, NULL, '08121507411', '7'),
(221, 'Ilham/arum', '2022-01-10 08:51:03', 1, '2022-01-10 13:30:00', '2022-01-10 16:00:00', 'Meet dg AM dan team BS ', 0, 36, '2022-01-10 08:51:03', NULL, NULL, 'Ilham/Arum', '8 orang'),
(222, 'Ilham', '2022-01-10 09:43:06', 1, '2022-01-10 14:00:00', '2022-01-10 16:00:00', 'meeting DBS', 0, 45, '2022-01-10 09:43:06', NULL, NULL, '081321424588', '7'),
(223, 'Septhian', '2022-01-10 10:41:35', 3, '2022-01-12 00:00:00', '2022-01-13 00:00:00', 'Testcall DCS dan Vendor VIMS', 0, 46, '2022-01-10 10:41:35', NULL, NULL, '082240469900', '10'),
(224, 'Trinil', '2022-01-10 14:31:00', 1, '2022-01-12 08:30:00', '2022-01-12 10:00:00', 'Meeting internal GS', 0, 34, '2022-01-10 14:31:00', NULL, NULL, '08122690706', '7'),
(225, 'Ambar', '2022-01-11 09:50:35', 4, '2022-01-12 08:00:00', '2022-01-12 17:00:00', 'Sosialisasi kepada PKL YK', 0, 24, '2022-01-11 09:50:35', NULL, NULL, '082218115910', '30'),
(226, 'erni', '2022-01-11 10:49:51', 1, '2022-01-11 13:00:00', '2022-01-11 15:00:00', 'koordinasi Karya Nada Indonesia', 0, 32, '2022-01-11 10:49:51', NULL, NULL, '08123423274', '4'),
(227, 'Septhian', '2022-01-11 12:44:29', 3, '2022-01-14 08:00:00', '2022-01-14 17:00:00', 'Testcall DCS dan Vendor VIMS', 0, 1, '2022-01-11 12:44:29', NULL, NULL, '082240489900', '10'),
(228, 'Martarini', '2022-01-11 13:18:11', 2, '2022-01-11 14:00:00', '2022-01-11 17:00:00', 'Vicon 1on1 Capex 2022', 0, 35, '2022-01-11 13:18:11', NULL, NULL, 'Martarini', '5');

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
  `floorCode` varchar(255) NOT NULL,
  `floorName` varchar(255) NOT NULL,
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
(1, 'Kapasitas 5-7 Orang (Prokes)', '<ol>\r\n<li>Televisi</li>\r\n<li>AC</li>\r\n<li>Meja</li>\r\n<li>Kursi</li>\r\n<li>Air Purifier</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + LAN)</li>\r\n</ol>', 0, 1, '2017-01-04 18:05:53', 1, '2021-12-21 15:31:25'),
(2, 'Kapasitas 6-8 Orang (Prokes)', '<ol>\r\n<li>Televisi</li>\r\n<li>Kursi</li>\r\n<li>Meja</li>\r\n<li>AC</li>\r\n<li>Tempat Sampah</li>\r\n<li>Air Purifier</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + LAN)</li>\r\n</ol>', 0, 1, '2017-01-04 18:07:56', 1, '2021-12-21 15:31:39'),
(3, 'Kapasitas 30-35 Orang (Prokes)', '<p> </p>\r\n<ol>\r\n<li>Kursi</li>\r\n<li>Meja</li>\r\n<li>Proyektor</li>\r\n<li>Sound Sytem</li>\r\n<li>Panggung</li>\r\n<li>AC</li>\r\n<li>Microphone</li>\r\n<li>Smoke Detector</li>\r\n<li>Alat Pemadam Kebakaran</li>\r\n<li>Internet</li>\r\n<li>Toilet (Pria dan Wanita)</li>\r\n</ol>', 0, 1, '2017-01-04 18:09:09', 1, '2021-12-21 15:31:51'),
(6, 'Kapasitas 6-10 Orang (Prokes)', '<ol>\r\n<li>Televisi</li>\r\n<li>Proyektor</li>\r\n<li>Kursi</li>\r\n<li>Toilet (Pria dan Wanita)</li>\r\n<li>AC</li>\r\n<li>Komputer</li>\r\n<li>Microphone</li>\r\n<li>Telpon</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + LAN)</li>\r\n</ol>', 0, 1, '2021-10-22 17:21:11', 1, '2021-12-22 08:50:07');

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
  `divisi` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL DEFAULT 0,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of administrative users';

--
-- Dumping data for table `ldg_users`
--

INSERT INTO `ldg_users` (`userId`, `userNIK`, `userPassword`, `userName`, `userPhone`, `userAddress`, `roleId`, `divisi`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@gmail.com', '$2y$10$DuLcQ6jBDRGP5uMHYSgb/.q5kEmsXYzymaElAdMUqYlYKQHwDtbz6', 'Admin', '9890098900', 'Purwokerto', 1, '', 0, 1, '2017-01-01 00:00:00', 1, '2021-10-25 08:11:32'),
(2, 'subadmin@gmail.com', '$2y$10$sqyx0XUQhJxIJ6lq9adpV.ioq97zngNXeT33b/n5M2KbWdyzfALie', 'Sub Admin', '9890098900', '', 2, '', 1, 1, '2017-03-23 18:19:38', 1, '2021-10-13 09:00:50'),
(3, 'admin@codeinsect.com', '$2y$10$0zdAvfmzLst8d2aoD5vi6emxmcT4idjjTl1Uz3zkKwzRGbaAk0qk.', 'Book Admin', '9890098900', '', 3, '', 1, 1, '2017-03-24 16:26:31', 1, '2021-10-13 09:00:46'),
(4, '3329091505010012', '$2y$10$LwTNiWqNiYv3vfF0idkwheuQAS24rGIapTMESNrJgONmXJYzTxK06', 'Gilang', '1234567890', '', 2, '', 0, 1, '2021-10-13 08:22:42', 4, '2021-10-25 08:09:46'),
(5, '1111111111111', '$2y$10$DWTLoV9R53YJGYRhawi3b.zYmtFGycbJp9O7nLDsJ.uboeF0EELeu', 'Olan', '0812375123', '', 3, '', 0, 1, '2021-10-19 04:01:40', NULL, NULL),
(6, '2222222222222', '$2y$10$40Fkz27jo3cUz5ziWbVrkuBeVKAw1tsf6dkVDmvi6MER9wmyvpHou', 'Fikri', '0091283731', '', 3, '', 0, 1, '2021-10-19 04:02:09', NULL, NULL),
(7, '810120', '$2y$10$0F.pgwIfzG5lLPfAEtT/1.PxoR1Vx5tkthe.rZZoqryWCGMu4.4Wa', 'Rama', '0812371371', '', 3, 'SAS', 0, 1, '2021-10-19 11:55:08', 1, '2021-12-21 12:28:57'),
(8, '0000000000000', '$2y$10$Ip7sxwGNuJPp39.f3Kxmr.1fj67d6KtxXE2eLGiX9MAFVsYn8P1Dq', 'Olan', '8089897779', '', 3, '', 0, 1, '2021-10-20 06:47:23', NULL, NULL),
(11, '12313', '$2y$10$xdH7B0meG/hXNWUyjIBU7urZW53d2EKqB/tyrgLj.g5v27.GUjB1S', 'Reva', '0000000000', '', 0, '', 0, 1, '2021-11-09 11:28:59', NULL, NULL),
(12, '0231312', '$2y$10$RIcBJDBhVoEA6oFoC68jTuycBFIthPjyC11CBdNkQ3mib7MSIO6XG', 'Alfan', '0', '', 0, 'IT', 0, 0, '0000-00-00 00:00:00', NULL, '2021-11-09 17:38:58'),
(13, '3333', '$2y$10$wqMwwjr0QSHUbQtHkL6LyOZgjAAdFbAa4NH4DQS0uF.Zkuvziudd6', 'Ssss', '0', '', 0, 'IT', 0, 0, '0000-00-00 00:00:00', NULL, '2021-11-09 17:39:37'),
(14, 'alfan@gmail.com', '$2y$10$kynFMfHiFsNvZgddfG3lruutmgl44uZmgFBUQdgSsiXIhOJi1ILEy', 'Alfan', '123123213123', '', 0, 'Ra dong', 0, 0, '0000-00-00 00:00:00', 1, '2021-11-09 18:26:50'),
(15, 'aku@gmail.com', '$2y$10$DuLcQ6jBDRGP5uMHYSgb/.q5kEmsXYzymaElAdMUqYlYKQHwDtbz6', 'Aku', '0', '', 0, 'IT', 0, 1, '2021-11-09 17:44:56', NULL, NULL),
(16, '12345', '$2y$10$CIB0anW5O7IaA74hlgmgMuIzTrgCNbKh2zQ.32BKTcjJWDEthLfAS', 'Alfan', '0', '', 3, 'IT', 0, 1, '2021-11-09 17:51:08', NULL, NULL),
(22, '2222', '$2y$10$QsLAy0f89xLq15F5DJSHnO9MlxRcl1W25lHuzDZwFTHRZRKWfHPYe', 'Reva R', '8912388844', '', 3, 'Medifo', 0, 1, '2021-11-10 20:14:23', NULL, NULL),
(23, '00000', '$2y$10$nYsemghrzCTRzjN..8CHku5fB.qwht4bySrPu6jz8sIwwU8uDdXJ6', 'Fikri', '08712382398', '', 3, 'War Room', 0, 1, '2021-11-15 08:20:47', NULL, NULL),
(24, '930434', '$2y$10$YlmkcVOc3lloWX4MEU5cc.4TaV9lI71UdmU6kikB7.ErVdJVrLMNO', 'Snf Anbarsari', '082218115910', '', 3, 'HOME SERVICE YOGYAKARTA', 0, 1, '2021-11-17 11:46:36', NULL, NULL),
(25, '930005', '$2y$10$ZX0YteWX56hwWLGNxrdOber5lEBLDrVgPujG7BfIE.tXx0Kez/HJ2', 'Herbriawan Wiratama Dwi Wardhana', '081227165324', '', 3, 'HERO', 0, 1, '2021-11-17 12:47:10', NULL, NULL),
(26, '19104048', '$2y$10$eAVxURV2OeEx6j7qud2Ktuj9GPWQxemvQiySXYNtGxivw4J3UO2Gq', 'Olan', '081393436458', '', 3, 'SAS', 0, 1, '2021-12-21 15:10:07', 1, '2021-12-21 15:28:03'),
(27, '950121', '$2y$10$Q0Ph1yiaLkqZKdbCsiTOZeCkI.r1zXpqII9Y6PuHyIF7l4KJQ89Ae', 'Saddek Syafrullah', '081277557186', '', 3, 'Access Optima & Construction SPV', 0, 1, '2021-12-22 11:05:00', NULL, NULL),
(28, '910005', '$2y$10$c70kvwvU9rthd17VjRCTaOG0b0KwPnmvILDlacjIc0lbhpRn4Njz6', 'Kamilatun', '082118299359', '', 3, 'BS', 0, 1, '2021-12-22 14:55:28', NULL, NULL),
(29, '970070', '$2y$10$8rl6v/nHXHtr1O7BggiiH.2MFVV/PQYqwrcJr6ncfVt63y.GSueUS', 'Rahmadina Arifazhari', '082298659737', '', 3, 'Home Service', 0, 1, '2021-12-23 09:21:33', NULL, NULL),
(30, '730092', '$2y$10$7ChNod/QkKDZEE/3q0Acl.J07TYPaLLWEZwG1LXdcAbjrNVyRolM6', 'Yani Qoyimah', '08112577373', '', 3, 'Share Service HC & Finance', 0, 1, '2021-12-23 10:27:31', NULL, NULL),
(31, 'sidik74@gmail.com', '$2y$10$VGI35ZQeJG7B7CtlSdEHFOoeRnfI5xdqd/KOVwrLfvhIusLKOQ99.', 'Muhammad Sidik Raharja', '0811601577', '', 3, 'Arnet Yogyakarta', 0, 1, '2021-12-23 10:59:51', NULL, NULL),
(32, '730535', '$2y$10$pDqJfF986Bj2lYvYWhsbvufOjB.n7VhgezLIQkMe2S1sbiA.MKlR2', 'Erni Purwanti', '08123423274', '', 3, 'DSW', 0, 1, '2021-12-23 18:37:52', NULL, NULL),
(33, '720485', '$2y$10$lMJxi6irHqC6cSLIe6vyaOHLVsz77KjVLKOC/L84hf.9.F0H5C7L.', 'Hery Nugroho', '0811553181', '', 3, 'Access Data Management', 0, 1, '2021-12-24 05:49:54', NULL, NULL),
(34, '740141', '$2y$10$H.RkfNnxsaZE0iKDaTl2YOxZIUDu/yGVIKSwJkQ410UZfwN2rih7q', 'Trinil Anjar Lestari', '08122690706', '', 3, 'Gov Services', 0, 1, '2021-12-24 08:41:48', NULL, NULL),
(35, '730086', '$2y$10$wjelpYjE2ffqq/NhWZKC3e/95Nc7R7wKLhsviLvKkXNrBDue2i172', 'Martarini', '0811701050', '', 3, 'War Room', 0, 1, '2021-12-24 15:15:16', NULL, NULL),
(36, '720266', '$2y$10$Aj1Vb2CwrklHyQlW2iWi3OFGlXYOunpHLgJZIlmhm6NJ07BK2pwli', 'Nunuk Eny K', '085100708500', '', 3, 'BS', 0, 1, '2021-12-29 09:23:45', NULL, NULL),
(37, 'baguscb76@gmail.com', '$2y$10$guUjCkqyB7ZA7B8D1fcJsOE90mdJnFkD/nQfIHQWTRADEwU/S08ce', 'Bagus Karuniawan', '08991586669', '', 3, 'GS', 0, 1, '2021-12-30 10:17:58', NULL, NULL),
(38, '900083', '$2y$10$WuZtixDXCbboo.o1nZs/R.nPjzkeZ9CYZvpN7HMpK9T5vrocS0tmO', 'Catharina Nariswari', '082219137720', '', 3, 'HS', 0, 1, '2022-01-04 14:50:06', NULL, NULL),
(39, '840080', '$2y$10$Qk6lTxlBUPOMiaYN4XxOZ.Mgj5rpQUJYL4i6TCJF.IUzmabutCowW', 'Dwisari Wiguna', '+6281288221660', '', 3, 'Enterprise service', 0, 1, '2022-01-05 12:16:01', NULL, NULL),
(42, '910291', '$2y$10$t83sVCIm9A7lNJArHms5t.XJ4YOiYDjnXeUm1WUgHDN3L5fC4mQTa', 'Dian Ayu Puspitaningrum', '081227836083', '', 3, 'Warrom', 0, 1, '2022-01-06 11:01:03', NULL, NULL),
(43, 'Y03d1@telkom.co.id', '$2y$10$aaUurkI4XvEmTqw5/JzaQOF5esIrVO8eeO.g/CeRLsXYvdHn6Cdv.', 'Wahyudi Hendro Santoso', '081348545758', '', 3, 'Access optima', 0, 1, '2022-01-07 13:17:21', NULL, NULL),
(44, '840140', '$2y$10$SXwQAWUehQ7S8fA22fYhHuklp1RgvKrJJL.TDmpLaTKg5g8ZgVO2.', 'Dwisari Wiguna', '081288221660', '', 3, 'ES', 0, 1, '2022-01-10 08:37:07', NULL, NULL),
(45, '965231', '$2y$10$VMDuXEu6eEhnyQg202ZhE.Q9z2H.wC9BEfYz4zHVs6o3ViJG95SxK', 'Ilham Fadhlurrohman', '081321424588', '', 3, 'DBS', 0, 1, '2022-01-10 09:35:10', NULL, NULL),
(46, '930414', '$2y$10$fk287JyA7/t2yVELbumZ5.k6Iq.NgXCmNvpuYrmUK0uypCsrHmQ5K', 'Septhian', '082240469900', '', 3, 'Arnet', 0, 1, '2022-01-10 10:39:21', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ldg_absensi`
--
ALTER TABLE `ldg_absensi`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `ldg_absensi`
--
ALTER TABLE `ldg_absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `ldg_customer`
--
ALTER TABLE `ldg_customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ldg_floor`
--
ALTER TABLE `ldg_floor`
  MODIFY `floorId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  MODIFY `bfId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  MODIFY `sizeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ldg_users`
--
ALTER TABLE `ldg_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
