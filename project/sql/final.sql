-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 11:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `license` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `dimension` varchar(255) NOT NULL,
  `format` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `file`, `license`, `user_id`, `tag_id`, `dimension`, `format`, `is_active`, `views`, `date`) VALUES
(1, 'Northern Lights Aurora Borealis', '65359f64eb7ff_aerial-beautiful-shot-seashore-with-hills-background-sunset.jpg', 'free-photo-image-background-northern-lights-aurora-borealis', 1, 1, '100*200', 'jpg', 1, 15, '2004-01-11'),
(11, 'makeup', '6536e34a51891_all-about-the-base_1101_2000px.webp', 'License', 1, 3, '2000*2000', '.webp', 1, 0, '2023-01-12'),
(12, 'sea', '6536e39585aed_deep-blue-sea_shutterstock_1512728810.jpg', 'License', 1, 1, '780*439', '.jpg', 1, 0, '2023-10-23'),
(13, 'forest', '6536e3efc5b32_download.jfif', 'License', 1, 1, '275*183', '.jfif', 1, 0, '2020-06-04'),
(14, 'future', '6536e43e268eb_educative-scaled.webp', 'License', 1, 4, '2560*1706', '.webp', 1, 0, '2023-05-04'),
(15, 'important to learn', '6536e49437beb_shutterstock_1798672534.jpg', 'License', 1, 4, '820*460', '.jpg', 1, 0, '2023-10-04'),
(16, 'turtles', '6536e4e05e97e_img-15.jpg', 'License', 1, 1, '420*236', '.jpg', 1, 0, '2023-02-20'),
(17, 'cute', '6536e508db433_images.jfif', 'License', 1, 1, '820*460', '.jfif', 1, 0, '2023-03-30'),
(18, 'learn', '6536e5393da9b_education.jpg', 'License', 1, 4, '820*460', '.jpg', 1, 0, '2023-09-19'),
(19, 'design', '6536e5a2b9de4_emilykeller_concepts1-colorsketches.jpg__2400.0x1760.0_q85_subsampling-2.jpg', 'License', 1, 5, '2400*1760', '.jpg', 1, 0, '2020-03-07'),
(20, 'beautiful', '6536e5d7aeb10_nyfwsketches-1567608885.jpg', 'License', 1, 5, '1200*600', '.jpg', 1, 0, '2020-06-16'),
(21, 'powerful of education', '6536e612c543c_images (2).jfif', 'License', 1, 4, '300*186', '.jfif', 1, 0, '2022-08-28'),
(22, 'learn', '6536e668949b9_images (1).jfif', 'License', 1, 4, '275*183', '.jfif', 1, 0, '2020-03-02'),
(23, 'peacful', '6536e6d31664a_peacejpg.jpg', 'License', 1, 4, '1500*1500', '.jpg', 1, 0, '2021-07-17'),
(24, 'peace', '6536e70e9494b_img-16.jpg', 'License', 1, 4, '420*236', '.jpg', 1, 0, '2023-08-29'),
(25, 'cars', '6536e7a9b3c34__103916121_mediaitem103910950.jpg', 'License', 1, 6, '1024*570', '.jpg', 1, 0, '2023-10-02'),
(26, 'sport', '6536e7d145c85_Average Weight Of A Car.webp', 'License', 1, 6, '2000*2000', '.webp', 1, 0, '2021-06-08'),
(27, 'run', '6536e7fdb3eaa_18015-MC20BluInfinito-scaled-e1666008987698.jpg', 'License', 1, 6, '2560*1440', '.jpg', 1, 0, '2020-02-02'),
(28, 'fast', '6536e82895c93_10-porsche-718-cayman-gt4-rs-top-10.webp', 'License', 1, 6, '1600*1066', '.webp', 1, 0, '2020-06-22'),
(29, 'sport', '6536e8775ed39_0x0.webp', 'License', 1, 6, '950*450', '.webp', 1, 0, '2023-03-12');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Natural'),
(3, 'makeup'),
(4, 'education'),
(5, 'fashion'),
(6, 'cars');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `is_active`, `registration_date`) VALUES
(1, 'Admin', 'admin', '$2y$10$8qBi7k07gbYG5/OgCQde4.r5fgzLZq27QJKzWVuG5zOsw5C.wr.v2', 'admin@example.com', 0, '2023-10-22'),
(5, 'Dalia Kamel', 'Dalia', '$2y$10$sBWHSboU0kWYt41i8ld65ebGG7rvyMeWIYDgujJDKgVW63TbyQutm', 'eng.dalia.kamel@gmail.com', 0, '2023-10-23'),
(6, 'Heba Kamel', 'Heba', '$2y$10$6ANpeveglxa88qQ/MEPwAeAJY5qccgLHZ1EgytkC3aXaRhf4yVf7y', 'heba@gmail.com', 1, '2023-10-23'),
(7, 'Ahmed Refaat', 'Ahmed', '$2y$10$wmyepqhaPrvSRenP8Z.tROXhhZH/EDSGl.1Zd1jRS1vhfqKU.bC5G', 'A@A.com', 1, '2023-10-23'),
(8, 'Rana Mohamed', 'Rana', '$2y$10$9B.qh9Qgie1uVGwn4s5Bgu7K.gEukpdI7OHyK0CEAJGeDCX5o4Sry', 'Rana@R.com', 1, '2023-10-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
