-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 12:46 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `Detail_id` int(11) NOT NULL,
  `Penjualan_id` int(11) NOT NULL,
  `Produk_id` int(11) NOT NULL,
  `Jumlah_produk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`Detail_id`, `Penjualan_id`, `Produk_id`, `Jumlah_produk`, `Subtotal`) VALUES
(0, 1, 3, 100, '15000.00'),
(2, 2, 3, 1, '15000.00'),
(3, 3, 8998, 60, '60000.00'),
(3, 4, 12343367, 30, '15000.00'),
(4, 5, 8998, 60, '60000.00'),
(4, 6, 12343367, 30, '15000.00'),
(5, 7, 234, 12, '10000.00'),
(5, 8, 33489, 122, '25000.00'),
(6, 9, 9873, 50, '46000.00'),
(6, 10, 22446, 100, '25000.00'),
(7, 11, 9873, 50, '46000.00'),
(7, 12, 12322, 100, '23000.00'),
(8, 13, 12330, 22, '10000.00'),
(8, 14, 234, 50, '10000.00'),
(9, 15, 12330, 22, '10000.00'),
(9, 16, 34788, 333, '2000.00'),
(10, 17, 22446, 50, '25000.00'),
(10, 18, 33489, 6, '25000.00'),
(11, 19, 9873, 20, '46000.00'),
(12, 20, 9873, 420, '46000.00'),
(13, 21, 12330, 22, '10000.00'),
(14, 22, 453, 50, '15000.00'),
(14, 23, 34788, 100, '5000.00'),
(15, 24, 453, 50, '15000.00'),
(16, 25, 33489, 100, '5000.00'),
(17, 26, 875, 100, '2500.00'),
(19, 29, 12330, 50, '10000.00'),
(20, 30, 9873, 100, '25000.00'),
(21, 31, 9873, 11, '25000.00'),
(22, 34, 22446, 12, '25000.00'),
(23, 35, 12322, 12, '23000.00');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Pelanggan_id` int(11) NOT NULL,
  `Nama_pelanggan` varchar(255) NOT NULL,
  `Nomeja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Pelanggan_id`, `Nama_pelanggan`, `Nomeja`) VALUES
(0, 'nabil', 636),
(2, 'nabilss', 1),
(3, 'nabil', 9),
(4, 'nabil', 9),
(5, 'nabil', 87),
(6, 'ucup', 4),
(7, 'ambon', 19),
(8, 'ambon', 19),
(9, 'ambon', 19),
(10, 'lutfi', 98),
(11, 'fadli', 1),
(12, 'fadilah', 3),
(13, 'tes', 34),
(14, 'NENI', 9),
(15, 'nabil', 34),
(16, 'nanda', 76),
(17, 'galih', 455),
(18, 'rasid', 5),
(19, 'dafi', 45),
(20, 'zaki', 67),
(21, 'fadli', 55),
(22, 'fadil', 23),
(23, 'fadil', 12);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `Penjualan_id` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `Pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`Penjualan_id`, `tanggal_penjualan`, `total_harga`, `Pelanggan_id`) VALUES
(1, '2024-02-27', '0.00', 0),
(2, '2024-02-27', '0.00', 0),
(3, '2024-02-27', '0.00', 0),
(4, '2024-02-27', '0.00', 0),
(5, '2024-02-27', '0.00', 0),
(6, '2024-02-28', '0.00', 0),
(7, '2024-02-28', '0.00', 0),
(8, '2024-02-28', '0.00', 0),
(9, '2024-02-28', '0.00', 0),
(10, '2024-02-28', '0.00', 0),
(11, '2024-02-28', '0.00', 0),
(12, '2024-02-28', '0.00', 0),
(13, '2024-02-28', '0.00', 0),
(14, '2024-02-28', '0.00', 0),
(15, '2024-02-28', '0.00', 0),
(16, '2024-02-28', '0.00', 0),
(17, '2024-02-28', '0.00', 0),
(18, '2024-02-28', '0.00', 0),
(19, '2024-02-28', '0.00', 0),
(20, '2024-02-28', '0.00', 0),
(21, '2024-02-28', '0.00', 0),
(22, '2024-02-28', '0.00', 0),
(23, '2024-02-28', '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Produk_id` int(11) NOT NULL,
  `Nama_produk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Foto_produk` varchar(255) DEFAULT NULL,
  `Terjual` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Produk_id`, `Nama_produk`, `Harga`, `Stok`, `Foto_produk`, `Terjual`) VALUES
(126, 'sate', '500.00', 200, '28022024234417.jpg', 0),
(9873, 'Baso telur', '25000.00', 500, '28022024194520.jfif', 540),
(12322, 'Serabi sunda', '23000.00', 316, '28022024012153.jpg', 184),
(12330, 'KECSP', '10000.00', 1000, '28022024234447.jpg', 172),
(22446, 'Nasi Goreng Ayam Kampung', '25000.00', 128, '27022024231938.jfif', 172),
(33489, 'Sate', '5000.00', 400, '27022024220130.jfif', 290),
(34788, 'Es jeruk', '5000.00', 350, '27022024220157.jpg', 505);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Username`, `Password`, `Level`) VALUES
(0, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin'),
(9812, 'petugas', '202cb962ac59075b964b07152d234b70', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`Penjualan_id`),
  ADD KEY `Detail_id` (`Detail_id`),
  ADD KEY `Produk_id` (`Produk_id`),
  ADD KEY `Penjualan_id` (`Penjualan_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Pelanggan_id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`Penjualan_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Produk_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `Penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `Penjualan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`Pelanggan_id`) REFERENCES `pelanggan` (`Pelanggan_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
