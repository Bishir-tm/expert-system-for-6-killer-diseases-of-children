-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 10:07 AM
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
-- Database: `six_killer_diseases`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_history`
--

CREATE TABLE `diagnosis_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `disease_id` int(11) DEFAULT NULL,
  `diagnosis_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `symptoms` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis_history`
--

INSERT INTO `diagnosis_history` (`id`, `user_id`, `disease_id`, `diagnosis_date`, `symptoms`) VALUES
(1, 1, 3, '2024-11-14 16:41:50', '[\"12\",\"16\",\"18\",\"21\"]'),
(2, 1, 4, '2024-11-14 16:41:50', '[\"12\",\"16\",\"18\",\"21\"]'),
(3, 1, 2, '2024-11-14 16:41:50', '[\"12\",\"16\",\"18\",\"21\"]'),
(4, 1, 5, '2024-11-14 16:41:50', '[\"12\",\"16\",\"18\",\"21\"]'),
(5, 1, 2, '2024-11-14 16:42:02', '[\"8\",\"16\",\"19\"]'),
(6, 1, 1, '2024-11-14 16:42:02', '[\"8\",\"16\",\"19\"]'),
(7, 1, 3, '2024-11-14 16:42:02', '[\"8\",\"16\",\"19\"]'),
(8, 1, 5, '2024-11-14 16:42:02', '[\"8\",\"16\",\"19\"]'),
(9, 1, 6, '2024-11-14 16:42:02', '[\"8\",\"16\",\"19\"]'),
(10, 1, 4, '2024-11-14 16:42:02', '[\"8\",\"16\",\"19\"]'),
(11, 1, 1, '2024-11-14 20:00:35', '[\"1\",\"6\",\"7\",\"8\",\"11\",\"14\",\"15\",\"20\",\"22\",\"23\",\"24\",\"25\"]'),
(12, 1, 2, '2024-11-14 20:00:35', '[\"1\",\"6\",\"7\",\"8\",\"11\",\"14\",\"15\",\"20\",\"22\",\"23\",\"24\",\"25\"]'),
(13, 1, 3, '2024-11-14 20:00:35', '[\"1\",\"6\",\"7\",\"8\",\"11\",\"14\",\"15\",\"20\",\"22\",\"23\",\"24\",\"25\"]'),
(14, 1, 4, '2024-11-14 20:00:35', '[\"1\",\"6\",\"7\",\"8\",\"11\",\"14\",\"15\",\"20\",\"22\",\"23\",\"24\",\"25\"]'),
(15, 1, 5, '2024-11-14 20:00:35', '[\"1\",\"6\",\"7\",\"8\",\"11\",\"14\",\"15\",\"20\",\"22\",\"23\",\"24\",\"25\"]'),
(16, 1, 6, '2024-11-14 20:00:35', '[\"1\",\"6\",\"7\",\"8\",\"11\",\"14\",\"15\",\"20\",\"22\",\"23\",\"24\",\"25\"]'),
(17, 2, 1, '2024-11-14 20:27:52', '[\"5\",\"10\",\"14\",\"18\"]'),
(18, 2, 2, '2024-11-14 20:27:53', '[\"5\",\"10\",\"14\",\"18\"]'),
(19, 2, 3, '2024-11-14 20:27:53', '[\"5\",\"10\",\"14\",\"18\"]'),
(20, 2, 4, '2024-11-14 20:27:53', '[\"5\",\"10\",\"14\",\"18\"]'),
(21, 2, 5, '2024-11-14 20:27:53', '[\"5\",\"10\",\"14\",\"18\"]'),
(22, 2, 6, '2024-11-14 20:27:53', '[\"5\",\"10\",\"14\",\"18\"]'),
(23, 2, 1, '2024-11-14 20:38:18', '[\"2\",\"5\",\"14\",\"24\"]'),
(24, 2, 2, '2024-11-14 20:38:18', '[\"2\",\"5\",\"14\",\"24\"]'),
(25, 2, 3, '2024-11-14 20:38:18', '[\"2\",\"5\",\"14\",\"24\"]'),
(26, 2, 4, '2024-11-14 20:38:18', '[\"2\",\"5\",\"14\",\"24\"]'),
(27, 2, 5, '2024-11-14 20:38:18', '[\"2\",\"5\",\"14\",\"24\"]'),
(28, 2, 6, '2024-11-14 20:38:18', '[\"2\",\"5\",\"14\",\"24\"]'),
(29, 2, 1, '2024-11-14 20:38:33', '[\"2\",\"5\",\"14\",\"24\"]'),
(30, 2, 2, '2024-11-14 20:38:33', '[\"2\",\"5\",\"14\",\"24\"]'),
(31, 2, 3, '2024-11-14 20:38:34', '[\"2\",\"5\",\"14\",\"24\"]'),
(32, 2, 4, '2024-11-14 20:38:34', '[\"2\",\"5\",\"14\",\"24\"]'),
(33, 2, 5, '2024-11-14 20:38:34', '[\"2\",\"5\",\"14\",\"24\"]'),
(34, 2, 6, '2024-11-14 20:38:34', '[\"2\",\"5\",\"14\",\"24\"]'),
(35, 2, 1, '2024-11-14 20:38:50', '[\"2\",\"5\",\"9\",\"14\",\"16\",\"24\",\"25\"]'),
(36, 2, 2, '2024-11-14 20:38:51', '[\"2\",\"5\",\"9\",\"14\",\"16\",\"24\",\"25\"]'),
(37, 2, 3, '2024-11-14 20:38:51', '[\"2\",\"5\",\"9\",\"14\",\"16\",\"24\",\"25\"]'),
(38, 2, 4, '2024-11-14 20:38:51', '[\"2\",\"5\",\"9\",\"14\",\"16\",\"24\",\"25\"]'),
(39, 2, 5, '2024-11-14 20:38:51', '[\"2\",\"5\",\"9\",\"14\",\"16\",\"24\",\"25\"]'),
(40, 2, 6, '2024-11-14 20:38:51', '[\"2\",\"5\",\"9\",\"14\",\"16\",\"24\",\"25\"]'),
(41, 2, 1, '2024-11-15 04:48:48', '[\"1\",\"2\",\"5\",\"6\",\"9\",\"11\",\"12\",\"14\",\"16\",\"23\",\"24\",\"25\"]'),
(42, 2, 2, '2024-11-15 04:48:50', '[\"1\",\"2\",\"5\",\"6\",\"9\",\"11\",\"12\",\"14\",\"16\",\"23\",\"24\",\"25\"]'),
(43, 2, 3, '2024-11-15 04:48:51', '[\"1\",\"2\",\"5\",\"6\",\"9\",\"11\",\"12\",\"14\",\"16\",\"23\",\"24\",\"25\"]'),
(44, 2, 4, '2024-11-15 04:48:51', '[\"1\",\"2\",\"5\",\"6\",\"9\",\"11\",\"12\",\"14\",\"16\",\"23\",\"24\",\"25\"]'),
(45, 2, 5, '2024-11-15 04:48:52', '[\"1\",\"2\",\"5\",\"6\",\"9\",\"11\",\"12\",\"14\",\"16\",\"23\",\"24\",\"25\"]'),
(46, 2, 6, '2024-11-15 04:48:52', '[\"1\",\"2\",\"5\",\"6\",\"9\",\"11\",\"12\",\"14\",\"16\",\"23\",\"24\",\"25\"]'),
(47, 2, 1, '2024-11-15 04:53:22', '[\"5\",\"10\",\"26\"]'),
(48, 2, 5, '2024-11-15 04:53:22', '[\"5\",\"10\",\"26\"]'),
(49, 2, 2, '2024-11-15 04:53:23', '[\"5\",\"10\",\"26\"]'),
(50, 2, 3, '2024-11-15 04:53:23', '[\"5\",\"10\",\"26\"]'),
(51, 2, 4, '2024-11-15 04:53:23', '[\"5\",\"10\",\"26\"]'),
(52, 2, 6, '2024-11-15 04:56:06', '[\"11\",\"13\",\"19\",\"23\"]'),
(53, 2, 2, '2024-11-15 04:56:07', '[\"11\",\"13\",\"19\",\"23\"]'),
(54, 2, 3, '2024-11-15 04:56:07', '[\"11\",\"13\",\"19\",\"23\"]'),
(55, 2, 5, '2024-11-15 04:56:07', '[\"11\",\"13\",\"19\",\"23\"]'),
(56, 2, 1, '2024-11-15 05:10:19', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(57, 2, 2, '2024-11-15 05:10:19', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(58, 2, 3, '2024-11-15 05:10:20', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(59, 2, 5, '2024-11-15 05:10:20', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(60, 2, 6, '2024-11-15 05:10:20', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(61, 2, 4, '2024-11-15 05:10:20', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(62, 2, 1, '2024-11-15 05:13:57', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(63, 2, 2, '2024-11-15 05:13:57', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(64, 2, 3, '2024-11-15 05:13:57', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(65, 2, 5, '2024-11-15 05:13:57', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(66, 2, 6, '2024-11-15 05:13:57', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(67, 2, 4, '2024-11-15 05:13:57', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(68, 2, 5, '2024-11-15 05:14:50', '[\"2\",\"10\",\"14\",\"18\",\"26\"]'),
(69, 2, 2, '2024-11-15 05:14:50', '[\"2\",\"10\",\"14\",\"18\",\"26\"]'),
(70, 2, 1, '2024-11-15 05:14:50', '[\"2\",\"10\",\"14\",\"18\",\"26\"]'),
(71, 2, 3, '2024-11-15 05:14:51', '[\"2\",\"10\",\"14\",\"18\",\"26\"]'),
(72, 2, 6, '2024-11-15 05:14:51', '[\"2\",\"10\",\"14\",\"18\",\"26\"]'),
(73, 2, 4, '2024-11-15 05:14:51', '[\"2\",\"10\",\"14\",\"18\",\"26\"]'),
(74, 2, 1, '2024-11-15 05:15:53', '[\"2\",\"5\",\"18\",\"21\",\"26\"]'),
(75, 2, 5, '2024-11-15 05:15:54', '[\"2\",\"5\",\"18\",\"21\",\"26\"]'),
(76, 2, 3, '2024-11-15 05:15:54', '[\"2\",\"5\",\"18\",\"21\",\"26\"]'),
(77, 2, 2, '2024-11-15 05:15:54', '[\"2\",\"5\",\"18\",\"21\",\"26\"]'),
(78, 2, 6, '2024-11-15 05:15:54', '[\"2\",\"5\",\"18\",\"21\",\"26\"]'),
(79, 2, 4, '2024-11-15 05:15:54', '[\"2\",\"5\",\"18\",\"21\",\"26\"]'),
(80, 2, 1, '2024-11-15 05:16:13', '[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]'),
(81, 2, 2, '2024-11-15 05:16:13', '[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]'),
(82, 2, 3, '2024-11-15 05:16:13', '[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]'),
(83, 2, 5, '2024-11-15 05:16:13', '[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]'),
(84, 2, 4, '2024-11-15 05:16:13', '[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]'),
(85, 2, 6, '2024-11-15 05:16:13', '[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\"]'),
(86, 2, 1, '2024-11-15 05:18:35', '[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(87, 2, 5, '2024-11-15 05:18:35', '[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(88, 2, 2, '2024-11-15 05:18:35', '[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(89, 2, 3, '2024-11-15 05:18:35', '[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(90, 2, 6, '2024-11-15 05:18:35', '[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(91, 2, 4, '2024-11-15 05:18:35', '[\"1\",\"2\",\"4\",\"5\",\"6\",\"7\",\"8\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\"]'),
(92, 2, 1, '2024-11-15 05:21:57', '[\"1\",\"2\",\"5\",\"6\",\"7\",\"10\",\"14\",\"15\",\"18\",\"20\",\"21\",\"24\",\"25\",\"26\"]'),
(93, 2, 2, '2024-11-15 05:21:57', '[\"1\",\"2\",\"5\",\"6\",\"7\",\"10\",\"14\",\"15\",\"18\",\"20\",\"21\",\"24\",\"25\",\"26\"]'),
(94, 2, 3, '2024-11-15 05:21:57', '[\"1\",\"2\",\"5\",\"6\",\"7\",\"10\",\"14\",\"15\",\"18\",\"20\",\"21\",\"24\",\"25\",\"26\"]'),
(95, 2, 4, '2024-11-15 05:21:57', '[\"1\",\"2\",\"5\",\"6\",\"7\",\"10\",\"14\",\"15\",\"18\",\"20\",\"21\",\"24\",\"25\",\"26\"]'),
(96, 2, 5, '2024-11-15 05:21:58', '[\"1\",\"2\",\"5\",\"6\",\"7\",\"10\",\"14\",\"15\",\"18\",\"20\",\"21\",\"24\",\"25\",\"26\"]'),
(97, 2, 6, '2024-11-15 05:21:58', '[\"1\",\"2\",\"5\",\"6\",\"7\",\"10\",\"14\",\"15\",\"18\",\"20\",\"21\",\"24\",\"25\",\"26\"]'),
(98, 4, 1, '2024-11-15 05:43:02', '[\"2\",\"10\",\"14\",\"18\",\"25\",\"26\"]'),
(99, 4, 2, '2024-11-15 05:43:03', '[\"2\",\"10\",\"14\",\"18\",\"25\",\"26\"]'),
(100, 4, 3, '2024-11-15 05:43:03', '[\"2\",\"10\",\"14\",\"18\",\"25\",\"26\"]'),
(101, 4, 4, '2024-11-15 05:43:03', '[\"2\",\"10\",\"14\",\"18\",\"25\",\"26\"]'),
(102, 4, 5, '2024-11-15 05:43:03', '[\"2\",\"10\",\"14\",\"18\",\"25\",\"26\"]'),
(103, 4, 6, '2024-11-15 05:43:03', '[\"2\",\"10\",\"14\",\"18\",\"25\",\"26\"]');

-- --------------------------------------------------------

--
-- Table structure for table `diseases`
--

CREATE TABLE `diseases` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `treatment` text DEFAULT NULL,
  `urgency_level` enum('Low','Medium','High','Critical') NOT NULL DEFAULT 'Low'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diseases`
--

INSERT INTO `diseases` (`id`, `name`, `description`, `treatment`, `urgency_level`) VALUES
(1, 'Diphtheria', 'Diphtheria is a serious bacterial infection that affects the nose and throat.', 'Treatment includes antibiotics and an antitoxin to neutralize the toxin.', 'Low'),
(2, 'Measles', 'Measles is a highly contagious viral infection that causes a rash and fever.', 'Treatment includes supportive care, vitamin A, and management of complications.', 'Low'),
(3, 'Pertussis (Whooping Cough)', 'Pertussis is a bacterial respiratory disease known for uncontrollable coughing.', 'Treatment includes antibiotics like azithromycin and supportive care.', 'Low'),
(4, 'Tetanus', 'Tetanus is a bacterial infection caused by a toxin that affects the nervous system.', 'Treatment includes tetanus immunoglobulin, antibiotics, and supportive care.', 'Low'),
(5, 'Tuberculosis (TB)', 'Tuberculosis is a bacterial infection that primarily affects the lungs.', 'Treatment includes a combination of antibiotics such as isoniazid, rifampin, and pyrazinamide.', 'Low'),
(6, 'Poliomyelitis (Polio)', 'Polio is a viral disease that can cause paralysis and weakness.', 'Treatment includes supportive care, pain management, and respiratory support.', 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `disease_symptoms`
--

CREATE TABLE `disease_symptoms` (
  `id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `symptom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disease_symptoms`
--

INSERT INTO `disease_symptoms` (`id`, `disease_id`, `symptom_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 2, 2),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 2, 10),
(13, 2, 11),
(14, 3, 2),
(15, 3, 11),
(16, 3, 12),
(17, 3, 13),
(18, 4, 14),
(19, 4, 15),
(20, 4, 16),
(21, 4, 17),
(22, 5, 2),
(23, 5, 18),
(24, 5, 19),
(25, 5, 20),
(26, 5, 21),
(27, 5, 22),
(33, 1, 1),
(34, 1, 2),
(35, 1, 3),
(36, 1, 4),
(37, 1, 5),
(38, 1, 6),
(39, 1, 7),
(40, 1, 8),
(41, 1, 9),
(42, 2, 1),
(43, 2, 2),
(44, 2, 3),
(45, 2, 4),
(46, 2, 6),
(47, 2, 7),
(48, 2, 13),
(49, 2, 16),
(50, 2, 17),
(51, 3, 1),
(52, 3, 2),
(53, 3, 5),
(54, 3, 6),
(55, 3, 7),
(56, 3, 8),
(57, 3, 9),
(58, 3, 15),
(59, 3, 16),
(60, 4, 1),
(61, 4, 5),
(62, 4, 6),
(63, 4, 12),
(64, 4, 15),
(65, 4, 16),
(66, 5, 1),
(67, 5, 5),
(68, 5, 7),
(69, 5, 8),
(70, 5, 10),
(71, 5, 13),
(72, 5, 14),
(73, 6, 2),
(74, 6, 6),
(75, 6, 7),
(76, 6, 8),
(77, 6, 9),
(78, 6, 13),
(79, 6, 14),
(80, 6, 15),
(81, 6, 19),
(82, 6, 23);

-- --------------------------------------------------------

--
-- Table structure for table `follow_ups`
--

CREATE TABLE `follow_ups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `follow_up_date` date NOT NULL,
  `reminder_sent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `name`, `description`) VALUES
(1, 'Fever', 'A body temperature higher than normal, often accompanied by chills and sweating.'),
(2, 'Cough', 'A sudden, forceful expulsion of air from the lungs, often caused by irritation in the throat.'),
(3, 'Runny Nose', 'A condition where the nasal passages produce excessive mucus, often resulting in a clear discharge.'),
(4, 'Sore Throat', 'Pain or irritation in the throat, often leading to difficulty swallowing.'),
(5, 'Breathing Difficulties', 'Problems in breathing, including shortness of breath or wheezing.'),
(6, 'Fatigue', 'A general feeling of tiredness or lack of energy.'),
(7, 'Headache', 'Pain in the head or upper neck, often accompanied by nausea or dizziness.'),
(8, 'Nausea', 'A sensation of unease or discomfort in the stomach, often leading to vomiting.'),
(9, 'Vomiting', 'The forceful expulsion of stomach contents through the mouth.'),
(10, 'Diarrhea', 'Frequent, loose, or watery stools often accompanied by abdominal pain.'),
(11, 'Muscle Weakness', 'A reduction in strength or functionality of muscles, often making movement difficult.'),
(12, 'Stiffness in Neck or Back', 'A condition where neck or back muscles feel tight, making movement painful or restricted.'),
(13, 'Rash', 'Red or discolored patches on the skin, often caused by infection or inflammation.'),
(14, 'Difficulty Swallowing', 'Pain or difficulty when trying to swallow food or liquids.'),
(15, 'Loss of Appetite', 'A decreased desire to eat food, which may be caused by illness.'),
(16, 'Swelling of Glands', 'Enlarged lymph nodes, typically in the neck or armpits.'),
(17, 'Severe Coughing', 'Frequent and intense coughing that may be accompanied by a whooping sound.'),
(18, 'Chest Pain', 'Pain or discomfort in the chest, often associated with coughing or breathing difficulties.'),
(19, 'Seizures', 'Abnormal electrical activity in the brain that leads to convulsions or loss of consciousness.'),
(20, 'Jaundice', 'Yellowing of the skin and eyes, often due to liver problems.'),
(21, 'Bleeding', 'Unusual bleeding, such as nosebleeds or bleeding from the gums.'),
(22, 'Paralysis', 'The loss of the ability to move parts of the body, often caused by nerve damage.'),
(23, 'Muscle Pain', 'Pain or soreness in muscles, often caused by inflammation or injury.'),
(24, 'Fainting', 'A temporary loss of consciousness, often caused by a lack of blood flow to the brain.'),
(25, 'Dizziness', 'A feeling of lightheadedness or imbalance, which can result in fainting.'),
(26, 'Cyanosis', 'A bluish tint to the skin or lips, often indicating a lack of oxygen in the blood.');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_steps`
--

CREATE TABLE `treatment_steps` (
  `id` int(11) NOT NULL,
  `disease_id` int(11) NOT NULL,
  `step_order` int(11) NOT NULL,
  `step_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `treatment_steps`
--

INSERT INTO `treatment_steps` (`id`, `disease_id`, `step_order`, `step_description`) VALUES
(1, 1, 1, 'Administer Diphtheria antitoxin to neutralize the toxin.'),
(2, 1, 2, 'Give antibiotics such as penicillin or erythromycin to treat the bacterial infection.'),
(3, 1, 3, 'Provide supportive care for breathing problems (e.g., oxygen or mechanical ventilation if needed).'),
(4, 1, 4, 'Monitor for complications such as myocarditis (heart inflammation) or neuropathy.'),
(5, 1, 5, 'Ensure hydration and nutrition support.'),
(6, 1, 6, 'Isolate the patient to prevent spread of the disease to others.'),
(7, 2, 1, 'Provide supportive care for symptoms, including fever reduction with paracetamol or ibuprofen.'),
(8, 2, 2, 'Ensure adequate fluid intake to prevent dehydration.'),
(9, 2, 3, 'Monitor for complications such as pneumonia or encephalitis (brain inflammation).'),
(10, 2, 4, 'In severe cases, administer Vitamin A supplements to reduce complications and severity of the disease.'),
(11, 2, 5, 'If pneumonia develops, provide antibiotics or antiviral medications as necessary.'),
(12, 3, 1, 'Administer antibiotics (e.g., erythromycin or azithromycin) to reduce the severity and contagiousness of the infection.'),
(13, 3, 2, 'Provide supportive care for coughing fits (e.g., hydration and rest).'),
(14, 3, 3, 'Ensure that the child is up-to-date with the DTaP vaccine to prevent future infections.'),
(15, 3, 4, 'Monitor for complications such as pneumonia or dehydration.'),
(16, 3, 5, 'Provide a humidified environment to help with breathing.'),
(17, 3, 6, 'If the child experiences severe coughing episodes, hospitalization may be needed to support breathing.'),
(18, 4, 1, 'Administer tetanus immunoglobulin (TIG) to neutralize the toxin.'),
(19, 4, 2, 'Provide intravenous antibiotics such as penicillin or metronidazole to control the infection.'),
(20, 4, 3, 'Ensure airway management with mechanical ventilation if respiratory failure occurs.'),
(21, 4, 4, 'Control muscle spasms with sedatives or muscle relaxants (e.g., diazepam or baclofen).'),
(22, 4, 5, 'Provide supportive care for hydration, nutrition, and wound care if applicable.'),
(23, 4, 6, 'Administer tetanus vaccine as part of post-exposure prophylaxis.'),
(24, 5, 1, 'Administer combination of antibiotics for active tuberculosis, typically including Rifampin, Isoniazid, Pyrazinamide, and Ethambutol (the RIPE regimen).'),
(25, 5, 2, 'Continue the antibiotic treatment for 6-9 months, even if symptoms improve, to ensure complete eradication of the bacteria.'),
(26, 5, 3, 'Monitor for side effects of the medications, such as liver toxicity.'),
(27, 5, 4, 'Ensure that the patient adheres to the full course of treatment, as non-completion can lead to drug-resistant TB.'),
(28, 5, 5, 'In cases of multi-drug resistant TB (MDR-TB), administer second-line drugs and provide longer treatment periods.'),
(29, 5, 6, 'Provide isolation in a hospital or specialized TB care facility to prevent transmission to others.'),
(30, 6, 1, 'There is no cure for polio, but supportive treatment can help manage symptoms.'),
(31, 6, 2, 'Administer pain relievers such as paracetamol or ibuprofen to reduce fever and muscle pain.'),
(32, 6, 3, 'Provide mechanical ventilation if there is respiratory paralysis or difficulty breathing.'),
(33, 6, 4, 'Provide physical therapy to help with muscle strength and rehabilitation after paralysis.'),
(34, 6, 5, 'Encourage good nutrition to support recovery and general health.'),
(35, 6, 6, 'Ensure vaccination to prevent polio transmission in the future and protect others from infection.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`) VALUES
(1, 'bishir-tm', '$2y$10$u2BlXLbXlvT1yaL0.WlH2..7uunQOjznENNafJhm8jSFsdVBcOkOW', 'bitmo24@gmail.com', '2024-11-14 13:20:49'),
(2, 'user', '$2y$10$MqC2x4u1G8E2wF7dHg91euDVRCZCYsjMQPC7UPHmAR2WI2RdHtfjy', 'ishaq@gmail.com', '2024-11-14 20:27:20'),
(4, 'user2', '$2y$10$qabjjseRcMyYVi6J7L9XRuqFKMA9yegu4VIsGrGn.WaNqDIZ5qEwi', 'isshaq@gmail.com', '2024-11-15 05:39:54'),
(5, 'user3', '$2y$10$xmJ9Dsnt9kQLkGoC66wQWOhr6yyuq0dfw39QGnzrSqVxavsVqzSPa', 'musa@gmail.com', '2024-11-15 06:14:49'),
(6, 'meee', '$2y$10$vH.Mh/3Xj2god9vx4L5psu4mH1oThBc0MiBX56aYb9PS6tKfS.Kmm', 'bitmom24@gmail.com', '2024-11-15 06:16:51'),
(7, 'meeee', '$2y$10$1ietR9owNQUljpq3S3cxauB.nMzkpJ96Drjl/P1q9jV97WX2x55uG', 'meeee@m.c', '2024-11-15 08:38:13'),
(8, 'jahaju', '$2y$10$N1kAntKVZJXQ5Cv5BhpT8ucmwqRoh1QD/L6ZMt7VUTj9MfFIJBYDy', 'faluqo@example.com', '2024-11-15 08:40:50'),
(9, 'fyteqefogo', '$2y$10$6nWJPNgoL56QtbZD4Q/4sOy4r1JSZK5TQyoCO7oLaXyIAeUP7Zplu', 'zemen@example.com', '2024-11-15 08:41:39'),
(10, 'bishir-tmm', '$2y$10$AQdf0Z1eH0GSU9MEKI.Zle7nn7mmagh5.vMq67i5fchZa03gWMay.', 'bitmo24@gmail.comm', '2024-11-15 08:45:18'),
(11, 'bishir-tmmm', '$2y$10$1xij3GY8xRX4EW7Ed1JbgOGoNk2iMBBd84J9/LsHsk7f9lB3OEhPa', 'b@m.c', '2024-11-15 08:46:02'),
(12, 'bishir-tmaa', '$2y$10$VdHeIkAEArTkOKfY4n5y9.jx6ZjUTZPp8aadbscKhO47s7JzqdXi6', 'a@c.c', '2024-11-15 08:47:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis_history`
--
ALTER TABLE `diagnosis_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `disease_id` (`disease_id`);

--
-- Indexes for table `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `disease_symptoms`
--
ALTER TABLE `disease_symptoms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disease_id` (`disease_id`),
  ADD KEY `symptom_id` (`symptom_id`);

--
-- Indexes for table `follow_ups`
--
ALTER TABLE `follow_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `disease_id` (`disease_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatment_steps`
--
ALTER TABLE `treatment_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `disease_id` (`disease_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis_history`
--
ALTER TABLE `diagnosis_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `disease_symptoms`
--
ALTER TABLE `disease_symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `follow_ups`
--
ALTER TABLE `follow_ups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `symptoms`
--
ALTER TABLE `symptoms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `treatment_steps`
--
ALTER TABLE `treatment_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosis_history`
--
ALTER TABLE `diagnosis_history`
  ADD CONSTRAINT `diagnosis_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `diagnosis_history_ibfk_2` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`);

--
-- Constraints for table `disease_symptoms`
--
ALTER TABLE `disease_symptoms`
  ADD CONSTRAINT `disease_symptoms_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `disease_symptoms_ibfk_2` FOREIGN KEY (`symptom_id`) REFERENCES `symptoms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `follow_ups`
--
ALTER TABLE `follow_ups`
  ADD CONSTRAINT `follow_ups_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follow_ups_ibfk_2` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `treatment_steps`
--
ALTER TABLE `treatment_steps`
  ADD CONSTRAINT `treatment_steps_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `diseases` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
