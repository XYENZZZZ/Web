-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 05:04 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hamzanwadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama_mhs` char(50) DEFAULT NULL,
  `sex` enum('L','P') DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(20) DEFAULT NULL,
  `asal_sma` char(30) DEFAULT NULL,
  `nohp` varchar(12) DEFAULT NULL,
  `umur` int(3) DEFAULT NULL,
  `prodi_pilihan` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama_mhs`, `sex`, `alamat`, `kota`, `asal_sma`, `nohp`, `umur`, `prodi_pilihan`) VALUES
(1, 'Muhammad Rizwan Al-Fatah', 'L', 'Rarang', 'Lombok Timur', 'SMKN 1 Sikur', '081917654479', 19, 'Pendidikan Informatika'),
(12, 'Lee Zinn', 'L', 'Incheon', 'Korea Selatan', 'SMA Jae Won', '082213456771', 17, 'Pendidikan Informatika'),
(25, 'Shoyo Hinata', 'L', 'Iwate Prefectur', 'Morioka', 'Karumai Hight School', '0313456713', 16, 'Pendidikan Informatika'),
(48, 'Lalu Trizola Ramadhan', 'L', 'Rarang', 'Lombok Timur', 'SMKN 1 Sikur', '081917654321', 17, 'Pendidikan Informatika'),
(54, 'Lalu Muhammad Abdan Halim', 'L', 'Kebon Jenggik', 'Lombok Timur', 'SMAN 1 Terara', '081771314557', 17, 'Pendidikan Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(4, 'admin@gmail.com', 'admin123'),
(5, 'admin@gmail.com', 'adminpusing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
