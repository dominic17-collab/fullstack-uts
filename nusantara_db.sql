-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2025 at 08:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nusantara_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id_media` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tahun_rilis` date NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id_media`, `title`, `tahun_rilis`, `genre`) VALUES
(1, 'The Roblox', '2023-10-21', 'Sci-Fi'),
(2, 'Shadows of Tomorrow', '2018-09-21', 'Sci-Fi'),
(3, 'Dreaming in Blue', '2020-01-15', 'Drama'),
(4, 'Silent Echoes', '2017-06-30', 'Thriller'),
(5, 'The Last Horizon', '2023-07-21', 'Sci-Fi'),
(6, 'Waves of Freedom', '2014-03-18', 'Adventure'),
(7, 'Digital Horizon', '2021-11-09', 'Sci-Fi'),
(8, 'The Last Melody', '2013-07-22', 'Musical'),
(9, 'Frozen Path', '2016-02-10', 'Adventure'),
(10, 'Beyond the Dark Sea', '2018-12-03', 'Fantasy'),
(11, 'City of Iron', '2022-04-17', 'Action'),
(12, 'Whispers of the Forest', '2014-08-27', 'Fantasy'),
(13, 'Crimson Rain', '2020-06-14', 'Action'),
(14, 'One More Chance', '2019-01-11', 'Romance'),
(15, 'Eternal Voyage', '2017-11-29', 'Adventure'),
(16, 'Golden Horizon', '2021-05-20', 'Drama'),
(17, 'Broken Silence', '2013-04-09', 'Thriller'),
(18, 'Rise of the Phoenix', '2022-01-02', 'Action'),
(19, 'Under the Neon Sky', '2018-07-16', 'Drama'),
(20, 'Edge of Infinity', '2020-12-23', 'Sci-Fi'),
(21, 'Whispering Memories', '2016-11-02', 'Romance'),
(22, 'Storm Riders', '2015-02-28', 'Action'),
(23, 'The Silver Compass', '2014-10-19', 'Adventure'),
(24, 'Midnight Reflection', '2019-05-27', 'Thriller'),
(25, 'After the Rain', '2021-03-14', 'Romance'),
(26, 'Legends of Marvion', '2017-12-01', 'Fantasy'),
(27, 'Galactic Drift', '2023-02-25', 'Sci-Fi'),
(28, 'The Unbroken Path', '2015-09-12', 'Drama'),
(29, 'Flames of Destiny', '2022-08-04', 'Action'),
(30, 'Blue Horizon', '2016-05-30', 'Adventure');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id_media`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id_media` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
