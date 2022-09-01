-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 07, 2022 at 09:59 AM
-- Server version: 5.6.51
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cp962634_skg`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept_reject_statuses`
--

CREATE TABLE `accept_reject_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `accept_reject_statuse` text COLLATE utf8mb4_unicode_ci,
  `accept_reject_date` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `request_info_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accept_reject_statuses`
--

INSERT INTO `accept_reject_statuses` (`id`, `user_id`, `accept_reject_statuse`, `accept_reject_date`, `created_at`, `updated_at`, `request_info_id`) VALUES
(1, 19, 'accept', '2022-04-29', '2022-04-29 09:47:55', '2022-04-29 09:47:55', 1),
(2, 19, 'accept', '2022-04-30', '2022-04-30 05:22:53', '2022-04-30 05:22:53', 2),
(3, 19, 'accept', '2022-04-30', '2022-04-30 10:40:29', '2022-04-30 10:40:29', 3),
(4, 19, 'accept', '2022-05-06', '2022-05-06 10:54:50', '2022-05-06 10:54:50', 4),
(5, 10, 'reject', '2022-05-06', '2022-05-06 11:36:13', '2022-05-06 11:36:13', 5),
(6, 10, 'accept', '2022-05-10', '2022-05-10 03:30:14', '2022-05-10 03:30:14', 5),
(7, 10, 'accept', '2022-05-10', '2022-05-10 03:32:26', '2022-05-10 03:32:26', 6),
(8, 10, 'accept', '2022-05-19', '2022-05-19 07:06:29', '2022-05-19 07:06:29', 6),
(9, 10, 'accept', '2022-05-19', '2022-05-19 08:33:48', '2022-05-19 08:33:48', 7),
(10, 21, 'accept', '2022-05-30', '2022-05-30 07:53:49', '2022-05-30 07:53:49', 8),
(11, 21, 'accept', '2022-05-30', '2022-05-30 08:00:13', '2022-05-30 08:00:13', 9),
(12, 10, 'accept', '2022-05-31', '2022-05-31 02:38:05', '2022-05-31 02:38:05', 10),
(13, 10, 'accept', '2022-06-03', '2022-06-03 08:44:37', '2022-06-03 08:44:37', 11),
(14, 10, 'accept', '2022-06-06', '2022-06-06 02:33:57', '2022-06-06 02:33:57', 13),
(15, 42, 'accept', '2022-06-06', '2022-06-06 02:34:40', '2022-06-06 02:34:40', 12),
(16, 42, 'accept', '2022-06-06', '2022-06-06 03:06:24', '2022-06-06 03:06:24', 14);

-- --------------------------------------------------------

--
-- Table structure for table `account_classifications`
--

CREATE TABLE `account_classifications` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ac_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(11) NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_classification_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `financial_statement` enum('BalanceSheet','IncomeStatement') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `approved_bies`
--

CREATE TABLE `approved_bies` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approved_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archi_exterior_designs`
--

CREATE TABLE `archi_exterior_designs` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `archi_exterior_design_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archi_exterior_designs`
--

INSERT INTO `archi_exterior_designs` (`id`, `project_id`, `user_id`, `archi_exterior_design_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 26, 3, 'public/archiexteriordesign/UV4WxwQq6XnhvxPYeCUn9KkvdnEBqE1F66iikJhg.pdf', 'THU KHA SHWE PYI  Hospital Archi Dwg (2).pdf', NULL, '2022-03-16', '17:26:55', '2022-03-16 10:26:55', '2022-03-16 10:26:55'),
(2, 16, 3, 'public/archiexteriordesign/uPMfsWeFypc0RPw4En73khaKg1rkd1IAwFTXhzoz.pdf', 'Archi 1032022.pdf', NULL, '2022-03-16', '18:33:15', '2022-03-16 11:33:15', '2022-03-16 11:33:15'),
(3, 6, 3, 'public/archiexteriordesign/IjaQHDAJ9BXCLeKKo7l6d61gay5TwzzrPuDqU92M.pdf', 'MWD Archi 11.12.2021.pdf', NULL, '2022-03-16', '22:37:17', '2022-03-16 15:37:17', '2022-03-16 15:37:17'),
(4, 5, 3, 'public/archiexteriordesign/BdEJcwQsAetR4IxjzSB4CaCdK3NpLzHVIpHX5cHH.pdf', 'MSSDAArchi.pdf', NULL, '2022-03-16', '22:51:08', '2022-03-16 15:51:08', '2022-03-16 15:51:08'),
(5, 30, 3, 'public/archiexteriordesign/MquaZEec3re6x2D3muv1zsvXUrvR6OZ1FCjhiDbd.pdf', 'MNSD FENCE 17.3.2022 (1).pdf', NULL, '2022-03-17', '10:50:08', '2022-03-17 03:50:08', '2022-03-17 03:50:08'),
(6, 2, 1, 'public/archiexteriordesign/mbAKFya8BTgAjVIRLPogW95IVuBdGKlJkSyAwnoK.pdf', 'U Nyi Nyi _ Archi Drawing Final copy.pdf', NULL, '2022-03-17', '13:41:36', '2022-03-17 06:41:36', '2022-03-17 06:41:36'),
(7, 16, 13, 'public/archiexteriordesign/JZAFmCfVBMmZhalGaZ2UyrcDIOw9f8euhNskuhfL.bin', 'KHA-ARCH-3D-PMY-YGN-R3.skp', NULL, '2022-03-17', '14:12:08', '2022-03-17 07:12:08', '2022-03-17 07:12:08'),
(8, 8, 4, 'public/archiexteriordesign/xwxrU9YcvceEwcqHD1lQUZxGJqQKxJOoDSRczqUc.bin', 'KSHH-ARCH-3D.skp', NULL, '2022-03-18', '09:38:45', '2022-03-18 02:38:45', '2022-03-18 02:38:45'),
(9, 12, 4, 'public/archiexteriordesign/iydbkxrUolhGRozEVJPaNvRu8I4aHZBorhyIzUMV.bin', 'MZW-ARCH-3D-R0.skp', NULL, '2022-03-18', '09:46:41', '2022-03-18 02:46:41', '2022-03-18 02:46:41'),
(10, 7, 13, 'public/archiexteriordesign/xGCAVnJeLgGVZfhAEO8oyhvTuXLYC7WxLZzXFPUH.bin', 'KHM-ARCH-3D-PMY-YGN-R3.skp', NULL, '2022-03-18', '09:47:15', '2022-03-18 02:47:15', '2022-03-18 02:47:15'),
(11, 12, 4, 'public/archiexteriordesign/dcpW0YRGxsRSfYfnE16CObd9wCscYoE7VQMTN7Ca.bin', 'MZW-ARCH-3D-R0.skp', NULL, '2022-03-18', '09:56:03', '2022-03-18 02:56:03', '2022-03-18 02:56:03'),
(12, 13, 4, 'public/archiexteriordesign/remTaTudsEOgv4Ea9T5Z6rzEeenPeCphTzcD3yGY.bin', 'MNWY-PMY-ARCH-3D-R0.skp', NULL, '2022-03-18', '10:08:18', '2022-03-18 03:08:18', '2022-03-18 03:08:18'),
(13, 8, 4, 'public/archiexteriordesign/0tWq63ZelXksbUCrsjaiAWtCXZsDBhSLjvkWw3Gw.pdf', 'KSH#ArchDWG#21032021.pdf', NULL, '2022-03-22', '13:16:45', '2022-03-22 06:16:45', '2022-03-22 06:16:45'),
(14, 12, 4, 'public/archiexteriordesign/yRyVAeSLvZXEeMKJD7wvRkHIbuHBKLsfuAlW2XAp.rar', 'MZW-ARCH-R2-24032022.rar', NULL, '2022-03-24', '14:29:09', '2022-03-24 07:29:09', '2022-03-24 07:29:09'),
(15, 13, 4, 'public/archiexteriordesign/10OXajHfWmRHJR7XVVhHPg6hz9YyvRRERLjbJR4p.zip', 'MNWY-ARCH-R3-24032022.zip', NULL, '2022-03-24', '14:31:13', '2022-03-24 07:31:13', '2022-03-24 07:31:13'),
(16, 14, 13, 'public/archiexteriordesign/hzEXK0fj9O8TaH3nm6rTUCpg3kgG245znyK3oXJB.rar', 'kaks final.rar', NULL, '2022-03-25', '15:52:03', '2022-03-25 08:52:03', '2022-03-25 08:52:03'),
(17, 8, 4, 'public/archiexteriordesign/WXvjudOnIKzD2M4f7JtUlzAZzOfZV9TPgrtWqQZr.rar', 'KSH-PMY-ARCH-3D.rar', NULL, '2022-03-26', '09:40:13', '2022-03-26 02:40:13', '2022-03-26 02:40:13'),
(18, 7, 13, 'public/archiexteriordesign/wiAmp6Dd1VOqppEfN0gYDlKczwqdUuMRr4uDMCiV.rar', 'Post Production.rar', NULL, '2022-03-26', '09:46:23', '2022-03-26 02:46:23', '2022-03-26 02:46:23'),
(19, 9, 13, 'public/archiexteriordesign/W8y9PycDF1z7LhFGSLPcogpNFtexCR3NdkQNNZuB.rar', 'rev2.rar', NULL, '2022-03-26', '10:15:27', '2022-03-26 03:15:27', '2022-03-26 03:15:27'),
(20, 11, 13, 'public/archiexteriordesign/f7RWGctT1Buklg0ptlyiGOpkYrujonoWPCGdwOsp.rar', 'ko tin latt elevation.rar', NULL, '2022-03-26', '10:23:44', '2022-03-26 03:23:44', '2022-03-26 03:23:44'),
(21, 16, 13, 'public/archiexteriordesign/E8R8dAtrH124mcwKV2Dqzn8LvUBUXhDa5NsvSj8H.rar', '1032022.rar', NULL, '2022-03-26', '10:28:46', '2022-03-26 03:28:46', '2022-03-26 03:28:46'),
(22, 21, 13, 'public/archiexteriordesign/wT20ex8s3fTboKtmwptprBI5Zoka54UVqaWKkkBF.rar', 'ma ei cho.rar', NULL, '2022-03-26', '10:31:25', '2022-03-26 03:31:25', '2022-03-26 03:31:25'),
(23, 8, 4, 'public/archiexteriordesign/Dahl32AY2gYTbQhBhu0MJqGmSfaV8CZw29GbVTNl.zip', 'KSH-PMY-ARCH-DWG-28032022.zip', NULL, '2022-03-28', '13:15:50', '2022-03-28 06:15:50', '2022-03-28 06:15:50'),
(24, 17, 12, 'public/archiexteriordesign/3EnOaDxWGnpus4Gy6SettZUxIjqrbNu1dNsflxMG.pdf', 'DKAAK#3DCONCEPT#25.03.2022.pdf', NULL, '2022-03-28', '16:03:59', '2022-03-28 09:03:59', '2022-03-28 09:03:59'),
(25, 8, 4, 'public/archiexteriordesign/PPdWhq0girU7Zs05A1uFkvF2fC6KHnkcwEDQuDv9.zip', 'KSH-PMY-ARCH-DWG-28032022.zip', NULL, '2022-03-29', '10:14:05', '2022-03-29 03:14:05', '2022-03-29 03:14:05'),
(26, 17, 12, 'public/archiexteriordesign/k6JRNss0E6J1WFSG7vx3aO4deyjdhOd0QdUgQgsE.rar', 'DKAAK TO STRUCTURE.rar', NULL, '2022-03-29', '14:25:49', '2022-03-29 07:25:49', '2022-03-29 07:25:49'),
(27, 15, 4, 'public/archiexteriordesign/00nwv6m0FH1GvSam5mMx6xd7syiYTiL7l45dWmUl.zip', 'KZHA-ARCH-DWG(FP&SEC)R8-30032022.zip', NULL, '2022-03-30', '15:44:54', '2022-03-30 08:44:54', '2022-03-30 08:44:54'),
(28, 10, 4, 'public/archiexteriordesign/oRpuuQrx0316Ex3xWXW5qMW5uB7j55lawEDOWA9p.zip', 'UWN-PMY-ARCH-DWG04042022.zip', NULL, '2022-04-04', '13:26:28', '2022-04-04 06:26:28', '2022-04-04 06:26:28'),
(29, 17, 12, 'public/archiexteriordesign/6AovyfFmwy7HFsQn3ZqyLlmyyGp1eqJQgJtYWEdy.pdf', 'DKAAK-PMY-ARCH-04042022.pdf', NULL, '2022-04-04', '15:22:21', '2022-04-04 08:22:21', '2022-04-04 08:22:21'),
(30, 5, 4, 'public/archiexteriordesign/FO6hIlywAJPuIF4Nneb7EC2EnbebvPClLCzW4x5G.zip', 'DSSDA-PMY-ARCH-DWG-04042022.zip', NULL, '2022-04-04', '16:00:22', '2022-04-04 09:00:22', '2022-04-04 09:00:22'),
(31, 6, 4, 'public/archiexteriordesign/a1SzfFERO1X6GOfByxAyFgqNJwP5H1hXILJnWefM.rar', 'MWD-PMY-ARCH-DWG-04042022.rar', NULL, '2022-04-04', '16:27:31', '2022-04-04 09:27:31', '2022-04-04 09:27:31'),
(32, 8, 4, 'public/archiexteriordesign/iYnF39VfenEMJfhLgulZaaDQvi5o6b03zDvEMhXy.rar', 'KSH-ARCH-DWG-R3-05042022.rar', NULL, '2022-04-05', '09:36:53', '2022-04-05 02:36:53', '2022-04-05 02:36:53'),
(33, 12, 4, 'public/archiexteriordesign/ILjS1DhM7w4gBmGbxijMI3YzWJcjy8J3lbNB6VAA.zip', 'MZW-PMY-ARCH-DWG-R2-05042022.zip', NULL, '2022-04-05', '15:40:49', '2022-04-05 08:40:49', '2022-04-05 08:40:49'),
(34, 13, 4, 'public/archiexteriordesign/T9uik4Jw1a3E3jEtpp26s1poEqfXqSbGJnwrAiuh.zip', 'MNWY-ARCH-R3-05042022.zip', NULL, '2022-04-05', '16:28:35', '2022-04-05 09:28:35', '2022-04-05 09:28:35'),
(35, 22, 12, 'public/archiexteriordesign/IPUZHkGQo0AwXJ5IOHNyce7B2j3cPl0TpvLD80rt.rar', 'MSLKM-PMY-ARCH-R0-08042022.rar', NULL, '2022-04-08', '17:40:47', '2022-04-08 10:40:47', '2022-04-08 10:40:47'),
(36, 22, 12, 'public/archiexteriordesign/Aq84N7hgLJdk9EB7SoQWROhnWkV1FedOjRNiltAn.rar', 'MSLKM-PMY-ARCH-R0-18042022.rar', NULL, '2022-04-19', '12:13:19', '2022-04-19 05:13:19', '2022-04-19 05:13:19'),
(37, 15, 4, 'public/archiexteriordesign/rCx49bEjd2UovCJtI2ge4w8VRhqE5QFUw5pnetms.rar', 'KZHA-PMY-ARCH-DWG-R final-19042022.rar', NULL, '2022-04-19', '17:27:12', '2022-04-19 10:27:12', '2022-04-19 10:27:12'),
(38, 17, 12, 'public/archiexteriordesign/HHdLxfnoAvaJYC60nozD50HnYDiXxzvqf7U0qiUd.rar', 'DKAAK-PMY-ARCH-R0-20042022.rar', NULL, '2022-04-20', '09:55:57', '2022-04-20 02:55:57', '2022-04-20 02:55:57'),
(39, 17, 12, 'public/archiexteriordesign/5ZcXRBDqaSZ3I3TR0trxjStti16oSTBuC3KD0iIq.rar', 'DKAAK-PMY-ARCH-R0-20042022.rar', NULL, '2022-04-20', '09:58:12', '2022-04-20 02:58:12', '2022-04-20 02:58:12'),
(40, 15, 4, 'public/archiexteriordesign/vk35YN3hZLTJmBY9JKGhkKJvQGbdy9wCAF9gMQkV.rar', 'KZHA-PMY-ARCH-DWG-R9-20042022.rar', NULL, '2022-04-20', '10:04:44', '2022-04-20 03:04:44', '2022-04-20 03:04:44'),
(41, 7, 13, 'public/archiexteriordesign/NCjuR2eCIvjzLElaePQXRLoYsRJJL4EzM7b98gwY.rar', 'KHM-PMY-ARCH-DWG-21042022.rar', NULL, '2022-04-21', '14:21:54', '2022-04-21 07:21:54', '2022-04-21 07:21:54'),
(42, 22, 12, 'public/archiexteriordesign/AtaoKAY6r838Vq5WdzouE46kCZLeuS1I3JeVpsSk.rar', 'MSLKM-PMY-ARCH-R0-23042022.rar', NULL, '2022-04-23', '11:09:10', '2022-04-23 04:09:10', '2022-04-23 04:09:10'),
(43, 22, 12, 'public/archiexteriordesign/yBbzYrKoCoh41TA2s5cKq4U4Sj08AzK39dwsRher.rar', 'MSLKM-PMY-ARCH-PROPOSAL-25042022.rar', NULL, '2022-04-25', '11:52:18', '2022-04-25 04:52:18', '2022-04-25 04:52:18'),
(44, 6, 4, 'public/archiexteriordesign/rOJ0pojTfHwaauyF360EEjwrcBdWtL50oVlXFeaA.rar', 'MWD-PMY-ARCH-DWG-R4-26042022.rar', NULL, '2022-04-26', '09:16:41', '2022-04-26 02:16:41', '2022-04-26 02:16:41'),
(45, 22, 12, 'public/archiexteriordesign/yQWNoLvniKMORcO6aB11pqXpjvgWawzjAwAFa5mx.rar', 'MSLKM-PMY-ARCH-CONTRACT-26042022.rar', NULL, '2022-04-26', '10:29:13', '2022-04-26 03:29:13', '2022-04-26 03:29:13'),
(46, 22, 12, 'public/archiexteriordesign/4j9OwvZb34CzM3fc1PLFUIISZcpB3NsdasPfCHDq.rar', 'MSLKM-PMY-ARCH-FINAL-26042022.rar', NULL, '2022-04-26', '10:52:42', '2022-04-26 03:52:42', '2022-04-26 03:52:42'),
(47, 19, 4, 'public/archiexteriordesign/KSTsbO9EqxhISfOOMnHv10xo52jA72Jvo8xiG7AD.rar', 'MYM-PMY-ARCH-DWG-26042022.rar', NULL, '2022-04-26', '17:51:00', '2022-04-26 10:51:00', '2022-04-26 10:51:00'),
(48, 22, 12, 'public/archiexteriordesign/XhhIMPkaCSPVRRI6wPPqaLCwBrgOtJoD8LFQKMyR.rar', 'MSLKM-PMY-ARCH-R0-27042022.rar', NULL, '2022-04-28', '09:22:53', '2022-04-28 02:22:53', '2022-04-28 02:22:53'),
(49, 7, 13, 'public/archiexteriordesign/5kZN7mOHygzjWWe9iPYQ8PRVXt87FYOcCRmKTRr4.rar', 'KHM-PMY-ARCH-DWG-28042022.rar', 'F1 size changed', '2022-04-28', '15:19:48', '2022-04-28 08:19:48', '2022-04-28 08:19:48'),
(50, 19, 4, 'public/archiexteriordesign/Xfrc5YhKYCFfpaRNKB6kKiGVlqt0NYESOpJUws9k.rar', 'MYM-PMY-ARCH-DWG-29042022.rar', NULL, '2022-04-29', '12:15:10', '2022-04-29 05:15:10', '2022-04-29 05:15:10'),
(51, 10, 4, 'public/archiexteriordesign/Hta2gAcsl4jmiXljoMffSHa5e1eeOPpy9u5YKnOo.rar', 'UWN-PMY-ARCH-DWG29042022.rar', NULL, '2022-04-29', '17:04:51', '2022-04-29 10:04:51', '2022-04-29 10:04:51'),
(52, 12, 4, 'public/archiexteriordesign/ydmbzCI3CVIrkFDY1HrbSpveA3sjXxnkOMjKxg0p.rar', 'MZW-ARCH-R3-29042022.rar', NULL, '2022-04-29', '17:15:01', '2022-04-29 10:15:01', '2022-04-29 10:15:01'),
(53, 6, 4, 'public/archiexteriordesign/AC7PzPRezqxbbhNMHU3XrSqRm5quHUzFLtN7hk56.rar', 'MWD-PMY-ARCH-DWG-R5-29042022.rar', NULL, '2022-04-29', '17:19:19', '2022-04-29 10:19:19', '2022-04-29 10:19:19'),
(54, 9, 13, 'public/archiexteriordesign/ZXl6qEdriZWuWU1dgXZtcR159plSs8qmgMsh8Gu7.rar', 'KKST-ARCH-DRAWING-R4-02052022.rar', NULL, '2022-05-02', '09:25:20', '2022-05-02 02:25:20', '2022-05-02 02:25:20'),
(55, 25, 13, 'public/archiexteriordesign/Z4n3KdU3C275xQwcqKaR9y4vVohPdfRJx7KLlRIz.rar', 'UMKK-ARCH-DRAWING-R3-02052022.rar', NULL, '2022-05-02', '13:42:38', '2022-05-02 06:42:38', '2022-05-02 06:42:38'),
(56, 9, 13, 'public/archiexteriordesign/2Docv1LQxCLfTT8nakHBfstMBKAxhIRq8kfvdPUQ.rar', 'KKST-ARCH-DRAWING-R5-02052022.rar', NULL, '2022-05-02', '14:15:52', '2022-05-02 07:15:52', '2022-05-02 07:15:52'),
(57, 25, 4, 'public/archiexteriordesign/ebwWZyK9CsjgWkt6W4FjHKYhxFaiaLUMvdknD1F6.rar', 'UMKK-ARCH-DWG-R3-03052022.rar', NULL, '2022-05-03', '11:10:34', '2022-05-03 04:10:34', '2022-05-03 04:10:34'),
(58, 15, 4, 'public/archiexteriordesign/xCLMZPqf2XbXoUc4e1hZk51jPsTwFuB1qwjmzwSU.rar', 'KZHA-PMY-ARCH-DWG-R10Final-28042022.rar', NULL, '2022-05-04', '10:34:16', '2022-05-04 03:34:16', '2022-05-04 03:34:16'),
(59, 16, 13, 'public/archiexteriordesign/WcmFHcqJiOrnHPADzq9RAUwrzgHJQConrkmgrCxQ.rar', 'KHA-ARCH-DRAWING-R5-040520222.rar', NULL, '2022-05-04', '14:39:16', '2022-05-04 07:39:16', '2022-05-04 07:39:16'),
(60, 18, 4, 'public/archiexteriordesign/6RXaMt7ZkWAEthttaN3NHK9vOstCsyApLoxBBlhl.rar', 'DWWL-PMY-ARCH-DWG-04052022.rar', NULL, '2022-05-04', '18:17:02', '2022-05-04 11:17:02', '2022-05-04 11:17:02'),
(61, 16, 13, 'public/archiexteriordesign/3UMgO6WPVs8jJ3XnaFXE30Sq992l7Csm2PujwzAp.rar', 'KHA-ARCH-DRAWING-R5-050520222.rar', 'with proposed septic tank and ground tank locations', '2022-05-05', '09:33:59', '2022-05-05 02:33:59', '2022-05-05 02:33:59'),
(62, 16, 13, 'public/archiexteriordesign/hH6oR7c7JXdhEfqORyxgPMPJ4IhfT3EKdMPmnMWb.rar', 'KHA-ARCH-DRAWING-R5-050520222.rar', 'with proposed septic tank and ground tank locations', '2022-05-05', '09:34:44', '2022-05-05 02:34:44', '2022-05-05 02:34:44'),
(63, 23, 4, 'public/archiexteriordesign/kM2lYLasHYLbEJzstHV7fsmqUEXXk6WCKwUE1ZJ9.rar', 'KPCH-PMY-ARCH-DWG-05052022.rar', NULL, '2022-05-05', '10:53:33', '2022-05-05 03:53:33', '2022-05-05 03:53:33'),
(64, 23, 4, 'public/archiexteriordesign/OgX6RZmKdsIk3YEZTwNc6kM05oEbdoVLNpARGLY9.rar', 'KPCH-PMY-ARCH-DWG-05052022.rar', NULL, '2022-05-05', '11:05:44', '2022-05-05 04:05:44', '2022-05-05 04:05:44'),
(65, 13, 4, 'public/archiexteriordesign/O2PNOol5y8DbOPIoi4M7awRBSxSdaEHHJyOALw6D.rar', 'MHWY-PMY-ARCH-R4-05052022.rar', NULL, '2022-05-05', '16:45:07', '2022-05-05 09:45:07', '2022-05-05 09:45:07'),
(66, 13, 4, 'public/archiexteriordesign/KPCrFc7juNPnq9qdxNBo3nTbgA44tfQ0QmuJW6uG.rar', 'MHWY-PMY-ARCH-R4-05052022.rar', NULL, '2022-05-06', '10:22:12', '2022-05-06 03:22:12', '2022-05-06 03:22:12'),
(67, 6, 4, 'public/archiexteriordesign/1vvnEKCvpgYRX2KYiM6Hlf6iBOgdCNlTsU0RT33U.rar', 'MWD-PMY-ARCH-DWG-R6-09052022.rar', NULL, '2022-05-09', '15:10:14', '2022-05-09 08:10:14', '2022-05-09 08:10:14'),
(68, 24, 12, 'public/archiexteriordesign/msl7LvcN2jUM9JZP7YmoCmh98LRmzE9MoX0VI8VT.rar', 'KBN-PMY-ARCH-09052022.rar', NULL, '2022-05-09', '15:32:29', '2022-05-09 08:32:29', '2022-05-09 08:32:29'),
(69, 25, 13, 'public/archiexteriordesign/1ohInwBUV9HRc2ZrJ1amzErOVoWL2BJ4MPfMkTKj.rar', 'UMKK-ARCH-DRAWING-R4-030520222.rar', NULL, '2022-05-09', '15:37:03', '2022-05-09 08:37:03', '2022-05-09 08:37:03'),
(70, 9, 13, 'public/archiexteriordesign/fRNHpftHtRiv49ZpgPhz5wx7n900JRkxEwtfpxJw.rar', 'KKST-ARCH-DRAWING-R5-10052022.rar', NULL, '2022-05-10', '11:31:53', '2022-05-10 04:31:53', '2022-05-10 04:31:53'),
(71, 16, 13, 'public/archiexteriordesign/rsMgw46IUsbtBHmWPPNwGZsiVkGfb0kBvHO9KnPL.rar', 'KHA-ARCH-DRAWING-R5-100520222.rar', NULL, '2022-05-10', '12:28:56', '2022-05-10 05:28:56', '2022-05-10 05:28:56'),
(72, 19, 4, 'public/archiexteriordesign/9QUCCnnXsr57UVns98hEVzWE3M7QWNs1exBJY04o.rar', 'MYM-PMY-ARCH-DWG-29042022.rar', NULL, '2022-05-13', '09:20:30', '2022-05-13 02:20:30', '2022-05-13 02:20:30'),
(73, 18, 4, 'public/archiexteriordesign/SWeF2sUSWudjGHHU7cs8FRoadiF7TiBLs0R3YWLd.rar', 'DWWL-PMY-ARCH-DWG-13052022.rar', NULL, '2022-05-13', '11:36:29', '2022-05-13 04:36:29', '2022-05-13 04:36:29'),
(74, 14, 13, 'public/archiexteriordesign/isP5tpfyyMYXBPosIzgYF3KDgLGy1UAB9ywZ1WdJ.rar', 'KAKS-ARCH-DRAWING-R3-16052022.rar', 'Client confirmed doors and windows details', '2022-05-16', '11:46:48', '2022-05-16 04:46:48', '2022-05-16 04:46:48'),
(75, 9, 13, 'public/archiexteriordesign/KtotYhL9enNeMajRTN1RiaOwfxbO3myMz4Mi8Fze.rar', 'KKST-ARCH-DRAWING-R5-17052022.rar', NULL, '2022-05-17', '09:54:29', '2022-05-17 02:54:29', '2022-05-17 02:54:29'),
(76, 9, 13, 'public/archiexteriordesign/eCqHbRBL8489fLCLTNw7KHMZROEwD5HJe9VpLVPH.rar', 'KKST-ARCH-DRAWING-R5-17052022.rar', NULL, '2022-05-17', '13:53:07', '2022-05-17 06:53:07', '2022-05-17 06:53:07'),
(77, 15, 4, 'public/archiexteriordesign/9VLQYFqfhMzhgldAyN0QAse2PewuLRhDSNfIVQ49.rar', 'kzha-pmy-arch-dwg-r11final-23052022.rar', NULL, '2022-05-23', '11:33:07', '2022-05-23 04:33:07', '2022-05-23 04:33:07'),
(78, 8, 4, 'public/archiexteriordesign/R6cKgdhOPnjAJjIoGbIjTCjO8CZ09SVBlXOZC3ae.rar', 'KSH-ARCH-DWG-R4-24052022.rar', NULL, '2022-05-24', '10:48:51', '2022-05-24 03:48:51', '2022-05-24 03:48:51'),
(79, 14, 13, 'public/archiexteriordesign/lvAjwebSEdy6hrD4l9ylzNZrF42PhHCazNy9lAUK.rar', 'KAKS-ARCH-DRAWING-R3-25052022.rar', 'doors and windows revised', '2022-05-25', '11:13:23', '2022-05-25 04:13:23', '2022-05-25 04:13:23'),
(80, 18, 4, 'public/archiexteriordesign/axSF2qjOoCarOBv4wE3gsnlhPTFizl8gRFG6ppca.rar', 'DWWL-PMY-ARCH-DWG-25052022.rar', NULL, '2022-05-25', '12:47:01', '2022-05-25 05:47:01', '2022-05-25 05:47:01'),
(81, 18, 4, 'public/archiexteriordesign/DWLleFrIGhpYJsxA8dBFypu6AcrNtsVQph6HP2iU.rar', 'DWWL-PMY-ARCH-DWG-25052022.rar', NULL, '2022-05-25', '15:23:33', '2022-05-25 08:23:33', '2022-05-25 08:23:33'),
(82, 18, 4, 'public/archiexteriordesign/NxgJxWBk2bOad0rDEpfQm90sVnaCYVt6MPRoraq6.rar', 'DWWL-PMY-ARCH-DWG-25052022.rar', NULL, '2022-05-25', '15:47:12', '2022-05-25 08:47:12', '2022-05-25 08:47:12'),
(83, 25, 13, 'public/archiexteriordesign/tLPn8N7gKxx6OA4RBegft9kQD3oevdS3YmdHd2Pg.rar', 'UMKK-ARCH-DRAWING-R4-270520222.rar', NULL, '2022-05-27', '12:42:21', '2022-05-27 05:42:21', '2022-05-27 05:42:21'),
(84, 11, 13, 'public/archiexteriordesign/plM07THVscCXmSBbhLz8HaO2iYcQQSCJgivOtzbf.rar', 'KTL-ARCH-DRAWING-R2-28052022.rar', NULL, '2022-05-28', '14:54:08', '2022-05-28 07:54:08', '2022-05-28 07:54:08'),
(85, 11, 13, 'public/archiexteriordesign/Vb9MyRTwfOcm47sx30uaey48HfoxqlohtxfJ2PWJ.rar', 'KTL-ARCH-DRAWING-R2-28052022.rar', 'DOORS AND WINDOWS MATERIALS UPDATED', '2022-05-28', '15:16:08', '2022-05-28 08:16:08', '2022-05-28 08:16:08'),
(86, 25, 13, 'public/archiexteriordesign/wbGEPvUfgJk4GIsOGqvpsphzL3lYdTc4PRLkBTwE.rar', 'UMKK-ARCH-DRAWING-R4-30052022.rar', NULL, '2022-05-30', '15:31:14', '2022-05-30 08:31:14', '2022-05-30 08:31:14'),
(87, 14, 13, 'public/archiexteriordesign/k4fCo4dvwOH5zovEbl1ayENoEe3fo2ilYgnVh8Be.rar', 'KAKS-ARCH-DRAWING-R3-30052022.rar', NULL, '2022-05-30', '15:52:23', '2022-05-30 08:52:23', '2022-05-30 08:52:23'),
(88, 18, 4, 'public/archiexteriordesign/NO9J4HGBWV5dl10tkEZToTaNODo2Rd2dDiHEvE1q.zip', 'DWWL-PMY-ARCH-DWG-R5-01062022.zip', NULL, '2022-06-01', '15:17:50', '2022-06-01 08:17:50', '2022-06-01 08:17:50'),
(89, 38, 13, 'public/archiexteriordesign/zJrpqVB6vK82vrMuWRqTH2Ou3P5FpMwTg9r28J2w.rar', 'UAZL-ARCH-DRAWING-R7-04062022.rar', NULL, '2022-06-04', '16:05:52', '2022-06-04 09:05:52', '2022-06-04 09:05:52'),
(90, 38, 13, 'public/archiexteriordesign/J5xX39dPv9axjpOyLXg1HiI2DGwROl3FkPMporwm.rar', 'UAZL-ARCH-DRAWING-R8-04062022.rar', 'Ko aung Zaw latt final drawing', '2022-06-06', '09:29:21', '2022-06-06 02:29:21', '2022-06-06 02:29:21'),
(91, 38, 13, 'public/archiexteriordesign/nrAlZrXubmcBLeFZZQUR5fJWMQhA0BDooKO26jIe.rar', 'UAZL-ARCH-DRAWING-R8-04062022.rar', 'Ko aung Zaw latt final drawing', '2022-06-06', '09:30:54', '2022-06-06 02:30:54', '2022-06-06 02:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `chartof_accounts`
--

CREATE TABLE `chartof_accounts` (
  `id` int(11) NOT NULL,
  `coa_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_classification_id` int(11) NOT NULL,
  `account_opening_balance` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contract_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `project_id`, `user_id`, `contract_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 14, 3, 'public/contract/fZKCPo4JeeSUMrQDVKgO0j0QcKt5o6D3sLmEmYSY.pdf', 'KAKS Contract- 6.3.22.pdf', NULL, '2022-03-16', '20:06:52', '2022-03-16 13:06:52', '2022-03-16 13:06:52'),
(2, 13, 3, 'public/contract/03IzexJUyUbgWd8NPaAQUAoW370fFGcSq8x74JJt.pdf', 'Hnin Wut Yee Phyo Contract_ 5.3.22.pdf', NULL, '2022-03-16', '20:16:59', '2022-03-16 13:16:59', '2022-03-16 13:16:59'),
(3, 12, 3, 'public/contract/CvPHnSuR4vTaHfBs76tZTOWGRxdMAdkcYlcWBaPF.pdf', 'Main Contract Format New MZW (28.2.22).pdf', NULL, '2022-03-16', '20:34:27', '2022-03-16 13:34:27', '2022-03-16 13:34:27'),
(4, 11, 3, 'public/contract/kOOXeOukPWwhwpNDSHISxVOFruMsugPUuVBYFM8C.pdf', 'Installment Plan Contract ( revised ).pdf', NULL, '2022-03-16', '20:57:14', '2022-03-16 13:57:14', '2022-03-16 13:57:14'),
(5, 11, 3, 'public/contract/Z8ioASs9uIBP3u6PFANUJXHiFpJMLqlCFBOS2xoQ.pdf', 'Ko Tin Latt Contract- 24.2.22.pdf', NULL, '2022-03-16', '20:57:21', '2022-03-16 13:57:21', '2022-03-16 13:57:21'),
(6, 10, 3, 'public/contract/aIzVFgBvd5l8gc2Mm0Gh65QyR4j73vSkDZYkjk1O.pdf', '#UWN CONTRACT (5.10.2021).pdf', NULL, '2022-03-16', '21:02:33', '2022-03-16 14:02:33', '2022-03-16 14:02:33'),
(7, 9, 3, 'public/contract/pk8Cqd9emSTeGX24BpOPr3GdqPPb3DXR6Ox4gwPL.pdf', 'Ko Khant Si Thu Contract Final.pdf', NULL, '2022-03-16', '21:19:08', '2022-03-16 14:19:08', '2022-03-16 14:19:08'),
(8, 8, 3, 'public/contract/2puJTgXc4dueRIcbDdeZM7GfxsXdxBEEs59BC8iX.pdf', 'Main Contract Format with Installment Plan New.pdf', NULL, '2022-03-16', '21:36:39', '2022-03-16 14:36:39', '2022-03-16 14:36:39'),
(9, 8, 3, 'public/contract/YzlB3Ux9WONKBgEVwi25CIAOsGR7NZNsqeubiG4A.pdf', 'Installment Plan Contract (Main Contract Sequel) new.pdf', NULL, '2022-03-16', '21:37:02', '2022-03-16 14:37:02', '2022-03-16 14:37:02'),
(10, 7, 3, 'public/contract/q7c7vZmuauoPnYsM6tom9Jqn10RZ2pTxrjQ6FfaX.pdf', 'Ko Hlwan Moe Thu Contract (8.1.22).pdf', NULL, '2022-03-16', '21:43:00', '2022-03-16 14:43:00', '2022-03-16 14:43:00'),
(11, 6, 3, 'public/contract/wtRyxUFARpbp9gaZ12xdNCs8u4NkTXJdOBITrw8w.pdf', 'Main Contract for Ma Waddy (Revised)_1640885758.pdf', NULL, '2022-03-16', '22:38:40', '2022-03-16 15:38:40', '2022-03-16 15:38:40'),
(12, 6, 3, 'public/contract/IS0V9bXIZvrSOYfX9QVI6QRr0FrV0wH5El3OF9X4.pdf', 'Installment Plan Contract (Main Contract Sequel).pdf', NULL, '2022-03-16', '22:39:00', '2022-03-16 15:39:00', '2022-03-16 15:39:00'),
(13, 5, 3, 'public/contract/itSXMuJ8QP6ukuBKD3eitElmmhuCa2SxqgrVj1gy.pdf', 'MSSDA Contract.pdf', NULL, '2022-03-16', '22:51:32', '2022-03-16 15:51:32', '2022-03-16 15:51:32'),
(14, 2, 3, 'public/contract/nzA4T7V4GZ1t4pqyxZrbAYFRzAO5NRgwUPf5yACn.pdf', 'Contract _ U Nyi _ New Building 1 (No. 81) Final Revised 2.pdf', NULL, '2022-03-16', '22:53:37', '2022-03-16 15:53:37', '2022-03-16 15:53:37'),
(15, 30, 3, 'public/contract/0QdlOhU7VKyn3ra5wGOejKB7HDft19RsRmsJxXyU.pdf', 'Interior Decoration Contract Format_1646736852.pdf', NULL, '2022-03-17', '00:02:32', '2022-03-16 17:02:32', '2022-03-16 17:02:32'),
(16, 30, 3, 'public/contract/ISeiJTroZxAhYp60J3oNIfN7MAWocE2sSwN3DOOd.pdf', 'Ma Nan Sandi Contract Update.pdf', NULL, '2022-03-17', '00:03:09', '2022-03-16 17:03:09', '2022-03-16 17:03:09'),
(17, 31, 3, 'public/contract/JRSZqBQIOQp06ZuPmrxfqMHgxwwA55KP19ubyWpm.pdf', '#KPHA Contract Final (1.10.21).pdf', NULL, '2022-03-17', '00:21:10', '2022-03-16 17:21:10', '2022-03-16 17:21:10'),
(18, 32, 3, 'public/contract/Nbs6BL6YZjD4Xd6zaEQlN6Xx36fnRkbTpuYMBEii.pdf', 'Dr.Kyaw Zayar Tun Contract- Painting, Ceiling , M&E Work-R1.pdf', NULL, '2022-03-17', '00:31:23', '2022-03-16 17:31:23', '2022-03-16 17:31:23'),
(19, 33, 3, 'public/contract/VZNqV9uh0ibE0K7fQoPOxfyOQUnXWg9wONRfy0mL.pdf', '#UMAW Contract (3.9.2021).pdf', NULL, '2022-03-17', '00:41:37', '2022-03-16 17:41:37', '2022-03-16 17:41:37'),
(20, 15, 3, 'public/contract/yZI3DF3LklkQMmK9XA6uP1KBlX57iBRa6izLdHb1.pdf', 'Ko Zaw Htut Aung 29.3.22.pdf', NULL, '2022-03-31', '11:40:20', '2022-03-31 04:40:20', '2022-03-31 04:40:20'),
(21, 34, 3, 'public/contract/rDrTxgLDL8N8H8qciDVwsVTFBddrb8tvpalcpsYa.pdf', '#KMM Contract ( 18.9.2021).pdf', NULL, '2022-04-03', '16:32:59', '2022-04-03 09:32:59', '2022-04-03 09:32:59'),
(22, 17, 3, 'public/contract/BgBB7Z5143fnHmUFgeCzzE0Qvq4sgyrXOxfl2AWq.pdf', 'Aunty.pdf', NULL, '2022-04-10', '00:07:19', '2022-04-09 17:07:19', '2022-04-09 17:07:19'),
(23, 22, 3, 'public/contract/J3K4DFUWIroLwquBwI35Y9X3d0lPTuFTe0ogD6WK.pdf', 'Ma Su latt contract 24.4.2022.pdf', NULL, '2022-04-26', '23:13:41', '2022-04-26 16:13:41', '2022-04-26 16:13:41'),
(24, 26, 3, 'public/contract/lTKnaHHamMgsAAF3R2U5C0dFdKT78oMkfMF96rpE.pdf', 'Thukha Shwe Pyi Contract (4.5.22)new.pdf', NULL, '2022-05-08', '11:51:55', '2022-05-08 04:51:55', '2022-05-08 04:51:55'),
(25, 18, 3, 'public/contract/OLsxOa8zpbAxgmv9tTMUtcrH26Vt5bZPE5eQbGld.pdf', 'Daw War War Lwin Contract 18.5.22.pdf', NULL, '2022-05-28', '00:06:42', '2022-05-27 17:06:42', '2022-05-27 17:06:42'),
(26, 38, 3, 'public/contract/1iwsyogD2YxXuLtAMPBtDOe444wDstb1twuH665l.pdf', 'Ko Aung Zaw Latt Contract.pdf', NULL, '2022-06-05', '14:27:49', '2022-06-05 07:27:49', '2022-06-05 07:27:49'),
(27, 38, 3, 'public/contract/jGmpqYsYsg1YeoVB5F4AMuohuWiP8LNepgkxAJVF.pdf', 'Ko Aung Zaw Latt Contract.pdf', NULL, '2022-06-05', '14:38:55', '2022-06-05 07:38:55', '2022-06-05 07:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci,
  `site_location` text COLLATE utf8mb4_unicode_ci,
  `building_area` text COLLATE utf8mb4_unicode_ci,
  `construction_type` text COLLATE utf8mb4_unicode_ci,
  `job_scope` text COLLATE utf8mb4_unicode_ci,
  `created_date` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `project_code` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `storeyed` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `site_location`, `building_area`, `construction_type`, `job_scope`, `created_date`, `created_at`, `updated_at`, `phone`, `project_code`, `remark`, `address`, `storeyed`, `email`) VALUES
(2, 'U Nyi Nyi Shin Thant', 'No. 81, Yadanar Housing, Dagon Seikkan Tsp.', '90\' x 87\'', 'Steel Structure', 'Normal Package', '2022-03-15', '2022-03-15 09:27:18', '2022-03-15 09:27:18', '095001154', 'YGN_DGSK_0001', NULL, 'No. 81, Yadanar Housing, Dagon Seikkan Tsp.', '3 Storeyed with Roof Slab', NULL),
(4, 'Ko Aung Kyaw Myo', 'No. 223/B, Daung Min Street, 14 Quarter, South Okkala Tsp', '24\' x 35\'', 'RC', 'Normal Package', '2022-03-15', '2022-03-15 15:26:27', '2022-03-15 15:26:27', '09 420 027 285', 'YGN- SOKL- 00002', NULL, 'No. 223/B, Daung Min Street, 14 Quarter, South Okkala Tsp', '3 Storeyed with Roof Slab', NULL),
(5, 'U Moe Min Thu', 'No.555/A, Thuya Street, 9 Quarter, South Okkalapa Tsp, Yangon', '17\' x 45\'', 'RC', 'Diamond Package', '2022-03-15', '2022-03-15 15:34:03', '2022-03-15 15:34:03', '09 254 476 677', 'YGN_SOKL_00003', NULL, 'No.555/A, Thuya Street, 9 Quarter, South Okkalapa Tsp, Yangon', '2.5 Storeyed with 4 Angle Roofing', NULL),
(6, 'Ko Hluon Moe Thu', 'No.36 A, Zaya Thiri 3 Street, Zaya Thiri Quarter, Dawpon Tsp, Yangon', '43\' x10\' 6\"', 'RC', 'Diamond package', '2022-03-15', '2022-03-15 16:05:28', '2022-03-15 16:05:28', '09 420 066 552', 'YGN_DP_00004', NULL, 'No.36 A, Zaya Thiri 3 Street, Zaya Thiri Quarter, Dawpon Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(7, 'Ko San Htoo', 'No.429/A, Damayone Street, 16/3 Quarter, Thingangyun Tsp, Yangon', '18\' x 47\'', 'RC', 'Diamond Package', '2022-03-15', '2022-03-15 16:16:44', '2022-03-15 16:16:44', '09 7777 992 879', 'YGN_TGG_00005', NULL, 'No.429/A, Damayone Street, 16/3 Quarter, Thingangyun Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(8, 'Ko Khant Si Thu', 'No.1560, U Aww Street, North Dagon Tsp, Yangon', '20\' x 40\'', 'RC', 'Diamond Package', '2022-03-15', '2022-03-15 16:28:07', '2022-03-15 16:28:07', '09 787364202', 'YGN_ND_00006', NULL, 'No.1560, U Aww Street, North Dagon Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(9, 'U Wint Naing', 'No. 35A, 170 A, War War Win Mya Khar Nyo Housing, Tharkayta Tsp, yangon', '48\' x 55\'', 'RC', 'Normal Package', '2022-03-15', '2022-03-15 16:37:52', '2022-03-15 16:37:52', '09 695925256', 'YGN_TKT_00007', NULL, 'No. 35A, 170 A, War War Win Mya Khar Nyo Housing, Tharkayta Tsp, yangon', '3 Storeyed wih Roof Slab', NULL),
(10, 'Ko Tin Latt', 'No.93, U Paing (19/1/2), Mingalar Street, Zay Kyo Quarter, Mawlamyine', '18\' x 35\'', 'RC', 'Gold Package', '2022-03-15', '2022-03-15 16:48:52', '2022-03-15 16:48:52', '09 254219549', 'MLM_ZK_00008', NULL, 'No.93, U Paing (19/1/2), Mingalar Street, Zay Kyo Quarter, Mawlamyine', NULL, NULL),
(11, 'Ma Zin Wah', 'No.22, Ma Soe Yein Street, 5 Quarter, Mayangone Tsp, Yangon', '35\' x 35\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:03:34', '2022-03-15 17:03:34', '09 261112010', 'YGN_MYG_00009', NULL, 'No.22, Ma Soe Yein Street, 5 Quarter, Mayangone Tsp, Yangon', '1 Storeyed with Roofing', NULL),
(12, 'Ma Hnin Wutyi Phyo', 'No.87, Thudathana Street, 16/ 2 Quarter, Thingangyun Tsp, Yangon', '12\' x 47\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-15 17:10:01', '2022-03-15 17:10:01', '09 4444 53677', 'YGN_TGG_00010', NULL, 'No.87, Thudathana Street, 16/ 2 Quarter, Thingangyun Tsp, Yangon', '2 Storeyed wth Roof Slab', NULL),
(13, 'Ko Aung Khin Sint', 'No.678, Corner of 4 Street and Min Ye Kyaw Swar Street, 1 Quarter, Thamine, Mayangone', '23\' x 44\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:18:19', '2022-03-15 17:18:19', '09 5024374', 'YGN_MYG_00011', NULL, 'No.678, Corner of 4 Street and Min Ye Kyaw Swar Street, 1 Quarter, Thamine, Mayangone', '3.5 Storeyed with Roofing', NULL),
(14, 'Ko Zaw Htut Aung', 'No.1117/1, Shwe Hnin Si  5 Street, 5 Quarter,, Mayangone Tsp, Yangon', '24\' x 46\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:51:31', '2022-03-15 17:51:31', '09 509 7171', 'YGN_MYG_00012', NULL, 'No.1117/1, Shwe Hnin Si  5 Street, 5 Quarter,, Mayangone Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(15, 'Ko Htut Aung', 'No.43, Bo Gyoke Street, 14 Ward, East Dagon, Yangon', '23\' x40\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-15 17:57:04', '2022-03-15 17:57:04', '09 5409956', 'YGN_ED_00014', NULL, 'No.43, Bo Gyoke Street, 14 Ward, East Dagon, Yangon', '2 Storeyed with Roof Slab', NULL),
(16, 'Daw Khin Aye Aye Khine', 'No.55/B, Dana Aung Street, Thuwanna, Thingangyun Tsp, Yangon', '30\' x 40\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-16 07:12:36', '2022-03-16 07:12:36', '09 783923123', 'YGN_TGG_00015', NULL, 'No.55/B, Dana Aung Street, Thuwanna, Thingangyun Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(17, 'Daw War War Lwin', 'Tharkayta Tsp, Yangon', '18\' x 46\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 07:30:06', '2022-03-16 07:30:06', '09 260646900', 'YGN_TKT_00016', NULL, 'Tharkayta Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(18, 'Ma Yamin', 'Dagon Seik Kan Tsp, Yangon', '18\' x 45\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 07:38:55', '2022-03-16 07:38:55', '09 957708938', 'YGN_DSK_00017', NULL, 'Dagon Seik Kan Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(19, 'U Zayar Oo', 'Insein Tsp, Yangon', '20\' 6\" x 50\' 6\"', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 08:09:08', '2022-03-16 08:09:08', '09 5117327', 'YGN_IS_00018', NULL, 'Insein Tsp, Yangon', '2.5 Storeyed with Roofing', NULL),
(20, 'Ma Ei Cho', 'South Okkalapa Tsp, Yangon', '18\' x 47\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-16 08:33:28', '2022-03-16 08:33:28', '09 5413279', 'YGN_SOKL_00019', NULL, 'South Okkalapa Tsp, Yangon', '2.5 Storeyed with Roofing', NULL),
(21, 'Ma Su Latt Kyaw Win', 'Tharkayta Tsp, Yangon', '18\' x 45\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 08:44:03', '2022-03-16 08:44:03', '09 794928677', 'YGN_TKT_00020', NULL, 'Tharkayta Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(22, 'Ko Phay Chit Htay', 'Hintada', '26\' 6\" x 42\'', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 08:49:56', '2022-03-16 08:49:56', '09 404955455', 'YGN_HTD_00021', NULL, 'Hintada', '2 Storeyed with Roof Slab', NULL),
(23, 'Ko Ba Nyar', 'Hintada', '55\' x 46\'', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 08:56:20', '2022-03-16 08:56:20', '09 695628555', 'YGN_HTD_00022', NULL, 'Hintada', '2.5 Storeyed with Roof Slab', NULL),
(24, 'U Myat Ko Ko', 'No.23, Daw Hla Kin Street, 2 Quarter, Mayangone Tsp, Yangon', '18\' x 47\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 09:04:22', '2022-03-16 09:04:22', '09 5173420', 'YGN_MYG_00023', NULL, 'No.23, Daw Hla Kin Street, 2 Quarter, Mayangone Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(25, 'Aye Chan Aung Hospital', 'Shwe Pyi Tar Tsp, Yangon', 'As per Archi + Structure Drawing', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 09:10:12', '2022-03-16 09:10:12', '09 445477814', 'YGN_SPT_00024', NULL, 'Shwe Pyi Tar Tsp, Yangon', '5 Storeyed with Roof Slab', NULL),
(26, 'Ko Kyaw Myat Htoo', 'Mayangone Tsp, Yangon', '40\' x 25\'', 'RC', 'Gold Package', '2022-03-16', '2022-03-16 09:14:02', '2022-03-16 09:14:02', '09 401558370', 'YGN_MYG_00025', NULL, 'Mayangone Tsp, Yangon', '2 Storeyed with Roof Slab', NULL),
(27, 'U Myat Nyein', 'North Dagon, Yanon', '26\' x 30\'', 'RC', 'Normal Package', '2022-03-16', '2022-03-16 09:22:40', '2022-03-16 09:22:40', '09 500 7875', 'YGN_ND_00026', NULL, 'North Dagon, Yanon', '2 Storeyed with Roof Slab', NULL),
(28, 'Ko Myo Min Zaw', 'Insein Tsp, Yangon', '18\' x 50\'', 'RC', 'Diamond Package', '2022-03-16', '2022-03-16 09:26:22', '2022-03-16 09:26:22', '09 774670068', 'YGN_IS_00027', NULL, 'Insein Tsp, Yangon', '2.5 Storeyed with Roof Slab', NULL),
(29, 'Ma Nan Su Myat Sandi', 'No.19, 2 Street, 3 Quarter, South Okkala Tsp, Yangon', '26\' x 30\'', 'RC', 'ID work and Fencing', '2022-03-16', '2022-03-16 16:51:24', '2022-03-16 16:51:24', '09 5173224', 'YGN_SOKL_00027', NULL, 'No.19, 2 Street, 3 Quarter, South Okkala Tsp, Yangon', '3 Storeyed with Roof Slab', NULL),
(30, 'Ko Paing Hein Aye', 'Kungyangon , Yangon', '26\' x 60\'', 'RC', 'Normal Package', '2022-03-17', '2022-03-16 17:20:34', '2022-03-16 17:20:34', '09 794586961', 'YGN_KGG_00029', NULL, 'Kungyangon , Yangon', '2.5 Storeyed with Roof Slab', NULL),
(31, 'U Kyaw Zaya Tun', 'No. 89, Thida Street, Myaungmya, Ayeyarwaddy', '36\' x 42\'', 'RC', 'ID Work', '2022-03-17', '2022-03-16 17:29:50', '2022-03-16 17:29:50', '09422462276', 'AYWD_MM_00030', NULL, 'No. 89, Thida Street, Myaungmya, Ayeyarwaddy', '2 Storeyed with Roof Slab', NULL),
(32, 'U Moe Aung Win', 'No.141, Site Pyoe Ywar Taunggyi District , Nyaung Shwe , Shan State', '29\' x 46\'', 'RC', 'Diamond package', '2022-03-17', '2022-03-16 17:40:21', '2022-03-16 17:40:21', '09 43174303', 'SS_NS_00031', NULL, 'No.141, Site Pyoe Ywar Taunggyi District , Nyaung Shwe , Shan State', '1.5 Storeyed with Roofing', NULL),
(33, 'Ko Myo Min Zaw', 'Insein Tsp', '18\' x 50\'', 'RC', 'Luxury Package', '2022-03-31', '2022-03-31 05:21:18', '2022-03-31 05:21:18', '09 774670068', 'YGN_ IS_ 00032', NULL, 'Insein Tsp', '3 Storeyed with Roof Slab', NULL),
(34, 'Ko Min Min', 'No. 26/B, Yan Aung Street, 3 Yan Pyay Quarter, Tharkayta', '17\' x 45\'', 'RC', 'Diamond Package', '2022-04-03', '2022-04-03 09:30:45', '2022-04-03 09:30:45', '09 423409994', 'YGN_TKT_00032', NULL, 'No. 26/B, Yan Aung Street, 3 Yan Pyay Quarter, Tharkayta', '2.5 Storeyed with Roof Slab', NULL),
(35, 'U Moe Aung', 'Moe Sandar Street, Hledan', '34\' x 55\'', 'RC', 'Normal Package', '2022-04-21', '2022-04-21 05:30:33', '2022-04-21 05:30:33', '09 5133784', 'YGN_ HD_00032', NULL, 'Moe Sandar Street, Hledan', '8 Storeyed with Roof Slab', NULL),
(36, 'Ko Aung Zaw Latt', 'North Dagon', '30\' x 45\'', 'RC', 'Diamond Package', '2022-04-26', '2022-04-26 16:20:43', '2022-04-26 16:20:43', '09 5385292', 'YGN_ND_00034', NULL, 'North Dagon', '2 Storeyed with Roof Slab', NULL),
(37, 'Ma Zin Mar TUn', 'North Okkala', '20\' x 32\'', 'RC', 'Gold Package', '2022-04-26', '2022-04-26 16:23:31', '2022-04-26 16:23:31', '09 43070717', 'YGN_NOKL_00035', NULL, 'North Okkala', '2 Storeyed with Roof Slab', NULL),
(38, 'Ko Kyaw Zin Min', 'South Dagon', '25\' x 45\'', 'RC', NULL, '2022-05-20', '2022-05-20 03:13:53', '2022-05-20 03:13:53', '09 690902679', 'YGN_ SDG_00036', NULL, 'South Dagon', '2.5 Storeyed with Roof Slab', NULL),
(39, 'Ko Aung Zaw Latt', 'No. 1346, Kyar Padonmar Street, 41 Ward, North Dagon', '30\' x 45\'', 'RC', NULL, '2022-05-20', '2022-05-20 03:23:49', '2022-05-20 03:23:49', '09 790696823', 'YGN_NDG_00037', NULL, 'No. 1346, Kyar Padonmar Street, 41 Ward, North Dagon', '2 Storeyed with Roof Slab', NULL),
(40, 'Ko Thurain', 'KyonePyaw', '75 \' x 75\'', 'RC', NULL, '2022-05-20', '2022-05-20 03:28:56', '2022-05-20 03:28:56', '09 798292492', 'YGN_KP_00036', NULL, 'KyonePyaw', 'Bar Project', NULL),
(41, 'Ko Kyaw Naing', 'PyawBwe Township', '30\' x 40\'', NULL, NULL, '2022-05-20', '2022-05-20 06:20:35', '2022-05-20 06:20:35', '09 2225132', 'MDL_PB_00038', NULL, 'PyawBwe Township', '2.5 Storeyed with Roof Slab', NULL),
(42, 'Ma Thinzar Aye', 'Tha Htone Township', '32\' x 50\'', 'RC', NULL, '2022-05-20', '2022-05-20 06:32:34', '2022-05-20 06:32:34', '09 771102008', 'MS_TH_00039', NULL, 'Tha Htone Township', '2.5 Storeyed with Roofing', NULL),
(43, 'Ma Yu', 'Nawaday Housing', '36\' x 36\'', 'RC', NULL, '2022-05-20', '2022-05-20 06:38:44', '2022-05-20 06:38:44', '09 254058203', 'YGN_HTY_00040', NULL, 'Nawaday Housing', '2 Storeyed with Roof Slab', NULL),
(44, 'Ko Zaw Win', 'No.44, Damaryone Street, Mingalar Taung Nyunt Township, Yangon', '23\' x 44\'', 'RC', NULL, '2022-05-20', '2022-05-20 06:55:31', '2022-05-20 06:55:31', '09 252574548', 'YGN_MGLTN_00040', NULL, 'No.44, Damaryone Street, Mingalar Taung Nyunt Township, Yangon', '6 Storeyed with Roof Slab', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Management/Director', '2022-03-07 17:28:07', '2022-03-07 17:28:07'),
(2, 'Management/ Manager', '2022-03-07 17:28:17', '2022-03-07 17:28:17'),
(3, 'HR', '2022-03-07 17:28:25', '2022-03-07 17:28:25'),
(4, 'Marketing', '2022-03-07 17:28:33', '2022-03-07 17:28:33'),
(5, 'Finance', '2022-03-07 17:28:40', '2022-03-07 17:28:40'),
(6, 'Archi Designer', '2022-03-07 17:28:47', '2022-03-07 17:28:47'),
(7, 'Structure Designer', '2022-03-07 17:28:54', '2022-03-07 17:28:54'),
(8, 'Operation', '2022-03-07 17:29:03', '2022-03-07 17:29:03'),
(9, 'Engineer', '2022-03-07 17:29:06', '2022-03-07 17:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `engineer_return_infos`
--

CREATE TABLE `engineer_return_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_code` text COLLATE utf8mb4_unicode_ci,
  `return_date` text COLLATE utf8mb4_unicode_ci,
  `return_from_id` int(11) DEFAULT NULL,
  `return_user_id` int(11) DEFAULT NULL,
  `qs_team_check_pass_status` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_check_sent_status` text COLLATE utf8mb4_unicode_ci,
  `received_store_manager_status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qs_team_check_pass_date` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_check_sent_date` text COLLATE utf8mb4_unicode_ci,
  `received_store_manager_date` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineer_return_infos`
--

INSERT INTO `engineer_return_infos` (`id`, `return_code`, `return_date`, `return_from_id`, `return_user_id`, `qs_team_check_pass_status`, `logistics_team_check_sent_status`, `received_store_manager_status`, `created_at`, `updated_at`, `qs_team_check_pass_date`, `logistics_team_check_sent_date`, `received_store_manager_date`) VALUES
(1, 'R - 00001', '2022-04-29 12:00 AM', 9, 22, 'finished', 'finished', 'received', '2022-04-29 09:50:57', '2022-04-29 09:51:44', '2022-04-29 16:51:25pm', '2022-04-29 16:51:35pm', '2022-04-29 16:51:44pm'),
(2, 'R - 00002', '2022-04-30 12:00 AM', 9, 22, 'finished', 'finished', 'received', '2022-04-30 05:26:01', '2022-04-30 05:28:49', '2022-04-30 12:28:22pm', '2022-04-30 12:28:33pm', '2022-04-30 12:28:49pm');

-- --------------------------------------------------------

--
-- Table structure for table `eng_request_items`
--

CREATE TABLE `eng_request_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fixed_asset_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `request_info_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eng_request_items`
--

INSERT INTO `eng_request_items` (`id`, `fixed_asset_id`, `quantity`, `user_id`, `project_id`, `request_info_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 22, 0, 1, 9, '2022-04-29 09:47:21', '2022-04-29 09:47:21'),
(2, 4, 1, 22, 0, 2, 9, '2022-04-30 05:22:05', '2022-04-30 05:22:05'),
(3, 5, 3, 22, 0, 3, 2, '2022-04-30 10:38:42', '2022-04-30 10:38:42'),
(4, 6, 2, 22, 0, 3, 2, '2022-04-30 10:38:42', '2022-04-30 10:38:42'),
(5, 3, 1, 22, 0, 4, 9, '2022-05-06 10:53:50', '2022-05-06 10:53:50'),
(6, 2, 1, 32, 0, 5, 12, '2022-05-06 11:34:38', '2022-05-06 11:34:38'),
(7, 5, 2, 26, 0, 6, 5, '2022-05-09 03:47:14', '2022-05-09 03:47:14'),
(8, 13, 10, 31, 0, 7, 11, '2022-05-10 10:05:55', '2022-05-10 10:05:55'),
(9, 3, 1, 22, 0, 8, 9, '2022-05-30 07:53:03', '2022-05-30 07:53:03'),
(10, 5, 3, 22, 0, 9, 9, '2022-05-30 07:59:37', '2022-05-30 07:59:37'),
(11, 14, 3, 22, 0, 10, 9, '2022-05-30 08:03:06', '2022-05-30 08:03:06'),
(12, 13, 115, 28, 0, 11, 2, '2022-06-02 14:26:42', '2022-06-02 14:26:42'),
(13, 4, 1, 32, 0, 12, 12, '2022-06-03 10:21:55', '2022-06-03 10:21:55'),
(14, 4, 1, 36, 0, 13, 8, '2022-06-05 12:05:24', '2022-06-05 12:05:24'),
(15, 3, 1, 47, 0, 14, 17, '2022-06-06 03:01:35', '2022-06-06 03:01:35'),
(16, 7, 1, 47, 0, 15, 17, '2022-06-06 03:23:40', '2022-06-06 03:23:40'),
(17, 6, 1, 47, 0, 16, 17, '2022-06-06 03:26:09', '2022-06-06 03:26:09'),
(18, 8, 1, 47, 0, 17, 17, '2022-06-06 04:12:01', '2022-06-06 04:12:01'),
(19, 8, 1, 47, 0, 18, 17, '2022-06-06 04:45:25', '2022-06-06 04:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_design_fees`
--

CREATE TABLE `exterior_design_fees` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exterior_design_fees` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exterior_design_fees`
--

INSERT INTO `exterior_design_fees` (`id`, `project_id`, `user_id`, `exterior_design_fees`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 25, 3, 'public/quotationproposal/UQ5VGiWZnfIsyGE72gTCrCIQZdPlCGekdzS962Tz.pdf', '0073233 - U myat ko ko - drawing quotation - 15.3.2022.pdf', NULL, '2022-03-16', '17:52:07', '2022-03-16 10:52:07', '2022-03-16 10:52:07'),
(2, 24, 3, 'public/quotationproposal/3EePolebmF60QVknvYlu5nT2dDt0wtvRvRrYOLko.pdf', 'Ko Banyar-Archi Design Fees.pdf', NULL, '2022-03-16', '18:00:17', '2022-03-16 11:00:17', '2022-03-16 11:00:17'),
(3, 16, 13, 'public/quotationproposal/bcvpVoM7vcWnI3xGhmYAiq4CaQi6FlGDrbE4Lo8P.bin', 'KHA-ARCH-3D-PMY-YGN-R3.skp', NULL, '2022-03-17', '13:59:03', '2022-03-17 06:59:03', '2022-03-17 06:59:03'),
(4, 7, 4, 'public/quotationproposal/F5tECiEfbhn4w4jSTZeZcDuMwgl116X6RD88A1F0.bin', 'KSHH-ARCH-3D.skp', NULL, '2022-03-18', '09:34:07', '2022-03-18 02:34:07', '2022-03-18 02:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci,
  `unit` text COLLATE utf8mb4_unicode_ci,
  `qty` int(11) DEFAULT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci,
  `main_warehouse_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixed_assets`
--

INSERT INTO `fixed_assets` (`id`, `item_name`, `unit`, `qty`, `desciption`, `main_warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 'T Column', 'Nos', 2356, NULL, 1, '2022-04-28 16:13:30', '2022-05-26 08:41:02'),
(2, 'Vibrator', 'Nos', 5, NULL, 1, '2022-04-28 16:13:52', '2022-05-06 07:38:15'),
(3, 'Concrete Mixer', 'Nos', 6, NULL, 1, '2022-04-29 09:33:32', '2022-04-29 09:33:32'),
(4, 'Compactor', 'Nos', 1, NULL, 1, '2022-04-29 09:34:03', '2022-04-29 09:34:03'),
(5, 'Japan Scaffolding', 'Nos', 15, NULL, 1, '2022-04-29 09:34:30', '2022-05-06 07:38:37'),
(6, 'PVC Cement Tank', 'Nos', 6, NULL, 1, '2022-04-29 09:34:59', '2022-04-29 09:34:59'),
(7, 'Fiber Water Tank', 'Nos', 3, NULL, 1, '2022-04-29 09:35:21', '2022-04-29 09:35:21'),
(8, 'Pump (Motor)', 'Nos', 3, NULL, 1, '2022-04-29 09:35:43', '2022-04-29 09:35:43'),
(9, 'Water Motor', 'Nos', 2, NULL, 1, '2022-04-29 09:35:58', '2022-04-29 09:35:58'),
(10, 'Pressure Gun', 'Nos', 1, NULL, 1, '2022-04-29 09:36:07', '2022-04-29 09:36:07'),
(11, 'Submersible Pump', 'Nos', 3, NULL, 1, '2022-04-29 09:36:18', '2022-04-29 09:36:18'),
(12, 'Safety Green Net', 'Nos', 0, NULL, 1, '2022-04-29 09:36:35', '2022-04-29 09:37:16'),
(13, 'Tarpolin', 'Nos', 0, NULL, 1, '2022-04-29 09:36:55', '2022-04-29 09:36:55'),
(14, 'Scaffolding Walking Board', 'Nos', 15, NULL, 1, '2022-05-30 07:51:49', '2022-05-30 07:51:49'),
(15, '2\" Hose Pipe', 'Rft', 0, NULL, 1, '2022-06-06 04:11:26', '2022-06-06 04:11:26'),
(16, '2\" Flexible Pipe', 'Rft', 0, NULL, 1, '2022-06-06 04:11:59', '2022-06-06 04:11:59'),
(17, '2\" Foot Valve', 'Nos', 0, NULL, 1, '2022-06-06 04:12:43', '2022-06-06 04:12:43');

-- --------------------------------------------------------

--
-- Table structure for table `fixed_assets_purchases`
--

CREATE TABLE `fixed_assets_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `item_name` text COLLATE utf8mb4_unicode_ci,
  `unit` text COLLATE utf8mb4_unicode_ci,
  `qty` int(11) DEFAULT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci,
  `order_date` text COLLATE utf8mb4_unicode_ci,
  `fixed_asset_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floor_plans`
--

CREATE TABLE `floor_plans` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `floor_plan_image` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `upload_date_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floor_plans`
--

INSERT INTO `floor_plans` (`id`, `project_id`, `user_id`, `floor_plan_image`, `upload_date`, `upload_time`, `upload_date_time`, `created_at`, `updated_at`, `original_name`, `remark`) VALUES
(1, 2, 2, 'public/floor_plans/cJJTlVGdOKYxXQpQeHjn1LgnGLlC51cQpClDxlpM.doc', '2022-03-15', '16:58:28', '2022-03-15 16:58:28', '2022-03-15 09:58:28', '2022-03-15 09:58:28', 'Interview Questions.docx', NULL),
(2, 2, 5, 'public/floor_plans/YdL1HDnbDwKgKPpZ6Taf0DJ9OpZcl76TcHJeGdUa.pdf', '2022-03-15', '16:58:55', '2022-03-15 16:58:55', '2022-03-15 09:58:55', '2022-03-15 09:58:55', 'Contract _ U Nyi _ New Building 1 (No. 81) Final Revised 1.pdf', NULL),
(3, 27, 3, 'public/floor_plans/xAwWzpNdr5na340X3Uz9tdCN0th5kblN63HGx6q7.pdf', '2022-03-16', '17:19:28', '2022-03-16 17:19:28', '2022-03-16 10:19:28', '2022-03-16 10:19:28', 'KO KYAW MYAT HTOO.pdf', NULL),
(4, 25, 3, 'public/floor_plans/tQurvO2mHZpyIwgdhSRSbgkFaRuwCAYANI5YdiWQ.pdf', '2022-03-16', '17:51:32', '2022-03-16 17:51:32', '2022-03-16 10:51:32', '2022-03-16 10:51:32', 'UMKK_Floor Plan.pdf', NULL),
(5, 24, 3, 'public/floor_plans/jlBztUWfDE2XuUyiZUeZYr3ECeeRmQO14KPOYA15.pdf', '2022-03-16', '17:57:19', '2022-03-16 17:57:19', '2022-03-16 10:57:19', '2022-03-16 10:57:19', 'KO BANYAR Floor Plan.pdf', NULL),
(6, 23, 3, 'public/floor_plans/fSefg3eTNhm36HmQBDQn31KXsACO9lMltwopNnAR.pdf', '2022-03-16', '18:02:12', '2022-03-16 18:02:12', '2022-03-16 11:02:12', '2022-03-16 11:02:12', 'kpchr3.pdf', NULL),
(7, 19, 3, 'public/floor_plans/62ngvkkzrNHlrQ25uElyHISlu0HaOn8HCEgHmeje.pdf', '2022-03-16', '18:03:55', '2022-03-16 18:03:55', '2022-03-16 11:03:55', '2022-03-16 11:03:55', 'MYM#P0073229R4#PFP#14032022.pdf', NULL),
(8, 18, 3, 'public/floor_plans/Qxou7t3HeB6qXOrYDCCsK2j8aI4jYw0z7bMLmgKA.pdf', '2022-03-16', '18:19:57', '2022-03-16 18:19:57', '2022-03-16 11:19:57', '2022-03-16 11:19:57', 'DWWL#P0073222R1#PFP#28022022.pdf', NULL),
(9, 17, 3, 'public/floor_plans/u8Plae0rhgut0GqrxE4Vbc3Esv4BBYsY6sqXxbRe.pdf', '2022-03-16', '18:23:57', '2022-03-16 18:23:57', '2022-03-16 11:23:57', '2022-03-16 11:23:57', 'DKAAK#CONFIRMPFP#P0073223R0#15032022.pdf', NULL),
(10, 16, 3, 'public/floor_plans/SKwotITDSoBhapWpbcd1zMIpOFCGhAAnQfYslAWO.pdf', '2022-03-16', '18:32:07', '2022-03-16 18:32:07', '2022-03-16 11:32:07', '2022-03-16 11:32:07', 'kha_1646216608 Floor Plan.pdf', NULL),
(11, 14, 3, 'public/floor_plans/vrjigxaNpYoczegLDbarsJUi5m1zjWtBVD9JXeTP.pdf', '2022-03-16', '20:04:30', '2022-03-16 20:04:30', '2022-03-16 13:04:30', '2022-03-16 13:04:30', 'Floor plan.pdf', NULL),
(12, 13, 3, 'public/floor_plans/9wg8Wr7CMSGtM6doT7HnkYt7wFeBsrdStDv6IS62.pdf', '2022-03-16', '20:13:53', '2022-03-16 20:13:53', '2022-03-16 13:13:53', '2022-03-16 13:13:53', 'MAHninWuttYi-17.2.2022 3.pdf', NULL),
(13, 12, 3, 'public/floor_plans/P7FtOvNMVvakecvVUmdmWW54X8Yaoru2zcnkARMR.pdf', '2022-03-16', '20:30:43', '2022-03-16 20:30:43', '2022-03-16 13:30:43', '2022-03-16 13:30:43', 'FloorPlan.pdf', NULL),
(14, 11, 3, 'public/floor_plans/erNePdpLherfSkFJ6yyNdvIDq9p1ADNYVeocHjFj.pdf', '2022-03-16', '20:53:20', '2022-03-16 20:53:20', '2022-03-16 13:53:20', '2022-03-16 13:53:20', 'Floor Plan.pdf', NULL),
(15, 9, 3, 'public/floor_plans/H79Je9LL3j4yHIAdsf5BTGgrYot9Naj4S9PAt6Kg.pdf', '2022-03-16', '21:15:21', '2022-03-16 21:15:21', '2022-03-16 14:15:21', '2022-03-16 14:15:21', 'Floor Plan.pdf', NULL),
(16, 8, 3, 'public/floor_plans/JucqLZka8v6cg0ARF5ETg4LO0nC9YjH1kneRfTKg.pdf', '2022-03-16', '21:30:46', '2022-03-16 21:30:46', '2022-03-16 14:30:46', '2022-03-16 14:30:46', 'Floor Plan.pdf', NULL),
(17, 7, 3, 'public/floor_plans/nauv1wZ6oJTlU3meP66KOrLb1RurH9FrdI5VnTn0.pdf', '2022-03-16', '21:41:49', '2022-03-16 21:41:49', '2022-03-16 14:41:49', '2022-03-16 14:41:49', 'Floor Plan.pdf', NULL),
(18, 6, 3, 'public/floor_plans/vm3wAWBnqmN8xicMXjGb5kHHPFLc5ZmQ3714uBno.pdf', '2022-03-16', '22:36:20', '2022-03-16 22:36:20', '2022-03-16 15:36:20', '2022-03-16 15:36:20', 'Floor Plan.pdf', NULL),
(19, 5, 3, 'public/floor_plans/lUWChNUFN35nMftUttZIWffMAO7Tx6f6vRcDwTHi.pdf', '2022-03-16', '22:50:27', '2022-03-16 22:50:27', '2022-03-16 15:50:27', '2022-03-16 15:50:27', 'Floor Plan.pdf', NULL),
(20, 20, 12, 'public/floor_plans/0K9Vckt4Gs3Xin2GgpL0R1lSAcf16BDQpS8QG66k.rar', '2022-03-17', '11:29:59', '2022-03-17 11:29:59', '2022-03-17 04:29:59', '2022-03-17 04:29:59', 'ko zayar oo.rar', NULL),
(21, 20, 12, 'public/floor_plans/ZFD90jdlidMe6DqMIMoIeOJFWLfWoMP86aSvvp9E.rar', '2022-03-17', '11:31:06', '2022-03-17 11:31:06', '2022-03-17 04:31:06', '2022-03-17 04:31:06', 'ko zayar oo.rar', NULL),
(22, 10, 4, 'public/floor_plans/stcYTIgxoclkalKl9Z7qQCUY1bY8U7GiNn0PJo5Y.pdf', '2022-03-17', '11:37:08', '2022-03-17 11:37:08', '2022-03-17 04:37:08', '2022-03-17 04:37:08', 'UWN-PMY-ARCH-DWG11032022.pdf', NULL),
(23, 10, 4, 'public/floor_plans/oIvq8vbp4D6yBvCBs0uOhAHYznjmGotOzox8nVgU.bin', '2022-03-17', '11:37:49', '2022-03-17 11:37:49', '2022-03-17 04:37:49', '2022-03-17 04:37:49', 'UWN-PMY-ARCH-DWG11032022.dwg', NULL),
(24, 33, 4, 'public/floor_plans/EylBWAHlWbxqthiK3Am0PCKUlcIuDgnI8S4kDDrB.rar', '2022-03-17', '13:46:31', '2022-03-17 13:46:31', '2022-03-17 06:46:31', '2022-03-17 06:46:31', 'UMAW-NS-PMY-ARCH-DWG-R0.rar', NULL),
(25, 16, 13, 'public/floor_plans/Kf2385TtTCjUMGUcjAQPItuO64J4RTp9NYl4N3ao.bin', '2022-03-17', '13:46:57', '2022-03-17 13:46:57', '2022-03-17 06:46:57', '2022-03-17 06:46:57', 'KHA-ARCH-DRAWING-PMY-YGN-R3.dwg', NULL),
(26, 15, 4, 'public/floor_plans/QVUcKrxU0mrgthAdgjHMg64PFynJb0SCSNYhOHNz.pdf', '2022-03-18', '09:17:16', '2022-03-18 09:17:16', '2022-03-18 02:17:16', '2022-03-18 02:17:16', 'KZHA-MYG-PMY-ARCH-DWG-R5.pdf', NULL),
(27, 8, 13, 'public/floor_plans/S2fkFHMh0SOUk0RvbXGF7JAgpMXIg5dE02WfRSLh.bin', '2022-03-18', '09:18:25', '2022-03-18 09:18:25', '2022-03-18 02:18:25', '2022-03-18 02:18:25', 'KSH-ARCH-DRAWING-PMY-YGN-R3.dwg', NULL),
(28, 9, 13, 'public/floor_plans/7TmGPdzSI98b3dAgREAjAH0gjibWTE6S7Sxbyuk0.bin', '2022-03-18', '09:20:22', '2022-03-18 09:20:22', '2022-03-18 02:20:22', '2022-03-18 02:20:22', 'KKST-ARCH-DRAWING-PMY-YGN-R3.dwg', NULL),
(29, 11, 13, 'public/floor_plans/vfViw99l9RkrKSi500rPYVQxGlNnYO7D80C9Du6L.bin', '2022-03-18', '09:21:56', '2022-03-18 09:21:56', '2022-03-18 02:21:56', '2022-03-18 02:21:56', 'KTL-ARCH-DRAWING-PMY-MLM-R2.dwg', NULL),
(30, 7, 13, 'public/floor_plans/9fdoHpYlPTkRqpgmWWhYkXitFyEhrbIFlrnCYoqi.bin', '2022-03-18', '09:24:03', '2022-03-18 09:24:03', '2022-03-18 02:24:03', '2022-03-18 02:24:03', 'KHM-ARCH-DRAWING-PMY-YGN-R3.dwg', NULL),
(31, 14, 13, 'public/floor_plans/n6muAsQwXFr0RYIZrpC1QqMpZXqqr8PoGMxkDFU7.bin', '2022-03-18', '09:25:55', '2022-03-18 09:25:55', '2022-03-18 02:25:55', '2022-03-18 02:25:55', 'KAKS-ARCH-DRAWING-PMY-YGN-R3.dwg', NULL),
(32, 30, 12, 'public/floor_plans/rSYkyRx7CxGG6nF6YqSpIS5TAAfDe3TTl1TQo04U.rar', '2022-03-18', '09:32:20', '2022-03-18 09:32:20', '2022-03-18 02:32:20', '2022-03-18 02:32:20', 'MNSD-PMY-SOKL-18032022.rar', NULL),
(33, 32, 12, 'public/floor_plans/bNPEDuL3k9vRetjvYA2046nXd9K2yb4lKOCJfafi.rar', '2022-03-18', '09:34:28', '2022-03-18 09:34:28', '2022-03-18 02:34:28', '2022-03-18 02:34:28', 'DKZYT-PMY-ARCH -MM-R0.rar', NULL),
(34, 21, 13, 'public/floor_plans/RDxYHkbrUUbEakmuxyo9JBYsDUhiYwCIeXaNGUWV.bin', '2022-03-18', '09:41:03', '2022-03-18 09:41:03', '2022-03-18 02:41:03', '2022-03-18 02:41:03', 'MEC-ARCH-DRAWING-PMY-YGN-R1.dwg', NULL),
(35, 26, 4, 'public/floor_plans/w2ekh9cul0ngWePBB7P8Na9EonwWpBoKYb3uxCl8.pdf', '2022-03-18', '10:12:58', '2022-03-18 10:12:58', '2022-03-18 03:12:58', '2022-03-18 03:12:58', 'Aye Chan Aung Archi -Use -24.1.22.pdf', NULL),
(36, 31, 4, 'public/floor_plans/Wy2WFT2h1EsAxgBz0IyO1TQHWiR7oZgoEULfzqLd.pdf', '2022-03-18', '10:14:55', '2022-03-18 10:14:55', '2022-03-18 03:14:55', '2022-03-18 03:14:55', 'KGK#ArchDwg#30092021.pdf', NULL),
(37, 2, 12, 'public/floor_plans/YtiMYe7up6uNnnUe5vdLf6JfEnPD78TGdJsKAIKp.rar', '2022-03-18', '11:38:49', '2022-03-18 11:38:49', '2022-03-18 04:38:49', '2022-03-18 04:38:49', 'UN-PMY-ARCH-R1-10032022.rar', NULL),
(38, 22, 12, 'public/floor_plans/deLa2MDj7BJIAJVr4K7eQYTRyOg0P9MpWpIBsS1O.pdf', '2022-03-18', '12:21:00', '2022-03-18 12:21:00', '2022-03-18 05:21:00', '2022-03-18 05:21:00', 'MSLKM#PFP#P0073234R0#18032022.pdf', NULL),
(39, 8, 13, 'public/floor_plans/2AcrpPf8SgVipAK4AU0QKzThrhxs0TtcjzHm7eu8.rar', '2022-03-21', '11:38:04', '2022-03-21 11:38:04', '2022-03-21 04:38:04', '2022-03-21 04:38:04', 'CAD.rar', NULL),
(40, 22, 12, 'public/floor_plans/aDHFTFJ8tiXHcS6k90K6UpJpaAuRVCKb9oirAx1R.pdf', '2022-03-23', '15:25:08', '2022-03-23 15:25:08', '2022-03-23 08:25:08', '2022-03-23 08:25:08', 'MSLKM-ARCH-R2-2232022.pdf', 'Confirmed Floor Plan & Poly'),
(41, 22, 12, 'public/floor_plans/vqKEqH7hNQ2lc0h6Rcbj48CgtvySHyXMx44xbGCp.pdf', '2022-03-24', '10:00:07', '2022-03-24 10:00:07', '2022-03-24 03:00:07', '2022-03-24 03:00:07', 'MSLKM-ARCH-R3-24032022.pdf', NULL),
(42, 23, 4, 'public/floor_plans/8UhvqCKnktsOHKXjwqexf0oM0MxPQmPWwx5fNauA.pdf', '2022-03-24', '13:44:53', '2022-03-24 13:44:53', '2022-03-24 06:44:53', '2022-03-24 06:44:53', 'KPCH#P0073226R6#PFP#24032022.pdf', NULL),
(43, 14, 13, 'public/floor_plans/q5pkcWupMReHtPxILkrbi3h2Ntvkyge7siPU4Gz7.rar', '2022-03-25', '15:50:11', '2022-03-25 15:50:11', '2022-03-25 08:50:11', '2022-03-25 08:50:11', 'mayangone.rar', NULL),
(44, 9, 13, 'public/floor_plans/3Ze0LwWpMKYw7joNBj6goYh5uhODqIAAjSouAiAy.rar', '2022-03-25', '15:53:55', '2022-03-25 15:53:55', '2022-03-25 08:53:55', '2022-03-25 08:53:55', 'CAD.rar', NULL),
(45, 7, 13, 'public/floor_plans/kyMUdHXx1LiL6WdP1vOB7KHa02hrvkP0rLn5CmZG.rar', '2022-03-26', '09:40:29', '2022-03-26 09:40:29', '2022-03-26 02:40:29', '2022-03-26 02:40:29', 'khm on site.rar', NULL),
(46, 7, 13, 'public/floor_plans/CshCHbj6vWofkrZFvZ9G66s7sS3TGHGNidfSMwrl.rar', '2022-03-26', '10:07:39', '2022-03-26 10:07:39', '2022-03-26 03:07:39', '2022-03-26 03:07:39', 'khm on site.rar', NULL),
(47, 11, 13, 'public/floor_plans/hYy5atLx9RpfbwcFPqaljdYLcV1304v5c8BSDqSG.rar', '2022-03-26', '10:22:06', '2022-03-26 10:22:06', '2022-03-26 03:22:06', '2022-03-26 03:22:06', 'CAD.rar', NULL),
(48, 17, 12, 'public/floor_plans/Fsu5s7FbOv4mFBP5G4KP7pT8xT8hCk9hsR8lKfmI.pdf', '2022-03-28', '16:02:30', '2022-03-28 16:02:30', '2022-03-28 09:02:30', '2022-03-28 09:02:30', 'DKAAK#PFP#P0073223R6#28032022.pdf', NULL),
(49, 2, 12, 'public/floor_plans/iqMjiMy73PWl2zG2fSTz6o7tXcfyEAiZzcwdCGqW.rar', '2022-03-30', '09:30:05', '2022-03-30 09:30:05', '2022-03-30 02:30:05', '2022-03-30 02:30:05', 'UN-PMY-PROPOSAL-28022022.rar', NULL),
(50, 24, 12, 'public/floor_plans/AXqJVSccwwhFhbyB4o7NVr7OuM4zDoQ84AsaZtyV.rar', '2022-03-30', '09:57:03', '2022-03-30 09:57:03', '2022-03-30 02:57:03', '2022-03-30 02:57:03', 'KBN-PMY-ARCH-05022022.rar', NULL),
(51, 11, 13, 'public/floor_plans/EsOx2HduI7Cgxt17wfBfhSMn0dBTzaoaQCqFGALt.rar', '2022-04-01', '10:40:07', '2022-04-01 10:40:07', '2022-04-01 03:40:07', '2022-04-01 03:40:07', 'KTL-ARCH-DRAWING-R2-29032022.rar', NULL),
(52, 16, 13, 'public/floor_plans/6ZULU7M7EYlMnmIBLev7U2dJhSSuG4GPfjA3SkMy.rar', '2022-04-01', '11:00:40', '2022-04-01 11:00:40', '2022-04-01 04:00:40', '2022-04-01 04:00:40', 'KHA-ARCH-DRAWING-R3-010420222.rar', NULL),
(53, 11, 13, 'public/floor_plans/OabQnpQvYu0RHoHrYgq8QDhnuG5PhuGrQTfKhoFW.rar', '2022-04-01', '11:13:38', '2022-04-01 11:13:38', '2022-04-01 04:13:38', '2022-04-01 04:13:38', 'KTL-ARCH-DRAWING-R2-29032022.rar', NULL),
(54, 9, 13, 'public/floor_plans/dPL0Pewihaad8qzjsWE7Kh2vHzC4fh5qKCBLT9Yx.rar', '2022-04-01', '11:31:41', '2022-04-01 11:31:41', '2022-04-01 04:31:41', '2022-04-01 04:31:41', 'KKST-ARCH-DRAWING-R3-01042022.rar', NULL),
(55, 11, 13, 'public/floor_plans/RCitToO2K5I930dp1SmQqj8zKAZR5pPcjt9DV2Az.rar', '2022-04-01', '11:35:54', '2022-04-01 11:35:54', '2022-04-01 04:35:54', '2022-04-01 04:35:54', 'KTL-ARCH-DRAWING-R2-29032022.rar', NULL),
(56, 7, 13, 'public/floor_plans/gmp13cFjhN4wvhDlDOzza1Lm5rkfZAbuWjsQPGF8.rar', '2022-04-01', '11:43:51', '2022-04-01 11:43:51', '2022-04-01 04:43:51', '2022-04-01 04:43:51', 'KHM-ARCH-DRAWING-R2.rar', NULL),
(57, 14, 13, 'public/floor_plans/1gYAEFy5phsHZ9EHEue7c4HmWr1xrzKxBkAi1gCh.rar', '2022-04-01', '11:50:52', '2022-04-01 11:50:52', '2022-04-01 04:50:52', '2022-04-01 04:50:52', 'KAKS-ARCH-DRAWING-R3-12032022.rar', NULL),
(58, 16, 13, 'public/floor_plans/yFh7WF5SlIHf3DbUGkVCLMz7soYz6vyWx2TO9nkE.rar', '2022-04-01', '12:05:41', '2022-04-01 12:05:41', '2022-04-01 05:05:41', '2022-04-01 05:05:41', 'KHA-ARCH-DRAWING-R3-010420222.rar', NULL),
(59, 14, 13, 'public/floor_plans/oZZwqWNlrGcWmy8lpA4tlOodPeOV5Hycesxsy605.rar', '2022-04-01', '12:07:54', '2022-04-01 12:07:54', '2022-04-01 05:07:54', '2022-04-01 05:07:54', 'KAKS-ARCH-DRAWING-R3-12032022.rar', NULL),
(60, 7, 13, 'public/floor_plans/TJOA2oT2nwSJbqD46AuHfpPTZawa6V1RrTmwAEFT.rar', '2022-04-01', '13:43:44', '2022-04-01 13:43:44', '2022-04-01 06:43:44', '2022-04-01 06:43:44', 'KHM-ARCH-DRAWING-R2.rar', NULL),
(61, 7, 13, 'public/floor_plans/QuJhf61RVg37hnbVGBxRG2vxwTsRbLocXRmrgrXu.rar', '2022-04-04', '16:58:09', '2022-04-04 16:58:09', '2022-04-04 09:58:09', '2022-04-04 09:58:09', 'KHM-PMY-ARCH-DWG-04042022.rar', NULL),
(62, 14, 13, 'public/floor_plans/szE2Agu9OS2uD5vQIPCv3Zo3pc6Chrz1sZAuA5j0.rar', '2022-04-05', '15:33:30', '2022-04-05 15:33:30', '2022-04-05 08:33:30', '2022-04-05 08:33:30', 'KAKS-ARCH-DRAWING-R3-04042022.rar', NULL),
(63, 9, 13, 'public/floor_plans/leGCDzIkDPWQRl8CayTkMfRJ4PMs7OehhmsqmfEh.rar', '2022-04-05', '15:52:47', '2022-04-05 15:52:47', '2022-04-05 08:52:47', '2022-04-05 08:52:47', 'KAKS-ARCH-DRAWING-R3-04042022.rar', NULL),
(64, 16, 13, 'public/floor_plans/QvSb8C03klV3NsC8He2ZjF7ofwMBG0kqQrJxzj8T.rar', '2022-04-06', '15:45:14', '2022-04-06 15:45:14', '2022-04-06 08:45:14', '2022-04-06 08:45:14', 'KHA-ARCH-DRAWING-R3-060420222.rar', NULL),
(65, 25, 13, 'public/floor_plans/TqEELiDdWGCTfJdKJJRKNnnLQWKFvLNb8sxaSy4G.rar', '2022-04-06', '15:45:55', '2022-04-06 15:45:55', '2022-04-06 08:45:55', '2022-04-06 08:45:55', 'UMKK-ARCH-DRAWING-R3-060420222.rar', NULL),
(66, 6, 13, 'public/floor_plans/xTragV2bO1gd7E1iwhu2y61zl0Y6LbOkjkZK4aiQ.rar', '2022-04-19', '10:42:31', '2022-04-19 10:42:31', '2022-04-19 03:42:31', '2022-04-19 03:42:31', 'MWD-ARCH-DRAWING-R3.rar', NULL),
(67, 21, 13, 'public/floor_plans/QZd0VMXs69pv2GEMDisB0mkEtRX8uADCV6u1duch.rar', '2022-04-19', '12:13:35', '2022-04-19 12:13:35', '2022-04-19 05:13:35', '2022-04-19 05:13:35', 'MEC-ARCH-DRAWING-R1.rar', NULL),
(68, 9, 13, 'public/floor_plans/OMg65MjkqQvzsGwxHfL52pcqQpXMIFbC68HnJ3iO.rar', '2022-04-22', '11:03:08', '2022-04-22 11:03:08', '2022-04-22 04:03:08', '2022-04-22 04:03:08', 'KKST-ARCH-DRAWING-R3-01042022.rar', NULL),
(69, 26, 3, 'public/floor_plans/ILanq8dhNel3aCsuIFJjEDAT7omIIk5RF2JJEXjq.pdf', '2022-05-08', '11:48:28', '2022-05-08 11:48:28', '2022-05-08 04:48:28', '2022-05-08 04:48:28', 'Aye Chan Aung Quotation Update.pdf', NULL),
(70, 2, 12, 'public/floor_plans/BlvwAogxu1Ox24ZrRZTvsdcCEtC6JUTGFhq6gUZW.rar', '2022-06-01', '16:58:36', '2022-06-01 16:58:36', '2022-06-01 09:58:36', '2022-06-01 09:58:36', 'UN-PMY-ARCH-R2-01062022.rar', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `labours`
--

CREATE TABLE `labours` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labours`
--

INSERT INTO `labours` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Steel Fixers', '2022-02-15 09:44:28', '2022-02-15 09:47:40'),
(2, 'Steel Fixer', '2022-02-15 09:44:51', '2022-02-15 09:44:51'),
(3, 'Surveryor', '2022-02-15 09:45:03', '2022-02-15 09:45:03'),
(4, 'Worker', '2022-02-15 09:45:09', '2022-02-15 09:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `main_warehouses`
--

CREATE TABLE `main_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_code` text COLLATE utf8mb4_unicode_ci,
  `warehouse_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_warehouses`
--

INSERT INTO `main_warehouses` (`id`, `warehouse_code`, `warehouse_name`, `location`, `created_at`, `updated_at`) VALUES
(1, 'W-00001', 'Main Warehouse', 'Yangon', '2022-03-21 03:58:52', '2022-03-21 03:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `management_variable_accept_reject_statuses`
--

CREATE TABLE `management_variable_accept_reject_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `management_accept_reject_status` text COLLATE utf8mb4_unicode_ci,
  `management_accept_reject_date` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_variable_accept_reject_statuses`
--

INSERT INTO `management_variable_accept_reject_statuses` (`id`, `user_id`, `management_accept_reject_status`, `management_accept_reject_date`, `variable_request_info_id`, `created_at`, `updated_at`) VALUES
(4, 19, 'accept', '2022-05-29 18:00:48pm', 22, '2022-05-29 11:00:48', '2022-05-29 11:00:48'),
(5, 19, 'accept', '2022-05-29 18:01:01pm', 20, '2022-05-29 11:01:01', '2022-05-29 11:01:01'),
(6, 19, 'accept', '2022-05-29 18:01:17pm', 19, '2022-05-29 11:01:17', '2022-05-29 11:01:17'),
(7, 19, 'reject', '2022-05-29 18:03:04pm', 18, '2022-05-29 11:03:04', '2022-05-29 11:03:04'),
(8, 19, 'accept', '2022-05-29 18:05:10pm', 17, '2022-05-29 11:05:10', '2022-05-29 11:05:10'),
(9, 2, 'accept', '2022-06-03 11:30:27am', 41, '2022-06-03 04:30:27', '2022-06-03 04:30:27'),
(10, 19, 'accept', '2022-06-05 19:55:36pm', 54, '2022-06-05 12:55:36', '2022-06-05 12:55:36'),
(11, 19, 'accept', '2022-06-06 11:52:11am', 27, '2022-06-06 04:52:11', '2022-06-06 04:52:11'),
(12, 19, 'accept', '2022-06-06 11:52:40am', 52, '2022-06-06 04:52:40', '2022-06-06 04:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `unitos_of_measure_id` int(11) DEFAULT NULL,
  `selling_price` text COLLATE utf8mb4_unicode_ci,
  `sale_account_id` int(11) DEFAULT NULL,
  `cost_price` text COLLATE utf8mb4_unicode_ci,
  `purchase_account_id` int(11) DEFAULT NULL,
  `receivable_account_id` int(11) DEFAULT NULL,
  `payable_account_id` int(11) DEFAULT NULL,
  `opening_inventory_account_id` int(11) DEFAULT NULL,
  `closing_inventory_account_id` int(11) DEFAULT NULL,
  `closing_stock_account_id` int(11) DEFAULT NULL,
  `quantity_on_hand` text COLLATE utf8mb4_unicode_ci,
  `as_of_date` text COLLATE utf8mb4_unicode_ci,
  `opening_cost_price` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_02_10_103209_create_account_classifications_table', 1),
(5, '2022_02_10_173302_create_account_types_table', 1),
(6, '2022_02_11_065406_create_chartof_accounts_table', 1),
(7, '2022_02_11_073056_add_account_classification_id_to_chartof_accounts_table', 1),
(8, '2022_02_14_033711_add_account_opening_balance_to_chartof_accounts_table', 1),
(9, '2022_02_15_100945_create_unitos_of_measures_table', 2),
(10, '2022_02_15_151522_create_materials_table', 3),
(11, '2022_02_15_160317_create_labours_table', 4),
(12, '2022_02_16_080734_create_customers_table', 5),
(13, '2022_02_16_082816_add_phone_to_customers_table', 6),
(14, '2022_02_16_102525_create_projects_table', 7),
(15, '2022_02_16_105840_add_remark_to_projects_table', 8),
(16, '2022_02_16_151851_add_project_status_to_projects_table', 9),
(17, '2022_02_16_152346_add_project_status_to_projects_table', 10),
(18, '2022_02_16_153303_drop_projects_table', 11),
(19, '2022_02_16_153632_create_projects_table', 12),
(20, '2022_02_17_171505_create_floor_plans_table', 13),
(21, '2022_02_17_184711_add_original_name_to_floor_plans_table', 14),
(22, '2022_02_17_191518_add_remark_to_floor_plans_table', 15),
(23, '2022_02_25_151550_create_quotationproposals_table', 16),
(24, '2022_02_25_175232_add_exterior_design_fees_date_to_projects_table', 17),
(25, '2022_02_26_110040_create_archi_exterior_designs_table', 18),
(26, '2022_02_26_111149_add_created_at_to_archi_exterior_designs_table', 19),
(27, '2022_02_26_112316_create_structure_designs_table', 20),
(28, '2022_02_26_170910_add_item_code_to_materials_table', 21),
(29, '2022_02_26_180358_add_item_accounts_to_materials_table', 22),
(30, '2022_02_26_182608_drop_materials_table', 23),
(31, '2022_02_26_182908_add_opening_cost_price_to_materials_table', 24),
(32, '2022_03_06_120436_add_project_code_to_customers_table', 25),
(33, '2022_03_06_121148_add_address_to_customers_table', 26),
(34, '2022_03_06_122220_add_email_to_customers_table', 27),
(35, '2022_03_06_124826_remove_project_code_from_projects_table', 28),
(36, '2022_03_06_185209_create_exterior_design_fees_table', 29),
(37, '2022_03_06_191013_create_structure_design_fees_table', 30),
(38, '2022_03_06_232222_add_approved_by_to_projects_table', 31),
(39, '2022_03_06_232721_create_approved_bies_table', 32),
(40, '2022_03_07_153017_create_departments_table', 33),
(41, '2022_03_07_160507_create_permission_tables', 34),
(42, '2022_03_07_224304_add_phone_to_users_table', 35),
(43, '2022_03_08_013300_add_display_order_to_projects_table', 36);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(6, 'App\\User', 8),
(6, 'App\\User', 13),
(7, 'App\\User', 19),
(0, 'App\\User', 29),
(0, 'App\\User', 30),
(0, 'App\\User', 23),
(0, 'App\\User', 28),
(0, 'App\\User', 31),
(0, 'App\\User', 27),
(7, 'App\\User', 7),
(7, 'App\\User', 33),
(7, 'App\\User', 41),
(5, 'App\\User', 9),
(7, 'App\\User', 20),
(5, 'App\\User', 16),
(0, 'App\\User', 40),
(5, 'App\\User', 35),
(0, 'App\\User', 35),
(0, 'App\\User', 37),
(7, 'App\\User', 14),
(5, 'App\\User', 5),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(0, 'App\\User', 17),
(6, 'App\\User', 18),
(7, 'App\\User', 2),
(7, 'App\\User', 1),
(0, 'App\\User', 21),
(0, 'App\\User', 22),
(0, 'App\\User', 32),
(7, 'App\\User', 42),
(5, 'App\\User', 43),
(7, 'App\\User', 45),
(7, 'App\\User', 38),
(0, 'App\\User', 26),
(7, 'App\\User', 15),
(0, 'App\\User', 36),
(6, 'App\\User', 34),
(5, 'App\\User', 3),
(6, 'App\\User', 12),
(0, 'App\\User', 46),
(0, 'App\\User', 47),
(6, 'App\\User', 4),
(6, 'App\\User', 6),
(0, 'App\\User', 25),
(0, 'App\\User', 44),
(7, 'App\\User', 39),
(5, 'App\\User', 24),
(5, 'App\\User', 48),
(0, 'App\\User', 49);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'floor_plan_view', 'web', '2022-03-07 17:32:08', '2022-03-07 17:32:08'),
(6, 'floor_plan_create', 'web', '2022-03-07 17:32:13', '2022-03-07 17:32:13'),
(7, 'quotation_proposal_view', 'web', '2022-03-07 17:33:00', '2022-03-07 17:33:00'),
(8, 'quotation_proposal_create', 'web', '2022-03-07 17:33:04', '2022-03-07 17:33:04'),
(9, 'archi_exterior_design_view', 'web', '2022-03-07 17:34:42', '2022-03-07 17:34:42'),
(10, 'archi_exterior_design_create', 'web', '2022-03-07 17:34:47', '2022-03-07 17:34:47'),
(11, 'accept_project_module', 'web', '2022-03-07 17:49:20', '2022-03-07 17:49:20'),
(12, 'accept_inventory_module', 'web', '2022-03-07 17:57:01', '2022-03-07 17:57:01'),
(13, 'accept_purchase_module', 'web', '2022-03-07 17:57:24', '2022-03-07 17:57:24'),
(14, 'accept_engineer_module', 'web', '2022-03-07 17:57:41', '2022-03-07 17:57:41'),
(15, 'accept_accounting_module', 'web', '2022-03-07 17:57:52', '2022-03-07 17:57:52'),
(16, 'accept_qs_module', 'web', '2022-03-07 17:58:08', '2022-03-07 17:58:08'),
(17, 'accept_sale_module', 'web', '2022-03-07 17:58:22', '2022-03-07 17:58:22'),
(18, 'accept_hr_module', 'web', '2022-03-07 17:58:33', '2022-03-07 17:58:33'),
(19, 'accept_documents_module', 'web', '2022-03-07 17:58:46', '2022-03-07 17:58:46'),
(20, 'accept_setting_module', 'web', '2022-03-07 17:58:59', '2022-03-07 17:58:59'),
(21, 'accept_activities_module', 'web', '2022-03-07 17:59:12', '2022-03-07 17:59:12'),
(22, 'structure_design_view', 'web', '2022-03-07 18:11:53', '2022-03-07 18:11:53'),
(23, 'structure_design_create', 'web', '2022-03-07 18:11:59', '2022-03-07 18:11:59'),
(24, 'exterior_design_fees_view', 'web', '2022-03-07 18:17:14', '2022-03-07 18:17:14'),
(25, 'structure_design_fees_view', 'web', '2022-03-07 18:17:33', '2022-03-07 18:17:33'),
(26, 'customer_edit_delete', 'web', '2022-03-15 09:04:45', '2022-03-15 09:04:45'),
(27, 'project_delete', 'web', '2022-03-15 09:04:51', '2022-03-15 09:04:51'),
(28, 'project_file_delete', 'web', '2022-03-17 07:54:33', '2022-03-17 07:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `permits`
--

CREATE TABLE `permits` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permit_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permits`
--

INSERT INTO `permits` (`id`, `project_id`, `user_id`, `permit_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 26, 3, 'public/permit/N72yVtxlnnn1U4ozAh9kZVJpVDZr1XayloG5Eo7a.pdf', 'Quotation Proposal - Dr Moe Zaw _ Shwe Pyi Thar Tsp (Building Permit Proposal).pdf', NULL, '2022-03-16', '17:45:37', '2022-03-16 10:45:37', '2022-03-16 10:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `processing_files`
--

CREATE TABLE `processing_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `processing_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `processing_files`
--

INSERT INTO `processing_files` (`id`, `project_id`, `user_id`, `processing_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(2, 17, 12, 'public/processing_file/VgijaoYkPnXDCzY63ir8b02uPsshJHXZLAetdMvs.dwg', 'daw khin aye aye khine 28.3.2022.dwg', NULL, '2022-03-28', '15:46:19', '2022-03-28 08:46:19', '2022-03-28 08:46:19'),
(3, 17, 12, 'public/processing_file/bnWUR3qoRSpj2qvCl4bIIGaHKBNWJqyAYAFrtjkA', '23.03.2022.skp', NULL, '2022-03-28', '16:15:21', '2022-03-28 09:15:21', '2022-03-28 09:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `floor_plan_status` text COLLATE utf8mb4_unicode_ci,
  `floor_plan_upload_date` text COLLATE utf8mb4_unicode_ci,
  `quotation_proposal_status` text COLLATE utf8mb4_unicode_ci,
  `quotation_proposal_date` text COLLATE utf8mb4_unicode_ci,
  `exterior_design_fees` text COLLATE utf8mb4_unicode_ci,
  `structure_design_fees` text COLLATE utf8mb4_unicode_ci,
  `archi_exterior_design_status` text COLLATE utf8mb4_unicode_ci,
  `archi_exterior_design_upload_date` text COLLATE utf8mb4_unicode_ci,
  `structure_design_status` text COLLATE utf8mb4_unicode_ci,
  `structure_design_upload_date` text COLLATE utf8mb4_unicode_ci,
  `created_date` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `project_status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exterior_design_fees_date` text COLLATE utf8mb4_unicode_ci,
  `structure_design_fees_date` text COLLATE utf8mb4_unicode_ci,
  `approved_status` text COLLATE utf8mb4_unicode_ci,
  `approved_date` text COLLATE utf8mb4_unicode_ci,
  `display_order` int(11) NOT NULL DEFAULT '0',
  `permit_status` text COLLATE utf8mb4_unicode_ci,
  `permit_upload_date` text COLLATE utf8mb4_unicode_ci,
  `contract_status` text COLLATE utf8mb4_unicode_ci,
  `contract_upload_date` text COLLATE utf8mb4_unicode_ci,
  `processing_file` text COLLATE utf8mb4_unicode_ci,
  `processing_file_upload_date` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `customer_id`, `floor_plan_status`, `floor_plan_upload_date`, `quotation_proposal_status`, `quotation_proposal_date`, `exterior_design_fees`, `structure_design_fees`, `archi_exterior_design_status`, `archi_exterior_design_upload_date`, `structure_design_status`, `structure_design_upload_date`, `created_date`, `remark`, `project_status`, `created_at`, `updated_at`, `exterior_design_fees_date`, `structure_design_fees_date`, `approved_status`, `approved_date`, `display_order`, `permit_status`, `permit_upload_date`, `contract_status`, `contract_upload_date`, `processing_file`, `processing_file_upload_date`) VALUES
(2, 2, 'finished', '2022-06-01 16:58:37', NULL, NULL, NULL, NULL, 'finished', '2022-03-17 13:41:36', 'finished', '2022-03-24 11:46:14', '2022-03-15', NULL, 'Proposal', '2022-03-15 09:37:54', '2022-06-01 09:58:37', NULL, NULL, NULL, NULL, 7, NULL, NULL, 'finished', '2022-03-16 22:53:37', NULL, NULL),
(5, 4, 'finished', '2022-03-16 22:50:27', 'finished', '2022-03-16 22:50:45', NULL, NULL, 'finished', '2022-04-04 16:00:22', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:26:46', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 8, NULL, NULL, 'finished', '2022-03-16 22:51:32', NULL, NULL),
(6, 5, 'finished', '2022-04-19 10:42:31', 'finished', '2022-05-08 11:51:26', NULL, 'done', 'finished', '2022-05-09 15:10:14', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:34:27', '2022-05-09 08:10:14', NULL, '2022-04-07 16:48:27', NULL, NULL, 1, NULL, NULL, 'finished', '2022-03-16 22:39:00', NULL, NULL),
(7, 6, 'finished', '2022-04-04 16:58:09', 'finished', '2022-03-16 21:42:03', 'done', NULL, 'finished', '2022-04-28 15:19:48', 'finished', '2022-03-25 12:01:33', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:05:40', '2022-04-29 10:15:57', '2022-03-18 09:34:07', NULL, NULL, NULL, 10, NULL, NULL, 'finished', '2022-03-16 21:43:00', NULL, NULL),
(8, 7, 'finished', '2022-03-21 11:38:04', 'finished', '2022-03-16 21:33:37', NULL, NULL, 'finished', '2022-05-24 10:48:51', 'finished', '2022-03-21 13:02:54', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:16:57', '2022-05-24 03:48:51', NULL, NULL, NULL, NULL, 9, NULL, NULL, 'finished', '2022-03-16 21:37:02', NULL, NULL),
(9, 8, 'finished', '2022-04-22 11:03:08', 'finished', '2022-03-16 21:15:44', NULL, NULL, 'finished', '2022-05-17 13:53:07', 'finished', '2022-06-06 11:37:13', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:28:19', '2022-06-06 04:37:13', NULL, NULL, NULL, NULL, 11, NULL, NULL, 'finished', '2022-03-16 21:19:08', NULL, NULL),
(10, 9, 'finished', '2022-03-17 11:37:49', NULL, NULL, NULL, NULL, 'finished', '2022-04-29 17:04:51', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:38:04', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 13, NULL, NULL, 'finished', '2022-03-16 21:02:33', NULL, NULL),
(11, 10, 'finished', '2022-04-01 11:35:54', 'finished', '2022-03-16 20:53:55', NULL, NULL, 'finished', '2022-05-28 15:16:08', 'finished', '2022-03-23 16:00:40', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:49:11', '2022-05-28 08:16:08', NULL, NULL, NULL, NULL, 12, NULL, NULL, 'finished', '2022-03-16 20:57:21', NULL, NULL),
(12, 11, 'finished', '2022-03-16 20:30:43', 'finished', '2022-03-16 20:31:28', NULL, NULL, 'finished', '2022-04-29 17:15:01', 'finished', '2022-03-24 17:15:46', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:04:41', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 14, NULL, NULL, 'finished', '2022-03-16 20:34:27', NULL, NULL),
(13, 12, 'finished', '2022-03-16 20:13:53', 'finished', '2022-03-16 20:14:41', NULL, NULL, 'finished', '2022-05-06 10:22:12', 'finished', '2022-03-25 14:04:22', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:10:30', '2022-05-06 03:22:12', NULL, NULL, NULL, NULL, 15, NULL, NULL, 'finished', '2022-03-16 20:16:59', NULL, NULL),
(14, 13, 'finished', '2022-04-05 15:33:30', 'finished', '2022-03-16 20:05:03', NULL, NULL, 'finished', '2022-05-30 15:52:23', 'finished', '2022-05-30 13:23:28', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:18:33', '2022-05-30 08:52:23', NULL, NULL, NULL, NULL, 16, NULL, NULL, 'finished', '2022-03-16 20:06:52', NULL, NULL),
(15, 14, 'finished', '2022-03-18 09:17:16', 'finished', '2022-03-31 11:45:59', NULL, NULL, 'finished', '2022-05-23 11:33:07', 'finished', '2022-05-30 10:29:44', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:51:50', '2022-05-30 03:29:44', NULL, NULL, NULL, NULL, 17, NULL, NULL, 'finished', '2022-03-31 11:40:20', NULL, NULL),
(16, 15, 'finished', '2022-04-06 15:45:14', 'finished', '2022-03-16 18:32:29', 'done', NULL, 'finished', '2022-05-10 12:28:56', 'finished', '2022-05-09 11:20:10', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:57:43', '2022-05-10 05:28:56', '2022-03-17 13:59:03', NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 'finished', '2022-03-28 16:02:30', 'finished', '2022-04-10 00:08:45', NULL, NULL, 'finished', '2022-04-20 09:58:12', 'finished', '2022-04-21 09:21:42', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:13:15', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 19, NULL, NULL, 'finished', '2022-04-10 00:07:19', 'finished', '2022-03-28 16:15:21'),
(18, 17, 'finished', '2022-03-16 18:19:57', 'finished', '2022-05-28 00:06:12', NULL, NULL, 'finished', '2022-06-01 15:17:50', 'finished', '2022-06-03 13:22:10', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:30:27', '2022-06-03 06:22:10', NULL, NULL, NULL, NULL, 20, NULL, NULL, 'finished', '2022-05-28 00:06:42', NULL, NULL),
(19, 18, 'finished', '2022-03-16 18:03:55', NULL, NULL, NULL, NULL, 'finished', '2022-05-13 09:20:30', 'finished', '2022-05-13 12:32:37', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:39:12', '2022-05-13 05:32:37', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 19, 'finished', '2022-03-17 11:31:06', 'finished', '2022-03-16 18:12:01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:09:27', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 20, 'finished', '2022-04-19 12:13:35', NULL, NULL, NULL, NULL, 'finished', '2022-03-26 10:31:25', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:33:44', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 21, 'finished', '2022-03-24 10:00:07', 'finished', '2022-04-26 23:11:03', NULL, NULL, 'finished', '2022-04-28 09:22:53', 'finished', '2022-06-01 10:42:00', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:44:19', '2022-06-01 03:42:00', NULL, NULL, NULL, NULL, 24, NULL, NULL, 'finished', '2022-04-26 23:13:41', NULL, NULL),
(23, 22, 'finished', '2022-03-24 13:44:53', NULL, NULL, NULL, NULL, 'finished', '2022-05-05 11:05:44', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:50:13', '2022-05-05 04:05:44', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 23, 'finished', '2022-03-30 09:57:03', 'finished', '2022-03-16 17:58:29', 'done', 'done', 'finished', '2022-05-09 15:32:29', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:56:36', '2022-05-09 08:32:29', '2022-03-16 18:00:17', '2022-03-16 18:00:37', NULL, NULL, 26, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 24, 'finished', '2022-04-06 15:45:55', NULL, NULL, 'done', NULL, 'finished', '2022-05-30 15:31:14', 'finished', '2022-05-23 17:02:50', '2022-03-16', NULL, 'Proposal', '2022-03-16 09:04:38', '2022-05-30 08:31:14', '2022-03-16 17:52:07', NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 25, 'finished', '2022-05-08 11:48:28', 'finished', '2022-03-16 17:24:29', NULL, NULL, 'finished', '2022-03-16 17:26:55', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:10:26', '2022-05-08 04:51:55', NULL, NULL, NULL, NULL, 28, 'finished', '2022-03-16 17:45:37', 'finished', '2022-05-08 11:51:55', NULL, NULL),
(27, 26, 'finished', '2022-03-16 17:19:28', 'finished', '2022-03-16 17:19:55', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:14:19', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 27, NULL, NULL, 'finished', '2022-03-16 17:17:39', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:22:52', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 28, NULL, NULL, 'finished', '2022-03-16 17:14:33', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:26:41', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 29, 'finished', '2022-03-18 09:32:20', 'finished', '2022-03-16 23:59:15', NULL, NULL, 'finished', '2022-03-17 10:50:08', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 16:57:25', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 32, NULL, NULL, 'finished', '2022-03-17 00:03:09', NULL, NULL),
(31, 30, 'finished', '2022-03-18 10:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:20:51', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 33, NULL, NULL, 'finished', '2022-03-17 00:21:10', NULL, NULL),
(32, 31, 'finished', '2022-03-18 09:34:28', 'finished', '2022-03-17 00:31:02', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:30:01', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 34, NULL, NULL, 'finished', '2022-03-17 00:31:23', NULL, NULL),
(33, 32, 'finished', '2022-03-17 13:46:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:40:39', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 35, NULL, NULL, 'finished', '2022-03-17 00:41:37', NULL, NULL),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-03', NULL, 'Proposal', '2022-04-03 09:30:57', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'finished', '2022-04-03 16:32:59', NULL, NULL),
(36, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21', NULL, 'Proposal', '2022-04-21 05:30:51', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21', NULL, 'Proposal', '2022-04-21 05:36:23', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 36, NULL, NULL, 'finished', '2022-06-05 14:26:55', NULL, NULL, 'finished', '2022-06-06 09:30:54', NULL, NULL, '2022-04-26', NULL, 'Proposal', '2022-04-26 16:20:58', '2022-06-06 02:30:54', NULL, NULL, NULL, NULL, 5, NULL, NULL, 'finished', '2022-06-05 14:38:55', NULL, NULL),
(39, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26', NULL, 'Proposal', '2022-04-26 16:23:46', '2022-04-29 10:15:57', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 03:14:45', '2022-05-20 03:14:45', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 03:29:42', '2022-05-20 03:29:42', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:24:31', '2022-05-20 06:24:31', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:33:24', '2022-05-20 06:33:24', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:41:18', '2022-05-20 06:41:18', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:56:06', '2022-05-20 06:56:06', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_users`
--

CREATE TABLE `projects_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_users`
--

INSERT INTO `projects_users` (`id`, `projects_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 22, '', '2022-04-29 09:46:00', '2022-05-07 02:25:55'),
(3, 31, 23, '', '2022-04-30 10:30:54', '2022-04-30 10:30:54'),
(5, 5, 26, '', '2022-05-06 11:20:30', '2022-05-06 11:20:30'),
(6, 6, 26, '', '2022-05-06 11:20:48', '2022-05-06 11:20:48'),
(7, 7, 25, '', '2022-05-06 11:21:59', '2022-05-06 11:21:59'),
(8, 2, 28, '', '2022-05-06 11:24:46', '2022-05-29 13:42:59'),
(9, 12, 31, '', '2022-05-06 11:25:30', '2022-05-06 11:25:30'),
(10, 15, 31, '', '2022-05-06 11:25:39', '2022-05-06 11:25:39'),
(11, 13, 32, '', '2022-05-06 11:25:59', '2022-05-06 11:25:59'),
(12, 26, 36, '', '2022-05-06 11:26:24', '2022-05-06 11:26:24'),
(13, 22, 37, '', '2022-05-06 11:26:40', '2022-05-06 11:26:40'),
(14, 8, 22, '', '2022-05-06 11:27:02', '2022-05-06 11:27:02'),
(15, 11, 30, '', '2022-05-29 13:38:36', '2022-05-29 13:38:36'),
(16, 14, 25, '', '2022-05-29 13:39:48', '2022-05-29 13:39:48'),
(17, 32, 29, '', '2022-05-29 13:41:02', '2022-05-29 13:41:02'),
(18, 17, 44, '', '2022-05-29 13:45:59', '2022-05-29 13:45:59'),
(19, 9, 36, '', '2022-05-29 13:46:55', '2022-05-29 13:46:55'),
(20, 18, 47, '', '2022-05-30 09:05:55', '2022-05-30 09:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `qs_team_check_passes`
--

CREATE TABLE `qs_team_check_passes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `eng_request_item_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `eng_request_qty` int(11) DEFAULT NULL,
  `qs_passed_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `request_info_id` int(11) DEFAULT NULL,
  `fixed_asset_id` int(11) DEFAULT NULL,
  `transferred_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qs_team_check_passes`
--

INSERT INTO `qs_team_check_passes` (`id`, `user_id`, `eng_request_item_id`, `project_id`, `eng_request_qty`, `qs_passed_qty`, `created_at`, `updated_at`, `request_info_id`, `fixed_asset_id`, `transferred_from_id`) VALUES
(1, 19, 1, 0, 3, 2, '2022-04-29 09:48:32', '2022-04-29 09:48:32', 1, 5, 0),
(2, 19, 2, 0, 1, 1, '2022-04-30 05:23:20', '2022-04-30 05:23:20', 2, 4, 0),
(3, 19, 5, 0, 1, 1, '2022-05-06 10:55:21', '2022-05-06 10:55:21', 4, 3, 0),
(4, 10, 3, 0, 3, 3, '2022-05-06 11:12:46', '2022-05-06 11:12:46', 3, 5, 0),
(5, 10, 4, 0, 2, 1, '2022-05-06 11:12:46', '2022-05-06 11:12:46', 3, 6, 0),
(6, 10, 3, 0, 3, 3, '2022-05-06 11:13:02', '2022-05-06 11:13:02', 3, 5, 0),
(7, 10, 4, 0, 2, 1, '2022-05-06 11:13:02', '2022-05-06 11:13:02', 3, 6, 0),
(8, 10, 6, 0, 1, 1, '2022-05-10 03:30:39', '2022-05-10 03:30:39', 5, 2, 0),
(9, 10, 7, 0, 2, 2, '2022-05-10 03:32:34', '2022-05-10 03:32:34', 6, 5, 0),
(10, 10, 8, 0, 10, 10, '2022-05-19 07:07:55', '2022-05-19 07:07:55', 7, 13, 0),
(11, 21, 9, 0, 1, 1, '2022-05-30 07:54:43', '2022-05-30 07:54:43', 8, 3, 0),
(12, 21, 10, 0, 3, 3, '2022-05-30 08:00:25', '2022-05-30 08:00:25', 9, 5, 0),
(13, 11, 11, 0, 3, 3, '2022-05-31 02:39:50', '2022-05-31 02:39:50', 10, 14, 0),
(14, 10, 12, 0, 115, 115, '2022-06-03 08:44:48', '2022-06-03 08:44:48', 11, 13, 0),
(15, 10, 14, 0, 1, 1, '2022-06-06 02:34:17', '2022-06-06 02:34:17', 13, 4, 0),
(16, 42, 13, 0, 1, 1, '2022-06-06 02:34:50', '2022-06-06 02:34:50', 12, 4, 0),
(17, 42, 15, 0, 1, 1, '2022-06-06 03:06:39', '2022-06-06 03:06:39', 14, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotationproposals`
--

CREATE TABLE `quotationproposals` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quotation_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotationproposals`
--

INSERT INTO `quotationproposals` (`id`, `project_id`, `user_id`, `quotation_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 29, 3, 'public/quotationproposal/Eo67F4lJsoynVrFuIeGeEc6KbLg1n876ng6tqbOx.pdf', 'Quotation - Ko Myo Min Zaw.pdf', NULL, '2022-03-16', '17:14:33', '2022-03-16 10:14:33', '2022-03-16 10:14:33'),
(2, 28, 3, 'public/quotationproposal/ZcbVGQWWevO8Dq8aLuUG5oIlFxqJMVA7dS0PFOd8.pdf', 'Quotation Proposal For DSPN.pdf', NULL, '2022-03-16', '17:17:39', '2022-03-16 10:17:39', '2022-03-16 10:17:39'),
(3, 27, 3, 'public/quotationproposal/mh6jEQdFpFTtS82VXs9SaSvSU6pxr4JSwYxNoSak.pdf', 'Ko Kyaw Myat Htoo Quotation.pdf', NULL, '2022-03-16', '17:19:55', '2022-03-16 10:19:55', '2022-03-16 10:19:55'),
(4, 26, 3, 'public/quotationproposal/lBb487rv6rtBa5gfBtwh8ipmcFike1VjGTyMilrV.pdf', 'Aye Chan Aung Quotation 22.2.22.pdf', NULL, '2022-03-16', '17:24:29', '2022-03-16 10:24:29', '2022-03-16 10:24:29'),
(5, 24, 3, 'public/quotationproposal/QKGTTVcMK5SRsjpUqa001rEE5mq75JL4gwGv3uXt.pdf', 'Quotation Proposal For KBN with Swimming  Pool (14.3.22).pdf', NULL, '2022-03-16', '17:57:46', '2022-03-16 10:57:46', '2022-03-16 10:57:46'),
(6, 24, 3, 'public/quotationproposal/QUcFf43x2zpl6TiMfpdobHBH4voEjnIGfdgdeyhc.pdf', 'Quotation Proposal For KBN without Swimming Pool.pdf', NULL, '2022-03-16', '17:58:29', '2022-03-16 10:58:29', '2022-03-16 10:58:29'),
(7, 20, 3, 'public/quotationproposal/oMkExbRbB8dReOaI0pfQjEWKR3YA87pSi50JM6q7.pdf', 'Ko Zayar Oo Final Revised 8.3.22.pdf', NULL, '2022-03-16', '18:12:01', '2022-03-16 11:12:01', '2022-03-16 11:12:01'),
(8, 18, 3, 'public/quotationproposal/9plTpcOAKfmTFtwFgytXW4IH69UWsYqgmBLpALIM.pdf', 'Quotation proposal for DWWL.pdf', NULL, '2022-03-16', '18:20:25', '2022-03-16 11:20:25', '2022-03-16 11:20:25'),
(9, 16, 3, 'public/quotationproposal/haTOqe91GpO6mSzoe56wCP4KWoob3A80jMd3KUgC.pdf', 'Ko Htut Aung Combine_1647353626.pdf', NULL, '2022-03-16', '18:32:29', '2022-03-16 11:32:29', '2022-03-16 11:32:29'),
(10, 15, 3, 'public/quotationproposal/59Bh1T6h7fCOINGRK360j7bJLByulYBbKWh3rF28.pdf', 'Ko Zaw Htut Aung ( combined ) 7.3.2022.pdf', NULL, '2022-03-16', '18:35:32', '2022-03-16 11:35:32', '2022-03-16 11:35:32'),
(11, 14, 3, 'public/quotationproposal/8Lsov57XjxCmLjb2dfwGZU1LhgpF6pDPuSTMSRtY.pdf', 'Ko Aung Khin Sint ( roofing ) 23.2.22.pdf', NULL, '2022-03-16', '20:05:03', '2022-03-16 13:05:03', '2022-03-16 13:05:03'),
(12, 13, 3, 'public/quotationproposal/tFrHPrseBLcjvFvpClipTWJzvt6ZVjEe50bJ4tkv.pdf', 'MAHninWuttYi-17.2.2022.pdf', NULL, '2022-03-16', '20:14:41', '2022-03-16 13:14:41', '2022-03-16 13:14:41'),
(13, 12, 3, 'public/quotationproposal/6vsHXI2e8rBIfXTKMyXxxKmT6jetJCfw3i94qztE.pdf', 'Quotation Proposal Ma Zin Wah 17.2.22.pdf', NULL, '2022-03-16', '20:31:28', '2022-03-16 13:31:28', '2022-03-16 13:31:28'),
(14, 11, 3, 'public/quotationproposal/KKhXAdOD1IjVvJspbcB1Uf9ZXt8deqNC9XNEot0V.pdf', 'KTL - Actual combined 3.2.2022_1645773372.pdf', NULL, '2022-03-16', '20:53:43', '2022-03-16 13:53:43', '2022-03-16 13:53:43'),
(15, 11, 3, 'public/quotationproposal/8pMu0GV78Vqr7EW99ffkXdVKxrHEQDR6QauVCtlf.pdf', 'Ko Tin latt - Modified (roofing).pdf', NULL, '2022-03-16', '20:53:55', '2022-03-16 13:53:55', '2022-03-16 13:53:55'),
(16, 9, 3, 'public/quotationproposal/UtkKnOCDwJQ4Ow3XPBPwPjkaGQxFAQ2F8owozpWT.pdf', '25.1.2022 - Ko Khant Si Thu - roof slab.pdf', NULL, '2022-03-16', '21:15:44', '2022-03-16 14:15:44', '2022-03-16 14:15:44'),
(17, 8, 3, 'public/quotationproposal/IE5WlVhC8i9gxkfEkMIbjRzyn0weL7ypLJpSd5du.pdf', 'Building Quotation.pdf', NULL, '2022-03-16', '21:32:35', '2022-03-16 14:32:35', '2022-03-16 14:32:35'),
(18, 8, 3, 'public/quotationproposal/zodYwARSjnGhGzshLAoTXkSpPjzbSzGInBYvOgba.pdf', 'Extra Land Area Concrete Work.pdf', NULL, '2022-03-16', '21:32:43', '2022-03-16 14:32:43', '2022-03-16 14:32:43'),
(19, 8, 3, 'public/quotationproposal/x0AvVU75iVw1mzJGUYKtziWBNACywPen3qAOtySI.pdf', 'KSH\'s Modified.pdf', NULL, '2022-03-16', '21:33:37', '2022-03-16 14:33:37', '2022-03-16 14:33:37'),
(20, 7, 3, 'public/quotationproposal/eXA1xz3w1DwHpwU1XIfOJn8fG6CAvUiYitMF34kv.pdf', 'Quotation Proposal - Final Approval revised.pdf', NULL, '2022-03-16', '21:42:03', '2022-03-16 14:42:03', '2022-03-16 14:42:03'),
(21, 6, 3, 'public/quotationproposal/ZqQiULm9DunmMFM45ISkMWWV05NdlJOTp5rNiF4i.pdf', 'Quotation Proposal-Ma Waddy(21.12.21)_Roofing_1640067336.pdf', NULL, '2022-03-16', '22:36:52', '2022-03-16 15:36:52', '2022-03-16 15:36:52'),
(22, 5, 3, 'public/quotationproposal/NzaMIE1MLmgOaJuROgTRyfPLdiSIKnf8FBDVPdTg.pdf', 'MSSDA Quotation.pdf', NULL, '2022-03-16', '22:50:45', '2022-03-16 15:50:45', '2022-03-16 15:50:45'),
(23, 30, 3, 'public/quotationproposal/Sy1dBCXyQDgcliBRZmJQ4CsPd7vDaX9KJydxk9jR.pdf', 'Quotation Proposal - Ma Nan Sandi (South Oakala) Fencing & Infrastructure Work.pdf', NULL, '2022-03-16', '23:59:15', '2022-03-16 16:59:15', '2022-03-16 16:59:15'),
(24, 32, 3, 'public/quotationproposal/eHnPjJ3RrUFSfUcCSyggdxfn2NszuzfY0D2pqSiP.pdf', 'Quotation Proposal For U Kyaw Zayar Tun -R3.pdf', NULL, '2022-03-17', '00:31:02', '2022-03-16 17:31:02', '2022-03-16 17:31:02'),
(25, 15, 3, 'public/quotationproposal/ERKFhNMEj7jlM0T17rHrXYKwA7GKVhRDhJ7RSJYc.pdf', 'Ko Zaw Htut Aung Contract Quotation (18.3.22).pdf', NULL, '2022-03-31', '11:45:59', '2022-03-31 04:45:59', '2022-03-31 04:45:59'),
(26, 17, 3, 'public/quotationproposal/OlLKwGy6gkDx715hsz6cYmjj9hwmglupvTbLsO7Y.pdf', 'Aunty Aye - 25.3.2022 ( combined ).pdf', NULL, '2022-04-10', '00:08:45', '2022-04-09 17:08:45', '2022-04-09 17:08:45'),
(27, 22, 3, 'public/quotationproposal/NqGV6NFJnumLmAvqEJ3kCOiw7LlKO1bPSohcjF0B.pdf', 'Ma Su Latt Combine 23.4.22.pdf', NULL, '2022-04-26', '23:11:03', '2022-04-26 16:11:03', '2022-04-26 16:11:03'),
(28, 6, 3, 'public/quotationproposal/GGpdXvfqqyQKjahR4d7vnk693Q2wHx8cb0eEIibW.pdf', 'Aye Chan Aung Quotation Update.pdf', NULL, '2022-05-08', '11:51:26', '2022-05-08 04:51:26', '2022-05-08 04:51:26'),
(29, 18, 3, 'public/quotationproposal/1KgV6tWI5gDcI9Ijdhjbe7DQluAcRdwBVHEm3bXg.pdf', 'Anty war 16.5.22.pdf', NULL, '2022-05-28', '00:06:12', '2022-05-27 17:06:12', '2022-05-27 17:06:12'),
(30, 38, 3, 'public/quotationproposal/FbHwLRrfvh440GxUHFJ9IlrSSiuM39fWtMRNh7zN.pdf', 'Ko Aung Zaw Latt Final Quotation ( 30.5.2022 ).pdf', NULL, '2022-06-05', '14:26:11', '2022-06-05 07:26:11', '2022-06-05 07:26:11'),
(31, 38, 3, 'public/quotationproposal/0mKbpx50BTr3hilg0wrdDJ9hDic2R2TD12XWmSiv.pdf', 'Ko Aung Zaw Latt Final Quotation ( 30.5.2022 ).pdf', NULL, '2022-06-05', '14:26:55', '2022-06-05 07:26:55', '2022-06-05 07:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `received_by_engineers`
--

CREATE TABLE `received_by_engineers` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_info_id` int(11) DEFAULT NULL,
  `received_status` text COLLATE utf8mb4_unicode_ci,
  `received_date` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `received_by_engineers`
--

INSERT INTO `received_by_engineers` (`id`, `request_info_id`, `received_status`, `received_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'received', '2022-04-29 12:00 AM', 22, '2022-04-29 09:49:23', '2022-04-29 09:49:23'),
(2, 2, 'received', '2022-04-30 12:00 AM', 22, '2022-04-30 05:24:46', '2022-04-30 05:24:46'),
(3, 4, 'received', '2022-05-10 12:00 AM', 22, '2022-05-06 10:56:02', '2022-05-06 10:56:02'),
(4, 8, 'received', '2022-05-30 12:00 AM', 22, '2022-05-30 07:56:20', '2022-05-30 07:56:20'),
(5, 9, 'received', '2022-05-30 12:00 AM', 22, '2022-05-30 08:01:17', '2022-05-30 08:01:17');

-- --------------------------------------------------------

--
-- Table structure for table `received_by_store_managers`
--

CREATE TABLE `received_by_store_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `engineer_return_infos_id` int(11) DEFAULT NULL,
  `received_status` text COLLATE utf8mb4_unicode_ci,
  `received_date` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `received_by_store_managers`
--

INSERT INTO `received_by_store_managers` (`id`, `engineer_return_infos_id`, `received_status`, `received_date`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'received', '2022-04-29 12:00 AM', 19, '2022-04-29 09:51:44', '2022-04-29 09:51:44'),
(2, 2, 'received', '2022-04-30 12:00 AM', 19, '2022-04-30 05:28:49', '2022-04-30 05:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `request_infos`
--

CREATE TABLE `request_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_scope` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `accept_reject_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_reject_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qs_team_check_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_check_sent_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_from_status` text COLLATE utf8mb4_unicode_ci,
  `main_warehouse_id` int(11) DEFAULT NULL,
  `other_site_id` int(11) DEFAULT NULL,
  `received_by_engineer_status` text COLLATE utf8mb4_unicode_ci,
  `received_date` text COLLATE utf8mb4_unicode_ci,
  `qs_team_check_date` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_check_sent_date` text COLLATE utf8mb4_unicode_ci,
  `projects_users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_infos`
--

INSERT INTO `request_infos` (`id`, `request_code`, `request_date`, `work_scope`, `user_id`, `project_id`, `customer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `logistics_team_check_sent_status`, `transfer_from_status`, `main_warehouse_id`, `other_site_id`, `received_by_engineer_status`, `received_date`, `qs_team_check_date`, `logistics_team_check_sent_date`, `projects_users_id`) VALUES
(1, 'O - 00001', '2022-04-29 12:00 AM', 'Brick Laying Work', 22, 0, 9, '2022-04-29 09:47:21', '2022-04-29 09:49:23', 'accept', '2022-04-29 16:47:55pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-04-29 12:00 AM', '2022-04-29 16:48:32pm', '2022-04-29 16:48:57pm', NULL),
(2, 'O - 00003', '2022-04-30 12:00 AM', 'Brick Laying', 22, 0, 9, '2022-04-30 05:22:05', '2022-04-30 05:24:46', 'accept', '2022-04-30 12:22:53pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-04-30 12:00 AM', '2022-04-30 12:23:20pm', '2022-04-30 12:23:56pm', NULL),
(3, 'O - 00007', '2022-04-30 12:00 AM', 'Brick Laying Work', 22, 0, 2, '2022-04-30 10:38:42', '2022-05-06 11:36:58', 'accept', '2022-04-30 17:40:29pm', 'finished', 'finished', 'warehouse', 0, 0, NULL, NULL, '2022-05-06 18:13:02pm', '2022-05-06 18:36:58pm', NULL),
(4, 'O - 00002', '2022-05-09 12:00 AM', 'Swimming Pool Foundation', 22, 0, 9, '2022-05-06 10:53:50', '2022-05-06 10:56:02', 'accept', '2022-05-06 17:54:50pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-05-10 12:00 AM', '2022-05-06 17:55:21pm', '2022-05-06 17:55:37pm', NULL),
(5, 'O - 003', '2022-05-06 12:00 AM', 'Foundation Formwork', 32, 0, 12, '2022-05-06 11:34:38', '2022-05-10 03:30:39', 'accept', '2022-05-10 10:30:14am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 10:30:39am', NULL, NULL),
(6, '0002', '2022-05-09 10:45 AM', 'Brick work and plastering work', 26, 0, 5, '2022-05-09 03:47:14', '2022-05-19 07:06:29', 'accept', '2022-05-19 14:06:29pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 10:32:34am', NULL, 6),
(7, 'O 0001', '2022-05-13 12:00 AM', 'မိုးရွာလျင်လိုအပ်သည့်နေရာကာရန်', 31, 0, 11, '2022-05-10 10:05:55', '2022-05-19 08:33:48', 'accept', '2022-05-19 15:33:48pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 14:07:55pm', NULL, 9),
(8, 'R-000008', '2022-05-30 12:00 AM', 'For Site Use', 22, 0, 9, '2022-05-30 07:53:03', '2022-05-30 07:56:20', 'accept', '2022-05-30 14:53:49pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-05-30 12:00 AM', '2022-05-30 14:54:43pm', '2022-05-30 14:55:43pm', 1),
(9, 'R-000009', '2022-05-30 12:00 AM', 'For Site Use', 22, 0, 9, '2022-05-30 07:59:37', '2022-05-30 08:01:17', 'accept', '2022-05-30 15:00:13pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-05-30 12:00 AM', '2022-05-30 15:00:25pm', '2022-05-30 15:00:44pm', 1),
(10, 'R-000010', '2022-05-30 12:00 AM', 'For Site Use', 22, 0, 9, '2022-05-30 08:03:06', '2022-05-31 02:39:50', 'accept', '2022-05-31 09:38:05am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:39:50am', NULL, 1),
(11, 'R-000011', '2022-06-02 06:00 PM', 'Cover for Building', 28, 0, 2, '2022-06-02 14:26:42', '2022-06-03 08:44:48', 'accept', '2022-06-03 15:44:37pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 15:44:48pm', NULL, 8),
(12, 'R-000012', '2022-06-03 12:00 AM', 'For Ground Floor', 32, 0, 12, '2022-06-03 10:21:55', '2022-06-06 02:34:50', 'accept', '2022-06-06 09:34:40am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 09:34:50am', NULL, 11),
(13, 'R-000013', '2022-06-08 03:00 PM', 'Compaction for Ground floor', 36, 0, 8, '2022-06-05 12:05:24', '2022-06-06 02:34:17', 'accept', '2022-06-06 09:33:57am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 09:34:17am', NULL, 19),
(14, 'R-000014', '2022-06-06 12:00 AM', 'For Site Mix', 47, 0, 17, '2022-06-06 03:01:35', '2022-06-06 03:06:39', 'accept', '2022-06-06 10:06:24am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 10:06:39am', NULL, 20),
(15, 'R-000015', '2022-06-06 12:00 AM', 'for water sto', 47, 0, 17, '2022-06-06 03:23:40', '2022-06-06 03:23:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20),
(16, 'R-000016', '2022-06-06 12:00 AM', 'for concrete casting', 47, 0, 17, '2022-06-06 03:26:09', '2022-06-06 03:26:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20),
(17, 'R-000017', '2022-06-06 12:00 AM', 'Earthwork (pipe length 150ft)', 47, 0, 17, '2022-06-06 04:12:01', '2022-06-06 04:12:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20),
(18, 'R-000018', '2022-06-06 12:00 AM', 'Earthwork (Pipe length 150ft)', 47, 0, 17, '2022-06-06 04:45:25', '2022-06-06 04:45:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `request_items`
--

CREATE TABLE `request_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fixed_asset_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_items`
--

CREATE TABLE `return_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `fixed_asset_id` text COLLATE utf8mb4_unicode_ci,
  `quantity` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `engineer_return_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_items`
--

INSERT INTO `return_items` (`id`, `fixed_asset_id`, `quantity`, `user_id`, `engineer_return_info_id`, `created_at`, `updated_at`) VALUES
(1, '5', '2', 22, 1, '2022-04-29 09:50:57', '2022-04-29 09:50:57'),
(2, '4', '1', 22, 2, '2022-04-30 05:26:01', '2022-04-30 05:26:01');

-- --------------------------------------------------------

--
-- Table structure for table `return_logistics_team_checks`
--

CREATE TABLE `return_logistics_team_checks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_qs_team_check_passes`
--

CREATE TABLE `return_qs_team_check_passes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci,
  `return_item_id` text COLLATE utf8mb4_unicode_ci,
  `qs_passed_qty` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `engineer_return_info_id` int(11) DEFAULT NULL,
  `fixed_asset_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_qs_team_check_passes`
--

INSERT INTO `return_qs_team_check_passes` (`id`, `user_id`, `return_item_id`, `qs_passed_qty`, `created_at`, `updated_at`, `engineer_return_info_id`, `fixed_asset_id`) VALUES
(1, '19', '1', 2, '2022-04-29 09:51:24', '2022-04-29 09:51:24', 1, 5),
(2, '19', '2', 1, '2022-04-30 05:28:22', '2022-04-30 05:28:22', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `return_transfer_infos`
--

CREATE TABLE `return_transfer_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_from` text COLLATE utf8mb4_unicode_ci,
  `transfer_to_warehouse_id` text COLLATE utf8mb4_unicode_ci,
  `sent_date` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `engineer_return_info_id` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_transfer_infos`
--

INSERT INTO `return_transfer_infos` (`id`, `transfer_from`, `transfer_to_warehouse_id`, `sent_date`, `remark`, `engineer_return_info_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'YGN_TKT_00007', '1', '2022-04-29 12:00 AM', NULL, '1', 19, '2022-04-29 09:51:35', '2022-04-29 09:51:35'),
(2, 'YGN_TKT_00007', '1', '2022-04-30 12:00 AM', NULL, '2', 19, '2022-04-30 05:28:33', '2022-04-30 05:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'Marketing', 'web', '2022-03-07 17:33:53', '2022-03-07 17:33:53'),
(6, 'Archi Designer', 'web', '2022-03-07 17:35:47', '2022-03-07 17:35:47'),
(7, 'Management/Director', 'web', '2022-03-07 17:37:37', '2022-03-07 17:37:37'),
(0, 'Engineer', 'web', '2022-04-24 08:33:26', '2022-04-24 08:33:26'),
(0, 'QS/Procurement', 'web', '2022-05-30 09:06:48', '2022-05-30 09:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(17, 5),
(19, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(19, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(9, 7),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 7),
(24, 7),
(25, 7),
(26, 7),
(27, 7),
(28, 7),
(12, 0),
(13, 0),
(14, 0),
(16, 0),
(17, 0),
(19, 0),
(20, 0),
(21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sent_by_users`
--

CREATE TABLE `sent_by_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sending_date` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `structure_designs`
--

CREATE TABLE `structure_designs` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `structure_design_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structure_designs`
--

INSERT INTO `structure_designs` (`id`, `project_id`, `user_id`, `structure_design_file`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'public/structuredesign/dazDGP7TC164gOUow9QzdrGYzVBGnDaMGu3z2241.pdf', 'U Nyi Nyi _ Structure Drawing Final.pdf', NULL, '2022-03-17', '13:43:50', '2022-03-17 06:43:50', '2022-03-17 06:43:50'),
(2, 8, 6, 'public/structuredesign/hooc7pJwd9R8qkeBfYj0te5GxHHRui11bD1WKslS.rar', 'Ko San Htoo (Structure).rar', NULL, '2022-03-21', '13:02:54', '2022-03-21 06:02:54', '2022-03-21 06:02:54'),
(3, 11, 6, 'public/structuredesign/FcGMRNf7YtQOqyeJzPQ0WCEOPAxaf2zxP4g2rANT.rar', 'Ko Tin Lat (Structure) 21.3.2022.rar', NULL, '2022-03-23', '16:00:40', '2022-03-23 09:00:40', '2022-03-23 09:00:40'),
(4, 2, 6, 'public/structuredesign/hY47gXETyLfWG6KO2H4u7f0r9fuXR1Pj50LXCB7W.rar', 'UN-PMY-STRU-R2-10032022.rar', NULL, '2022-03-24', '11:44:59', '2022-03-24 04:44:59', '2022-03-24 04:44:59'),
(5, 2, 6, 'public/structuredesign/hhjzHQGfykGCCEJcNAQS0d0Mb0wC5YJ2gn9ep5G6.pdf', 'GA Dwg Rev 1_.pdf', NULL, '2022-03-24', '11:45:49', '2022-03-24 04:45:49', '2022-03-24 04:45:49'),
(6, 2, 6, 'public/structuredesign/CoFUx0RGpw0QplzyXzBYVHuynD9Wfhsaz3tU0uni.pdf', 'Shop Dwg Rev 1.pdf', NULL, '2022-03-24', '11:46:14', '2022-03-24 04:46:14', '2022-03-24 04:46:14'),
(7, 2, 6, 'public/structuredesign/enNhMoQPvX7OSdwIAFaQcgsClfuGvAHPeDLPxvJQ.pdf', 'Stairs Shop Dwg.pdf', NULL, '2022-03-24', '11:46:14', '2022-03-24 04:46:14', '2022-03-24 04:46:14'),
(8, 12, 6, 'public/structuredesign/1k9nxsyGbpFibAn7Z0jGD2ZUv2VG4Voo6lwTxm7p.rar', 'Ma Zin War(Structure).rar', NULL, '2022-03-24', '17:15:03', '2022-03-24 10:15:03', '2022-03-24 10:15:03'),
(9, 12, 6, 'public/structuredesign/TIj2aclORN3MpBBnfNt3IRRbaHYyB3Oq4gBvLPPs.rar', 'Ma Zin War(Structure).rar', NULL, '2022-03-24', '17:15:46', '2022-03-24 10:15:46', '2022-03-24 10:15:46'),
(10, 7, 6, 'public/structuredesign/11lLZ96XsHIsymJwym3tviS08BQZqYKZ4c5tFujj.rar', 'Ko Hlwan Moe Thu Structure.rar', NULL, '2022-03-25', '12:01:33', '2022-03-25 05:01:33', '2022-03-25 05:01:33'),
(11, 13, 6, 'public/structuredesign/YwjzOiyAbY50m0YrZKUDJk9wXZukr3Uo8hgQjYbj.rar', 'MHWY-Structure.rar', NULL, '2022-03-25', '14:04:22', '2022-03-25 07:04:22', '2022-03-25 07:04:22'),
(12, 9, 6, 'public/structuredesign/KjZmxv8gmA6KFAuymfPBox5JWT1Tw8DxnuvjO1tC.rar', 'Ko Khant Si Thu Structure.rar', NULL, '2022-03-26', '14:04:04', '2022-03-26 07:04:04', '2022-03-26 07:04:04'),
(13, 14, 6, 'public/structuredesign/GK6izm7KeiI5gzqA9MhmB9ZHdAcuvCL9IHy0roKz.rar', 'Ko Aung Khin Sint Structure.rar', NULL, '2022-03-26', '14:14:12', '2022-03-26 07:14:12', '2022-03-26 07:14:12'),
(14, 16, 6, 'public/structuredesign/mox6vqQn1CDqSGKAq0bZzYqKDKqHIhqwUFn2q8FJ.rar', 'Ko Htut Aung Khant - Stru-R3-8.4.2022.rar', NULL, '2022-04-08', '13:39:36', '2022-04-08 06:39:36', '2022-04-08 06:39:36'),
(15, 15, 6, 'public/structuredesign/WyU5a4p7q94eaRUjsI9aNQlsD1iqw2cLLlqUg9YV.rar', 'Ko Zaw Htut Aung.rar', NULL, '2022-04-21', '09:20:26', '2022-04-21 02:20:26', '2022-04-21 02:20:26'),
(16, 17, 6, 'public/structuredesign/AW0chW6D979qQJ42Jx16JP0bKfsZOPClAi59Agtv.rar', 'Daw Khin Aye Aye Khine.rar', NULL, '2022-04-21', '09:21:28', '2022-04-21 02:21:28', '2022-04-21 02:21:28'),
(17, 17, 6, 'public/structuredesign/Mi5b8m7ozIJFMneH6t5m0H6rK1738psN7oYAJogM.rar', 'Daw Khin Aye Aye Khine.rar', NULL, '2022-04-21', '09:21:42', '2022-04-21 02:21:42', '2022-04-21 02:21:42'),
(18, 22, 6, 'public/structuredesign/pmJ2Iba7CGRTi0Ak32fpwRPAdBpCfhtqBCMWpceG.rar', 'Ma Sulat Kyaw Min-Structure.rar', NULL, '2022-04-26', '11:40:00', '2022-04-26 04:40:00', '2022-04-26 04:40:00'),
(19, 15, 6, 'public/structuredesign/KOW1bcmKgrQvQjr06toooE5DkSeULSWKsDrpXmkn.rar', 'Ko Zaw Htut Aung 6in Revised.rar', NULL, '2022-05-03', '10:56:07', '2022-05-03 03:56:07', '2022-05-03 03:56:07'),
(20, 9, 6, 'public/structuredesign/6BiLwy2zyMj0DUxd3NERvny8UzeT0woFwV6mBUrP.rar', 'Ko Khant Sithu-Stru-R1 - 5.5.2022.rar', NULL, '2022-05-05', '13:31:20', '2022-05-05 06:31:20', '2022-05-05 06:31:20'),
(21, 16, 6, 'public/structuredesign/PhcwPaVEciLDLeki1zctpzvVerguqbo9Z8ZTxjNl.rar', 'Ko Htut Aung Structure.rar', NULL, '2022-05-09', '11:20:10', '2022-05-09 04:20:10', '2022-05-09 04:20:10'),
(22, 19, 6, 'public/structuredesign/PH2xqUN86i7E5WTuiCEyzUsTHmGxObdN4oT5wZXu.rar', 'Ma Yamin-Structure-R0-12.5.2022.rar', NULL, '2022-05-13', '12:32:37', '2022-05-13 05:32:37', '2022-05-13 05:32:37'),
(23, 18, 6, 'public/structuredesign/Wh707qpz3GI8YIPSnFF4kZ9sbOwBNWljjQwglWPw.rar', 'Daw War War Lwin (Tharketa)-Strudwg-R0-19.5.2022.rar', NULL, '2022-05-19', '16:07:38', '2022-05-19 09:07:38', '2022-05-19 09:07:38'),
(24, 25, 6, 'public/structuredesign/cbja523czPEPtGPaneIyA4IdCPuwuQDlZO09fuOd.rar', 'Ko Myat Ko Ko-Stru-R0-23.5.2022.rar', NULL, '2022-05-23', '17:02:50', '2022-05-23 10:02:50', '2022-05-23 10:02:50'),
(25, 18, 6, 'public/structuredesign/jssmMwaEFt606nQ7uL4kSyIEcEOOb2NZrJqSaG1g.rar', 'Daw War War Lwin (Tharketa)-Strudwg-R1-26.5.2022.rar', NULL, '2022-05-26', '11:32:20', '2022-05-26 04:32:20', '2022-05-26 04:32:20'),
(26, 15, 6, 'public/structuredesign/H2AGGmLaASWkpC1HJaxcppeZHOq0uRTnCYR3Byct.rar', 'Ko Zaw Htut Aung (Mayangone)-Structure-R5 -27.5.2022.rar', NULL, '2022-05-30', '10:29:44', '2022-05-30 03:29:44', '2022-05-30 03:29:44'),
(27, 14, 6, 'public/structuredesign/5UdJP3usDK1npxqkvbSYUWGJXWXkYro13D1FJI92.rar', 'KAKS.Strudwg.R01.30.5.2022.rar', NULL, '2022-05-30', '13:23:28', '2022-05-30 06:23:28', '2022-05-30 06:23:28'),
(28, 22, 6, 'public/structuredesign/hwZKvoXBdp6ZAJ0wodLKoR7gtgfzEaRmsYWsdeAB.rar', 'Ma Sulat Kyaw Min-Structure.rar', NULL, '2022-06-01', '10:42:00', '2022-06-01 03:42:00', '2022-06-01 03:42:00'),
(29, 18, 6, 'public/structuredesign/R4RuI2yhwFJonbbdh47crifEpK2bydulmsYjWzHx.rar', 'Daw War War Lwin (Tharketa)-Strudwg-R2-3.6.2022.rar', NULL, '2022-06-03', '13:22:10', '2022-06-03 06:22:10', '2022-06-03 06:22:10'),
(30, 9, 6, 'public/structuredesign/5CAwkaIxXO0Soe7VGb7RyF1iNS8WjO6F2ABEQRQV.rar', 'Ko Khant Sithu-Stru-R2 - 6.6.2022.rar', NULL, '2022-06-06', '11:37:13', '2022-06-06 04:37:13', '2022-06-06 04:37:13');

-- --------------------------------------------------------

--
-- Table structure for table `structure_design_fees`
--

CREATE TABLE `structure_design_fees` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `structure_design_fees` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `upload_date` text COLLATE utf8mb4_unicode_ci,
  `upload_time` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `structure_design_fees`
--

INSERT INTO `structure_design_fees` (`id`, `project_id`, `user_id`, `structure_design_fees`, `original_name`, `remark`, `upload_date`, `upload_time`, `created_at`, `updated_at`) VALUES
(1, 24, 3, 'public/quotationproposal/e6mJHwN2kebQ8LiTfejKQ3ZkfhakBc7yy39JnXrB.pdf', 'Ko Banyar Structure Fees.pdf', NULL, '2022-03-16', '18:00:37', '2022-03-16 11:00:37', '2022-03-16 11:00:37');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `testing` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_infos`
--

CREATE TABLE `transfer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_from` text COLLATE utf8mb4_unicode_ci,
  `main_warehouse_id` int(11) DEFAULT NULL,
  `sent_date` text COLLATE utf8mb4_unicode_ci,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transferred_to` text COLLATE utf8mb4_unicode_ci,
  `request_info_id` int(11) DEFAULT NULL,
  `eng_request_info_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_infos`
--

INSERT INTO `transfer_infos` (`id`, `transfer_from`, `main_warehouse_id`, `sent_date`, `remark`, `user_id`, `created_at`, `updated_at`, `transferred_to`, `request_info_id`, `eng_request_info_id`) VALUES
(1, 'warehouse', 1, '2022-04-29 12:00 AM', NULL, 19, '2022-04-29 09:48:57', '2022-04-29 09:48:57', 'YGN_TKT_00007', 1, 0),
(2, 'warehouse', 1, '2022-04-30 12:00 AM', NULL, 19, '2022-04-30 05:23:56', '2022-04-30 05:23:56', 'YGN_TKT_00007', 2, 0),
(3, 'warehouse', 1, '2022-05-06 12:00 AM', NULL, 19, '2022-05-06 10:55:37', '2022-05-06 10:55:37', 'YGN_TKT_00007', 4, 0),
(4, 'warehouse', 0, '2022-05-06 12:00 AM', NULL, 21, '2022-05-06 11:36:58', '2022-05-06 11:36:58', 'YGN_DGSK_0001', 3, 0),
(5, 'warehouse', 1, '2022-05-30 12:00 AM', NULL, 21, '2022-05-30 07:55:43', '2022-05-30 07:55:43', 'YGN_TKT_00007', 8, 0),
(6, 'warehouse', 1, '2022-05-30 12:00 AM', NULL, 21, '2022-05-30 08:00:44', '2022-05-30 08:00:44', 'YGN_TKT_00007', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `unitos_of_measures`
--

CREATE TABLE `unitos_of_measures` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unitos_of_measures`
--

INSERT INTO `unitos_of_measures` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bags', NULL, '2022-02-15 04:17:11'),
(2, 'Suds', '2022-02-15 04:05:15', '2022-02-15 04:05:15'),
(3, 'Sht', '2022-02-15 04:07:45', '2022-02-15 04:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `department_id` int(11) DEFAULT NULL,
  `contact_person` text COLLATE utf8mb4_unicode_ci,
  `emergency_contact` text COLLATE utf8mb4_unicode_ci,
  `passport_photo` text COLLATE utf8mb4_unicode_ci,
  `join_date` text COLLATE utf8mb4_unicode_ci,
  `employment_type` int(11) DEFAULT NULL,
  `last_login_at` text COLLATE utf8mb4_unicode_ci,
  `last_login_ip` text COLLATE utf8mb4_unicode_ci,
  `agent` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `employee_id`, `phone`, `nrc_number`, `gender`, `address`, `department_id`, `contact_person`, `emergency_contact`, `passport_photo`, `join_date`, `employment_type`, `last_login_at`, `last_login_ip`, `agent`) VALUES
(1, 'Admin', 'admin@skg.com', NULL, '$2y$10$iY.PTOOlASzaLY549BHGH.aQorS3bbzjX7P9wcQ2QbJH/sGWI0aXa', NULL, '2022-02-14 04:00:05', '2022-06-06 15:14:57', 'EMP-00001', '09455165415', '-', 'male', 'YGN', 1, NULL, NULL, 'public/passport/l2gxtlwzMcR2P6pJMYd90oB05cEHlm7re01mIROB.jpg', '2022-06-01 12:00 AM', 0, '2022-06-06 22:14:57', '45.125.4.74', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36'),
(2, 'U AUNG MYO HTUT', 'aungmyohtut.skgroup@gmail.com', NULL, '$2y$10$jYBSEwxV5Fv0WkfDbpwz7.8J4L5nL.qNq4AJ7LXStOWxerGMssZ.S', 'CLb9kS8OAWpQUTVj1smvl85KY7LFRhhCfzQbpo6lyG2JoG00EhBy3f6pHufo', '2022-02-14 04:00:32', '2022-06-01 07:24:47', 'EMP - 00002', '09772746336', '12/OuKaTa(N)178191', 'male', 'အမှတ် (၂၄၆)၊ ၆ လမ်း၊ ၁၁ရပ်ကွက်.‌တောင်ဉက္ကလာပမြို့နယ်၊ ရန်ကုန်မြို့', 1, NULL, NULL, 'public/passport/Ow2ZsVWJ8GcLThEMnvJsrJUY2JJYFBxLVGctygx2.jpg', '2020-12-21 12:00 AM', 0, '2022-06-01 11:51:59', '103.217.156.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0'),
(3, 'Daw Pearl Yadanar Soe', 'pearl.skgroup@gmail.com', NULL, '$2y$10$5ZtZj/NPdW8QTxYw8jHuT.Yt6GEd.2PSy0h.iBmGbOha9piqpfYge', 'w0qC5zZnJI4ZlSTqv1CBlLGe0LtbNpIwnVGtMcN4aS0ZoA1dBl9ky6xG8uQL', '2022-03-07 17:39:27', '2022-06-03 03:21:08', 'EMP-00003', '09751446005', '12/KaThaNa (N)050585', 'female', 'YGN', 4, NULL, NULL, 'public/passport/fQkbrpdxdMDgfzNLa5UTActUa1IKRXuHpnb3PUdA.jpg', '2022-06-03 12:00 AM', 0, '2022-06-01 14:23:34', '103.135.217.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36'),
(4, 'Archi Myo Thet', 'myothet.skgroup@gmail.com', NULL, '$2y$10$o.55w0i12oOqRzvuJ/PZv.8ioInfp4b5LmqwFrglsMDAWmwBtl7iG', 'YwEkUw3QZI6scWBld8C7nRiNYfSV8ziKXj78C0EAlhnarfq8uqasHn8QbVyN', '2022-03-07 18:22:19', '2022-06-06 07:40:17', 'EMP-00004', '09751446090', '12/Thakata(N)180068', 'male', 'YGN', 6, NULL, NULL, 'public/passport/MPq9DwBPXDQmHdeiIJnjJ90P9x5PB8TLpNDhraIX.jpg', '2022-06-01 12:00 AM', 0, '2022-06-03 09:19:11', '103.217.156.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0'),
(5, 'Ma Hpoo Ngone Kyaw', 'hpoongone.skgroup@gmail.com', NULL, '$2y$10$wbCsGmqe7rSeDa.GmCsYQeqgknZdelTsPQIQ/ytaKbBgV8tD5baEO', 'JPqxF8s1SwYOSgYy0a6ThzHgQQrWjHSlcA0YkI5qFLM6PhcZf21WEoDFPJG7', '2022-03-11 09:14:52', '2022-06-01 06:55:46', 'EMP - 00005', '09751446006', '12/TaMaNa(N)119539', 'female', 'No 127/5, PaDaMyar Street, Thinkangyun Tsp.', 4, NULL, NULL, 'public/passport/qxi2Imx0vbnnT3u8AkcZZOnIS9hP2LfXNbukyDUn.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL),
(6, 'Ma Nandar Hlaing', 'nandar.skgroup@gmail.com', NULL, '$2y$10$3fyamQpVSU/glzf9si7DJuZwHP4Ii7lVyRBRrqykV2TLwho1HxRLC', 'p0tUdZfhtyuiclgbYWwAsRrWiFDvlcbXMLmA5dcJj0d8rukE0KoYLvOZvBgB', '2022-03-15 09:03:34', '2022-06-06 07:41:23', 'EMP - 00006', '09751445235', '12/Thagaka(N)179672', 'female', 'No. 74, Min Nanda Road, Dawpone', 7, NULL, NULL, 'public/passport/0Cqn6y195bWSFRYjZAU2G7JaE1SNq5waAT0gRvj4.jpg', '2022-06-06 12:00 AM', 0, '2022-06-02 15:36:45', '103.217.156.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0'),
(7, 'Ko Nyan Lin Htet', 'nyanlinnhtet.skgroup@gmail.com', NULL, '$2y$10$JogAQY0yFfB3XA.5xUkhHOdzgjhIkvpCcgnjbRnOGR33vwCrArCUq', '9u3HiDMdMrjAPeNqg4vkDOFBt9kyQ7SFi7UTypIZMsbTmD4HcvaDRw9kBN8g', '2022-03-15 09:05:41', '2022-06-01 06:31:58', 'EMP - 00007', '09795154291', '12/ThaKaTa(N)162871', 'male', 'YGN', 8, NULL, NULL, NULL, '2022-05-29 12:00 AM', 0, '2022-06-01 13:31:58', '103.217.156.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36'),
(8, 'marketing', 'marketing@gmail.com', NULL, '$2y$10$oCUHBB./6fbUQkiAoKkJ6OPq0yW9sYBFEsoNYXjrdyrFVq/Q1LqmO', NULL, '2022-03-15 09:06:40', '2022-03-15 09:06:40', 'EMP - 00008', '09123123123', '5/abc(n)009998', 'male', 'YGN', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Ma Ei Chan Myae Khin', 'eichan.skgroup@gmail.com', NULL, '$2y$10$XMR2/iEH8DGCHdGujGCesOnDP8QcHQeOEhUOmD0sDdFm2BFKh3JdW', 'dQXdPonjqVTGVXfFqlNFDJ31ETGZdvMQUpZi5ARWexJVLZKFeQrgY20hY8tN', '2022-03-15 09:07:37', '2022-06-06 10:37:54', 'EMP - 00009', '09977820259', '12/KaTaTa(N)032894', 'female', 'YGN', 4, 'Daw Kay Ti Hlaing', '09795355150', 'public/passport/yqS4btzuzTPYZEMFAbCYBzRqn680VhCXsuhFuKd5.jpg', '2022-01-17 12:00 AM', 0, '2022-06-06 17:37:54', '103.217.156.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1'),
(10, 'Ma Moh Moh', 'mohmoh.skgroup@gmail.com', NULL, '$2y$10$BtSiWTSfsBAGtFZxj3qUd.oJc.3E0VMEF/aOfJk45/7wwZANHlCJS', 'yqsMQ92HwGrstjsadiNB9r2hrGnNELicrcg4FlGKtCaI9Vd4U1hIr8dmCuq3', '2022-03-15 09:14:23', '2022-06-01 06:56:26', 'EMP - 00010', '09798868709', '14/PaThaNa(N)201615', 'female', 'No.21/33, Zaw Gyi Street, 9 Quarter, Lanmadaw Tsp, Yangon', 8, NULL, NULL, 'public/passport/B5Al8mv3UylVZy93AygKarLQJBIEMRCjCHw53hOk.jpg', '2022-06-01 12:00 AM', 0, '2022-06-01 10:05:00', '103.217.156.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36'),
(11, 'Ma Pan Chue Chue', 'chuechue.skgroup@gmail.com', NULL, '$2y$10$BRJIsHrGNeKVTLYWskXzneNivP2Yx2g0V.fWhkmPSE3e4FE2pW/JC', NULL, '2022-03-15 10:38:45', '2022-06-07 02:25:24', 'EMP - 00011', '09751445863', '9/TaTHaNa(N)156794', 'female', 'No.345, Kantaw Street, Thingangyun Township', 8, NULL, NULL, 'public/passport/JQURAODA5V8AisNXQT8XtO4UPGAAkvSoftBsJYgM.jpg', '2022-06-01 12:00 AM', 0, '2022-06-07 09:25:24', '103.217.156.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36'),
(12, 'Ma Zar Kyi Moe Naing', 'zarkyi.skgroup@gmail.com', NULL, '$2y$10$laYvqCLwBhR/XUiAFE0jaeqVUlWtvQUf50ezWA4KzYaCfEjMiAe82', 'tgB42N4dkpgdnSjgEMzYOYPM3E5EHdMAT9xXkRdCAch5rdF4aoMwWuOhwXTw', '2022-03-17 04:03:41', '2022-06-04 02:17:55', 'EMP - 00012', '09772177564', '12/DaGaMa(N)035420', 'female', 'No.(331), Bayintnaung Rd, 31 Quarter, North Dagon Tsp', 6, NULL, NULL, 'public/passport/UEBc42PwAkcwFcwK3X8AeJm2lJDdPWrecVDUWGbU.jpg', '2022-06-01 12:00 AM', 0, '2022-06-01 16:53:49', '103.135.217.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36'),
(13, 'Ko Ye Htet Min', 'yehtetmin.skgroup@gmail.com', NULL, '$2y$10$PcOWn8fvMti0qkiOp/BET.jalwumj4WEfuvigo1bn0w9W4iZTHR4u', 'vzds3wCIdaUHoK1AWU3wHvp88nurYIzzjrdoLQajciDCFqCU2ksBs7TYni6I', '2022-03-17 04:05:16', '2022-06-01 08:18:39', 'EMP - 00013', '0943096345', '12/BaThaHta(N)040271', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 6, NULL, NULL, NULL, NULL, NULL, '2022-06-01 15:18:39', '103.135.217.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36'),
(14, 'Ko Chan Myae Zaw', 'chanmyae.skgroup@gmail.com', NULL, '$2y$10$8AyZUb63vY5l4KAS90aOJ.vyLjxJeDFK5IB2.PCZy60AAXgpxh5xK', 'MJmtK1OCtYJAOaBkXoax3ZnZmPpwDX9tu24r94uIBpL2Nuv0Ux5wPPnrY8mL', '2022-03-17 04:08:50', '2022-05-31 09:43:02', 'EMP - 00014', '09751445993', '7/WaMaNa(N)171834', 'male', 'No.(10), Alone Street, Alone Township, Yangon', 2, NULL, NULL, 'public/passport/6Albzb2z3Mj5HLvwcJTwTPyl8YJuBg6RJkhTeFWw.png', '2022-05-29 12:00 AM', 0, NULL, NULL, NULL),
(15, 'Ko Thein Zaw Win', 'theinzawwin.skgroup@gmail.com', NULL, '$2y$10$NphAKBtZGN/HH4ziQ2XTL.IXXYm09TRcZYhYhFCKcpLycBTfJfDge', 'o7Tl7cqDYOyv1kOoRKsDDkQcNNNg8gdzfF8357fQJMPDVcv6tj4ZSzmc2Zip', '2022-03-17 04:11:30', '2022-06-03 02:23:37', 'EMP - 00015', '09964105346', '12/PaBaTa(N)034640', 'male', 'No. (9), 6B, 166 Street, Tamwe Township.', 2, NULL, NULL, 'public/passport/vtRypvpjdgUAnqINHx9t5GeUbqPQlzuLr3TQwpqH.jpg', '2022-05-30 12:00 AM', 0, '2022-05-30 12:05:24', '103.217.156.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36'),
(16, 'Ma Thu Zar Hein', 'mazar.skgroup@gmail.com', NULL, '$2y$10$5JYQb99Md7um36xVCIERlesJtXCp.aZBoI9sc7yf8cCuOcmL7vqoG', '03sTzJsT0CqdHV603Y2OQ2IgRzpGwyo0HANPBBLivvR85DxfsmIrVQRawhFv', '2022-03-17 04:24:34', '2022-05-31 06:49:56', 'EMP - 00016', '09740875438', '9/KaPaTa(N)195155', 'female', 'No(205(3B),Aung Thiri street, Myot Thit Quarter, Dawbon Tsp', 8, NULL, NULL, 'public/passport/UYfEMZsWwsJbbqKyUdCmEYyvnwAK254Le6fbJk3c.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL),
(17, 'Ma Kay Thi Hlaing', 'kaymama.skgroup@gmail.com', NULL, '$2y$10$FaUv5WCV2uoZnfJB4Gh.JO6xppx0fve0Nq4ZZIS3uhSKcEhfMOzFW', NULL, '2022-03-17 04:26:53', '2022-06-07 02:24:59', 'EMP - 00017', '09751446027', '12/LaMaTa(N)000705', 'female', 'No.52, 89 street, Mingalar Taung Nyut Tsp', 8, NULL, NULL, 'public/passport/eRmSUiqeZ7Ofgc7g1mU6NVTt9idebwGXq3NWqaos.jpg', '2022-05-30 12:00 AM', 0, '2022-06-07 09:24:59', '103.217.156.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36'),
(18, 'Ma Hsu Myat Win', 'hsumyat.skgroup@gmail.com', NULL, '$2y$10$oPB3qKCyQnzBIerf/mBBRuP3z81CGXDY4nIE1pQ.gpNyctD3nx4Yy', 'zLMuwNQcyKNgq1MzQW9tf6BDPGFsM4DEOMUQKyIR3z3oGEgRxQivVEgbNQca', '2022-03-17 04:28:05', '2022-06-07 02:21:11', 'EMP - 00018', '09751445220', '7/PhaMaNa (N)220433', 'female', 'No.(205/3B), Aung Thiri Street, Myo Thit Quarter, Dawpon Tsp', 8, NULL, NULL, 'public/passport/7mDwD39Ap1NEYolaTulpNpjRQ8Q4IeEA7TIwVSi4.jpg', '2022-06-01 12:00 AM', 0, '2022-06-07 09:21:11', '103.217.156.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36 Edg/102.0.1245.33'),
(19, 'AUNG HTET PAING', 'aunghtetpaing.skgroup@gmail.com', NULL, '$2y$10$gQfTPFveu0nOs7Wob8Hb3.UYTTpz3o3gJnEQlt7sAZVCYjOb6MC9S', NULL, '2022-03-17 04:38:03', '2022-06-06 04:50:36', 'EMP - 00019', '09751445870', '12/Lathana(N)021656', 'male', 'No. 74, Min Nanda Road, Dawpone Tsp, Yangon', 1, NULL, NULL, NULL, NULL, NULL, '2022-06-06 11:50:36', '103.217.156.160', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36 Edg/102.0.1245.33'),
(20, 'Ko Moe Thae Aung', 'moethae.skgroup@gmail.com', NULL, '$2y$10$nk.ypUUuIAQy.j29wC6ciuEHR0R6Rjs40IjF93I3TdTagunEBOFf2', 'fOJxSNj2Vmct2w8T97D4H1O9x0Kx2JTfBhdfI6jm16MG5RpoM1CS9eWZhvD8', '2022-03-28 05:09:58', '2022-06-07 02:13:11', 'EMP - 00020', '09752800400', '9/AhMaZa(N)016643', 'male', 'No.(5), Bo Sone Pat St, Bo Tun Zan Qt, Daw Pon TS', 3, NULL, NULL, 'public/passport/CPtZMVurA2zIPDKKr842JFrVPUlKg7SUhe4R6c4Q.jpg', '2022-03-28 12:00 AM', 0, '2022-06-07 09:13:11', '103.217.156.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36'),
(21, 'Ko Soe Moe Aung', 'soemoe.skgroup@gmail.com', NULL, '$2y$10$FyWc2Xn8FzmUr9eROnqyqe9N.3eDX78agOHkk6wIgjwfImKoT01aS', '689EiuzQKdOQ8fAbR5jvkqLWmog70iOhp1yhNx6lQpSWdvu60GzhfMfdGFdU', '2022-04-19 07:44:07', '2022-06-01 07:27:43', 'EMP - 00021', '09765417569', '12/', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 8, NULL, NULL, 'public/passport/8SXLPGuwlcWOGMW2ldebA9AvWimUxfMf479B3dHK.jpg', '2022-05-30 12:00 AM', 0, '2022-05-29 15:17:53', '210.14.97.160', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) GSA/20.3.136880903 Mobile/16H62 Safari/600.1.4'),
(22, 'Daw Khin Zarni', 'khinzarni.skgroup@gmail.com', NULL, '$2y$10$2ra6OqKvEKq4rB3/eTiDouAk1eeo8YenKYAGDB35JhYlsSzkRTOLe', 'ZCS6OQ3WhL8eVEY7KEJXwVHYm2FXc2PlOayMrp9oLg1PD0LZ8QrTi4FyFSf5', '2022-04-29 09:39:44', '2022-06-01 07:28:12', 'EMP - 00022', '09740875439', '14/HATHATA(N)021656', 'female', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 9, NULL, NULL, 'public/passport/KsxCkoQ7IsohA6mX3eKWlnr8HHEX2MArcaOCaHYF.jpg', '2022-05-30 12:00 AM', 0, '2022-05-30 16:29:12', '103.217.156.130', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.53'),
(23, 'U Zin Wai Aung', 'zinwaiaung.skgroup@gmail.com', NULL, '$2y$10$V02L.4ul2CaHZSM8IvH6tuKK.wa.HBsWUTE0pD79G2HMc/071Tkxm', NULL, '2022-04-29 12:27:33', '2022-04-29 12:56:05', 'EMP-00023', '09799404246', '12/KAKHAKA(N)090911', 'male', 'Thingyangun', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Daw Htet Htet Zaw', 'htethtetzaw.skgroup@gmail.com', NULL, '$2y$10$uvo3UT1Uf1JA8SgHlt0iDOs8DAtRKwPckRhU/.pOiaS1n8ZhiWvwm', 'l7ew8k6pFYVIn45TXROxQFOxGdVT4t8yNKnoA9CStNLcg4808iUEBMxC1Uvz', '2022-04-29 12:37:19', '2022-06-06 08:13:55', 'EMP-00024', '09795345577', '12/BATAHTA(N)044264', 'male', 'No.262,Merchant Road, East Yangon General Hospital, Botahtaung Tsp', 4, NULL, NULL, 'public/passport/uq0PyzmVggoYIA660a9iIK1yxospt6pzfAGfD4jj.jpg', '2022-05-31 12:00 AM', 0, '2022-06-06 15:09:15', '103.217.156.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36 Edg/102.0.1245.33'),
(25, 'Daw Zar Zar Khine', 'zarzarkhine.skgroup@gmail.com', NULL, '$2y$10$HfdR7fopHjyS2b5yn1gt6uk7TlVqjrsh1VEpZbEouJq7FXW3nx41G', NULL, '2022-04-29 12:42:04', '2022-06-06 10:03:11', 'EMP-00025', '09799048521', '5/KATHANA(N)122900', 'female', 'Shwe Ta Sote Stree, Thamine, MaYanGone Tsp', 9, NULL, NULL, 'public/passport/ucJI1yfCwS6fdEwKbiIfRBTWexzbU0rVSjNFGZce.jpg', '2022-06-06 12:00 AM', 0, '2022-06-06 17:03:11', '8.29.105.166', 'Mozilla/5.0 (Linux; Android 11; SAMSUNG SM-A127F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/14.2 Chrome/87.0.4280.141 Mobile Safari/537.36'),
(26, 'U Zwe Ko Ko Soe', 'zwekokosoe.skgroup@gmail.com', NULL, '$2y$10$9o9PavkTyhciVIvl81C2lOK/0ko68Vxk5eUjdce.IP5/fwCpEdffi', 'Pm4rIS7bpYtqmJkvQdvUlrIqEvbtC1P8d5F8VELefU2enmhoSKu3FwLgoqcx', '2022-04-29 12:45:58', '2022-06-02 13:52:24', 'EMP-00026', '09763178824', '12/THAGAKA(N)182803', 'male', 'No.19/2,Khayaymyaing Street,Thuwunna(23) Quarter,Thingangyun township,Yangon', 9, NULL, NULL, 'public/passport/tVvqZoWWicYsQvwTvrcwYIk02fsmMamWUEnJxo8O.jpg', '2022-05-30 12:00 AM', 0, NULL, NULL, NULL),
(27, 'U Phyo Kyaw', 'phyokyaw.skgroup@gmail.com', NULL, '$2y$10$KavsNwfI2xooLt.7qpF3JuK2oI9fviwjer0pItrHTd.kRp8KKfPFy', 'Fa4KK3DcxqFmjDecl5dOLSVXzkjv9g0at8sUUX4fGzORHVXUkE7tnVDkUABa', '2022-04-29 12:48:07', '2022-05-06 11:25:07', 'EMP-00027', '095045907', '12/DAGANA(N)032751', 'male', 'အမှတ် (၁၀၃၁) ၊ ညောင်ရမ်းလမ်း ၊ (၁၆)ရပ်ကွက်၊ ရွှေပေါက္ကံမြို့သစ်၊ မြောက်ဥက္ကလာပမြို့နယ်', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'U Aung Pyae Phyo', 'aungpyaephyo.skgroup@gmail.com', NULL, '$2y$10$J1sWFBLv/hIzptC77GK76Oa6xkpJlXT3ccwSJlMz4Mw5bB0D03hne', 'qjmKE8DnoH4YoAewJmxDOA957fvsfr7Rh9eVWv0xWHGMrTxI1veX1cROT6Tu', '2022-04-29 12:50:06', '2022-05-06 11:12:09', 'EMP-00028', '09799525101', '12/THAKANA(N)156039', 'male', 'အမှတ် ၉၂၁/က၊ မာန်ပြေ ၃လမ်း အရှေ့၊ ၂တောင်ရပ်ကွက်၊ သာကေတ။', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'U Aung Khant Kyaw', 'aungkhantkyaw.skgroup@gmail.com', NULL, '$2y$10$KaBO4rpnb9l4DMEHIiSueeBT1Lr6eo6tyIRYCVTsXfKw696BEMyAS', NULL, '2022-04-29 12:54:48', '2022-04-29 12:58:09', 'EMP-00029', '092305456', '8/KHAMANA(N)162646', 'male', 'No.11,(4A),Satetathukha st,Sanchaung Tsp', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'U Aung Myat Thu', 'aungmyatthu.skgroup@gmail.com', NULL, '$2y$10$kUY/JHoOE3Cc9oup/14scePXE9MY3zmKbTkaG/3.dZzKpiGNZeF2m', NULL, '2022-04-29 13:02:10', '2022-04-29 13:02:10', 'EMP-00030', '09787206401', '3/BAAHNA(N)273327', 'male', 'B/Sa Yone Wine, Sharkargroup Hp-An', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'U Aung Ye Kyaw', 'aunyekyaw.skgroup@gmail.com', NULL, '$2y$10$4cnZHddVb0E2c/NP6XJae.hlEY974xK3fHIdRh5L8ZRwahwtiK2wW', 'FMRzwi0SbTiz046w4SDQ8QGamCXZGNs5IgknDCAbrcLvDqJrRybj4GySCbfD', '2022-04-29 13:06:13', '2022-06-04 04:14:39', 'EMP- 00031', '09788784596', '12/MAGATA(N)102683', 'male', 'Line-101,Room-2,Ma Hlwa Gone Train Compound, Mingalar Taung Nyunt Tsp', 9, NULL, NULL, NULL, NULL, NULL, '2022-06-04 11:14:39', '37.111.2.63', 'Mozilla/5.0 (Linux; Android 10; M2003J15SC) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.210 Mobile Safari/537.36'),
(32, 'U Myo Win Aung', 'myowinaung.skgroup@gmail.com', NULL, '$2y$10$Uh176vaFV49f9Fz71sGCwOmxEQNfFrp5RgR8LW4T0GrYa7TDqqPra', NULL, '2022-04-29 13:08:54', '2022-06-03 09:57:31', 'EMP-00032', '09764364304', '1/ MAKANA (N) 172114', 'male', 'Yangon Street, (21) Quarter, Shwe Paut Kan, Yangon.', 9, NULL, NULL, 'public/passport/t8PAAVNFGIYGclstk678l0lBpRdA9WZXvSXELC5u.jpg', '2022-06-01 12:00 AM', 0, '2022-06-03 16:57:31', '37.111.6.30', 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/16.0 Chrome/92.0.4515.166 Mobile Safari/537.36'),
(34, 'U Min Ko Ko', 'minkoko.skgroup@gmail.com', NULL, '$2y$10$WzoRzVfDgUtCYiEqmOU0mOEzdXw8pT3k2UoC.a9kTy2zfZijjiZiq', NULL, '2022-04-29 13:19:48', '2022-06-03 02:30:05', 'EMP-00034', '09428024529', '7/PAMANA(N)152627', 'male', 'No.6,Raod,Kwm Yar Sine Nea Bus Stop Tarwa, East Yangon University, Thanlyin', 7, NULL, NULL, 'public/passport/3agYEHKb8f2csUv7piWh1zQAF6c8BKbprKgKkQWS.jpg', '2022-06-03 12:00 AM', 0, NULL, NULL, NULL),
(35, 'U Mi Kee', 'mikee.skgroup@gmail.com', NULL, '$2y$10$VbOzf5J1DbolVhooIEYUj.VnVzl89xS.zJNczsTKDr3zrerk.s1yW', NULL, '2022-04-29 13:21:18', '2022-05-31 09:36:25', 'EMP-00035', '09401564992', '8/KHAMANA(P)000083', 'male', 'No(50)A, 5th floor, Zay Street Myaenigone, Yangon, Myanmar', 8, NULL, NULL, 'public/passport/06JZq2jTQbL1MVwetehtvnH0zNVszrCMYpT1o0Ne.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL),
(36, 'U Myo Nyunt', 'myonyunt.skgroup@gmail.com', NULL, '$2y$10$97W5ILXOF7ZoRSv1u1giZudo1xWztNrXC4ZYV2NKavWqut/cX28UC', NULL, '2022-04-30 04:28:03', '2022-06-05 12:00:22', 'EMP-00036', '09776549304', '12/TAMANA(N)125742', 'male', 'No.245(B),5/4 Quater, Shwepyithar Township, Yangon', 9, NULL, NULL, 'public/passport/Y0LX6Vz0XOfXJhnsQTxxQhzKz790yyaxYtMWfZ2J.jpg', '2022-06-02 12:00 AM', 0, '2022-06-05 19:00:22', '103.25.241.240', 'Mozilla/5.0 (Linux; Android 10; CPH1823 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.104 Mobile Safari/537.36'),
(37, 'U Paing Thu Hein', 'paingthuhein.skgroup@gmail.com', NULL, '$2y$10$H3ieEgYUgj7dvhS2NTjwgOXVJIBprzggnGRuI3h/Vm5YD6FScfeyW', 'j8NhRdjZl4PqnVxV4AIztlXXGbYYq0Srg2f4NLFZ4HnA4GSDj619vmJvxm9L', '2022-04-30 04:40:21', '2022-06-06 03:50:36', 'EMP-00037', '09780626353', '14/WAKAMA(N)220972', 'male', 'TA YOKE TAN QUARTER,WAKEMA TOWNSHIP', 9, NULL, NULL, 'public/passport/CXp8V6ctnWVPj72KtJjJxYlrrrsu7H929fE2N51K.jpg', '2022-05-31 12:00 AM', 0, '2022-06-06 10:50:36', '77.68.50.66', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 8 Pro Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/101.0.4951.61 Mobile Safari/537.36'),
(38, 'Daw San San Aye', 'sansan.skgroup@gmail.com', NULL, '$2y$10$9hbW3ngEtLY4.gTL3Ei/Qe0.kA5TVmAtMswfu8u3oc.1UAbPbcPz6', NULL, '2022-05-05 02:29:34', '2022-06-01 07:43:13', 'EMP-00038', '09751446019', '12/THAKANA(N)179134', 'female', 'No.8, Room(205), Shu Khin Thar Housing, Tharkeyta Tsp', 5, NULL, NULL, 'public/passport/1ho6jZe3nY9f8kaIOb1twbgTxQ2yrNlmpbFCp49D.jpg', '2022-06-01 12:00 AM', 0, NULL, NULL, NULL),
(39, 'U Hein Min Latt', 'heinminlatt.skgroup@gmail.com', NULL, '$2y$10$HGViWsfCfqdbxgx9fNxJYunmFfxpDtCfbKJLPl8ZAxrnzTQFzChYa', 'HqeWypaCbzhaZfnawcri1FMLYai18bkEU5Q5Ooq8ViyBW4lgu7C0kIemTthX', '2022-05-05 02:46:55', '2022-06-06 07:57:52', 'EMP-00039', '09740875433', '12/LATANA(N)019729', 'male', 'No.22, 132 Street, Mingalar Nyut Tsp.', 8, NULL, NULL, 'public/passport/DefunbmTHLlrEZGO8SGoV9J7SCjMZDGbs3pWGNBa.jpg', '2022-06-06 12:00 AM', 0, '2022-05-30 20:53:50', '210.14.107.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36'),
(40, 'U Aung Kyaw Htet', 'aungkyawhtet.skgroup@gmail.com', NULL, '$2y$10$ZhLXRbsJqbu45Vf6U5Bw9e8ZYjLoeJgqF0IStyod3r0Pf7cKFfzJ6', 'Ey8oBOmczTaDnNi6ihSqUAthQeA4OxlAA2jpGM1xgSbQ50kPjmah7Jsq2Zvj', '2022-05-05 03:10:32', '2022-05-31 09:33:58', 'EMP-00040', '09740875436', '12/OUKaTA(N)172749', 'male', 'အမှတ် ၅၆၂ ၊၄ လွှာ ၊အောင်စက်ြာလမ်း ကြီးပွားရေးရပ်ကွက် ကြီးပွားရေး အိမ်ရာရှေ့ သင်္ဃန်းကျွန်းမြို့နယ်', 8, NULL, NULL, 'public/passport/KetPk7FMDtZMAk7lxD0s0C1NgycugUYt7I9sK5zb.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL),
(41, 'U Kyaw Ko Ko Zaw', 'kyawkoko.skgroup@gmail.com', NULL, '$2y$10$a9CTIJQpaC8mJ/fDAU/V0eRELWCDjnyV9h.6JuT2S26e7WAUlgIs.', 'bylXWtzxiCm7AmCTmMRsP0ioiXreStidymjU6nsw5ZowQnetIRtOEAdNRl56', '2022-05-05 03:31:11', '2022-05-31 04:44:29', 'EMP-00041', '09952613203', '12/OUKATA(N)201677', 'male', 'No.649,Waruna Street,13 Ward,South Okkalapa TownShip', 1, 'Daw Hnin Mhone Than', '09420205133', 'public/passport/0N5IkdMTtemZuRhgoOkwAZMJpZBOPPvy61JDrhSf.jpg', '2022-05-03 12:00 AM', 0, NULL, NULL, NULL),
(42, 'Daw Aung San suu Kyaw', 'suukyaw.skgroup@gmail.com', NULL, '$2y$10$8NmMUS.7C08wkfyBlV3Exe0M9Mk5i0J2Tutru694LiQZ.Pmcqi32C', NULL, '2022-05-05 06:06:53', '2022-06-06 09:52:49', 'EMP-00042', '09785421470', '12/THAKATA(N)200674', 'female', 'No.(634), 4 Floor, Shwe Pyi Thar Street/ 6 Quarter, Thaketa Tsp.', 8, NULL, NULL, 'public/passport/FRRzMhHoXvAurEAgZHdG8WNpz12E6lQNmlJ5pfPs.jpg', '2022-06-01 12:00 AM', 0, '2022-06-06 16:52:49', '103.217.156.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0'),
(43, 'U Wai Yan Lynn', 'waiyanlynn.skgroup@gmail.com', NULL, '$2y$10$Qo2ZqMt0TcUX6eLcQ.fnguvxmN6MyMAdGP8sUf26ZAHL/fR.yP3s6', NULL, '2022-05-07 07:13:59', '2022-06-01 07:31:22', 'EMP-00043', '09970047351', '12/DAKASA(N)023993', 'male', 'No.1003/A3,6 Htu Par Yon Stree, Thaketa', 4, NULL, NULL, 'public/passport/5LXfwPIqf6wMkPEzaq8os66y6QE58kV1IUSmxSGY.jpg', '2022-06-01 12:00 AM', 0, NULL, NULL, NULL),
(44, 'U Htet Aung', 'htetaung.skgroup@gmail.com', NULL, '$2y$10$RMw4v4PG05XgnN.jyss/xOeWOuybCMN3icMDR8TJw3TG2z5XDn4eW', 'yWDbX9URYJMbEpK6UK7pG8aM3moSZEcbRg6pmkeqdUSyKLufsmIcgzwKp9Ij', '2022-05-12 10:22:08', '2022-06-06 11:02:08', 'EMP-00044', '09951204013', '12/SAKHANA(N)076156', 'male', 'No. 34.(4\" Floor), Sanchaung Stree, Sanchaung, Yangon,Myanmar', 9, NULL, NULL, 'public/passport/QFpRfJ7hKiKdhsq4NjcpGb8IphOP6ltvgJqQyIRR.jpg', '2022-06-02 12:00 AM', 0, '2022-06-06 18:02:08', '8.25.96.15', 'Mozilla/5.0 (Linux; U; Android 10; en-gb; Redmi Note 8 Pro Build/QP1A.190711.020) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.116 Mobile Safari/537.36 XiaoMi/MiuiBrowser/13.3.1-gn'),
(45, 'Daw Htet Wai Oo', 'htetwaioo.skgroup@gmail.com', NULL, '$2y$10$x2ME8NPzRxTO0ZcTFgLrTeXUY8mUm9z/MmxHVO7hEyU8QGfV694pW', NULL, '2022-05-13 04:24:07', '2022-06-01 07:31:55', 'EMP-00045', '09755713424', '13/NAKHATA(N)082880', 'female', 'တိုက် 256, ဇေယျာသိရီ ၁၃လမ်း, သင်္ဘောကျင်း, ဒေါပုံမြို့နယ်', 7, NULL, NULL, 'public/passport/YGwpQcOnK7LF3hnAvex9m4FQF1TilpQWAEDSmcC5.jpg', '2022-06-01 12:00 AM', 0, NULL, NULL, NULL),
(46, 'U Aung Min Oo', 'aungminoo.skgroup@gmail.com', NULL, '$2y$10$Sp1dWhTURVGWhI4LiG/jje4wZZ2wTKc6ZnsyncSrZuxdH2F/5tizK', NULL, '2022-05-30 07:59:51', '2022-06-04 03:06:27', 'EMP-00046', '09799629597', '7/pakana(n)059612', 'male', 'No.78(b),Anawyahtar Road,Kyeepwaryay(N),Quarter,Tingangyun', 9, NULL, NULL, 'public/passport/NkBkqGYRYQay7tPverVWmR0UIcAnsz7n1hGCkKRK.jpg', '2022-05-27 12:00 AM', 0, '2022-06-04 09:51:01', '69.160.29.73', 'Mozilla/5.0 (Linux; Android 11; Mi 9 Lite Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/102.0.5005.78 Mobile Safari/537.36'),
(47, 'U Ye Lynn Htoon', 'yelynnhtoon.skgroup@gmail.com', NULL, '$2y$10$Z5wwXLm3rx/PbxFX9AY80uqn7oi8uel2SfKGm9iLeXNZvJi.nlEGK', '69K4AmjjnRDhqaptYQAVRv3LXOAnspoDD69fmn7PIOcTMOiZ5f86yqSeaEtQ', '2022-05-30 08:03:47', '2022-06-04 03:23:01', 'EMP-00047', '09968878999', '12/magata(n)092879', 'male', 'No(44),109 Stree, Mingalartaungnyunt', 9, NULL, NULL, 'public/passport/0Vf0HeAScgBv9PCVl70YptyuQcJuWYvqrGZfYtIT.jpg', '2022-05-30 12:00 AM', 0, '2022-06-04 10:23:01', '213.32.75.189', 'Mozilla/5.0 (Linux; Android 10; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36'),
(48, 'U Wai Lynn Tun', 'wailynntun.skgroup@gmail.com', NULL, '$2y$10$FYikwt.uvJlsUrkx6Ob/pugpezbhPKylyxf7geXYOdwXs6sCbt6NO', 'JMpucpLYCYcaeHasjePRurR9VPgUz4L8YFqdsMcAYlKaCgAAdzStn1ftyVIu', '2022-06-06 09:31:20', '2022-06-06 09:49:33', 'EMP-00048', '09663654307', '7/TANGHNA(N)206379', 'male', 'မင်းကြီးဆွေရပ်ကွက်၊ တောင်ငူမြို့', 4, NULL, NULL, '', '2022-06-06 12:00 AM', 0, '2022-06-06 16:40:09', '103.217.156.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36'),
(49, 'U Chit Tun Aung', 'chittunaung.skgroup@gmail.com', NULL, '$2y$10$WoPIYd7Z9bcfISRP5BOeEex6q06Lk1BoCnxRjpSkdTIxelovS7LLC', NULL, '2022-06-07 02:16:33', '2022-06-07 02:20:11', 'EMP-00049', '09250081251', '12/MABANA(N)147926', 'male', 'အိမ်အမှတ် (၂၀၂)၊ မြနန္ဒာအိမ်ယာ၊ အုတ်ကျင်းဘူတာရုံလမ်း၊လှိုင်မြို့နယ်', 9, NULL, NULL, '', '2022-06-06 12:00 AM', 0, '2022-06-07 09:20:11', '103.217.156.131', 'Mozilla/5.0 (Linux; Android 10; TECNO LD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `variable_accept_reject_statuses`
--

CREATE TABLE `variable_accept_reject_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `accept_reject_status` text COLLATE utf8mb4_unicode_ci,
  `accept_reject_date` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_accept_reject_statuses`
--

INSERT INTO `variable_accept_reject_statuses` (`id`, `user_id`, `accept_reject_status`, `accept_reject_date`, `variable_request_info_id`, `created_at`, `updated_at`) VALUES
(4, 10, 'accept', '2022-05-09', 5, '2022-05-09 08:03:21', '2022-05-09 08:03:21'),
(5, 10, 'accept', '2022-05-09', 5, '2022-05-09 08:04:05', '2022-05-09 08:04:05'),
(6, 10, 'accept', '2022-05-09', 6, '2022-05-09 08:04:38', '2022-05-09 08:04:38'),
(7, 10, 'accept', '2022-05-09', 7, '2022-05-09 08:09:16', '2022-05-09 08:09:16'),
(8, 10, 'accept', '2022-05-09', 8, '2022-05-09 08:21:21', '2022-05-09 08:21:21'),
(9, 10, 'accept', '2022-05-09', 9, '2022-05-09 08:21:33', '2022-05-09 08:21:33'),
(10, 10, 'accept', '2022-05-09', 10, '2022-05-09 08:21:41', '2022-05-09 08:21:41'),
(11, 11, 'accept', '2022-05-10', 10, '2022-05-10 02:53:47', '2022-05-10 02:53:47'),
(12, 10, 'accept', '2022-05-10', 11, '2022-05-10 02:59:13', '2022-05-10 02:59:13'),
(13, 10, 'accept', '2022-05-11', 12, '2022-05-11 04:48:36', '2022-05-11 04:48:36'),
(14, 10, 'accept', '2022-05-11', 13, '2022-05-11 04:48:47', '2022-05-11 04:48:47'),
(15, 10, 'accept', '2022-05-12', 14, '2022-05-12 10:14:08', '2022-05-12 10:14:08'),
(16, 10, 'accept', '2022-05-12', 15, '2022-05-12 10:15:28', '2022-05-12 10:15:28'),
(17, 10, 'accept', '2022-05-12', 16, '2022-05-12 10:16:12', '2022-05-12 10:16:12'),
(18, 10, 'accept', '2022-05-13', 17, '2022-05-13 03:07:03', '2022-05-13 03:07:03'),
(19, 10, 'accept', '2022-05-13', 18, '2022-05-13 03:07:39', '2022-05-13 03:07:39'),
(20, 10, 'accept', '2022-05-16', 19, '2022-05-16 06:09:18', '2022-05-16 06:09:18'),
(21, 10, 'accept', '2022-05-16', 20, '2022-05-16 06:10:41', '2022-05-16 06:10:41'),
(22, 10, 'accept', '2022-05-23', 21, '2022-05-23 14:54:08', '2022-05-23 14:54:08'),
(23, 10, 'accept', '2022-05-23', 22, '2022-05-23 14:54:14', '2022-05-23 14:54:14'),
(24, 10, 'accept', '2022-05-28', 23, '2022-05-28 09:34:58', '2022-05-28 09:34:58'),
(25, 42, 'accept', '2022-05-31', 26, '2022-05-31 02:23:33', '2022-05-31 02:23:33'),
(26, 42, 'accept', '2022-05-31', 25, '2022-05-31 02:27:46', '2022-05-31 02:27:46'),
(27, 11, 'accept', '2022-05-31', 24, '2022-05-31 02:32:23', '2022-05-31 02:32:23'),
(28, 10, 'accept', '2022-05-31', 27, '2022-05-31 09:31:13', '2022-05-31 09:31:13'),
(29, 10, 'accept', '2022-05-31', 28, '2022-05-31 09:34:42', '2022-05-31 09:34:42'),
(30, 11, 'accept', '2022-06-01', 30, '2022-06-01 04:17:38', '2022-06-01 04:17:38'),
(31, 11, 'accept', '2022-06-01', 29, '2022-06-01 04:18:20', '2022-06-01 04:18:20'),
(32, 10, 'accept', '2022-06-02', 32, '2022-06-02 02:38:44', '2022-06-02 02:38:44'),
(33, 10, 'accept', '2022-06-02', 33, '2022-06-02 02:39:13', '2022-06-02 02:39:13'),
(34, 42, 'accept', '2022-06-02', 34, '2022-06-02 02:55:16', '2022-06-02 02:55:16'),
(35, 42, 'accept', '2022-06-02', 35, '2022-06-02 03:03:39', '2022-06-02 03:03:39'),
(36, 42, 'accept', '2022-06-02', 36, '2022-06-02 03:05:35', '2022-06-02 03:05:35'),
(37, 42, 'accept', '2022-06-02', 37, '2022-06-02 03:06:30', '2022-06-02 03:06:30'),
(38, 42, 'accept', '2022-06-02', 38, '2022-06-02 03:12:13', '2022-06-02 03:12:13'),
(39, 42, 'accept', '2022-06-02', 39, '2022-06-02 03:14:14', '2022-06-02 03:14:14'),
(40, 11, 'accept', '2022-06-02', 31, '2022-06-02 03:22:00', '2022-06-02 03:22:00'),
(41, 10, 'accept', '2022-06-02', 41, '2022-06-02 09:29:34', '2022-06-02 09:29:34'),
(42, 10, 'accept', '2022-06-02', 42, '2022-06-02 09:29:56', '2022-06-02 09:29:56'),
(43, 42, 'accept', '2022-06-03', 47, '2022-06-03 04:42:16', '2022-06-03 04:42:16'),
(44, 11, 'accept', '2022-06-03', 45, '2022-06-03 05:39:43', '2022-06-03 05:39:43'),
(45, 11, 'accept', '2022-06-03', 44, '2022-06-03 05:40:33', '2022-06-03 05:40:33'),
(46, 42, 'accept', '2022-06-03', 46, '2022-06-03 07:42:42', '2022-06-03 07:42:42'),
(47, 10, 'reject', '2022-06-03', 49, '2022-06-03 10:07:10', '2022-06-03 10:07:10'),
(48, 10, 'reject', '2022-06-03', 50, '2022-06-03 10:07:26', '2022-06-03 10:07:26'),
(49, 10, 'accept', '2022-06-04', 54, '2022-06-04 02:29:05', '2022-06-04 02:29:05'),
(50, 42, 'reject', '2022-06-04', 48, '2022-06-04 04:10:43', '2022-06-04 04:10:43'),
(51, 42, 'accept', '2022-06-04', 51, '2022-06-04 04:15:08', '2022-06-04 04:15:08'),
(52, 42, 'accept', '2022-06-04', 53, '2022-06-04 04:21:49', '2022-06-04 04:21:49'),
(53, 42, 'accept', '2022-06-04', 52, '2022-06-04 04:22:02', '2022-06-04 04:22:02'),
(54, 42, 'accept', '2022-06-04', 55, '2022-06-04 04:23:18', '2022-06-04 04:23:18'),
(55, 10, 'accept', '2022-06-04', 43, '2022-06-04 04:43:59', '2022-06-04 04:43:59'),
(56, 42, 'accept', '2022-06-05', 58, '2022-06-05 13:57:26', '2022-06-05 13:57:26'),
(57, 42, 'accept', '2022-06-05', 57, '2022-06-05 13:57:44', '2022-06-05 13:57:44'),
(58, 10, 'accept', '2022-06-06', 56, '2022-06-06 02:31:18', '2022-06-06 02:31:18'),
(59, 11, 'accept', '2022-06-06', 60, '2022-06-06 03:08:01', '2022-06-06 03:08:01'),
(60, 11, 'accept', '2022-06-06', 59, '2022-06-06 03:11:32', '2022-06-06 03:11:32'),
(61, 42, 'accept', '2022-06-06', 61, '2022-06-06 06:25:37', '2022-06-06 06:25:37'),
(62, 42, 'accept', '2022-06-06', 63, '2022-06-06 06:25:50', '2022-06-06 06:25:50'),
(63, 42, 'accept', '2022-06-06', 62, '2022-06-06 06:26:02', '2022-06-06 06:26:02'),
(64, 42, 'accept', '2022-06-06', 65, '2022-06-06 10:04:16', '2022-06-06 10:04:16'),
(65, 42, 'reject', '2022-06-06', 64, '2022-06-06 10:04:24', '2022-06-06 10:04:24'),
(66, 10, 'accept', '2022-06-07', 67, '2022-06-07 02:21:23', '2022-06-07 02:21:23');

-- --------------------------------------------------------

--
-- Table structure for table `variable_actual_vouchers`
--

CREATE TABLE `variable_actual_vouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `actual_voucher_upload_status` text COLLATE utf8mb4_unicode_ci,
  `actual_voucher_upload_date` text COLLATE utf8mb4_unicode_ci,
  `actual_voucher_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variable_assets`
--

CREATE TABLE `variable_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci,
  `unit` text COLLATE utf8mb4_unicode_ci,
  `qty` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `main_warehouse_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sizes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_assets`
--

INSERT INTO `variable_assets` (`id`, `item_name`, `unit`, `qty`, `remark`, `main_warehouse_id`, `created_at`, `updated_at`, `sizes`) VALUES
(1, 'Cement', 'Bag', 0, NULL, 1, '2022-04-29 09:56:36', '2022-04-29 09:56:36', '52.5'),
(4, 'Cement', 'Bag', 0, NULL, 1, '2022-04-30 02:57:58', '2022-04-30 02:57:58', '42.5'),
(5, 'Deformed Bar ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:31:02', '2022-04-30 03:31:02', '10mm'),
(6, 'Deformed Bar ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:31:40', '2022-04-30 03:31:40', '12mm'),
(7, 'Deformed Bar ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:05', '2022-04-30 03:32:05', '16mm'),
(8, 'Deformed Bar ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:27', '2022-04-30 03:32:27', '20mm'),
(9, 'Deformed Bar ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:43', '2022-04-30 03:32:43', '25mm'),
(10, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:33:36', '2022-04-30 03:33:36', '10mm'),
(11, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:04', '2022-04-30 03:34:04', '12mm'),
(12, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:28', '2022-04-30 03:34:28', '16mm'),
(13, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:43', '2022-04-30 03:34:43', '20mm'),
(14, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:35:00', '2022-04-30 03:35:00', '20mm'),
(15, 'MS Coil ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:35:30', '2022-04-30 04:16:51', '6.5mm'),
(16, 'MS Coil ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:35:49', '2022-04-30 04:17:09', '8mm'),
(17, 'Jungle Wood ( 10\' Above )', 'Ton', 0, NULL, 1, '2022-04-30 03:36:47', '2022-04-30 03:36:47', '3\"x2\"'),
(18, 'Jungle Wood ( 10\' Below )', 'Ton', 0, NULL, 1, '2022-04-30 03:37:16', '2022-04-30 03:37:16', '3\"x2\"'),
(19, 'Jungle Wood ( 10\' Above )', 'Ton', 0, NULL, 1, '2022-04-30 03:38:12', '2022-04-30 03:38:12', '3\"x1\"'),
(20, 'Jungle Wood ( 10\' Below )', 'Ton', 0, NULL, 1, '2022-04-30 03:38:48', '2022-04-30 03:38:48', '3\"x1\"'),
(21, 'Plywood 8mm ( Film Coated )', 'Sht', 0, NULL, 1, '2022-04-30 03:39:37', '2022-04-30 03:41:28', '8\'x4\''),
(22, 'Plywood 9mm ( Film Coated )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:03', '2022-04-30 03:42:03', '8\'x4\''),
(23, 'Plywood 8mm ( Inkanyin )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:35', '2022-04-30 03:42:35', '8\'x4\''),
(24, 'Plywood 9mm ( Inkanyin )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:56', '2022-04-30 03:42:56', '8\'x4\''),
(25, 'Brick', 'Nos', 0, NULL, 1, '2022-04-30 04:18:41', '2022-04-30 04:18:41', 'Normal'),
(26, 'River Sand', 'Sud', 0, NULL, 1, '2022-04-30 04:18:59', '2022-04-30 04:18:59', 'null'),
(27, 'River Shingle', 'Sud', 0, NULL, 1, '2022-04-30 04:19:13', '2022-04-30 04:19:13', 'null'),
(28, 'Concrete Block', 'Nos', 0, NULL, 1, '2022-04-30 04:19:57', '2022-04-30 04:19:57', '9\"x9\"'),
(29, 'Concrete Block', 'Nos', 0, NULL, 1, '2022-04-30 04:20:19', '2022-04-30 04:20:19', '11\"x11\"'),
(30, 'Glass Block', 'Nos', 0, NULL, 1, '2022-04-30 04:21:21', '2022-04-30 04:21:21', '8\"x8\"'),
(31, 'Red Oxide', 'Gal', 0, NULL, 1, '2022-04-30 04:21:53', '2022-04-30 04:21:53', 'Master'),
(32, 'Red Oxide', 'Gal', 0, NULL, 1, '2022-04-30 04:22:20', '2022-04-30 04:22:20', 'UniPrime'),
(33, 'Turpentine', 'Gal', 0, NULL, 1, '2022-04-30 04:22:43', '2022-04-30 04:22:43', 'null'),
(34, 'Smooth Putty', 'Bag', 0, NULL, 1, '2022-04-30 04:23:01', '2022-04-30 04:23:01', 'null'),
(35, 'Thinplast Putty', 'Bag', 0, NULL, 1, '2022-04-30 04:25:16', '2022-04-30 04:25:16', 'null'),
(36, '1.5mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:37:57', '2022-04-30 05:37:57', 'null'),
(37, '2.5mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:12', '2022-04-30 05:38:12', 'null'),
(38, '4mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:31', '2022-04-30 05:38:31', 'null'),
(39, '6mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:44', '2022-04-30 05:38:44', 'null'),
(40, '10mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:39:11', '2022-04-30 05:39:11', 'null'),
(41, '1 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:39:33', '2022-04-30 05:39:33', 'null'),
(42, '1 Gang 2 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:40:07', '2022-04-30 05:40:27', 'null'),
(43, '2 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:09', '2022-04-30 05:41:09', 'null'),
(44, '2 Gang 2 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:25', '2022-04-30 05:41:25', 'null'),
(45, '3 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:53', '2022-04-30 05:41:53', 'null'),
(46, '4 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:42:08', '2022-04-30 05:42:08', 'null'),
(47, '5 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:42:21', '2022-04-30 05:42:21', 'null'),
(48, '1\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:07:06', '2022-04-30 06:07:06', 'null'),
(49, '1 1/2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:07:56', '2022-04-30 06:07:56', 'null'),
(50, '2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:08:16', '2022-04-30 06:08:16', 'null'),
(51, 'Wire Tape', 'Coil', 0, NULL, 1, '2022-04-30 06:12:34', '2022-04-30 06:12:34', 'null'),
(52, '1/2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:14', '2022-04-30 06:13:14', 'null'),
(53, '3/4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:29', '2022-04-30 06:13:29', 'null'),
(54, '1\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:42', '2022-04-30 06:13:42', 'null'),
(55, '1 1/4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:59', '2022-04-30 06:13:59', 'null'),
(56, '1 1/2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:21', '2022-04-30 06:14:21', 'null'),
(57, '2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:35', '2022-04-30 06:14:35', 'null'),
(58, '3\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:49', '2022-04-30 06:14:49', 'null'),
(59, '4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:15:02', '2022-04-30 06:15:02', 'null'),
(60, '1/2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:27:16', '2022-04-30 06:27:16', 'null'),
(61, '3/4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:27:39', '2022-04-30 06:27:39', 'null'),
(62, '1\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:06', '2022-04-30 06:28:06', 'null'),
(63, '1 1/4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:24', '2022-04-30 06:28:24', 'null'),
(64, '1 1/2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:24', '2022-04-30 06:32:23', 'null'),
(65, '2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:32:50', '2022-04-30 06:32:50', 'null'),
(66, '3\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:33:03', '2022-04-30 06:33:03', 'null'),
(67, '4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:33:15', '2022-04-30 06:33:15', 'null'),
(68, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:15:08', '2022-05-10 15:15:08', '1\"x1\"'),
(69, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:16:25', '2022-05-10 15:17:54', '1½\"x1½\"'),
(70, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:16:50', '2022-05-10 15:16:50', '2\"x2\"'),
(71, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:17:20', '2022-05-10 15:17:20', '3\"x3\"'),
(72, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:17:37', '2022-05-10 15:17:37', '4\"x4\"'),
(73, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:18:48', '2022-05-10 15:18:48', '2\"x1\"'),
(74, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:19:18', '2022-05-10 15:19:18', '3\"x1½\"'),
(75, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:19:43', '2022-05-10 15:19:43', '4\"x2\"'),
(76, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:20:43', '2022-05-10 15:20:43', '1\"x1\"'),
(77, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:21:14', '2022-05-10 15:21:14', '1½\"x1½\"'),
(78, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:21:37', '2022-05-10 15:21:37', '2\"x2\"'),
(79, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:05', '2022-05-10 15:22:05', '3\"x3\"'),
(80, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:21', '2022-05-10 15:22:21', '4\"x4\"'),
(81, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:38', '2022-05-10 15:22:38', '2\"x1\"'),
(82, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:23:04', '2022-05-10 15:23:04', '3\"x1½\"'),
(83, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:23:24', '2022-05-10 15:23:24', '4\"x2\"'),
(84, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:24:39', '2022-05-10 15:24:39', '1\"x1\"'),
(85, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:25:22', '2022-05-10 15:25:22', '1¼\"x1¼\"'),
(86, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:25:57', '2022-05-10 15:25:57', '1½\"x1½\"'),
(87, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:12', '2022-05-10 15:26:12', '2\"x2\"'),
(88, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:28', '2022-05-10 15:26:28', '3\"x3\"'),
(89, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:43', '2022-05-10 15:26:43', '4\"x4\"'),
(90, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:19:11', '2022-05-10 16:19:11', '10\'Above'),
(91, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:19:21', '2022-05-10 16:21:38', '15\'Above'),
(92, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:22:37', '2022-05-10 16:22:37', '20\'Above'),
(93, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:23:00', '2022-05-10 16:23:00', '25\'Above'),
(94, 'Coir Yarn', 'Viss', 0, NULL, 1, '2022-05-10 16:24:32', '2022-05-10 16:24:32', 'null'),
(95, 'Bakau Pile (Myaw)', 'Pcs', 0, NULL, 1, '2022-05-10 16:26:26', '2022-05-10 16:29:40', '10\'Above'),
(96, 'Bakau Pile (Myaw)', 'Pcs', 0, NULL, 1, '2022-05-10 16:26:43', '2022-05-10 16:30:02', '13\'Above'),
(97, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:27:38', '2022-05-10 16:27:38', '4\'x2\''),
(98, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:28:33', '2022-05-10 16:28:33', '6\'x3\''),
(99, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:28:52', '2022-05-10 16:28:52', '8\'x3\''),
(100, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:29:09', '2022-05-10 16:29:09', '10\'x3\''),
(101, 'PKD Chowket 5\"x2\"', 'Nos', 0, NULL, 1, '2022-06-03 02:46:51', '2022-06-03 02:46:51', 'null'),
(102, 'PKD Chowket 6\"x2\"', 'Nos', 0, NULL, 1, '2022-06-03 02:47:46', '2022-06-03 02:47:46', 'null'),
(103, 'Door Leaf', 'Nos', 0, NULL, 1, '2022-06-03 02:48:32', '2022-06-03 02:48:32', 'null'),
(104, 'Silt Sand', 'Sud', 0, NULL, 1, '2022-06-04 04:11:55', '2022-06-04 04:11:55', 'null'),
(105, 'Concrete Cover Block', 'Nos', 0, NULL, 1, '2022-06-04 04:14:23', '2022-06-04 04:17:24', '20/25'),
(106, 'Concrete Cover Block', 'Nos', 0, NULL, 1, '2022-06-04 04:17:58', '2022-06-04 04:17:58', '20/25/38'),
(107, 'Rough Sand', 'Sud', 0, NULL, 1, '2022-06-04 04:24:10', '2022-06-04 04:24:10', 'null'),
(108, 'Floor Tile ( 1\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:47:40', '2022-06-04 04:47:40', 'null'),
(109, 'Floor Tile ( 2\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:48:12', '2022-06-04 04:48:12', 'null'),
(110, 'Floor Tile ( 2\'x2\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:48:49', '2022-06-04 04:48:49', 'null'),
(111, 'Wall Tile ( 1\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:49:17', '2022-06-04 04:49:17', 'null'),
(112, 'Wall Tile ( 2\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:49:37', '2022-06-04 04:49:37', 'null'),
(113, 'Wall Tile ( 2\'x2\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:58:31', '2022-06-04 04:58:49', 'null'),
(114, 'Decking Sheet', 'Rft', 0, NULL, 1, '2022-06-04 05:04:51', '2022-06-04 05:04:51', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `variable_assets_sizes`
--

CREATE TABLE `variable_assets_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `size` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_assets_sizes`
--

INSERT INTO `variable_assets_sizes` (`id`, `variable_asset_id`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, '52.5', '2022-04-29 09:56:36', '2022-04-29 09:56:36'),
(2, 4, '42.5', '2022-04-30 02:57:58', '2022-04-30 02:57:58'),
(3, 5, '10mm', '2022-04-30 03:31:02', '2022-04-30 03:31:02'),
(4, 6, '12mm', '2022-04-30 03:31:40', '2022-04-30 03:31:40'),
(5, 7, '16mm', '2022-04-30 03:32:05', '2022-04-30 03:32:05'),
(6, 8, '20mm', '2022-04-30 03:32:27', '2022-04-30 03:32:27'),
(7, 9, '25mm', '2022-04-30 03:32:43', '2022-04-30 03:32:43'),
(8, 10, '10mm', '2022-04-30 03:33:36', '2022-04-30 03:33:36'),
(9, 11, '12mm', '2022-04-30 03:34:04', '2022-04-30 03:34:04'),
(10, 12, '16mm', '2022-04-30 03:34:28', '2022-04-30 03:34:28'),
(11, 13, '20mm', '2022-04-30 03:34:43', '2022-04-30 03:34:43'),
(12, 14, '20mm', '2022-04-30 03:35:00', '2022-04-30 03:35:00'),
(15, 17, '3\"x2\"', '2022-04-30 03:36:47', '2022-04-30 03:36:47'),
(16, 18, '3\"x2\"', '2022-04-30 03:37:16', '2022-04-30 03:37:16'),
(17, 19, '3\"x1\"', '2022-04-30 03:38:12', '2022-04-30 03:38:12'),
(18, 20, '3\"x1\"', '2022-04-30 03:38:48', '2022-04-30 03:38:48'),
(24, 21, '8\'x4\'', '2022-04-30 03:41:28', '2022-04-30 03:41:28'),
(25, 22, '8\'x4\'', '2022-04-30 03:42:03', '2022-04-30 03:42:03'),
(26, 23, '8\'x4\'', '2022-04-30 03:42:35', '2022-04-30 03:42:35'),
(27, 24, '8\'x4\'', '2022-04-30 03:42:56', '2022-04-30 03:42:56'),
(28, 15, '6.5mm', '2022-04-30 04:16:51', '2022-04-30 04:16:51'),
(29, 16, '8mm', '2022-04-30 04:17:09', '2022-04-30 04:17:09'),
(30, 25, 'Normal', '2022-04-30 04:18:41', '2022-04-30 04:18:41'),
(31, 28, '9\"x9\"', '2022-04-30 04:19:57', '2022-04-30 04:19:57'),
(32, 29, '11\"x11\"', '2022-04-30 04:20:19', '2022-04-30 04:20:19'),
(33, 30, '8\"x8\"', '2022-04-30 04:21:21', '2022-04-30 04:21:21'),
(34, 31, 'Master', '2022-04-30 04:21:53', '2022-04-30 04:21:53'),
(35, 32, 'UniPrime', '2022-04-30 04:22:20', '2022-04-30 04:22:20'),
(36, 42, 'null', '2022-04-30 05:40:27', '2022-04-30 05:40:27'),
(37, 64, 'null', '2022-04-30 06:32:25', '2022-04-30 06:32:25'),
(38, 68, '1\"x1\"', '2022-05-10 15:15:08', '2022-05-10 15:15:08'),
(40, 70, '2\"x2\"', '2022-05-10 15:16:50', '2022-05-10 15:16:50'),
(41, 71, '3\"x3\"', '2022-05-10 15:17:20', '2022-05-10 15:17:20'),
(42, 72, '4\"x4\"', '2022-05-10 15:17:37', '2022-05-10 15:17:37'),
(43, 69, '1½\"x1½\"', '2022-05-10 15:17:54', '2022-05-10 15:17:54'),
(44, 73, '2\"x1\"', '2022-05-10 15:18:48', '2022-05-10 15:18:48'),
(45, 74, '3\"x1½\"', '2022-05-10 15:19:18', '2022-05-10 15:19:18'),
(46, 75, '4\"x2\"', '2022-05-10 15:19:43', '2022-05-10 15:19:43'),
(47, 76, '1\"x1\"', '2022-05-10 15:20:43', '2022-05-10 15:20:43'),
(48, 77, '1½\"x1½\"', '2022-05-10 15:21:14', '2022-05-10 15:21:14'),
(49, 78, '2\"x2\"', '2022-05-10 15:21:37', '2022-05-10 15:21:37'),
(50, 79, '3\"x3\"', '2022-05-10 15:22:05', '2022-05-10 15:22:05'),
(51, 80, '4\"x4\"', '2022-05-10 15:22:21', '2022-05-10 15:22:21'),
(52, 81, '2\"x1\"', '2022-05-10 15:22:38', '2022-05-10 15:22:38'),
(53, 82, '3\"x1½\"', '2022-05-10 15:23:04', '2022-05-10 15:23:04'),
(54, 83, '4\"x2\"', '2022-05-10 15:23:24', '2022-05-10 15:23:24'),
(55, 84, '1\"x1\"', '2022-05-10 15:24:39', '2022-05-10 15:24:39'),
(56, 85, '1¼\"x1¼\"', '2022-05-10 15:25:22', '2022-05-10 15:25:22'),
(57, 86, '1½\"x1½\"', '2022-05-10 15:25:57', '2022-05-10 15:25:57'),
(58, 87, '2\"x2\"', '2022-05-10 15:26:12', '2022-05-10 15:26:12'),
(59, 88, '3\"x3\"', '2022-05-10 15:26:28', '2022-05-10 15:26:28'),
(60, 89, '4\"x4\"', '2022-05-10 15:26:43', '2022-05-10 15:26:43'),
(61, 90, '10\'Above', '2022-05-10 16:19:11', '2022-05-10 16:19:11'),
(66, 91, '15\'Above', '2022-05-10 16:21:38', '2022-05-10 16:21:38'),
(67, 92, '20\'Above', '2022-05-10 16:22:37', '2022-05-10 16:22:37'),
(68, 93, '25\'Above', '2022-05-10 16:23:00', '2022-05-10 16:23:00'),
(71, 97, '4\'x2\'', '2022-05-10 16:27:38', '2022-05-10 16:27:38'),
(72, 98, '6\'x3\'', '2022-05-10 16:28:33', '2022-05-10 16:28:33'),
(73, 99, '8\'x3\'', '2022-05-10 16:28:52', '2022-05-10 16:28:52'),
(74, 100, '10\'x3\'', '2022-05-10 16:29:09', '2022-05-10 16:29:09'),
(75, 95, '10\'Above', '2022-05-10 16:29:40', '2022-05-10 16:29:40'),
(76, 96, '13\'Above', '2022-05-10 16:30:02', '2022-05-10 16:30:02'),
(77, 105, '20/25', '2022-06-04 04:17:24', '2022-06-04 04:17:24'),
(78, 106, '20/25/38', '2022-06-04 04:17:58', '2022-06-04 04:17:58'),
(79, 113, 'null', '2022-06-04 04:58:49', '2022-06-04 04:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `variable_finance_payment_slips`
--

CREATE TABLE `variable_finance_payment_slips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `finance_payment_slip_upload` text COLLATE utf8mb4_unicode_ci,
  `finance_payment_slip_upload_date` text COLLATE utf8mb4_unicode_ci,
  `finance_payment_slip_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variable_logistics_team_checks`
--

CREATE TABLE `variable_logistics_team_checks` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `variable_request_item_id` int(11) DEFAULT NULL,
  `eng_request_qty` text COLLATE utf8mb4_unicode_ci,
  `qs_passed_qty` text COLLATE utf8mb4_unicode_ci,
  `price` text COLLATE utf8mb4_unicode_ci,
  `variable_asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_logistics_team_checks`
--

INSERT INTO `variable_logistics_team_checks` (`id`, `variable_request_info_id`, `user_id`, `variable_request_item_id`, `eng_request_qty`, `qs_passed_qty`, `price`, `variable_asset_id`, `created_at`, `updated_at`) VALUES
(5, 17, 21, 23, '150', '150', '1800', 92, '2022-05-17 01:47:03', '2022-05-17 01:47:03'),
(6, 17, 21, 24, '15', '8', '0', 94, '2022-05-17 01:47:03', '2022-05-17 01:47:03'),
(7, 17, 21, 23, '150', '150', '1800', 92, '2022-05-17 01:49:36', '2022-05-17 01:49:36'),
(8, 17, 21, 24, '15', '8', '0', 94, '2022-05-17 01:49:36', '2022-05-17 01:49:36'),
(9, 6, 21, 9, '1.5', '1.5', '12000', 26, '2022-05-26 09:07:19', '2022-05-26 09:07:19'),
(10, 5, 21, 8, '1.5', '1.5', '12000', 26, '2022-05-29 08:36:05', '2022-05-29 08:36:05'),
(11, 7, 21, 10, '50', '50', '7900', 4, '2022-05-29 08:51:34', '2022-05-29 08:51:34'),
(12, 7, 21, 11, '1.5', '1.5', '12000', 26, '2022-05-29 08:51:34', '2022-05-29 08:51:34'),
(13, 8, 21, 12, '1', '1', '60000', 27, '2022-05-29 08:53:44', '2022-05-29 08:53:44'),
(14, 9, 21, 13, '50', '50', '7900', 4, '2022-05-29 08:55:47', '2022-05-29 08:55:47'),
(15, 10, 21, 14, '3', '3', '12000', 26, '2022-05-29 08:57:28', '2022-05-29 08:57:28'),
(16, 11, 21, 15, '3000', '3000', '100', 25, '2022-05-29 08:58:34', '2022-05-29 08:58:34'),
(17, 12, 21, 16, '5000', '5000', '113', 25, '2022-05-29 08:59:39', '2022-05-29 08:59:39'),
(18, 13, 21, 17, '30', '30', '8100', 4, '2022-05-29 09:04:05', '2022-05-29 09:04:05'),
(19, 13, 21, 18, '1.5', '1.5', '12000', 26, '2022-05-29 09:04:05', '2022-05-29 09:04:05'),
(20, 13, 21, 19, '1.5', '1.5', '0', 27, '2022-05-29 09:04:05', '2022-05-29 09:04:05'),
(21, 15, 21, 21, '50', '50', '8100', 4, '2022-05-29 09:24:42', '2022-05-29 09:24:42'),
(22, 16, 21, 22, '3000', '5000', '113', 25, '2022-05-29 09:25:39', '2022-05-29 09:25:39'),
(23, 18, 21, 25, '50', '50', '8515', 1, '2022-05-29 09:28:48', '2022-05-29 09:28:48'),
(24, 18, 21, 26, '1.5', '1.5', '60000', 27, '2022-05-29 09:28:48', '2022-05-29 09:28:48'),
(25, 18, 21, 27, '1.5', '1.5', '12000', 26, '2022-05-29 09:28:48', '2022-05-29 09:28:48'),
(26, 19, 21, 28, '40', '40', '8455', 1, '2022-05-29 09:30:59', '2022-05-29 09:30:59'),
(27, 19, 21, 29, '1.5', '1.5', '12000', 26, '2022-05-29 09:30:59', '2022-05-29 09:30:59'),
(28, 19, 21, 30, '2.5', '2.5', '60000', 27, '2022-05-29 09:30:59', '2022-05-29 09:30:59'),
(29, 20, 21, 31, '20', '20', '7800', 4, '2022-05-29 09:32:54', '2022-05-29 09:32:54'),
(30, 22, 21, 34, '1.5', '1.5', '12000', 26, '2022-05-29 09:41:17', '2022-05-29 09:41:17'),
(31, 22, 21, 35, '1.5', '1.5', '60000', 27, '2022-05-29 09:41:17', '2022-05-29 09:41:17'),
(32, 30, 17, 44, '1.5', '1.5', '13000', 26, '2022-06-01 04:25:41', '2022-06-01 04:25:41'),
(33, 28, 21, 42, '3', '3', '13000', 26, '2022-06-01 05:20:59', '2022-06-01 05:20:59'),
(34, 27, 21, 41, '50', '50', '7750', 4, '2022-06-01 07:07:12', '2022-06-01 07:07:12'),
(35, 36, 17, 50, '3', '3', '62000', 26, '2022-06-02 10:17:45', '2022-06-02 10:17:45'),
(36, 41, 21, 55, '30', '30', '7775', 4, '2022-06-03 03:59:03', '2022-06-03 03:59:03'),
(37, 31, 21, 45, '5000', '5000', '120', 25, '2022-06-03 04:01:30', '2022-06-03 04:01:30'),
(38, 35, 21, 49, '10000', '10000', '119', 25, '2022-06-03 04:05:35', '2022-06-03 04:05:35'),
(39, 47, 21, 61, '1.5', '1.5', '13000', 26, '2022-06-03 07:59:39', '2022-06-03 07:59:39'),
(40, 46, 21, 60, '5000', '5000', '120', 25, '2022-06-03 08:02:56', '2022-06-03 08:02:56'),
(41, 29, 21, 43, '25', '25', '20000', 77, '2022-06-03 08:04:24', '2022-06-03 08:04:24'),
(42, 54, 21, 68, '5000', '5000', '122', 25, '2022-06-05 11:53:30', '2022-06-05 11:53:30'),
(43, 52, 21, 66, '35', '35', '7775', 4, '2022-06-05 11:59:23', '2022-06-05 11:59:23'),
(44, 34, 17, 48, '40', '40', '7775', 4, '2022-06-06 03:48:03', '2022-06-06 03:48:03'),
(45, 39, 21, 53, '47', '0.8868', '1245000', 7, '2022-06-06 06:15:39', '2022-06-06 06:15:39'),
(46, 38, 21, 52, '140', '1.037', '1345000', 5, '2022-06-06 06:20:50', '2022-06-06 06:20:50'),
(47, 37, 21, 51, '80', '0.5185', '1025000', 10, '2022-06-06 06:29:49', '2022-06-06 06:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `variable_logistics_team_sends`
--

CREATE TABLE `variable_logistics_team_sends` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_from_warehouse_id` int(11) DEFAULT NULL,
  `transfer_to` text COLLATE utf8mb4_unicode_ci,
  `sent_date` text COLLATE utf8mb4_unicode_ci,
  `user_id` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transfer_to_customer_id` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_logistics_team_sends`
--

INSERT INTO `variable_logistics_team_sends` (`id`, `transfer_from_warehouse_id`, `transfer_to`, `sent_date`, `user_id`, `variable_request_info_id`, `created_at`, `updated_at`, `transfer_to_customer_id`, `remark`) VALUES
(5, 1, 'YGN_MYG_00009', '2022-05-30 12:00 AM', '22', '20', '2022-05-30 09:14:36', '2022-05-30 09:14:36', 11, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_payments`
--

CREATE TABLE `variable_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transportation` text COLLATE utf8mb4_unicode_ci,
  `labor` text COLLATE utf8mb4_unicode_ci,
  `banking_percent` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_payments`
--

INSERT INTO `variable_payments` (`id`, `variable_request_info_id`, `user_id`, `transportation`, `labor`, `banking_percent`, `extra`, `created_at`, `updated_at`) VALUES
(4, 17, 21, '23000', '0', '0', '0', '2022-05-17 01:47:03', '2022-05-17 01:47:03'),
(5, 17, 21, '23000', '0', '5860', '0', '2022-05-17 01:49:36', '2022-05-17 01:49:36'),
(6, 6, 21, '18000', '0', '0', '0', '2022-05-26 09:07:19', '2022-05-26 09:07:19'),
(7, 5, 21, '18000', '10000', '0', '0', '2022-05-29 08:36:05', '2022-05-29 08:36:05'),
(8, 7, 21, '38000', '5000', '0', '0', '2022-05-29 08:51:34', '2022-05-29 08:51:34'),
(9, 8, 21, '13000', '5000', '0', '0', '2022-05-29 08:53:44', '2022-05-29 08:53:44'),
(10, 9, 21, '20000', '0', '0', '0', '2022-05-29 08:55:47', '2022-05-29 08:55:47'),
(11, 10, 21, '22000', '5000', '0', '0', '2022-05-29 08:57:28', '2022-05-29 08:57:28'),
(12, 11, 21, '0', '0', '0', '0', '2022-05-29 08:58:34', '2022-05-29 08:58:34'),
(13, 12, 21, '0', '0', '0', '0', '2022-05-29 08:59:39', '2022-05-29 08:59:39'),
(14, 13, 21, '18000', '0', '4860', '0', '2022-05-29 09:04:05', '2022-05-29 09:04:05'),
(15, 15, 21, '0', '0', '8100', '0', '2022-05-29 09:24:42', '2022-05-29 09:24:42'),
(16, 16, 21, '0', '0', '0', '0', '2022-05-29 09:25:39', '2022-05-29 09:25:39'),
(17, 18, 21, '36000', '0', '8435', '0', '2022-05-29 09:28:48', '2022-05-29 09:28:48'),
(18, 19, 21, '57000', '0', '0', '0', '2022-05-29 09:30:59', '2022-05-29 09:30:59'),
(19, 20, 21, '0', '0', '0', '6550', '2022-05-29 09:32:54', '2022-05-29 09:32:54'),
(20, 22, 21, '36000', '0', '0', '0', '2022-05-29 09:41:17', '2022-05-29 09:41:17'),
(21, 30, 17, '13000', '0', '0', '0', '2022-06-01 04:25:41', '2022-06-01 04:25:41'),
(22, 28, 21, '26000', '0', '0', '0', '2022-06-01 05:20:59', '2022-06-01 05:20:59'),
(23, 27, 21, '0', '0', '0', '0', '2022-06-01 07:07:12', '2022-06-01 07:07:12'),
(24, 36, 17, '26000', '0', '0', '0', '2022-06-02 10:17:45', '2022-06-02 10:17:45'),
(25, 41, 21, '0', '0', '0', '0', '2022-06-03 03:59:03', '2022-06-03 03:59:03'),
(26, 31, 21, '0', '15000', '0', '0', '2022-06-03 04:01:30', '2022-06-03 04:01:30'),
(27, 35, 21, '0', '0', '0', '0', '2022-06-03 04:05:35', '2022-06-03 04:05:35'),
(28, 47, 21, '11000', '0', '0', '0', '2022-06-03 07:59:39', '2022-06-03 07:59:39'),
(29, 46, 21, '0', '15000', '0', '0', '2022-06-03 08:02:56', '2022-06-03 08:02:56'),
(30, 29, 21, '28000', '0', '8000', '0', '2022-06-03 08:04:24', '2022-06-03 08:04:24'),
(31, 54, 21, '0', '0', '0', '0', '2022-06-05 11:53:30', '2022-06-05 11:53:30'),
(32, 52, 21, '0', '0', '0', '0', '2022-06-05 11:59:23', '2022-06-05 11:59:23'),
(33, 34, 17, '0', '0', '0', '0', '2022-06-06 03:48:03', '2022-06-06 03:48:03'),
(34, 39, 21, '0', '0', '1.5', '0', '2022-06-06 06:15:39', '2022-06-06 06:15:39'),
(35, 38, 21, '0', '0', '1.5', '0', '2022-06-06 06:20:50', '2022-06-06 06:20:50'),
(36, 37, 21, '30000', '8750', '1.5', '0', '2022-06-06 06:29:49', '2022-06-06 06:29:49');

-- --------------------------------------------------------

--
-- Table structure for table `variable_qs_team_checks`
--

CREATE TABLE `variable_qs_team_checks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `variable_request_item_id` int(11) DEFAULT NULL,
  `eng_request_qty` text COLLATE utf8mb4_unicode_ci,
  `qs_passed_qty` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_qs_team_checks`
--

INSERT INTO `variable_qs_team_checks` (`id`, `user_id`, `variable_request_item_id`, `eng_request_qty`, `qs_passed_qty`, `variable_request_info_id`, `variable_asset_id`, `created_at`, `updated_at`) VALUES
(5, 42, 9, '1.5', '1.5', 6, 26, '2022-05-10 02:08:18', '2022-05-10 02:08:18'),
(6, 10, 8, '1.5', '1.5', 5, 26, '2022-05-10 02:51:46', '2022-05-10 02:51:46'),
(7, 11, 14, '3', '3', 10, 26, '2022-05-10 02:54:19', '2022-05-10 02:54:19'),
(8, 11, 13, '50', '50', 9, 4, '2022-05-10 02:57:22', '2022-05-10 02:57:22'),
(9, 10, 12, '1', '1', 8, 27, '2022-05-10 02:58:35', '2022-05-10 02:58:35'),
(10, 10, 10, '50', '50', 7, 4, '2022-05-10 03:50:52', '2022-05-10 03:50:52'),
(11, 10, 11, '1.5', '1.5', 7, 26, '2022-05-10 03:50:52', '2022-05-10 03:50:52'),
(12, 10, 15, '3000', '3000', 11, 25, '2022-05-10 03:51:15', '2022-05-10 03:51:15'),
(13, 10, 16, '5000', '5000', 12, 25, '2022-05-11 04:49:15', '2022-05-11 04:49:15'),
(14, 10, 17, '30', '30', 13, 4, '2022-05-11 04:49:44', '2022-05-11 04:49:44'),
(15, 10, 18, '1.5', '1.5', 13, 26, '2022-05-11 04:49:44', '2022-05-11 04:49:44'),
(16, 10, 19, '1.5', '1.5', 13, 27, '2022-05-11 04:49:44', '2022-05-11 04:49:44'),
(17, 10, 21, '50', '50', 15, 4, '2022-05-12 10:15:56', '2022-05-12 10:15:56'),
(18, 10, 23, '150', '150', 17, 92, '2022-05-13 03:07:20', '2022-05-13 03:07:20'),
(19, 10, 24, '15', '8', 17, 94, '2022-05-13 03:07:20', '2022-05-13 03:07:20'),
(20, 10, 22, '3000', '5000', 16, 25, '2022-05-13 03:08:34', '2022-05-13 03:08:34'),
(21, 42, 25, '50', '50', 18, 1, '2022-05-13 03:09:18', '2022-05-13 03:09:18'),
(22, 42, 26, '1.5', '1.5', 18, 27, '2022-05-13 03:09:18', '2022-05-13 03:09:18'),
(23, 42, 27, '1.5', '1.5', 18, 26, '2022-05-13 03:09:18', '2022-05-13 03:09:18'),
(24, 10, 31, '20', '20', 20, 4, '2022-05-16 06:10:49', '2022-05-16 06:10:49'),
(25, 10, 28, '40', '40', 19, 1, '2022-05-16 06:11:15', '2022-05-16 06:11:15'),
(26, 10, 29, '1.5', '1.5', 19, 26, '2022-05-16 06:11:15', '2022-05-16 06:11:15'),
(27, 10, 30, '2.5', '2.5', 19, 27, '2022-05-16 06:11:15', '2022-05-16 06:11:15'),
(28, 10, 34, '1.5', '1.5', 22, 26, '2022-05-28 02:43:18', '2022-05-28 02:43:18'),
(29, 10, 35, '1.5', '1.5', 22, 27, '2022-05-28 02:43:18', '2022-05-28 02:43:18'),
(30, 42, 40, '3', '3', 26, 26, '2022-05-31 02:24:11', '2022-05-31 02:24:11'),
(31, 42, 40, '3', '3', 26, 26, '2022-05-31 02:24:40', '2022-05-31 02:24:40'),
(32, 42, 39, '5000', '5000', 25, 25, '2022-05-31 02:29:29', '2022-05-31 02:29:29'),
(33, 11, 38, '3', '3', 24, 26, '2022-05-31 02:32:42', '2022-05-31 02:32:42'),
(34, 10, 41, '50', '50', 27, 4, '2022-05-31 09:33:35', '2022-05-31 09:33:35'),
(35, 10, 42, '3', '3', 28, 26, '2022-05-31 09:34:56', '2022-05-31 09:34:56'),
(36, 11, 44, '1.5', '1.5', 30, 26, '2022-06-01 04:17:52', '2022-06-01 04:17:52'),
(37, 11, 43, '25', '25', 29, 77, '2022-06-01 04:18:35', '2022-06-01 04:18:35'),
(38, 10, 46, '5000', '5000', 32, 25, '2022-06-02 02:39:01', '2022-06-02 02:39:01'),
(39, 10, 47, '1.5', '1.5', 33, 26, '2022-06-02 02:39:53', '2022-06-02 02:39:53'),
(40, 42, 48, '40', '40', 34, 4, '2022-06-02 02:59:26', '2022-06-02 02:59:26'),
(41, 42, 49, '10000', '10000', 35, 25, '2022-06-02 03:04:23', '2022-06-02 03:04:23'),
(42, 42, 50, '3', '3', 36, 26, '2022-06-02 03:05:51', '2022-06-02 03:05:51'),
(43, 42, 51, '80', '0.5185', 37, 10, '2022-06-02 03:11:25', '2022-06-02 03:11:25'),
(44, 42, 52, '140', '1.0370', 38, 5, '2022-06-02 03:16:46', '2022-06-02 03:16:46'),
(45, 42, 53, '47', '0.8868', 39, 7, '2022-06-02 03:20:52', '2022-06-02 03:20:52'),
(46, 11, 45, '5000', '5000', 31, 25, '2022-06-02 03:23:00', '2022-06-02 03:23:00'),
(47, 10, 55, '30', '30', 41, 4, '2022-06-02 16:41:59', '2022-06-02 16:41:59'),
(48, 10, 56, '1', '1', 42, 26, '2022-06-02 16:42:38', '2022-06-02 16:42:38'),
(49, 42, 61, '1.5', '1.5', 47, 26, '2022-06-03 04:43:01', '2022-06-03 04:43:01'),
(50, 11, 59, '50', '50', 45, 4, '2022-06-03 05:39:56', '2022-06-03 05:39:56'),
(51, 11, 58, '1.5', '1.5', 44, 26, '2022-06-03 05:40:47', '2022-06-03 05:40:47'),
(52, 42, 60, '5000', '5000', 46, 25, '2022-06-03 07:42:28', '2022-06-03 07:42:28'),
(53, 42, 36, '1.5', '1.5', 23, 26, '2022-06-03 08:09:18', '2022-06-03 08:09:18'),
(54, 42, 37, '1.5', '1.5', 23, 27, '2022-06-03 08:09:18', '2022-06-03 08:09:18'),
(55, 10, 68, '5000', '5000', 54, 25, '2022-06-04 02:29:22', '2022-06-04 02:29:22'),
(56, 42, 67, '2', '2', 53, 26, '2022-06-04 04:22:35', '2022-06-04 04:22:35'),
(57, 42, 66, '35', '35', 52, 4, '2022-06-04 04:22:50', '2022-06-04 04:22:50'),
(58, 42, 65, '1000', '1000', 51, 25, '2022-06-04 04:23:05', '2022-06-04 04:23:05'),
(59, 42, 69, '3', '3', 55, 104, '2022-06-04 04:25:39', '2022-06-04 04:25:39'),
(60, 10, 57, '30', '30', 43, 22, '2022-06-04 04:44:16', '2022-06-04 04:44:16'),
(61, 42, 72, '3000', '3000', 58, 25, '2022-06-05 13:57:13', '2022-06-05 13:57:13'),
(62, 10, 70, '1.5', '1.5', 56, 26, '2022-06-06 02:31:37', '2022-06-06 02:31:37'),
(63, 42, 71, '1', '1.5', 57, 27, '2022-06-06 02:36:42', '2022-06-06 02:36:42'),
(64, 11, 74, '5000', '5000', 60, 25, '2022-06-06 03:08:16', '2022-06-06 03:08:16'),
(65, 11, 73, '1.5', '1.5', 59, 26, '2022-06-06 03:11:53', '2022-06-06 03:11:53'),
(66, 42, 75, '50', '50', 61, 1, '2022-06-06 06:27:09', '2022-06-06 06:27:09'),
(67, 42, 76, '1.5', '1.5', 62, 26, '2022-06-06 06:28:26', '2022-06-06 06:28:26'),
(68, 42, 77, '1.5', '1.5', 63, 27, '2022-06-06 06:28:37', '2022-06-06 06:28:37'),
(69, 42, 79, '50', '50', 65, 1, '2022-06-06 10:04:37', '2022-06-06 10:04:37'),
(70, 10, 81, '1', '1', 67, 83, '2022-06-07 02:21:33', '2022-06-07 02:21:33');

-- --------------------------------------------------------

--
-- Table structure for table `variable_received_by_engineers`
--

CREATE TABLE `variable_received_by_engineers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `received_by_engineer_status` text COLLATE utf8mb4_unicode_ci,
  `received_date` text COLLATE utf8mb4_unicode_ci,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_received_by_engineers`
--

INSERT INTO `variable_received_by_engineers` (`id`, `user_id`, `received_by_engineer_status`, `received_date`, `variable_request_info_id`, `created_at`, `updated_at`) VALUES
(4, 31, 'received', '2022-05-10 12:00 AM', 5, '2022-05-12 12:20:43', '2022-05-12 12:20:43'),
(5, 31, 'received', '2022-05-12 12:00 AM', 6, '2022-05-12 12:20:58', '2022-05-12 12:20:58'),
(6, 31, 'received', '2022-05-12 12:00 AM', 11, '2022-05-12 12:21:04', '2022-05-12 12:21:04'),
(7, 28, 'received', '2022-05-13 12:00 AM', 13, '2022-05-13 04:41:17', '2022-05-13 04:41:17'),
(8, 28, 'received', '2022-05-17 03:00 PM', 17, '2022-05-17 07:40:46', '2022-05-17 07:40:46'),
(9, 31, 'received', '2022-05-17 12:00 AM', 18, '2022-05-21 12:30:04', '2022-05-21 12:30:04'),
(10, 31, 'received', '2022-05-17 12:00 AM', 19, '2022-05-21 12:30:14', '2022-05-21 12:30:14'),
(11, 31, 'received', '2022-05-17 12:00 AM', 20, '2022-05-21 12:30:23', '2022-05-21 12:30:23'),
(12, 31, 'received', '2022-05-26 12:00 AM', 21, '2022-05-27 09:24:38', '2022-05-27 09:24:38'),
(13, 31, 'received', '2022-05-26 12:00 AM', 22, '2022-05-27 09:24:46', '2022-05-27 09:24:46'),
(14, 31, 'received', '2022-06-01 12:00 AM', 23, '2022-06-01 09:59:55', '2022-06-01 09:59:55'),
(15, 28, 'received', '2022-06-01 12:00 AM', 27, '2022-06-02 06:49:48', '2022-06-02 06:49:48'),
(16, 28, 'received', '2022-06-02 07:00 PM', 28, '2022-06-02 06:50:19', '2022-06-02 06:50:19'),
(17, 31, 'received', '2022-06-03 12:00 AM', 29, '2022-06-03 06:46:58', '2022-06-03 06:46:58'),
(18, 31, 'received', '2022-06-03 12:00 AM', 46, '2022-06-03 06:52:26', '2022-06-03 06:52:26'),
(19, 37, 'received', '2022-06-04 03:00 PM', 47, '2022-06-05 09:44:06', '2022-06-05 09:44:06'),
(20, 28, 'received', '2022-06-05 09:00 AM', 54, '2022-06-05 12:03:58', '2022-06-05 12:03:58'),
(21, 36, 'received', '2022-06-04 01:15 PM', 41, '2022-06-05 12:07:00', '2022-06-05 12:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `variable_request_infos`
--

CREATE TABLE `variable_request_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci,
  `date` text COLLATE utf8mb4_unicode_ci,
  `customer_id` int(11) DEFAULT NULL,
  `engineer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `accept_reject_status` text COLLATE utf8mb4_unicode_ci,
  `accept_reject_date` text COLLATE utf8mb4_unicode_ci,
  `qs_team_check_status` text COLLATE utf8mb4_unicode_ci,
  `qs_team_check_date` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_check` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_check_date` text COLLATE utf8mb4_unicode_ci,
  `management_accept_reject_status` text COLLATE utf8mb4_unicode_ci,
  `management_accept_reject_date` text COLLATE utf8mb4_unicode_ci,
  `received_by_engineer_status` text COLLATE utf8mb4_unicode_ci,
  `received_date` text COLLATE utf8mb4_unicode_ci,
  `actual_voucher_upload` text COLLATE utf8mb4_unicode_ci,
  `actual_voucher_upload_date` text COLLATE utf8mb4_unicode_ci,
  `finance_payment_slip_upload` text COLLATE utf8mb4_unicode_ci,
  `finance_payment_slip_upload_date` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_send_status` text COLLATE utf8mb4_unicode_ci,
  `logistics_team_send_date` text COLLATE utf8mb4_unicode_ci,
  `need_date` text COLLATE utf8mb4_unicode_ci,
  `work_scope` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_request_infos`
--

INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`) VALUES
(5, 'O 0001', '2022-05-07 12:00 AM', 14, 31, '2022-05-07 04:12:36', '2022-05-29 08:36:05', 'accept', '2022-05-09 15:04:05pm', 'finished', '2022-05-10 09:51:46am', 'finished', '2022-05-29 15:36:05pm', NULL, NULL, 'received', '2022-05-10 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 12:00 AM', 'Lean Concrete casting'),
(6, 'O 0002', '2022-05-09 12:00 AM', 14, 31, '2022-05-09 03:12:13', '2022-05-26 09:07:19', 'accept', '2022-05-09 15:04:38pm', 'finished', '2022-05-10 09:08:18am', 'finished', '2022-05-26 16:07:19pm', NULL, NULL, 'received', '2022-05-12 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 12:00 AM', 'Lean concret for footing'),
(7, '0001', '2022-05-09 10:40 AM', 4, 26, '2022-05-09 03:43:10', '2022-05-29 08:51:34', 'accept', '2022-05-09 15:09:16pm', 'finished', '2022-05-10 10:50:52am', 'finished', '2022-05-29 15:51:34pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 09:00 AM', 'G.floor brick work,plastering work,ground tank work'),
(8, '0003', '2022-05-09 12:00 AM', 5, 26, '2022-05-09 03:49:48', '2022-05-29 08:53:44', 'accept', '2022-05-09 15:21:21pm', 'finished', '2022-05-10 09:58:35am', 'finished', '2022-05-29 15:53:44pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-11 12:00 AM', 'Concrete casting for DPC,lintel,window sail etc'),
(9, 'O-00001', '2022-05-09 12:00 AM', 6, 25, '2022-05-09 06:55:58', '2022-05-29 08:55:47', 'accept', '2022-05-09 15:21:33pm', 'finished', '2022-05-10 09:57:22am', 'finished', '2022-05-29 15:55:47pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 12:00 AM', 'For Plastering Work'),
(10, 'O-000011', '2022-05-09 12:00 AM', 6, 25, '2022-05-09 07:02:30', '2022-05-29 08:57:28', 'accept', '2022-05-10 09:53:47am', 'finished', '2022-05-10 09:54:19am', 'finished', '2022-05-29 15:57:28pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-12 12:00 AM', 'For Plastering Work'),
(11, 'O 0003', '2022-05-09 12:00 AM', 14, 31, '2022-05-09 10:09:30', '2022-05-29 08:58:34', 'accept', '2022-05-10 09:59:13am', 'finished', '2022-05-10 10:51:15am', 'finished', '2022-05-29 15:58:34pm', NULL, NULL, 'received', '2022-05-12 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 12:00 AM', 'Retaining wall'),
(12, '0004', '2022-05-10 12:00 AM', 4, 26, '2022-05-10 06:07:06', '2022-05-29 08:59:39', 'accept', '2022-05-11 11:48:36am', 'finished', '2022-05-11 11:49:15am', 'finished', '2022-05-29 15:59:39pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 12:00 AM', 'G.floor brick work,1st floor brick work'),
(13, '00001', '2022-05-10 12:00 AM', 8, 28, '2022-05-10 09:40:28', '2022-05-29 09:04:05', 'accept', '2022-05-11 11:48:47am', 'finished', '2022-05-11 11:49:44am', 'finished', '2022-05-29 16:04:05pm', NULL, NULL, 'received', '2022-05-13 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 09:30 AM', 'Ground Tank & Spetic Tank'),
(14, '0005', '2022-05-11 12:00 AM', 4, 26, '2022-05-11 09:17:26', '2022-05-12 10:14:08', 'accept', '2022-05-12 17:14:08pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', 'Roof slab and penthouse slab'),
(15, '0007', '2022-05-11 12:00 AM', 5, 26, '2022-05-11 09:21:14', '2022-05-29 09:24:42', 'accept', '2022-05-12 17:15:28pm', 'finished', '2022-05-12 17:15:56pm', 'finished', '2022-05-29 16:24:42pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', 'Brick work and plastering work'),
(16, '0008', '2022-05-11 12:00 AM', 5, 26, '2022-05-11 09:23:38', '2022-05-29 09:25:39', 'accept', '2022-05-12 17:16:12pm', 'finished', '2022-05-13 10:08:34am', 'finished', '2022-05-29 16:25:39pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', '1st floor and 2nd floor brick work'),
(17, '00002', '2022-05-12 12:00 AM', 8, 28, '2022-05-12 09:49:48', '2022-05-29 11:05:10', 'accept', '2022-05-13 10:07:03am', 'finished', '2022-05-13 10:07:20am', 'finished', '2022-05-17 08:49:36am', 'accept', '2022-05-29 18:05:10pm', 'received', '2022-05-17 03:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-14 12:00 AM', 'Building scaffolding'),
(18, 'O 0004', '2022-05-12 12:00 AM', 14, 31, '2022-05-12 12:23:48', '2022-05-29 11:03:04', 'accept', '2022-05-13 10:07:39am', 'finished', '2022-05-13 10:09:18am', 'finished', '2022-05-29 16:28:48pm', 'reject', '2022-05-29 18:03:04pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 12:00 AM', 'Footing GL C/D/E concrete casting'),
(19, 'O 0005', '2022-05-13 12:00 AM', 11, 31, '2022-05-13 13:04:42', '2022-05-29 11:01:17', 'accept', '2022-05-16 13:09:18pm', 'finished', '2022-05-16 13:11:15pm', 'finished', '2022-05-29 16:30:59pm', 'accept', '2022-05-29 18:01:17pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-17 12:00 AM', 'RB casting'),
(20, 'O 0006', '2022-05-13 12:00 AM', 11, 31, '2022-05-13 13:05:23', '2022-05-30 09:14:36', 'accept', '2022-05-16 13:10:41pm', 'finished', '2022-05-16 13:10:49pm', 'finished', '2022-05-29 16:32:54pm', 'accept', '2022-05-29 18:01:01pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-05-30 16:14:36pm', '2022-05-17 12:00 AM', 'GT and Septic tank'),
(21, 'O 0007', '2022-05-21 12:00 AM', 14, 31, '2022-05-21 12:33:06', '2022-05-27 09:24:38', 'accept', '2022-05-23 21:54:08pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-05-26 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 12:00 AM', 'Footing concrete casting'),
(22, 'O 0008', '2022-05-23 12:00 AM', 14, 31, '2022-05-23 01:14:35', '2022-05-29 11:00:48', 'accept', '2022-05-23 21:54:14pm', 'finished', '2022-05-28 09:43:18am', 'finished', '2022-05-29 16:41:17pm', 'accept', '2022-05-29 18:00:48pm', 'received', '2022-05-26 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-24 12:00 AM', 'Footing concrete casting'),
(23, 'O 0009', '2022-05-27 12:00 AM', 14, 31, '2022-05-27 09:26:29', '2022-06-03 08:09:18', 'accept', '2022-05-28 16:34:58pm', 'finished', '2022-06-03 15:09:18pm', NULL, NULL, NULL, NULL, 'received', '2022-06-01 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 12:00 AM', 'Short column casting GL D and E'),
(24, 'R-000020', '2022-05-30 12:00 AM', 6, 25, '2022-05-30 13:27:38', '2022-05-31 02:32:42', 'accept', '2022-05-31 09:32:23am', 'finished', '2022-05-31 09:32:42am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'G Tank &Septic Tank (BW &Plastering)'),
(25, 'R-000021', '2022-05-30 12:00 AM', 13, 25, '2022-05-30 13:29:24', '2022-05-31 02:29:29', 'accept', '2022-05-31 09:27:46am', 'finished', '2022-05-31 09:29:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 12:00 AM', 'RW Brickwork'),
(26, 'R-000022', '2022-05-30 12:00 AM', 13, 25, '2022-05-30 13:30:38', '2022-05-31 02:24:40', 'accept', '2022-05-31 09:23:33am', 'finished', '2022-05-31 09:24:40am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 12:00 AM', 'RW Brick work'),
(27, 'R-000023', '2022-05-31 12:00 AM', 2, 28, '2022-05-31 03:47:03', '2022-06-06 04:52:11', 'accept', '2022-05-31 16:31:13pm', 'finished', '2022-05-31 16:33:35pm', 'finished', '2022-06-01 14:07:12pm', 'accept', '2022-06-06 11:52:11am', 'received', '2022-06-01 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 12:00 AM', 'Ground Tank and Spetic Tank'),
(28, 'R-000024', '2022-05-31 12:00 AM', 2, 28, '2022-05-31 03:52:08', '2022-06-02 06:50:19', 'accept', '2022-05-31 16:34:42pm', 'finished', '2022-05-31 16:34:56pm', 'finished', '2022-06-01 12:20:59pm', NULL, NULL, 'received', '2022-06-02 07:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 12:00 AM', 'Ground Tank and Spetic Tank'),
(29, 'O-0002', '2022-05-31 12:00 AM', 11, 31, '2022-05-31 07:48:04', '2022-06-03 08:04:24', 'accept', '2022-06-01 11:18:20am', 'finished', '2022-06-01 11:18:35am', 'finished', '2022-06-03 15:04:24pm', NULL, NULL, 'received', '2022-06-03 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'Roofing'),
(30, 'R-000026', '2022-05-31 12:00 AM', 4, 26, '2022-05-31 08:49:28', '2022-06-01 04:25:41', 'accept', '2022-06-01 11:17:38am', 'finished', '2022-06-01 11:17:52am', 'finished', '2022-06-01 11:25:41am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'G.floor and 1st floor plastering'),
(31, 'R-000027', '2022-06-01 12:00 AM', 11, 31, '2022-06-01 10:01:05', '2022-06-03 04:01:30', 'accept', '2022-06-02 10:22:00am', 'finished', '2022-06-02 10:23:00am', 'finished', '2022-06-03 11:01:30am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'Wall and partitions brick work'),
(32, 'R-000028', '2022-06-01 12:00 AM', 5, 26, '2022-06-01 10:30:01', '2022-06-02 02:39:01', 'accept', '2022-06-02 09:38:44am', 'finished', '2022-06-02 09:39:01am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', '2nd floor brick work and Roof top brick work'),
(33, 'R-000029', '2022-06-01 12:00 AM', 5, 26, '2022-06-01 10:31:00', '2022-06-02 02:39:53', 'accept', '2022-06-02 09:39:13am', 'finished', '2022-06-02 09:39:53am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', '2nd floor brick work and 1st floor plastering work'),
(34, 'R-000030', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:17:48', '2022-06-06 03:48:03', 'accept', '2022-06-02 09:55:16am', 'finished', '2022-06-02 09:59:26am', 'finished', '2022-06-06 10:48:03am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'For 1st floor brick work'),
(35, 'R-000031', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:20:27', '2022-06-03 04:05:35', 'accept', '2022-06-02 10:03:39am', 'finished', '2022-06-02 10:04:23am', 'finished', '2022-06-03 11:05:35am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'For 1st floor brick work'),
(36, 'R-000032', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:21:23', '2022-06-02 10:17:45', 'accept', '2022-06-02 10:05:35am', 'finished', '2022-06-02 10:05:51am', 'finished', '2022-06-02 17:17:45pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'For 1st floor brick work'),
(37, 'R-000033', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:25:59', '2022-06-06 06:29:49', 'accept', '2022-06-02 10:06:30am', 'finished', '2022-06-02 10:11:25am', 'finished', '2022-06-06 13:29:49pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'For 1st floor DPC & Roof floor stirrups'),
(38, 'R-000034', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:27:00', '2022-06-06 06:20:50', 'accept', '2022-06-02 10:12:13am', 'finished', '2022-06-02 10:16:46am', 'finished', '2022-06-06 13:20:50pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'For Roof floor rebar work'),
(39, 'R-000035', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:28:22', '2022-06-06 06:15:39', 'accept', '2022-06-02 10:14:14am', 'finished', '2022-06-02 10:20:52am', 'finished', '2022-06-06 13:15:39pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'For roof floor rebar work'),
(40, 'R-000036', '2022-06-02 12:00 AM', 2, 28, '2022-06-02 06:53:15', '2022-06-02 06:53:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'Column Formwork'),
(41, 'R-000037', '2022-06-02 12:00 AM', 8, 36, '2022-06-02 09:19:05', '2022-06-05 12:07:00', 'accept', '2022-06-02 16:29:34pm', 'finished', '2022-06-02 23:41:59pm', 'finished', '2022-06-03 10:59:03am', 'accept', '2022-06-03 11:30:27am', 'received', '2022-06-04 01:15 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'Bricks Laying work (Ground Floor)'),
(42, 'R-000038', '2022-06-02 12:00 AM', 8, 36, '2022-06-02 09:21:06', '2022-06-02 16:42:38', 'accept', '2022-06-02 16:29:56pm', 'finished', '2022-06-02 23:42:38pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 09:00 AM', 'Bricks Laying Work (Ground Floor)'),
(43, 'R-000039', '2022-06-02 06:00 PM', 2, 28, '2022-06-02 11:53:56', '2022-06-04 04:44:16', 'accept', '2022-06-04 11:43:59am', 'finished', '2022-06-04 11:44:16am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 09:00 AM', 'Column Formwork'),
(44, 'R-000040', '2022-06-02 12:00 AM', 4, 26, '2022-06-02 14:20:06', '2022-06-03 05:40:47', 'accept', '2022-06-03 12:40:33pm', 'finished', '2022-06-03 12:40:47pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', 'G.floor and 1st floor plastering work'),
(45, 'R-000041', '2022-06-02 12:00 AM', 4, 26, '2022-06-02 14:21:11', '2022-06-03 05:39:56', 'accept', '2022-06-03 12:39:43pm', 'finished', '2022-06-03 12:39:56pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-05 12:00 AM', '2nd floor brick work,G.floor and 1st floor plastering work'),
(46, 'R-000042', '2022-06-03 12:00 AM', 14, 31, '2022-06-03 03:14:02', '2022-06-03 08:02:56', 'accept', '2022-06-03 14:42:42pm', 'finished', '2022-06-03 14:42:28pm', 'finished', '2022-06-03 15:02:56pm', NULL, NULL, 'received', '2022-06-03 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'Retaining Wall brick work'),
(47, 'R-000043', '2022-06-03 10:45 AM', 21, 37, '2022-06-03 03:45:14', '2022-06-05 09:44:06', 'accept', '2022-06-03 11:42:16am', 'finished', '2022-06-03 11:43:01am', 'finished', '2022-06-03 14:59:39pm', NULL, NULL, 'received', '2022-06-04 03:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 12:00 AM', '01'),
(48, 'R-000044', '2022-06-03 12:00 AM', 14, 31, '2022-06-03 09:03:45', '2022-06-04 04:10:43', 'reject', '2022-06-04 11:10:43am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 12:00 AM', 'Backfilling for beside of GL 4'),
(49, 'R-000045', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 09:59:12', '2022-06-03 10:07:10', 'reject', '2022-06-03 17:07:10pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'DPC and Roof Floor Brickwork'),
(50, 'R-000046', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:00:22', '2022-06-03 10:07:26', 'reject', '2022-06-03 17:07:26pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'DPC and Roof Floor Brickwork'),
(51, 'R-000047', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:02:09', '2022-06-04 04:23:05', 'accept', '2022-06-04 11:15:08am', 'finished', '2022-06-04 11:23:05am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork'),
(52, 'R-000048', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:09:02', '2022-06-06 04:52:40', 'accept', '2022-06-04 11:22:02am', 'finished', '2022-06-04 11:22:50am', 'finished', '2022-06-05 18:59:23pm', 'accept', '2022-06-06 11:52:40am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork'),
(53, 'R-000049', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:10:25', '2022-06-04 04:22:35', 'accept', '2022-06-04 11:21:49am', 'finished', '2022-06-04 11:22:35am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork'),
(54, 'R-000050', '2022-06-03 06:00 AM', 2, 28, '2022-06-03 11:18:13', '2022-06-05 12:55:36', 'accept', '2022-06-04 09:29:05am', 'finished', '2022-06-04 09:29:22am', 'finished', '2022-06-05 18:53:30pm', 'accept', '2022-06-05 19:55:36pm', 'received', '2022-06-05 09:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 09:00 AM', 'Spetic Tank & GF Brickwork'),
(55, 'R-000051', '2022-06-03 12:00 AM', 14, 31, '2022-06-04 04:15:57', '2022-06-04 04:25:39', 'accept', '2022-06-04 11:23:18am', 'finished', '2022-06-04 11:25:39am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 12:00 AM', 'Backfilling for beside of GL 4'),
(56, 'R-000052', '2022-06-04 12:00 AM', 5, 26, '2022-06-04 04:26:45', '2022-06-06 02:31:37', 'accept', '2022-06-06 09:31:18am', 'finished', '2022-06-06 09:31:37am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 12:00 AM', '2nd floor brick work and 1st floor plastering work'),
(57, 'R-000053', '2022-06-05 04:45 AM', 21, 37, '2022-06-05 09:50:29', '2022-06-06 02:36:42', 'accept', '2022-06-05 20:57:44pm', 'finished', '2022-06-06 09:36:42am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 12:00 AM', 'Line E Conc: Work'),
(58, 'R-000054', '2022-06-05 05:00 PM', 21, 37, '2022-06-05 10:08:13', '2022-06-05 13:57:26', 'accept', '2022-06-05 20:57:26pm', 'finished', '2022-06-05 20:57:13pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', 'Rataining Wall'),
(59, 'R-000055', '2022-06-06 12:00 AM', 4, 26, '2022-06-06 03:04:17', '2022-06-06 03:11:53', 'accept', '2022-06-06 10:11:32am', 'finished', '2022-06-06 10:11:53am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 12:00 AM', '2nd floor brick work,G.Fl and 1st internal wall plastering work'),
(60, 'R-000056', '2022-06-06 12:00 AM', 4, 26, '2022-06-06 03:06:56', '2022-06-06 03:08:16', 'accept', '2022-06-06 10:08:01am', 'finished', '2022-06-06 10:08:16am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 12:00 AM', '2nd floor brick work and parapet brick work'),
(61, 'R-000057', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:30:48', '2022-06-06 06:27:09', 'accept', '2022-06-06 13:25:37pm', 'finished', '2022-06-06 13:27:09pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'Lean & Footing casting'),
(62, 'R-000058', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:39:50', '2022-06-06 06:28:26', 'accept', '2022-06-06 13:26:02pm', 'finished', '2022-06-06 13:28:26pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'lean casting'),
(63, 'R-000059', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:40:38', '2022-06-06 06:28:37', 'accept', '2022-06-06 13:25:50pm', 'finished', '2022-06-06 13:28:37pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'lean casting'),
(64, 'R-000060', '2022-06-06 12:00 AM', 21, 37, '2022-06-06 05:36:16', '2022-06-06 10:04:24', 'reject', '2022-06-06 17:04:24pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 12:00 AM', 'Line E & A Footing'),
(65, 'R-000062', '2022-06-06 12:00 AM', 21, 37, '2022-06-06 05:36:58', '2022-06-06 10:04:37', 'accept', '2022-06-06 17:04:16pm', 'finished', '2022-06-06 17:04:37pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 12:00 AM', 'Line E & A footing'),
(66, 'R-000064', '2022-06-06 12:00 AM', 11, 31, '2022-06-06 07:43:24', '2022-06-06 07:43:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 12:00 AM', 'Doors (MD and D3)'),
(67, 'R-000063', '2022-06-06 06:00 PM', 2, 28, '2022-06-06 12:14:18', '2022-06-07 02:21:33', 'accept', '2022-06-07 09:21:23am', 'finished', '2022-06-07 09:21:33am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 09:00 AM', 'For levelling concrete');

-- --------------------------------------------------------

--
-- Table structure for table `variable_request_items`
--

CREATE TABLE `variable_request_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` text COLLATE utf8mb4_unicode_ci,
  `quantity` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_request_items`
--

INSERT INTO `variable_request_items` (`id`, `variable_asset_id`, `quantity`, `user_id`, `variable_request_info_id`, `created_at`, `updated_at`, `size`) VALUES
(8, '26', '1.5', 31, 5, '2022-05-07 04:12:36', '2022-05-07 04:12:36', NULL),
(9, '26', '1.5', 31, 6, '2022-05-09 03:12:13', '2022-05-09 03:12:13', NULL),
(10, '4', '50', 26, 7, '2022-05-09 03:43:10', '2022-05-09 03:43:10', NULL),
(11, '26', '1.5', 26, 7, '2022-05-09 03:43:10', '2022-05-09 03:43:10', NULL),
(12, '27', '1', 26, 8, '2022-05-09 03:49:48', '2022-05-09 03:49:48', NULL),
(13, '4', '50', 25, 9, '2022-05-09 06:55:58', '2022-05-09 06:55:58', '42.5'),
(14, '26', '3', 25, 10, '2022-05-09 07:02:30', '2022-05-09 07:02:30', 'null'),
(15, '25', '3000', 31, 11, '2022-05-09 10:09:30', '2022-05-09 10:09:30', NULL),
(16, '25', '5000', 26, 12, '2022-05-10 06:07:06', '2022-05-10 06:07:06', NULL),
(17, '4', '30', 28, 13, '2022-05-10 09:40:28', '2022-05-10 09:40:28', NULL),
(18, '26', '1.5', 28, 13, '2022-05-10 09:40:28', '2022-05-10 09:40:28', NULL),
(19, '27', '1.5', 28, 13, '2022-05-10 09:40:28', '2022-05-10 09:40:28', NULL),
(20, '21', '5', 26, 14, '2022-05-11 09:17:26', '2022-05-11 09:17:26', '8\'x4\''),
(21, '4', '50', 26, 15, '2022-05-11 09:21:14', '2022-05-11 09:21:14', NULL),
(22, '25', '3000', 26, 16, '2022-05-11 09:23:38', '2022-05-11 09:23:38', NULL),
(23, '92', '150', 28, 17, '2022-05-12 09:49:48', '2022-05-12 09:49:48', NULL),
(24, '94', '15', 28, 17, '2022-05-12 09:49:48', '2022-05-12 09:49:48', NULL),
(25, '1', '50', 31, 18, '2022-05-12 12:23:48', '2022-05-12 12:23:48', NULL),
(26, '27', '1.5', 31, 18, '2022-05-12 12:23:48', '2022-05-12 12:23:48', NULL),
(27, '26', '1.5', 31, 18, '2022-05-12 12:23:48', '2022-05-12 12:23:48', NULL),
(28, '1', '40', 31, 19, '2022-05-13 13:04:42', '2022-05-13 13:04:42', NULL),
(29, '26', '1.5', 31, 19, '2022-05-13 13:04:42', '2022-05-13 13:04:42', NULL),
(30, '27', '2.5', 31, 19, '2022-05-13 13:04:42', '2022-05-13 13:04:42', NULL),
(31, '4', '20', 31, 20, '2022-05-13 13:05:23', '2022-05-13 13:05:23', NULL),
(32, '26', '1.5', 31, 21, '2022-05-21 12:33:06', '2022-05-21 12:33:06', NULL),
(33, '27', '1.5', 31, 21, '2022-05-21 12:33:06', '2022-05-21 12:33:06', NULL),
(34, '26', '1.5', 31, 22, '2022-05-23 01:14:35', '2022-05-23 01:14:35', NULL),
(35, '27', '1.5', 31, 22, '2022-05-23 01:14:35', '2022-05-23 01:14:35', NULL),
(36, '26', '1.5', 31, 23, '2022-05-27 09:26:29', '2022-05-27 09:26:29', NULL),
(37, '27', '1.5', 31, 23, '2022-05-27 09:26:29', '2022-05-27 09:26:29', NULL),
(38, '26', '3', 25, 24, '2022-05-30 13:27:38', '2022-05-30 13:27:38', NULL),
(39, '25', '5000', 25, 25, '2022-05-30 13:29:24', '2022-05-30 13:29:24', 'MGC'),
(40, '26', '3', 25, 26, '2022-05-30 13:30:38', '2022-05-30 13:30:38', NULL),
(41, '4', '50', 28, 27, '2022-05-31 03:47:03', '2022-05-31 03:47:03', '50kg'),
(42, '26', '3', 28, 28, '2022-05-31 03:52:08', '2022-05-31 03:52:08', 'Suds'),
(43, '77', '25', 31, 29, '2022-05-31 07:48:04', '2022-05-31 07:48:04', NULL),
(44, '26', '1.5', 26, 30, '2022-05-31 08:49:28', '2022-05-31 08:49:28', NULL),
(45, '25', '5000', 31, 31, '2022-06-01 10:01:05', '2022-06-01 10:01:05', NULL),
(46, '25', '5000', 26, 32, '2022-06-01 10:30:01', '2022-06-01 10:30:01', NULL),
(47, '26', '1.5', 26, 33, '2022-06-01 10:31:00', '2022-06-01 10:31:00', NULL),
(48, '4', '40', 22, 34, '2022-06-01 14:17:48', '2022-06-01 14:17:48', NULL),
(49, '25', '10000', 22, 35, '2022-06-01 14:20:27', '2022-06-01 14:20:27', NULL),
(50, '26', '3', 22, 36, '2022-06-01 14:21:23', '2022-06-01 14:21:23', 'Suds'),
(51, '10', '80', 22, 37, '2022-06-01 14:25:59', '2022-06-01 14:25:59', 'Nos'),
(52, '5', '140', 22, 38, '2022-06-01 14:27:00', '2022-06-01 14:27:00', 'Nos'),
(53, '7', '47', 22, 39, '2022-06-01 14:28:22', '2022-06-01 14:28:22', 'Nos'),
(54, '17', '1', 28, 40, '2022-06-02 06:53:15', '2022-06-02 06:53:15', '11ft, 13ft'),
(55, '4', '30', 36, 41, '2022-06-02 09:19:05', '2022-06-02 09:19:05', NULL),
(56, '26', '1', 36, 42, '2022-06-02 09:21:06', '2022-06-02 09:21:06', NULL),
(57, '22', '30', 28, 43, '2022-06-02 11:53:56', '2022-06-02 11:53:56', '8x4'),
(58, '26', '1.5', 26, 44, '2022-06-02 14:20:06', '2022-06-02 14:20:06', NULL),
(59, '4', '50', 26, 45, '2022-06-02 14:21:11', '2022-06-02 14:21:11', NULL),
(60, '25', '5000', 31, 46, '2022-06-03 03:14:02', '2022-06-03 03:14:02', 'MGC'),
(61, '26', '1.5', 37, 47, '2022-06-03 03:45:14', '2022-06-03 03:45:14', '1.5sud'),
(62, '26', '3', 31, 48, '2022-06-03 09:03:45', '2022-06-03 09:03:45', 'ထမ်းသွင်း'),
(63, '1', '35', 32, 49, '2022-06-03 09:59:12', '2022-06-03 09:59:12', 'Bags'),
(64, '26', '2', 32, 50, '2022-06-03 10:00:22', '2022-06-03 10:00:22', 'Suds'),
(65, '25', '1000', 32, 51, '2022-06-03 10:02:09', '2022-06-03 10:02:09', 'Nos.'),
(66, '4', '35', 32, 52, '2022-06-03 10:09:02', '2022-06-03 10:09:02', 'Bags'),
(67, '26', '2', 32, 53, '2022-06-03 10:10:25', '2022-06-03 10:10:25', 'Suds'),
(68, '25', '5000', 28, 54, '2022-06-03 11:18:13', '2022-06-03 11:18:13', 'Upper'),
(69, '104', '3', 31, 55, '2022-06-04 04:15:57', '2022-06-04 04:15:57', 'ထမ်းသွင်း'),
(70, '26', '1.5', 26, 56, '2022-06-04 04:26:45', '2022-06-04 04:26:45', NULL),
(71, '27', '1', 37, 57, '2022-06-05 09:50:29', '2022-06-05 09:50:29', '1.5sud'),
(72, '25', '3000', 37, 58, '2022-06-05 10:08:13', '2022-06-05 10:08:13', NULL),
(73, '26', '1.5', 26, 59, '2022-06-06 03:04:17', '2022-06-06 03:04:17', NULL),
(74, '25', '5000', 26, 60, '2022-06-06 03:06:56', '2022-06-06 03:06:56', NULL),
(75, '1', '50', 47, 61, '2022-06-06 03:30:48', '2022-06-06 03:30:48', '52.5'),
(76, '26', '1.5', 47, 62, '2022-06-06 03:39:50', '2022-06-06 03:39:50', NULL),
(77, '27', '1.5', 47, 63, '2022-06-06 03:40:38', '2022-06-06 03:40:38', NULL),
(78, '1', '50', 37, 64, '2022-06-06 05:36:16', '2022-06-06 05:36:16', NULL),
(79, '1', '50', 37, 65, '2022-06-06 05:36:58', '2022-06-06 05:36:58', NULL),
(80, '101', '2', 31, 66, '2022-06-06 07:43:24', '2022-06-06 07:43:24', NULL),
(81, '83', '1', 28, 67, '2022-06-06 12:14:18', '2022-06-06 12:14:18', '1.2mm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accept_reject_statuses`
--
ALTER TABLE `accept_reject_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_classifications`
--
ALTER TABLE `account_classifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`(191),`subject_id`),
  ADD KEY `causer` (`causer_type`(191),`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`(191));

--
-- Indexes for table `approved_bies`
--
ALTER TABLE `approved_bies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `engineer_return_infos`
--
ALTER TABLE `engineer_return_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eng_request_items`
--
ALTER TABLE `eng_request_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fixed_assets_purchases`
--
ALTER TABLE `fixed_assets_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floor_plans`
--
ALTER TABLE `floor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labours`
--
ALTER TABLE `labours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_warehouses`
--
ALTER TABLE `main_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `management_variable_accept_reject_statuses`
--
ALTER TABLE `management_variable_accept_reject_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permits`
--
ALTER TABLE `permits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processing_files`
--
ALTER TABLE `processing_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_users`
--
ALTER TABLE `projects_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qs_team_check_passes`
--
ALTER TABLE `qs_team_check_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_by_engineers`
--
ALTER TABLE `received_by_engineers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_by_store_managers`
--
ALTER TABLE `received_by_store_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_infos`
--
ALTER TABLE `request_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_items`
--
ALTER TABLE `request_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_items`
--
ALTER TABLE `return_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_logistics_team_checks`
--
ALTER TABLE `return_logistics_team_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_qs_team_check_passes`
--
ALTER TABLE `return_qs_team_check_passes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_transfer_infos`
--
ALTER TABLE `return_transfer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sent_by_users`
--
ALTER TABLE `sent_by_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure_designs`
--
ALTER TABLE `structure_designs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `structure_design_fees`
--
ALTER TABLE `structure_design_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer_infos`
--
ALTER TABLE `transfer_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_accept_reject_statuses`
--
ALTER TABLE `variable_accept_reject_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_actual_vouchers`
--
ALTER TABLE `variable_actual_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_assets`
--
ALTER TABLE `variable_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_assets_sizes`
--
ALTER TABLE `variable_assets_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_finance_payment_slips`
--
ALTER TABLE `variable_finance_payment_slips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_logistics_team_checks`
--
ALTER TABLE `variable_logistics_team_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_logistics_team_sends`
--
ALTER TABLE `variable_logistics_team_sends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_payments`
--
ALTER TABLE `variable_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_qs_team_checks`
--
ALTER TABLE `variable_qs_team_checks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_received_by_engineers`
--
ALTER TABLE `variable_received_by_engineers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_request_infos`
--
ALTER TABLE `variable_request_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_request_items`
--
ALTER TABLE `variable_request_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accept_reject_statuses`
--
ALTER TABLE `accept_reject_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `account_classifications`
--
ALTER TABLE `account_classifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approved_bies`
--
ALTER TABLE `approved_bies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `engineer_return_infos`
--
ALTER TABLE `engineer_return_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eng_request_items`
--
ALTER TABLE `eng_request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fixed_assets_purchases`
--
ALTER TABLE `fixed_assets_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `labours`
--
ALTER TABLE `labours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_warehouses`
--
ALTER TABLE `main_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `management_variable_accept_reject_statuses`
--
ALTER TABLE `management_variable_accept_reject_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `permits`
--
ALTER TABLE `permits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `processing_files`
--
ALTER TABLE `processing_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `projects_users`
--
ALTER TABLE `projects_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `qs_team_check_passes`
--
ALTER TABLE `qs_team_check_passes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `received_by_engineers`
--
ALTER TABLE `received_by_engineers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `received_by_store_managers`
--
ALTER TABLE `received_by_store_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_infos`
--
ALTER TABLE `request_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `request_items`
--
ALTER TABLE `request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_items`
--
ALTER TABLE `return_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `return_logistics_team_checks`
--
ALTER TABLE `return_logistics_team_checks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_qs_team_check_passes`
--
ALTER TABLE `return_qs_team_check_passes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `return_transfer_infos`
--
ALTER TABLE `return_transfer_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sent_by_users`
--
ALTER TABLE `sent_by_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `structure_designs`
--
ALTER TABLE `structure_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `structure_design_fees`
--
ALTER TABLE `structure_design_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer_infos`
--
ALTER TABLE `transfer_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `variable_accept_reject_statuses`
--
ALTER TABLE `variable_accept_reject_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `variable_actual_vouchers`
--
ALTER TABLE `variable_actual_vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variable_assets`
--
ALTER TABLE `variable_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `variable_assets_sizes`
--
ALTER TABLE `variable_assets_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `variable_finance_payment_slips`
--
ALTER TABLE `variable_finance_payment_slips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variable_logistics_team_checks`
--
ALTER TABLE `variable_logistics_team_checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `variable_logistics_team_sends`
--
ALTER TABLE `variable_logistics_team_sends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `variable_payments`
--
ALTER TABLE `variable_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `variable_qs_team_checks`
--
ALTER TABLE `variable_qs_team_checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `variable_received_by_engineers`
--
ALTER TABLE `variable_received_by_engineers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `variable_request_infos`
--
ALTER TABLE `variable_request_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `variable_request_items`
--
ALTER TABLE `variable_request_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
