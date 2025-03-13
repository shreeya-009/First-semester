-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 08:02 AM
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
-- Database: `weather`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather_data`
--

CREATE TABLE `weather_data` (
  `id` int(11) NOT NULL,
  `weather_date` date DEFAULT NULL,
  `temperature` int(11) DEFAULT NULL,
  `humidity` int(11) DEFAULT NULL,
  `pressure` int(11) DEFAULT NULL,
  `wind_speed` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `weather_data`
--

INSERT INTO `weather_data` (`id`, `weather_date`, `temperature`, `humidity`, `pressure`, `wind_speed`) VALUES
(1, '2024-01-26', 24, 34, 1023, 4.57),
(2, '2024-01-27', 28, 28, 984, 7.23),
(3, '2024-01-28', 25, 41, 1017, 6.82),
(4, '2024-01-29', 24, 38, 1007, 3.74),
(5, '2024-01-30', 26, 27, 972, 4.23),
(8, '2024-01-31', 20, 68, 1016, 1.84),
(27, '2024-02-01', 24, 58, 1018, 2.54),
(28, '2024-02-01', 24, 58, 1018, 2.54),
(34, '2024-02-01', 27, 47, 1016, 2.58),
(35, '2024-02-01', 27, 47, 1016, 2.58);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather_data`
--
ALTER TABLE `weather_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather_data`
--
ALTER TABLE `weather_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
