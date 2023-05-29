-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2023 at 11:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustaka-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `tgl_booking`, `batas_ambil`, `id_user`) VALUES
('20032023001', '2023-03-20', '2023-03-22', 9);

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_detail`
--

INSERT INTO `booking_detail` (`id`, `id_booking`, `id_buku`) VALUES
(1, '20032023001', 3),
(2, '20032023002', 3),
(3, '20032023003', 3),
(4, '20032023001', 4),
(5, '20032023002', 4),
(6, '20032023003', 4),
(7, '20032023001', 5),
(8, '20032023002', 5),
(9, '20032023003', 5),
(16, '20032023001', 3),
(17, '20032023001', 4),
(18, '20032023001', 2);

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penerbit` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(2, 'Mudah Belajar Komputer untuk Anak', 0, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 4, 3, 2, 'img1555522493.jpg'),
(3, 'PHP komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '93467535347', 1, 1, 5, 'img1555522493.jpg'),
(4, 'Detektif Conan Ep 200', 9, 'Okigawa sasuke', 'Cultuar', 2016, '874387583987', 1, 0, 4, 'img1557401465.jpg'),
(5, 'Bahasa indonesia', 2, 'Umri Nuraini dan indriyani', 'Pusat Perbukuan', 2015, '757254724884', 0, 0, 3, 'img1557402703.jpg'),
(6, 'Komunikasi Linta Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 5, 0, 0, 'img1557403156.jpg'),
(7, 'Kolaborasi Codeigniter dan Ajax Dalam Perancangan', 1, 'Anton Subagia', 'Elex Media komputindo', 2017, '43345356577', 5, 0, 0, 'img 1557403502.jpg'),
(8, 'From Hobby to Money', 4, 'Deasylawatai', 'Elex Media Komputindo', 2015, '8796868787879', 5, 0, 0, 'img1557403658.jpg'),
(9, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '978686879787976', 6, 0, 0, 'img1557404613.jpg'),
(10, 'Rahasia Kejaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '5657565657688868', 5, 0, 0, 'img1557404689.jpg'),
(11, 'Madilog', 2, 'Materialisme Dialektika Logika', 'Tan Malaka', 2021, '21412412', 10, 0, 0, 'Madilog-Tan-Malaka-Materialisme-Dialektika--Logika (12).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('05022020001', 1, 5000),
('05022020001', 2, 5000),
('05022020001', 10, 5000),
('05022020002', 1, 5000),
('05022020002', 5, 5000),
('05022020003', 5, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Komputer'),
(2, 'Bahasa'),
(3, 'Sains'),
(4, 'Hobby'),
(5, 'Komunikasi'),
(6, 'Hukum'),
(7, 'Agama'),
(8, 'Populer'),
(9, 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL DEFAULT 'Pinjam',
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admministrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `alamat` int(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `email`, `image`, `password`, `alamat`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Lyon Younes', 'Lyon@gmail.com', '', 'a', 0, 1, 1, 8112022),
(2, 'Lyon', '', '124', 'a', 0, 1, 1, 8112022),
(3, 'Lyon Younes', 'agyp@gmail.com', 'pro1668696380.jpg', '$2y$10$Brpdloo.qN9LgCv1yBg/A.IrdBBcuHV9YaEClge05Llf3ForKoOm6', 0, 1, 1, 1668480545),
(4, 'wkwk', 'wkwk@gmail.com', 'pro1668763369.jpg', '$2y$10$QC2uUCGvSxwtoMb5iGQ7XutUxUgReAOos.3vXP4JavAvdIxAMydAq', 0, 1, 1, 1668761735),
(5, 'a', 'a@gmail.com', 'default.jpg', '$2y$10$UL/kwQUOa7RQELCz3dYCwOymE9DPQXy9HGrDa8mXn7ZMjruURgugG', 0, 2, 1, 1668762641),
(9, 'Admin Pustaka', 'admin@gmail.com', 'default.jpg', '$2y$10$U.4M3m0cWNXtxLixKESQ2e6Z.ltKJA8rahnEd4a7M1g3hJKYD35tq', 0, 1, 1, 1637256382),
(10, 'Member Pustaka', 'member@gmail.com', 'default.jpg', '$2y$10$2bp03GCr8Wkzpu5qrERmZOqShpn6kmJ6BHfsGvpqMqnnC4rbLjria', 0, 2, 1, 1637258675);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
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
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
