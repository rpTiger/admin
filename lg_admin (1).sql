-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 02:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lg_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `BLOG_Category_id` int(11) NOT NULL,
  `BLOG_Category_name` varchar(255) NOT NULL,
  `BLOG_Category_order_num` int(11) NOT NULL DEFAULT 0,
  `BLOG_Category_CreateUserID` varchar(250) NOT NULL,
  `BLOG_Category_CreateSystemIP` varchar(50) NOT NULL,
  `BLOG_Category_is_disabled` tinyint(1) NOT NULL DEFAULT 0,
  `BLOG_Category_UpdateUserID` varchar(250) DEFAULT NULL,
  `BLOG_Category_UpdateSystemIP` varchar(50) DEFAULT NULL,
  `BLOG_Category_CreateDate` datetime NOT NULL DEFAULT current_timestamp(),
  `BLOG_Category_UpdateDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`BLOG_Category_id`, `BLOG_Category_name`, `BLOG_Category_order_num`, `BLOG_Category_CreateUserID`, `BLOG_Category_CreateSystemIP`, `BLOG_Category_is_disabled`, `BLOG_Category_UpdateUserID`, `BLOG_Category_UpdateSystemIP`, `BLOG_Category_CreateDate`, `BLOG_Category_UpdateDate`) VALUES
(94, 'Parenting', 17, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 16:55:07', NULL),
(95, 'COVID', 16, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 16:55:17', NULL),
(96, 'Online Learning', 15, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 16:55:28', NULL),
(97, '', 15, 'Little Genius', '192.168.0.62', 1, 'Little Genius', '192.168.0.62', '2025-02-25 17:02:10', '2025-02-25 17:02:18'),
(98, 'asdfasdfasdf', 14, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:05:27', NULL),
(99, 'dsafsdafasf', 13, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:08:19', NULL),
(100, 'asdfasdf', 12, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:12:03', NULL),
(101, 'sdafasdf', 11, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:14:23', NULL),
(102, 'adsasdfasdfa', 10, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:15:18', NULL),
(103, 'sdasdfasa', 9, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:15:24', NULL),
(104, 'sdasdfasa', 8, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:16:58', NULL),
(105, 'dafasfd', 7, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:17:05', NULL),
(106, 'dafasfd', 6, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:17:45', NULL),
(107, 'asdfasdf', 5, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:18:27', NULL),
(108, 'asdfasdf', 4, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:19:31', NULL),
(109, 'asdfasdf', 3, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:19:35', NULL),
(110, 'asdfasdfasdf', 2, 'Little Genius', '192.168.0.62', 0, NULL, NULL, '2025-02-25 17:19:52', NULL),
(111, 'Children\'s Corner', 1, 'Little Genius', '192.168.0.62', 0, 'Little Genius', '192.168.0.62', '2025-02-25 17:21:09', '2025-02-25 17:27:41'),
(112, 'asdfasdfasdf', 1, 'Little Genius', '192.168.0.62', 1, 'Little Genius', '192.168.0.62', '2025-02-25 17:23:09', '2025-02-25 17:23:34'),
(113, 'sdaf', 1, 'Little Genius', '192.168.0.62', 1, 'Little Genius', '192.168.0.62', '2025-02-25 17:28:17', '2025-02-25 17:28:23'),
(114, 'testdfqwefasdf', 1, 'Little Genius', '192.168.0.62', 1, 'Little Genius', '192.168.0.62', '2025-02-25 17:50:13', '2025-02-25 18:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `success` tinyint(1) DEFAULT NULL,
  `password_attempt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_logs`
--

INSERT INTO `login_logs` (`id`, `user_id`, `ip_address`, `timestamp`, `success`, `password_attempt`) VALUES
(13, 6, '192.168.0.62', '2025-02-21 16:26:55', 1, NULL),
(14, 6, '192.168.0.62', '2025-02-21 16:27:01', 0, NULL),
(15, 6, '192.168.0.62', '2025-02-21 16:30:33', 1, NULL),
(16, 6, '192.168.0.62', '2025-02-21 16:37:26', 0, NULL),
(17, 6, '192.168.0.62', '2025-02-21 16:37:41', 1, NULL),
(18, 6, '192.168.0.62', '2025-02-21 16:37:48', 0, NULL),
(19, 6, '192.168.0.62', '2025-02-21 16:42:40', 0, '1pUIOfdll08Qd&Y]asdsa'),
(20, 6, '192.168.0.62', '2025-02-21 16:42:56', 1, NULL),
(21, 6, '192.168.0.62', '2025-02-21 16:43:14', 1, NULL),
(22, 6, '192.168.0.62', '2025-02-21 16:43:37', 0, 'asd1pUIOfdll08Qd&Y]'),
(23, 6, '192.168.0.62', '2025-02-21 16:43:48', 1, NULL),
(24, 6, '192.168.0.62', '2025-02-21 17:42:24', 1, NULL),
(25, 6, '192.168.0.62', '2025-02-21 17:45:18', 1, NULL),
(26, 6, '192.168.0.62', '2025-02-21 17:45:40', 1, NULL),
(27, 6, '192.168.0.62', '2025-02-21 17:46:31', 1, NULL),
(28, 6, '192.168.0.62', '2025-02-21 17:46:47', 1, NULL),
(29, 6, '192.168.0.62', '2025-02-21 17:46:51', 1, NULL),
(30, 6, '192.168.0.62', '2025-02-21 18:06:44', 1, NULL),
(31, 6, '192.168.0.62', '2025-02-21 18:35:01', 1, NULL),
(32, 6, '192.168.0.62', '2025-02-21 18:35:51', 1, NULL),
(33, 6, '192.168.0.62', '2025-02-21 18:49:16', 1, NULL),
(34, 6, '192.168.0.62', '2025-02-21 18:49:48', 0, '1pUIOfdll08Qd&Y]asdfsdf'),
(35, 6, '192.168.0.62', '2025-02-21 18:49:58', 1, NULL),
(36, 6, '192.168.0.62', '2025-02-21 19:01:01', 1, NULL),
(37, 6, '192.168.0.62', '2025-02-21 19:15:39', 1, NULL),
(38, 6, '192.168.0.62', '2025-02-21 19:17:16', 1, NULL),
(39, 6, '192.168.0.62', '2025-02-22 10:01:38', 1, NULL),
(40, 6, '192.168.0.62', '2025-02-22 10:31:33', 1, NULL),
(41, 6, '192.168.0.62', '2025-02-22 10:32:04', 1, NULL),
(42, 6, '192.168.0.62', '2025-02-22 12:49:04', 1, NULL),
(43, 6, '192.168.0.62', '2025-02-22 12:50:27', 1, NULL),
(44, 6, '192.168.0.62', '2025-02-22 14:53:16', 0, 'Raj'),
(45, 6, '192.168.0.62', '2025-02-22 14:53:19', 1, NULL),
(46, 6, '192.168.0.62', '2025-02-22 15:08:03', 1, NULL),
(47, 6, '192.168.0.62', '2025-02-22 16:09:46', 1, NULL),
(48, 6, '192.168.0.62', '2025-02-22 16:10:04', 1, NULL),
(49, 6, '192.168.0.62', '2025-02-22 16:10:10', 1, NULL),
(50, 6, '192.168.0.62', '2025-02-22 16:10:23', 1, NULL),
(51, 6, '192.168.0.62', '2025-02-22 16:11:17', 1, NULL),
(52, 6, '192.168.0.62', '2025-02-22 17:10:43', 1, NULL),
(53, 6, '192.168.0.62', '2025-02-22 17:11:08', 0, '1pUIOfdll08Qd&Y]sdafdsa'),
(54, 6, '192.168.0.62', '2025-02-22 17:11:27', 1, NULL),
(55, 6, '192.168.0.62', '2025-02-22 17:11:59', 1, NULL),
(56, 6, '192.168.0.62', '2025-02-22 17:13:29', 1, NULL),
(57, 6, '192.168.0.62', '2025-02-22 17:46:45', 1, NULL),
(58, 6, '192.168.0.62', '2025-02-22 19:14:41', 1, NULL),
(59, 6, '192.168.0.62', '2025-02-22 19:27:58', 1, NULL),
(60, 6, '192.168.0.62', '2025-02-24 10:12:21', 1, NULL),
(61, 6, '192.168.0.62', '2025-02-25 10:03:07', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_logs`
--

CREATE TABLE `master_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `affected_row_id` int(11) NOT NULL,
  `old_data` text DEFAULT NULL,
  `new_data` text DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_logs`
--

INSERT INTO `master_logs` (`id`, `username`, `action`, `table_name`, `affected_row_id`, `old_data`, `new_data`, `ip_address`, `timestamp`) VALUES
(1, 'admin', 'LOGIN SUCCESS', 'users', 2, NULL, NULL, '192.168.0.62', '2025-02-21 09:46:50'),
(2, 'Little Genius', 'LOGIN SUCCESS', 'users', 1, NULL, NULL, '192.168.0.62', '2025-02-21 09:47:31'),
(3, 'Little Genius', 'LOGIN SUCCESS', 'users', 1, NULL, NULL, '192.168.0.62', '2025-02-21 09:48:18'),
(4, 'admin', 'LOGIN SUCCESS', 'users', 2, NULL, NULL, '192.168.0.62', '2025-02-21 10:14:14'),
(5, 'admin2', 'LOGIN SUCCESS', 'users', 5, NULL, NULL, '192.168.0.62', '2025-02-21 10:51:22'),
(6, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 10:56:55'),
(7, 'vaibhav', 'REGISTER', 'users', 0, 'null', 'null', '192.168.0.62', '2025-02-21 11:00:18'),
(8, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 11:00:33'),
(9, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 11:07:42'),
(10, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 11:12:56'),
(11, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 11:13:14'),
(12, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 11:13:48'),
(13, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:12:24'),
(14, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:15:18'),
(15, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:15:40'),
(16, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:16:31'),
(17, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:16:47'),
(18, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:16:51'),
(19, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 12:36:44'),
(20, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:05:01'),
(21, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:05:51'),
(22, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:19:16'),
(23, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:19:58'),
(24, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:31:01'),
(25, 'Little Genius', 'Logged Out', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-21 13:45:36'),
(26, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:45:39'),
(27, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-21 13:47:14'),
(28, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-21 13:47:16'),
(29, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 04:31:38'),
(30, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 04:42:26'),
(31, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 05:01:33'),
(32, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 05:02:01'),
(33, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 05:02:04'),
(34, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 07:18:58'),
(35, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 07:19:04'),
(36, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 07:19:08'),
(37, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 07:20:27'),
(38, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 07:20:37'),
(39, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 09:23:19'),
(40, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 09:23:23'),
(41, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 09:38:03'),
(42, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 09:38:09'),
(43, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 10:39:46'),
(44, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 10:39:57'),
(45, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 10:40:04'),
(46, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 10:40:08'),
(47, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 10:40:10'),
(48, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 10:40:14'),
(49, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 10:40:23'),
(50, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 10:41:14'),
(51, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 10:41:17'),
(52, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 11:40:40'),
(53, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 11:40:43'),
(54, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 11:40:49'),
(55, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 11:41:27'),
(56, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 11:41:31'),
(57, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 11:41:59'),
(58, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 11:42:03'),
(59, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 11:43:29'),
(60, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 11:43:33'),
(61, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 12:16:45'),
(62, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 12:16:51'),
(63, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 13:44:41'),
(64, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-22 13:57:46'),
(65, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-22 13:57:58'),
(66, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-24 04:42:21'),
(67, 'Little Genius', 'INSERT', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 05:42:33'),
(68, 'Little Genius', 'INSERT', 'BLOG_categories', 2, NULL, 'new', '192.168.0.62', '2025-02-24 05:50:26'),
(69, 'Little Genius', 'INSERT', 'BLOG_categories', 3, NULL, 'category1', '192.168.0.62', '2025-02-24 05:53:48'),
(70, 'Little Genius', 'INSERT', 'BLOG_categories', 4, NULL, 'category2', '192.168.0.62', '2025-02-24 05:53:55'),
(71, 'Little Genius', 'INSERT', 'BLOG_categories', 5, NULL, 'category', '192.168.0.62', '2025-02-24 05:54:04'),
(72, 'Little Genius', 'INSERT', 'BLOG_categories', 6, NULL, 'category4', '192.168.0.62', '2025-02-24 05:54:14'),
(73, 'Little Genius', 'INSERT', 'BLOG_categories', 7, NULL, 'category5', '192.168.0.62', '2025-02-24 05:54:21'),
(74, 'Little Genius', 'INSERT', 'BLOG_categories', 8, NULL, 'category6', '192.168.0.62', '2025-02-24 05:54:29'),
(75, 'Little Genius', 'INSERT', 'BLOG_categories', 9, NULL, 'category7', '192.168.0.62', '2025-02-24 05:54:36'),
(76, 'Little Genius', 'INSERT', 'BLOG_categories', 10, NULL, 'category8', '192.168.0.62', '2025-02-24 05:55:10'),
(77, 'Little Genius', 'INSERT', 'BLOG_categories', 11, NULL, 'test', '192.168.0.62', '2025-02-24 08:27:14'),
(78, 'Little Genius', 'INSERT', 'BLOG_categories', 12, NULL, 'test1', '192.168.0.62', '2025-02-24 08:27:41'),
(79, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 08:51:18'),
(80, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 08:51:51'),
(81, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 08:53:40'),
(82, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 08:53:49'),
(83, 'Little Genius', 'UPDATE', 'BLOG_categories', 10, NULL, 'category8', '192.168.0.62', '2025-02-24 08:54:03'),
(84, 'Little Genius', 'UPDATE', 'BLOG_categories', 10, NULL, 'category8', '192.168.0.62', '2025-02-24 09:34:30'),
(85, 'Little Genius', 'UPDATE', 'BLOG_categories', 10, NULL, 'category8', '192.168.0.62', '2025-02-24 09:35:45'),
(86, 'Little Genius', 'UPDATE', 'BLOG_categories', 3, NULL, 'category1', '192.168.0.62', '2025-02-24 09:36:07'),
(87, 'Little Genius', 'UPDATE', 'BLOG_categories', 5, NULL, 'category3', '192.168.0.62', '2025-02-24 09:36:48'),
(88, 'Little Genius', 'DISABLE', 'BLOG_categories', 5, NULL, NULL, '192.168.0.62', '2025-02-24 09:38:40'),
(89, 'Little Genius', 'DISABLE', 'BLOG_categories', 5, NULL, NULL, '192.168.0.62', '2025-02-24 09:39:42'),
(90, 'Little Genius', 'DISABLE', 'BLOG_categories', 3, NULL, NULL, '192.168.0.62', '2025-02-24 09:39:47'),
(91, 'Little Genius', 'DISABLE', 'BLOG_categories', 3, NULL, NULL, '192.168.0.62', '2025-02-24 09:41:59'),
(92, 'Little Genius', 'DISABLE', 'BLOG_categories', 3, NULL, NULL, '192.168.0.62', '2025-02-24 09:42:00'),
(93, 'Little Genius', 'DISABLE', 'BLOG_categories', 3, NULL, NULL, '192.168.0.62', '2025-02-24 09:42:00'),
(94, 'Little Genius', 'DISABLE', 'BLOG_categories', 3, NULL, NULL, '192.168.0.62', '2025-02-24 09:42:01'),
(95, 'Little Genius', 'UPDATE', 'BLOG_categories', 11, NULL, 'test', '192.168.0.62', '2025-02-24 10:29:09'),
(96, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 10:29:27'),
(97, 'Little Genius', 'INSERT', 'BLOG_categories', 13, NULL, 'new', '192.168.0.62', '2025-02-24 10:37:49'),
(98, 'Little Genius', 'DISABLE', 'BLOG_categories', 13, NULL, NULL, '192.168.0.62', '2025-02-24 10:45:34'),
(99, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 10:45:47'),
(100, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 10:46:50'),
(101, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 10:47:20'),
(102, 'Little Genius', 'UPDATE', 'BLOG_categories', 4, NULL, 'category2', '192.168.0.62', '2025-02-24 10:47:52'),
(103, 'Little Genius', 'UPDATE', 'BLOG_categories', 12, NULL, 'test1', '192.168.0.62', '2025-02-24 10:48:03'),
(104, 'Little Genius', 'UPDATE', 'BLOG_categories', 1, NULL, 'raj', '192.168.0.62', '2025-02-24 10:48:19'),
(105, 'Little Genius', 'DISABLE', 'BLOG_categories', 4, NULL, NULL, '192.168.0.62', '2025-02-24 10:48:27'),
(106, 'Little Genius', 'UPDATE', 'BLOG_categories', 9, NULL, 'category7', '192.168.0.62', '2025-02-24 10:48:47'),
(107, 'Little Genius', 'INSERT', 'BLOG_categories', 14, NULL, '1 NO', '192.168.0.62', '2025-02-24 10:49:14'),
(108, 'Little Genius', 'UPDATE', 'BLOG_categories', 7, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"category5\"}', '{\"name\":\"category5\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-24 13:35:43'),
(109, 'Little Genius', 'INSERT', 'BLOG_categories', 18, NULL, '{\"name\":\"new\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-24 13:36:18'),
(110, 'Little Genius', 'UPDATE', 'BLOG_categories', 10, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"category8\"}', '{\"name\":\"category8\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-24 13:36:37'),
(111, 'Little Genius', 'INSERT', 'BLOG_categories', 19, NULL, '{\"name\":\"Category Name 1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-24 13:51:42'),
(112, 'Little Genius', 'INSERT', 'BLOG_categories', 20, NULL, '{\"name\":\"Category Name 2\",\"order_num\":\"0\"}', '192.168.0.62', '2025-02-24 13:51:49'),
(113, 'Little Genius', 'INSERT', 'BLOG_categories', 21, NULL, '{\"name\":\"Category Name 3\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-24 13:51:57'),
(114, 'Little Genius', 'UPDATE', 'BLOG_categories', 20, '{\"BLOG_Category_order_num\":\"0\",\"BLOG_Category_name\":\"Category Name 2\"}', '{\"name\":\"Category Name 2\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-24 13:52:04'),
(115, 'Little Genius', 'UPDATE', 'BLOG_categories', 21, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"Category Name 3\"}', '{\"name\":\"Category Name 3\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-24 13:52:11'),
(116, 'Little Genius', 'LOGGED OUT', 'users', 0, 'NULL', 'NULL', '192.168.0.62', '2025-02-24 14:05:53'),
(117, 'Little Genius', 'LOGIN SUCCESS', 'users', 6, NULL, NULL, '192.168.0.62', '2025-02-25 04:33:07'),
(118, 'Little Genius', 'UPDATE', 'BLOG_categories', 20, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"Category Name 2\"}', '{\"name\":\"Category Name 2\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 04:40:40'),
(119, 'Little Genius', 'INSERT', 'BLOG_categories', 22, NULL, '{\"name\":\"delete\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 04:43:24'),
(120, 'Little Genius', 'DELETE', 'BLOG_categories', 22, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"delete\"}', '{\"name\":\"delete\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 04:43:34'),
(121, 'Little Genius', 'INSERT', 'BLOG_categories', 23, NULL, '{\"name\":\"dsfsaf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:28:36'),
(122, 'Little Genius', 'UPDATE', 'BLOG_categories', 19, '{\"BLOG_Category_order_num\":\"5\",\"BLOG_Category_name\":\"Category Name 1\"}', '{\"name\":\"Category Name 1\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 06:28:48'),
(123, 'Little Genius', 'DELETE', 'BLOG_categories', 19, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"Category Name 1\"}', '{\"name\":\"Category Name 1\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 06:40:04'),
(124, 'Little Genius', 'INSERT', 'BLOG_categories', 24, NULL, '{\"name\":\"asfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:40:14'),
(125, 'Little Genius', 'INSERT', 'BLOG_categories', 25, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:40:22'),
(126, 'Little Genius', 'DELETE', 'BLOG_categories', 25, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:43:11'),
(127, 'Little Genius', 'DELETE', 'BLOG_categories', 23, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"dsfsaf\"}', '{\"name\":\"dsfsaf\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 06:46:02'),
(128, 'Little Genius', 'INSERT', 'BLOG_categories', 26, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:46:54'),
(129, 'Little Genius', 'DELETE', 'BLOG_categories', 26, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:47:00'),
(130, 'Little Genius', 'DELETE', 'BLOG_categories', 24, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asfasdf\"}', '{\"name\":\"asfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:47:00'),
(131, 'Little Genius', 'INSERT', 'BLOG_categories', 27, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:47:14'),
(132, 'Little Genius', 'INSERT', 'BLOG_categories', 28, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"0\"}', '192.168.0.62', '2025-02-25 06:47:19'),
(133, 'Little Genius', 'UPDATE', 'BLOG_categories', 28, '{\"BLOG_Category_order_num\":\"0\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:47:25'),
(134, 'Little Genius', 'DELETE', 'BLOG_categories', 27, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"asdfasdfasdf\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 06:51:10'),
(135, 'Little Genius', 'INSERT', 'BLOG_categories', 29, NULL, '{\"name\":\"adsffdsdsfsd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:51:20'),
(136, 'Little Genius', 'DELETE', 'BLOG_categories', 29, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"adsffdsdsfsd\"}', '{\"name\":\"adsffdsdsfsd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:51:28'),
(137, 'Little Genius', 'DELETE', 'BLOG_categories', 28, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:51:28'),
(138, 'Little Genius', 'INSERT', 'BLOG_categories', 30, NULL, '{\"name\":\"hello\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:52:06'),
(139, 'Little Genius', 'INSERT', 'BLOG_categories', 31, NULL, '{\"name\":\"hello2\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 06:52:15'),
(140, 'Little Genius', 'INSERT', 'BLOG_categories', 32, NULL, '{\"name\":\"adsfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:53:04'),
(141, 'Little Genius', 'DELETE', 'BLOG_categories', 32, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"adsfasdf\"}', '{\"name\":\"adsfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:53:10'),
(142, 'Little Genius', 'DELETE', 'BLOG_categories', 31, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"hello2\"}', '{\"name\":\"hello2\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 06:53:19'),
(143, 'Little Genius', 'DELETE', 'BLOG_categories', 30, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"hello\"}', '{\"name\":\"hello\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 06:58:26'),
(144, 'Little Genius', 'INSERT', 'BLOG_categories', 33, NULL, '{\"name\":\"asdsdafsda\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:01:28'),
(145, 'Little Genius', 'DELETE', 'BLOG_categories', 33, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdsdafsda\"}', '{\"name\":\"asdsdafsda\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:01:33'),
(146, 'Little Genius', 'INSERT', 'BLOG_categories', 34, NULL, '{\"name\":\"dsafasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:03:31'),
(147, 'Little Genius', 'DELETE', 'BLOG_categories', 34, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"dsafasdfasdf\"}', '{\"name\":\"dsafasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:03:37'),
(148, '1', 'INSERT', 'BLOG_categories', 35, NULL, '{\"name\":\"adsfasdfasf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:06:38'),
(149, '1', 'INSERT', 'BLOG_categories', 36, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:06:43'),
(150, '1', 'INSERT', 'BLOG_categories', 37, NULL, '{\"name\":\"adsfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:06:46'),
(151, '1', 'INSERT', 'BLOG_categories', 38, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:06:49'),
(152, '1', 'DELETE', 'BLOG_categories', 35, '{\"BLOG_Category_order_num\":\"4\",\"BLOG_Category_name\":\"adsfasdfasf\"}', '{\"name\":\"adsfasdfasf\",\"order_num\":\"4\"}', '192.168.0.62', '2025-02-25 07:06:54'),
(153, 'Little Genius', 'INSERT', 'BLOG_categories', 39, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:08:36'),
(154, 'Little Genius', 'DELETE', 'BLOG_categories', 36, '{\"BLOG_Category_order_num\":\"4\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"4\"}', '192.168.0.62', '2025-02-25 07:09:23'),
(155, 'Little Genius', 'INSERT', 'BLOG_categories', 40, NULL, '{\"name\":\"sadfsdfasdfa1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:11:21'),
(156, 'Little Genius', 'INSERT', 'BLOG_categories', 41, NULL, '{\"name\":\"new5\",\"order_num\":\"5\"}', '192.168.0.62', '2025-02-25 07:22:38'),
(157, 'Little Genius', 'INSERT', 'BLOG_categories', 42, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"6\"}', '192.168.0.62', '2025-02-25 07:22:49'),
(158, 'Little Genius', 'INSERT', 'BLOG_categories', 43, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"6\"}', '192.168.0.62', '2025-02-25 07:23:33'),
(159, 'Little Genius', 'INSERT', 'BLOG_categories', 44, NULL, '{\"name\":\"asdfasdfasdfasdf\",\"order_num\":\"7\"}', '192.168.0.62', '2025-02-25 07:23:35'),
(160, 'Little Genius', 'DELETE', 'BLOG_categories', 42, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"8\"}', '192.168.0.62', '2025-02-25 07:23:42'),
(161, 'Little Genius', 'DELETE', 'BLOG_categories', 42, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"8\"}', '192.168.0.62', '2025-02-25 07:23:45'),
(162, 'Little Genius', 'DELETE', 'BLOG_categories', 42, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"8\"}', '192.168.0.62', '2025-02-25 07:23:49'),
(163, 'Little Genius', 'DELETE', 'BLOG_categories', 42, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"8\"}', '192.168.0.62', '2025-02-25 07:24:03'),
(164, 'Little Genius', 'DELETE', 'BLOG_categories', 43, '{\"BLOG_Category_order_num\":\"6\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"6\"}', '192.168.0.62', '2025-02-25 07:24:06'),
(165, 'Little Genius', 'DELETE', 'BLOG_categories', 40, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"sadfsdfasdfa1\"}', '{\"name\":\"sadfsdfasdfa1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 07:24:10'),
(166, 'Little Genius', 'INSERT', 'BLOG_categories', 45, NULL, '{\"name\":\"sadfasdf\",\"order_num\":\"6\"}', '192.168.0.62', '2025-02-25 07:26:05'),
(167, 'Little Genius', 'INSERT', 'BLOG_categories', 46, NULL, '{\"name\":\"asdfasdfas\",\"order_num\":\"7\"}', '192.168.0.62', '2025-02-25 07:26:39'),
(168, 'Little Genius', 'INSERT', 'BLOG_categories', 47, NULL, '{\"name\":\"asdfasdfas\",\"order_num\":\"7\"}', '192.168.0.62', '2025-02-25 07:26:43'),
(169, 'Little Genius', 'INSERT', 'BLOG_categories', 48, NULL, '{\"name\":\"asdfasdfas\",\"order_num\":\"7\"}', '192.168.0.62', '2025-02-25 08:24:43'),
(170, 'Little Genius', 'INSERT', 'BLOG_categories', 49, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 08:44:13'),
(171, 'Little Genius', 'INSERT', 'BLOG_categories', 50, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 08:45:45'),
(172, 'Little Genius', 'INSERT', 'BLOG_categories', 51, NULL, '{\"name\":\"sdasdare\",\"order_num\":\"11\"}', '192.168.0.62', '2025-02-25 08:45:49'),
(173, 'Little Genius', 'DELETE', 'BLOG_categories', 46, '{\"BLOG_Category_order_num\":\"9\",\"BLOG_Category_name\":\"asdfasdfas\"}', '{\"name\":\"asdfasdfas\",\"order_num\":\"9\"}', '192.168.0.62', '2025-02-25 08:45:58'),
(174, 'Little Genius', 'DELETE', 'BLOG_categories', 51, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"sdasdare\"}', '{\"name\":\"sdasdare\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 08:46:05'),
(175, 'Little Genius', 'INSERT', 'BLOG_categories', 52, NULL, '{\"name\":\"sadfsdfa11\",\"order_num\":\"11\"}', '192.168.0.62', '2025-02-25 09:09:57'),
(176, 'Little Genius', 'INSERT', 'BLOG_categories', 53, NULL, '{\"name\":\"sadfsdfa11\",\"order_num\":\"11\"}', '192.168.0.62', '2025-02-25 09:11:45'),
(177, 'Little Genius', 'INSERT', 'BLOG_categories', 54, NULL, '{\"name\":\"sadfsdfa11\",\"order_num\":\"11\"}', '192.168.0.62', '2025-02-25 09:13:16'),
(178, 'Little Genius', 'INSERT', 'BLOG_categories', 55, NULL, '{\"name\":\"hello\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:17:38'),
(179, 'Little Genius', 'DELETE', 'BLOG_categories', 50, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:17:50'),
(180, 'Little Genius', 'DELETE', 'BLOG_categories', 50, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:17:54'),
(181, 'Little Genius', 'DELETE', 'BLOG_categories', 49, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:18:00'),
(182, 'Little Genius', 'DELETE', 'BLOG_categories', 53, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"sadfsdfa11\"}', '{\"name\":\"sadfsdfa11\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:18:04'),
(183, 'Little Genius', 'DELETE', 'BLOG_categories', 54, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"sadfsdfa11\"}', '{\"name\":\"sadfsdfa11\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:18:09'),
(184, 'Little Genius', 'INSERT', 'BLOG_categories', 56, NULL, '{\"name\":\"hello\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:23:23'),
(185, 'Little Genius', 'INSERT', 'BLOG_categories', 57, NULL, '{\"name\":\"hello3\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:26:38'),
(186, 'Little Genius', 'DELETE', 'BLOG_categories', 57, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"hello3\"}', '{\"name\":\"hello3\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:26:57'),
(187, 'Little Genius', 'DELETE', 'BLOG_categories', 57, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"hello3\"}', '{\"name\":\"hello3\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:27:03'),
(188, 'Little Genius', 'DELETE', 'BLOG_categories', 57, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"hello3\"}', '{\"name\":\"hello3\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:27:19'),
(189, 'Little Genius', 'INSERT', 'BLOG_categories', 58, NULL, '{\"name\":\"new\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:27:31'),
(190, 'Little Genius', 'INSERT', 'BLOG_categories', 59, NULL, '{\"name\":\"new\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:27:39'),
(191, 'Little Genius', 'DELETE', 'BLOG_categories', 39, '{\"BLOG_Category_order_num\":\"3\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"asdfasdfasdf\",\"order_num\":\"3\"}', '192.168.0.62', '2025-02-25 09:27:56'),
(192, 'Little Genius', 'DELETE', 'BLOG_categories', 38, '{\"BLOG_Category_order_num\":\"3\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"3\"}', '192.168.0.62', '2025-02-25 09:28:00'),
(193, 'Little Genius', 'DELETE', 'BLOG_categories', 37, '{\"BLOG_Category_order_num\":\"3\",\"BLOG_Category_name\":\"adsfasdfasdf\"}', '{\"name\":\"adsfasdfasdf\",\"order_num\":\"3\"}', '192.168.0.62', '2025-02-25 09:28:07'),
(194, 'Little Genius', 'UPDATE', 'BLOG_categories', 41, '{\"BLOG_Category_order_num\":\"3\",\"BLOG_Category_name\":\"new5\"}', '{\"name\":\"new5\",\"order_num\":\"11\"}', '192.168.0.62', '2025-02-25 09:28:14'),
(195, 'Little Genius', 'UPDATE', 'BLOG_categories', 59, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"new\"}', '{\"name\":\"new\",\"order_num\":\"3\"}', '192.168.0.62', '2025-02-25 09:28:32'),
(196, 'Little Genius', 'UPDATE', 'BLOG_categories', 55, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"hello\"}', '{\"name\":\"hello\",\"order_num\":\"8\"}', '192.168.0.62', '2025-02-25 09:28:47'),
(197, 'Little Genius', 'UPDATE', 'BLOG_categories', 44, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasdfasdfasdf\"}', '{\"name\":\"asdfasdfasdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:28:56'),
(198, 'Little Genius', 'DELETE', 'BLOG_categories', 44, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"asdfasdfasdfasdf\"}', '{\"name\":\"asdfasdfasdfasdf\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:29:16'),
(199, 'Little Genius', 'DELETE', 'BLOG_categories', 41, '{\"BLOG_Category_order_num\":\"10\",\"BLOG_Category_name\":\"new5\"}', '{\"name\":\"new5\",\"order_num\":\"10\"}', '192.168.0.62', '2025-02-25 09:29:21'),
(200, 'Little Genius', 'DELETE', 'BLOG_categories', 59, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"new\"}', '{\"name\":\"new\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:29:27'),
(201, 'Little Genius', 'DELETE', 'BLOG_categories', 48, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasdfas\"}', '{\"name\":\"asdfasdfas\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:29:33'),
(202, 'Little Genius', 'DELETE', 'BLOG_categories', 47, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasdfas\"}', '{\"name\":\"asdfasdfas\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:31:15'),
(203, 'Little Genius', 'DELETE', 'BLOG_categories', 45, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"sadfasdf\"}', '{\"name\":\"sadfasdf\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:31:30'),
(204, 'Little Genius', 'DELETE', 'BLOG_categories', 52, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"sadfsdfa11\"}', '{\"name\":\"sadfsdfa11\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:31:30'),
(205, 'Little Genius', 'DELETE', 'BLOG_categories', 56, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"hello\"}', '{\"name\":\"hello\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:31:30'),
(206, 'Little Genius', 'DELETE', 'BLOG_categories', 55, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"hello\"}', '{\"name\":\"hello\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:31:30'),
(207, 'Little Genius', 'INSERT', 'BLOG_categories', 60, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:31:39'),
(208, 'Little Genius', 'INSERT', 'BLOG_categories', 61, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:31:44'),
(209, 'Little Genius', 'UPDATE', 'BLOG_categories', 60, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:31:49'),
(210, 'Little Genius', 'UPDATE', 'BLOG_categories', 58, '{\"BLOG_Category_order_num\":\"3\",\"BLOG_Category_name\":\"new\"}', '{\"name\":\"new\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:32:06'),
(211, 'Little Genius', 'DELETE', 'BLOG_categories', 61, '{\"BLOG_Category_order_num\":\"3\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"asdfasdfasdf\",\"order_num\":\"3\"}', '192.168.0.62', '2025-02-25 09:32:18'),
(212, 'Little Genius', 'DELETE', 'BLOG_categories', 60, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 09:34:00'),
(213, 'Little Genius', 'INSERT', 'BLOG_categories', 62, NULL, '{\"name\":\"asdfwefsfdfa\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:34:19'),
(214, 'Little Genius', 'DELETE', 'BLOG_categories', 62, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfwefsfdfa\"}', '{\"name\":\"asdfwefsfdfa\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:43:56'),
(215, 'Little Genius', 'INSERT', 'BLOG_categories', 63, NULL, '{\"name\":\"asdfasd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:45:20'),
(216, 'Little Genius', 'INSERT', 'BLOG_categories', 64, NULL, '{\"name\":\"1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:54:22'),
(217, 'Little Genius', 'delete DELETE', 'BLOG_categories', 64, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"1\"}', '{\"name\":\"1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:57:00'),
(218, 'Little Genius', 'INSERT', 'BLOG_categories', 65, NULL, '{\"name\":\"hasdfasd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:58:01'),
(219, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"hasdfasd\"}', '{\"name\":\"asdffsadf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 09:58:21'),
(220, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdffsadf\"}', '{\"name\":\"asdffsadf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:00:59'),
(221, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdffsadf\"}', '{\"name\":\"RAJ\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:01:06'),
(222, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJ\"}', '{\"name\":\"RAJ\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:01:10'),
(223, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJ\"}', '{\"name\":\"RAJE\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:01:21'),
(224, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJE\"}', '{\"name\":\"RAJ\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:03:52'),
(225, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJ\"}', '{\"name\":\"RAJ\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:03:58'),
(226, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJ\"}', '{\"name\":\"RAJ\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:04:01'),
(227, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJ\"}', '{\"name\":\"RAJendra\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:04:07'),
(228, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJendra\"}', '{\"name\":\"RAJendra\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:04:10'),
(229, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"RAJendra\"}', '{\"name\":\"Rajendra\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:04:17'),
(230, 'Little Genius', 'delete DELETE', 'BLOG_categories', 63, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"asdfasd\"}', '{\"name\":\"asdfasd\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 10:04:42'),
(231, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"Rajendra\"}', '{\"name\":\"Rajendra\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:07:09'),
(232, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"Rajendra\"}', '{\"name\":\"Rajendrasinh\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:07:50'),
(233, 'Little Genius', 'INSERT', 'BLOG_categories', 66, NULL, '{\"name\":\"indrasinh\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:08:41'),
(234, 'Little Genius', 'UPDATE', 'BLOG_categories', 66, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"indrasinh\"}', '{\"name\":\"Indrasinh\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:11:24'),
(235, 'Little Genius', 'INSERT', 'BLOG_categories', 67, NULL, '{\"name\":\"adsf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:48:30'),
(236, 'Little Genius', 'INSERT', 'BLOG_categories', 68, NULL, '{\"name\":\"1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:49:06'),
(237, 'Little Genius', 'INSERT', 'BLOG_categories', 69, NULL, '{\"name\":\"asdfas\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:49:44'),
(238, 'Little Genius', 'DELETE', 'BLOG_categories', 69, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfas\"}', '{\"name\":\"asdfas\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 10:49:50'),
(239, 'Little Genius', 'UPDATE', 'BLOG_categories', 68, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"1\"}', '{\"name\":\"1asdasd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:00:08'),
(240, 'Little Genius', 'INSERT', 'BLOG_categories', 70, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:01:28'),
(241, 'Little Genius', 'INSERT', 'BLOG_categories', 71, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:01:37'),
(242, 'Little Genius', 'DELETE', 'BLOG_categories', 71, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"\"}', '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:01:46'),
(243, 'Little Genius', 'INSERT', 'BLOG_categories', 72, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:02:02'),
(244, 'Little Genius', 'DELETE', 'BLOG_categories', 72, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"\"}', '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:02:06'),
(245, 'Little Genius', 'INSERT', 'BLOG_categories', 73, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:03:39'),
(246, 'Little Genius', 'DELETE', 'BLOG_categories', 73, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"\"}', '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:05:43'),
(247, 'Little Genius', 'INSERT', 'BLOG_categories', 74, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:05:54'),
(248, 'Little Genius', 'DELETE', 'BLOG_categories', 74, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"\"}', '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:06:02'),
(249, 'Little Genius', 'INSERT', 'BLOG_categories', 75, NULL, '{\"name\":\"sdaasdffd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:06:42'),
(250, 'Little Genius', 'INSERT', 'BLOG_categories', 76, NULL, '{\"name\":\"sdaasdffd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:07:52'),
(251, 'Little Genius', 'INSERT', 'BLOG_categories', 77, NULL, '{\"name\":\"<script>\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:08:00'),
(252, 'Little Genius', 'DELETE', 'BLOG_categories', 76, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"sdaasdffd\"}', '{\"name\":\"sdaasdffd\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 11:08:32'),
(253, 'Little Genius', 'UPDATE', 'BLOG_categories', 58, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"new\"}', '{\"name\":\"new\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:08:39'),
(254, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"Rajendrasinh\"}', '{\"name\":\"Rajendrasinh\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 11:08:57'),
(255, 'Little Genius', 'UPDATE', 'BLOG_categories', 75, '{\"BLOG_Category_order_num\":\"4\",\"BLOG_Category_name\":\"sdaasdffd\"}', '{\"name\":\"sdaasdffd\",\"order_num\":\"3\"}', '192.168.0.62', '2025-02-25 11:09:08'),
(256, 'Little Genius', 'UPDATE', 'BLOG_categories', 70, '{\"BLOG_Category_order_num\":\"5\",\"BLOG_Category_name\":\"asdfasdf\"}', '{\"name\":\"asdfasdf\",\"order_num\":\"4\"}', '192.168.0.62', '2025-02-25 11:09:15'),
(257, 'Little Genius', 'UPDATE', 'BLOG_categories', 68, '{\"BLOG_Category_order_num\":\"6\",\"BLOG_Category_name\":\"1asdasd\"}', '{\"name\":\"1asdasd\",\"order_num\":\"5\"}', '192.168.0.62', '2025-02-25 11:09:26'),
(258, 'Little Genius', 'UPDATE', 'BLOG_categories', 67, '{\"BLOG_Category_order_num\":\"7\",\"BLOG_Category_name\":\"adsf\"}', '{\"name\":\"adsf\",\"order_num\":\"6\"}', '192.168.0.62', '2025-02-25 11:09:35'),
(259, 'Little Genius', 'UPDATE', 'BLOG_categories', 66, '{\"BLOG_Category_order_num\":\"8\",\"BLOG_Category_name\":\"Indrasinh\"}', '{\"name\":\"Indrasinh\",\"order_num\":\"7\"}', '192.168.0.62', '2025-02-25 11:09:50'),
(260, 'Little Genius', 'DELETE', 'BLOG_categories', 58, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"new\"}', '{\"name\":\"new\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:10:11'),
(261, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"Rajendrasinh\"}', '{\"name\":\"Rajendrasinh\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:11:23'),
(262, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"Rajendrasinh\"}', '{\"name\":\"Rajendrasinh\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:11:27'),
(263, 'Little Genius', 'UPDATE', 'BLOG_categories', 65, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"Rajendrasinh\"}', '{\"name\":\"Rajendra\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:11:31'),
(264, 'Little Genius', 'INSERT', 'BLOG_categories', 78, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:13:43'),
(265, 'Little Genius', 'INSERT', 'BLOG_categories', 79, NULL, '{\"name\":\"sadfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:13:55'),
(266, 'Little Genius', 'INSERT', 'BLOG_categories', 80, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:14:16'),
(267, 'Little Genius', 'INSERT', 'BLOG_categories', 81, NULL, '{\"name\":\"asdfasdfasd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:14:56'),
(268, 'Little Genius', 'INSERT', 'BLOG_categories', 82, NULL, '{\"name\":\"asdfasdfas\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:02'),
(269, 'Little Genius', 'INSERT', 'BLOG_categories', 83, NULL, '{\"name\":\"sdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:07'),
(270, 'Little Genius', 'INSERT', 'BLOG_categories', 84, NULL, '{\"name\":\"1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:20'),
(271, 'Little Genius', 'INSERT', 'BLOG_categories', 85, NULL, '{\"name\":\"2\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:24'),
(272, 'Little Genius', 'INSERT', 'BLOG_categories', 86, NULL, '{\"name\":\"3\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:28'),
(273, 'Little Genius', 'INSERT', 'BLOG_categories', 87, NULL, '{\"name\":\"sadfasdfasd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:44'),
(274, 'Little Genius', 'DELETE', 'BLOG_categories', 87, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"sadfasdfasd\"}', '{\"name\":\"sadfasdfasd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:15:56'),
(275, 'Little Genius', 'DELETE', 'BLOG_categories', 86, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"3\"}', '{\"name\":\"3\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:16:17'),
(276, 'Little Genius', 'DELETE', 'BLOG_categories', 85, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"2\"}', '{\"name\":\"2\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:16:21'),
(277, 'Little Genius', 'DELETE', 'BLOG_categories', 84, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"1\"}', '{\"name\":\"1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:16:30'),
(278, 'Little Genius', 'UPDATE', 'BLOG_categories', 83, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"sdfasdfasdf\"}', '{\"name\":\"asdsadf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:17:24'),
(279, 'Little Genius', 'INSERT', 'BLOG_categories', 88, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:18:39'),
(280, 'Little Genius', 'INSERT', 'BLOG_categories', 89, NULL, '{\"name\":\"&lt;strong&gt;abc&lt;\\/strong&gt;\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:20:17'),
(281, 'Little Genius', 'INSERT', 'BLOG_categories', 90, NULL, '{\"name\":\"https:\\/\\/getbootstrap.com\\/docs\\/5.0\\/forms\\/overview\\/\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:21:43'),
(282, 'Little Genius', 'UPDATE', 'BLOG_categories', 90, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"https:\\/\\/getbootstrap.com\\/docs\\/5.0\\/forms\\/overview\\/\"}', '{\"name\":\"<iframe src=\\\"https:\\/\\/www.w3schools.com\\\" title=\\\"W3Schools Free Online Web Tutorials\\\"><\\/iframe>\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:22:16'),
(283, 'Little Genius', 'INSERT', 'BLOG_categories', 91, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:22:26'),
(284, 'Little Genius', 'DELETE', 'BLOG_categories', 90, '{\"BLOG_Category_order_num\":\"2\",\"BLOG_Category_name\":\"<iframe src=\\\"https:\\/\\/www.w3schools.com\\\" title=\\\"W3Schools Free Online Web Tutorials\\\"><\\/iframe>\"}', '{\"name\":\"<iframe src=\\\"https:\\/\\/www.w3schools.com\\\" title=\\\"W3Schools Free Online Web Tutorials\\\"><\\/iframe>\",\"order_num\":\"2\"}', '192.168.0.62', '2025-02-25 11:22:34'),
(285, 'Little Genius', 'INSERT', 'BLOG_categories', 92, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:22:41'),
(286, 'Little Genius', 'INSERT', 'BLOG_categories', 93, NULL, '{\"name\":\"https:\\/\\/getbootstrap.com\\/docs\\/5.0\\/forms\\/select\\/\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:23:15'),
(287, 'Little Genius', 'INSERT', 'BLOG_categories', 94, NULL, '{\"name\":\"Parenting\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:25:07'),
(288, 'Little Genius', 'INSERT', 'BLOG_categories', 95, NULL, '{\"name\":\"COVID\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:25:17'),
(289, 'Little Genius', 'INSERT', 'BLOG_categories', 96, NULL, '{\"name\":\"Online Learning\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:25:28'),
(290, 'Little Genius', 'INSERT', 'BLOG_categories', 97, NULL, '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:32:10'),
(291, 'Little Genius', 'DELETE', 'BLOG_categories', 97, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"\"}', '{\"name\":\"\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:32:18'),
(292, 'Little Genius', 'INSERT', 'BLOG_categories', 98, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:35:27'),
(293, 'Little Genius', 'INSERT', 'BLOG_categories', 99, NULL, '{\"name\":\"dsafsdafasf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:38:19'),
(294, 'Little Genius', 'INSERT', 'BLOG_categories', 100, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:42:03'),
(295, 'Little Genius', 'INSERT', 'BLOG_categories', 101, NULL, '{\"name\":\"sdafasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:44:23'),
(296, 'Little Genius', 'INSERT', 'BLOG_categories', 102, NULL, '{\"name\":\"adsasdfasdfa\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:45:18'),
(297, 'Little Genius', 'INSERT', 'BLOG_categories', 103, NULL, '{\"name\":\"sdasdfasa\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:45:24'),
(298, 'Little Genius', 'INSERT', 'BLOG_categories', 104, NULL, '{\"name\":\"sdasdfasa\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:46:58'),
(299, 'Little Genius', 'INSERT', 'BLOG_categories', 105, NULL, '{\"name\":\"dafasfd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:47:05'),
(300, 'Little Genius', 'INSERT', 'BLOG_categories', 106, NULL, '{\"name\":\"dafasfd\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:47:45'),
(301, 'Little Genius', 'INSERT', 'BLOG_categories', 107, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:48:27'),
(302, 'Little Genius', 'INSERT', 'BLOG_categories', 108, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:49:31'),
(303, 'Little Genius', 'INSERT', 'BLOG_categories', 109, NULL, '{\"name\":\"asdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:49:35'),
(304, 'Little Genius', 'INSERT', 'BLOG_categories', 110, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:49:52'),
(305, 'Little Genius', 'INSERT', 'BLOG_categories', 111, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:51:09'),
(306, 'Little Genius', 'INSERT', 'BLOG_categories', 112, NULL, '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:53:09'),
(307, 'Little Genius', 'DELETE', 'BLOG_categories', 112, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"asdfasdfasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:53:34'),
(308, 'Little Genius', 'UPDATE', 'BLOG_categories', 111, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"asdfasdfasdf\"}', '{\"name\":\"Children\'s Corner\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:57:41'),
(309, 'Little Genius', 'INSERT', 'BLOG_categories', 113, NULL, '{\"name\":\"sdaf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:58:17'),
(310, 'Little Genius', 'DELETE', 'BLOG_categories', 113, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"sdaf\"}', '{\"name\":\"sdaf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 11:58:23'),
(311, 'Little Genius', 'INSERT', 'BLOG_categories', 114, NULL, '{\"name\":\"test\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 12:20:13'),
(312, 'Little Genius', 'UPDATE', 'BLOG_categories', 114, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"test\"}', '{\"name\":\"test\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 12:49:09'),
(313, 'Little Genius', 'UPDATE', 'BLOG_categories', 114, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"test\"}', '{\"name\":\"test1\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 12:49:37'),
(314, 'Little Genius', 'UPDATE', 'BLOG_categories', 114, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"test1\"}', '{\"name\":\"test12\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 12:51:44'),
(315, 'Little Genius', 'UPDATE', 'BLOG_categories', 114, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"test12\"}', '{\"name\":\"test\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 12:52:58'),
(316, 'Little Genius', 'UPDATE', 'BLOG_categories', 114, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"test\"}', '{\"name\":\"testdfqwefasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 12:53:08');
INSERT INTO `master_logs` (`id`, `username`, `action`, `table_name`, `affected_row_id`, `old_data`, `new_data`, `ip_address`, `timestamp`) VALUES
(317, 'Little Genius', 'DELETE', 'BLOG_categories', 114, '{\"BLOG_Category_order_num\":\"1\",\"BLOG_Category_name\":\"testdfqwefasdf\"}', '{\"name\":\"testdfqwefasdf\",\"order_num\":\"1\"}', '192.168.0.62', '2025-02-25 13:13:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `key` varchar(32) NOT NULL,
  `is_locked` tinyint(1) DEFAULT 0,
  `failed_attempts` int(11) DEFAULT 0,
  `last_failed_attempt` datetime DEFAULT NULL,
  `locked_until` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `key`, `is_locked`, `failed_attempts`, `last_failed_attempt`, `locked_until`) VALUES
(6, 'Little Genius', 'rajendra@tigermail.in', '$2y$10$NeD4HgULTlAasbtqVhgpKevWMMZC7R0fhIFbcNmZiOfCoriBA5MhW', 'UbNfNktiPYvFtFnB65RY2jBKelVVc3RZ', 0, 0, NULL, NULL),
(7, 'admin', 'rp@tigermail.in', '$2y$10$HcYTxcjzgE0vTNmBwetsTepruH/hQUQJ3E/AHPD.ToSXSdvS3GK2q', 'cBizLWqFxIO5w/o5K5VWwEYxZlprUWVr', 0, 0, NULL, NULL),
(8, 'vaibhav', 'vaibhav@tigermail.in', '$2y$10$UWJd83HFooy9IadSekvXvOG8X9X12Y57ONNrETTtK.EyJF4SZoNSC', 'tzYsSqowTHEKt5wyDZBYYlhqa3FnYUhY', 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`BLOG_Category_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `master_logs`
--
ALTER TABLE `master_logs`
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
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `BLOG_Category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `master_logs`
--
ALTER TABLE `master_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD CONSTRAINT `login_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
