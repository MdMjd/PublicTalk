-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2017 at 07:49 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE `shouts` (
  `sh_id` int(11) NOT NULL,
  `sh_user` varchar(50) NOT NULL,
  `sh_message` text NOT NULL,
  `sh_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`sh_id`, `sh_user`, `sh_message`, `sh_time`) VALUES
(3, 'John', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lectus tellus, fermentum eget congue et, euismod quis arcu. ', '11:20:00'),
(4, 'Brad', 'Etiam commodo diam non nunc accumsan varius. Pellentesque malesuada ut ante vel condimentum.', '11:21:00'),
(5, 'Jenny', 'Donec pulvinar, neque vitae aliquet venenatis.', '11:22:00'),
(6, 'Jacob', 'Suspendisse euismod erat rutrum consequat egestas. Aenean sit amet suscipit libero.', '11:23:00'),
(7, 'Jane', 'Hey everyone, How is the game!', '12:39:42'),
(8, 'Bob', 'Good day to all!', '12:39:54'),
(9, 'Jane', 'How are you?', '12:40:14'),
(10, 'Mr Johnson', 'I like to move it', '12:41:08'),
(11, 'Johnathan', 'Some Sample Text', '04:44:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shouts`
--
ALTER TABLE `shouts`
  ADD PRIMARY KEY (`sh_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shouts`
--
ALTER TABLE `shouts`
  MODIFY `sh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
