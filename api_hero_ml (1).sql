-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Des 2024 pada 01.56
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_hero_ml`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hero`
--

CREATE TABLE `hero` (
  `id` int(11) NOT NULL,
  `nama_hero` varchar(25) NOT NULL,
  `role` varchar(25) NOT NULL,
  `lane` varchar(25) NOT NULL,
  `tipe_damage` varchar(25) NOT NULL,
  `tingkat_kesulitan` int(5) NOT NULL,
  `harga` int(11) NOT NULL,
  `wilayah_asal` varchar(50) NOT NULL,
  `tanggal_rilis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hero`
--

INSERT INTO `hero` (`id`, `nama_hero`, `role`, `lane`, `tipe_damage`, `tingkat_kesulitan`, `harga`, `wilayah_asal`, `tanggal_rilis`) VALUES
(1, 'Miya', 'Marksman', 'Goldlane', 'Physical', 1, 10800, 'Azrya Woodlands', 'Tahun 2016'),
(2, 'Balmond', 'Fighter', 'Jungle/Explane', 'Physical', 1, 6500, 'The Barren Lands', 'Tahun 2016');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
