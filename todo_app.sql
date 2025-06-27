-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 04:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `task` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `task`, `created_at`) VALUES
(1, 3, 'hhhs', '2025-06-27 15:51:15'),
(2, 3, 'gsggs', '2025-06-27 15:51:22'),
(3, 3, 'hjjsjj', '2025-06-27 15:51:27'),
(4, 4, 'hhhs', '2025-06-27 15:54:53'),
(5, 4, 'haii', '2025-06-27 15:54:58'),
(6, 4, 'hahsssss ', '2025-06-27 16:10:38'),
(7, 4, 'hjjsjj', '2025-06-27 16:13:24'),
(8, 4, 'gsggs', '2025-06-27 16:14:51'),
(9, 4, 'hhhs', '2025-06-27 16:17:01'),
(10, 5, 'hhhs', '2025-06-27 16:22:15'),
(11, 5, 'gsggs', '2025-06-27 16:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`) VALUES
(1, 'Rohini B', 'admin@kkkkovai22.com', '$2y$10$CqaH96wY039OR6IMAy8vI.DoXGVeE4PV9Yhhwl8UR7PNjufYzl2zG', '08754965226'),
(2, 'Rohini B', 'admin@kovvvvai22.com', '$2y$10$6FJca7otzi0upR9nhRJRmutU4MHTKjtePh3q84UqDi4kcF3EpnriS', '08754965226'),
(3, 'Rohini B', 'fsf@gmail.com', '$2y$10$m0KiFqkgUTdvJ6Egs9XhI.3VYTe7pdC7qYsETQtqzs0wBubXb4bGK', '8754965226'),
(4, 'swetha', 'swetha@gmail.com', '$2y$10$Ray8r3M/UydU8kNjg0.NIObsAm9hS84CcDfcIiLG1NPiI437BWQJ2', '08754965226'),
(5, 'Rohini B', 'rohini@gmail.com', '$2y$10$OK7lDK7Iet9d3FD4SeSK9.sTxnx3hjlDv50y2IqwyAztAEnk79AZq', '0854965226');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
