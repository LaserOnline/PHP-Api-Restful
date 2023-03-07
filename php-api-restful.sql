-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2023 at 12:51 PM
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
-- Database: `php-api-restful`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `str_message` varchar(255) NOT NULL,
  `create_time` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `str_message`, `create_time`) VALUES
(146, 'Iphone x', '2023-03-07 11:34:58'),
(147, 'Iphone xr', '2023-03-07 11:35:16'),
(148, 'Iphone 12', '2023-03-07 11:35:20'),
(149, 'Iphone 13', '2023-03-07 11:35:24'),
(150, 'Iphone 13 Pro', '2023-03-07 11:35:35'),
(159, 'Iphone Pro max', '2023-03-07 11:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(255) NOT NULL,
  `Product_Price` int(11) NOT NULL,
  `Product_Images` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_Name`, `Product_Price`, `Product_Images`) VALUES
(1, 'MacBook Air', 32900, 'https://media-cdn.bnn.in.th/94729/Apple-MacBook-Air-13-M1-chip8C-CPU-7C-GPU-8GB-256GB-Gold-2020-1-square_medium.jpg'),
(3, 'MacBook Pro รุ่น 13 นิ้ว', 42900, 'https://media-cdn.bnn.in.th/219214/MacBook_Pro_13-inch_Silver_1.jpg'),
(5, 'MacBook Pro รุ่น 14 นิ้ว Apple M1 Pro', 73900, 'https://image.makewebeasy.net/makeweb/0/LqL4C2aWe/Mac/Apple_MacBook_Pro_13_M1_chip_8C_CPU_7C_GPU_8GB_512GB_Space_Grey_2020_content1_copy.jpg'),
(7, 'MacBook Pro รุ่น 14 นื้ว Apple M1 Max', 103900, 'https://media-cdn.bnn.in.th/150746/MacBook_Pro_14-in_Silver_PDP_Image_Position-1__TH.jpg'),
(9, 'MacBook Pro รุ่น 16 นิ้ว Apple M1 Pro', 89900, 'https://media.education.studio7thailand.com/42953/MacBook_Pro_16-in_Space_Grey_PDP_Image_Position-1__TH.jpg'),
(10, 'MacBook Pro รุ่น 16 นิ้ว Apple M1 Max ', 110900, 'https://laptop36.vn/upload/images/macbook-pro-16-11.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `username`
--

CREATE TABLE `username` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `username`
--

INSERT INTO `username` (`User_ID`, `Username`, `UserPassword`) VALUES
(1, 'root', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `username`
--
ALTER TABLE `username`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `username`
--
ALTER TABLE `username`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
