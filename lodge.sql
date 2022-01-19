-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Des 2021 pada 02.46
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

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
-- Struktur dari tabel `ldg_bookings`
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
-- Dumping data untuk tabel `ldg_bookings`
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
(181, 'ipul', '2021-12-21 14:02:08', 3, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'tess', 0, 1, '2021-12-21 14:02:08', NULL, NULL, '9823982', '7'),
(182, 'tester', '2021-12-21 14:09:49', 2, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'tester', 0, 1, '2021-12-21 14:09:49', NULL, NULL, '088997', '8'),
(183, 'ree', '2021-12-21 14:10:32', 1, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'tess', 0, 1, '2021-12-21 14:10:32', NULL, NULL, '899233', '5'),
(184, 'qq', '2021-12-21 14:11:31', 4, '2021-12-21 14:00:00', '2021-12-21 15:00:00', 'rqqq', 0, 1, '2021-12-21 14:11:31', NULL, NULL, '89797', '30'),
(185, 'tester', '2021-12-21 14:12:31', 3, '2021-12-21 15:00:00', '2021-12-21 16:00:00', 'rapat', 0, 1, '2021-12-21 14:12:31', NULL, NULL, '019182732828', '6'),
(186, 'tester', '2021-12-21 14:13:29', 2, '2021-12-21 16:00:00', '2021-12-21 17:00:00', 'tester', 0, 1, '2021-12-21 14:13:29', NULL, NULL, '0819278393', '6'),
(187, 'galuh', '2021-12-21 14:13:58', 3, '2021-12-21 17:00:00', '2021-12-21 18:00:00', 'rapat', 1, 1, '2021-12-21 14:13:58', 1, '2021-12-21 15:21:39', '0819278393', '6'),
(188, 'ipul', '2021-12-21 14:15:05', 3, '2021-12-21 18:00:00', '2021-12-21 19:00:00', 'tester', 0, 1, '2021-12-21 14:15:05', NULL, NULL, '0819278393', '15'),
(189, 'tester', '2021-12-21 14:16:04', 3, '2021-12-21 20:00:00', '2021-12-21 21:00:00', 'rapat', 0, 1, '2021-12-21 14:16:04', NULL, NULL, '9823982', '6'),
(190, 'Teeess', '2021-12-21 15:22:26', 2, '2021-12-21 17:00:00', '2021-12-21 19:00:00', 'Tess Aja', 0, 1, '2021-12-21 15:22:26', NULL, NULL, '09898', '8 Orang'),
(191, 'teeeess', '2021-12-21 15:23:26', 3, '2021-12-21 16:00:00', '2021-12-21 18:00:00', 'rqqq', 0, 1, '2021-12-21 15:23:26', NULL, NULL, '999', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_customer`
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
-- Dumping data untuk tabel `ldg_customer`
--

INSERT INTO `ldg_customer` (`customerId`, `customerName`, `customerAddress`, `customerPhone`, `customerEmail`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'John Doe', 'The Big Street Address, Near Corner', '123456789', '', 0, 1, '2017-08-02 18:25:01', 1, '2018-12-30 06:47:31'),
(2, 'Alfan', 'The Big Street Address, Near Corner', '', 'email@outlook.com', 0, 1, '2017-08-02 18:35:04', 1, '2018-12-30 06:48:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_floor`
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
-- Dumping data untuk tabel `ldg_floor`
--

INSERT INTO `ldg_floor` (`floorId`, `floorCode`, `floorName`, `floorDescription`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Lantai 1', 'Lobby', '0', 0, 1, '2016-12-31 19:25:12', 1, '2021-10-22 15:10:39'),
(2, 'Lantai 2-T', 'Timur', 'televisi\r\nproyektor \r\nkursi \r\ntoilet 1\r\nac\r\nkomputer\r\nmicrofon\r\ntelfon ', 0, 1, '2017-01-04 18:01:16', 1, '2021-10-21 10:05:24'),
(3, 'Lantai 2-B', 'Barat', '0', 0, 1, '2017-01-04 18:01:16', 1, '2021-10-22 15:10:20'),
(16, 'Lantai 3', 'Aula', '0', 0, 1, '2017-01-04 18:01:16', 1, '2021-10-22 15:10:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_lodge`
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
-- Struktur dari tabel `ldg_reset_password`
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
-- Dumping data untuk tabel `ldg_reset_password`
--

INSERT INTO `ldg_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(25, 'email@gmail.com', 'nxwY5JKbbNcTRju', 'Chrome 56.0.2924.87', '0.0.0.0', 0, 1, '2017-03-22 18:11:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_roles`
--

CREATE TABLE `ldg_roles` (
  `roleId` tinyint(4) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Information of roles';

--
-- Dumping data untuk tabel `ldg_roles`
--

INSERT INTO `ldg_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Booker');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_rooms`
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
-- Dumping data untuk tabel `ldg_rooms`
--

INSERT INTO `ldg_rooms` (`roomId`, `roomNumber`, `roomSizeId`, `floorId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Lobby', 1, 1, 0, 1, '2021-10-21 10:21:39', NULL, NULL),
(2, 'Timur', 2, 2, 0, 1, '2021-10-22 17:51:05', NULL, NULL),
(3, 'Barat', 6, 3, 0, 1, '2021-10-22 17:51:30', NULL, NULL),
(4, 'Aula', 3, 16, 0, 1, '2021-10-22 16:58:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_room_base_fare`
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
-- Dumping data untuk tabel `ldg_room_base_fare`
--

INSERT INTO `ldg_room_base_fare` (`bfId`, `sizeId`, `baseFareHour`, `baseFareDay`, `serviceTax`, `serviceCharge`, `fareTotal`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 1, 40, 500, 15, 3.5, 592.5, 0, 1, '2017-02-11 19:14:24', 1, '2017-02-11 19:16:14'),
(2, 2, 55, 700, 15, 3.5, 829.5, 0, 1, '2017-02-11 19:19:52', 1, '2017-02-11 19:25:38'),
(3, 3, 60, 800, 15, 3.5, 948, 0, 1, '2017-02-11 19:20:07', NULL, NULL),
(4, 4, 70, 900, 15, 3.5, 1066.5, 0, 1, '2017-02-11 19:20:35', NULL, NULL),
(5, 5, 100, 1100, 15, 3.5, 1303.5, 0, 1, '2017-02-11 19:20:52', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_room_sizes`
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
-- Dumping data untuk tabel `ldg_room_sizes`
--

INSERT INTO `ldg_room_sizes` (`sizeId`, `sizeTitle`, `sizeDescription`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Kapasitas 5-7 Orang (Prokes)', '<ol>\r\n<li>Televisi</li>\r\n<li>AC</li>\r\n<li>Meja</li>\r\n<li>Kursi</li>\r\n<li>Air Purifier</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + LAN)</li>\r\n</ol>', 0, 1, '2017-01-04 18:05:53', 1, '2021-12-21 15:31:25'),
(2, 'Kapasitas 6-8 Orang (Prokes)', '<ol>\r\n<li>Televisi</li>\r\n<li>Kursi</li>\r\n<li>Meja</li>\r\n<li>AC</li>\r\n<li>Tempat Sampah</li>\r\n<li>Air Purifier</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + LAN)</li>\r\n</ol>', 0, 1, '2017-01-04 18:07:56', 1, '2021-12-21 15:31:39'),
(3, 'Kapasitas 30-35 Orang (Prokes)', '<p> </p>\r\n<ol>\r\n<li>Kursi</li>\r\n<li>Meja</li>\r\n<li>Proyektor</li>\r\n<li>Sound Sytem</li>\r\n<li>Panggung</li>\r\n<li>AC</li>\r\n<li>Microphone</li>\r\n<li>Smoke Detector</li>\r\n<li>Alat Pemadam Kebakaran</li>\r\n<li>Internet</li>\r\n<li>Toilet (Pria dan Wanita)</li>\r\n</ol>', 0, 1, '2017-01-04 18:09:09', 1, '2021-12-21 15:31:51'),
(6, 'Kapasitas 6-10 Orang (Prokes)', '<ol>\r\n<li>Televisi</li>\r\n<li>Proyektor</li>\r\n<li>Kursi</li>\r\n<li>Toilet 2 (Pria dan Wanita)</li>\r\n<li>AC</li>\r\n<li>Komputer</li>\r\n<li>Microphone</li>\r\n<li>Telpon</li>\r\n<li>Smoke Detector</li>\r\n<li>Internet (Wifi + LAN)</li>\r\n</ol>', 0, 1, '2021-10-22 17:21:11', 1, '2021-12-21 15:32:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldg_users`
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
-- Dumping data untuk tabel `ldg_users`
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
(26, '19104048', '$2y$10$eAVxURV2OeEx6j7qud2Ktuj9GPWQxemvQiySXYNtGxivw4J3UO2Gq', 'Olan', '081393436458', '', 3, 'SAS', 0, 1, '2021-12-21 15:10:07', 1, '2021-12-21 15:28:03');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  ADD PRIMARY KEY (`bookingId`);

--
-- Indeks untuk tabel `ldg_customer`
--
ALTER TABLE `ldg_customer`
  ADD PRIMARY KEY (`customerId`);

--
-- Indeks untuk tabel `ldg_floor`
--
ALTER TABLE `ldg_floor`
  ADD PRIMARY KEY (`floorId`),
  ADD UNIQUE KEY `floorCode` (`floorCode`);

--
-- Indeks untuk tabel `ldg_lodge`
--
ALTER TABLE `ldg_lodge`
  ADD PRIMARY KEY (`lodgeId`);

--
-- Indeks untuk tabel `ldg_reset_password`
--
ALTER TABLE `ldg_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ldg_roles`
--
ALTER TABLE `ldg_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indeks untuk tabel `ldg_rooms`
--
ALTER TABLE `ldg_rooms`
  ADD PRIMARY KEY (`roomId`);

--
-- Indeks untuk tabel `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  ADD PRIMARY KEY (`bfId`);

--
-- Indeks untuk tabel `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  ADD PRIMARY KEY (`sizeId`);

--
-- Indeks untuk tabel `ldg_users`
--
ALTER TABLE `ldg_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ldg_bookings`
--
ALTER TABLE `ldg_bookings`
  MODIFY `bookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT untuk tabel `ldg_customer`
--
ALTER TABLE `ldg_customer`
  MODIFY `customerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ldg_floor`
--
ALTER TABLE `ldg_floor`
  MODIFY `floorId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `ldg_lodge`
--
ALTER TABLE `ldg_lodge`
  MODIFY `lodgeId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ldg_reset_password`
--
ALTER TABLE `ldg_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `ldg_roles`
--
ALTER TABLE `ldg_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ldg_rooms`
--
ALTER TABLE `ldg_rooms`
  MODIFY `roomId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `ldg_room_base_fare`
--
ALTER TABLE `ldg_room_base_fare`
  MODIFY `bfId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ldg_room_sizes`
--
ALTER TABLE `ldg_room_sizes`
  MODIFY `sizeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ldg_users`
--
ALTER TABLE `ldg_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
