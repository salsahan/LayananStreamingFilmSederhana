-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 07:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `layananstreamingfilm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_film`
--

CREATE TABLE `tb_film` (
  `id_film` int(10) NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `tahun_film` int(4) NOT NULL,
  `sutradara_film` varchar(100) NOT NULL,
  `cover_film` text NOT NULL,
  `rating_film` float NOT NULL,
  `tanggal_diposting` int(11) NOT NULL,
  `id_genre` int(10) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_film`
--

INSERT INTO `tb_film` (`id_film`, `nama_film`, `tahun_film`, `sutradara_film`, `cover_film`, `rating_film`, `tanggal_diposting`, `id_genre`, `id_user`) VALUES
(1, 'Avenger', 2019, 'Anthony Russo dan Joe Russo', '08042020104652.png', 8.4, 1590495796, 1, 1),
(2, 'Mr. Beans Holiday', 2007, 'Steve Bendelack', '08042020154003.png', 6.4, 1652461011, 2, 1),
(3, 'Bean', 1997, 'Mel Smith', '08042020154348.png', 6.5, 1590495796, 2, 1),
(4, 'Spiderman: Far From Home', 2019, 'Jon Watts', '08042020154655.png', 7.5, 1590495796, 1, 1),
(5, 'Insidious', 2010, 'James Wan', '08042020155915.png', 6.8, 1652460975, 3, 1),
(6, 'Inspector Gadget', 1999, 'David Kellogg', '08042020160106.png', 4.1, 1652460991, 2, 1),
(7, 'The Conjuring', 2013, 'James Wan', '08042020160311.png', 7.5, 1652461073, 3, 1),
(8, 'Furious 7', 2015, 'James Wan', '08042020160519.png', 7.2, 1590495796, 1, 1),
(9, 'Batman v Superman: Dawn of Justice', 2016, 'Zack Snyder', '08042020160832.png', 6.5, 1590495796, 1, 1),
(10, 'Spies in Disguise', 2019, 'Nick Bruno Dan Troy Quane', '08042020161132.png', 6.8, 1652461063, 4, 1),
(11, 'Cars', 2006, 'John Lasseter', '08042020161335.png', 7.1, 1652460958, 4, 1),
(12, 'Miracle in Cell No. 7', 2013, 'Hwan-kyung Lee', '08042020162415.png', 8.2, 1652461000, 5, 1),
(13, 'Titanic', 1997, 'James Cameron', '08042020163414.png', 7.8, 1652461082, 5, 1),
(14, 'Sonic the Hedgehog', 2020, 'Jeff Fowler', '08042020173537.png', 6.6, 1652461041, 4, 1),
(15, 'Frozen II', 2019, 'Chris Buck Dan Jennifer Lee', '08042020173743.png', 7, 1652460965, 4, 1),
(16, 'Sherlock Holmes: A Game of Shadows', 2011, 'Guy Ritchie', '08042020174222.png', 7.5, 1652461027, 6, 1),
(17, 'Jumanji: Welcome to the Jungle', 2017, 'Jake Kasdan', '08042020210238.png', 6.9, 1590495796, 7, 1),
(18, 'Annihilation', 2018, 'Alex Garland', '08042020210744.png', 6.9, 1590495796, 7, 1),
(19, 'Harry Potter and the Prisoner of Azkaban', 2004, 'Alfonso Cuaron', '08042020211039.png', 7.9, 1590495796, 7, 1),
(20, 'Indiana Jones and the Last Crusade', 1989, 'Steven Spielberg', '08042020211241.png', 8.2, 1590495796, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_genre`
--

CREATE TABLE `tb_genre` (
  `id_genre` int(10) NOT NULL,
  `nama_genre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_genre`
--

INSERT INTO `tb_genre` (`id_genre`, `nama_genre`) VALUES
(1, 'Aksi'),
(2, 'Komedi'),
(3, 'Horor'),
(4, 'Animasi'),
(5, 'Drama'),
(6, 'Petualangan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'andri123', '$2y$10$Vi80wvdPtIx1W4MWV.wtpOxaCR67S/XzRQkxOJbMknJNaFIfaJGuW', 'Andri Firman Saputra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_film`
--
ALTER TABLE `tb_film`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `relasi_genre` (`id_genre`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_genre`
--
ALTER TABLE `tb_genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_film`
--
ALTER TABLE `tb_film`
  MODIFY `id_film` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_genre`
--
ALTER TABLE `tb_genre`
  MODIFY `id_genre` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
