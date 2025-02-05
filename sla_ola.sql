-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 05, 2025 at 01:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sla_ola`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_availability`
--

CREATE TABLE `data_availability` (
  `id` int NOT NULL,
  `kode_site` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_peralatan` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `tahun` int NOT NULL,
  `bulan` int NOT NULL,
  `1` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `2` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `3` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `4` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `5` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `6` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `7` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `8` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `9` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `10` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `11` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `12` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `13` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `14` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `15` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `16` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `17` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `18` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `19` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `20` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `21` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `22` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `23` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `24` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `25` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `26` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `27` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `28` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `29` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `30` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `31` varchar(5) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_availability`
--

INSERT INTO `data_availability` (`id`, `kode_site`, `jenis_peralatan`, `tahun`, `bulan`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16`, `17`, `18`, `19`, `20`, `21`, `22`, `23`, `24`, `25`, `26`, `27`, `28`, `29`, `30`, `31`) VALUES
(1, 'ABC123', 'Seismometer', 2025, 1, '94.42', '90.77', '93.41', '96.45', '99.52', '99.29', '90.79', '90.50', '93.39', '93.14', '98.87', '95.21', '76.61', '91.23', '87.84', '89.12', '91.31', '93.14', '96.94', '89.68', '84.09', '89.87', '82.99', '88.21', '93.35', '89.54', '87.17', '88.50', '86.64', '89.67', '97.09'),
(2, 'ABC123', 'Seismometer', 2025, 1, '94.42', '90.77', '93.41', '96.45', '99.52', '99.29', '90.79', '90.50', '93.39', '93.14', '98.87', '95.21', '76.61', '91.23', '87.84', '89.12', '91.31', '93.14', '96.94', '89.68', '84.09', '89.87', '82.99', '88.21', '93.35', '89.54', '87.17', '88.50', '86.64', '89.67', '97.09'),
(3, 'ABC123', 'Seismometer', 2025, 1, '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '62.41', '99.68', '99.81', '99.75', '99.48', '99.65', '99.61', '90.08', '20.21'),
(4, 'NKA02', 'Seismometer', 2025, 1, '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '62.41', '99.68', '99.81', '99.75', '99.48', '99.65', '99.61', '90.08', '20.21'),
(5, 'NKA02', 'Seismometer', 2025, 1, '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '62.41', '99.68', '99.81', '99.75', '99.48', '99.65', '99.61', '90.08', '20.21'),
(6, 'NKA02', 'Seismometer', 2025, 2, '0.0', '0.0', '96.26', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0', '0.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_availability`
--
ALTER TABLE `data_availability`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_availability`
--
ALTER TABLE `data_availability`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
