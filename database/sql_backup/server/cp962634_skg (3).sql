-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2022 at 01:52 AM
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
(16, 42, 'accept', '2022-06-06', '2022-06-06 03:06:24', '2022-06-06 03:06:24', 14),
(17, 42, 'accept', '2022-06-07', '2022-06-07 02:41:46', '2022-06-07 02:41:46', 15),
(18, 42, 'accept', '2022-06-07', '2022-06-07 02:43:18', '2022-06-07 02:43:18', 16),
(19, 42, 'accept', '2022-06-07', '2022-06-07 02:44:49', '2022-06-07 02:44:49', 17),
(20, 42, 'reject', '2022-06-08', '2022-06-08 02:36:49', '2022-06-08 02:36:49', 18),
(21, 10, 'accept', '2022-06-10', '2022-06-10 03:07:14', '2022-06-10 03:07:14', 19),
(22, 10, 'accept', '2022-06-14', '2022-06-14 06:15:33', '2022-06-14 06:15:33', 20),
(23, 19, 'accept', '2022-06-24', '2022-06-24 08:21:43', '2022-06-24 08:21:43', 35),
(24, 19, 'accept', '2022-06-24', '2022-06-24 08:24:18', '2022-06-24 08:24:18', 34),
(25, 19, 'accept', '2022-06-24', '2022-06-24 08:24:24', '2022-06-24 08:24:24', 26),
(26, 19, 'accept', '2022-06-24', '2022-06-24 08:25:00', '2022-06-24 08:25:00', 33),
(27, 19, 'accept', '2022-06-24', '2022-06-24 08:25:05', '2022-06-24 08:25:05', 32),
(28, 19, 'accept', '2022-06-24', '2022-06-24 08:25:10', '2022-06-24 08:25:10', 31),
(29, 19, 'accept', '2022-06-24', '2022-06-24 08:25:15', '2022-06-24 08:25:15', 30),
(30, 19, 'accept', '2022-06-24', '2022-06-24 08:25:20', '2022-06-24 08:25:20', 29),
(31, 19, 'accept', '2022-06-24', '2022-06-24 08:25:25', '2022-06-24 08:25:25', 28),
(32, 19, 'accept', '2022-06-24', '2022-06-24 08:25:33', '2022-06-24 08:25:33', 27),
(33, 19, 'accept', '2022-06-24', '2022-06-24 08:25:43', '2022-06-24 08:25:43', 25),
(34, 19, 'accept', '2022-06-24', '2022-06-24 08:25:50', '2022-06-24 08:25:50', 23),
(35, 19, 'accept', '2022-06-24', '2022-06-24 08:25:55', '2022-06-24 08:25:55', 24);

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

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'customers_log', 'created', 'App\\Models\\Customers', 45, 'App\\User', 3, '{\"attributes\":{\"name\":\"Ko Moe Myint Htet\",\"site_location\":\"No. 258\\/Kha, Zabuthiri (9) Street, Tharkayta Tsp\",\"phone\":\"09 2030522\",\"project_code\":\"YGN_TKT_00042\",\"address\":\"No. 258\\/Kha, Zabuthiri (9) Street, Tharkayta Tsp\",\"created_at\":\"2022-06-15T03:30:44.000000Z\",\"updated_at\":\"2022-06-15T03:30:44.000000Z\"}}', '2022-06-15 03:00:44', '2022-06-15 03:00:44'),
(2, 'customers_log', 'created', 'App\\Models\\Customers', 46, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Soe Lin Tun\",\"site_location\":\"No. (637, Ka), 14 Quarter, Bo Aung Kyaw Street, Nawaday, Hlaing Thar Yar TownshipNo. (637, Ka), 14 Quarter, Bo Aung Kyaw Street, Nawaday, Hlaing Thar Yar Township\",\"phone\":\"09 450 886 709\",\"project_code\":\"YGN_HTY_00042\",\"address\":\"No. (637, Ka), 14 Quarter, Bo Aung Kyaw Street, Nawaday, Hlaing Thar Yar Township\",\"created_at\":\"2022-06-15T03:55:55.000000Z\",\"updated_at\":\"2022-06-15T03:55:55.000000Z\"}}', '2022-06-15 03:25:55', '2022-06-15 03:25:55'),
(3, 'customers_log', 'created', 'App\\Models\\Customers', 47, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ma Thet Thet Wai\",\"site_location\":\"Dala Township\",\"phone\":\"09 790 568 298\",\"project_code\":\"YGN_DL_00043\",\"address\":\"Dala Township\",\"created_at\":\"2022-06-15T04:41:39.000000Z\",\"updated_at\":\"2022-06-15T04:41:39.000000Z\"}}', '2022-06-15 04:11:39', '2022-06-15 04:11:39'),
(4, 'customers_log', 'created', 'App\\Models\\Customers', 48, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Maung Aung Phyo\",\"site_location\":\"North Dagon Township\",\"phone\":\"09 5130 209\",\"project_code\":\"YGN_ND_00044\",\"address\":\"North Dagon Township\",\"created_at\":\"2022-06-15T04:55:23.000000Z\",\"updated_at\":\"2022-06-15T04:55:23.000000Z\"}}', '2022-06-15 04:25:23', '2022-06-15 04:25:23'),
(5, 'customers_log', 'created', 'App\\Models\\Customers', 49, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Ye Lin Aung\",\"site_location\":\"No. A\\/7 Kankaw Street, Chan Thar Shwe Pyi Housing, East Dagon Township, Yangon.\",\"phone\":\"09 740 980 913\",\"project_code\":\"3 Storeyed with Roof Slab\",\"address\":\"No. A\\/7 Kankaw Street, Chan Thar Shwe Pyi Housing, East Dagon Township, Yangon.\",\"created_at\":\"2022-06-15T05:07:25.000000Z\",\"updated_at\":\"2022-06-15T05:07:25.000000Z\"}}', '2022-06-15 04:37:25', '2022-06-15 04:37:25'),
(6, 'customers_log', 'created', 'App\\Models\\Customers', 50, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Wai Phyo Aung\",\"site_location\":\"North Dagon Township\",\"phone\":\"09 789 394 317\",\"project_code\":\"YFN_NDG_00046\",\"address\":\"North Dagon Township\",\"created_at\":\"2022-06-15T05:21:32.000000Z\",\"updated_at\":\"2022-06-15T05:21:32.000000Z\"}}', '2022-06-15 04:51:32', '2022-06-15 04:51:32'),
(7, 'customers_log', 'created', 'App\\Models\\Customers', 51, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Thuya\",\"site_location\":\"South Okkala Township\",\"phone\":\"09 420 177 617\",\"project_code\":\"YGN_SOKL_00047\",\"address\":\"South Okkala Township\",\"created_at\":\"2022-06-15T06:06:53.000000Z\",\"updated_at\":\"2022-06-15T06:06:53.000000Z\"}}', '2022-06-15 05:36:53', '2022-06-15 05:36:53'),
(8, 'customers_log', 'created', 'App\\Models\\Customers', 52, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ma Archit\",\"site_location\":\"Min Street\",\"phone\":\"09 444 441 213\",\"project_code\":\"YGN_MS_00048\",\"address\":\"Min Street\",\"created_at\":\"2022-06-15T06:17:30.000000Z\",\"updated_at\":\"2022-06-15T06:17:30.000000Z\"}}', '2022-06-15 05:47:30', '2022-06-15 05:47:30'),
(9, 'customers_log', 'created', 'App\\Models\\Customers', 53, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Aung Min Kyi\",\"site_location\":\"Kyauk Me\",\"phone\":\"09 5275701\",\"project_code\":\"NS_KM_00049\",\"address\":\"Kyauk Me\",\"created_at\":\"2022-06-15T07:20:54.000000Z\",\"updated_at\":\"2022-06-15T07:20:54.000000Z\"}}', '2022-06-15 06:50:54', '2022-06-15 06:50:54');

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
(91, 38, 13, 'public/archiexteriordesign/nrAlZrXubmcBLeFZZQUR5fJWMQhA0BDooKO26jIe.rar', 'UAZL-ARCH-DRAWING-R8-04062022.rar', 'Ko aung Zaw latt final drawing', '2022-06-06', '09:30:54', '2022-06-06 02:30:54', '2022-06-06 02:30:54'),
(92, 9, 13, 'public/archiexteriordesign/jAZ4SDT94m7ID3OC5LDDVTFsHOJY22ijWEjn03Yu.rar', 'KKST-ARCH-DRAWING-R5-07062022.rar', 'doors and windows changed due to client and on site location', '2022-06-07', '10:13:32', '2022-06-07 03:13:32', '2022-06-07 03:13:32'),
(93, 11, 13, 'public/archiexteriordesign/NUgopAZmCJuYMbYh0AoLC8qd5bLm09tivJGhq8Mv.rar', 'KTL-ARCH-DRAWING-R2-07062022.rar', NULL, '2022-06-07', '14:54:43', '2022-06-07 07:54:43', '2022-06-07 07:54:43'),
(94, 17, 12, 'public/archiexteriordesign/nGmhBNzNgNBTmMnx8xVlZPdv9Jo0KCzEWz3xnkHj.rar', 'DKAAK-PMY-ARCH-R1-07062022.rar', NULL, '2022-06-07', '15:01:39', '2022-06-07 08:01:39', '2022-06-07 08:01:39'),
(95, 38, 13, 'public/archiexteriordesign/dZmSfWWPUJeDalHgyrQTQHF1DXyzjdzv1bR3s34U.rar', 'UAZL-ARCH-DRAWING-R8-08062022.rar', 'several windows detail changes according to client\'s request', '2022-06-08', '11:03:53', '2022-06-08 04:03:53', '2022-06-08 04:03:53'),
(96, 38, 13, 'public/archiexteriordesign/7uaTqYZ6CF0jdz8M8F6WEqv89pmICJ4uiEWRzXQY.rar', 'UAZL-ARCH-DRAWING-R8-09062022.rar', 'windows changed', '2022-06-09', '09:27:56', '2022-06-09 02:27:56', '2022-06-09 02:27:56'),
(97, 18, 4, 'public/archiexteriordesign/9Ih8BGxHxktkhZ90feBhFMTkTe8gXCzsfqbaGqzC.zip', 'DWWL-PMY-ARCH-DWG-R5-09062022.zip', NULL, '2022-06-09', '10:16:35', '2022-06-09 03:16:35', '2022-06-09 03:16:35'),
(98, 12, 4, 'public/archiexteriordesign/6GqKQttLPSbP4yvSHSbrraYFupTJlUTcWKS6zLrx.zip', 'MZW-PMY-ARCH-DWG-R5-13062022.zip', NULL, '2022-06-13', '09:53:45', '2022-06-13 02:53:45', '2022-06-13 02:53:45'),
(99, 11, 13, 'public/archiexteriordesign/YXpYGBsDZyfPpghlCppLoG1j38YE75Z7ZCCkMKKb.rar', 'KTL-ARCH-DRAWING-R3-13062022.rar', NULL, '2022-06-13', '12:07:29', '2022-06-13 05:07:29', '2022-06-13 05:07:29'),
(100, 40, 4, 'public/archiexteriordesign/KMND4NFQdi3LWlz7ZNX61aGcTCayenfs4jgLb3b4.rar', 'KKZM-PMY-ARCH-DWG-R0-11062022.rar', NULL, '2022-06-13', '12:42:50', '2022-06-13 05:42:50', '2022-06-13 05:42:50'),
(101, 11, 13, 'public/archiexteriordesign/h5Vam6xjKQscJ0U4lUaN4ig1jI7ZPpDB4BEa8cSg.rar', 'KTL-ARCH-DRAWING-R3-13062022.rar', NULL, '2022-06-13', '12:47:17', '2022-06-13 05:47:17', '2022-06-13 05:47:17'),
(102, 10, 4, 'public/archiexteriordesign/B29Wf2cmYilsXnH8E8wqeKvNj26JzStHwaORu5mf.zip', 'UWN-PMY-ARCH-DWG15062022.zip', NULL, '2022-06-15', '09:49:00', '2022-06-15 02:49:00', '2022-06-15 02:49:00'),
(103, 40, 4, 'public/archiexteriordesign/QLZ4NdsrjK7dIhgarJrzzvsPuZBRCO8zhemBqRGk.zip', 'KKZM-15062022.zip', NULL, '2022-06-15', '19:49:21', '2022-06-15 12:49:21', '2022-06-15 12:49:21'),
(104, 45, 4, 'public/archiexteriordesign/l0kMYqWBwsxOIHtHaknzG3YkmbG2zAUE7aeer7lJ.zip', 'UZW-15062022.zip', NULL, '2022-06-15', '20:51:34', '2022-06-15 13:51:34', '2022-06-15 13:51:34'),
(105, 45, 4, 'public/archiexteriordesign/EIYZWhgCzBZZBM1yHhEb1FNCD7aSaHzrA4VCg7sm.zip', 'UZW-15062022.zip', NULL, '2022-06-15', '20:54:07', '2022-06-15 13:54:07', '2022-06-15 13:54:07'),
(106, 46, 13, 'public/archiexteriordesign/XHbp41agFVngJRplEOT1xDVxfD6qUPDwEdGv9JA2.zip', 'UMMH-ARCH-DRAWING-R4-20062022.zip', NULL, '2022-06-20', '11:22:09', '2022-06-20 04:22:09', '2022-06-20 04:22:09'),
(107, 9, 13, 'public/archiexteriordesign/q7UwURBksRejTPeEz5iILlpL2wMvSg5Xgprtn0TP.rar', 'KKST-ARCH-DRAWING-R5-20062022.rar', NULL, '2022-06-20', '15:12:49', '2022-06-20 08:12:49', '2022-06-20 08:12:49'),
(108, 45, 4, 'public/archiexteriordesign/XtfN1QIWzW5WJ4kmSlPKvDFQLZ0ElHDuIgO4Xd2Z.zip', 'UZW-PMY-ARCH-DWG-R2-20062022.zip', NULL, '2022-06-20', '17:06:29', '2022-06-20 10:06:29', '2022-06-20 10:06:29'),
(109, 45, 4, 'public/archiexteriordesign/nyRElHXRoXQYzwXaeyXksfJcFNpoGQDT9wMsRWBu.rar', 'UWZ-PMY-ARCH-DWG-R1-21062022.rar', NULL, '2022-06-21', '16:19:56', '2022-06-21 09:19:56', '2022-06-21 09:19:56'),
(111, 47, 4, 'public/archiexteriordesign/345QXHE7XDzsukssowSGWpUu6LjX0oDa2t9sS0nE.zip', 'KSLH-PMY-ARCH-R0-23062022.zip', NULL, '2022-06-23', '13:07:20', '2022-06-23 06:07:20', '2022-06-23 06:07:20');

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
(44, 'Ko Zaw Win', 'No.44, Damaryone Street, Mingalar Taung Nyunt Township, Yangon', '23\' x 44\'', 'RC', NULL, '2022-05-20', '2022-05-20 06:55:31', '2022-05-20 06:55:31', '09 252574548', 'YGN_MGLTN_00040', NULL, 'No.44, Damaryone Street, Mingalar Taung Nyunt Township, Yangon', '6 Storeyed with Roof Slab', NULL),
(45, 'Ko Moe Myint Htet', 'No. 258/Kha, Zabuthiri (9) Street, Tharkayta Tsp', '30\' x 51\'', 'RC', 'Gold Package', '2022-06-15', '2022-06-15 03:00:44', '2022-06-15 03:00:44', '09 2030522', 'YGN_TKT_00042', NULL, 'No. 258/Kha, Zabuthiri (9) Street, Tharkayta Tsp', '( 3 Storeyed with Roof Slab)', NULL),
(46, 'Ko Soe Lin Tun', 'No. (637, Ka), 14 Quarter, Bo Aung Kyaw Street, Nawaday, Hlaing Thar Yar TownshipNo. (637, Ka), 14 Quarter, Bo Aung Kyaw Street, Nawaday, Hlaing Thar Yar Township', '17\' x 50\'', 'RC', 'Gold Package', '2022-06-15', '2022-06-15 03:25:55', '2022-06-15 03:25:55', '09 450 886 709', 'YGN_HTY_00042', NULL, 'No. (637, Ka), 14 Quarter, Bo Aung Kyaw Street, Nawaday, Hlaing Thar Yar Township', '3.5 Storeyed with Roof Slab', NULL),
(47, 'Ma Thet Thet Wai', 'Dala Township', '25\' x 50\'', 'RC', 'Gold Package', '2022-06-15', '2022-06-15 04:11:39', '2022-06-15 04:11:39', '09 790 568 298', 'YGN_DL_00043', NULL, 'Dala Township', '3.5 Storeyed with Roofing', NULL),
(48, 'Ko Maung Aung Phyo', 'North Dagon Township', '30\' x 43\'', 'RC', NULL, '2022-06-15', '2022-06-15 04:25:23', '2022-06-15 04:25:23', '09 5130 209', 'YGN_ND_00044', NULL, 'North Dagon Township', '2.5 Storeyed with Roof Slab', NULL),
(49, 'Ko Ye Lin Aung', 'No. A/7 Kankaw Street, Chan Thar Shwe Pyi Housing, East Dagon Township, Yangon.', '105\' x 92\'', 'RC', 'Normal Package', '2022-06-15', '2022-06-15 04:37:25', '2022-06-15 04:37:25', '09 740 980 913', '3 Storeyed with Roof Slab', NULL, 'No. A/7 Kankaw Street, Chan Thar Shwe Pyi Housing, East Dagon Township, Yangon.', '3 Storeyed with Roof Slab', NULL),
(50, 'Ko Wai Phyo Aung', 'North Dagon Township', '18\' x 45\'', 'RC', NULL, '2022-06-15', '2022-06-15 04:51:32', '2022-06-15 04:51:32', '09 789 394 317', 'YFN_NDG_00046', NULL, 'North Dagon Township', '2 Storeyed with Roof Slab', NULL),
(51, 'Ko Thuya', 'South Okkala Township', '18\' x 47\'', 'RC', NULL, '2022-06-15', '2022-06-15 05:36:53', '2022-06-15 05:36:53', '09 420 177 617', 'YGN_SOKL_00047', NULL, 'South Okkala Township', '3 Storyed with Roof Slab', NULL),
(52, 'Ma Archit', 'Min Street', '18\' x 34\'', 'RC', 'Normal Package', '2022-06-15', '2022-06-15 05:47:30', '2022-06-15 05:47:30', '09 444 441 213', 'YGN_MS_00048', NULL, 'Min Street', '6 Storeyed with Roof Slab', NULL),
(53, 'Ko Aung Min Kyi', 'Kyauk Me', '34\'7\" x 45\'', 'RC', NULL, '2022-06-15', '2022-06-15 06:50:54', '2022-06-15 06:50:54', '09 5275701', 'NS_KM_00049', NULL, 'Kyauk Me', '2.5 Storeyed with Roof Slab', NULL);

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
(1, 'RE-000001', '2022-04-29 12:00 AM', 9, 22, 'finished', 'finished', 'received', '2022-04-29 09:50:57', '2022-04-29 09:51:44', '2022-04-29 16:51:25pm', '2022-04-29 16:51:35pm', '2022-04-29 16:51:44pm'),
(2, 'RE-000001', '2022-04-30 12:00 AM', 9, 22, 'finished', 'finished', 'received', '2022-04-30 05:26:01', '2022-04-30 05:28:49', '2022-04-30 12:28:22pm', '2022-04-30 12:28:33pm', '2022-04-30 12:28:49pm');

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
(19, 8, 1, 47, 0, 18, 17, '2022-06-06 04:45:25', '2022-06-06 04:45:25'),
(20, 13, 1, 47, 0, 19, 17, '2022-06-07 06:36:06', '2022-06-07 06:36:06'),
(21, 5, 2, 28, 0, 20, 2, '2022-06-10 15:05:00', '2022-06-10 15:05:00'),
(22, 5, 6, 44, 0, 21, 16, '2022-06-23 03:25:33', '2022-06-23 03:25:33'),
(23, 4, 1, 26, 0, 22, 5, '2022-06-23 03:45:48', '2022-06-23 03:45:48'),
(24, 3, 1, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(25, 1, 55, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(26, 5, 3, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(27, 14, 3, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(28, 7, 2, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(29, 6, 1, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(30, 8, 1, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(31, 18, 1, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(32, 21, 1, 22, 0, 23, 9, '2022-06-24 06:52:12', '2022-06-24 06:52:12'),
(33, 5, 4, 22, 0, 24, 7, '2022-06-24 06:53:28', '2022-06-24 06:53:28'),
(34, 14, 3, 22, 0, 24, 7, '2022-06-24 06:53:28', '2022-06-24 06:53:28'),
(35, 7, 1, 22, 0, 24, 7, '2022-06-24 06:53:28', '2022-06-24 06:53:28'),
(36, 18, 1, 22, 0, 24, 7, '2022-06-24 06:53:28', '2022-06-24 06:53:28'),
(37, 3, 1, 44, 0, 25, 16, '2022-06-24 06:56:44', '2022-06-24 06:56:44'),
(38, 7, 2, 44, 0, 25, 16, '2022-06-24 06:56:44', '2022-06-24 06:56:44'),
(39, 6, 1, 44, 0, 25, 16, '2022-06-24 06:56:44', '2022-06-24 06:56:44'),
(40, 8, 1, 44, 0, 25, 16, '2022-06-24 06:56:44', '2022-06-24 06:56:44'),
(41, 22, 1, 44, 0, 25, 16, '2022-06-24 06:56:44', '2022-06-24 06:56:44'),
(42, 3, 1, 37, 0, 26, 21, '2022-06-24 06:59:00', '2022-06-24 06:59:00'),
(43, 2, 1, 37, 0, 26, 21, '2022-06-24 06:59:00', '2022-06-24 06:59:00'),
(44, 7, 2, 37, 0, 26, 21, '2022-06-24 06:59:00', '2022-06-24 06:59:00'),
(45, 6, 1, 37, 0, 26, 21, '2022-06-24 06:59:00', '2022-06-24 06:59:00'),
(46, 8, 1, 37, 0, 26, 21, '2022-06-24 06:59:00', '2022-06-24 06:59:00'),
(47, 18, 1, 37, 0, 26, 21, '2022-06-24 06:59:00', '2022-06-24 06:59:00'),
(48, 4, 1, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(49, 1, 178, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(50, 5, 2, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(51, 14, 1, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(52, 7, 1, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(53, 6, 1, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(54, 18, 1, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(55, 11, 1, 36, 0, 27, 8, '2022-06-24 07:20:26', '2022-06-24 07:20:26'),
(56, 5, 1, 32, 0, 28, 12, '2022-06-24 07:22:44', '2022-06-24 07:22:44'),
(57, 6, 1, 32, 0, 28, 12, '2022-06-24 07:22:44', '2022-06-24 07:22:44'),
(58, 18, 1, 32, 0, 28, 12, '2022-06-24 07:22:44', '2022-06-24 07:22:44'),
(59, 3, 1, 31, 0, 29, 11, '2022-06-24 07:25:31', '2022-06-24 07:25:31'),
(60, 5, 2, 31, 0, 29, 11, '2022-06-24 07:25:31', '2022-06-24 07:25:31'),
(61, 14, 4, 31, 0, 29, 11, '2022-06-24 07:25:31', '2022-06-24 07:25:31'),
(62, 6, 1, 31, 0, 29, 11, '2022-06-24 07:25:31', '2022-06-24 07:25:31'),
(63, 3, 1, 31, 0, 30, 14, '2022-06-24 07:26:38', '2022-06-24 07:26:38'),
(64, 5, 2, 31, 0, 30, 14, '2022-06-24 07:26:38', '2022-06-24 07:26:38'),
(65, 8, 1, 31, 0, 30, 14, '2022-06-24 07:26:38', '2022-06-24 07:26:38'),
(66, 18, 1, 31, 0, 30, 14, '2022-06-24 07:26:38', '2022-06-24 07:26:38'),
(67, 2, 2, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(68, 1, 20, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(69, 5, 2, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(70, 14, 2, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(71, 19, 18, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(72, 20, 35, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(73, 7, 1, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(74, 6, 1, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(75, 8, 1, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(76, 18, 1, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(77, 10, 1, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(78, 11, 1, 28, 0, 31, 2, '2022-06-24 07:30:22', '2022-06-24 07:30:22'),
(79, 5, 1, 26, 0, 32, 5, '2022-06-24 07:35:28', '2022-06-24 07:35:28'),
(80, 14, 1, 26, 0, 32, 5, '2022-06-24 07:35:28', '2022-06-24 07:35:28'),
(81, 19, 2, 26, 0, 32, 5, '2022-06-24 07:35:28', '2022-06-24 07:35:28'),
(82, 7, 2, 26, 0, 32, 5, '2022-06-24 07:35:28', '2022-06-24 07:35:28'),
(83, 6, 1, 26, 0, 32, 5, '2022-06-24 07:35:28', '2022-06-24 07:35:28'),
(84, 11, 1, 26, 0, 32, 5, '2022-06-24 07:35:28', '2022-06-24 07:35:28'),
(85, 1, 33, 26, 0, 33, 4, '2022-06-24 07:36:42', '2022-06-24 07:36:42'),
(86, 5, 2, 26, 0, 33, 4, '2022-06-24 07:36:42', '2022-06-24 07:36:42'),
(87, 14, 2, 26, 0, 33, 4, '2022-06-24 07:36:42', '2022-06-24 07:36:42'),
(88, 7, 1, 26, 0, 33, 4, '2022-06-24 07:36:42', '2022-06-24 07:36:42'),
(89, 6, 1, 26, 0, 33, 4, '2022-06-24 07:36:42', '2022-06-24 07:36:42'),
(90, 9, 1, 26, 0, 33, 4, '2022-06-24 07:36:42', '2022-06-24 07:36:42'),
(91, 1, 25, 25, 0, 34, 6, '2022-06-24 07:40:55', '2022-06-24 07:40:55'),
(92, 7, 1, 25, 0, 34, 6, '2022-06-24 07:40:55', '2022-06-24 07:40:55'),
(93, 6, 1, 25, 0, 34, 6, '2022-06-24 07:40:55', '2022-06-24 07:40:55'),
(94, 18, 1, 25, 0, 34, 6, '2022-06-24 07:40:55', '2022-06-24 07:40:55'),
(95, 23, 1, 25, 0, 34, 6, '2022-06-24 07:40:55', '2022-06-24 07:40:55'),
(96, 3, 1, 47, 0, 35, 17, '2022-06-24 08:05:18', '2022-06-24 08:05:18'),
(97, 7, 3, 47, 0, 35, 17, '2022-06-24 08:05:18', '2022-06-24 08:05:18'),
(98, 8, 2, 47, 0, 35, 17, '2022-06-24 08:05:18', '2022-06-24 08:05:18');

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
(1, 'T Column', 'Nos', 1189, NULL, 1, '2022-04-28 16:13:30', '2022-06-24 06:35:55'),
(2, 'Vibrator', 'Nos', 5, NULL, 1, '2022-04-28 16:13:52', '2022-05-06 07:38:15'),
(3, 'Concrete Mixer', 'Nos', 6, NULL, 1, '2022-04-29 09:33:32', '2022-04-29 09:33:32'),
(4, 'Compactor', 'Nos', 1, NULL, 1, '2022-04-29 09:34:03', '2022-04-29 09:34:03'),
(5, 'Japan Scaffolding', 'Nos', 19, NULL, 1, '2022-04-29 09:34:30', '2022-06-24 06:36:27'),
(6, 'Cement Tank', 'Nos', 11, NULL, 1, '2022-04-29 09:34:59', '2022-06-24 06:43:41'),
(7, 'Fiber Water Tank', 'Nos', 15, NULL, 1, '2022-04-29 09:35:21', '2022-06-24 06:44:05'),
(8, 'Pump ( Petrol )', 'Nos', 5, NULL, 1, '2022-04-29 09:35:43', '2022-06-24 06:44:59'),
(9, 'Water Motor', 'Nos', 2, NULL, 1, '2022-04-29 09:35:58', '2022-04-29 09:35:58'),
(10, 'Pressure Gun', 'Nos', 1, NULL, 1, '2022-04-29 09:36:07', '2022-04-29 09:36:07'),
(11, 'Submersible Pump', 'Nos', 3, NULL, 1, '2022-04-29 09:36:18', '2022-04-29 09:36:18'),
(12, 'Safety Green Net', 'Nos', 0, NULL, 1, '2022-04-29 09:36:35', '2022-04-29 09:37:16'),
(13, 'Tarpolin', 'Nos', 0, NULL, 1, '2022-04-29 09:36:55', '2022-04-29 09:36:55'),
(14, 'Scaffolding Walking Board', 'Nos', 16, NULL, 1, '2022-05-30 07:51:49', '2022-06-24 06:42:02'),
(15, '2\" Hose Pipe', 'Rft', 0, NULL, 1, '2022-06-06 04:11:26', '2022-06-06 04:11:26'),
(16, '2\" Flexible Pipe', 'Rft', 0, NULL, 1, '2022-06-06 04:11:59', '2022-06-06 04:11:59'),
(17, '2\" Foot Valve', 'Nos', 0, NULL, 1, '2022-06-06 04:12:43', '2022-06-06 04:12:43'),
(18, 'Jet Pump', 'Nos', 8, NULL, 1, '2022-06-24 06:35:31', '2022-06-24 06:35:31'),
(19, 'GI Pipe', 'Pcs', 20, NULL, 1, '2022-06-24 06:42:50', '2022-06-24 06:42:50'),
(20, 'Pipe Clip', 'Nos', 35, NULL, 1, '2022-06-24 06:43:16', '2022-06-24 06:43:16'),
(21, 'Pressure Pump', 'Nos', 1, NULL, 1, '2022-06-24 06:45:56', '2022-06-24 06:45:56'),
(22, 'Compressor', 'Set', 1, NULL, 1, '2022-06-24 06:46:18', '2022-06-24 06:46:18'),
(23, '8 KVA Generator', 'Nos', 1, NULL, 1, '2022-06-24 06:46:46', '2022-06-24 06:46:46');

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

--
-- Dumping data for table `fixed_assets_purchases`
--

INSERT INTO `fixed_assets_purchases` (`id`, `reference`, `item_name`, `unit`, `qty`, `desciption`, `order_date`, `fixed_asset_id`, `user_id`, `created_at`, `updated_at`, `price`) VALUES
(1, 'Site Use', NULL, NULL, 1, NULL, '2022-06-24 01:00 PM', 4, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0'),
(2, 'Site Use', NULL, NULL, 178, NULL, '2022-06-24 01:00 PM', 1, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0'),
(3, 'Site Use', NULL, NULL, 2, NULL, '2022-06-24 01:00 PM', 5, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0'),
(4, 'Site Use', NULL, NULL, 1, NULL, '2022-06-24 01:00 PM', 14, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0'),
(5, 'Site Use', NULL, NULL, 1, NULL, '2022-06-24 01:00 PM', 7, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0'),
(6, 'Site Use', NULL, NULL, 1, NULL, '2022-06-24 01:00 PM', 6, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0'),
(7, 'Site Use', NULL, NULL, 1, NULL, '2022-06-24 01:00 PM', 11, 21, '2022-06-24 06:33:56', '2022-06-24 06:33:56', '0');

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
(70, 2, 12, 'public/floor_plans/BlvwAogxu1Ox24ZrRZTvsdcCEtC6JUTGFhq6gUZW.rar', '2022-06-01', '16:58:36', '2022-06-01 16:58:36', '2022-06-01 09:58:36', '2022-06-01 09:58:36', 'UN-PMY-ARCH-R2-01062022.rar', NULL),
(71, 2, 12, 'public/floor_plans/eAFwHWHJ9gUb92ZKSSfrH4iM43o8vEmsnm0ZhbzP.rar', '2022-06-13', '13:44:44', '2022-06-13 13:44:44', '2022-06-13 06:44:44', '2022-06-13 06:44:44', 'UN-PMY-ARCH-R3-13062022.rar', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `management_variable_accept_reject_statuses`
--

INSERT INTO `management_variable_accept_reject_statuses` (`id`, `user_id`, `management_accept_reject_status`, `management_accept_reject_date`, `variable_request_info_id`, `created_at`, `updated_at`, `remark`) VALUES
(4, 19, 'accept', '2022-05-29 18:00:48pm', 22, '2022-05-29 11:00:48', '2022-05-29 11:00:48', NULL),
(5, 19, 'accept', '2022-05-29 18:01:01pm', 20, '2022-05-29 11:01:01', '2022-05-29 11:01:01', NULL),
(6, 19, 'accept', '2022-05-29 18:01:17pm', 19, '2022-05-29 11:01:17', '2022-05-29 11:01:17', NULL),
(7, 19, 'reject', '2022-05-29 18:03:04pm', 18, '2022-05-29 11:03:04', '2022-05-29 11:03:04', NULL),
(8, 19, 'accept', '2022-05-29 18:05:10pm', 17, '2022-05-29 11:05:10', '2022-05-29 11:05:10', NULL),
(9, 2, 'accept', '2022-06-03 11:30:27am', 41, '2022-06-03 04:30:27', '2022-06-03 04:30:27', NULL),
(10, 19, 'accept', '2022-06-05 19:55:36pm', 54, '2022-06-05 12:55:36', '2022-06-05 12:55:36', NULL),
(11, 19, 'accept', '2022-06-06 11:52:11am', 27, '2022-06-06 04:52:11', '2022-06-06 04:52:11', NULL),
(12, 19, 'accept', '2022-06-06 11:52:40am', 52, '2022-06-06 04:52:40', '2022-06-06 04:52:40', NULL),
(13, 19, 'accept', '2022-06-07 12:34:44pm', 47, '2022-06-07 05:34:44', '2022-06-07 05:34:44', NULL),
(14, 19, 'reject', '2022-06-07 16:13:26pm', 73, '2022-06-07 09:13:26', '2022-06-07 09:13:26', NULL),
(15, 19, 'accept', '2022-06-07 16:15:30pm', 69, '2022-06-07 09:15:30', '2022-06-07 09:15:30', NULL),
(16, 19, 'accept', '2022-06-07 16:19:52pm', 66, '2022-06-07 09:19:52', '2022-06-07 09:19:52', NULL),
(17, 19, 'accept', '2022-06-07 16:20:28pm', 65, '2022-06-07 09:20:28', '2022-06-07 09:20:28', NULL),
(18, 19, 'accept', '2022-06-07 16:20:46pm', 63, '2022-06-07 09:20:46', '2022-06-07 09:20:46', NULL),
(19, 19, 'accept', '2022-06-07 16:21:08pm', 60, '2022-06-07 09:21:08', '2022-06-07 09:21:08', NULL),
(20, 19, 'accept', '2022-06-07 16:21:37pm', 59, '2022-06-07 09:21:37', '2022-06-07 09:21:37', NULL),
(21, 19, 'accept', '2022-06-07 16:22:07pm', 56, '2022-06-07 09:22:07', '2022-06-07 09:22:07', NULL),
(22, 19, 'accept', '2022-06-07 16:22:28pm', 53, '2022-06-07 09:22:28', '2022-06-07 09:22:28', NULL),
(23, 19, 'accept', '2022-06-07 16:22:44pm', 46, '2022-06-07 09:22:44', '2022-06-07 09:22:44', NULL),
(24, 19, 'accept', '2022-06-07 16:23:53pm', 45, '2022-06-07 09:23:53', '2022-06-07 09:23:53', NULL),
(25, 19, 'accept', '2022-06-07 16:24:59pm', 44, '2022-06-07 09:24:59', '2022-06-07 09:24:59', NULL),
(26, 19, 'accept', '2022-06-07 16:25:24pm', 42, '2022-06-07 09:25:24', '2022-06-07 09:25:24', NULL),
(27, 19, 'reject', '2022-06-07 16:38:38pm', 15, '2022-06-07 09:38:38', '2022-06-07 09:38:38', NULL),
(28, 19, 'accept', '2022-06-07 16:40:34pm', 39, '2022-06-07 09:40:34', '2022-06-07 09:40:34', NULL),
(29, 19, 'accept', '2022-06-08 13:15:47pm', 76, '2022-06-08 06:15:47', '2022-06-08 06:15:47', NULL),
(30, 19, 'accept', '2022-06-08 13:22:08pm', 72, '2022-06-08 06:22:08', '2022-06-08 06:22:08', NULL),
(31, 19, 'accept', '2022-06-08 13:22:21pm', 71, '2022-06-08 06:22:21', '2022-06-08 06:22:21', NULL),
(32, 19, 'accept', '2022-06-08 14:29:53pm', 70, '2022-06-08 07:29:53', '2022-06-08 07:29:53', NULL),
(33, 19, 'accept', '2022-06-14 14:09:17pm', 5, '2022-06-14 07:09:17', '2022-06-14 07:09:17', NULL),
(34, 19, 'accept', '2022-06-14 14:09:18pm', 5, '2022-06-14 07:09:18', '2022-06-14 07:09:18', NULL),
(35, 15, 'accept', '2022-06-14 16:26:00pm', 131, '2022-06-14 09:26:00', '2022-06-14 09:26:00', NULL),
(36, 15, 'accept', '2022-06-14 16:26:43pm', 120, '2022-06-14 09:26:43', '2022-06-14 09:26:43', NULL),
(37, 15, 'accept', '2022-06-14 16:27:31pm', 117, '2022-06-14 09:27:31', '2022-06-14 09:27:31', NULL),
(38, 15, 'accept', '2022-06-14 16:28:18pm', 115, '2022-06-14 09:28:18', '2022-06-14 09:28:18', NULL),
(39, 15, 'accept', '2022-06-14 16:28:53pm', 114, '2022-06-14 09:28:53', '2022-06-14 09:28:53', NULL),
(40, 15, 'accept', '2022-06-14 16:29:31pm', 113, '2022-06-14 09:29:31', '2022-06-14 09:29:31', NULL),
(41, 15, 'accept', '2022-06-14 16:30:13pm', 107, '2022-06-14 09:30:13', '2022-06-14 09:30:13', NULL),
(42, 15, 'accept', '2022-06-14 16:31:19pm', 106, '2022-06-14 09:31:19', '2022-06-14 09:31:19', NULL),
(43, 15, 'accept', '2022-06-14 16:32:30pm', 105, '2022-06-14 09:32:30', '2022-06-14 09:32:30', NULL),
(44, 15, 'accept', '2022-06-14 16:33:23pm', 104, '2022-06-14 09:33:23', '2022-06-14 09:33:23', NULL),
(45, 15, 'accept', '2022-06-14 16:34:29pm', 101, '2022-06-14 09:34:29', '2022-06-14 09:34:29', NULL),
(46, 15, 'accept', '2022-06-14 16:35:52pm', 99, '2022-06-14 09:35:52', '2022-06-14 09:35:52', NULL),
(47, 15, 'accept', '2022-06-14 16:36:27pm', 98, '2022-06-14 09:36:27', '2022-06-14 09:36:27', NULL),
(48, 15, 'accept', '2022-06-14 16:37:14pm', 97, '2022-06-14 09:37:14', '2022-06-14 09:37:14', NULL),
(49, 15, 'accept', '2022-06-14 16:37:57pm', 96, '2022-06-14 09:37:57', '2022-06-14 09:37:57', NULL),
(50, 15, 'accept', '2022-06-14 16:38:34pm', 95, '2022-06-14 09:38:34', '2022-06-14 09:38:34', NULL),
(51, 15, 'accept', '2022-06-14 16:39:10pm', 93, '2022-06-14 09:39:10', '2022-06-14 09:39:10', NULL),
(52, 15, 'accept', '2022-06-14 16:39:52pm', 92, '2022-06-14 09:39:52', '2022-06-14 09:39:52', NULL),
(53, 15, 'accept', '2022-06-14 16:44:02pm', 91, '2022-06-14 09:44:02', '2022-06-14 09:44:02', NULL),
(54, 15, 'accept', '2022-06-14 16:44:47pm', 90, '2022-06-14 09:44:47', '2022-06-14 09:44:47', NULL),
(55, 15, 'accept', '2022-06-14 16:45:48pm', 85, '2022-06-14 09:45:48', '2022-06-14 09:45:48', NULL),
(56, 15, 'accept', '2022-06-14 16:47:56pm', 83, '2022-06-14 09:47:56', '2022-06-14 09:47:56', NULL),
(57, 15, 'accept', '2022-06-14 16:48:32pm', 81, '2022-06-14 09:48:32', '2022-06-14 09:48:32', NULL),
(58, 15, 'accept', '2022-06-14 16:49:19pm', 80, '2022-06-14 09:49:19', '2022-06-14 09:49:19', NULL),
(59, 15, 'accept', '2022-06-14 16:53:22pm', 67, '2022-06-14 09:53:22', '2022-06-14 09:53:22', NULL),
(60, 15, 'accept', '2022-06-14 16:54:10pm', 62, '2022-06-14 09:54:10', '2022-06-14 09:54:10', NULL),
(61, 15, 'accept', '2022-06-14 16:54:57pm', 61, '2022-06-14 09:54:57', '2022-06-14 09:54:57', NULL),
(62, 15, 'accept', '2022-06-14 16:56:00pm', 58, '2022-06-14 09:56:00', '2022-06-14 09:56:00', NULL),
(63, 15, 'accept', '2022-06-14 16:56:41pm', 57, '2022-06-14 09:56:41', '2022-06-14 09:56:41', NULL),
(64, 15, 'accept', '2022-06-14 16:59:03pm', 55, '2022-06-14 09:59:03', '2022-06-14 09:59:03', NULL),
(65, 15, 'accept', '2022-06-14 16:59:51pm', 43, '2022-06-14 09:59:51', '2022-06-14 09:59:51', NULL),
(66, 15, 'accept', '2022-06-14 17:00:45pm', 38, '2022-06-14 10:00:45', '2022-06-14 10:00:45', NULL),
(67, 15, 'accept', '2022-06-14 17:01:28pm', 37, '2022-06-14 10:01:28', '2022-06-14 10:01:28', NULL),
(68, 15, 'accept', '2022-06-14 17:02:03pm', 36, '2022-06-14 10:02:03', '2022-06-14 10:02:03', NULL),
(69, 15, 'accept', '2022-06-14 17:02:32pm', 34, '2022-06-14 10:02:32', '2022-06-14 10:02:32', NULL),
(70, 15, 'accept', '2022-06-14 17:03:00pm', 33, '2022-06-14 10:03:00', '2022-06-14 10:03:00', NULL),
(71, 15, 'accept', '2022-06-14 17:03:43pm', 32, '2022-06-14 10:03:43', '2022-06-14 10:03:43', NULL),
(72, 15, 'accept', '2022-06-14 17:04:23pm', 31, '2022-06-14 10:04:23', '2022-06-14 10:04:23', NULL),
(73, 15, 'accept', '2022-06-14 17:06:36pm', 30, '2022-06-14 10:06:36', '2022-06-14 10:06:36', NULL),
(74, 15, 'accept', '2022-06-14 17:07:16pm', 29, '2022-06-14 10:07:16', '2022-06-14 10:07:16', NULL),
(75, 15, 'accept', '2022-06-14 17:08:02pm', 28, '2022-06-14 10:08:02', '2022-06-14 10:08:02', NULL),
(76, 15, 'accept', '2022-06-14 17:08:50pm', 24, '2022-06-14 10:08:50', '2022-06-14 10:08:50', NULL),
(77, 15, 'accept', '2022-06-14 17:09:27pm', 23, '2022-06-14 10:09:27', '2022-06-14 10:09:27', NULL),
(78, 15, 'accept', '2022-06-14 17:10:17pm', 21, '2022-06-14 10:10:17', '2022-06-14 10:10:17', NULL),
(79, 15, 'accept', '2022-06-14 17:12:03pm', 16, '2022-06-14 10:12:03', '2022-06-14 10:12:03', NULL),
(80, 15, 'accept', '2022-06-14 17:13:02pm', 13, '2022-06-14 10:13:02', '2022-06-14 10:13:02', NULL),
(81, 15, 'accept', '2022-06-14 17:13:40pm', 12, '2022-06-14 10:13:40', '2022-06-14 10:13:40', NULL),
(82, 15, 'accept', '2022-06-14 17:14:19pm', 11, '2022-06-14 10:14:19', '2022-06-14 10:14:19', NULL),
(83, 15, 'accept', '2022-06-14 17:14:59pm', 10, '2022-06-14 10:14:59', '2022-06-14 10:14:59', NULL),
(84, 15, 'accept', '2022-06-14 17:15:43pm', 9, '2022-06-14 10:15:43', '2022-06-14 10:15:43', NULL),
(85, 15, 'accept', '2022-06-14 17:17:43pm', 8, '2022-06-14 10:17:43', '2022-06-14 10:17:43', NULL),
(86, 15, 'accept', '2022-06-14 17:18:38pm', 7, '2022-06-14 10:18:38', '2022-06-14 10:18:38', NULL),
(87, 15, 'accept', '2022-06-14 17:19:54pm', 6, '2022-06-14 10:19:54', '2022-06-14 10:19:54', NULL),
(88, 15, 'accept', '2022-06-15 11:42:44am', 143, '2022-06-15 04:42:44', '2022-06-15 04:42:44', NULL),
(89, 15, 'accept', '2022-06-15 11:43:14am', 142, '2022-06-15 04:43:14', '2022-06-15 04:43:14', NULL),
(90, 15, 'accept', '2022-06-15 11:43:42am', 141, '2022-06-15 04:43:42', '2022-06-15 04:43:42', NULL),
(91, 15, 'accept', '2022-06-15 11:45:49am', 140, '2022-06-15 04:45:49', '2022-06-15 04:45:49', NULL),
(92, 15, 'accept', '2022-06-15 11:47:45am', 136, '2022-06-15 04:47:45', '2022-06-15 04:47:45', NULL),
(93, 15, 'reject', '2022-06-15 11:52:25am', 135, '2022-06-15 04:52:25', '2022-06-15 04:52:25', NULL),
(94, 15, 'accept', '2022-06-15 11:53:20am', 134, '2022-06-15 04:53:20', '2022-06-15 04:53:20', NULL),
(95, 15, 'accept', '2022-06-15 11:54:06am', 133, '2022-06-15 04:54:06', '2022-06-15 04:54:06', NULL),
(96, 15, 'accept', '2022-06-15 11:54:08am', 133, '2022-06-15 04:54:08', '2022-06-15 04:54:08', NULL),
(97, 15, 'accept', '2022-06-15 11:55:21am', 125, '2022-06-15 04:55:21', '2022-06-15 04:55:21', NULL),
(98, 15, 'accept', '2022-06-15 11:56:08am', 124, '2022-06-15 04:56:08', '2022-06-15 04:56:08', NULL),
(99, 15, 'accept', '2022-06-15 13:07:20pm', 108, '2022-06-15 06:07:20', '2022-06-15 06:07:20', NULL),
(100, 15, 'accept', '2022-06-15 13:08:22pm', 74, '2022-06-15 06:08:22', '2022-06-15 06:08:22', NULL),
(101, 15, 'accept', '2022-06-16 10:41:30am', 149, '2022-06-16 03:41:30', '2022-06-16 03:41:30', NULL),
(102, 15, 'reject', '2022-06-16 10:42:21am', 147, '2022-06-16 03:42:21', '2022-06-16 03:42:21', NULL),
(103, 15, 'reject', '2022-06-16 10:43:14am', 146, '2022-06-16 03:43:14', '2022-06-16 03:43:14', NULL),
(104, 15, 'accept', '2022-06-16 10:43:58am', 145, '2022-06-16 03:43:58', '2022-06-16 03:43:58', NULL),
(105, 15, 'accept', '2022-06-16 10:45:00am', 144, '2022-06-16 03:45:00', '2022-06-16 03:45:00', NULL),
(106, 15, 'accept', '2022-06-16 10:46:07am', 139, '2022-06-16 03:46:07', '2022-06-16 03:46:07', NULL),
(107, 15, 'accept', '2022-06-16 10:47:56am', 138, '2022-06-16 03:47:56', '2022-06-16 03:47:56', NULL),
(108, 15, 'accept', '2022-06-16 10:48:34am', 137, '2022-06-16 03:48:34', '2022-06-16 03:48:34', NULL),
(109, 15, 'accept', '2022-06-16 10:51:54am', 130, '2022-06-16 03:51:54', '2022-06-16 03:51:54', NULL),
(110, 15, 'accept', '2022-06-16 10:55:30am', 129, '2022-06-16 03:55:30', '2022-06-16 03:55:30', NULL),
(111, 15, 'accept', '2022-06-16 10:55:57am', 123, '2022-06-16 03:55:57', '2022-06-16 03:55:57', NULL),
(112, 15, 'accept', '2022-06-16 10:56:36am', 122, '2022-06-16 03:56:36', '2022-06-16 03:56:36', NULL),
(113, 15, 'accept', '2022-06-16 11:00:31am', 121, '2022-06-16 04:00:31', '2022-06-16 04:00:31', NULL),
(114, 15, 'accept', '2022-06-16 11:00:54am', 132, '2022-06-16 04:00:54', '2022-06-16 04:00:54', NULL),
(115, 15, 'accept', '2022-06-16 11:13:19am', 119, '2022-06-16 04:13:19', '2022-06-16 04:13:19', NULL),
(116, 15, 'accept', '2022-06-16 11:16:23am', 116, '2022-06-16 04:16:23', '2022-06-16 04:16:23', NULL),
(117, 15, 'accept', '2022-06-16 14:59:53pm', 153, '2022-06-16 07:59:53', '2022-06-16 07:59:53', NULL),
(118, 15, 'accept', '2022-06-16 15:00:30pm', 151, '2022-06-16 08:00:30', '2022-06-16 08:00:30', NULL),
(119, 15, 'accept', '2022-06-16 15:01:13pm', 150, '2022-06-16 08:01:13', '2022-06-16 08:01:13', NULL),
(120, 15, 'accept', '2022-06-16 15:01:48pm', 148, '2022-06-16 08:01:48', '2022-06-16 08:01:48', NULL),
(121, 15, 'accept', '2022-06-16 15:03:06pm', 118, '2022-06-16 08:03:06', '2022-06-16 08:03:06', NULL),
(122, 15, 'accept', '2022-06-16 15:04:06pm', 86, '2022-06-16 08:04:06', '2022-06-16 08:04:06', NULL),
(123, 15, 'accept', '2022-06-16 15:22:02pm', 157, '2022-06-16 08:22:02', '2022-06-16 08:22:02', NULL),
(124, 15, 'accept', '2022-06-16 15:22:27pm', 155, '2022-06-16 08:22:27', '2022-06-16 08:22:27', NULL),
(125, 15, 'accept', '2022-06-16 15:22:49pm', 154, '2022-06-16 08:22:49', '2022-06-16 08:22:49', NULL),
(126, 15, 'accept', '2022-06-16 15:24:05pm', 152, '2022-06-16 08:24:05', '2022-06-16 08:24:05', NULL),
(127, 15, 'accept', '2022-06-21 11:50:38am', 172, '2022-06-21 04:50:38', '2022-06-21 04:50:38', NULL),
(128, 15, 'reject', '2022-06-21 11:51:00am', 170, '2022-06-21 04:51:00', '2022-06-21 04:51:00', NULL),
(129, 15, 'accept', '2022-06-21 11:52:13am', 169, '2022-06-21 04:52:13', '2022-06-21 04:52:13', NULL),
(130, 15, 'accept', '2022-06-21 11:53:11am', 168, '2022-06-21 04:53:11', '2022-06-21 04:53:11', NULL),
(131, 15, 'accept', '2022-06-21 11:53:12am', 168, '2022-06-21 04:53:12', '2022-06-21 04:53:12', NULL),
(132, 15, 'accept', '2022-06-21 11:53:14am', 168, '2022-06-21 04:53:14', '2022-06-21 04:53:14', NULL),
(133, 15, 'accept', '2022-06-21 11:53:15am', 168, '2022-06-21 04:53:15', '2022-06-21 04:53:15', NULL),
(134, 15, 'accept', '2022-06-21 11:53:17am', 168, '2022-06-21 04:53:17', '2022-06-21 04:53:17', NULL),
(135, 15, 'accept', '2022-06-21 11:53:18am', 168, '2022-06-21 04:53:18', '2022-06-21 04:53:18', NULL),
(136, 15, 'accept', '2022-06-21 11:53:19am', 168, '2022-06-21 04:53:19', '2022-06-21 04:53:19', NULL),
(137, 15, 'accept', '2022-06-21 11:53:20am', 168, '2022-06-21 04:53:20', '2022-06-21 04:53:20', NULL),
(138, 15, 'accept', '2022-06-21 11:54:04am', 166, '2022-06-21 04:54:04', '2022-06-21 04:54:04', NULL),
(139, 15, 'accept', '2022-06-21 11:55:23am', 165, '2022-06-21 04:55:23', '2022-06-21 04:55:23', NULL),
(140, 15, 'accept', '2022-06-21 11:55:51am', 164, '2022-06-21 04:55:51', '2022-06-21 04:55:51', NULL),
(141, 15, 'accept', '2022-06-21 11:56:10am', 161, '2022-06-21 04:56:10', '2022-06-21 04:56:10', NULL),
(142, 15, 'accept', '2022-06-21 11:57:44am', 160, '2022-06-21 04:57:44', '2022-06-21 04:57:44', NULL),
(143, 15, 'accept', '2022-06-21 11:59:10am', 158, '2022-06-21 04:59:10', '2022-06-21 04:59:10', NULL),
(144, 15, 'accept', '2022-06-23 15:29:41pm', 191, '2022-06-23 08:29:41', '2022-06-23 08:29:41', NULL),
(145, 15, 'accept', '2022-06-23 15:31:51pm', 189, '2022-06-23 08:31:51', '2022-06-23 08:31:51', NULL),
(146, 15, 'accept', '2022-06-23 15:32:17pm', 188, '2022-06-23 08:32:17', '2022-06-23 08:32:17', NULL),
(147, 15, 'accept', '2022-06-23 15:33:38pm', 183, '2022-06-23 08:33:38', '2022-06-23 08:33:38', NULL),
(148, 15, 'accept', '2022-06-23 15:34:29pm', 181, '2022-06-23 08:34:29', '2022-06-23 08:34:29', NULL),
(149, 15, 'accept', '2022-06-23 15:38:26pm', 180, '2022-06-23 08:38:26', '2022-06-23 08:38:26', NULL),
(150, 15, 'accept', '2022-06-24 12:59:31pm', 194, '2022-06-24 05:59:31', '2022-06-24 05:59:31', NULL),
(151, 15, 'accept', '2022-06-24 13:00:22pm', 193, '2022-06-24 06:00:22', '2022-06-24 06:00:22', NULL),
(152, 15, 'accept', '2022-06-24 13:01:57pm', 192, '2022-06-24 06:01:57', '2022-06-24 06:01:57', NULL),
(153, 15, 'accept', '2022-06-24 13:02:58pm', 185, '2022-06-24 06:02:58', '2022-06-24 06:02:58', NULL),
(154, 15, 'accept', '2022-06-24 13:03:35pm', 179, '2022-06-24 06:03:35', '2022-06-24 06:03:35', NULL),
(155, 15, 'accept', '2022-06-24 13:04:24pm', 178, '2022-06-24 06:04:24', '2022-06-24 06:04:24', NULL),
(156, 15, 'accept', '2022-06-24 13:04:51pm', 177, '2022-06-24 06:04:51', '2022-06-24 06:04:51', NULL),
(157, 15, 'accept', '2022-06-24 13:06:07pm', 176, '2022-06-24 06:06:07', '2022-06-24 06:06:07', NULL),
(158, 15, 'accept', '2022-06-24 13:07:59pm', 167, '2022-06-24 06:07:59', '2022-06-24 06:07:59', NULL),
(159, 15, 'accept', '2022-06-24 13:08:41pm', 159, '2022-06-24 06:08:41', '2022-06-24 06:08:41', NULL),
(160, 15, 'accept', '2022-06-24 13:10:11pm', 100, '2022-06-24 06:10:11', '2022-06-24 06:10:11', NULL),
(161, 15, 'accept', '2022-06-24 13:11:20pm', 173, '2022-06-24 06:11:20', '2022-06-24 06:11:20', NULL);

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
-- Table structure for table `members_lists`
--

CREATE TABLE `members_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `members_list_file` text COLLATE utf8mb4_unicode_ci,
  `original_name` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `insert_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members_lists`
--

INSERT INTO `members_lists` (`id`, `members_list_file`, `original_name`, `user_id`, `insert_user_id`, `created_at`, `updated_at`) VALUES
(1, 'public/members_list_file/wQ9RwJQgWO1uJssDgcqltX3pYVHHC3vHiMPbn4uS.jpg', '4.jpg', 37, 20, '2022-06-07 06:45:00', '2022-06-07 06:45:00'),
(2, 'public/members_list_file/AFqwt21uwVZu1StcHHCJ4FAfbOSnXsVbll2yym9R.jpg', '5.jpg', 37, 20, '2022-06-07 06:45:02', '2022-06-07 06:45:02'),
(3, 'public/members_list_file/T4klkwYVkFjooruKJzSKLeNZYZ5nKmpbfvJreBfR.jpg', '3.jpg', 4, 20, '2022-06-07 07:09:01', '2022-06-07 07:09:01'),
(4, 'public/members_list_file/WGVKGIWSusucKYNbcft7vQrJEaTasU3NQed6gaYS.jpg', '4.jpg', 4, 20, '2022-06-07 07:09:01', '2022-06-07 07:09:01'),
(5, 'public/members_list_file/8IXqIlEbAc9GxzegA8THpZSLrcMLIr307350T3VL.jpg', '6.jpg', 5, 20, '2022-06-07 07:34:42', '2022-06-07 07:34:42'),
(6, 'public/members_list_file/fToedNQbucqnYTyoWfiEQ428WCedXEsO7Co2pGBm.jpg', '7.jpg', 5, 20, '2022-06-07 07:34:42', '2022-06-07 07:34:42'),
(7, 'public/members_list_file/5JeT7Jc59Gfnd6Lm2S4quL2gocQR0ObEpfiU6Pqm.jpg', '3.jpg', 9, 20, '2022-06-07 07:37:49', '2022-06-07 07:37:49'),
(8, 'public/members_list_file/xuzKsu2wKbKD6z0UOASkImGTYkY7Y2HLiwqmCwE6.jpg', '4.jpg', 9, 20, '2022-06-07 07:37:49', '2022-06-07 07:37:49'),
(9, 'public/members_list_file/xCcCuOp23F2C18x2yvBSiM2RiOCtI3m5eZBQf3A8.jpg', '3.jpg', 13, 20, '2022-06-07 07:48:09', '2022-06-07 07:48:09'),
(10, 'public/members_list_file/Zk8tvYhrPc8tCQ4tBolsneEbNpHrfde3JLOIcJ5O.jpg', '4.jpg', 13, 20, '2022-06-07 07:48:09', '2022-06-07 07:48:09'),
(11, 'public/members_list_file/BBnpQ8E088OGWSlRe7bhIpF3DR56A6FBQFNmYAkD.jpg', '4.jpg', 14, 20, '2022-06-07 07:50:51', '2022-06-07 07:50:51'),
(12, 'public/members_list_file/j6DCpUumUphjBj3TDpz2LJbs82nUCB5PkyRTu0tS.jpg', '5.jpg', 14, 20, '2022-06-07 07:50:52', '2022-06-07 07:50:52'),
(13, 'public/members_list_file/7IarA6c4D6POkJEgi3pfW8ZCwYj3tjBCWCjPpG1y.jpg', '2.jpg', 15, 20, '2022-06-07 07:53:12', '2022-06-07 07:53:12'),
(14, 'public/members_list_file/hqNfx1WlszEn3R0A5pDSwqLmulbXHu5V3oxjE0yY.jpg', '3.jpg', 15, 20, '2022-06-07 07:53:12', '2022-06-07 07:53:12'),
(15, 'public/members_list_file/yhrb6b67uiw6wgeB1LY6PjiWgU8QuHCpoeWxiyw5.jpg', '4.jpg', 18, 20, '2022-06-07 08:13:37', '2022-06-07 08:13:37'),
(16, 'public/members_list_file/kMiebmlPIdjaLMEl1CFOBviP8UYLDkB1yOFLPSwC.jpg', '5.jpg', 18, 20, '2022-06-07 08:13:37', '2022-06-07 08:13:37'),
(17, 'public/members_list_file/9BodaU0Xk8CJxwlmQVTe9JZbGqRVNiFO6mo9koU0.jpg', '4.jpg', 21, 20, '2022-06-07 08:16:52', '2022-06-07 08:16:52'),
(18, 'public/members_list_file/vxZg6GmjrXN2M1PW32t76Wnj1UbJYK7zpVk8LlIM.jpg', '5.jpg', 21, 20, '2022-06-07 08:16:52', '2022-06-07 08:16:52'),
(19, 'public/members_list_file/4gBTwM1ijDuwaMgvSO75KmvwrverUu88m34Gin6l.pdf', '20180730070941.pdf', 22, 20, '2022-06-07 08:18:33', '2022-06-07 08:18:33'),
(20, 'public/members_list_file/oWZyxGf94dYnHSujjjs2NKHqjdGWZdjMlLdzGJoj.jpg', '4.jpg', 26, 20, '2022-06-07 08:24:44', '2022-06-07 08:24:44'),
(21, 'public/members_list_file/fRPQGKb0IpJaZKl2xxOjrG2r7FrPrDi7nzKXn2YO.jpg', '5.jpg', 26, 20, '2022-06-07 08:24:44', '2022-06-07 08:24:44'),
(22, 'public/members_list_file/qdMFLa1NJoEiszfP5Al591tady1FqceKm5EAHuna.jpg', '5.jpg', 50, 20, '2022-06-09 06:41:36', '2022-06-09 06:41:36'),
(23, 'public/members_list_file/xiK3QtRRrWEGCir9ymZrOsxr0ZLTcFa6DtZccL36.jpg', '6.jpg', 50, 20, '2022-06-09 06:41:36', '2022-06-09 06:41:36'),
(24, 'public/members_list_file/DrBH6Fz42oKBPIzfoL2bZFpGWpD69IozgRKMwuFN.jpg', '6.jpg', 48, 20, '2022-06-09 07:04:38', '2022-06-09 07:04:38'),
(25, 'public/members_list_file/IA2QKh4DGNE48NrvTltS7402xpSXwr4uRLTjbrID.jpg', '4.jpg', 7, 20, '2022-06-16 03:01:04', '2022-06-16 03:01:04'),
(26, 'public/members_list_file/e8vtHFpYwNrsGRSZFAYNMa2R3VHJMRYHrFE9K5Gp.jpg', '5.jpg', 7, 20, '2022-06-16 03:01:04', '2022-06-16 03:01:04'),
(27, 'public/members_list_file/0nQYngHqeH9CbTf8LnwPNx9AVedQLgCOyZLp9Bch.jpg', '4.jpg', 51, 20, '2022-06-16 03:13:42', '2022-06-16 03:13:42'),
(28, 'public/members_list_file/GVBcKKq5VgtiVyFmr3wKFYRI5VBTz32C9wXEsDN5.jpg', '5.jpg', 51, 20, '2022-06-16 03:13:42', '2022-06-16 03:13:42'),
(29, 'public/members_list_file/vAx10IZT7XElAcpOJM9PzGRkqXQi5jLpXd5vxHU6.jpg', '4.jpg', 35, 20, '2022-06-24 05:03:32', '2022-06-24 05:03:32'),
(30, 'public/members_list_file/8rk0aR5wQAsUiZ05uXnb2ChdydvbxZF58i8z48Zl.jpg', '5.jpg', 35, 20, '2022-06-24 05:03:32', '2022-06-24 05:03:32');

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
(9, '2022_02_15_100945_create_unitos_of_measures_table', 1),
(10, '2022_02_15_151522_create_materials_table', 1),
(11, '2022_02_15_160317_create_labours_table', 1),
(12, '2022_02_16_080734_create_customers_table', 1),
(13, '2022_02_16_082816_add_phone_to_customers_table', 1),
(14, '2022_02_16_153632_create_projects_table', 1),
(15, '2022_02_17_171505_create_floor_plans_table', 1),
(16, '2022_02_17_184711_add_original_name_to_floor_plans_table', 1),
(17, '2022_02_17_191518_add_remark_to_floor_plans_table', 1),
(18, '2022_02_25_151550_create_quotationproposals_table', 1),
(19, '2022_02_25_175232_add_exterior_design_fees_date_to_projects_table', 1),
(20, '2022_02_26_110040_create_archi_exterior_designs_table', 1),
(21, '2022_02_26_111149_add_created_at_to_archi_exterior_designs_table', 1),
(22, '2022_02_26_112316_create_structure_designs_table', 1),
(23, '2022_02_26_170910_add_item_code_to_materials_table', 1),
(24, '2022_02_26_180358_add_item_accounts_to_materials_table', 1),
(25, '2022_02_26_182608_drop_materials_table', 1),
(26, '2022_02_26_182908_add_opening_cost_price_to_materials_table', 1),
(27, '2022_03_06_120436_add_project_code_to_customers_table', 1),
(28, '2022_03_06_121148_add_address_to_customers_table', 1),
(29, '2022_03_06_122220_add_email_to_customers_table', 1),
(30, '2022_03_06_124826_remove_project_code_from_projects_table', 1),
(31, '2022_03_06_185209_create_exterior_design_fees_table', 1),
(32, '2022_03_06_191013_create_structure_design_fees_table', 1),
(33, '2022_03_06_232222_add_approved_by_to_projects_table', 1),
(34, '2022_03_06_232721_create_approved_bies_table', 1),
(35, '2022_03_07_153017_create_departments_table', 1),
(36, '2022_03_07_160507_create_permission_tables', 1),
(37, '2022_03_07_224304_add_phone_to_users_table', 1),
(38, '2022_03_08_013300_add_display_order_to_projects_table', 1),
(39, '2022_03_12_112634_create_permits_table', 1),
(40, '2022_03_12_114056_create_contracts_table', 1),
(41, '2022_03_17_125912_add_processing_file_and_processing_file_upload_date_to_projects', 1),
(42, '2022_03_17_135030_create_processing_files_table', 1),
(43, '2022_03_17_165826_create_projects_users_table', 1),
(44, '2022_03_19_134244_create_main_warehouses_table', 1),
(45, '2022_03_19_141838_create_fixed_assets_table', 1),
(46, '2022_03_20_224152_create_request_items_table', 1),
(47, '2022_03_21_001932_create_request_infos_table', 1),
(48, '2022_03_21_002524_create_eng_request_items_table', 1),
(49, '2022_03_21_093030_create_sent_by_users_table', 1),
(50, '2022_04_03_195948_add_accept_reject_status_to_request_infos_table', 1),
(51, '2022_04_03_200621_create_accept_reject_statuses_table', 1),
(52, '2022_04_03_204911_add_request_info_id_to_accept_reject_statuses_table', 1),
(53, '2022_04_03_222210_add_qs_team_check_status_to_request_infos_table', 1),
(54, '2022_04_03_234029_create_qs_team_check_passes_table', 1),
(55, '2022_04_04_180106_add_logistics_team_check_sent_status_to_request_infos_table', 1),
(56, '2022_04_04_194627_create_transfer_infos_table', 1),
(57, '2022_04_04_195637_add_transferred_to_to_transfer_infos_table', 1),
(58, '2022_04_04_200733_add_request_info_id_to_transfer_infos_table', 1),
(59, '2022_04_04_201826_add_transfer_from_status_to_request_infos_table', 1),
(60, '2022_04_04_205309_remove_customer_id_from_transfer_infos_table', 1),
(61, '2022_04_04_205510_add_eng_request_info_id_to_transfer_infos_table', 1),
(62, '2022_04_04_222519_add_received_by_engineer_status_to_request_infos_table', 1),
(63, '2022_04_04_224212_create_received_by_engineers_table', 1),
(64, '2022_04_05_022026_create_engineer_return_infos_table', 1),
(65, '2022_04_05_023656_create_return_items_table', 1),
(66, '2022_04_05_033802_create_return_qs_team_check_passes_table', 1),
(67, '2022_04_05_084058_create_return_logistics_team_checks_table', 1),
(68, '2022_04_05_084142_create_return_transfer_infos_table', 1),
(69, '2022_04_05_085512_create_received_by_store_managers_table', 1),
(70, '2022_04_05_124342_create_variable_assets_table', 1),
(71, '2022_04_05_131028_create_variable_request_infos_table', 1),
(72, '2022_04_05_131336_create_variable_request_items_table', 1),
(73, '2022_04_06_000102_add_request_info_id_to_qs_team_check_passes_table', 1),
(74, '2022_04_06_001524_add_fixed_asset_id_to_qs_team_check_passes_table', 1),
(75, '2022_04_06_010617_add_transferred_from_id_to_qs_team_check_passes_table', 1),
(76, '2022_04_18_144506_add_qs_team_check_date_to_request_infos_table', 1),
(77, '2022_04_19_110304_add_sizes_to_variable_assets_table', 1),
(78, '2022_04_19_210434_create_variable_assets_sizes_table', 1),
(79, '2022_04_19_220114_add_size_to_variable_request_items_table', 1),
(80, '2022_04_20_000631_add_accept_reject_fields_to_variable_request_infos_table', 1),
(81, '2022_04_20_000739_create_variable_accept_reject_statuses_table', 1),
(82, '2022_04_20_004952_add_qs_team_check_status_fields_to_variable_request_infos_table', 1),
(83, '2022_04_20_010142_create_variable_qs_team_checks_table', 1),
(84, '2022_04_20_210838_create_management_variable_accept_reject_statuses_table', 1),
(85, '2022_04_20_213721_add_actual_voucher_fields_to_variable_request_infos_table', 1),
(86, '2022_04_20_214411_create_variable_actual_vouchers_table', 1),
(87, '2022_04_20_215701_add_remark_to_variable_actual_vouchers_table', 1),
(88, '2022_04_20_224200_create_variable_finance_payment_slips_table', 1),
(89, '2022_04_21_001049_create_variable_received_by_engineers_table', 1),
(90, '2022_04_21_003353_add_logistics_team_send_fields_to_variable_request_infos_table', 1),
(91, '2022_04_21_003714_create_variable_logistics_team_sends_table', 1),
(92, '2022_04_21_010126_remove_transfer_from_from_variable_logistics_team_sends_table', 1),
(93, '2022_04_21_010327_add_transfer_to_customer_id_to_variable_logistics_team_sends_table', 1),
(94, '2022_04_21_010932_add_remark_to_variable_logistics_team_sends_table', 1),
(95, '2022_04_21_232735_create_variable_logistics_team_checks_table', 1),
(96, '2022_04_21_234757_create_variable_payments_table', 1),
(97, '2022_04_23_033140_add_need_date_fields_to_variable_request_infos_table', 1),
(98, '2022_04_23_040403_add_date_fields_to_engineer_return_infos_table', 1),
(99, '2022_04_23_042821_add_engineer_return_info_id_fieldsto_return_qs_team_check_passes_table', 1),
(100, '2022_05_06_224356_add_projects_users_id_to_request_infos_table', 1),
(101, '2022_05_23_102853_add_users_emergency_fields_to_users_table', 1),
(102, '2022_05_23_111800_create_testing_table', 2),
(104, '2022_05_24_211310_create_fixed_assets_purchases_table', 3),
(105, '2022_05_25_082844_add_price_to_fixed_assets_purchases_table', 4),
(106, '2022_05_27_051323_add_fixed_asset_id_to_return_qs_team_check_passes_table', 5),
(107, '2022_05_27_093353_add_login_fields_to_users_table', 6),
(108, '2022_05_27_094253_create_activity_log_table', 7),
(109, '2022_06_06_213005_add_files_fields_to_users_table', 8),
(110, '2022_06_06_214026_create_members_lists_table', 9),
(111, '2022_06_06_230631_add_remark_to_variable_qs_team_checks_table', 10),
(112, '2022_06_08_083733_add_request_status_to_variable_request_infos_table', 11),
(113, '2022_06_08_091333_add_request_status_to_request_infos_table', 12),
(114, '2022_06_14_095352_add_supplier_name_to_variable_payments_table', 13),
(116, '2022_06_14_101602_add_display_order_to_variable_assets_table', 14),
(117, '2022_06_25_001220_add_remark_to_variable_accept_reject_statuses_table', 15),
(118, '2022_06_25_001929_add_remark_to_variable_logistics_team_checks_table', 16),
(119, '2022_06_25_002337_add_remark_to_management_variable_accept_reject_statuses_table', 17),
(120, '2022_06_25_003233_add_remark_to_variable_received_by_engineers_table', 18);

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
(7, 'App\\User', 33),
(7, 'App\\User', 41),
(0, 'App\\User', 40),
(7, 'App\\User', 42),
(5, 'App\\User', 43),
(7, 'App\\User', 45),
(6, 'App\\User', 34),
(7, 'App\\User', 39),
(8, 'App\\User', 36),
(8, 'App\\User', 49),
(8, 'App\\User', 44),
(8, 'App\\User', 47),
(8, 'App\\User', 28),
(8, 'App\\User', 31),
(8, 'App\\User', 29),
(8, 'App\\User', 37),
(7, 'App\\User', 19),
(5, 'App\\User', 3),
(6, 'App\\User', 4),
(7, 'App\\User', 1),
(7, 'App\\User', 2),
(5, 'App\\User', 5),
(6, 'App\\User', 6),
(5, 'App\\User', 9),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(6, 'App\\User', 12),
(6, 'App\\User', 13),
(7, 'App\\User', 14),
(7, 'App\\User', 15),
(5, 'App\\User', 16),
(6, 'App\\User', 18),
(7, 'App\\User', 20),
(9, 'App\\User', 21),
(8, 'App\\User', 22),
(5, 'App\\User', 24),
(8, 'App\\User', 25),
(8, 'App\\User', 26),
(8, 'App\\User', 32),
(7, 'App\\User', 38),
(9, 'App\\User', 17),
(8, 'App\\User', 46),
(6, 'App\\User', 8),
(7, 'App\\User', 33),
(7, 'App\\User', 41),
(0, 'App\\User', 40),
(7, 'App\\User', 42),
(5, 'App\\User', 43),
(7, 'App\\User', 45),
(6, 'App\\User', 34),
(7, 'App\\User', 39),
(8, 'App\\User', 36),
(8, 'App\\User', 49),
(8, 'App\\User', 44),
(8, 'App\\User', 47),
(8, 'App\\User', 28),
(8, 'App\\User', 31),
(8, 'App\\User', 29),
(8, 'App\\User', 37),
(7, 'App\\User', 19),
(5, 'App\\User', 3),
(6, 'App\\User', 4),
(7, 'App\\User', 1),
(7, 'App\\User', 2),
(5, 'App\\User', 5),
(6, 'App\\User', 6),
(5, 'App\\User', 9),
(5, 'App\\User', 10),
(5, 'App\\User', 11),
(6, 'App\\User', 12),
(6, 'App\\User', 13),
(7, 'App\\User', 14),
(7, 'App\\User', 15),
(5, 'App\\User', 16),
(6, 'App\\User', 18),
(7, 'App\\User', 20),
(9, 'App\\User', 21),
(8, 'App\\User', 22),
(5, 'App\\User', 24),
(8, 'App\\User', 25),
(8, 'App\\User', 26),
(8, 'App\\User', 32),
(7, 'App\\User', 38),
(9, 'App\\User', 17),
(8, 'App\\User', 46),
(5, 'App\\User', 48),
(6, 'App\\User', 50),
(7, 'App\\User', 7),
(8, 'App\\User', 27),
(8, 'App\\User', 51),
(8, 'App\\User', 30),
(8, 'App\\User', 23),
(7, 'App\\User', 35),
(8, 'App\\User', 35);

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
(19, 'accept_file_manager_module', 'web', '2022-03-07 17:58:46', '2022-06-07 06:51:23'),
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
(2, 2, 'finished', '2022-06-13 13:44:44', NULL, NULL, NULL, NULL, 'finished', '2022-03-17 13:41:36', 'finished', '2022-03-24 11:46:14', '2022-03-15', NULL, 'Proposal', '2022-03-15 09:37:54', '2022-06-13 06:44:44', NULL, NULL, NULL, NULL, 13, NULL, NULL, 'finished', '2022-03-16 22:53:37', NULL, NULL),
(5, 4, 'finished', '2022-03-16 22:50:27', 'finished', '2022-03-16 22:50:45', NULL, NULL, 'finished', '2022-04-04 16:00:22', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:26:46', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 14, NULL, NULL, 'finished', '2022-03-16 22:51:32', NULL, NULL),
(6, 5, 'finished', '2022-04-19 10:42:31', 'finished', '2022-05-08 11:51:26', NULL, 'done', 'finished', '2022-05-09 15:10:14', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:34:27', '2022-06-07 06:37:23', NULL, '2022-04-07 16:48:27', NULL, NULL, 7, NULL, NULL, 'finished', '2022-03-16 22:39:00', NULL, NULL),
(7, 6, 'finished', '2022-04-04 16:58:09', 'finished', '2022-03-16 21:42:03', 'done', NULL, 'finished', '2022-04-28 15:19:48', 'finished', '2022-03-25 12:01:33', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:05:40', '2022-06-07 06:37:23', '2022-03-18 09:34:07', NULL, NULL, NULL, 16, NULL, NULL, 'finished', '2022-03-16 21:43:00', NULL, NULL),
(8, 7, 'finished', '2022-03-21 11:38:04', 'finished', '2022-03-16 21:33:37', NULL, NULL, 'finished', '2022-05-24 10:48:51', 'finished', '2022-03-21 13:02:54', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:16:57', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 15, NULL, NULL, 'finished', '2022-03-16 21:37:02', NULL, NULL),
(9, 8, 'finished', '2022-04-22 11:03:08', 'finished', '2022-03-16 21:15:44', NULL, NULL, 'finished', '2022-06-20 15:12:49', 'finished', '2022-06-06 11:37:13', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:28:19', '2022-06-20 08:12:49', NULL, NULL, NULL, NULL, 17, NULL, NULL, 'finished', '2022-03-16 21:19:08', NULL, NULL),
(10, 9, 'finished', '2022-03-17 11:37:49', NULL, NULL, NULL, NULL, 'finished', '2022-06-15 09:49:00', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:38:04', '2022-06-15 02:49:00', NULL, NULL, NULL, NULL, 19, NULL, NULL, 'finished', '2022-03-16 21:02:33', NULL, NULL),
(11, 10, 'finished', '2022-04-01 11:35:54', 'finished', '2022-03-16 20:53:55', NULL, NULL, 'finished', '2022-06-13 12:47:17', 'finished', '2022-03-23 16:00:40', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:49:11', '2022-06-13 05:47:17', NULL, NULL, NULL, NULL, 18, NULL, NULL, 'finished', '2022-03-16 20:57:21', NULL, NULL),
(12, 11, 'finished', '2022-03-16 20:30:43', 'finished', '2022-03-16 20:31:28', NULL, NULL, 'finished', '2022-06-13 09:53:45', 'finished', '2022-03-24 17:15:46', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:04:41', '2022-06-13 02:53:45', NULL, NULL, NULL, NULL, 20, NULL, NULL, 'finished', '2022-03-16 20:34:27', NULL, NULL),
(13, 12, 'finished', '2022-03-16 20:13:53', 'finished', '2022-03-16 20:14:41', NULL, NULL, 'finished', '2022-05-06 10:22:12', 'finished', '2022-03-25 14:04:22', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:10:30', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 21, NULL, NULL, 'finished', '2022-03-16 20:16:59', NULL, NULL),
(14, 13, 'finished', '2022-04-05 15:33:30', 'finished', '2022-03-16 20:05:03', NULL, NULL, 'finished', '2022-05-30 15:52:23', 'finished', '2022-05-30 13:23:28', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:18:33', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 22, NULL, NULL, 'finished', '2022-03-16 20:06:52', NULL, NULL),
(15, 14, 'finished', '2022-03-18 09:17:16', 'finished', '2022-03-31 11:45:59', NULL, NULL, 'finished', '2022-05-23 11:33:07', 'finished', '2022-05-30 10:29:44', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:51:50', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 23, NULL, NULL, 'finished', '2022-03-31 11:40:20', NULL, NULL),
(16, 15, 'finished', '2022-04-06 15:45:14', 'finished', '2022-03-16 18:32:29', 'done', NULL, 'finished', '2022-05-10 12:28:56', 'finished', '2022-05-09 11:20:10', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:57:43', '2022-06-07 06:37:23', '2022-03-17 13:59:03', NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 'finished', '2022-03-28 16:02:30', 'finished', '2022-04-10 00:08:45', NULL, NULL, 'finished', '2022-06-07 15:01:39', 'finished', '2022-06-21 09:22:09', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:13:15', '2022-06-21 02:22:09', NULL, NULL, NULL, NULL, 25, NULL, NULL, 'finished', '2022-04-10 00:07:19', 'finished', '2022-03-28 16:15:21'),
(18, 17, 'finished', '2022-03-16 18:19:57', 'finished', '2022-05-28 00:06:12', NULL, NULL, 'finished', '2022-06-09 10:16:35', 'finished', '2022-06-03 13:22:10', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:30:27', '2022-06-09 03:16:35', NULL, NULL, NULL, NULL, 26, NULL, NULL, 'finished', '2022-05-28 00:06:42', NULL, NULL),
(19, 18, 'finished', '2022-03-16 18:03:55', NULL, NULL, NULL, NULL, 'finished', '2022-05-13 09:20:30', 'finished', '2022-05-13 12:32:37', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:39:12', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 19, 'finished', '2022-03-17 11:31:06', 'finished', '2022-03-16 18:12:01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:09:27', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 20, 'finished', '2022-04-19 12:13:35', NULL, NULL, NULL, NULL, 'finished', '2022-03-26 10:31:25', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:33:44', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 21, 'finished', '2022-03-24 10:00:07', 'finished', '2022-04-26 23:11:03', NULL, NULL, 'finished', '2022-04-28 09:22:53', 'finished', '2022-06-01 10:42:00', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:44:19', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 30, NULL, NULL, 'finished', '2022-04-26 23:13:41', NULL, NULL),
(23, 22, 'finished', '2022-03-24 13:44:53', NULL, NULL, NULL, NULL, 'finished', '2022-05-05 11:05:44', 'finished', '2022-06-07 14:30:22', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:50:13', '2022-06-07 07:30:22', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 23, 'finished', '2022-03-30 09:57:03', 'finished', '2022-03-16 17:58:29', 'done', 'done', 'finished', '2022-05-09 15:32:29', 'finished', '2022-06-07 14:29:05', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:56:36', '2022-06-07 07:29:05', '2022-03-16 18:00:17', '2022-03-16 18:00:37', NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 24, 'finished', '2022-04-06 15:45:55', NULL, NULL, 'done', NULL, 'finished', '2022-05-30 15:31:14', 'finished', '2022-05-23 17:02:50', '2022-03-16', NULL, 'Proposal', '2022-03-16 09:04:38', '2022-06-07 06:37:23', '2022-03-16 17:52:07', NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 25, 'finished', '2022-05-08 11:48:28', 'finished', '2022-03-16 17:24:29', NULL, NULL, 'finished', '2022-03-16 17:26:55', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:10:26', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 34, 'finished', '2022-03-16 17:45:37', 'finished', '2022-05-08 11:51:55', NULL, NULL),
(27, 26, 'finished', '2022-03-16 17:19:28', 'finished', '2022-03-16 17:19:55', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:14:19', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 27, NULL, NULL, 'finished', '2022-03-16 17:17:39', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:22:52', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 28, NULL, NULL, 'finished', '2022-03-16 17:14:33', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:26:41', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 29, 'finished', '2022-03-18 09:32:20', 'finished', '2022-03-16 23:59:15', NULL, NULL, 'finished', '2022-03-17 10:50:08', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 16:57:25', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 38, NULL, NULL, 'finished', '2022-03-17 00:03:09', NULL, NULL),
(31, 30, 'finished', '2022-03-18 10:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:20:51', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 39, NULL, NULL, 'finished', '2022-03-17 00:21:10', NULL, NULL),
(32, 31, 'finished', '2022-03-18 09:34:28', 'finished', '2022-03-17 00:31:02', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:30:01', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 40, NULL, NULL, 'finished', '2022-03-17 00:31:23', NULL, NULL),
(33, 32, 'finished', '2022-03-17 13:46:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:40:39', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 41, NULL, NULL, 'finished', '2022-03-17 00:41:37', NULL, NULL),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-03', NULL, 'Proposal', '2022-04-03 09:30:57', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 8, NULL, NULL, 'finished', '2022-04-03 16:32:59', NULL, NULL),
(36, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21', NULL, 'Proposal', '2022-04-21 05:30:51', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21', NULL, 'Proposal', '2022-04-21 05:36:23', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 36, NULL, NULL, 'finished', '2022-06-05 14:26:55', NULL, NULL, 'finished', '2022-06-09 09:27:56', 'finished', '2022-06-10 15:03:58', '2022-04-26', NULL, 'Proposal', '2022-04-26 16:20:58', '2022-06-10 08:03:58', NULL, NULL, NULL, NULL, 11, NULL, NULL, 'finished', '2022-06-05 14:38:55', NULL, NULL),
(39, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26', NULL, 'Proposal', '2022-04-26 16:23:46', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 38, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-15 19:49:21', 'finished', '2022-06-22 15:10:54', '2022-05-20', NULL, 'Proposal', '2022-05-20 03:14:45', '2022-06-22 08:10:54', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 03:29:42', '2022-06-07 06:37:26', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:24:31', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:33:24', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:41:18', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 44, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-21 16:19:56', NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:56:06', '2022-06-21 09:19:56', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 45, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-20 11:22:09', NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 03:01:02', '2022-06-20 04:22:09', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 46, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 13:07:20', NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 03:26:17', '2022-06-23 06:07:20', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:12:23', '2022-06-15 04:12:23', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:26:44', '2022-06-15 04:26:44', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:30:52', '2022-06-15 04:30:52', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:31:21', '2022-06-15 04:31:21', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:37:55', '2022-06-15 04:37:55', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:51:56', '2022-06-15 04:51:56', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 05:37:11', '2022-06-15 05:37:11', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 05:47:51', '2022-06-15 05:47:51', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 06:51:10', '2022-06-15 06:51:10', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

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
(17, 42, 15, 0, 1, 1, '2022-06-06 03:06:39', '2022-06-06 03:06:39', 14, 3, 0),
(18, 42, 16, 0, 1, 1, '2022-06-07 02:41:37', '2022-06-07 02:41:37', 15, 7, 0),
(19, 42, 17, 0, 1, 1, '2022-06-07 02:43:06', '2022-06-07 02:43:06', 16, 6, 0),
(20, 42, 18, 0, 1, 1, '2022-06-07 02:44:41', '2022-06-07 02:44:41', 17, 8, 0),
(21, 10, 21, 0, 2, 2, '2022-06-14 03:23:34', '2022-06-14 03:23:34', 20, 5, 0),
(22, 42, 20, 0, 1, 0, '2022-06-15 09:58:03', '2022-06-15 09:58:03', 19, 13, 0),
(23, 19, 96, 0, 1, 1, '2022-06-24 08:29:32', '2022-06-24 08:29:32', 35, 3, 0),
(24, 19, 97, 0, 3, 3, '2022-06-24 08:29:32', '2022-06-24 08:29:32', 35, 7, 0),
(25, 19, 98, 0, 2, 2, '2022-06-24 08:29:32', '2022-06-24 08:29:32', 35, 8, 0),
(26, 11, 91, 0, 25, 25, '2022-06-24 08:44:27', '2022-06-24 08:44:27', 34, 1, 0),
(27, 11, 92, 0, 1, 1, '2022-06-24 08:44:27', '2022-06-24 08:44:27', 34, 7, 0),
(28, 11, 93, 0, 1, 1, '2022-06-24 08:44:27', '2022-06-24 08:44:27', 34, 6, 0),
(29, 11, 94, 0, 1, 1, '2022-06-24 08:44:27', '2022-06-24 08:44:27', 34, 18, 0),
(30, 11, 95, 0, 1, 1, '2022-06-24 08:44:27', '2022-06-24 08:44:27', 34, 23, 0),
(31, 11, 85, 0, 33, 33, '2022-06-24 08:47:31', '2022-06-24 08:47:31', 33, 1, 0),
(32, 11, 86, 0, 2, 2, '2022-06-24 08:47:31', '2022-06-24 08:47:31', 33, 5, 0),
(33, 11, 87, 0, 2, 2, '2022-06-24 08:47:31', '2022-06-24 08:47:31', 33, 14, 0),
(34, 11, 88, 0, 1, 1, '2022-06-24 08:47:31', '2022-06-24 08:47:31', 33, 7, 0),
(35, 11, 89, 0, 1, 1, '2022-06-24 08:47:31', '2022-06-24 08:47:31', 33, 6, 0),
(36, 11, 90, 0, 1, 1, '2022-06-24 08:47:31', '2022-06-24 08:47:31', 33, 9, 0),
(37, 11, 79, 0, 1, 1, '2022-06-24 08:48:07', '2022-06-24 08:48:07', 32, 5, 0),
(38, 11, 80, 0, 1, 1, '2022-06-24 08:48:07', '2022-06-24 08:48:07', 32, 14, 0),
(39, 11, 81, 0, 2, 2, '2022-06-24 08:48:07', '2022-06-24 08:48:07', 32, 19, 0),
(40, 11, 82, 0, 2, 2, '2022-06-24 08:48:07', '2022-06-24 08:48:07', 32, 7, 0),
(41, 11, 83, 0, 1, 1, '2022-06-24 08:48:07', '2022-06-24 08:48:07', 32, 6, 0),
(42, 11, 84, 0, 1, 1, '2022-06-24 08:48:07', '2022-06-24 08:48:07', 32, 11, 0),
(43, 11, 67, 0, 2, 2, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 2, 0),
(44, 11, 68, 0, 20, 20, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 1, 0),
(45, 11, 69, 0, 2, 2, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 5, 0),
(46, 11, 70, 0, 2, 2, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 14, 0),
(47, 11, 71, 0, 18, 18, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 19, 0),
(48, 11, 72, 0, 35, 35, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 20, 0),
(49, 11, 73, 0, 1, 1, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 7, 0),
(50, 11, 74, 0, 1, 1, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 6, 0),
(51, 11, 75, 0, 1, 1, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 8, 0),
(52, 11, 76, 0, 1, 1, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 18, 0),
(53, 11, 77, 0, 1, 1, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 10, 0),
(54, 11, 78, 0, 1, 1, '2022-06-24 08:52:14', '2022-06-24 08:52:14', 31, 11, 0),
(55, 11, 63, 0, 1, 1, '2022-06-24 08:52:41', '2022-06-24 08:52:41', 30, 3, 0),
(56, 11, 64, 0, 2, 2, '2022-06-24 08:52:41', '2022-06-24 08:52:41', 30, 5, 0),
(57, 11, 65, 0, 1, 1, '2022-06-24 08:52:41', '2022-06-24 08:52:41', 30, 8, 0),
(58, 11, 66, 0, 1, 1, '2022-06-24 08:52:41', '2022-06-24 08:52:41', 30, 18, 0),
(59, 11, 59, 0, 1, 1, '2022-06-24 08:53:58', '2022-06-24 08:53:58', 29, 3, 0),
(60, 11, 60, 0, 2, 2, '2022-06-24 08:53:58', '2022-06-24 08:53:58', 29, 5, 0),
(61, 11, 61, 0, 4, 4, '2022-06-24 08:53:58', '2022-06-24 08:53:58', 29, 14, 0),
(62, 11, 62, 0, 1, 1, '2022-06-24 08:53:58', '2022-06-24 08:53:58', 29, 6, 0),
(63, 11, 56, 0, 1, 1, '2022-06-24 08:54:58', '2022-06-24 08:54:58', 28, 5, 0),
(64, 11, 57, 0, 1, 1, '2022-06-24 08:54:58', '2022-06-24 08:54:58', 28, 6, 0),
(65, 11, 58, 0, 1, 1, '2022-06-24 08:54:58', '2022-06-24 08:54:58', 28, 18, 0),
(66, 11, 48, 0, 1, 1, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 4, 0),
(67, 11, 49, 0, 178, 178, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 1, 0),
(68, 11, 50, 0, 2, 2, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 5, 0),
(69, 11, 51, 0, 1, 1, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 14, 0),
(70, 11, 52, 0, 1, 1, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 7, 0),
(71, 11, 53, 0, 1, 1, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 6, 0),
(72, 11, 54, 0, 1, 1, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 18, 0),
(73, 11, 55, 0, 1, 1, '2022-06-24 08:55:56', '2022-06-24 08:55:56', 27, 11, 0),
(74, 11, 42, 0, 1, 1, '2022-06-24 09:00:38', '2022-06-24 09:00:38', 26, 3, 0),
(75, 11, 43, 0, 1, 1, '2022-06-24 09:00:38', '2022-06-24 09:00:38', 26, 2, 0),
(76, 11, 44, 0, 2, 2, '2022-06-24 09:00:38', '2022-06-24 09:00:38', 26, 7, 0),
(77, 11, 45, 0, 1, 1, '2022-06-24 09:00:38', '2022-06-24 09:00:38', 26, 6, 0),
(78, 11, 46, 0, 1, 1, '2022-06-24 09:00:38', '2022-06-24 09:00:38', 26, 8, 0),
(79, 11, 47, 0, 1, 1, '2022-06-24 09:00:38', '2022-06-24 09:00:38', 26, 18, 0),
(80, 11, 37, 0, 1, 1, '2022-06-24 09:01:38', '2022-06-24 09:01:38', 25, 3, 0),
(81, 11, 38, 0, 2, 2, '2022-06-24 09:01:38', '2022-06-24 09:01:38', 25, 7, 0),
(82, 11, 39, 0, 1, 1, '2022-06-24 09:01:38', '2022-06-24 09:01:38', 25, 6, 0),
(83, 11, 40, 0, 1, 1, '2022-06-24 09:01:38', '2022-06-24 09:01:38', 25, 8, 0),
(84, 11, 41, 0, 1, 1, '2022-06-24 09:01:38', '2022-06-24 09:01:38', 25, 22, 0),
(85, 11, 33, 0, 4, 4, '2022-06-24 09:05:08', '2022-06-24 09:05:08', 24, 5, 0),
(86, 11, 34, 0, 3, 3, '2022-06-24 09:05:08', '2022-06-24 09:05:08', 24, 14, 0),
(87, 11, 35, 0, 1, 1, '2022-06-24 09:05:08', '2022-06-24 09:05:08', 24, 7, 0),
(88, 11, 36, 0, 1, 1, '2022-06-24 09:05:08', '2022-06-24 09:05:08', 24, 18, 0),
(89, 11, 24, 0, 1, 1, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 3, 0),
(90, 11, 25, 0, 55, 55, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 1, 0),
(91, 11, 26, 0, 3, 3, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 5, 0),
(92, 11, 27, 0, 3, 3, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 14, 0),
(93, 11, 28, 0, 2, 2, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 7, 0),
(94, 11, 29, 0, 1, 1, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 6, 0),
(95, 11, 30, 0, 1, 1, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 8, 0),
(96, 11, 31, 0, 1, 1, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 18, 0),
(97, 11, 32, 0, 1, 1, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 21, 0);

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
(5, 9, 'received', '2022-05-30 12:00 AM', 22, '2022-05-30 08:01:17', '2022-05-30 08:01:17'),
(6, 13, 'received', '2022-06-15 05:00 PM', 36, '2022-06-16 03:52:39', '2022-06-16 03:52:39'),
(7, 6, 'received', '2022-05-10 10:00 PM', 26, '2022-06-22 15:14:15', '2022-06-22 15:14:15'),
(8, 21, 'received', '2022-06-24 02:00 PM', 44, '2022-06-24 07:10:58', '2022-06-24 07:10:58'),
(9, 35, 'received', '2022-06-24 03:00 PM', 47, '2022-06-24 08:51:23', '2022-06-24 08:51:23'),
(10, 34, 'received', '2022-06-24 03:00 PM', 25, '2022-06-24 08:52:16', '2022-06-24 08:52:16'),
(11, 32, 'received', '2022-06-24 03:00 PM', 26, '2022-06-24 08:52:57', '2022-06-24 08:52:57'),
(12, 32, 'received', '2022-06-24 03:00 PM', 26, '2022-06-24 08:52:57', '2022-06-24 08:52:57'),
(13, 33, 'received', '2022-06-24 03:00 PM', 26, '2022-06-24 08:53:12', '2022-06-24 08:53:12'),
(14, 31, 'received', '2022-06-24 03:00 PM', 28, '2022-06-24 08:55:08', '2022-06-24 08:55:08'),
(15, 30, 'received', '2022-06-24 03:00 PM', 31, '2022-06-24 08:55:42', '2022-06-24 08:55:42'),
(16, 29, 'received', '2022-06-24 03:00 PM', 31, '2022-06-24 08:55:45', '2022-06-24 08:55:45'),
(17, 27, 'received', '2022-06-24 03:00 PM', 36, '2022-06-24 08:58:11', '2022-06-24 08:58:11'),
(18, 28, 'received', '2022-06-24 03:00 PM', 32, '2022-06-24 08:58:47', '2022-06-24 08:58:47'),
(19, 28, 'received', '2022-06-24 03:00 PM', 32, '2022-06-24 08:58:55', '2022-06-24 08:58:55'),
(20, 25, 'received', '2022-06-24 04:00 PM', 44, '2022-06-24 09:08:43', '2022-06-24 09:08:43'),
(21, 26, 'received', '2022-06-24 04:00 PM', 37, '2022-06-24 09:10:01', '2022-06-24 09:10:01'),
(22, 23, 'received', '2022-06-24 04:00 PM', 22, '2022-06-24 09:19:11', '2022-06-24 09:19:11'),
(23, 24, 'received', '2022-06-24 04:00 PM', 22, '2022-06-24 09:19:15', '2022-06-24 09:19:15');

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
  `projects_users_id` int(11) DEFAULT NULL,
  `request_status` text COLLATE utf8mb4_unicode_ci,
  `request_status_date` text COLLATE utf8mb4_unicode_ci,
  `request_status_user` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_infos`
--

INSERT INTO `request_infos` (`id`, `request_code`, `request_date`, `work_scope`, `user_id`, `project_id`, `customer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `logistics_team_check_sent_status`, `transfer_from_status`, `main_warehouse_id`, `other_site_id`, `received_by_engineer_status`, `received_date`, `qs_team_check_date`, `logistics_team_check_sent_date`, `projects_users_id`, `request_status`, `request_status_date`, `request_status_user`) VALUES
(1, 'FR-000001', '2022-04-29 12:00 AM', 'Brick Laying Work', 22, 0, 9, '2022-04-29 09:47:21', '2022-04-29 09:49:23', 'accept', '2022-04-29 16:47:55pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-04-29 12:00 AM', '2022-04-29 16:48:32pm', '2022-04-29 16:48:57pm', NULL, NULL, NULL, NULL),
(2, 'FR-000002', '2022-04-30 12:00 AM', 'Brick Laying', 22, 0, 9, '2022-04-30 05:22:05', '2022-04-30 05:24:46', 'accept', '2022-04-30 12:22:53pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-04-30 12:00 AM', '2022-04-30 12:23:20pm', '2022-04-30 12:23:56pm', NULL, NULL, NULL, NULL),
(3, 'FR-000003', '2022-04-30 12:00 AM', 'Brick Laying Work', 22, 0, 2, '2022-04-30 10:38:42', '2022-05-06 11:36:58', 'accept', '2022-04-30 17:40:29pm', 'finished', 'finished', 'warehouse', 0, 0, NULL, NULL, '2022-05-06 18:13:02pm', '2022-05-06 18:36:58pm', NULL, NULL, NULL, NULL),
(4, 'FR-000004', '2022-05-09 12:00 AM', 'Swimming Pool Foundation', 22, 0, 9, '2022-05-06 10:53:50', '2022-05-06 10:56:02', 'accept', '2022-05-06 17:54:50pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-05-10 12:00 AM', '2022-05-06 17:55:21pm', '2022-05-06 17:55:37pm', NULL, NULL, NULL, NULL),
(5, 'FR-000005', '2022-05-06 12:00 AM', 'Foundation Formwork', 32, 0, 12, '2022-05-06 11:34:38', '2022-05-10 03:30:39', 'accept', '2022-05-10 10:30:14am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-10 10:30:39am', NULL, NULL, NULL, NULL, NULL),
(6, 'FR-000006', '2022-05-09 10:45 AM', 'Brick work and plastering work', 26, 0, 5, '2022-05-09 03:47:14', '2022-06-22 15:14:15', 'accept', '2022-05-19 14:06:29pm', 'finished', NULL, NULL, NULL, NULL, 'received', '2022-05-10 10:00 PM', '2022-05-10 10:32:34am', NULL, 6, 'completed', '2022-06-21 15:26:34pm', '26'),
(7, 'FR-000007', '2022-05-13 12:00 AM', 'မိုးရွာလျင်လိုအပ်သည့်နေရာကာရန်', 31, 0, 11, '2022-05-10 10:05:55', '2022-05-19 08:33:48', 'accept', '2022-05-19 15:33:48pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-19 14:07:55pm', NULL, 9, NULL, NULL, NULL),
(8, 'FR-000008', '2022-05-30 12:00 AM', 'For Site Use', 22, 0, 9, '2022-05-30 07:53:03', '2022-05-30 07:56:20', 'accept', '2022-05-30 14:53:49pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-05-30 12:00 AM', '2022-05-30 14:54:43pm', '2022-05-30 14:55:43pm', 1, NULL, NULL, NULL),
(9, 'FR-000009', '2022-05-30 12:00 AM', 'For Site Use', 22, 0, 9, '2022-05-30 07:59:37', '2022-05-30 08:01:17', 'accept', '2022-05-30 15:00:13pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-05-30 12:00 AM', '2022-05-30 15:00:25pm', '2022-05-30 15:00:44pm', 1, NULL, NULL, NULL),
(10, 'FR-000010', '2022-05-30 12:00 AM', 'For Site Use', 22, 0, 9, '2022-05-30 08:03:06', '2022-05-31 02:39:50', 'accept', '2022-05-31 09:38:05am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 09:39:50am', NULL, 1, NULL, NULL, NULL),
(11, 'FR-000011', '2022-06-02 06:00 PM', 'Cover for Building', 28, 0, 2, '2022-06-02 14:26:42', '2022-06-03 08:44:48', 'accept', '2022-06-03 15:44:37pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 15:44:48pm', NULL, 8, NULL, NULL, NULL),
(12, 'FR-000012', '2022-06-03 12:00 AM', 'For Ground Floor', 32, 0, 12, '2022-06-03 10:21:55', '2022-06-07 08:52:07', 'accept', '2022-06-06 09:34:40am', 'finished', 'finished', 'warehouse', 1, 0, NULL, NULL, '2022-06-06 09:34:50am', '2022-06-07 15:52:07pm', 11, NULL, NULL, NULL),
(13, 'FR-000013', '2022-06-08 03:00 PM', 'Compaction for Ground floor', 36, 0, 8, '2022-06-05 12:05:24', '2022-06-16 03:52:39', 'accept', '2022-06-06 09:33:57am', 'finished', NULL, NULL, NULL, NULL, 'received', '2022-06-15 05:00 PM', '2022-06-06 09:34:17am', NULL, 19, NULL, NULL, NULL),
(14, 'FR-000014', '2022-06-06 12:00 AM', 'For Site Mix', 47, 0, 17, '2022-06-06 03:01:35', '2022-06-07 08:49:50', 'accept', '2022-06-06 10:06:24am', 'finished', 'finished', 'warehouse', 1, 0, NULL, NULL, '2022-06-06 10:06:39am', '2022-06-07 15:49:50pm', 20, NULL, NULL, NULL),
(15, 'FR-000015', '2022-06-06 12:00 AM', 'for water sto', 47, 0, 17, '2022-06-06 03:23:40', '2022-06-07 08:48:59', 'accept', '2022-06-07 09:41:46am', 'finished', 'finished', 'warehouse', 1, 0, NULL, NULL, '2022-06-07 09:41:37am', '2022-06-07 15:48:59pm', 20, NULL, NULL, NULL),
(16, 'FR-000016', '2022-06-06 12:00 AM', 'for concrete casting', 47, 0, 17, '2022-06-06 03:26:09', '2022-06-07 02:43:18', 'accept', '2022-06-07 09:43:18am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 09:43:06am', NULL, 20, NULL, NULL, NULL),
(17, 'FR-000017', '2022-06-06 12:00 AM', 'Earthwork (pipe length 150ft)', 47, 0, 17, '2022-06-06 04:12:01', '2022-06-07 08:43:40', 'accept', '2022-06-07 09:44:49am', 'finished', 'finished', 'warehouse', 1, 0, NULL, NULL, '2022-06-07 09:44:41am', '2022-06-07 15:43:40pm', 20, NULL, NULL, NULL),
(18, 'FR-000018', '2022-06-06 12:00 AM', 'Earthwork (Pipe length 150ft)', 47, 0, 17, '2022-06-06 04:45:25', '2022-06-08 02:36:49', 'reject', '2022-06-08 09:36:49am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL),
(19, 'FR-000019', '2022-06-07 12:00 AM', 'Protction for Cement', 47, 0, 17, '2022-06-07 06:36:06', '2022-06-15 09:58:03', 'accept', '2022-06-10 10:07:14am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15 16:58:03pm', NULL, 20, NULL, NULL, NULL),
(20, 'FR-000020', '2022-06-10 10:00 PM', 'Column rebar installation and curing', 28, 0, 2, '2022-06-10 15:05:00', '2022-06-14 06:15:33', 'accept', '2022-06-14 13:15:33pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 10:23:34am', NULL, 8, NULL, NULL, NULL),
(21, 'FR-000021', '2022-06-23 10:00 AM', 'column', 44, 0, 16, '2022-06-23 03:25:33', '2022-06-24 07:10:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-06-24 02:00 PM', NULL, NULL, 18, NULL, NULL, NULL),
(22, 'FR-000022', '2022-06-23 10:00 AM', 'For compacting work before G.FL slab concrete casting', 26, 0, 5, '2022-06-23 03:45:48', '2022-06-23 03:45:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL),
(23, 'FR-000023', '2022-06-24 01:00 PM', 'Site Use', 22, 0, 9, '2022-06-24 06:52:12', '2022-06-24 09:19:11', 'accept', '2022-06-24 15:25:50pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 04:00 PM', '2022-06-24 16:17:37pm', '2022-06-24 16:18:41pm', 1, NULL, NULL, NULL),
(24, 'FR-000024', '2022-06-24 01:00 PM', 'Site Use', 22, 0, 7, '2022-06-24 06:53:28', '2022-06-24 09:19:15', 'accept', '2022-06-24 15:25:55pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 04:00 PM', '2022-06-24 16:05:08pm', '2022-06-24 16:08:07pm', 14, NULL, NULL, NULL),
(25, 'FR-000025', '2022-06-24 01:00 PM', 'Site Use', 44, 0, 16, '2022-06-24 06:56:44', '2022-06-24 09:08:43', 'accept', '2022-06-24 15:25:43pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 04:00 PM', '2022-06-24 16:01:38pm', '2022-06-24 16:07:53pm', 18, NULL, NULL, NULL),
(26, 'FR-000026', '2022-06-24 01:00 PM', 'Site Use', 37, 0, 21, '2022-06-24 06:59:00', '2022-06-24 09:10:01', 'accept', '2022-06-24 15:24:24pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 04:00 PM', '2022-06-24 16:00:38pm', '2022-06-24 16:07:34pm', 13, NULL, NULL, NULL),
(27, 'FR-000027', '2022-06-24 02:00 PM', 'Site Use', 36, 0, 8, '2022-06-24 07:20:26', '2022-06-24 08:58:11', 'accept', '2022-06-24 15:25:33pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:55:56pm', '2022-06-24 15:56:28pm', 19, NULL, NULL, NULL),
(28, 'FR-000028', '2022-06-24 02:00 PM', 'Site Use', 32, 0, 12, '2022-06-24 07:22:44', '2022-06-24 08:58:47', 'accept', '2022-06-24 15:25:25pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:54:58pm', '2022-06-24 15:56:11pm', 11, NULL, NULL, NULL),
(29, 'FR-000029', '2022-06-24 02:00 PM', 'Site Use', 31, 0, 11, '2022-06-24 07:25:31', '2022-06-24 08:55:45', 'accept', '2022-06-24 15:25:20pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:53:58pm', '2022-06-24 15:54:20pm', 9, NULL, NULL, NULL),
(30, 'FR-000030', '2022-06-24 02:00 PM', 'Site Use', 31, 0, 14, '2022-06-24 07:26:38', '2022-06-24 08:55:42', 'accept', '2022-06-24 15:25:15pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:52:41pm', '2022-06-24 15:54:09pm', 10, NULL, NULL, NULL),
(31, 'FR-000031', '2022-06-24 02:00 PM', 'Site Use', 28, 0, 2, '2022-06-24 07:30:22', '2022-06-24 08:55:08', 'accept', '2022-06-24 15:25:10pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:52:14pm', '2022-06-24 15:53:56pm', 8, NULL, NULL, NULL),
(32, 'FR-000032', '2022-06-24 02:00 PM', 'Site Use', 26, 0, 5, '2022-06-24 07:35:28', '2022-06-24 08:52:57', 'accept', '2022-06-24 15:25:05pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:48:07pm', '2022-06-24 15:49:16pm', 6, NULL, NULL, NULL),
(33, 'FR-000033', '2022-06-24 02:00 PM', 'Site Use', 26, 0, 4, '2022-06-24 07:36:42', '2022-06-24 08:53:12', 'accept', '2022-06-24 15:25:00pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:47:31pm', '2022-06-24 15:49:04pm', 5, NULL, NULL, NULL),
(34, 'FR-000034', '2022-06-24 02:00 PM', 'Site Use', 25, 0, 6, '2022-06-24 07:40:55', '2022-06-24 08:52:16', 'accept', '2022-06-24 15:24:18pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:44:27pm', '2022-06-24 15:46:37pm', 7, NULL, NULL, NULL),
(35, 'FR-000035', '2022-06-24 03:00 PM', 'Site Use', 47, 0, 17, '2022-06-24 08:05:18', '2022-06-24 08:51:23', 'accept', '2022-06-24 15:21:43pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:29:32pm', '2022-06-24 15:46:22pm', 20, NULL, NULL, NULL);

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
(8, 'Engineer', 'web', '2022-04-24 08:33:26', '2022-04-24 08:33:26'),
(9, 'QS/Procurement', 'web', '2022-05-30 09:06:48', '2022-05-30 09:06:48'),
(0, 'File Manager', 'web', '2022-06-07 06:52:57', '2022-06-07 06:52:57');

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
(14, 8),
(12, 9),
(13, 9),
(16, 9),
(19, 0);

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
(30, 9, 6, 'public/structuredesign/5CAwkaIxXO0Soe7VGb7RyF1iNS8WjO6F2ABEQRQV.rar', 'Ko Khant Sithu-Stru-R2 - 6.6.2022.rar', NULL, '2022-06-06', '11:37:13', '2022-06-06 04:37:13', '2022-06-06 04:37:13'),
(31, 24, 6, 'public/structuredesign/AfMw1b3YRBNpr1gGWTE1M1lfSefHLdSA8b87VtVu.rar', 'Ko Banyar (Hinthada)-Structure-R0 -7.6.2022.rar', NULL, '2022-06-07', '14:29:05', '2022-06-07 07:29:05', '2022-06-07 07:29:05'),
(32, 23, 6, 'public/structuredesign/RIl9m8JJGHZQ1tBUFpz6PdelI1QiGlCeER0xqx28.rar', 'Ko Phay Chit Htay-Structure-R0 -7.6.2022.rar', NULL, '2022-06-07', '14:30:22', '2022-06-07 07:30:22', '2022-06-07 07:30:22'),
(33, 38, 6, 'public/structuredesign/ZQ4ITSTLq6RREJtgq7uQ6Lfo0Nt9Xqmtqo9bFW5H.rar', 'Ko Aung Zaw Latt-Strudwg-R0-10.6.2022.rar', NULL, '2022-06-10', '15:03:58', '2022-06-10 08:03:58', '2022-06-10 08:03:58'),
(34, 17, 6, 'public/structuredesign/emdZ9TeO40WiKr4PH60b9m0ivbstsUhj7Wd8UjST.rar', 'Daw Khin Aye Aye Khine -Structure-R1-16.6.2022_1655351236.rar', NULL, '2022-06-16', '10:38:47', '2022-06-16 03:38:47', '2022-06-16 03:38:47'),
(35, 17, 6, 'public/structuredesign/OX4wBXeVUGeW3Ht9LSUH678aZjYVGr20b5xonEM7.zip', 'Daw Khin_Aye Aye Khine-Structure-R2-20.6.2022.zip', NULL, '2022-06-21', '09:22:09', '2022-06-21 02:22:09', '2022-06-21 02:22:09'),
(36, 40, 6, 'public/structuredesign/4T76TIJu74DbU6EQLhoimM8MR7idke46PBkzZ6kC.rar', 'Ko Kyaw Zin Min-Strudwg-R0-22.6.2022.rar', NULL, '2022-06-22', '15:10:54', '2022-06-22 08:10:54', '2022-06-22 08:10:54');

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
(6, 'warehouse', 1, '2022-05-30 12:00 AM', NULL, 21, '2022-05-30 08:00:44', '2022-05-30 08:00:44', 'YGN_TKT_00007', 9, 0),
(7, 'warehouse', 1, '2022-06-07 03:00 PM', '( From MZW )', 21, '2022-06-07 08:43:40', '2022-06-07 08:43:40', 'YGN_TKT_00016', 17, 0),
(8, 'warehouse', 1, '2022-06-07 03:00 PM', NULL, 21, '2022-06-07 08:48:59', '2022-06-07 08:48:59', 'YGN_TKT_00016', 15, 0),
(9, 'warehouse', 1, '2022-06-07 03:00 PM', 'From KGK Used', 21, '2022-06-07 08:49:50', '2022-06-07 08:49:50', 'YGN_TKT_00016', 14, 0),
(10, 'warehouse', 1, '2022-06-07 03:00 PM', NULL, 21, '2022-06-07 08:52:07', '2022-06-07 08:52:07', 'YGN_TGG_00010', 12, 0),
(11, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:46:22', '2022-06-24 08:46:22', 'YGN_TKT_00016', 35, 0),
(12, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:46:37', '2022-06-24 08:46:37', 'YGN_DP_00004', 34, 0),
(13, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:49:04', '2022-06-24 08:49:04', 'YGN- SOKL- 00002', 33, 0),
(14, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:49:16', '2022-06-24 08:49:16', 'YGN_SOKL_00003', 32, 0),
(15, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:53:56', '2022-06-24 08:53:56', 'YGN_DGSK_0001', 31, 0),
(16, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:54:09', '2022-06-24 08:54:09', 'YGN_MYG_00012', 30, 0),
(17, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:54:20', '2022-06-24 08:54:20', 'YGN_MYG_00009', 29, 0),
(18, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:56:11', '2022-06-24 08:56:11', 'YGN_TGG_00010', 28, 0),
(19, 'warehouse', 1, '2022-06-24 03:00 PM', NULL, 21, '2022-06-24 08:56:28', '2022-06-24 08:56:28', 'YGN_ND_00006', 27, 0),
(20, 'warehouse', 1, '2022-06-24 04:00 PM', NULL, 21, '2022-06-24 09:07:34', '2022-06-24 09:07:34', 'YGN_TKT_00020', 26, 0),
(21, 'warehouse', 1, '2022-06-24 04:00 PM', NULL, 21, '2022-06-24 09:07:53', '2022-06-24 09:07:53', 'YGN_TGG_00015', 25, 0),
(22, 'warehouse', 1, '2022-06-24 04:00 PM', NULL, 21, '2022-06-24 09:08:07', '2022-06-24 09:08:07', 'YGN_TGG_00005', 24, 0),
(23, 'warehouse', 1, '2022-06-24 04:00 PM', NULL, 21, '2022-06-24 09:18:41', '2022-06-24 09:18:41', 'YGN_TKT_00007', 23, 0);

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
  `agent` text COLLATE utf8mb4_unicode_ci,
  `nrc_front` text COLLATE utf8mb4_unicode_ci,
  `nrc_back` text COLLATE utf8mb4_unicode_ci,
  `members_list_file` text COLLATE utf8mb4_unicode_ci,
  `other_file` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `employee_id`, `phone`, `nrc_number`, `gender`, `address`, `department_id`, `contact_person`, `emergency_contact`, `passport_photo`, `join_date`, `employment_type`, `last_login_at`, `last_login_ip`, `agent`, `nrc_front`, `nrc_back`, `members_list_file`, `other_file`) VALUES
(1, 'Admin', 'admin@skg.com', NULL, '$2y$10$iY.PTOOlASzaLY549BHGH.aQorS3bbzjX7P9wcQ2QbJH/sGWI0aXa', NULL, '2022-02-14 04:00:05', '2022-06-24 17:35:40', 'EMP-00001', '09455165415', '-', 'male', 'YGN', 1, NULL, NULL, 'public/passport/yfI6n3suGBsHHNAoFiNDKV2fVIm4EqkN2Kdmdswg.jpg', '2022-06-01 12:00 AM', 0, '2022-06-25 00:35:40', '45.125.4.220', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, '', NULL),
(2, 'U AUNG MYO HTUT', 'aungmyohtut.skgroup@gmail.com', NULL, '$2y$10$jYBSEwxV5Fv0WkfDbpwz7.8J4L5nL.qNq4AJ7LXStOWxerGMssZ.S', 'CLb9kS8OAWpQUTVj1smvl85KY7LFRhhCfzQbpo6lyG2JoG00EhBy3f6pHufo', '2022-02-14 04:00:32', '2022-06-07 07:29:38', 'EMP - 00002', '09772746336', '12/OuKaTa(N)178191', 'male', 'အမှတ် (၂၄၆)၊ ၆ လမ်း၊ ၁၁ရပ်ကွက်.‌တောင်ဉက္ကလာပမြို့နယ်၊ ရန်ကုန်မြို့', 1, NULL, NULL, 'public/passport/Ow2ZsVWJ8GcLThEMnvJsrJUY2JJYFBxLVGctygx2.jpg', '2020-12-21 12:00 AM', 0, '2022-06-01 11:51:59', '103.217.156.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'public/photo/PJHizF8U2stJ9aTVEKMOUdNBkyCHjoOG5iVxzbbT.jpg', 'public/photo/GiyMPenfBnPMJRjUlM2VT8LNTRfvRwZVsCPpJUO4.jpg', '', NULL),
(3, 'Daw Pearl Yadanar Soe', 'pearl.skgroup@gmail.com', NULL, '$2y$10$5ZtZj/NPdW8QTxYw8jHuT.Yt6GEd.2PSy0h.iBmGbOha9piqpfYge', 'w0qC5zZnJI4ZlSTqv1CBlLGe0LtbNpIwnVGtMcN4aS0ZoA1dBl9ky6xG8uQL', '2022-03-07 17:39:27', '2022-06-15 02:54:59', 'EMP-00003', '09751446005', '12/KaThaNa (N)050585', 'female', 'YGN', 4, NULL, NULL, 'public/passport/fQkbrpdxdMDgfzNLa5UTActUa1IKRXuHpnb3PUdA.jpg', '2022-06-03 12:00 AM', 0, '2022-06-15 09:54:59', '8.38.147.69', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'public/photo/7NoIpz2lecBCK0c7ieif98QD1Iyskt4K4kEYVLvA.jpg', 'public/photo/BYGiccJ0mDtxSD8E5dJWaVZyq5crrS8USdoqFWJE.jpg', '', NULL),
(4, 'Archi Myo Thet', 'myothet.skgroup@gmail.com', NULL, '$2y$10$o.55w0i12oOqRzvuJ/PZv.8ioInfp4b5LmqwFrglsMDAWmwBtl7iG', 'YwEkUw3QZI6scWBld8C7nRiNYfSV8ziKXj78C0EAlhnarfq8uqasHn8QbVyN', '2022-03-07 18:22:19', '2022-06-15 12:43:04', 'EMP-00004', '09751446090', '12/Thakata(N)180068', 'male', 'YGN', 6, NULL, NULL, 'public/passport/MPq9DwBPXDQmHdeiIJnjJ90P9x5PB8TLpNDhraIX.jpg', '2022-06-01 12:00 AM', 0, '2022-06-15 19:43:04', '45.125.4.155', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', 'public/photo/OVHb7FxrbthLoYex1a5BdVM28pfbvKdZS9LMF1KF.jpg', 'public/photo/1BvWI4vfsZA2MaPvZxHiDUQgp84y0e3Ooep3DJ6B.jpg', '', NULL),
(5, 'Ma Hpoo Ngone Kyaw', 'hpoongone.skgroup@gmail.com', NULL, '$2y$10$wbCsGmqe7rSeDa.GmCsYQeqgknZdelTsPQIQ/ytaKbBgV8tD5baEO', 'JPqxF8s1SwYOSgYy0a6ThzHgQQrWjHSlcA0YkI5qFLM6PhcZf21WEoDFPJG7', '2022-03-11 09:14:52', '2022-06-07 07:34:54', 'EMP - 00005', '09751446006', '12/TaMaNa(N)119539', 'female', 'No 127/5, PaDaMyar Street, Thinkangyun Tsp.', 4, NULL, NULL, 'public/passport/qxi2Imx0vbnnT3u8AkcZZOnIS9hP2LfXNbukyDUn.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL, 'public/photo/oW8ABZD4n4NuirdWQ7Oh7cDUMtuUQgv24jL9dFXL.jpg', 'public/photo/XYSDDDuoIvL6QSBapF8cEr8V7LpNKKXqWw9bJM2X.jpg', '', NULL),
(6, 'Ma Nandar Hlaing', 'nandar.skgroup@gmail.com', NULL, '$2y$10$3fyamQpVSU/glzf9si7DJuZwHP4Ii7lVyRBRrqykV2TLwho1HxRLC', 'p0tUdZfhtyuiclgbYWwAsRrWiFDvlcbXMLmA5dcJj0d8rukE0KoYLvOZvBgB', '2022-03-15 09:03:34', '2022-06-21 02:13:02', 'EMP - 00006', '09751445235', '12/Thagaka(N)179672', 'female', 'No. 74, Min Nanda Road, Dawpone', 7, NULL, NULL, 'public/passport/0Cqn6y195bWSFRYjZAU2G7JaE1SNq5waAT0gRvj4.jpg', '2022-06-06 12:00 AM', 0, '2022-06-21 09:13:02', '103.217.156.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'public/photo/X8lyowgxFKONykTWPaVFVG1TGpjNiObghpb1KmIU.jpg', 'public/photo/AkoyPOeq1nSIKb9WfNLFMVMjal12vjfjX6Ow0byv.jpg', '', NULL),
(7, 'Ko Nyan Lin Htet', 'nyanlinnhtet.skgroup@gmail.com', NULL, '$2y$10$JogAQY0yFfB3XA.5xUkhHOdzgjhIkvpCcgnjbRnOGR33vwCrArCUq', '9u3HiDMdMrjAPeNqg4vkDOFBt9kyQ7SFi7UTypIZMsbTmD4HcvaDRw9kBN8g', '2022-03-15 09:05:41', '2022-06-16 03:01:11', 'EMP - 00007', '09795154291', '12/ThaKaTa(N)162871', 'male', 'YGN', 8, NULL, NULL, 'public/passport/xmeWM9vKoLl8F3AZsYF9itmvjeruAdovbGk8gesg.jpg', '2022-06-16 10:00 AM', 0, '2022-06-01 13:31:58', '103.217.156.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36', 'public/photo/ygxZTM2QesuVjSryQlck8CMHFqP0u7p1ix06a9eQ.jpg', 'public/photo/QCMUgILO9eSrqHm9XCc9TAGeuKp6t9MPMmrLrFLb.jpg', '', NULL),
(8, 'marketing', 'marketing@gmail.com', NULL, '$2y$10$oCUHBB./6fbUQkiAoKkJ6OPq0yW9sYBFEsoNYXjrdyrFVq/Q1LqmO', NULL, '2022-03-15 09:06:40', '2022-03-15 09:06:40', 'EMP - 00008', '09123123123', '5/abc(n)009998', 'male', 'YGN', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Ma Ei Chan Myae Khin', 'eichan.skgroup@gmail.com', NULL, '$2y$10$XMR2/iEH8DGCHdGujGCesOnDP8QcHQeOEhUOmD0sDdFm2BFKh3JdW', 'dQXdPonjqVTGVXfFqlNFDJ31ETGZdvMQUpZi5ARWexJVLZKFeQrgY20hY8tN', '2022-03-15 09:07:37', '2022-06-07 07:37:55', 'EMP - 00009', '09977820259', '12/KaTaTa(N)032894', 'female', 'YGN', 4, 'Daw Kay Ti Hlaing', '09795355150', 'public/passport/yqS4btzuzTPYZEMFAbCYBzRqn680VhCXsuhFuKd5.jpg', '2022-01-17 12:00 AM', 0, '2022-06-06 17:37:54', '103.217.156.212', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.1 Mobile/15E148 Safari/604.1', 'public/photo/5QWU34RyACFyY3LhWZBhZFcotSoRKyq5ulUfrXHr.jpg', 'public/photo/VTvhPTfyeurzWQ91LeHKvoknlq4jVjNWh6jrFcWA.jpg', '', NULL),
(10, 'Ma Moh Moh', 'mohmoh.skgroup@gmail.com', NULL, '$2y$10$BtSiWTSfsBAGtFZxj3qUd.oJc.3E0VMEF/aOfJk45/7wwZANHlCJS', 'yqsMQ92HwGrstjsadiNB9r2hrGnNELicrcg4FlGKtCaI9Vd4U1hIr8dmCuq3', '2022-03-15 09:14:23', '2022-06-07 07:41:15', 'EMP - 00010', '09798868709', '14/PaThaNa(N)201615', 'female', 'No.21/33, Zaw Gyi Street, 9 Quarter, Lanmadaw Tsp, Yangon', 8, NULL, NULL, 'public/passport/B5Al8mv3UylVZy93AygKarLQJBIEMRCjCHw53hOk.jpg', '2022-06-01 12:00 AM', 0, '2022-06-01 10:05:00', '103.217.156.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36', 'public/photo/HOwZewdwB3jnFswJgBxgAx82rbyCnb8RxGygajZ8.jpg', 'public/photo/cVexxEGQFYugw7OtjNQ0EoBQzr2uvpFaq3cmAx2y.jpg', '', NULL),
(11, 'Ma Pan Chue Chue', 'chuechue.skgroup@gmail.com', NULL, '$2y$10$BRJIsHrGNeKVTLYWskXzneNivP2Yx2g0V.fWhkmPSE3e4FE2pW/JC', NULL, '2022-03-15 10:38:45', '2022-06-24 07:14:49', 'EMP - 00011', '09751445863', '9/TaTHaNa(N)156794', 'female', 'No.345, Kantaw Street, Thingangyun Township', 8, NULL, NULL, 'public/passport/JQURAODA5V8AisNXQT8XtO4UPGAAkvSoftBsJYgM.jpg', '2022-06-01 12:00 AM', 0, '2022-06-24 14:14:49', '103.217.156.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/xooXkv0fSm0pOqbAFQTnVzOkRmHhxBzmquj7A56f.jpg', 'public/photo/JPL62o07VjB3ep9tZFsMV4n0Q20ycB4vJMfsmMd2.jpg', '', NULL),
(12, 'Ma Zar Kyi Moe Naing', 'zarkyi.skgroup@gmail.com', NULL, '$2y$10$laYvqCLwBhR/XUiAFE0jaeqVUlWtvQUf50ezWA4KzYaCfEjMiAe82', 'tgB42N4dkpgdnSjgEMzYOYPM3E5EHdMAT9xXkRdCAch5rdF4aoMwWuOhwXTw', '2022-03-17 04:03:41', '2022-06-07 07:44:30', 'EMP - 00012', '09772177564', '12/DaGaMa(N)035420', 'female', 'No.(331), Bayintnaung Rd, 31 Quarter, North Dagon Tsp', 6, NULL, NULL, 'public/passport/UEBc42PwAkcwFcwK3X8AeJm2lJDdPWrecVDUWGbU.jpg', '2022-06-01 12:00 AM', 0, '2022-06-01 16:53:49', '103.135.217.172', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'public/photo/3Xez3oB4R5FskwptdXOgiCOrNipa56Qfn1qzeCYI.jpg', 'public/photo/sEgMAgtn6B9XKQRst79xxWUgMvzfmHDUmei3kzAn.jpg', '', NULL),
(13, 'Ko Ye Htet Min', 'yehtetmin.skgroup@gmail.com', NULL, '$2y$10$PcOWn8fvMti0qkiOp/BET.jalwumj4WEfuvigo1bn0w9W4iZTHR4u', 'vzds3wCIdaUHoK1AWU3wHvp88nurYIzzjrdoLQajciDCFqCU2ksBs7TYni6I', '2022-03-17 04:05:16', '2022-06-20 13:04:38', 'EMP - 00013', '0943096345', '12/BaThaHta(N)040271', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 6, NULL, NULL, 'public/passport/7VpIWVmnet7AMnJvkYx0Tvq9mNPGtHEOuSFd8LE5.jpg', '2022-06-07 12:00 AM', 0, '2022-06-20 20:04:38', '8.30.234.98', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', NULL, NULL, '', NULL),
(14, 'Ko Chan Myae Zaw', 'chanmyae.skgroup@gmail.com', NULL, '$2y$10$8AyZUb63vY5l4KAS90aOJ.vyLjxJeDFK5IB2.PCZy60AAXgpxh5xK', 'MJmtK1OCtYJAOaBkXoax3ZnZmPpwDX9tu24r94uIBpL2Nuv0Ux5wPPnrY8mL', '2022-03-17 04:08:50', '2022-06-21 08:18:38', 'EMP - 00014', '09751445993', '7/WaMaNa(N)171834', 'male', 'No.(10), Alone Street, Alone Township, Yangon', 2, NULL, NULL, 'public/passport/6Albzb2z3Mj5HLvwcJTwTPyl8YJuBg6RJkhTeFWw.png', '2022-05-29 12:00 AM', 0, '2022-06-21 15:18:38', '103.217.156.147', 'Mozilla/5.0 (Linux; Android 10; MI 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.125 Mobile Safari/537.36', 'public/photo/BmnMmBXmvbOYeNCJFZ0LREM16aJi4J09onlpMdCb.jpg', 'public/photo/X5SlzDwDjqHLQ9jSr6jJOexXor9COAQX8ko8cKe2.jpg', '', NULL),
(15, 'Ko Thein Zaw Win', 'theinzawwin.skgroup@gmail.com', NULL, '$2y$10$NphAKBtZGN/HH4ziQ2XTL.IXXYm09TRcZYhYhFCKcpLycBTfJfDge', 'o7Tl7cqDYOyv1kOoRKsDDkQcNNNg8gdzfF8357fQJMPDVcv6tj4ZSzmc2Zip', '2022-03-17 04:11:30', '2022-06-07 07:56:25', 'EMP - 00015', '09964105346', '12/PaBaTa(N)034640', 'male', 'No. (9), 6B, 166 Street, Tamwe Township.', 2, NULL, NULL, 'public/passport/vtRypvpjdgUAnqINHx9t5GeUbqPQlzuLr3TQwpqH.jpg', '2022-05-30 12:00 AM', 0, '2022-05-30 12:05:24', '103.217.156.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/KLflV8IiDXnIIPqL1DniJV60GYUcB5axjJn1jeDQ.jpg', 'public/photo/af79Qagb9SYDxOX3c674OVtr8XpaEQVnHiG4NoEH.jpg', '', NULL),
(16, 'Ma Thu Zar Hein', 'mazar.skgroup@gmail.com', NULL, '$2y$10$5JYQb99Md7um36xVCIERlesJtXCp.aZBoI9sc7yf8cCuOcmL7vqoG', 'chSYWWhI2nnmWBQtJBKDa1WGyrYCvdZBhFw2u7dpJ8xKLD7EmIGyx5o9BL02', '2022-03-17 04:24:34', '2022-06-24 06:12:48', 'EMP - 00016', '09740875438', '9/KaPaTa(N)195155', 'female', 'No(205(3B),Aung Thiri street, Myot Thit Quarter, Dawbon Tsp', 8, NULL, NULL, 'public/passport/UYfEMZsWwsJbbqKyUdCmEYyvnwAK254Le6fbJk3c.jpg', '2022-05-31 12:00 AM', 0, '2022-06-24 13:12:48', '103.217.156.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.124 Safari/537.36 Edg/102.0.1245.44', 'public/photo/5jqIgcnGgXDBiQDYSg4VgfcR5YVMSutj6OUlzrH0.jpg', 'public/photo/ymNIsoZEuBltkIlSsmxuXZ5fQJ1ydIUfTAjtdOYr.jpg', '', NULL),
(17, 'Ma Kay Thi Hlaing', 'kaymama.skgroup@gmail.com', NULL, '$2y$10$sVW1LsxB7Ck6NIoQUVtUyeMcJzA9HRY37PplCw6f8t/IMWUs9U7Fa', NULL, '2022-03-17 04:26:53', '2022-06-24 09:46:49', 'EMP - 00017', '09751446027', '12/LaMaTa(N)000705', 'female', 'No.52, 89 street, Mingalar Taung Nyut Tsp', 8, NULL, NULL, 'public/passport/eRmSUiqeZ7Ofgc7g1mU6NVTt9idebwGXq3NWqaos.jpg', '2022-05-30 12:00 AM', 0, '2022-06-24 16:46:49', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/kh9JNzFquyD36Es8M22NnvZQv0iSbmyAV5wuqyVd.jpg', 'public/photo/7ebTDB58vyYpzupqlt1MPx7p9iwfclAxBG8freoJ.jpg', '', NULL),
(18, 'Ma Hsu Myat Win', 'hsumyat.skgroup@gmail.com', NULL, '$2y$10$oPB3qKCyQnzBIerf/mBBRuP3z81CGXDY4nIE1pQ.gpNyctD3nx4Yy', 'KgwD6F5RyDI2BhyO9Ae0KwmfYgvPkzU3ylwN337aLmvPszkbh1RoJU0SazqE', '2022-03-17 04:28:05', '2022-06-23 02:28:48', 'EMP - 00018', '09751445220', '7/PhaMaNa (N)220433', 'female', 'No.(205/3B), Aung Thiri Street, Myo Thit Quarter, Dawpon Tsp', 8, NULL, NULL, 'public/passport/7mDwD39Ap1NEYolaTulpNpjRQ8Q4IeEA7TIwVSi4.jpg', '2022-06-01 12:00 AM', 0, '2022-06-23 09:28:48', '103.217.156.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.124 Safari/537.36 Edg/102.0.1245.44', 'public/photo/T4lEKST4PWxeIvarILzbSr9cv2TvcxJ95ujsIWyq.jpg', 'public/photo/StgM3Rpzsi1vB5zOwmeAnzJjHnzyN0FmrgVjSN8x.jpg', '', NULL),
(19, 'AUNG HTET PAING', 'aunghtetpaing.skgroup@gmail.com', NULL, '$2y$10$gQfTPFveu0nOs7Wob8Hb3.UYTTpz3o3gJnEQlt7sAZVCYjOb6MC9S', NULL, '2022-03-17 04:38:03', '2022-06-24 10:07:50', 'EMP - 00019', '09755155166', '12/Lathana(N)021656', 'male', 'No. 74, Min Nanda Road, Dawpone Tsp, Yangon', 1, NULL, NULL, NULL, '2022-06-07 12:00 AM', 0, '2022-06-24 17:07:50', '89.187.162.104', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.124 Safari/537.36 Edg/102.0.1245.44', NULL, NULL, '', NULL),
(20, 'Ko Moe Thae Aung', 'moethae.skgroup@gmail.com', NULL, '$2y$10$nk.ypUUuIAQy.j29wC6ciuEHR0R6Rjs40IjF93I3TdTagunEBOFf2', 'fOJxSNj2Vmct2w8T97D4H1O9x0Kx2JTfBhdfI6jm16MG5RpoM1CS9eWZhvD8', '2022-03-28 05:09:58', '2022-06-24 05:02:12', 'EMP - 00020', '09752800400', '9/AhMaZa(N)016643', 'male', 'No.(5), Bo Sone Pat St, Bo Tun Zan Qt, Daw Pon TS', 3, NULL, NULL, 'public/passport/CPtZMVurA2zIPDKKr842JFrVPUlKg7SUhe4R6c4Q.jpg', '2022-03-28 12:00 AM', 0, '2022-06-24 12:02:12', '8.29.105.136', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'public/photo/hQ0CWPLnnHoFNBYS5RThqweNXKtM4OkgbVUl5SWE.jpg', 'public/photo/zG4yzkmft9Yd0lwFT80FT1wDv5Qq0RbfvNttV5Gz.jpg', '', NULL),
(21, 'Ko Soe Moe Aung', 'soemoe.skgroup@gmail.com', NULL, '$2y$10$FyWc2Xn8FzmUr9eROnqyqe9N.3eDX78agOHkk6wIgjwfImKoT01aS', 'gA3MXmbXUkiD7WjqZeoLkGj5nrhFvN91U9Vu8SUWq2Numw7yWIw56bW23oFa', '2022-04-19 07:44:07', '2022-06-24 09:10:21', 'EMP - 00021', '09765417569', '12/', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 8, NULL, NULL, 'public/passport/8SXLPGuwlcWOGMW2ldebA9AvWimUxfMf479B3dHK.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 16:10:21', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/4gQlBwQ34Gi5fzIiQzoQm9Yhh6UlL21O2p5Owhn7.jpg', 'public/photo/71lV13sVhPTNWTLlbbqd6EXhdzWd2BVjr4OxaW6b.jpg', '', NULL),
(22, 'Daw Khin Zarni', 'khinzarni.skgroup@gmail.com', NULL, '$2y$10$2ra6OqKvEKq4rB3/eTiDouAk1eeo8YenKYAGDB35JhYlsSzkRTOLe', 'JDY5BwxTfnfbqo00TtJHPE7Kue0PwfBtCtlhb4HsxIfzG1SuHDmr1hRsLr52', '2022-04-29 09:39:44', '2022-06-24 11:42:39', 'EMP - 00022', '09740875439', '14/HATHATA(N)021656', 'female', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 9, NULL, NULL, 'public/passport/KsxCkoQ7IsohA6mX3eKWlnr8HHEX2MArcaOCaHYF.jpg', '2022-06-07 12:00 PM', 0, '2022-06-24 18:42:39', '8.34.202.34', 'Mozilla/5.0 (Linux; U; Android 9; en-us; Redmi Note 5 Build/PKQ1.180904.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/89.0.4389.116 Mobile Safari/537.36 XiaoMi/MiuiBrowser/13.6.0-gn', 'public/photo/PnZ9dvQBaq7SuoRnVJAnAfim5RPj1CXnFDZvagSH.pdf', 'public/photo/CN9TAXEP1yCgCwK9DdHEikrbF0hR4bn74iIR6upt.pdf', '', NULL),
(23, 'U Zin Wai Aung', 'zinwaiaung.skgroup@gmail.com', NULL, '$2y$10$lIRAeX5wlbVuT.V3vgtIb.baaZJMdQ00Yu.VDmDb/dwJ0L/Ais98e', NULL, '2022-04-29 12:27:33', '2022-06-16 03:31:08', 'EMP-00023', '09799404246', '12/KAKHAKA(N)090911', 'male', 'Thingyangun', 9, NULL, NULL, NULL, '2022-06-16 10:00 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL),
(24, 'Daw Htet Htet Zaw', 'htethtetzaw.skgroup@gmail.com', NULL, '$2y$10$uvo3UT1Uf1JA8SgHlt0iDOs8DAtRKwPckRhU/.pOiaS1n8ZhiWvwm', 'l7ew8k6pFYVIn45TXROxQFOxGdVT4t8yNKnoA9CStNLcg4808iUEBMxC1Uvz', '2022-04-29 12:37:19', '2022-06-22 04:47:06', 'EMP-00024', '09795345577', '12/BATAHTA(N)044264', 'male', 'No.262,Merchant Road, East Yangon General Hospital, Botahtaung Tsp', 4, NULL, NULL, 'public/passport/uq0PyzmVggoYIA660a9iIK1yxospt6pzfAGfD4jj.jpg', '2022-05-31 12:00 AM', 0, '2022-06-22 11:47:06', '103.217.156.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.124 Safari/537.36 Edg/102.0.1245.44', 'public/photo/aDJvkSqgAXFtjbpMZY5CjzthX72XGgco0esm3RtG.jpg', 'public/photo/4Rw37rhWOXTD53oczdaTn3BOxkJybbCol65Ja4OP.jpg', '', NULL),
(25, 'Daw Zar Zar Khine', 'zarzarkhine.skgroup@gmail.com', NULL, '$2y$10$HfdR7fopHjyS2b5yn1gt6uk7TlVqjrsh1VEpZbEouJq7FXW3nx41G', NULL, '2022-04-29 12:42:04', '2022-06-24 08:52:05', 'EMP-00025', '09799048521', '5/KATHANA(N)122900', 'female', 'Shwe Ta Sote Stree, Thamine, MaYanGone Tsp', 9, NULL, NULL, 'public/passport/ucJI1yfCwS6fdEwKbiIfRBTWexzbU0rVSjNFGZce.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 15:52:05', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/SZaB1xgXmwmIU6HzobbCTTgVfo1DZxvY8aSzRboG.jpg', 'public/photo/1XxFD6UTvPYerfQbx8CpuVN3t5HvW5Aqjr4sBNLk.jpg', '', NULL),
(26, 'U Zwe Ko Ko Soe', 'zwekokosoe.skgroup@gmail.com', NULL, '$2y$10$9o9PavkTyhciVIvl81C2lOK/0ko68Vxk5eUjdce.IP5/fwCpEdffi', 'GppY3ec9qBVYFK8Bdrm0VAGcy9mdmJZsqDhs5H9vp6Px2TPx979C6sSpwoFH', '2022-04-29 12:45:58', '2022-06-24 08:52:32', 'EMP-00026', '09763178824', '12/THAGAKA(N)182803', 'male', 'No.19/2,Khayaymyaing Street,Thuwunna(23) Quarter,Thingangyun township,Yangon', 9, NULL, NULL, 'public/passport/tVvqZoWWicYsQvwTvrcwYIk02fsmMamWUEnJxo8O.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 15:52:32', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/Hf3HAGNUxaIiAKO0NufnjX0wj3EnjUv0caYRwzav.jpg', 'public/photo/fm44nJgnknueXXR7EAcW0nQieq27hxSelFFyQtc8.jpg', '', NULL),
(27, 'U Phyo Kyaw', 'phyokyaw.skgroup@gmail.com', NULL, '$2y$10$eTYZZQ1F.RuoUnn49HVP4uSSBNfTTAMsTZZk64JIMOSAfB78cWcwG', 'Fa4KK3DcxqFmjDecl5dOLSVXzkjv9g0at8sUUX4fGzORHVXUkE7tnVDkUABa', '2022-04-29 12:48:07', '2022-06-16 03:02:42', 'EMP-00027', '095045907', '12/DAGANA(N)032751', 'male', 'အမှတ် (၁၀၃၁) ၊ ညောင်ရမ်းလမ်း ၊ (၁၆)ရပ်ကွက်၊ ရွှေပေါက္ကံမြို့သစ်၊ မြောက်ဥက္ကလာပမြို့နယ်', 9, NULL, NULL, NULL, '2022-06-16 10:00 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL),
(28, 'U Aung Pyae Phyo', 'aungpyaephyo.skgroup@gmail.com', NULL, '$2y$10$J1sWFBLv/hIzptC77GK76Oa6xkpJlXT3ccwSJlMz4Mw5bB0D03hne', 'ahWTXxVxdOXFlolWNWqrKd0bv5vojJcNzxAHatCLQVbP5ogldhqGbew5GYmI', '2022-04-29 12:50:06', '2022-06-24 16:26:48', 'EMP-00028', '09799525101', '12/THAKANA(N)156039', 'male', 'အမှတ် ၉၂၁/က၊ မာန်ပြေ ၃လမ်း အရှေ့၊ ၂တောင်ရပ်ကွက်၊ သာကေတ။', 9, NULL, NULL, NULL, '2022-06-07 01:00 PM', 0, '2022-06-24 23:26:48', '103.61.10.19', 'Mozilla/5.0 (Linux; Android 11; Redmi K30 5G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', NULL, NULL, '', NULL),
(29, 'U Aung Khant Kyaw', 'aungkhantkyaw.skgroup@gmail.com', NULL, '$2y$10$KaBO4rpnb9l4DMEHIiSueeBT1Lr6eo6tyIRYCVTsXfKw696BEMyAS', NULL, '2022-04-29 12:54:48', '2022-06-07 06:02:33', 'EMP-00029', '092305456', '8/KHAMANA(N)162646', 'male', 'No.11,(4A),Satetathukha st,Sanchaung Tsp', 9, NULL, NULL, NULL, '2022-06-07 01:00 PM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL),
(30, 'U Aung Myat Thu', 'aungmyatthu.skgroup@gmail.com', NULL, '$2y$10$1Of462XGT1M55w7p2dwtReZcEvM25yxcPoESBDhGf8IWwex2caSpG', NULL, '2022-04-29 13:02:10', '2022-06-16 03:26:48', 'EMP-00030', '09787206401', '3/BAAHNA(N)273327', 'male', 'B/Sa Yone Wine, Sharkargroup Hp-An', 9, NULL, NULL, NULL, '2022-06-16 10:00 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL),
(31, 'U Aung Ye Kyaw', 'aunyekyaw.skgroup@gmail.com', NULL, '$2y$10$4cnZHddVb0E2c/NP6XJae.hlEY974xK3fHIdRh5L8ZRwahwtiK2wW', 'EZZ5vP2LbMl4Jixuoc7F2g31TX3KCMW66mhu2JaPRr7mCiZ0DiwA94jBfQkO', '2022-04-29 13:06:13', '2022-06-24 08:55:28', 'EMP- 00031', '09788784596', '12/MAGATA(N)102683', 'male', 'Line-101,Room-2,Ma Hlwa Gone Train Compound, Mingalar Taung Nyunt Tsp', 9, NULL, NULL, NULL, '2022-06-07 01:00 PM', 0, '2022-06-24 15:55:28', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, '', NULL),
(32, 'U Myo Win Aung', 'myowinaung.skgroup@gmail.com', NULL, '$2y$10$Uh176vaFV49f9Fz71sGCwOmxEQNfFrp5RgR8LW4T0GrYa7TDqqPra', NULL, '2022-04-29 13:08:54', '2022-06-24 08:58:31', 'EMP-00032', '09764364304', '1/ MAKANA (N) 172114', 'male', 'Yangon Street, (21) Quarter, Shwe Paut Kan, Yangon.', 9, NULL, NULL, 'public/passport/gxLaVurwQ7PipbpwgBBZMj213WtLQ3On0GLuaVlZ.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 15:58:31', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/euTosdeFeZQkhyHgjMReygswjUMSyBDswPBYp7EJ.jpg', 'public/photo/GGXuRtPN95beAsyrizQLSuPhAv1oeT9ZvWwesmQc.jpg', '', NULL),
(34, 'U Min Ko Ko', 'minkoko.skgroup@gmail.com', NULL, '$2y$10$WzoRzVfDgUtCYiEqmOU0mOEzdXw8pT3k2UoC.a9kTy2zfZijjiZiq', NULL, '2022-04-29 13:19:48', '2022-06-03 02:30:05', 'EMP-00034', '09428024529', '7/PAMANA(N)152627', 'male', 'No.6,Raod,Kwm Yar Sine Nea Bus Stop Tarwa, East Yangon University, Thanlyin', 7, NULL, NULL, 'public/passport/3agYEHKb8f2csUv7piWh1zQAF6c8BKbprKgKkQWS.jpg', '2022-06-03 12:00 AM', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'U Mi Kee', 'mikee.skgroup@gmail.com', NULL, '$2y$10$ZC0cIqbqD4Glz0lfa0phHugAC/wkIWDoKOk9kxhVdAywBeY3adIy6', 'eVNwUuoumcS8PRmH52YTXhK9VKQsGbJyrc5lUn7RZgsaqHOptLI2nljPbpUn', '2022-04-29 13:21:18', '2022-06-24 06:19:24', 'EMP-00035', '09401564992', '8/KHAMANA(P)000083', 'male', 'No(50)A, 5th floor, Zay Street Myaenigone, Yangon, Myanmar', 9, NULL, NULL, 'public/passport/06JZq2jTQbL1MVwetehtvnH0zNVszrCMYpT1o0Ne.jpg', '2022-06-24 01:00 PM', 0, '2022-06-24 13:12:40', '103.217.156.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/NwP6TpDRqZ0IPdtmDL9q3BinAjp8DYAfOvVo2V2b.jpg', 'public/photo/Qt1tTFgpO7pgivnnWA2FyTViVmIvKhggYjIPMQSG.jpg', '', NULL),
(36, 'U Myo Nyunt', 'myonyunt.skgroup@gmail.com', NULL, '$2y$10$97W5ILXOF7ZoRSv1u1giZudo1xWztNrXC4ZYV2NKavWqut/cX28UC', NULL, '2022-04-30 04:28:03', '2022-06-24 08:57:28', 'EMP-00036', '09776549304', '12/TAMANA(N)125742', 'male', 'No.245(B),5/4 Quater, Shwepyithar Township, Yangon', 9, NULL, NULL, 'public/passport/Y0LX6Vz0XOfXJhnsQTxxQhzKz790yyaxYtMWfZ2J.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 15:57:28', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, '', NULL),
(37, 'U Paing Thu Hein', 'paingthuhein.skgroup@gmail.com', NULL, '$2y$10$H3ieEgYUgj7dvhS2NTjwgOXVJIBprzggnGRuI3h/Vm5YD6FScfeyW', '577kqL3CkGw0GoNRgeaDpvmyj9LRJzpHf78b2Pbsf9pMdKJBce4H8Hxncj4Y', '2022-04-30 04:40:21', '2022-06-24 09:09:39', 'EMP-00037', '09780626353', '14/WAKAMA(N)220972', 'male', 'TA YOKE TAN QUARTER,WAKEMA TOWNSHIP', 9, NULL, NULL, 'public/passport/CXp8V6ctnWVPj72KtJjJxYlrrrsu7H929fE2N51K.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 16:09:39', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/iBrtEsXv02cQ6u1WpGOihzRfJqEuz0fG8UDlp6ay.jpg', 'public/photo/91h01Eo7cBQjuRR8wdCRAD3QK3Ct00OajxtlatRL.jpg', '', NULL),
(38, 'Daw San San Aye', 'sansan.skgroup@gmail.com', NULL, '$2y$10$jcefKnhA5PoC8P6rbUMJ.u0hz5GhvHZVDso.IpbagWj8PFhVxgFku', 'iCKvzk3JnBHVn33Kdf4OXeoNTT3IHSLcnyDrWmioTElwt3KwwkVYAJeL9vZS', '2022-05-05 02:29:34', '2022-06-07 09:24:32', 'EMP-00038', '09751446019', '12/THAKANA(N)179134', 'female', 'No.8, Room(205), Shu Khin Thar Housing, Tharkeyta Tsp', 5, NULL, NULL, 'public/passport/1ho6jZe3nY9f8kaIOb1twbgTxQ2yrNlmpbFCp49D.jpg', '2022-06-01 12:00 AM', 0, '2022-06-07 16:24:32', '103.135.217.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, '', NULL),
(39, 'U Hein Min Latt', 'heinminlatt.skgroup@gmail.com', NULL, '$2y$10$HGViWsfCfqdbxgx9fNxJYunmFfxpDtCfbKJLPl8ZAxrnzTQFzChYa', 'HqeWypaCbzhaZfnawcri1FMLYai18bkEU5Q5Ooq8ViyBW4lgu7C0kIemTthX', '2022-05-05 02:46:55', '2022-06-07 06:09:56', 'EMP-00039', '09740875433', '12/LATANA(N)019729', 'male', 'No.22, 132 Street, Mingalar Nyut Tsp.', 8, NULL, NULL, 'public/passport/DefunbmTHLlrEZGO8SGoV9J7SCjMZDGbs3pWGNBa.jpg', '2022-06-06 12:00 AM', 0, '2022-06-07 13:09:56', '159.223.163.99', 'Mozilla/5.0 (Linux; Android 10; VOG-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Mobile Safari/537.36', NULL, NULL, NULL, NULL),
(40, 'U Aung Kyaw Htet', 'aungkyawhtet.skgroup@gmail.com', NULL, '$2y$10$ZhLXRbsJqbu45Vf6U5Bw9e8ZYjLoeJgqF0IStyod3r0Pf7cKFfzJ6', 'Ey8oBOmczTaDnNi6ihSqUAthQeA4OxlAA2jpGM1xgSbQ50kPjmah7Jsq2Zvj', '2022-05-05 03:10:32', '2022-05-31 09:33:58', 'EMP-00040', '09740875436', '12/OUKaTA(N)172749', 'male', 'အမှတ် ၅၆၂ ၊၄ လွှာ ၊အောင်စက်ြာလမ်း ကြီးပွားရေးရပ်ကွက် ကြီးပွားရေး အိမ်ရာရှေ့ သင်္ဃန်းကျွန်းမြို့နယ်', 8, NULL, NULL, 'public/passport/KetPk7FMDtZMAk7lxD0s0C1NgycugUYt7I9sK5zb.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'U Kyaw Ko Ko Zaw', 'kyawkoko.skgroup@gmail.com', NULL, '$2y$10$a9CTIJQpaC8mJ/fDAU/V0eRELWCDjnyV9h.6JuT2S26e7WAUlgIs.', 'bylXWtzxiCm7AmCTmMRsP0ioiXreStidymjU6nsw5ZowQnetIRtOEAdNRl56', '2022-05-05 03:31:11', '2022-06-21 13:58:34', 'EMP-00041', '09952613203', '12/OUKATA(N)201677', 'male', 'No.649,Waruna Street,13 Ward,South Okkalapa TownShip', 1, 'Daw Hnin Mhone Than', '09420205133', 'public/passport/0N5IkdMTtemZuRhgoOkwAZMJpZBOPPvy61JDrhSf.jpg', '2022-05-03 12:00 AM', 0, '2022-06-21 20:58:34', '51.79.165.76', 'Mozilla/5.0 (Linux; Android 9; SM-A205F Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/102.0.5005.125 Mobile Safari/537.36', NULL, NULL, NULL, NULL),
(42, 'Daw Aung San suu Kyaw', 'suukyaw.skgroup@gmail.com', NULL, '$2y$10$8NmMUS.7C08wkfyBlV3Exe0M9Mk5i0J2Tutru694LiQZ.Pmcqi32C', NULL, '2022-05-05 06:06:53', '2022-06-24 16:25:18', 'EMP-00042', '09785421470', '12/THAKATA(N)200674', 'female', 'No.(634), 4 Floor, Shwe Pyi Thar Street/ 6 Quarter, Thaketa Tsp.', 8, NULL, NULL, 'public/passport/FRRzMhHoXvAurEAgZHdG8WNpz12E6lQNmlJ5pfPs.jpg', '2022-06-01 12:00 AM', 0, '2022-06-24 23:25:18', '180.235.117.36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', NULL, NULL, NULL, NULL),
(43, 'U Wai Yan Lynn', 'waiyanlynn.skgroup@gmail.com', NULL, '$2y$10$Qo2ZqMt0TcUX6eLcQ.fnguvxmN6MyMAdGP8sUf26ZAHL/fR.yP3s6', 'scT6JldCw3Z7jn45pTlaLz2bHIphxnESDvVttcIUfhs1QWJIaq0REbqXa8vX', '2022-05-07 07:13:59', '2022-06-22 03:21:28', 'EMP-00043', '09970047351', '12/DAKASA(N)023993', 'male', 'No.1003/A3,6 Htu Par Yon Stree, Thaketa', 4, NULL, NULL, 'public/passport/5LXfwPIqf6wMkPEzaq8os66y6QE58kV1IUSmxSGY.jpg', '2022-06-01 12:00 AM', 0, '2022-06-22 10:21:28', '103.217.156.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, NULL, NULL),
(44, 'U Htet Aung', 'htetaung.skgroup@gmail.com', NULL, '$2y$10$RMw4v4PG05XgnN.jyss/xOeWOuybCMN3icMDR8TJw3TG2z5XDn4eW', 'uXrDnigNRTcxjAet9ti3SwQubqy3AOLRuv0S9OdaONxlprRU4m2hI4sFMfdH', '2022-05-12 10:22:08', '2022-06-24 09:08:31', 'EMP-00044', '09951204013', '12/SAKHANA(N)076156', 'male', 'No. 34.(4\" Floor), Sanchaung Stree, Sanchaung, Yangon,Myanmar', 9, NULL, NULL, 'public/passport/QFpRfJ7hKiKdhsq4NjcpGb8IphOP6ltvgJqQyIRR.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 16:08:31', '103.217.156.129', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, '', NULL),
(45, 'Daw Htet Wai Oo', 'htetwaioo.skgroup@gmail.com', NULL, '$2y$10$x2ME8NPzRxTO0ZcTFgLrTeXUY8mUm9z/MmxHVO7hEyU8QGfV694pW', NULL, '2022-05-13 04:24:07', '2022-06-01 07:31:55', 'EMP-00045', '09755713424', '13/NAKHATA(N)082880', 'female', 'တိုက် 256, ဇေယျာသိရီ ၁၃လမ်း, သင်္ဘောကျင်း, ဒေါပုံမြို့နယ်', 7, NULL, NULL, 'public/passport/YGwpQcOnK7LF3hnAvex9m4FQF1TilpQWAEDSmcC5.jpg', '2022-06-01 12:00 AM', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'U Aung Min Oo', 'aungminoo.skgroup@gmail.com', NULL, '$2y$10$QH/uoohRSJUcAXWDZwDCS.mNRdV/slwTK2ccHciEQq7izkP4i/xN.', NULL, '2022-05-30 07:59:51', '2022-06-24 16:10:52', 'EMP-00046', '09799629597', '7/pakana(n)059612', 'male', 'No.78(b),Anawyahtar Road,Kyeepwaryay(N),Quarter,Tingangyun', 9, NULL, NULL, 'public/passport/NkBkqGYRYQay7tPverVWmR0UIcAnsz7n1hGCkKRK.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 23:10:52', '210.14.107.117', 'Mozilla/5.0 (Linux; Android 11; Mi 9 Lite Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/102.0.5005.125 Mobile Safari/537.36', 'public/photo/d5rWYRKBtkGXq9sB0fomBxOaQdYfajbxGH9V3wa7.jpg', 'public/photo/XxAC0P9KKI92Pf31X3Qkeo53yuaK6NyjtAw14ar4.jpg', '', NULL),
(47, 'U Ye Lynn Htoon', 'yelynnhtoon.skgroup@gmail.com', NULL, '$2y$10$Z5wwXLm3rx/PbxFX9AY80uqn7oi8uel2SfKGm9iLeXNZvJi.nlEGK', 'SEo96zmL5sQ04iMrpAbY39nTOaZzYRSyJqZvpsFodkDUkfp2mHW1TXojyYF3', '2022-05-30 08:03:47', '2022-06-24 10:01:50', 'EMP-00047', '09968878999', '12/magata(n)092879', 'male', 'No(44),109 Stree, Mingalartaungnyunt', 9, NULL, NULL, 'public/passport/0Vf0HeAScgBv9PCVl70YptyuQcJuWYvqrGZfYtIT.jpg', '2022-06-07 01:00 PM', 0, '2022-06-24 17:01:50', '185.180.223.127', 'Mozilla/5.0 (Linux; Android 10; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', NULL, NULL, '', NULL),
(48, 'U Wai Lynn Tun', 'wailynntun.skgroup@gmail.com', NULL, '$2y$10$hT5FaxVzrqclKnNsX6f.U.0zLRQ0qie0o4uDcOcf19vpbkWJxLKxm', 'JMpucpLYCYcaeHasjePRurR9VPgUz4L8YFqdsMcAYlKaCgAAdzStn1ftyVIu', '2022-06-06 09:31:20', '2022-06-09 07:05:13', 'EMP-00048', '09663654307', '7/TANGHNA(N)206379', 'male', 'မင်းကြီးဆွေရပ်ကွက်၊ တောင်ငူမြို့', 4, NULL, NULL, 'public/passport/NaIFUCsjCMB26YM1jERrUuLCRgVUk7SzHD06FDrd.jpg', '2022-06-09 02:00 PM', 0, '2022-06-06 16:40:09', '103.217.156.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'public/photo/LBzw5eayap3Hc98m6SIa0kI1LrpKYCL8o9sALfDy.jpg', 'public/photo/MZ05hc95BaxXmEF2E8Gy1OyjgCLOkP6kc3h57wiL.jpg', '', NULL),
(49, 'U Chit Tun Aung', 'chittunaung.skgroup@gmail.com', NULL, '$2y$10$WoPIYd7Z9bcfISRP5BOeEex6q06Lk1BoCnxRjpSkdTIxelovS7LLC', NULL, '2022-06-07 02:16:33', '2022-06-07 06:39:11', 'EMP-00049', '09250081251', '12/MABANA(N)147926', 'male', 'အိမ်အမှတ် (၂၀၂)၊ မြနန္ဒာအိမ်ယာ၊ အုတ်ကျင်းဘူတာရုံလမ်း၊လှိုင်မြို့နယ်', 9, NULL, NULL, '', '2022-06-07 01:00 PM', 0, '2022-06-07 13:39:11', '103.217.156.142', 'Mozilla/5.0 (Linux; Android 10; TECNO LD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36', NULL, NULL, '', NULL),
(50, 'Daw Kyawt Khat Khat Wai', 'kyawtkhatkhatwai.skgroup@gmail.com', NULL, '$2y$10$OpA55E0GQvJ1W8MnOIAlM.5qllZ6OsTGm7JS2v.NLmShYPOixYyY.', 'twUlgD6M3Ebolbc4xTefOTIf548iFxJB0hLfnrV8jyWAQgSkMFNVLRf2Ii34', '2022-06-09 06:41:36', '2022-06-16 07:54:12', 'EMP-00050', '09740940648', '12/KAMATA(N)072177', 'female', '14/ဗိုလ်ဥတ္တမ၊ ဘောဂရပ်ကွက်၊ကြည်မြင်တိုင်', 6, NULL, NULL, 'public/passport/VcHTaekKMGzYuNthkhwNdWcZQ2Yr5q8WAbC0zN34.jpg', '2022-06-10 08:00 AM', 0, '2022-06-10 08:57:01', '103.217.156.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'public/photo/qDFmF2vCaHEKBUEzG8cCBi8o8qJzUF7geGUFLrM9.jpg', 'public/photo/pyp0F7gsMbGBP6Xstl0IDPVM8Jc7mzpFBhjYrud4.jpg', '', NULL),
(51, 'U Aung Khat Thu', 'aungkhantthu.skgroup@gmail.com', NULL, '$2y$10$sr4mZMWZC4inEki4QBezM.GvLaFwtOqoteJY1SK7rYtD14uKtqHty', NULL, '2022-06-16 03:13:42', '2022-06-16 03:13:42', 'EMP-00051', '09740940649', '14/YAKANA(N)142539', 'male', 'အသုပ် (၄)ရပ်ကွက်၊ မြို့ရိုး(၂)လမ်း၊ရေကြည်မြို့နယ်', 9, NULL, NULL, 'public/passport/5vp412f4q2AXbjuVLCmShOfjIylmppWSDq7Cubhc.jpg', '2022-06-13 10:00 AM', 0, NULL, NULL, NULL, 'public/photo/faYYyXYMJZ1DBgFuW8Vz8YzjrDysNPD5xhzWMw7T.jpg', 'public/photo/BNIPznCCy91a88YGUqsg0AWlhzgiWn9TzsKZz7Ei.jpg', '', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_accept_reject_statuses`
--

INSERT INTO `variable_accept_reject_statuses` (`id`, `user_id`, `accept_reject_status`, `accept_reject_date`, `variable_request_info_id`, `created_at`, `updated_at`, `remark`) VALUES
(4, 10, 'accept', '2022-05-09', 5, '2022-05-09 08:03:21', '2022-05-09 08:03:21', NULL),
(5, 10, 'accept', '2022-05-09', 5, '2022-05-09 08:04:05', '2022-05-09 08:04:05', NULL),
(6, 10, 'accept', '2022-05-09', 6, '2022-05-09 08:04:38', '2022-05-09 08:04:38', NULL),
(7, 10, 'accept', '2022-05-09', 7, '2022-05-09 08:09:16', '2022-05-09 08:09:16', NULL),
(8, 10, 'accept', '2022-05-09', 8, '2022-05-09 08:21:21', '2022-05-09 08:21:21', NULL),
(9, 10, 'accept', '2022-05-09', 9, '2022-05-09 08:21:33', '2022-05-09 08:21:33', NULL),
(10, 10, 'accept', '2022-05-09', 10, '2022-05-09 08:21:41', '2022-05-09 08:21:41', NULL),
(11, 11, 'accept', '2022-05-10', 10, '2022-05-10 02:53:47', '2022-05-10 02:53:47', NULL),
(12, 10, 'accept', '2022-05-10', 11, '2022-05-10 02:59:13', '2022-05-10 02:59:13', NULL),
(13, 10, 'accept', '2022-05-11', 12, '2022-05-11 04:48:36', '2022-05-11 04:48:36', NULL),
(14, 10, 'accept', '2022-05-11', 13, '2022-05-11 04:48:47', '2022-05-11 04:48:47', NULL),
(15, 10, 'accept', '2022-05-12', 14, '2022-05-12 10:14:08', '2022-05-12 10:14:08', NULL),
(16, 10, 'accept', '2022-05-12', 15, '2022-05-12 10:15:28', '2022-05-12 10:15:28', NULL),
(17, 10, 'accept', '2022-05-12', 16, '2022-05-12 10:16:12', '2022-05-12 10:16:12', NULL),
(18, 10, 'accept', '2022-05-13', 17, '2022-05-13 03:07:03', '2022-05-13 03:07:03', NULL),
(19, 10, 'accept', '2022-05-13', 18, '2022-05-13 03:07:39', '2022-05-13 03:07:39', NULL),
(20, 10, 'accept', '2022-05-16', 19, '2022-05-16 06:09:18', '2022-05-16 06:09:18', NULL),
(21, 10, 'accept', '2022-05-16', 20, '2022-05-16 06:10:41', '2022-05-16 06:10:41', NULL),
(22, 10, 'accept', '2022-05-23', 21, '2022-05-23 14:54:08', '2022-05-23 14:54:08', NULL),
(23, 10, 'accept', '2022-05-23', 22, '2022-05-23 14:54:14', '2022-05-23 14:54:14', NULL),
(24, 10, 'accept', '2022-05-28', 23, '2022-05-28 09:34:58', '2022-05-28 09:34:58', NULL),
(25, 42, 'accept', '2022-05-31', 26, '2022-05-31 02:23:33', '2022-05-31 02:23:33', NULL),
(26, 42, 'accept', '2022-05-31', 25, '2022-05-31 02:27:46', '2022-05-31 02:27:46', NULL),
(27, 11, 'accept', '2022-05-31', 24, '2022-05-31 02:32:23', '2022-05-31 02:32:23', NULL),
(28, 10, 'accept', '2022-05-31', 27, '2022-05-31 09:31:13', '2022-05-31 09:31:13', NULL),
(29, 10, 'accept', '2022-05-31', 28, '2022-05-31 09:34:42', '2022-05-31 09:34:42', NULL),
(30, 11, 'accept', '2022-06-01', 30, '2022-06-01 04:17:38', '2022-06-01 04:17:38', NULL),
(31, 11, 'accept', '2022-06-01', 29, '2022-06-01 04:18:20', '2022-06-01 04:18:20', NULL),
(32, 10, 'accept', '2022-06-02', 32, '2022-06-02 02:38:44', '2022-06-02 02:38:44', NULL),
(33, 10, 'accept', '2022-06-02', 33, '2022-06-02 02:39:13', '2022-06-02 02:39:13', NULL),
(34, 42, 'accept', '2022-06-02', 34, '2022-06-02 02:55:16', '2022-06-02 02:55:16', NULL),
(35, 42, 'accept', '2022-06-02', 35, '2022-06-02 03:03:39', '2022-06-02 03:03:39', NULL),
(36, 42, 'accept', '2022-06-02', 36, '2022-06-02 03:05:35', '2022-06-02 03:05:35', NULL),
(37, 42, 'accept', '2022-06-02', 37, '2022-06-02 03:06:30', '2022-06-02 03:06:30', NULL),
(38, 42, 'accept', '2022-06-02', 38, '2022-06-02 03:12:13', '2022-06-02 03:12:13', NULL),
(39, 42, 'accept', '2022-06-02', 39, '2022-06-02 03:14:14', '2022-06-02 03:14:14', NULL),
(40, 11, 'accept', '2022-06-02', 31, '2022-06-02 03:22:00', '2022-06-02 03:22:00', NULL),
(41, 10, 'accept', '2022-06-02', 41, '2022-06-02 09:29:34', '2022-06-02 09:29:34', NULL),
(42, 10, 'accept', '2022-06-02', 42, '2022-06-02 09:29:56', '2022-06-02 09:29:56', NULL),
(43, 42, 'accept', '2022-06-03', 47, '2022-06-03 04:42:16', '2022-06-03 04:42:16', NULL),
(44, 11, 'accept', '2022-06-03', 45, '2022-06-03 05:39:43', '2022-06-03 05:39:43', NULL),
(45, 11, 'accept', '2022-06-03', 44, '2022-06-03 05:40:33', '2022-06-03 05:40:33', NULL),
(46, 42, 'accept', '2022-06-03', 46, '2022-06-03 07:42:42', '2022-06-03 07:42:42', NULL),
(47, 10, 'reject', '2022-06-03', 49, '2022-06-03 10:07:10', '2022-06-03 10:07:10', NULL),
(48, 10, 'reject', '2022-06-03', 50, '2022-06-03 10:07:26', '2022-06-03 10:07:26', NULL),
(49, 10, 'accept', '2022-06-04', 54, '2022-06-04 02:29:05', '2022-06-04 02:29:05', NULL),
(50, 42, 'reject', '2022-06-04', 48, '2022-06-04 04:10:43', '2022-06-04 04:10:43', NULL),
(51, 42, 'accept', '2022-06-04', 51, '2022-06-04 04:15:08', '2022-06-04 04:15:08', NULL),
(52, 42, 'accept', '2022-06-04', 53, '2022-06-04 04:21:49', '2022-06-04 04:21:49', NULL),
(53, 42, 'accept', '2022-06-04', 52, '2022-06-04 04:22:02', '2022-06-04 04:22:02', NULL),
(54, 42, 'accept', '2022-06-04', 55, '2022-06-04 04:23:18', '2022-06-04 04:23:18', NULL),
(55, 10, 'accept', '2022-06-04', 43, '2022-06-04 04:43:59', '2022-06-04 04:43:59', NULL),
(56, 42, 'accept', '2022-06-05', 58, '2022-06-05 13:57:26', '2022-06-05 13:57:26', NULL),
(57, 42, 'accept', '2022-06-05', 57, '2022-06-05 13:57:44', '2022-06-05 13:57:44', NULL),
(58, 10, 'accept', '2022-06-06', 56, '2022-06-06 02:31:18', '2022-06-06 02:31:18', NULL),
(59, 11, 'accept', '2022-06-06', 60, '2022-06-06 03:08:01', '2022-06-06 03:08:01', NULL),
(60, 11, 'accept', '2022-06-06', 59, '2022-06-06 03:11:32', '2022-06-06 03:11:32', NULL),
(61, 42, 'accept', '2022-06-06', 61, '2022-06-06 06:25:37', '2022-06-06 06:25:37', NULL),
(62, 42, 'accept', '2022-06-06', 63, '2022-06-06 06:25:50', '2022-06-06 06:25:50', NULL),
(63, 42, 'accept', '2022-06-06', 62, '2022-06-06 06:26:02', '2022-06-06 06:26:02', NULL),
(64, 42, 'accept', '2022-06-06', 65, '2022-06-06 10:04:16', '2022-06-06 10:04:16', NULL),
(65, 42, 'reject', '2022-06-06', 64, '2022-06-06 10:04:24', '2022-06-06 10:04:24', NULL),
(66, 10, 'accept', '2022-06-07', 67, '2022-06-07 02:21:23', '2022-06-07 02:21:23', NULL),
(67, 10, 'reject', '2022-06-07', 68, '2022-06-07 02:56:57', '2022-06-07 02:56:57', NULL),
(68, 11, 'accept', '2022-06-07', 66, '2022-06-07 03:09:20', '2022-06-07 03:09:20', NULL),
(69, 10, 'accept', '2022-06-07', 69, '2022-06-07 03:10:31', '2022-06-07 03:10:31', NULL),
(70, 42, 'accept', '2022-06-07', 72, '2022-06-07 05:11:58', '2022-06-07 05:11:58', NULL),
(71, 42, 'accept', '2022-06-07', 71, '2022-06-07 05:12:39', '2022-06-07 05:12:39', NULL),
(72, 42, 'accept', '2022-06-07', 70, '2022-06-07 05:13:20', '2022-06-07 05:13:20', NULL),
(73, 42, 'accept', '2022-06-07', 73, '2022-06-07 06:45:37', '2022-06-07 06:45:37', NULL),
(74, 42, 'accept', '2022-06-08', 76, '2022-06-08 02:25:36', '2022-06-08 02:25:36', NULL),
(75, 42, 'accept', '2022-06-08', 81, '2022-06-08 02:30:46', '2022-06-08 02:30:46', NULL),
(76, 42, 'accept', '2022-06-08', 80, '2022-06-08 02:33:43', '2022-06-08 02:33:43', NULL),
(77, 10, 'accept', '2022-06-08', 78, '2022-06-08 05:17:09', '2022-06-08 05:17:09', NULL),
(78, 10, 'accept', '2022-06-08', 79, '2022-06-08 05:18:49', '2022-06-08 05:18:49', NULL),
(79, 10, 'accept', '2022-06-09', 83, '2022-06-09 03:07:13', '2022-06-09 03:07:13', NULL),
(80, 11, 'accept', '2022-06-09', 74, '2022-06-09 03:08:05', '2022-06-09 03:08:05', NULL),
(81, 11, 'accept', '2022-06-09', 75, '2022-06-09 03:09:05', '2022-06-09 03:09:05', NULL),
(82, 11, 'accept', '2022-06-09', 82, '2022-06-09 03:10:07', '2022-06-09 03:10:07', NULL),
(83, 11, 'accept', '2022-06-09', 88, '2022-06-09 03:22:14', '2022-06-09 03:22:14', NULL),
(84, 11, 'reject', '2022-06-09', 87, '2022-06-09 03:31:42', '2022-06-09 03:31:42', NULL),
(85, 11, 'reject', '2022-06-09', 84, '2022-06-09 04:03:00', '2022-06-09 04:03:00', NULL),
(86, 10, 'accept', '2022-06-09', 85, '2022-06-09 05:09:21', '2022-06-09 05:09:21', NULL),
(87, 42, 'accept', '2022-06-09', 86, '2022-06-09 06:13:25', '2022-06-09 06:13:25', NULL),
(88, 42, 'accept', '2022-06-09', 77, '2022-06-09 06:14:14', '2022-06-09 06:14:14', NULL),
(89, 42, 'accept', '2022-06-09', 91, '2022-06-09 06:19:27', '2022-06-09 06:19:27', NULL),
(90, 42, 'accept', '2022-06-09', 90, '2022-06-09 06:19:38', '2022-06-09 06:19:38', NULL),
(91, 10, 'accept', '2022-06-10', 95, '2022-06-10 02:58:41', '2022-06-10 02:58:41', NULL),
(92, 10, 'accept', '2022-06-10', 93, '2022-06-10 02:59:29', '2022-06-10 02:59:29', NULL),
(93, 10, 'accept', '2022-06-10', 92, '2022-06-10 03:00:46', '2022-06-10 03:00:46', NULL),
(94, 42, 'accept', '2022-06-10', 96, '2022-06-10 04:26:40', '2022-06-10 04:26:40', NULL),
(95, 42, 'accept', '2022-06-10', 97, '2022-06-10 04:26:56', '2022-06-10 04:26:56', NULL),
(96, 10, 'accept', '2022-06-10', 99, '2022-06-10 06:36:33', '2022-06-10 06:36:33', NULL),
(97, 11, 'accept', '2022-06-10', 89, '2022-06-10 08:05:34', '2022-06-10 08:05:34', NULL),
(98, 11, 'accept', '2022-06-10', 94, '2022-06-10 08:11:17', '2022-06-10 08:11:17', NULL),
(99, 42, 'accept', '2022-06-11', 101, '2022-06-11 02:49:49', '2022-06-11 02:49:49', NULL),
(100, 10, 'accept', '2022-06-11', 106, '2022-06-11 02:59:04', '2022-06-11 02:59:04', NULL),
(101, 11, 'accept', '2022-06-11', 103, '2022-06-11 03:12:28', '2022-06-11 03:12:28', NULL),
(102, 11, 'accept', '2022-06-11', 105, '2022-06-11 03:17:40', '2022-06-11 03:17:40', NULL),
(103, 11, 'accept', '2022-06-11', 104, '2022-06-11 03:25:42', '2022-06-11 03:25:42', NULL),
(104, 11, 'accept', '2022-06-11', 100, '2022-06-11 03:28:36', '2022-06-11 03:28:36', NULL),
(105, 11, 'accept', '2022-06-11', 107, '2022-06-11 03:30:27', '2022-06-11 03:30:27', NULL),
(106, 11, 'accept', '2022-06-11', 98, '2022-06-11 03:32:21', '2022-06-11 03:32:21', NULL),
(107, 11, 'accept', '2022-06-11', 112, '2022-06-11 07:41:59', '2022-06-11 07:41:59', NULL),
(108, 42, 'accept', '2022-06-13', 108, '2022-06-13 02:29:48', '2022-06-13 02:29:48', NULL),
(109, 42, 'accept', '2022-06-13', 111, '2022-06-13 02:36:39', '2022-06-13 02:36:39', NULL),
(110, 42, 'accept', '2022-06-13', 113, '2022-06-13 02:52:12', '2022-06-13 02:52:12', NULL),
(111, 10, 'accept', '2022-06-13', 114, '2022-06-13 03:04:25', '2022-06-13 03:04:25', NULL),
(112, 10, 'accept', '2022-06-13', 115, '2022-06-13 03:06:14', '2022-06-13 03:06:14', NULL),
(113, 11, 'accept', '2022-06-13', 117, '2022-06-13 04:19:09', '2022-06-13 04:19:09', NULL),
(114, 11, 'accept', '2022-06-13', 120, '2022-06-13 10:01:28', '2022-06-13 10:01:28', NULL),
(115, 42, 'accept', '2022-06-14', 125, '2022-06-14 03:14:40', '2022-06-14 03:14:40', NULL),
(116, 42, 'accept', '2022-06-14', 124, '2022-06-14 03:14:54', '2022-06-14 03:14:54', NULL),
(117, 10, 'accept', '2022-06-14', 131, '2022-06-14 03:16:44', '2022-06-14 03:16:44', NULL),
(118, 42, 'accept', '2022-06-14', 130, '2022-06-14 03:17:05', '2022-06-14 03:17:05', NULL),
(119, 10, 'accept', '2022-06-14', 122, '2022-06-14 03:21:45', '2022-06-14 03:21:45', NULL),
(120, 11, 'accept', '2022-06-14', 129, '2022-06-14 07:00:22', '2022-06-14 07:00:22', NULL),
(121, 11, 'accept', '2022-06-14', 123, '2022-06-14 07:02:07', '2022-06-14 07:02:07', NULL),
(122, 42, 'reject', '2022-06-14', 133, '2022-06-14 08:21:41', '2022-06-14 08:21:41', NULL),
(123, 42, 'accept', '2022-06-14', 136, '2022-06-14 08:42:39', '2022-06-14 08:42:39', NULL),
(124, 42, 'accept', '2022-06-14', 134, '2022-06-14 08:45:17', '2022-06-14 08:45:17', NULL),
(125, 42, 'accept', '2022-06-14', 135, '2022-06-14 08:46:04', '2022-06-14 08:46:04', NULL),
(126, 42, 'accept', '2022-06-14', 133, '2022-06-14 08:49:56', '2022-06-14 08:49:56', NULL),
(127, 42, 'accept', '2022-06-15', 140, '2022-06-15 03:03:46', '2022-06-15 03:03:46', NULL),
(128, 11, 'accept', '2022-06-15', 121, '2022-06-15 03:16:47', '2022-06-15 03:16:47', NULL),
(129, 11, 'accept', '2022-06-15', 132, '2022-06-15 03:19:29', '2022-06-15 03:19:29', NULL),
(130, 11, 'accept', '2022-06-15', 137, '2022-06-15 03:21:53', '2022-06-15 03:21:53', NULL),
(131, 11, 'accept', '2022-06-15', 138, '2022-06-15 03:23:04', '2022-06-15 03:23:04', NULL),
(132, 11, 'accept', '2022-06-15', 141, '2022-06-15 03:27:17', '2022-06-15 03:27:17', NULL),
(133, 10, 'accept', '2022-06-15', 118, '2022-06-15 03:28:09', '2022-06-15 03:28:09', NULL),
(134, 11, 'accept', '2022-06-15', 142, '2022-06-15 03:30:01', '2022-06-15 03:30:01', NULL),
(135, 11, 'accept', '2022-06-15', 143, '2022-06-15 03:32:07', '2022-06-15 03:32:07', NULL),
(136, 42, 'accept', '2022-06-15', 149, '2022-06-15 06:14:24', '2022-06-15 06:14:24', NULL),
(137, 10, 'accept', '2022-06-15', 146, '2022-06-15 07:13:57', '2022-06-15 07:13:57', NULL),
(138, 10, 'accept', '2022-06-15', 145, '2022-06-15 07:15:41', '2022-06-15 07:15:41', NULL),
(139, 10, 'accept', '2022-06-15', 144, '2022-06-15 07:17:33', '2022-06-15 07:17:33', NULL),
(140, 10, 'accept', '2022-06-15', 139, '2022-06-15 07:18:28', '2022-06-15 07:18:28', NULL),
(141, 11, 'accept', '2022-06-15', 119, '2022-06-15 07:31:00', '2022-06-15 07:31:00', NULL),
(142, 11, 'accept', '2022-06-15', 116, '2022-06-15 07:31:39', '2022-06-15 07:31:39', NULL),
(143, 11, 'accept', '2022-06-15', 147, '2022-06-15 07:35:48', '2022-06-15 07:35:48', NULL),
(144, 11, 'accept', '2022-06-15', 109, '2022-06-15 09:57:53', '2022-06-15 09:57:53', NULL),
(145, 11, 'accept', '2022-06-15', 110, '2022-06-15 10:01:50', '2022-06-15 10:01:50', NULL),
(146, 10, 'accept', '2022-06-16', 153, '2022-06-16 03:45:15', '2022-06-16 03:45:15', NULL),
(147, 10, 'accept', '2022-06-16', 151, '2022-06-16 03:47:40', '2022-06-16 03:47:40', NULL),
(148, 10, 'accept', '2022-06-16', 150, '2022-06-16 03:48:19', '2022-06-16 03:48:19', NULL),
(149, 11, 'accept', '2022-06-16', 148, '2022-06-16 04:01:04', '2022-06-16 04:01:04', NULL),
(150, 11, 'accept', '2022-06-16', 152, '2022-06-16 07:14:56', '2022-06-16 07:14:56', NULL),
(151, 10, 'accept', '2022-06-16', 155, '2022-06-16 07:15:34', '2022-06-16 07:15:34', NULL),
(152, 42, 'reject', '2022-06-16', 126, '2022-06-16 07:52:34', '2022-06-16 07:52:34', NULL),
(153, 42, 'reject', '2022-06-16', 127, '2022-06-16 07:54:21', '2022-06-16 07:54:21', NULL),
(154, 42, 'reject', '2022-06-16', 128, '2022-06-16 07:54:41', '2022-06-16 07:54:41', NULL),
(155, 42, 'reject', '2022-06-16', 156, '2022-06-16 07:57:13', '2022-06-16 07:57:13', NULL),
(156, 42, 'accept', '2022-06-16', 157, '2022-06-16 08:01:08', '2022-06-16 08:01:08', NULL),
(157, 11, 'accept', '2022-06-16', 154, '2022-06-16 08:07:16', '2022-06-16 08:07:16', NULL),
(158, 10, 'reject', '2022-06-20', 163, '2022-06-20 04:25:55', '2022-06-20 04:25:55', NULL),
(159, 10, 'reject', '2022-06-20', 162, '2022-06-20 04:26:13', '2022-06-20 04:26:13', NULL),
(160, 11, 'accept', '2022-06-20', 161, '2022-06-20 06:10:42', '2022-06-20 06:10:42', NULL),
(161, 11, 'accept', '2022-06-20', 160, '2022-06-20 06:17:03', '2022-06-20 06:17:03', NULL),
(162, 42, 'accept', '2022-06-21', 164, '2022-06-21 02:16:45', '2022-06-21 02:16:45', NULL),
(163, 10, 'accept', '2022-06-21', 165, '2022-06-21 02:37:57', '2022-06-21 02:37:57', NULL),
(164, 10, 'accept', '2022-06-21', 159, '2022-06-21 02:38:22', '2022-06-21 02:38:22', NULL),
(165, 10, 'accept', '2022-06-21', 166, '2022-06-21 02:40:52', '2022-06-21 02:40:52', NULL),
(166, 42, 'accept', '2022-06-21', 167, '2022-06-21 02:57:21', '2022-06-21 02:57:21', NULL),
(167, 42, 'accept', '2022-06-21', 168, '2022-06-21 02:58:49', '2022-06-21 02:58:49', NULL),
(168, 42, 'accept', '2022-06-21', 169, '2022-06-21 03:01:57', '2022-06-21 03:01:57', NULL),
(169, 11, 'accept', '2022-06-21', 170, '2022-06-21 03:05:32', '2022-06-21 03:05:32', NULL),
(170, 11, 'reject', '2022-06-21', 171, '2022-06-21 03:28:32', '2022-06-21 03:28:32', NULL),
(171, 11, 'accept', '2022-06-21', 172, '2022-06-21 03:28:43', '2022-06-21 03:28:43', NULL),
(172, 11, 'accept', '2022-06-21', 158, '2022-06-21 04:08:36', '2022-06-21 04:08:36', NULL),
(173, 42, 'accept', '2022-06-21', 174, '2022-06-21 10:33:50', '2022-06-21 10:33:50', NULL),
(174, 42, 'accept', '2022-06-22', 184, '2022-06-22 02:21:46', '2022-06-22 02:21:46', NULL),
(175, 42, 'accept', '2022-06-22', 183, '2022-06-22 02:25:00', '2022-06-22 02:25:00', NULL),
(176, 42, 'reject', '2022-06-22', 182, '2022-06-22 02:27:34', '2022-06-22 02:27:34', NULL),
(177, 42, 'accept', '2022-06-22', 181, '2022-06-22 02:28:52', '2022-06-22 02:28:52', NULL),
(178, 42, 'accept', '2022-06-22', 180, '2022-06-22 02:30:15', '2022-06-22 02:30:15', NULL),
(179, 10, 'accept', '2022-06-22', 176, '2022-06-22 02:53:17', '2022-06-22 02:53:17', NULL),
(180, 10, 'accept', '2022-06-22', 185, '2022-06-22 03:08:54', '2022-06-22 03:08:54', NULL),
(181, 11, 'accept', '2022-06-22', 178, '2022-06-22 03:17:56', '2022-06-22 03:17:56', NULL),
(182, 11, 'accept', '2022-06-22', 173, '2022-06-22 03:33:06', '2022-06-22 03:33:06', NULL),
(183, 11, 'accept', '2022-06-22', 177, '2022-06-22 03:46:08', '2022-06-22 03:46:08', NULL),
(184, 11, 'reject', '2022-06-22', 175, '2022-06-22 09:49:14', '2022-06-22 09:49:14', NULL),
(185, 11, 'accept', '2022-06-22', 102, '2022-06-22 09:50:37', '2022-06-22 09:50:37', NULL),
(186, 42, 'reject', '2022-06-23', 186, '2022-06-23 02:49:01', '2022-06-23 02:49:01', NULL),
(187, 42, 'accept', '2022-06-23', 189, '2022-06-23 02:55:13', '2022-06-23 02:55:13', NULL),
(188, 42, 'accept', '2022-06-23', 187, '2022-06-23 02:55:37', '2022-06-23 02:55:37', NULL),
(189, 11, 'accept', '2022-06-23', 191, '2022-06-23 04:15:54', '2022-06-23 04:15:54', NULL),
(190, 11, 'accept', '2022-06-23', 188, '2022-06-23 04:16:45', '2022-06-23 04:16:45', NULL),
(191, 42, 'accept', '2022-06-23', 179, '2022-06-23 04:46:36', '2022-06-23 04:46:36', NULL),
(192, 11, 'accept', '2022-06-24', 199, '2022-06-24 03:42:53', '2022-06-24 03:42:53', NULL),
(193, 11, 'accept', '2022-06-24', 198, '2022-06-24 03:43:43', '2022-06-24 03:43:43', NULL),
(194, 11, 'accept', '2022-06-24', 194, '2022-06-24 03:44:26', '2022-06-24 03:44:26', NULL),
(195, 11, 'accept', '2022-06-24', 193, '2022-06-24 03:45:09', '2022-06-24 03:45:09', NULL),
(196, 11, 'accept', '2022-06-24', 192, '2022-06-24 03:47:29', '2022-06-24 03:47:29', NULL),
(197, 42, 'reject', '2022-06-24', 197, '2022-06-24 07:27:13', '2022-06-24 07:27:13', NULL),
(198, 42, 'accept', '2022-06-24', 195, '2022-06-24 12:17:37', '2022-06-24 12:17:37', NULL),
(199, 42, 'accept', '2022-06-24', 196, '2022-06-24 12:24:07', '2022-06-24 12:24:07', NULL),
(200, 42, 'accept', '2022-06-24', 190, '2022-06-24 12:53:11', '2022-06-24 12:53:11', NULL);

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

--
-- Dumping data for table `variable_actual_vouchers`
--

INSERT INTO `variable_actual_vouchers` (`id`, `user_id`, `actual_voucher_upload_status`, `actual_voucher_upload_date`, `actual_voucher_file`, `original_name`, `variable_request_info_id`, `created_at`, `updated_at`, `remark`) VALUES
(1, 18, 'finished', '2022-06-08 12:19:19pm', 'public/actual_voucher/3WAn0aH6hG74paXiraHgNoLZY1su0lAeDyTJ7lEK.jpg', '2.jpg', 55, '2022-06-08 05:19:19', '2022-06-08 05:19:19', NULL),
(2, 18, 'finished', '2022-06-09 12:15:12pm', 'public/actual_voucher/iblpnZSSkqKaA84GdgV7cq1zLg7b4AegygOepNHY.jpg', 'Phyo Thu Kha 1.jpg', 29, '2022-06-09 05:15:12', '2022-06-09 05:15:12', NULL),
(3, 18, 'finished', '2022-06-09 12:20:09pm', 'public/actual_voucher/l5q8dAtN3S8WhJpF5jMJjZXmAM6AjPyONpsbjMmo.jpg', 'For M Z W.jpg', 66, '2022-06-09 05:20:09', '2022-06-09 05:20:09', NULL),
(4, 18, 'finished', '2022-06-09 12:20:13pm', 'public/actual_voucher/eZ6kah2koaCp1tbCIiDOJWUG26v2g64UJJDM1XtI.jpg', 'For M Z W.jpg', 66, '2022-06-09 05:20:13', '2022-06-09 05:20:13', NULL),
(5, 18, 'finished', '2022-06-09 12:20:22pm', 'public/actual_voucher/7VaiLWjcNYNu56dLhNlthAM4VBL1lirh2NFceCHh.jpg', 'For M Z W.jpg', 66, '2022-06-09 05:20:22', '2022-06-09 05:20:22', NULL),
(6, 18, 'finished', '2022-06-09 12:20:22pm', 'public/actual_voucher/Pgwytf2c7T1Mtverk32W78OLogFjDf6YF1JgybeW.jpg', 'For M Z W.jpg', 66, '2022-06-09 05:20:22', '2022-06-09 05:20:22', NULL),
(7, 18, 'finished', '2022-06-09 12:22:38pm', 'public/actual_voucher/YQrdxEtfxlJAwBr48l3jqiVqFTM4gImEUeLs2fx2.jpg', 'For M G C.jpg', 31, '2022-06-09 05:22:38', '2022-06-09 05:22:38', NULL),
(8, 18, 'finished', '2022-06-09 13:10:35pm', 'public/actual_voucher/zPYkkY7hodL4FwqgwUrPd3Ft3wBCUlSjS6LFx7bA.jpg', '3.jpg', 65, '2022-06-09 06:10:35', '2022-06-09 06:10:35', NULL),
(9, 18, 'finished', '2022-06-09 16:25:20pm', 'public/actual_voucher/Cs71bB9ROLV5RUNBETUXWsnKoo6n5boHDU7VDlTZ.jpg', '9.6.22 ( For M Z W ).jpg', 74, '2022-06-09 09:25:20', '2022-06-09 09:25:20', NULL),
(10, 38, 'finished', '2022-06-09 17:32:38pm', 'public/actual_voucher/laoz5wVFNtmP9Y7msaLulupsgbR7K7PnyCGqfmPg.jpg', '630000.jpg', 60, '2022-06-09 10:32:38', '2022-06-09 10:32:38', NULL),
(11, 38, 'finished', '2022-06-09 17:33:53pm', 'public/actual_voucher/lrKQEJVjE0hSqWDuNg4QY29k2k1HOqz5V7XfMuZC.jpg', '630000.jpg', 60, '2022-06-09 10:33:53', '2022-06-09 10:33:53', 'Daw Soe Sandar Aye (South Okkala) Brick 5000'),
(12, 38, 'finished', '2022-06-09 17:38:20pm', 'public/actual_voucher/5mmx9U6HceDXeVHmpkRvE4QtLyeLQnzLNVKI1Q9c.jpg', '635000.jpg', 35, '2022-06-09 10:38:20', '2022-06-09 10:38:20', 'Ko  San Htoo (Thingunkyun) Brick 5000'),
(13, 38, 'finished', '2022-06-09 17:43:34pm', 'public/actual_voucher/VZzBGZScNhoM9AkLh6OEr1lhUJRXS4Mw82RUuCfq.jpg', '620000.jpg', 75, '2022-06-09 10:43:34', '2022-06-09 10:43:34', 'Ma Zin War(Mayangone) Brick 5000'),
(14, 18, 'finished', '2022-06-11 11:53:41am', 'public/actual_voucher/owRPvo3l4uwx4fncE9ZP5kPH9oXhL5uOOnw06NGp.jpg', 'For K Z H A ( 10.5.22).jpg', 6, '2022-06-11 04:53:41', '2022-06-11 04:53:41', NULL),
(15, 18, 'finished', '2022-06-11 12:16:28pm', 'public/actual_voucher/mMDMyJcGxeVWl6Ikd1TcILRv7QRfc0g12c1tYgjP.jpg', 'For K Z H A ( 25.5.22).jpg', 22, '2022-06-11 05:16:28', '2022-06-11 05:16:28', NULL),
(16, 18, 'finished', '2022-06-11 14:08:02pm', 'public/actual_voucher/wkQcNGUHYFpzGqpKBEV2lCmuv78NCRjfA1QxJzPJ.jpg', 'For M S L ( 9.6.22).jpg', 81, '2022-06-11 07:08:02', '2022-06-11 07:08:02', NULL),
(17, 18, 'finished', '2022-06-11 14:11:36pm', 'public/actual_voucher/VsUuCbfE1KIWFqZbla7IKOe8oKfhiJW7uCgZbYKT.jpg', 'For M S L ( 9.6.22).jpg', 80, '2022-06-11 07:11:36', '2022-06-11 07:11:36', NULL),
(18, 18, 'finished', '2022-06-11 14:17:51pm', 'public/actual_voucher/5OmW5MpPSI1lVch8XlxT2B5CD5PqyaUm1xlQHMAG.jpg', 'M S L ( 10.6.22).jpg', 58, '2022-06-11 07:17:51', '2022-06-11 07:17:51', NULL),
(19, 18, 'finished', '2022-06-11 14:33:34pm', 'public/actual_voucher/rirPEZIxSUWYPBYQvi34wOAhAeBuQkuzLZAOl5Ti.jpg', 'For K Z H A ( 3.6.22).jpg', 46, '2022-06-11 07:33:34', '2022-06-11 07:33:34', NULL),
(20, 18, 'finished', '2022-06-11 14:39:27pm', 'public/actual_voucher/FiK7wtYcycTdnsAjWcUwVlxmi7JdZ6Zwws2KUwAj.jpg', 'For K Z H A ( 28 , 1).jpg', 23, '2022-06-11 07:39:27', '2022-06-11 07:39:27', NULL),
(26, 17, 'finished', '2022-06-14 17:02:30pm', 'public/actual_voucher/0YfSmx4JNoeh7SqfWBSQvaSNeXyes25mi6L5Omi9.jpg', 'MWD Brick.jpg', 16, '2022-06-14 10:02:30', '2022-06-14 10:02:30', 'Brick  5000 Nos  ( စာရင်းသွင်းစျေးနှုန်း နှင့်မတူရခြင်းသည် ပစ္စည်းအမှာတင်သောအခါစျေးတက်သွားခြင်းဖြစ်ပါသည်။)'),
(27, 17, 'finished', '2022-06-14 17:14:57pm', 'public/actual_voucher/oGDMW1A7bOYxGgN2BnaXWPYotHWdLtjHNIp7WH7j.jpg', 'MWD Brick.jpg', 12, '2022-06-14 10:14:57', '2022-06-14 10:14:57', 'Brick  5000Nos ( စာရင်းသွင်းငွေပမာဏနှင့် ဘောက်ချာငွေပမာဏမတူရခြင်းသည် စျေးနှုန်းပြောင်းလဲခြင်းနှင့် 3000Nos အစား 5000Nos ပို့ရခြင်းမှာ 5000Nos ပို့ပါကစျေးနှုန်းသင့်တော်ပါသည်။)'),
(28, 17, 'finished', '2022-06-14 17:25:11pm', 'public/actual_voucher/PABFkOqMUumVFVhtAobBZctgmWtVNqalsVp1yga2.jpg', 'MWD Brick (3.6.22).jpg', 32, '2022-06-14 10:25:11', '2022-06-14 10:25:11', 'Brick 5000Nos'),
(29, 17, 'finished', '2022-06-14 17:45:21pm', 'public/actual_voucher/fxtOEOB0VmdA0G8sUoavb9OPDsTo8LzMAvEyGNnt.jpg', 'KSH RE-bar.jpg', 34, '2022-06-14 10:45:21', '2022-06-14 10:45:21', NULL),
(30, 17, 'finished', '2022-06-14 17:51:13pm', 'public/actual_voucher/2PwIK4b08KwOAq0wZCG1MMB1vNHNDBt6jqrTlRIu.jpg', 'KSH RE-bar.jpg', 37, '2022-06-14 10:51:13', '2022-06-14 10:51:13', NULL),
(31, 17, 'finished', '2022-06-14 17:52:07pm', 'public/actual_voucher/ZVRj2fTfoPhxWa6A2VyuRjIgcHRZ3XMri9Rzy8tT.jpg', 'KSH RE-bar.jpg', 38, '2022-06-14 10:52:07', '2022-06-14 10:52:07', NULL),
(32, 17, 'finished', '2022-06-14 17:56:02pm', 'public/actual_voucher/nmwHa2V9U84S7wL539HIfUZNlcOhx9sarUHUzlcZ.jpg', 'KSH RE-bar.jpg', 39, '2022-06-14 10:56:02', '2022-06-14 10:56:02', NULL),
(33, 17, 'finished', '2022-06-14 18:04:49pm', 'public/actual_voucher/xwLahOmPOgkAca1833VYbaulUoiYGbOIM8MutCt8.jpg', 'DSSDA Re-bar.jpg', 45, '2022-06-14 11:04:49', '2022-06-14 11:04:49', NULL),
(34, 17, 'finished', '2022-06-14 18:15:15pm', 'public/actual_voucher/xIQhhjcfiNLExSGqs2oG5XN2xqpBLMKyK4pI8Lth.jpg', 'MHWYP Cement.jpg', 52, '2022-06-14 11:15:15', '2022-06-14 11:15:15', NULL),
(35, 17, 'finished', '2022-06-14 18:22:47pm', 'public/actual_voucher/wGqnt2tslV1eNZvZSfYymlrxs9UqtwxSfjX6c5pS.jpg', 'MWD Cement.jpg', 83, '2022-06-14 11:22:47', '2022-06-14 11:22:47', NULL),
(36, 17, 'finished', '2022-06-14 18:32:59pm', 'public/actual_voucher/MvZOsECwSjYA0mikRxDdg02Xk0G16YVLKF9U4vxw.jpg', 'MHWYP Cement.jpg', 90, '2022-06-14 11:32:59', '2022-06-14 11:32:59', NULL),
(37, 17, 'finished', '2022-06-14 18:33:54pm', 'public/actual_voucher/dh3XFaakBr38u9TMKzGeLriHEgeqNHAhgjTLTZM2.jpg', 'MHWYP Cement.jpg', 91, '2022-06-14 11:33:54', '2022-06-14 11:33:54', NULL),
(38, 17, 'finished', '2022-06-15 14:10:03pm', 'public/actual_voucher/1l0NAR7jW7zbzwyvWMJXNCCNsHvMd50gcQriZfDA.jpg', 'DSSDA Brick.jpg', 120, '2022-06-15 07:10:03', '2022-06-15 07:10:03', NULL),
(39, 18, 'finished', '2022-06-15 14:27:51pm', 'public/actual_voucher/EHHxWnKhcfOH3OLJfHSh5cOthuvaxxBUUVxrqRxn.jpg', 'For  M Z W ( 9.6.22 ).jpg', 137, '2022-06-15 07:27:51', '2022-06-15 07:27:51', NULL),
(40, 18, 'finished', '2022-06-15 14:57:33pm', 'public/actual_voucher/5wgqflBTkzQcrlVPCeKb5PaPPuYMy0hfBBt5Bvch.jpg', 'For M Z W ( 13.6.22 ).jpg', 98, '2022-06-15 07:57:33', '2022-06-15 07:57:33', NULL),
(41, 18, 'finished', '2022-06-15 15:02:10pm', 'public/actual_voucher/ygZio07lmrTDG7q9LmJFFYNstQ30Ok1oxMe3xiAy.jpg', 'For K Z H A ( 14.6.22 ).jpg', 113, '2022-06-15 08:02:10', '2022-06-15 08:02:10', NULL),
(42, 18, 'finished', '2022-06-15 15:06:17pm', 'public/actual_voucher/bLpgFamzzvwz0ZwnKcFrxIp58tC9tAN8I9Peqi9Q.jpg', 'M S L ( 10.6.22).jpg', 96, '2022-06-15 08:06:17', '2022-06-15 08:06:17', NULL),
(43, 18, 'finished', '2022-06-23 11:49:01am', 'public/actual_voucher/RzMs2bzyDKp8HkA5WEVnnyb8igy8R3w02F1evzrQ.jpg', 'For M Z W ( 12.6.22 ).jpg', 158, '2022-06-23 04:49:01', '2022-06-23 04:49:01', NULL),
(44, 18, 'finished', '2022-06-23 12:05:47pm', 'public/actual_voucher/N0bF0w3Dlr0bWdTpAhalyof0xDuBJZ80xeeCs9ma.jpg', 'For M Z W ( 17,18. 6.22).jpg', 148, '2022-06-23 05:05:47', '2022-06-23 05:05:47', NULL),
(45, 17, 'finished', '2022-06-24 12:45:50pm', 'public/actual_voucher/Jvbx0yxGkHOWqFrylZBiEKwCDaXtaaZKYXs3nXk6.jpg', 'Bamboo.jpg', 189, '2022-06-24 05:45:50', '2022-06-24 05:45:50', 'Ko San Htoo (Bamboo 100Nos)');

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
  `sizes` text COLLATE utf8mb4_unicode_ci,
  `display_order` int(11) DEFAULT '0',
  `category` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_assets`
--

INSERT INTO `variable_assets` (`id`, `item_name`, `unit`, `qty`, `remark`, `main_warehouse_id`, `created_at`, `updated_at`, `sizes`, `display_order`, `category`) VALUES
(1, 'Cement', 'Bag', 0, NULL, 1, '2022-04-29 09:56:36', '2022-06-23 07:41:39', '52.5', 33, NULL),
(4, 'Cement', 'Bag', 0, NULL, 1, '2022-04-30 02:57:58', '2022-06-23 07:41:39', '42.5', 34, NULL),
(5, 'Deformed Bar 10mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:31:02', '2022-06-23 07:41:39', '10mm', 35, NULL),
(6, 'Deformed Bar 12mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:31:40', '2022-06-23 07:41:39', '12mm', 36, NULL),
(7, 'Deformed Bar 16mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:05', '2022-06-23 07:41:39', '16mm', 37, NULL),
(8, 'Deformed Bar 20mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:27', '2022-06-23 07:41:39', '20mm', 38, NULL),
(9, 'Deformed Bar 25mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:43', '2022-06-23 07:41:39', '25mm', 39, NULL),
(10, 'Deformed Bar 10mm ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:33:36', '2022-06-23 07:41:39', '10mm', 40, NULL),
(11, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:04', '2022-06-23 07:41:39', '12mm', 41, NULL),
(12, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:28', '2022-06-23 07:41:39', '16mm', 42, NULL),
(13, 'Deformed Bar ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:43', '2022-06-23 07:41:39', '20mm', 43, NULL),
(15, 'MS Coil 6.5mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:35:30', '2022-06-23 07:41:39', '6.5mm', 44, NULL),
(16, 'MS Coil 8mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:35:49', '2022-06-23 07:41:39', '8mm', 45, NULL),
(17, 'Jungle Wood 3\"x2\" ( 10\' Above )', 'Ton', 0, NULL, 1, '2022-04-30 03:36:47', '2022-06-23 07:41:39', '3\"x2\"', 46, NULL),
(18, 'Jungle Wood 3\"x2\" ( 10\' Below )', 'Ton', 0, NULL, 1, '2022-04-30 03:37:16', '2022-06-23 07:41:39', '3\"x2\"', 47, NULL),
(19, 'Jungle Wood 3\"x1\" ( 10\' Above )', 'Ton', 0, NULL, 1, '2022-04-30 03:38:12', '2022-06-23 07:41:39', '3\"x1\"', 48, NULL),
(20, 'Jungle Wood 3\"x1\" ( 10\' Below )', 'Ton', 0, NULL, 1, '2022-04-30 03:38:48', '2022-06-23 07:41:39', '3\"x1\"', 49, NULL),
(21, 'Plywood 8mm ( Film Coated )', 'Sht', 0, NULL, 1, '2022-04-30 03:39:37', '2022-06-23 07:41:39', '8\'x4\'', 50, NULL),
(22, 'Plywood 9mm ( Film Coated )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:03', '2022-06-23 07:41:39', '8\'x4\'', 51, NULL),
(23, 'Plywood 8mm ( Inkanyin )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:35', '2022-06-23 07:41:39', '8\'x4\'', 52, NULL),
(24, 'Plywood 9mm ( Inkanyin )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:56', '2022-06-23 07:41:39', '8\'x4\'', 53, NULL),
(25, 'Brick', 'Nos', 0, NULL, 1, '2022-04-30 04:18:41', '2022-06-23 07:41:39', 'Normal', 54, NULL),
(26, 'River Sand', 'Sud', 0, NULL, 1, '2022-04-30 04:18:59', '2022-06-23 07:41:39', 'null', 55, NULL),
(27, 'River Shingle', 'Sud', 0, NULL, 1, '2022-04-30 04:19:13', '2022-06-23 07:41:39', 'null', 58, NULL),
(28, 'Concrete Block', 'Nos', 0, NULL, 1, '2022-04-30 04:19:57', '2022-06-23 07:41:39', '9\"x9\"', 60, NULL),
(29, 'Concrete Block', 'Nos', 0, NULL, 1, '2022-04-30 04:20:19', '2022-06-23 07:41:39', '11\"x11\"', 61, NULL),
(30, 'Glass Block', 'Nos', 0, NULL, 1, '2022-04-30 04:21:21', '2022-06-23 07:41:39', '8\"x8\"', 62, NULL),
(31, 'Red Oxide', 'Gal', 0, NULL, 1, '2022-04-30 04:21:53', '2022-06-23 07:40:26', 'Master', 27, NULL),
(32, 'Red Oxide', 'Gal', 0, NULL, 1, '2022-04-30 04:22:20', '2022-06-23 07:40:47', 'UniPrime', 28, NULL),
(33, 'Turpentine', 'Gal', 0, NULL, 1, '2022-04-30 04:22:43', '2022-06-23 07:41:39', 'null', 29, NULL),
(34, 'Smooth Putty', 'Bag', 0, NULL, 1, '2022-04-30 04:23:01', '2022-06-23 07:35:06', 'null', 25, NULL),
(35, 'Thinplast Putty', 'Bag', 0, NULL, 1, '2022-04-30 04:25:16', '2022-06-23 07:33:19', 'null', 24, NULL),
(36, '1.5mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:37:57', '2022-06-23 07:36:36', 'null', 63, NULL),
(37, '2.5mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:12', '2022-06-23 07:36:36', 'null', 64, NULL),
(38, '4mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:31', '2022-06-23 07:36:36', 'null', 65, NULL),
(39, '6mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:44', '2022-06-23 07:36:36', 'null', 66, NULL),
(40, '10mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:39:11', '2022-06-23 07:36:36', 'null', 67, NULL),
(41, '1 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:39:33', '2022-06-23 07:36:36', 'null', 68, NULL),
(42, '1 Gang 2 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:40:07', '2022-06-23 07:36:36', 'null', 69, NULL),
(43, '2 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:09', '2022-06-23 07:36:36', 'null', 70, NULL),
(44, '2 Gang 2 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:25', '2022-06-23 07:36:36', 'null', 71, NULL),
(45, '3 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:53', '2022-06-23 07:36:36', 'null', 72, NULL),
(46, '4 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:42:08', '2022-06-23 07:36:36', 'null', 73, NULL),
(47, '5 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:42:21', '2022-06-23 07:36:36', 'null', 74, NULL),
(48, '1\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:07:06', '2022-06-23 07:36:36', 'null', 75, NULL),
(49, '1 1/2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:07:56', '2022-06-23 07:36:36', 'null', 76, NULL),
(50, '2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:08:16', '2022-06-23 07:36:36', 'null', 77, NULL),
(51, 'Wire Tape', 'Coil', 0, NULL, 1, '2022-04-30 06:12:34', '2022-06-23 07:36:36', 'null', 78, NULL),
(52, '1/2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:14', '2022-06-23 07:36:36', 'null', 79, NULL),
(53, '3/4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:29', '2022-06-23 07:36:36', 'null', 80, NULL),
(54, '1\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:42', '2022-06-23 07:36:36', 'null', 81, NULL),
(55, '1 1/4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:59', '2022-06-23 07:36:36', 'null', 82, NULL),
(56, '1 1/2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:21', '2022-06-23 07:36:36', 'null', 83, NULL),
(57, '2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:35', '2022-06-23 07:36:36', 'null', 84, NULL),
(58, '3\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:49', '2022-06-23 07:36:36', 'null', 85, NULL),
(59, '4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:15:02', '2022-06-23 07:36:36', 'null', 86, NULL),
(60, '1/2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:27:16', '2022-06-23 07:36:36', 'null', 87, NULL),
(61, '3/4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:27:39', '2022-06-23 07:36:36', 'null', 88, NULL),
(62, '1\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:06', '2022-06-23 07:36:36', 'null', 89, NULL),
(63, '1 1/4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:24', '2022-06-23 07:36:36', 'null', 90, NULL),
(64, '1 1/2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:24', '2022-06-23 07:36:36', 'null', 91, NULL),
(65, '2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:32:50', '2022-06-23 07:36:36', 'null', 92, NULL),
(66, '3\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:33:03', '2022-06-23 07:36:36', 'null', 93, NULL),
(67, '4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:33:15', '2022-06-23 07:36:36', 'null', 94, NULL),
(68, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:15:08', '2022-06-23 07:36:36', '1\"x1\"', 95, NULL),
(69, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:16:25', '2022-06-23 07:36:36', '1½\"x1½\"', 96, NULL),
(70, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:16:50', '2022-06-23 07:36:36', '2\"x2\"', 97, NULL),
(71, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:17:20', '2022-06-23 07:36:36', '3\"x3\"', 98, NULL),
(72, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:17:37', '2022-06-23 07:36:36', '4\"x4\"', 99, NULL),
(73, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:18:48', '2022-06-23 07:36:36', '2\"x1\"', 100, NULL),
(74, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:19:18', '2022-06-23 07:36:36', '3\"x1½\"', 101, NULL),
(75, 'MS Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:19:43', '2022-06-23 07:36:36', '4\"x2\"', 102, NULL),
(76, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:20:43', '2022-06-23 07:36:36', '1\"x1\"', 103, NULL),
(77, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:21:14', '2022-06-23 07:36:36', '1½\"x1½\"', 104, NULL),
(78, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:21:37', '2022-06-23 07:36:36', '2\"x2\"', 105, NULL),
(79, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:05', '2022-06-23 07:36:36', '3\"x3\"', 106, NULL),
(80, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:21', '2022-06-23 07:36:36', '4\"x4\"', 107, NULL),
(81, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:38', '2022-06-23 07:36:36', '2\"x1\"', 108, NULL),
(82, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:23:04', '2022-06-23 07:36:36', '3\"x1½\"', 109, NULL),
(83, 'GI Hollow Pipe', 'Pcs', 0, NULL, 1, '2022-05-10 15:23:24', '2022-06-23 07:36:36', '4\"x2\"', 110, NULL),
(84, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:24:39', '2022-06-23 07:36:36', '1\"x1\"', 111, NULL),
(85, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:25:22', '2022-06-23 07:36:36', '1¼\"x1¼\"', 112, NULL),
(86, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:25:57', '2022-06-23 07:36:36', '1½\"x1½\"', 113, NULL),
(87, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:12', '2022-06-23 07:36:36', '2\"x2\"', 114, NULL),
(88, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:28', '2022-06-23 07:36:36', '3\"x3\"', 115, NULL),
(89, 'MS Angle Iron', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:43', '2022-06-23 07:36:36', '4\"x4\"', 116, NULL),
(90, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:19:11', '2022-06-23 07:36:36', '10\'Above', 117, NULL),
(91, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:19:21', '2022-06-23 07:36:36', '15\'Above', 118, NULL),
(92, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:22:37', '2022-06-23 07:36:36', '20\'Above', 119, NULL),
(93, 'Bamboo', 'Pcs', 0, NULL, 1, '2022-05-10 16:23:00', '2022-06-23 07:36:36', '25\'Above', 120, NULL),
(94, 'Coir Yarn', 'Viss', 0, NULL, 1, '2022-05-10 16:24:32', '2022-06-23 07:36:36', 'null', 121, NULL),
(95, 'Bakau Pile (Myaw)', 'Pcs', 0, NULL, 1, '2022-05-10 16:26:26', '2022-06-23 07:36:36', '10\'Above', 122, NULL),
(96, 'Bakau Pile (Myaw)', 'Pcs', 0, NULL, 1, '2022-05-10 16:26:43', '2022-06-23 07:36:36', '13\'Above', 123, NULL),
(97, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:27:38', '2022-06-23 07:36:36', '4\'x2\'', 124, NULL),
(98, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:28:33', '2022-06-23 07:36:36', '6\'x3\'', 125, NULL),
(99, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:28:52', '2022-06-23 07:36:36', '8\'x3\'', 126, NULL),
(100, 'Bamboo Mat (Wagat)', 'Sht', 0, NULL, 1, '2022-05-10 16:29:09', '2022-06-23 07:36:36', '10\'x3\'', 127, NULL),
(101, 'PKD Chowket 5\"x2\"', 'Nos', 0, NULL, 1, '2022-06-03 02:46:51', '2022-06-23 07:36:36', 'null', 128, NULL),
(102, 'PKD Chowket 6\"x2\"', 'Nos', 0, NULL, 1, '2022-06-03 02:47:46', '2022-06-23 07:36:36', 'null', 129, NULL),
(103, 'Door Leaf', 'Nos', 0, NULL, 1, '2022-06-03 02:48:32', '2022-06-23 07:36:36', 'null', 130, NULL),
(104, 'Silt Sand', 'Sud', 0, NULL, 1, '2022-06-04 04:11:55', '2022-06-23 07:41:39', 'null', 57, NULL),
(105, 'Concrete Cover Block', 'Nos', 0, NULL, 1, '2022-06-04 04:14:23', '2022-06-23 07:33:19', '20/25', 131, NULL),
(106, 'Concrete Cover Block', 'Nos', 0, NULL, 1, '2022-06-04 04:17:58', '2022-06-23 07:33:19', '20/25/38', 132, NULL),
(107, 'Rough Sand', 'Sud', 0, NULL, 1, '2022-06-04 04:24:10', '2022-06-23 07:41:39', 'null', 56, NULL),
(108, 'Floor Tile ( 1\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:47:40', '2022-06-23 07:36:13', 'null', 133, NULL),
(109, 'Floor Tile ( 2\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:48:12', '2022-06-23 07:36:13', 'null', 134, NULL),
(110, 'Floor Tile ( 2\'x2\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:48:49', '2022-06-23 07:36:13', 'null', 135, NULL),
(111, 'Wall Tile ( 1\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:49:17', '2022-06-23 07:36:13', 'null', 136, NULL),
(112, 'Wall Tile ( 2\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:49:37', '2022-06-23 07:36:13', 'null', 137, NULL),
(113, 'Wall Tile ( 2\'x2\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:58:31', '2022-06-23 07:36:13', 'null', 138, NULL),
(114, 'Decking Sheet', 'Rft', 0, NULL, 1, '2022-06-04 05:04:51', '2022-06-23 07:36:13', 'null', 139, NULL),
(115, 'Hardcore 6\" x 9\"', 'Sud', 0, NULL, 1, '2022-06-07 05:27:43', '2022-06-23 07:36:13', 'null', 140, NULL),
(116, 'Hardcore 4\" x 6\"', 'Sud', 0, NULL, 1, '2022-06-07 05:28:08', '2022-06-23 07:36:13', 'null', 141, NULL),
(117, 'Tarpaulin ( 12\' )', 'Roll', 0, NULL, 1, '2022-06-08 09:31:47', '2022-06-23 07:36:13', 'null', 142, NULL),
(118, '4\"x4\" PKD Wood', 'Ton', 0, NULL, 1, '2022-06-08 09:36:41', '2022-06-23 07:36:13', 'null', 143, NULL),
(119, 'Wire Nail 1\"', 'Viss', 0, NULL, 1, '2022-06-11 02:46:58', '2022-06-23 07:36:13', 'null', 144, NULL),
(120, 'Wire Nail 1¼\"', 'Viss', 0, NULL, 1, '2022-06-11 02:55:16', '2022-06-23 07:36:13', 'null', 145, NULL),
(121, 'Wire Nail 1½\"', 'Viss', 0, NULL, 1, '2022-06-11 02:55:41', '2022-06-23 07:36:13', 'null', 146, NULL),
(122, 'Wire Nail 2\"', 'Viss', 0, NULL, 1, '2022-06-11 02:56:04', '2022-06-23 07:36:13', 'null', 147, NULL),
(123, 'Wire Nail 2½\"', 'Viss', 0, NULL, 1, '2022-06-11 02:57:19', '2022-06-23 07:36:13', 'null', 148, NULL),
(124, 'Wire Nail 3\"', 'Viss', 0, NULL, 1, '2022-06-11 02:57:33', '2022-06-23 07:36:13', 'null', 149, NULL),
(125, 'Wire Nail 4\"', 'Viss', 0, NULL, 1, '2022-06-11 02:57:49', '2022-06-23 07:36:13', 'null', 150, NULL),
(126, 'Binding Wire 16G', 'Coil', 0, NULL, 1, '2022-06-11 03:00:10', '2022-06-23 07:36:13', 'null', 151, NULL),
(127, 'Binding Wire 18G', 'Coil', 0, NULL, 1, '2022-06-11 03:00:25', '2022-06-23 07:36:13', 'null', 152, NULL),
(128, 'Bonding Agent', 'Liter', 0, NULL, 1, '2022-06-14 06:49:13', '2022-06-23 07:41:39', 'null', 32, NULL),
(129, 'Grouting Cement', 'Bag', 0, NULL, 1, '2022-06-14 06:49:38', '2022-06-23 07:41:39', 'null', 30, NULL),
(130, 'Epoxy Set', 'Tin', 0, NULL, 1, '2022-06-14 06:50:10', '2022-06-23 07:41:39', 'null', 31, NULL),
(131, 'Topping  Aggregate', 'Sud', 0, NULL, 1, '2022-06-14 07:41:21', '2022-06-23 07:41:39', 'null', 59, NULL),
(132, '4 Angle Roofing Sheet', 'Rft', 0, NULL, 1, '2022-06-21 08:10:49', '2022-06-23 07:31:33', 'null', 1, NULL),
(133, 'Ridge Cover', 'Rft', 0, NULL, 1, '2022-06-21 08:12:00', '2022-06-23 07:31:33', '1½\'Width', 2, NULL),
(134, 'Ridge Cover', 'Rft', 0, NULL, 1, '2022-06-21 08:13:20', '2022-06-23 07:31:33', '2\'Width', 3, NULL),
(135, 'Smart Wood Board', 'Sht', 0, NULL, 1, '2022-06-21 09:38:52', '2022-06-23 07:31:33', 'null', 4, NULL),
(136, 'Plain Sheet', 'Rft', 0, NULL, 1, '2022-06-21 09:42:44', '2022-06-23 07:31:33', 'null', 5, NULL),
(137, 'Smart Putty', 'Bag', 0, NULL, 1, '2022-06-23 04:19:20', '2022-06-23 07:35:06', 'null', 26, NULL),
(139, 'UPG Orient Sealer ( 18 Lt )', 'Tin', 0, NULL, 1, '2022-06-23 04:20:41', '2022-06-23 07:33:20', 'null', 18, NULL),
(140, 'UPG Orient Sealer ( 7 Lt )', 'Tin', 0, NULL, 1, '2022-06-23 04:21:13', '2022-06-23 07:33:20', 'null', 19, NULL),
(141, 'No.220 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-06-23 04:22:57', '2022-06-23 07:33:20', 'null', 8, NULL),
(142, 'No.8 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-06-23 04:23:23', '2022-06-23 07:33:20', 'null', 6, NULL),
(143, 'No.40 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-06-23 04:23:34', '2022-06-23 07:33:20', 'null', 7, NULL),
(144, 'Putty Plate', 'Nos', 0, NULL, 1, '2022-06-23 04:24:45', '2022-06-23 07:33:20', 'null', 9, NULL),
(145, 'Handle for Abrasive Paper', 'Nos', 0, NULL, 1, '2022-06-23 04:26:03', '2022-06-23 07:33:20', 'null', 10, NULL),
(146, 'Handle for Polish', 'Nos', 0, NULL, 1, '2022-06-23 04:26:30', '2022-06-23 07:33:20', 'null', 11, NULL),
(147, '10\" Roller', 'Nos', 0, NULL, 1, '2022-06-23 07:22:43', '2022-06-23 07:33:20', 'null', 12, NULL),
(148, '7\" Roller', 'Nos', 0, NULL, 1, '2022-06-23 07:22:55', '2022-06-23 07:33:20', 'null', 13, NULL),
(149, '4\" Roller', 'Nos', 0, NULL, 1, '2022-06-23 07:23:06', '2022-06-23 07:33:20', 'null', 14, NULL),
(150, '2\" Paint Brush', 'Nos', 0, NULL, 1, '2022-06-23 07:23:28', '2022-06-23 07:33:20', 'null', 15, NULL),
(151, '3\" Paint Brush', 'Nos', 0, NULL, 1, '2022-06-23 07:24:22', '2022-06-23 07:33:20', 'null', 16, NULL),
(152, '4\" Paint Brush', 'Nos', 0, NULL, 1, '2022-06-23 07:24:33', '2022-06-23 07:33:20', 'null', 17, NULL),
(153, 'Emulsion Paint (Exterior) 18Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:28:58', '2022-06-23 07:33:20', 'null', 20, NULL),
(154, 'Emulsion Paint (Interior) 18Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:29:26', '2022-06-23 07:33:20', 'null', 21, NULL),
(155, 'Emulsion Paint (Exterior) 7Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:29:37', '2022-06-23 07:33:20', 'null', 22, NULL),
(156, 'Emulsion Paint (Interior) 7Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:29:51', '2022-06-23 07:33:20', 'null', 23, NULL);

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
(9, 11, '12mm', '2022-04-30 03:34:04', '2022-04-30 03:34:04'),
(10, 12, '16mm', '2022-04-30 03:34:28', '2022-04-30 03:34:28'),
(11, 13, '20mm', '2022-04-30 03:34:43', '2022-04-30 03:34:43'),
(12, 14, '20mm', '2022-04-30 03:35:00', '2022-04-30 03:35:00'),
(24, 21, '8\'x4\'', '2022-04-30 03:41:28', '2022-04-30 03:41:28'),
(25, 22, '8\'x4\'', '2022-04-30 03:42:03', '2022-04-30 03:42:03'),
(26, 23, '8\'x4\'', '2022-04-30 03:42:35', '2022-04-30 03:42:35'),
(27, 24, '8\'x4\'', '2022-04-30 03:42:56', '2022-04-30 03:42:56'),
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
(79, 113, 'null', '2022-06-04 04:58:49', '2022-06-04 04:58:49'),
(80, 123, 'null', '2022-06-11 02:58:06', '2022-06-11 02:58:06'),
(81, 124, 'null', '2022-06-11 02:58:36', '2022-06-11 02:58:36'),
(82, 17, '3\"x2\"', '2022-06-14 07:15:02', '2022-06-14 07:15:02'),
(86, 18, '3\"x2\"', '2022-06-14 09:00:39', '2022-06-14 09:00:39'),
(87, 19, '3\"x1\"', '2022-06-14 09:01:05', '2022-06-14 09:01:05'),
(88, 20, '3\"x1\"', '2022-06-14 09:01:27', '2022-06-14 09:01:27'),
(89, 5, '10mm', '2022-06-14 09:02:22', '2022-06-14 09:02:22'),
(90, 6, '12mm', '2022-06-14 09:02:47', '2022-06-14 09:02:47'),
(91, 7, '16mm', '2022-06-14 09:03:50', '2022-06-14 09:03:50'),
(92, 8, '20mm', '2022-06-14 09:04:13', '2022-06-14 09:04:13'),
(93, 9, '25mm', '2022-06-14 09:05:23', '2022-06-14 09:05:23'),
(94, 10, '10mm', '2022-06-14 09:06:29', '2022-06-14 09:06:29'),
(95, 15, '6.5mm', '2022-06-14 09:07:07', '2022-06-14 09:07:07'),
(96, 16, '8mm', '2022-06-14 09:07:36', '2022-06-14 09:07:36'),
(98, 126, 'null', '2022-06-16 03:33:12', '2022-06-16 03:33:12'),
(99, 127, 'null', '2022-06-16 03:33:27', '2022-06-16 03:33:27'),
(100, 133, '1½\'Width', '2022-06-21 08:12:00', '2022-06-21 08:12:00'),
(101, 134, '2\'Width', '2022-06-21 08:13:20', '2022-06-21 08:13:20'),
(102, 141, 'null', '2022-06-23 05:08:35', '2022-06-23 05:08:35'),
(103, 131, 'null', '2022-06-23 07:33:56', '2022-06-23 07:33:56');

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

--
-- Dumping data for table `variable_finance_payment_slips`
--

INSERT INTO `variable_finance_payment_slips` (`id`, `user_id`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `finance_payment_slip_file`, `original_name`, `variable_request_info_id`, `remark`, `created_at`, `updated_at`) VALUES
(1, 38, 'finished', '2022-06-09 17:35:00pm', 'public/variable_finance_payment_slip/U21pTzEZKsUhfzzGZaF68Ga1hOCsEnmJmZPTV0uL.jpg', '630000.jpg', 60, 'Daw Soe Sandar Aye (South Okkala) Brick 5000', '2022-06-09 10:35:00', '2022-06-09 10:35:00'),
(2, 38, 'finished', '2022-06-09 17:38:54pm', 'public/variable_finance_payment_slip/n1o1aGKzVuyKtCCkK86rA4aCRRwAwGa86MHicqKf.jpg', '635000.jpg', 35, 'Ko  San Htoo (Thingunkyun) Brick 5000', '2022-06-09 10:38:54', '2022-06-09 10:38:54'),
(3, 38, 'finished', '2022-06-09 17:41:29pm', 'public/variable_finance_payment_slip/juQjDA7zwYARGqxGIDww1JNjJUvkL9LEnf6km3z0.jpg', '620000.jpg', 74, 'Ma Zin War (Mayangone) Brick 50000', '2022-06-09 10:41:29', '2022-06-09 10:41:29'),
(4, 38, 'finished', '2022-06-09 17:44:48pm', 'public/variable_finance_payment_slip/9hAF3Khux3nig4KCTak3T7MtN3qGb4IZOWILCbOD.jpg', '620000.jpg', 75, 'Ma Zin War (Mayangone) Brick 5000', '2022-06-09 10:44:48', '2022-06-09 10:44:48'),
(6, 38, 'finished', '2022-06-20 11:03:32am', 'public/variable_finance_payment_slip/S3cR9DDrTV4zc2tsrJZB5EGtCwIk8qfz5LRj6I5x.jpg', '176,000.jpg', 66, 'PKD', '2022-06-20 04:03:32', '2022-06-20 04:03:32');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_logistics_team_checks`
--

INSERT INTO `variable_logistics_team_checks` (`id`, `variable_request_info_id`, `user_id`, `variable_request_item_id`, `eng_request_qty`, `qs_passed_qty`, `price`, `variable_asset_id`, `created_at`, `updated_at`, `remark`) VALUES
(5, 17, 21, 23, '150', '150', '1800', 92, '2022-05-17 01:47:03', '2022-05-17 01:47:03', NULL),
(6, 17, 21, 24, '15', '8', '0', 94, '2022-05-17 01:47:03', '2022-05-17 01:47:03', NULL),
(7, 17, 21, 23, '150', '150', '1800', 92, '2022-05-17 01:49:36', '2022-05-17 01:49:36', NULL),
(8, 17, 21, 24, '15', '8', '0', 94, '2022-05-17 01:49:36', '2022-05-17 01:49:36', NULL),
(9, 6, 21, 9, '1.5', '1.5', '12000', 26, '2022-05-26 09:07:19', '2022-05-26 09:07:19', NULL),
(10, 5, 21, 8, '1.5', '1.5', '12000', 26, '2022-05-29 08:36:05', '2022-05-29 08:36:05', NULL),
(11, 7, 21, 10, '50', '50', '7900', 4, '2022-05-29 08:51:34', '2022-05-29 08:51:34', NULL),
(12, 7, 21, 11, '1.5', '1.5', '12000', 26, '2022-05-29 08:51:34', '2022-05-29 08:51:34', NULL),
(13, 8, 21, 12, '1', '1', '60000', 27, '2022-05-29 08:53:44', '2022-05-29 08:53:44', NULL),
(14, 9, 21, 13, '50', '50', '7900', 4, '2022-05-29 08:55:47', '2022-05-29 08:55:47', NULL),
(15, 10, 21, 14, '3', '3', '12000', 26, '2022-05-29 08:57:28', '2022-05-29 08:57:28', NULL),
(16, 11, 21, 15, '3000', '3000', '100', 25, '2022-05-29 08:58:34', '2022-05-29 08:58:34', NULL),
(17, 12, 21, 16, '5000', '5000', '113', 25, '2022-05-29 08:59:39', '2022-05-29 08:59:39', NULL),
(18, 13, 21, 17, '30', '30', '8100', 4, '2022-05-29 09:04:05', '2022-05-29 09:04:05', NULL),
(19, 13, 21, 18, '1.5', '1.5', '12000', 26, '2022-05-29 09:04:05', '2022-05-29 09:04:05', NULL),
(20, 13, 21, 19, '1.5', '1.5', '0', 27, '2022-05-29 09:04:05', '2022-05-29 09:04:05', NULL),
(21, 15, 21, 21, '50', '50', '8100', 4, '2022-05-29 09:24:42', '2022-05-29 09:24:42', NULL),
(22, 16, 21, 22, '3000', '5000', '113', 25, '2022-05-29 09:25:39', '2022-05-29 09:25:39', NULL),
(23, 18, 21, 25, '50', '50', '8515', 1, '2022-05-29 09:28:48', '2022-05-29 09:28:48', NULL),
(24, 18, 21, 26, '1.5', '1.5', '60000', 27, '2022-05-29 09:28:48', '2022-05-29 09:28:48', NULL),
(25, 18, 21, 27, '1.5', '1.5', '12000', 26, '2022-05-29 09:28:48', '2022-05-29 09:28:48', NULL),
(26, 19, 21, 28, '40', '40', '8455', 1, '2022-05-29 09:30:59', '2022-05-29 09:30:59', NULL),
(27, 19, 21, 29, '1.5', '1.5', '12000', 26, '2022-05-29 09:30:59', '2022-05-29 09:30:59', NULL),
(28, 19, 21, 30, '2.5', '2.5', '60000', 27, '2022-05-29 09:30:59', '2022-05-29 09:30:59', NULL),
(29, 20, 21, 31, '20', '20', '7800', 4, '2022-05-29 09:32:54', '2022-05-29 09:32:54', NULL),
(30, 22, 21, 34, '1.5', '1.5', '12000', 26, '2022-05-29 09:41:17', '2022-05-29 09:41:17', NULL),
(31, 22, 21, 35, '1.5', '1.5', '60000', 27, '2022-05-29 09:41:17', '2022-05-29 09:41:17', NULL),
(32, 30, 17, 44, '1.5', '1.5', '13000', 26, '2022-06-01 04:25:41', '2022-06-01 04:25:41', NULL),
(33, 28, 21, 42, '3', '3', '13000', 26, '2022-06-01 05:20:59', '2022-06-01 05:20:59', NULL),
(34, 27, 21, 41, '50', '50', '7750', 4, '2022-06-01 07:07:12', '2022-06-01 07:07:12', NULL),
(35, 36, 17, 50, '3', '3', '62000', 26, '2022-06-02 10:17:45', '2022-06-02 10:17:45', NULL),
(36, 41, 21, 55, '30', '30', '7775', 4, '2022-06-03 03:59:03', '2022-06-03 03:59:03', NULL),
(37, 31, 21, 45, '5000', '5000', '120', 25, '2022-06-03 04:01:30', '2022-06-03 04:01:30', NULL),
(38, 35, 21, 49, '10000', '10000', '119', 25, '2022-06-03 04:05:35', '2022-06-03 04:05:35', NULL),
(39, 47, 21, 61, '1.5', '1.5', '13000', 26, '2022-06-03 07:59:39', '2022-06-03 07:59:39', NULL),
(40, 46, 21, 60, '5000', '5000', '120', 25, '2022-06-03 08:02:56', '2022-06-03 08:02:56', NULL),
(41, 29, 21, 43, '25', '25', '20000', 77, '2022-06-03 08:04:24', '2022-06-03 08:04:24', NULL),
(42, 54, 21, 68, '5000', '5000', '122', 25, '2022-06-05 11:53:30', '2022-06-05 11:53:30', NULL),
(43, 52, 21, 66, '35', '35', '7775', 4, '2022-06-05 11:59:23', '2022-06-05 11:59:23', NULL),
(44, 34, 17, 48, '40', '40', '7775', 4, '2022-06-06 03:48:03', '2022-06-06 03:48:03', NULL),
(45, 39, 21, 53, '47', '0.8868', '1245000', 7, '2022-06-06 06:15:39', '2022-06-06 06:15:39', NULL),
(46, 38, 21, 52, '140', '1.037', '1345000', 5, '2022-06-06 06:20:50', '2022-06-06 06:20:50', NULL),
(47, 37, 21, 51, '80', '0.5185', '1025000', 10, '2022-06-06 06:29:49', '2022-06-06 06:29:49', NULL),
(48, 42, 21, 56, '1', '1', '13000', 26, '2022-06-07 03:41:42', '2022-06-07 03:41:42', NULL),
(49, 69, 21, 83, '0.076', '0.076', '1240000', 7, '2022-06-07 08:01:33', '2022-06-07 08:01:33', NULL),
(50, 60, 21, 74, '5000', '5000', '126', 25, '2022-06-07 08:03:35', '2022-06-07 08:03:35', NULL),
(51, 59, 21, 73, '1.5', '1.5', '13000', 26, '2022-06-07 08:05:50', '2022-06-07 08:05:50', NULL),
(52, 56, 21, 70, '1.5', '1.5', '13000', 26, '2022-06-07 08:06:38', '2022-06-07 08:06:38', NULL),
(53, 53, 21, 67, '2', '2', '13000', 26, '2022-06-07 08:07:41', '2022-06-07 08:07:41', NULL),
(54, 45, 21, 59, '50', '50', '7750', 4, '2022-06-07 08:16:23', '2022-06-07 08:16:23', NULL),
(55, 44, 21, 58, '1.5', '1.5', '13000', 26, '2022-06-07 08:21:22', '2022-06-07 08:21:22', NULL),
(56, 32, 21, 46, '5000', '5000', '122', 25, '2022-06-07 08:22:53', '2022-06-07 08:22:53', NULL),
(57, 73, 21, 87, '2', '2', '105000', 116, '2022-06-07 08:24:40', '2022-06-07 08:24:40', NULL),
(58, 66, 21, 80, '2', '2', '78000', 101, '2022-06-07 08:26:40', '2022-06-07 08:26:40', NULL),
(59, 65, 21, 79, '50', '50', '7750', 1, '2022-06-07 08:27:30', '2022-06-07 08:27:30', NULL),
(60, 33, 21, 47, '1.5', '1.5', '13000', 26, '2022-06-07 08:33:35', '2022-06-07 08:33:35', NULL),
(61, 63, 21, 77, '1.5', '1.5', '64000', 27, '2022-06-07 08:38:52', '2022-06-07 08:38:52', NULL),
(62, 61, 21, 75, '50', '50', '7750', 1, '2022-06-07 09:27:55', '2022-06-07 09:27:55', NULL),
(63, 57, 18, 71, '1', '1.5', '64000', 27, '2022-06-07 10:15:22', '2022-06-07 10:15:22', NULL),
(64, 55, 18, 69, '3', '3', '13000', 104, '2022-06-07 10:17:25', '2022-06-07 10:17:25', NULL),
(65, 72, 21, 86, '1', '1', '1250000', 10, '2022-06-08 04:33:15', '2022-06-08 04:33:15', NULL),
(66, 71, 21, 85, '2', '2', '1200000', 7, '2022-06-08 04:34:00', '2022-06-08 04:34:00', NULL),
(67, 70, 21, 84, '1', '1', '1030000', 8, '2022-06-08 04:43:14', '2022-06-08 04:43:14', NULL),
(68, 76, 21, 90, '3', '3', '13000', 26, '2022-06-08 05:02:20', '2022-06-08 05:02:20', NULL),
(69, 62, 21, 76, '1.5', '1.5', '13000', 26, '2022-06-08 05:12:29', '2022-06-08 05:12:29', NULL),
(70, 67, 21, 81, '1', '1', '30250', 83, '2022-06-08 07:25:37', '2022-06-08 07:25:37', NULL),
(71, 43, 21, 57, '30', '30', '29000', 22, '2022-06-08 09:00:10', '2022-06-08 09:00:10', NULL),
(72, 24, 21, 38, '3', '3', '13000', 26, '2022-06-08 09:19:03', '2022-06-08 09:19:03', NULL),
(73, 74, 18, 88, '1.5', '0', '12000', 26, '2022-06-09 09:24:28', '2022-06-09 09:24:28', NULL),
(74, 97, 18, 120, '1.5', '1.5', '13000', 26, '2022-06-10 07:08:32', '2022-06-10 07:08:32', NULL),
(75, 101, 21, 124, '1', '1', '13000', 26, '2022-06-11 03:09:26', '2022-06-11 03:09:26', NULL),
(76, 99, 21, 122, '1', '1', '13000', 26, '2022-06-11 03:18:19', '2022-06-11 03:18:19', NULL),
(77, 85, 21, 101, '2', '2', '300000', 117, '2022-06-11 03:26:09', '2022-06-11 03:26:09', NULL),
(78, 85, 21, 102, '1', '0.75', '750000', 17, '2022-06-11 03:26:09', '2022-06-11 03:26:09', NULL),
(79, 85, 21, 103, '1.5', '1.5', '13000', 26, '2022-06-11 03:26:09', '2022-06-11 03:26:09', NULL),
(80, 58, 21, 72, '3000', '3000', '106', 25, '2022-06-11 03:31:16', '2022-06-11 03:31:16', NULL),
(81, 96, 21, 119, '1000', '1000', '106', 25, '2022-06-11 03:31:46', '2022-06-11 03:31:46', NULL),
(82, 98, 21, 121, '1.5', '1.5', '12000', 26, '2022-06-11 03:41:55', '2022-06-11 03:41:55', NULL),
(83, 95, 21, 118, '1500', '1500', '35', 106, '2022-06-11 03:42:57', '2022-06-11 03:42:57', NULL),
(84, 93, 21, 115, '30', '30', '7825', 4, '2022-06-11 03:44:00', '2022-06-11 03:44:00', NULL),
(85, 81, 21, 95, '57', '0.4222', '1000000', 10, '2022-06-11 03:55:35', '2022-06-11 03:55:35', NULL),
(86, 80, 21, 94, '48', '0.9057', '1210000', 7, '2022-06-11 03:57:02', '2022-06-11 03:57:02', NULL),
(87, 107, 21, 131, '1.5', '1.5', '13000', 26, '2022-06-11 04:15:36', '2022-06-11 04:15:36', NULL),
(88, 107, 21, 132, '1.5', '1.5', '64000', 27, '2022-06-11 04:15:36', '2022-06-11 04:15:36', NULL),
(89, 105, 21, 129, '1.5', '1.5', '13000', 26, '2022-06-11 04:24:40', '2022-06-11 04:24:40', NULL),
(90, 104, 21, 128, '50', '100', '7750', 4, '2022-06-11 04:28:44', '2022-06-11 04:28:44', NULL),
(91, 21, 18, 32, '1.5', '1.5', '12000', 26, '2022-06-11 05:04:55', '2022-06-11 05:04:55', NULL),
(92, 21, 18, 33, '1.5', '1.5', '60000', 27, '2022-06-11 05:04:55', '2022-06-11 05:04:55', NULL),
(93, 91, 21, 112, '39', '39', '7750', 1, '2022-06-11 05:11:12', '2022-06-11 05:11:12', NULL),
(94, 91, 21, 113, '3', '3', '13000', 26, '2022-06-11 05:11:12', '2022-06-11 05:11:12', NULL),
(95, 90, 21, 110, '27', '27', '7750', 1, '2022-06-11 05:15:43', '2022-06-11 05:15:43', NULL),
(96, 90, 21, 111, '1', '1', '13000', 26, '2022-06-11 05:15:43', '2022-06-11 05:15:43', NULL),
(97, 83, 21, 97, '50', '50', '7750', 4, '2022-06-11 05:18:27', '2022-06-11 05:18:27', NULL),
(98, 23, 18, 36, '1.5', '1.5', '12000', 26, '2022-06-11 05:18:37', '2022-06-11 05:18:37', NULL),
(99, 23, 18, 37, '1.5', '1.5', '18000', 27, '2022-06-11 05:18:37', '2022-06-11 05:18:37', NULL),
(100, 114, 21, 142, '1', '1', '750000', 17, '2022-06-13 09:57:42', '2022-06-13 09:57:42', NULL),
(101, 115, 21, 143, '15', '15', '29290', 22, '2022-06-13 10:00:14', '2022-06-13 10:00:14', NULL),
(102, 92, 21, 114, '5000', '5000', '125', 25, '2022-06-13 10:01:19', '2022-06-13 10:01:19', NULL),
(103, 106, 21, 130, '1', '1', '90000', 15, '2022-06-13 10:04:11', '2022-06-13 10:04:11', NULL),
(104, 120, 21, 150, '5000', '5000', '125', 25, '2022-06-13 10:06:59', '2022-06-13 10:06:59', NULL),
(105, 117, 21, 146, '5000', '5000', '115', 25, '2022-06-13 10:07:26', '2022-06-13 10:07:26', NULL),
(106, 113, 18, 140, '1.5', '1.5', '13000', 26, '2022-06-14 03:56:25', '2022-06-14 03:56:25', NULL),
(107, 113, 18, 141, '1.5', '1.5', '65000', 27, '2022-06-14 03:56:25', '2022-06-14 03:56:25', NULL),
(108, 131, 21, 166, '162', '162', '3050', 30, '2022-06-14 08:28:48', '2022-06-14 08:28:48', NULL),
(109, 135, 21, 171, '40', '40', '7800', 1, '2022-06-14 11:13:38', '2022-06-14 11:13:38', NULL),
(110, 134, 21, 170, '10', '10', '7750', 4, '2022-06-14 11:14:53', '2022-06-14 11:14:53', NULL),
(111, 133, 21, 169, '6', '6', '13000', 26, '2022-06-14 11:16:28', '2022-06-14 11:16:28', NULL),
(112, 125, 21, 156, '1.5', '1.5', '64000', 27, '2022-06-14 11:18:01', '2022-06-14 11:18:01', NULL),
(113, 124, 21, 155, '1.5', '1.5', '13000', 26, '2022-06-14 11:19:10', '2022-06-14 11:19:10', NULL),
(114, 108, 21, 133, '15', '15', '3500', 95, '2022-06-14 11:21:36', '2022-06-14 11:21:36', NULL),
(115, 108, 21, 134, '10', '10', '1500', 97, '2022-06-14 11:21:36', '2022-06-14 11:21:36', NULL),
(116, 140, 21, 176, '1.5', '1.5', '65000', 27, '2022-06-15 03:34:01', '2022-06-15 03:34:01', NULL),
(117, 143, 21, 179, '1.5', '1.5', '13000', 26, '2022-06-15 03:36:42', '2022-06-15 03:36:42', NULL),
(118, 142, 21, 178, '1.5', '1.5', '13000', 26, '2022-06-15 03:37:41', '2022-06-15 03:37:41', NULL),
(119, 141, 21, 177, '1.5', '1.5', '13000', 26, '2022-06-15 03:39:47', '2022-06-15 03:39:47', NULL),
(120, 136, 21, 172, '1000', '1000', '113', 25, '2022-06-15 03:45:55', '2022-06-15 03:45:55', NULL),
(121, 138, 21, 174, '100', '100', '7750', 4, '2022-06-15 06:26:38', '2022-06-15 06:26:38', NULL),
(122, 132, 21, 167, '80', '80', '7750', 4, '2022-06-15 06:29:11', '2022-06-15 06:29:11', NULL),
(123, 132, 21, 168, '1.5', '1.5', '64000', 27, '2022-06-15 06:29:11', '2022-06-15 06:29:11', NULL),
(124, 137, 18, 173, '1.5', '1.5', '12000', 26, '2022-06-15 07:25:14', '2022-06-15 07:25:14', NULL),
(125, 147, 17, 183, '1.5', '1.5', '68000', 131, '2022-06-15 08:13:30', '2022-06-15 08:13:30', NULL),
(126, 147, 17, 183, '1.5', '1.5', '68000', 131, '2022-06-15 08:40:09', '2022-06-15 08:40:09', NULL),
(127, 149, 21, 185, '40', '40', '3500', 95, '2022-06-15 08:58:29', '2022-06-15 08:58:29', NULL),
(128, 146, 17, 182, '1.5', '1.5', '13000', 26, '2022-06-15 09:16:21', '2022-06-15 09:16:21', NULL),
(129, 146, 17, 182, '1.5', '1.5', '13000', 26, '2022-06-15 09:16:33', '2022-06-15 09:16:33', NULL),
(130, 145, 17, 181, '1.5', '1.5', '13000', 26, '2022-06-15 09:20:25', '2022-06-15 09:20:25', NULL),
(131, 144, 17, 180, '1.5', '1.5', '13000', 26, '2022-06-15 09:21:25', '2022-06-15 09:21:25', NULL),
(132, 139, 17, 175, '100', '80', '7750', 4, '2022-06-15 09:27:57', '2022-06-15 09:27:57', NULL),
(133, 130, 17, 162, '40', '40', '7750', 4, '2022-06-15 10:16:44', '2022-06-15 10:16:44', NULL),
(134, 130, 17, 163, '3', '3', '13000', 26, '2022-06-15 10:16:44', '2022-06-15 10:16:44', NULL),
(135, 130, 17, 164, '5000', '5000', '125', 25, '2022-06-15 10:16:44', '2022-06-15 10:16:44', NULL),
(136, 130, 17, 165, '2', '2', '64000', 27, '2022-06-15 10:16:44', '2022-06-15 10:16:44', NULL),
(137, 129, 17, 160, '50', '50', '7750', 4, '2022-06-15 10:27:11', '2022-06-15 10:27:11', NULL),
(138, 129, 17, 161, '5', '4', '13000', 26, '2022-06-15 10:27:11', '2022-06-15 10:27:11', NULL),
(139, 123, 17, 154, '1.5', '1.5', '13000', 26, '2022-06-15 10:30:12', '2022-06-15 10:30:12', NULL),
(140, 122, 17, 153, '1.5', '1.5', '13000', 26, '2022-06-15 10:32:02', '2022-06-15 10:32:02', NULL),
(141, 121, 17, 151, '33', '0.62', '1165000', 7, '2022-06-15 10:34:40', '2022-06-15 10:34:40', NULL),
(142, 121, 17, 152, '21', '0.64', '1195000', 8, '2022-06-15 10:34:40', '2022-06-15 10:34:40', NULL),
(143, 119, 17, 149, '1.5', '1.5', '13000', 26, '2022-06-15 10:36:04', '2022-06-15 10:36:04', NULL),
(144, 116, 17, 144, '65', '0.48', '955000', 10, '2022-06-15 10:38:55', '2022-06-15 10:38:55', NULL),
(145, 116, 17, 145, '20', '0.22', '1105000', 6, '2022-06-15 10:38:55', '2022-06-15 10:38:55', NULL),
(146, 151, 21, 187, '1', '1', '13000', 26, '2022-06-16 04:20:16', '2022-06-16 04:20:16', NULL),
(147, 150, 21, 186, '1', '1', '13000', 26, '2022-06-16 04:20:48', '2022-06-16 04:20:48', NULL),
(148, 153, 21, 192, '3', '3', '13000', 26, '2022-06-16 04:49:08', '2022-06-16 04:49:08', NULL),
(149, 118, 21, 147, '10000', '10000', '126', 25, '2022-06-16 05:09:57', '2022-06-16 05:09:57', NULL),
(150, 118, 21, 148, '2', '1.7556', '1275000', 5, '2022-06-16 05:09:57', '2022-06-16 05:09:57', NULL),
(151, 148, 21, 184, '3', '3', '13000', 107, '2022-06-16 06:45:04', '2022-06-16 06:45:04', NULL),
(152, 86, 21, 104, '100', '100', '7800', 1, '2022-06-16 07:22:39', '2022-06-16 07:22:39', NULL),
(153, 75, 21, 89, '50', '0', '7800', 4, '2022-06-16 07:26:33', '2022-06-16 07:26:33', NULL),
(154, 155, 21, 194, '1.5', '1.5', '13000', 26, '2022-06-16 08:04:25', '2022-06-16 08:04:25', NULL),
(155, 157, 21, 196, '0.7', '0.7', '750000', 19, '2022-06-16 08:11:38', '2022-06-16 08:11:38', NULL),
(156, 154, 21, 193, '1.5', '1.5', '68000', 131, '2022-06-16 08:12:58', '2022-06-16 08:12:58', NULL),
(157, 152, 21, 188, '1.5', '1.5', '13000', 26, '2022-06-16 08:14:46', '2022-06-16 08:14:46', NULL),
(158, 152, 21, 189, '1', '1', '53000', 127, '2022-06-16 08:14:46', '2022-06-16 08:14:46', NULL),
(159, 152, 21, 190, '5', '5', '4200', 121, '2022-06-16 08:14:46', '2022-06-16 08:14:46', NULL),
(160, 152, 21, 191, '5', '5', '4000', 122, '2022-06-16 08:14:46', '2022-06-16 08:14:46', NULL),
(161, 170, 17, 210, '50', '50', '7800', 1, '2022-06-21 03:16:17', '2022-06-21 03:16:17', NULL),
(162, 170, 17, 211, '1.5', '1.5', '13000', 26, '2022-06-21 03:16:17', '2022-06-21 03:16:17', NULL),
(163, 170, 17, 212, '1.5', '1.5', '64000', 27, '2022-06-21 03:16:17', '2022-06-21 03:16:17', NULL),
(164, 160, 21, 199, '40', '40', '7800', 4, '2022-06-21 03:25:11', '2022-06-21 03:25:11', NULL),
(165, 169, 21, 208, '35', '35', '7800', 1, '2022-06-21 03:26:35', '2022-06-21 03:26:35', NULL),
(166, 169, 21, 209, '2', '2', '13000', 26, '2022-06-21 03:26:35', '2022-06-21 03:26:35', NULL),
(167, 166, 21, 205, '1.5', '1.5', '13000', 26, '2022-06-21 03:29:33', '2022-06-21 03:29:33', NULL),
(168, 165, 21, 204, '50', '50', '7800', 4, '2022-06-21 03:30:30', '2022-06-21 03:30:30', NULL),
(169, 172, 21, 216, '50', '50', '7800', 1, '2022-06-21 03:31:25', '2022-06-21 03:31:25', NULL),
(170, 172, 21, 217, '1.5', '1.5', '13000', 26, '2022-06-21 03:31:25', '2022-06-21 03:31:25', NULL),
(171, 172, 21, 218, '1.5', '1.5', '64000', 27, '2022-06-21 03:31:25', '2022-06-21 03:31:25', NULL),
(172, 164, 21, 203, '1.5', '1.5', '13000', 26, '2022-06-21 03:32:46', '2022-06-21 03:32:46', NULL),
(173, 161, 21, 200, '3', '3', '68000', 131, '2022-06-21 03:36:43', '2022-06-21 03:36:43', NULL),
(174, 168, 21, 207, '1.5', '1.5', '13000', 26, '2022-06-21 03:59:24', '2022-06-21 03:59:24', NULL),
(175, 158, 21, 197, '100', '100', '7800', 1, '2022-06-21 04:12:30', '2022-06-21 04:12:30', NULL),
(176, 173, 17, 219, '60', '60', '7800', 4, '2022-06-22 10:06:03', '2022-06-22 10:06:03', NULL),
(177, 178, 21, 227, '20', '20', '1400', 136, '2022-06-23 03:19:59', '2022-06-23 03:19:59', NULL),
(178, 178, 21, 228, '3', '3', '6500', 135, '2022-06-23 03:19:59', '2022-06-23 03:19:59', NULL),
(179, 178, 21, 229, '2', '2', '12500', 133, '2022-06-23 03:19:59', '2022-06-23 03:19:59', NULL),
(180, 100, 21, 123, '5000', '5000', '126', 25, '2022-06-23 03:25:17', '2022-06-23 03:25:17', NULL),
(181, 167, 21, 206, '30', '30', '1500', 98, '2022-06-23 03:36:04', '2022-06-23 03:36:04', NULL),
(182, 181, 21, 232, '1.3', '1.5', '64000', 27, '2022-06-23 03:49:59', '2022-06-23 03:49:59', NULL),
(183, 183, 18, 234, '20', '20', '7800', 4, '2022-06-23 03:59:45', '2022-06-23 03:59:45', NULL),
(184, 191, 21, 242, '50', '50', '7800', 4, '2022-06-23 08:02:21', '2022-06-23 08:02:21', NULL),
(185, 189, 21, 240, '100', '100', '1800', 93, '2022-06-23 08:04:12', '2022-06-23 08:04:12', NULL),
(186, 188, 21, 239, '1.5', '1.5', '13000', 26, '2022-06-23 08:05:11', '2022-06-23 08:05:11', NULL),
(187, 180, 21, 231, '50', '50', '7800', 1, '2022-06-23 08:08:00', '2022-06-23 08:08:00', NULL),
(188, 177, 21, 226, '1.5', '1.5', '13000', 26, '2022-06-23 08:09:08', '2022-06-23 08:09:08', NULL),
(189, 176, 21, 225, '1', '1', '38300', 130, '2022-06-23 08:11:17', '2022-06-23 08:11:17', NULL),
(190, 185, 21, 236, '1.8', '1.8', '1260000', 5, '2022-06-23 09:26:15', '2022-06-23 09:26:15', NULL),
(191, 179, 21, 230, '30', '25', '13000', 104, '2022-06-24 03:30:10', '2022-06-24 03:30:10', NULL),
(192, 159, 21, 198, '5000', '5000', '129', 25, '2022-06-24 03:34:20', '2022-06-24 03:34:20', NULL),
(193, 194, 21, 250, '4', '4', '2500', 147, '2022-06-24 04:19:50', '2022-06-24 04:19:50', NULL),
(194, 194, 21, 251, '4', '4', '1200', 151, '2022-06-24 04:19:50', '2022-06-24 04:19:50', NULL),
(195, 193, 21, 245, '5', '5', '2500', 141, '2022-06-24 04:29:59', '2022-06-24 04:29:59', NULL),
(196, 193, 21, 246, '1', '1', '12000', 143, '2022-06-24 04:29:59', '2022-06-24 04:29:59', NULL),
(197, 193, 21, 247, '4', '4', '500', 144, '2022-06-24 04:29:59', '2022-06-24 04:29:59', NULL),
(198, 193, 21, 248, '3', '3', '2000', 145, '2022-06-24 04:29:59', '2022-06-24 04:29:59', NULL),
(199, 193, 21, 249, '4', '4', '2000', 146, '2022-06-24 04:29:59', '2022-06-24 04:29:59', NULL),
(200, 192, 21, 243, '40', '40', '10000', 34, '2022-06-24 04:31:07', '2022-06-24 04:31:07', NULL),
(201, 192, 21, 244, '5', '4', '93000', 139, '2022-06-24 04:31:07', '2022-06-24 04:31:07', NULL);

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
(5, 1, 'YGN_MYG_00009', '2022-05-30 12:00 AM', '22', '20', '2022-05-30 09:14:36', '2022-05-30 09:14:36', 11, NULL),
(6, 1, 'YGN_MYG_00009', '2022-06-07 04:00 PM', '21', '66', '2022-06-07 09:40:25', '2022-06-07 09:40:25', 11, NULL),
(7, 1, 'YGN_ND_00006', '2022-06-07 09:00 PM', '21', '69', '2022-06-07 14:33:12', '2022-06-07 14:33:12', 8, NULL),
(8, 1, 'YGN_TKT_00020', '2022-06-07 09:00 PM', '21', '65', '2022-06-07 14:34:10', '2022-06-07 14:34:10', 21, NULL),
(9, 1, 'YGN_TKT_00020', '2022-06-07 09:00 PM', '21', '65', '2022-06-07 14:35:04', '2022-06-07 14:35:04', 21, NULL),
(10, 1, 'YGN_TKT_00016', '2022-06-07 09:00 PM', '21', '63', '2022-06-07 14:35:50', '2022-06-07 14:35:50', 17, NULL),
(11, 1, 'YGN- SOKL- 00002', '2022-06-07 09:00 PM', '21', '60', '2022-06-07 14:36:21', '2022-06-07 14:36:21', 4, NULL),
(12, 1, 'YGN- SOKL- 00002', '2022-06-07 09:00 PM', '21', '59', '2022-06-07 14:37:01', '2022-06-07 14:37:01', 4, NULL),
(13, 1, 'YGN_SOKL_00003', '2022-06-07 09:00 PM', '21', '56', '2022-06-07 14:37:29', '2022-06-07 14:37:29', 5, NULL),
(14, 1, 'YGN_TGG_00010', '2022-06-07 09:00 PM', '21', '52', '2022-06-07 14:37:55', '2022-06-07 14:37:55', 12, NULL),
(15, 1, 'YGN_DGSK_0001', '2022-06-07 09:00 PM', '21', '54', '2022-06-07 14:38:47', '2022-06-07 14:38:47', 2, NULL),
(16, 1, 'YGN_TGG_00010', '2022-06-07 09:00 PM', '21', '53', '2022-06-07 14:39:17', '2022-06-07 14:39:17', 12, NULL),
(17, 1, 'YGN_TKT_00020', '2022-06-07 09:00 PM', '21', '47', '2022-06-07 14:40:21', '2022-06-07 14:40:21', 21, NULL),
(18, 1, 'YGN_MYG_00012', '2022-06-07 09:00 PM', '21', '46', '2022-06-07 14:40:49', '2022-06-07 14:40:49', 14, NULL),
(19, 1, 'YGN- SOKL- 00002', '2022-06-07 09:00 PM', '21', '45', '2022-06-07 14:41:21', '2022-06-07 14:41:21', 4, NULL),
(20, 1, 'YGN- SOKL- 00002', '2022-06-07 09:00 PM', '21', '44', '2022-06-07 14:41:51', '2022-06-07 14:41:51', 4, NULL),
(21, 1, 'YGN_ND_00006', '2022-06-07 09:00 PM', '21', '42', '2022-06-07 14:42:35', '2022-06-07 14:42:35', 8, NULL),
(22, 1, 'YGN_ND_00006', '2022-06-07 09:00 PM', '21', '41', '2022-06-07 14:43:13', '2022-06-07 14:43:13', 8, NULL),
(23, 1, 'YGN_TGG_00005', '2022-06-07 09:00 PM', '21', '39', '2022-06-07 14:43:44', '2022-06-07 14:43:44', 7, NULL),
(24, 1, 'YGN_MYG_00012', '2022-06-07 09:00 PM', '21', '5', '2022-06-07 14:44:41', '2022-06-07 14:44:41', 14, NULL),
(25, 1, 'YGN_TGG_00005', '2022-06-07 09:00 PM', '21', '34', '2022-06-07 14:45:20', '2022-06-07 14:45:20', 7, NULL),
(26, 1, 'YGN_TGG_00005', '2022-06-07 09:00 PM', '21', '38', '2022-06-07 14:46:20', '2022-06-07 14:46:20', 7, NULL),
(27, 1, 'YGN_TKT_00016', '2022-06-07 09:00 PM', '21', '61', '2022-06-07 14:47:12', '2022-06-07 14:47:12', 17, NULL),
(28, 1, 'YGN_TGG_00005', '2022-06-07 09:00 PM', '21', '37', '2022-06-07 14:54:15', '2022-06-07 14:54:15', 7, NULL),
(29, 1, 'YGN_TGG_00005', '2022-06-07 09:00 PM', '21', '36', '2022-06-07 14:54:47', '2022-06-07 14:54:47', 7, NULL),
(30, 1, 'YGN_TGG_00005', '2022-06-07 09:00 PM', '21', '35', '2022-06-07 14:55:28', '2022-06-07 14:55:28', 7, NULL),
(31, 1, 'YGN_SOKL_00003', '2022-06-07 09:00 PM', '21', '33', '2022-06-07 14:56:14', '2022-06-07 14:56:14', 5, NULL),
(32, 1, 'YGN_SOKL_00003', '2022-06-07 09:00 PM', '21', '32', '2022-06-07 14:56:51', '2022-06-07 14:56:51', 5, NULL),
(33, 1, 'YGN_MYG_00009', '2022-06-07 09:00 PM', '21', '31', '2022-06-07 14:57:40', '2022-06-07 14:57:40', 11, NULL),
(34, 1, 'YGN_TKT_00020', '2022-06-07 09:00 PM', '21', '57', '2022-06-07 14:59:42', '2022-06-07 14:59:42', 21, NULL),
(35, 1, 'YGN- SOKL- 00002', '2022-06-07 10:00 PM', '21', '30', '2022-06-07 15:00:43', '2022-06-07 15:00:43', 4, NULL),
(36, 1, 'YGN_MYG_00009', '2022-06-07 10:00 PM', '21', '29', '2022-06-07 15:01:36', '2022-06-07 15:01:36', 11, NULL),
(37, 1, 'YGN_DGSK_0001', '2022-06-07 10:00 PM', '21', '28', '2022-06-07 15:02:38', '2022-06-07 15:02:38', 2, NULL),
(38, 1, 'YGN_DGSK_0001', '2022-06-07 10:00 PM', '21', '27', '2022-06-07 15:03:22', '2022-06-07 15:03:22', 2, NULL),
(39, 1, 'YGN_DGSK_0001', '2022-06-07 10:00 PM', '21', '27', '2022-06-07 15:03:23', '2022-06-07 15:03:23', 2, NULL),
(40, 1, 'YGN_MYG_00012', '2022-06-07 10:00 PM', '21', '22', '2022-06-07 15:04:48', '2022-06-07 15:04:48', 14, NULL),
(41, 1, 'YGN_MYG_00009', '2022-06-07 10:00 PM', '21', '19', '2022-06-07 15:05:45', '2022-06-07 15:05:45', 11, NULL),
(42, 1, 'YGN_ND_00006', '2022-06-07 10:00 PM', '21', '17', '2022-06-07 15:06:45', '2022-06-07 15:06:45', 8, NULL),
(43, 1, 'YGN- SOKL- 00002', '2022-06-07 10:00 PM', '21', '12', '2022-06-07 15:11:55', '2022-06-07 15:11:55', 4, NULL),
(44, 1, 'YGN_MYG_00012', '2022-06-07 10:00 PM', '21', '11', '2022-06-07 15:12:38', '2022-06-07 15:12:38', 14, NULL),
(45, 1, 'YGN_DP_00004', '2022-06-07 10:00 PM', '21', '9', '2022-06-07 15:13:40', '2022-06-07 15:13:40', 6, NULL),
(46, 1, 'YGN_MYG_00012', '2022-06-07 10:00 PM', '21', '6', '2022-06-07 15:15:02', '2022-06-07 15:15:02', 14, NULL),
(47, 1, 'YGN- SOKL- 00002', '2022-06-07 10:00 PM', '21', '7', '2022-06-07 15:17:20', '2022-06-07 15:17:20', 4, NULL),
(48, 1, 'YGN_SOKL_00003', '2022-06-07 10:00 PM', '21', '8', '2022-06-07 15:18:14', '2022-06-07 15:18:14', 5, NULL),
(49, 1, 'YGN_SOKL_00003', '2022-06-07 10:00 PM', '21', '8', '2022-06-07 15:18:14', '2022-06-07 15:18:14', 5, NULL),
(50, 1, 'YGN_DP_00004', '2022-06-07 10:00 PM', '21', '10', '2022-06-07 15:19:18', '2022-06-07 15:19:18', 6, NULL),
(51, 1, 'YGN_SOKL_00003', '2022-06-07 10:00 PM', '21', '16', '2022-06-07 15:21:01', '2022-06-07 15:21:01', 5, NULL),
(52, 1, 'YGN_MYG_00012', '2022-06-08 12:00 PM', '21', '55', '2022-06-08 05:18:37', '2022-06-08 05:18:37', 14, NULL),
(53, 1, 'YGN_TKT_00016', '2022-06-08 03:00 PM', '21', '72', '2022-06-08 08:50:50', '2022-06-08 08:50:50', 17, NULL),
(54, 1, 'YGN_TKT_00016', '2022-06-08 03:00 PM', '21', '71', '2022-06-08 08:51:21', '2022-06-08 08:51:21', 17, NULL),
(55, 1, 'YGN_TKT_00016', '2022-06-08 03:00 PM', '21', '70', '2022-06-08 08:53:25', '2022-06-08 08:53:25', 17, NULL),
(56, 1, 'YGN_TGG_00005', '2022-06-08 03:00 PM', '21', '76', '2022-06-08 08:54:33', '2022-06-08 08:54:33', 7, NULL),
(57, 1, 'YGN_DGSK_0001', '2022-06-08 03:00 PM', '21', '67', '2022-06-08 08:55:29', '2022-06-08 08:55:29', 2, NULL),
(58, 1, 'YGN_TKT_00016', '2022-06-08 03:00 PM', '21', '62', '2022-06-08 08:56:32', '2022-06-08 08:56:32', 17, NULL),
(59, 1, 'YGN_TKT_00016', '2022-06-16 11:00 AM', '21', '149', '2022-06-16 04:32:38', '2022-06-16 04:32:38', 17, NULL),
(60, 1, 'YGN_SOKL_00003', '2022-06-16 11:00 AM', '21', '145', '2022-06-16 04:33:05', '2022-06-16 04:33:05', 5, NULL),
(61, 1, 'YGN_SOKL_00003', '2022-06-16 11:00 AM', '21', '144', '2022-06-16 04:33:53', '2022-06-16 04:33:53', 5, NULL),
(62, 1, 'YGN- SOKL- 00002', '2022-06-16 11:00 AM', '21', '143', '2022-06-16 04:34:23', '2022-06-16 04:34:23', 4, NULL),
(63, 1, 'YGN- SOKL- 00002', '2022-06-16 11:00 AM', '21', '142', '2022-06-16 04:35:02', '2022-06-16 04:35:02', 4, NULL),
(64, 1, 'YGN- SOKL- 00002', '2022-06-16 11:00 AM', '21', '141', '2022-06-16 04:35:29', '2022-06-16 04:35:29', 4, NULL),
(65, 1, 'YGN_MYG_00012', '2022-06-16 11:00 AM', '21', '140', '2022-06-16 04:36:07', '2022-06-16 04:36:07', 14, NULL),
(66, 1, 'YGN_SOKL_00003', '2022-06-16 11:00 AM', '21', '139', '2022-06-16 04:36:55', '2022-06-16 04:36:55', 5, NULL),
(67, 1, 'YGN- SOKL- 00002', '2022-06-16 11:00 AM', '21', '138', '2022-06-16 04:50:04', '2022-06-16 04:50:04', 4, NULL),
(68, 1, 'YGN_MYG_00009', '2022-06-16 11:00 AM', '21', '137', '2022-06-16 04:50:31', '2022-06-16 04:50:31', 11, NULL),
(69, 1, 'YGN_TKT_00020', '2022-06-16 11:00 AM', '21', '136', '2022-06-16 04:51:25', '2022-06-16 04:51:25', 21, NULL),
(70, 1, 'YGN_TKT_00020', '2022-06-16 12:00 PM', '21', '134', '2022-06-16 05:14:46', '2022-06-16 05:14:46', 21, NULL),
(71, 1, 'YGN_TKT_00020', '2022-06-16 12:00 PM', '21', '133', '2022-06-16 05:15:25', '2022-06-16 05:15:25', 21, NULL),
(72, 1, 'YGN_TKT_00007', '2022-06-16 12:00 PM', '21', '132', '2022-06-16 05:16:19', '2022-06-16 05:16:19', 9, NULL),
(73, 1, 'YGN_ND_00006', '2022-06-16 12:00 PM', '21', '131', '2022-06-16 05:16:51', '2022-06-16 05:16:51', 8, NULL),
(74, 1, 'YGN_TGG_00005', '2022-06-16 12:00 PM', '21', '130', '2022-06-16 05:17:35', '2022-06-16 05:17:35', 7, NULL),
(75, 1, 'YGN_TGG_00005', '2022-06-16 12:00 PM', '21', '130', '2022-06-16 05:18:51', '2022-06-16 05:18:51', 7, NULL),
(76, 1, 'YGN_TKT_00007', '2022-06-16 12:00 PM', '21', '129', '2022-06-16 05:19:34', '2022-06-16 05:19:34', 9, NULL),
(77, 1, 'YGN_TKT_00007', '2022-06-16 12:00 PM', '21', '129', '2022-06-16 05:20:32', '2022-06-16 05:20:32', 9, NULL),
(78, 1, 'YGN_TKT_00007', '2022-06-16 12:00 PM', '21', '129', '2022-06-16 05:21:13', '2022-06-16 05:21:13', 9, NULL),
(79, 1, 'YGN_TKT_00020', '2022-06-16 12:00 PM', '21', '125', '2022-06-16 05:21:59', '2022-06-16 05:21:59', 21, NULL),
(80, 1, 'YGN_TKT_00020', '2022-06-16 12:00 PM', '21', '124', '2022-06-16 05:22:35', '2022-06-16 05:22:35', 21, NULL),
(81, 1, 'YGN- SOKL- 00002', '2022-06-16 12:00 PM', '21', '123', '2022-06-16 05:23:15', '2022-06-16 05:23:15', 4, NULL),
(82, 1, 'YGN_SOKL_00003', '2022-06-16 12:00 PM', '21', '122', '2022-06-16 05:24:31', '2022-06-16 05:24:31', 5, NULL),
(83, 1, 'YGN_TGG_00015', '2022-06-16 12:00 PM', '21', '121', '2022-06-16 05:25:41', '2022-06-16 05:25:41', 16, NULL),
(84, 1, 'YGN_TGG_00015', '2022-06-16 12:00 PM', '21', '121', '2022-06-16 05:26:17', '2022-06-16 05:26:17', 16, NULL),
(85, 1, 'YGN- SOKL- 00002', '2022-06-16 12:00 PM', '21', '120', '2022-06-16 05:27:20', '2022-06-16 05:27:20', 4, NULL),
(86, 1, 'YGN_TGG_00015', '2022-06-16 12:00 PM', '21', '119', '2022-06-16 05:28:23', '2022-06-16 05:28:23', 16, NULL),
(87, 1, 'YGN_TGG_00015', '2022-06-16 12:00 PM', '21', '117', '2022-06-16 05:29:19', '2022-06-16 05:29:19', 16, NULL),
(88, 1, 'YGN_TGG_00015', '2022-06-16 12:00 PM', '21', '116', '2022-06-16 05:29:50', '2022-06-16 05:29:50', 16, NULL),
(89, 1, 'YGN_TKT_00020', '2022-06-16 12:00 PM', '21', '58', '2022-06-16 05:30:33', '2022-06-16 05:30:33', 21, NULL),
(90, 1, 'YGN_DGSK_0001', '2022-06-16 12:00 PM', '21', '43', '2022-06-16 05:31:25', '2022-06-16 05:31:25', 2, NULL),
(91, 1, 'YGN_DGSK_0001', '2022-06-16 12:00 PM', '21', '115', '2022-06-16 05:32:02', '2022-06-16 05:32:02', 2, NULL),
(92, 1, 'YGN_DGSK_0001', '2022-06-16 12:00 PM', '21', '114', '2022-06-16 05:32:39', '2022-06-16 05:32:39', 2, NULL),
(93, 1, 'YGN_DGSK_0001', '2022-06-16 12:00 PM', '21', '114', '2022-06-16 05:32:53', '2022-06-16 05:32:53', 2, NULL),
(94, 1, 'YGN_DGSK_0001', '2022-06-16 12:00 PM', '21', '114', '2022-06-16 05:33:12', '2022-06-16 05:33:12', 2, NULL),
(95, 1, 'YGN_MYG_00012', '2022-06-16 12:00 PM', '21', '113', '2022-06-16 05:33:42', '2022-06-16 05:33:42', 14, NULL),
(96, 1, 'YGN_MYG_00012', '2022-06-16 12:00 PM', '21', '108', '2022-06-16 05:35:48', '2022-06-16 05:35:48', 14, NULL),
(97, 1, 'YGN_TGG_00015', '2022-06-16 12:00 PM', '21', '107', '2022-06-16 05:37:27', '2022-06-16 05:37:27', 16, NULL),
(98, 1, 'YGN_DGSK_0001', '2022-06-16 12:00 PM', '21', '106', '2022-06-16 05:38:11', '2022-06-16 05:38:11', 2, NULL),
(99, 1, 'YGN_ND_00006', '2022-06-16 01:00 PM', '21', '13', '2022-06-16 06:27:33', '2022-06-16 06:27:33', 8, NULL),
(100, 1, 'YGN- SOKL- 00002', '2022-06-16 01:00 PM', '21', '105', '2022-06-16 06:30:55', '2022-06-16 06:30:55', 4, NULL),
(101, 1, 'YGN- SOKL- 00002', '2022-06-16 01:00 PM', '21', '104', '2022-06-16 06:31:45', '2022-06-16 06:31:45', 4, NULL),
(102, 1, 'YGN_TKT_00016', '2022-06-16 01:00 PM', '21', '101', '2022-06-16 06:33:16', '2022-06-16 06:33:16', 17, NULL),
(103, 1, 'YGN_ND_00006', '2022-06-16 02:00 PM', '21', '99', '2022-06-16 07:09:38', '2022-06-16 07:09:38', 8, NULL),
(104, 1, 'YGN_MYG_00009', '2022-06-16 02:00 PM', '21', '98', '2022-06-16 07:10:15', '2022-06-16 07:10:15', 11, NULL),
(105, 1, 'YGN_TKT_00020', '2022-06-16 02:00 PM', '21', '97', '2022-06-16 07:10:58', '2022-06-16 07:10:58', 21, NULL),
(106, 1, 'YGN_TKT_00020', '2022-06-16 02:00 PM', '21', '96', '2022-06-16 07:11:37', '2022-06-16 07:11:37', 21, NULL),
(107, 1, 'YGN_DGSK_0001', '2022-06-16 02:00 PM', '21', '95', '2022-06-16 07:12:28', '2022-06-16 07:12:28', 2, NULL),
(108, 1, 'YGN_ND_00006', '2022-06-16 02:00 PM', '21', '93', '2022-06-16 07:13:19', '2022-06-16 07:13:19', 8, NULL),
(109, 1, 'YGN_ND_00006', '2022-06-16 02:00 PM', '21', '92', '2022-06-16 07:14:26', '2022-06-16 07:14:26', 8, NULL),
(110, 1, 'YGN_TGG_00010', '2022-06-16 02:00 PM', '21', '91', '2022-06-16 07:15:57', '2022-06-16 07:15:57', 12, NULL),
(111, 1, 'YGN_TGG_00010', '2022-06-16 02:00 PM', '21', '90', '2022-06-16 07:17:10', '2022-06-16 07:17:10', 12, NULL),
(112, 1, 'YGN_MYG_00012', '2022-06-16 02:00 PM', '21', '86', '2022-06-16 07:23:38', '2022-06-16 07:23:38', 14, NULL),
(113, 1, 'YGN_DP_00004', '2022-06-16 02:00 PM', '21', '24', '2022-06-16 07:30:30', '2022-06-16 07:30:30', 6, NULL),
(114, 1, 'YGN_DP_00004', '2022-06-16 02:00 PM', '21', '24', '2022-06-16 07:31:51', '2022-06-16 07:31:51', 6, NULL),
(115, 1, 'YGN_MYG_00012', '2022-06-16 02:00 PM', '21', '23', '2022-06-16 07:34:24', '2022-06-16 07:34:24', 14, NULL),
(116, 1, 'YGN_MYG_00012', '2022-06-16 02:00 PM', '21', '23', '2022-06-16 07:35:42', '2022-06-16 07:35:42', 14, NULL),
(117, 1, 'YGN_MYG_00012', '2022-06-16 02:00 PM', '21', '21', '2022-06-16 07:36:55', '2022-06-16 07:36:55', 14, NULL),
(118, 1, 'YGN_MYG_00012', '2022-06-16 02:00 PM', '21', '21', '2022-06-16 07:38:56', '2022-06-16 07:38:56', 14, NULL),
(119, 1, 'YGN_TKT_00020', '2022-06-16 02:00 PM', '21', '80', '2022-06-16 07:46:30', '2022-06-16 07:46:30', 21, NULL),
(120, 1, 'YGN_TKT_00020', '2022-06-16 02:00 PM', '21', '81', '2022-06-16 07:47:39', '2022-06-16 07:47:39', 21, NULL),
(121, 1, 'YGN_SOKL_00003', '2022-06-16 02:00 PM', '21', '83', '2022-06-16 07:50:39', '2022-06-16 07:50:39', 5, NULL),
(122, 1, 'YGN_DGSK_0001', '2022-06-16 02:00 PM', '21', '85', '2022-06-16 07:51:44', '2022-06-16 07:51:44', 2, NULL),
(123, 1, 'YGN_DGSK_0001', '2022-06-16 03:00 PM', '21', '118', '2022-06-16 08:15:50', '2022-06-16 08:15:50', 2, NULL),
(124, 1, 'YGN_DGSK_0001', '2022-06-16 03:00 PM', '21', '153', '2022-06-16 08:17:01', '2022-06-16 08:17:01', 2, NULL),
(125, 1, 'YGN_MYG_00009', '2022-06-16 03:00 PM', '21', '148', '2022-06-16 08:17:51', '2022-06-16 08:17:51', 11, NULL),
(126, 1, 'YGN_ND_00006', '2022-06-16 03:00 PM', '21', '151', '2022-06-16 08:19:01', '2022-06-16 08:19:01', 8, NULL),
(127, 1, 'YGN_TKT_00020', '2022-06-20 03:00 PM', '21', '157', '2022-06-16 08:25:41', '2022-06-16 08:25:41', 21, NULL),
(128, 1, 'YGN_SOKL_00003', '2022-06-21 03:00 PM', '21', '155', '2022-06-16 08:26:21', '2022-06-16 08:26:21', 5, NULL),
(129, 1, 'YGN_TKT_00007', '2022-06-16 03:00 PM', '21', '154', '2022-06-16 08:27:05', '2022-06-16 08:27:05', 9, NULL),
(130, 1, 'YGN_TGG_00015', '2022-06-16 03:00 PM', '21', '152', '2022-06-16 08:27:33', '2022-06-16 08:27:33', 16, NULL),
(131, 1, 'YGN_ND_00006', '2022-06-16 03:00 PM', '21', '150', '2022-06-16 08:28:20', '2022-06-16 08:28:20', 8, NULL),
(132, 1, 'YGN_TGG_00015', '2022-06-22 12:00 PM', '21', '172', '2022-06-21 05:52:13', '2022-06-21 05:52:13', 16, NULL),
(133, 1, 'YGN_TKT_00016', '2022-06-22 01:00 PM', '21', '168', '2022-06-21 06:01:12', '2022-06-21 06:01:12', 17, NULL),
(134, 1, 'YGN_TGG_00010', '2022-06-22 01:00 PM', '21', '169', '2022-06-21 06:01:52', '2022-06-21 06:01:52', 12, NULL),
(135, 1, 'YGN_SOKL_00003', '2022-06-22 01:00 PM', '21', '166', '2022-06-21 06:02:26', '2022-06-21 06:02:26', 5, NULL),
(136, 1, 'YGN_SOKL_00003', '2022-06-22 01:00 PM', '21', '165', '2022-06-21 06:07:05', '2022-06-21 06:07:05', 5, NULL),
(137, 1, 'YGN_TKT_00020', '2022-06-22 01:00 PM', '21', '164', '2022-06-21 06:09:03', '2022-06-21 06:09:03', 21, NULL),
(138, 1, 'YGN_DP_00004', '2022-06-21 01:00 PM', '21', '161', '2022-06-21 06:12:51', '2022-06-21 06:12:51', 6, NULL),
(139, 1, 'YGN_DP_00004', '2022-06-22 01:00 PM', '21', '160', '2022-06-21 06:14:03', '2022-06-21 06:14:03', 6, NULL),
(140, 1, 'YGN_MYG_00009', '2022-06-21 02:00 PM', '21', '158', '2022-06-21 07:23:16', '2022-06-21 07:23:16', 11, NULL),
(141, 1, 'YGN_TKT_00007', '2022-06-24 04:00 PM', '21', '188', '2022-06-23 09:28:45', '2022-06-23 09:28:45', 9, NULL),
(142, 1, 'YGN_TKT_00016', '2022-06-24 04:00 PM', '21', '180', '2022-06-23 09:34:14', '2022-06-23 09:34:14', 17, NULL),
(143, 1, 'YGN- SOKL- 00002', '2022-06-24 04:00 PM', '21', '191', '2022-06-23 09:34:42', '2022-06-23 09:34:42', 4, NULL),
(144, 1, 'YGN_TGG_00005', '2022-06-24 04:00 PM', '21', '189', '2022-06-23 09:35:17', '2022-06-23 09:35:17', 7, NULL),
(145, 1, 'YGN_TGG_00005', '2022-06-24 04:00 PM', '21', '189', '2022-06-23 09:35:37', '2022-06-23 09:35:37', 7, NULL),
(146, 1, 'YGN_DGSK_0001', '2022-06-24 04:00 PM', '21', '185', '2022-06-23 09:36:10', '2022-06-23 09:36:10', 2, NULL),
(147, 1, 'YGN_TKT_00020', '2022-06-23 04:00 PM', '21', '183', '2022-06-23 09:36:41', '2022-06-23 09:36:41', 21, NULL),
(148, 1, 'YGN_TKT_00016', '2022-06-24 04:00 PM', '21', '181', '2022-06-23 09:37:20', '2022-06-23 09:37:20', 17, NULL),
(149, 1, 'YGN_TKT_00016', '2022-06-25 04:00 PM', '21', '167', '2022-06-23 09:40:31', '2022-06-23 09:40:31', 17, NULL),
(150, 1, 'YGN_TKT_00007', '2022-06-24 04:00 PM', '21', '177', '2022-06-23 09:41:25', '2022-06-23 09:41:25', 9, NULL),
(151, 1, 'YGN_SOKL_00003', '2022-06-24 04:00 PM', '21', '176', '2022-06-23 09:41:57', '2022-06-23 09:41:57', 5, NULL),
(152, 1, 'YGN_TKT_00007', '2022-06-23 04:00 PM', '21', '173', '2022-06-23 09:48:00', '2022-06-23 09:48:00', 9, NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_name` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_payments`
--

INSERT INTO `variable_payments` (`id`, `variable_request_info_id`, `user_id`, `transportation`, `labor`, `banking_percent`, `extra`, `created_at`, `updated_at`, `supplier_name`) VALUES
(4, 17, 21, '23000', '0', '0', '0', '2022-05-17 01:47:03', '2022-05-17 01:47:03', NULL),
(5, 17, 21, '23000', '0', '5860', '0', '2022-05-17 01:49:36', '2022-05-17 01:49:36', NULL),
(6, 6, 21, '18000', '0', '0', '0', '2022-05-26 09:07:19', '2022-05-26 09:07:19', NULL),
(7, 5, 21, '18000', '10000', '0', '0', '2022-05-29 08:36:05', '2022-05-29 08:36:05', NULL),
(8, 7, 21, '38000', '5000', '0', '0', '2022-05-29 08:51:34', '2022-05-29 08:51:34', NULL),
(9, 8, 21, '13000', '5000', '0', '0', '2022-05-29 08:53:44', '2022-05-29 08:53:44', NULL),
(10, 9, 21, '20000', '0', '0', '0', '2022-05-29 08:55:47', '2022-05-29 08:55:47', NULL),
(11, 10, 21, '22000', '5000', '0', '0', '2022-05-29 08:57:28', '2022-05-29 08:57:28', NULL),
(12, 11, 21, '0', '0', '0', '0', '2022-05-29 08:58:34', '2022-05-29 08:58:34', NULL),
(13, 12, 21, '0', '0', '0', '0', '2022-05-29 08:59:39', '2022-05-29 08:59:39', NULL),
(14, 13, 21, '18000', '0', '4860', '0', '2022-05-29 09:04:05', '2022-05-29 09:04:05', NULL),
(15, 15, 21, '0', '0', '8100', '0', '2022-05-29 09:24:42', '2022-05-29 09:24:42', NULL),
(16, 16, 21, '0', '0', '0', '0', '2022-05-29 09:25:39', '2022-05-29 09:25:39', NULL),
(17, 18, 21, '36000', '0', '8435', '0', '2022-05-29 09:28:48', '2022-05-29 09:28:48', NULL),
(18, 19, 21, '57000', '0', '0', '0', '2022-05-29 09:30:59', '2022-05-29 09:30:59', NULL),
(19, 20, 21, '0', '0', '0', '6550', '2022-05-29 09:32:54', '2022-05-29 09:32:54', NULL),
(20, 22, 21, '36000', '0', '0', '0', '2022-05-29 09:41:17', '2022-05-29 09:41:17', NULL),
(21, 30, 17, '13000', '0', '0', '0', '2022-06-01 04:25:41', '2022-06-01 04:25:41', NULL),
(22, 28, 21, '26000', '0', '0', '0', '2022-06-01 05:20:59', '2022-06-01 05:20:59', NULL),
(23, 27, 21, '0', '0', '0', '0', '2022-06-01 07:07:12', '2022-06-01 07:07:12', NULL),
(24, 36, 17, '26000', '0', '0', '0', '2022-06-02 10:17:45', '2022-06-02 10:17:45', NULL),
(25, 41, 21, '0', '0', '0', '0', '2022-06-03 03:59:03', '2022-06-03 03:59:03', NULL),
(26, 31, 21, '0', '15000', '0', '0', '2022-06-03 04:01:30', '2022-06-03 04:01:30', NULL),
(27, 35, 21, '0', '0', '0', '0', '2022-06-03 04:05:35', '2022-06-03 04:05:35', NULL),
(28, 47, 21, '11000', '0', '0', '0', '2022-06-03 07:59:39', '2022-06-03 07:59:39', NULL),
(29, 46, 21, '0', '15000', '0', '0', '2022-06-03 08:02:56', '2022-06-03 08:02:56', NULL),
(30, 29, 21, '28000', '0', '8000', '0', '2022-06-03 08:04:24', '2022-06-03 08:04:24', NULL),
(31, 54, 21, '0', '0', '0', '0', '2022-06-05 11:53:30', '2022-06-05 11:53:30', NULL),
(32, 52, 21, '0', '0', '0', '0', '2022-06-05 11:59:23', '2022-06-05 11:59:23', NULL),
(33, 34, 17, '0', '0', '0', '0', '2022-06-06 03:48:03', '2022-06-06 03:48:03', NULL),
(34, 39, 21, '0', '0', '1.5', '0', '2022-06-06 06:15:39', '2022-06-06 06:15:39', NULL),
(35, 38, 21, '0', '0', '1.5', '0', '2022-06-06 06:20:50', '2022-06-06 06:20:50', NULL),
(36, 37, 21, '30000', '8750', '1.5', '0', '2022-06-06 06:29:49', '2022-06-06 06:29:49', NULL),
(37, 42, 21, '20000', '0', '0', '0', '2022-06-07 03:41:42', '2022-06-07 03:41:42', NULL),
(38, 69, 21, '0', '0', '0', '4000', '2022-06-07 08:01:33', '2022-06-07 08:01:33', NULL),
(39, 60, 21, '0', '0', '0', '0', '2022-06-07 08:03:35', '2022-06-07 08:03:35', NULL),
(40, 59, 21, '13000', '0', '0', '0', '2022-06-07 08:05:50', '2022-06-07 08:05:50', NULL),
(41, 56, 21, '13000', '0', '0', '0', '2022-06-07 08:06:38', '2022-06-07 08:06:38', NULL),
(42, 53, 21, '13000', '0', '0', '0', '2022-06-07 08:07:41', '2022-06-07 08:07:41', NULL),
(43, 45, 21, '0', '0', '0', '0', '2022-06-07 08:16:23', '2022-06-07 08:16:23', NULL),
(44, 44, 21, '13000', '0', '0', '0', '2022-06-07 08:21:22', '2022-06-07 08:21:22', NULL),
(45, 32, 21, '0', '0', '0', '0', '2022-06-07 08:22:53', '2022-06-07 08:22:53', NULL),
(46, 73, 21, '30000', '10000', '0', '0', '2022-06-07 08:24:40', '2022-06-07 08:24:40', NULL),
(47, 66, 21, '20000', '0', '0', '0', '2022-06-07 08:26:40', '2022-06-07 08:26:40', NULL),
(48, 65, 21, '0', '0', '0', '0', '2022-06-07 08:27:30', '2022-06-07 08:27:30', NULL),
(49, 33, 21, '13000', '0', '0', '0', '2022-06-07 08:33:35', '2022-06-07 08:33:35', NULL),
(50, 63, 21, '11000', '4000', '0', '9600', '2022-06-07 08:38:52', '2022-06-07 08:38:52', NULL),
(51, 61, 21, '0', '0', '0', '0', '2022-06-07 09:27:55', '2022-06-07 09:27:55', NULL),
(52, 57, 18, '11000', '0', '0', '0', '2022-06-07 10:15:22', '2022-06-07 10:15:22', NULL),
(53, 55, 18, '18000', '16000', '0', '0', '2022-06-07 10:17:25', '2022-06-07 10:17:25', NULL),
(54, 72, 21, '0', '3500', '0', '0', '2022-06-08 04:33:15', '2022-06-08 04:33:15', NULL),
(55, 71, 21, '55000', '7000', '0', '0', '2022-06-08 04:34:00', '2022-06-08 04:34:00', NULL),
(56, 70, 21, '0', '3500', '0', '0', '2022-06-08 04:43:14', '2022-06-08 04:43:14', NULL),
(57, 76, 21, '13000', '0', '0', '0', '2022-06-08 05:02:20', '2022-06-08 05:02:20', NULL),
(58, 62, 21, '11000', '4000', '0', '9600', '2022-06-08 05:12:29', '2022-06-08 05:12:29', NULL),
(59, 67, 21, '0', '0', '0', '0', '2022-06-08 07:25:37', '2022-06-08 07:25:37', NULL),
(60, 43, 21, '20000', '0', '1', '0', '2022-06-08 09:00:10', '2022-06-08 09:00:10', NULL),
(61, 24, 21, '22000', '16000', '0', '0', '2022-06-08 09:19:03', '2022-06-08 09:19:03', NULL),
(62, 74, 18, '19000', '9000', '0', '0', '2022-06-09 09:24:28', '2022-06-09 09:24:28', NULL),
(63, 97, 18, '11000', '0', '0', '0', '2022-06-10 07:08:32', '2022-06-10 07:08:32', NULL),
(64, 101, 21, '11000', '0', '0', '0', '2022-06-11 03:09:26', '2022-06-11 03:09:26', NULL),
(65, 99, 21, '20000', '0', '0', '0', '2022-06-11 03:18:19', '2022-06-11 03:18:19', NULL),
(66, 85, 21, '12000', '0', '0', '0', '2022-06-11 03:26:09', '2022-06-11 03:26:09', NULL),
(67, 58, 21, '0', '10500', '0', '0', '2022-06-11 03:31:16', '2022-06-11 03:31:16', NULL),
(68, 96, 21, '0', '3500', '0', '0', '2022-06-11 03:31:46', '2022-06-11 03:31:46', NULL),
(69, 98, 21, '19000', '9000', '0', '0', '2022-06-11 03:41:55', '2022-06-11 03:41:55', NULL),
(70, 95, 21, '0', '0', '0', '0', '2022-06-11 03:42:57', '2022-06-11 03:42:57', NULL),
(71, 93, 21, '0', '0', '0', '0', '2022-06-11 03:44:00', '2022-06-11 03:44:00', NULL),
(72, 81, 21, '10000', '1400', '1.5', '0', '2022-06-11 03:55:35', '2022-06-11 03:55:35', NULL),
(73, 80, 21, '10000', '3150', '1.5', '0', '2022-06-11 03:57:02', '2022-06-11 03:57:02', NULL),
(74, 107, 21, '22000', '0', '0', '0', '2022-06-11 04:15:36', '2022-06-11 04:15:36', NULL),
(75, 105, 21, '13000', '0', '0', '0', '2022-06-11 04:24:40', '2022-06-11 04:24:40', NULL),
(76, 104, 21, '0', '0', '0', '0', '2022-06-11 04:28:44', '2022-06-11 04:28:44', NULL),
(77, 21, 18, '36000', '20000', '0', '0', '2022-06-11 05:04:55', '2022-06-11 05:04:55', NULL),
(78, 91, 21, '26000', '0', '0', '0', '2022-06-11 05:11:12', '2022-06-11 05:11:12', NULL),
(79, 90, 21, '13000', '0', '0', '0', '2022-06-11 05:15:43', '2022-06-11 05:15:43', NULL),
(80, 83, 21, '0', '0', '0', '0', '2022-06-11 05:18:27', '2022-06-11 05:18:27', NULL),
(81, 23, 18, '18000', '20000', '0', '0', '2022-06-11 05:18:37', '2022-06-11 05:18:37', NULL),
(82, 114, 21, '0', '0', '0', '0', '2022-06-13 09:57:42', '2022-06-13 09:57:42', NULL),
(83, 115, 21, '20000', '0', '0', '0', '2022-06-13 10:00:14', '2022-06-13 10:00:14', NULL),
(84, 92, 21, '0', '0', '0', '0', '2022-06-13 10:01:19', '2022-06-13 10:01:19', NULL),
(85, 106, 21, '0', '0', '1.5', '0', '2022-06-13 10:04:11', '2022-06-13 10:04:11', NULL),
(86, 120, 21, '0', '0', '0', '0', '2022-06-13 10:06:59', '2022-06-13 10:06:59', NULL),
(87, 117, 21, '0', '0', '0', '0', '2022-06-13 10:07:26', '2022-06-13 10:07:26', NULL),
(88, 113, 18, '38000', '20000', '0', '0', '2022-06-14 03:56:25', '2022-06-14 03:56:25', 'Ngwe Eain San'),
(89, 131, 21, '9000', '0', '1.5', '0', '2022-06-14 08:28:48', '2022-06-14 08:28:48', 'Khine Khant'),
(90, 135, 21, '0', '0', '0', '0', '2022-06-14 11:13:38', '2022-06-14 11:13:38', 'Future Home'),
(91, 134, 21, '0', '0', '0', '0', '2022-06-14 11:14:53', '2022-06-14 11:14:53', 'Future Home'),
(92, 133, 21, '44000', '24000', '0', '0', '2022-06-14 11:16:28', '2022-06-14 11:16:28', 'Pyi Thar'),
(93, 125, 21, '11000', '0', '0', '0', '2022-06-14 11:18:01', '2022-06-14 11:18:01', 'Pyi Thar'),
(94, 124, 21, '11000', '0', '0', '0', '2022-06-14 11:19:10', '2022-06-14 11:19:10', 'Pyi Thar'),
(95, 108, 21, '0', '0', '0', '0', '2022-06-14 11:21:36', '2022-06-14 11:21:36', 'Aung Thein/U Win Naing'),
(96, 140, 21, '19000', '10000', '0', '0', '2022-06-15 03:34:01', '2022-06-15 03:34:01', 'Ngwe Eain San'),
(97, 143, 21, '13000', '0', '0', '0', '2022-06-15 03:36:42', '2022-06-15 03:36:42', 'Pyi Thar'),
(98, 142, 21, '13000', '0', '0', '0', '2022-06-15 03:37:41', '2022-06-15 03:37:41', 'Pyi Thar'),
(99, 141, 21, '13000', '0', '0', '0', '2022-06-15 03:39:47', '2022-06-15 03:39:47', 'Pyi Thar'),
(100, 136, 21, '0', '0', '1.5', '10000', '2022-06-15 03:45:55', '2022-06-15 03:45:55', 'Kyay Zuu Taw'),
(101, 138, 21, '0', '0', '0', '0', '2022-06-15 06:26:38', '2022-06-15 06:26:38', 'Future Home'),
(102, 132, 21, '11000', '0', '0', '0', '2022-06-15 06:29:11', '2022-06-15 06:29:11', 'Future Home / Pyi Thar'),
(103, 137, 18, '19000', '9000', '0', '0', '2022-06-15 07:25:14', '2022-06-15 07:25:14', 'Ngwe Eain San'),
(104, 147, 17, '11000', '0', '0', '0', '2022-06-15 08:13:30', '2022-06-15 08:13:30', 'Pyi Thar'),
(105, 147, 17, '11000', '0', '0', '0', '2022-06-15 08:40:09', '2022-06-15 08:40:09', 'Pyi Thar'),
(106, 149, 21, '0', '0', '2', '0', '2022-06-15 08:58:29', '2022-06-15 08:58:29', 'Aung Thein'),
(107, 146, 17, '13000', '5000', '0', '0', '2022-06-15 09:16:21', '2022-06-15 09:16:21', 'Pyi Thar'),
(108, 146, 17, '13000', '5000', '0', '0', '2022-06-15 09:16:33', '2022-06-15 09:16:33', 'Pyi Thar'),
(109, 145, 17, '13000', '5000', '0', '0', '2022-06-15 09:20:25', '2022-06-15 09:20:25', 'Pyi Thar'),
(110, 144, 17, '13000', '5000', '0', '0', '2022-06-15 09:21:25', '2022-06-15 09:21:25', 'Pyi Thar'),
(111, 139, 17, '0', '0', '0', '0', '2022-06-15 09:27:57', '2022-06-15 09:27:57', 'Future Home'),
(112, 130, 17, '39000', '0', '0', '0', '2022-06-15 10:16:44', '2022-06-15 10:16:44', 'Future Home,Pyi Thar,U Than Htut'),
(113, 129, 17, '44000', '0', '0', '0', '2022-06-15 10:27:11', '2022-06-15 10:27:11', 'Future Home, Pyi Thar'),
(114, 123, 17, '13000', '0', '0', '0', '2022-06-15 10:30:12', '2022-06-15 10:30:12', 'Pyi Thar'),
(115, 122, 17, '13000', '5000', '0', '0', '2022-06-15 10:32:02', '2022-06-15 10:32:02', 'Pyi Thar'),
(116, 121, 17, '15000', '3500', '0.8', '0', '2022-06-15 10:34:40', '2022-06-15 10:34:40', 'Future Home'),
(117, 119, 17, '11000', '0', '0', '0', '2022-06-15 10:36:04', '2022-06-15 10:36:04', 'Pyi Thar'),
(118, 116, 17, '15000', '3500', '0', '0', '2022-06-15 10:38:55', '2022-06-15 10:38:55', 'Future Home'),
(119, 151, 21, '20000', '0', '0', '0', '2022-06-16 04:20:16', '2022-06-16 04:20:16', 'Pyi Thar'),
(120, 150, 21, '20000', '0', '0', '0', '2022-06-16 04:20:48', '2022-06-16 04:20:48', 'Pyi Thar'),
(121, 153, 21, '26000', '0', '0', '0', '2022-06-16 04:49:08', '2022-06-16 04:49:08', 'Pyi Thar'),
(122, 118, 21, '30000', '7000', '0', '8000', '2022-06-16 05:09:57', '2022-06-16 05:09:57', 'MGC / Future Home'),
(123, 148, 21, '38000', '20000', '0', '0', '2022-06-16 06:45:04', '2022-06-16 06:45:04', 'Ngwe Eain San'),
(124, 86, 21, '0', '0', '0', '0', '2022-06-16 07:22:39', '2022-06-16 07:22:39', 'Future Home'),
(125, 75, 21, '0', '0', '0', '0', '2022-06-16 07:26:33', '2022-06-16 07:26:33', 'Future Home'),
(126, 155, 21, '13000', '5000', '0', '0', '2022-06-16 08:04:25', '2022-06-16 08:04:25', 'Pyi Thar'),
(127, 157, 21, '15000', '0', '0', '0', '2022-06-16 08:11:38', '2022-06-16 08:11:38', 'Myo Taw'),
(128, 154, 21, '11000', '0', '0', '0', '2022-06-16 08:12:58', '2022-06-16 08:12:58', 'Pyi Thar'),
(129, 152, 21, '11000', '0', '0', '0', '2022-06-16 08:14:46', '2022-06-16 08:14:46', 'Pyi Thar / Aung Chan Thar'),
(130, 170, 17, '0', '0', '0', '0', '2022-06-21 03:16:17', '2022-06-21 03:16:17', '22000'),
(131, 160, 21, '0', '0', '0', '0', '2022-06-21 03:25:11', '2022-06-21 03:25:11', 'Future Home'),
(132, 169, 21, '13000', '0', '0', '0', '2022-06-21 03:26:35', '2022-06-21 03:26:35', 'Future Home / Pyi Thar'),
(133, 166, 21, '13000', '0', '0', '0', '2022-06-21 03:29:33', '2022-06-21 03:29:33', 'Pyi Thar'),
(134, 165, 21, '0', '0', '0', '0', '2022-06-21 03:30:30', '2022-06-21 03:30:30', 'Future Home'),
(135, 172, 21, '22000', '0', '0', '0', '2022-06-21 03:31:25', '2022-06-21 03:31:25', 'Future Home / Pyi Thar'),
(136, 164, 21, '11000', '0', '0', '0', '2022-06-21 03:32:46', '2022-06-21 03:32:46', 'Pyi Thar'),
(137, 161, 21, '22000', '16000', '0', '0', '2022-06-21 03:36:43', '2022-06-21 03:36:43', 'Pyi Thar'),
(138, 168, 21, '11000', '0', '0', '0', '2022-06-21 03:59:24', '2022-06-21 03:59:24', 'Pyi Thar'),
(139, 158, 21, '0', '0', '0', '0', '2022-06-21 04:12:30', '2022-06-21 04:12:30', 'Future Home'),
(140, 173, 17, '0', '0', '0', '0', '2022-06-22 10:06:03', '2022-06-22 10:06:03', 'Future Home'),
(141, 178, 21, '0', '0', '0', '0', '2022-06-23 03:19:59', '2022-06-23 03:19:59', 'Shwe Ayar / Pro 1'),
(142, 100, 21, '0', '15000', '0', '0', '2022-06-23 03:25:17', '2022-06-23 03:25:17', 'Myint Myat Kyaw'),
(143, 167, 21, '0', '0', '0', '0', '2022-06-23 03:36:04', '2022-06-23 03:36:04', 'U Win Naing'),
(144, 181, 21, '12000', '6000', '0', '12800', '2022-06-23 03:49:59', '2022-06-23 03:49:59', 'Pyi Thar'),
(145, 183, 18, '0', '0', '0', '0', '2022-06-23 03:59:45', '2022-06-23 03:59:45', 'Future Home'),
(146, 191, 21, '0', '0', '0', '0', '2022-06-23 08:02:21', '2022-06-23 08:02:21', 'Future Home'),
(147, 189, 21, '25000', '0', '0', '0', '2022-06-23 08:04:12', '2022-06-23 08:04:12', 'Aung Thein'),
(148, 188, 21, '12000', '0', '0', '0', '2022-06-23 08:05:11', '2022-06-23 08:05:11', 'Pyi Thar'),
(149, 180, 21, '0', '0', '0', '0', '2022-06-23 08:08:00', '2022-06-23 08:08:00', 'Future Home'),
(150, 177, 21, '12000', '0', '0', '0', '2022-06-23 08:09:08', '2022-06-23 08:09:08', 'Pyi Thar'),
(151, 176, 21, '0', '0', '0', '0', '2022-06-23 08:11:17', '2022-06-23 08:11:17', 'Pro 1'),
(152, 185, 21, '30000', '7000', '0.8', '0', '2022-06-23 09:26:15', '2022-06-23 09:26:15', 'MSDF'),
(153, 179, 21, '323000', '136000', '0', '0', '2022-06-24 03:30:10', '2022-06-24 03:30:10', 'Ngwe Eain San'),
(154, 159, 21, '0', '0', '0', '129000', '2022-06-24 03:34:20', '2022-06-24 03:34:20', 'Myint Myat Kyaw'),
(155, 194, 21, '0', '0', '0', '0', '2022-06-24 04:19:50', '2022-06-24 04:19:50', 'Aung Myo Hein'),
(156, 193, 21, '0', '0', '0', '0', '2022-06-24 04:29:59', '2022-06-24 04:29:59', 'Aung Myo Hein'),
(157, 192, 21, '0', '0', '0', '0', '2022-06-24 04:31:07', '2022-06-24 04:31:07', 'Aung Myo Hein');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_qs_team_checks`
--

INSERT INTO `variable_qs_team_checks` (`id`, `user_id`, `variable_request_item_id`, `eng_request_qty`, `qs_passed_qty`, `variable_request_info_id`, `variable_asset_id`, `created_at`, `updated_at`, `remark`) VALUES
(5, 42, 9, '1.5', '1.5', 6, 26, '2022-05-10 02:08:18', '2022-05-10 02:08:18', NULL),
(6, 10, 8, '1.5', '1.5', 5, 26, '2022-05-10 02:51:46', '2022-05-10 02:51:46', NULL),
(7, 11, 14, '3', '3', 10, 26, '2022-05-10 02:54:19', '2022-05-10 02:54:19', NULL),
(8, 11, 13, '50', '50', 9, 4, '2022-05-10 02:57:22', '2022-05-10 02:57:22', NULL),
(9, 10, 12, '1', '1', 8, 27, '2022-05-10 02:58:35', '2022-05-10 02:58:35', NULL),
(10, 10, 10, '50', '50', 7, 4, '2022-05-10 03:50:52', '2022-05-10 03:50:52', NULL),
(11, 10, 11, '1.5', '1.5', 7, 26, '2022-05-10 03:50:52', '2022-05-10 03:50:52', NULL),
(12, 10, 15, '3000', '3000', 11, 25, '2022-05-10 03:51:15', '2022-05-10 03:51:15', NULL),
(13, 10, 16, '5000', '5000', 12, 25, '2022-05-11 04:49:15', '2022-05-11 04:49:15', NULL),
(14, 10, 17, '30', '30', 13, 4, '2022-05-11 04:49:44', '2022-05-11 04:49:44', NULL),
(15, 10, 18, '1.5', '1.5', 13, 26, '2022-05-11 04:49:44', '2022-05-11 04:49:44', NULL),
(16, 10, 19, '1.5', '1.5', 13, 27, '2022-05-11 04:49:44', '2022-05-11 04:49:44', NULL),
(17, 10, 21, '50', '50', 15, 4, '2022-05-12 10:15:56', '2022-05-12 10:15:56', NULL),
(18, 10, 23, '150', '150', 17, 92, '2022-05-13 03:07:20', '2022-05-13 03:07:20', NULL),
(19, 10, 24, '15', '8', 17, 94, '2022-05-13 03:07:20', '2022-05-13 03:07:20', NULL),
(20, 10, 22, '3000', '5000', 16, 25, '2022-05-13 03:08:34', '2022-05-13 03:08:34', NULL),
(21, 42, 25, '50', '50', 18, 1, '2022-05-13 03:09:18', '2022-05-13 03:09:18', NULL),
(22, 42, 26, '1.5', '1.5', 18, 27, '2022-05-13 03:09:18', '2022-05-13 03:09:18', NULL),
(23, 42, 27, '1.5', '1.5', 18, 26, '2022-05-13 03:09:18', '2022-05-13 03:09:18', NULL),
(24, 10, 31, '20', '20', 20, 4, '2022-05-16 06:10:49', '2022-05-16 06:10:49', NULL),
(25, 10, 28, '40', '40', 19, 1, '2022-05-16 06:11:15', '2022-05-16 06:11:15', NULL),
(26, 10, 29, '1.5', '1.5', 19, 26, '2022-05-16 06:11:15', '2022-05-16 06:11:15', NULL),
(27, 10, 30, '2.5', '2.5', 19, 27, '2022-05-16 06:11:15', '2022-05-16 06:11:15', NULL),
(28, 10, 34, '1.5', '1.5', 22, 26, '2022-05-28 02:43:18', '2022-05-28 02:43:18', NULL),
(29, 10, 35, '1.5', '1.5', 22, 27, '2022-05-28 02:43:18', '2022-05-28 02:43:18', NULL),
(30, 42, 40, '3', '3', 26, 26, '2022-05-31 02:24:11', '2022-05-31 02:24:11', NULL),
(31, 42, 40, '3', '3', 26, 26, '2022-05-31 02:24:40', '2022-05-31 02:24:40', NULL),
(32, 42, 39, '5000', '5000', 25, 25, '2022-05-31 02:29:29', '2022-05-31 02:29:29', NULL),
(33, 11, 38, '3', '3', 24, 26, '2022-05-31 02:32:42', '2022-05-31 02:32:42', NULL),
(34, 10, 41, '50', '50', 27, 4, '2022-05-31 09:33:35', '2022-05-31 09:33:35', NULL),
(35, 10, 42, '3', '3', 28, 26, '2022-05-31 09:34:56', '2022-05-31 09:34:56', NULL),
(36, 11, 44, '1.5', '1.5', 30, 26, '2022-06-01 04:17:52', '2022-06-01 04:17:52', NULL),
(37, 11, 43, '25', '25', 29, 77, '2022-06-01 04:18:35', '2022-06-01 04:18:35', NULL),
(38, 10, 46, '5000', '5000', 32, 25, '2022-06-02 02:39:01', '2022-06-02 02:39:01', NULL),
(39, 10, 47, '1.5', '1.5', 33, 26, '2022-06-02 02:39:53', '2022-06-02 02:39:53', NULL),
(40, 42, 48, '40', '40', 34, 4, '2022-06-02 02:59:26', '2022-06-02 02:59:26', NULL),
(41, 42, 49, '10000', '10000', 35, 25, '2022-06-02 03:04:23', '2022-06-02 03:04:23', NULL),
(42, 42, 50, '3', '3', 36, 26, '2022-06-02 03:05:51', '2022-06-02 03:05:51', NULL),
(43, 42, 51, '80', '0.5185', 37, 10, '2022-06-02 03:11:25', '2022-06-02 03:11:25', NULL),
(44, 42, 52, '140', '1.0370', 38, 5, '2022-06-02 03:16:46', '2022-06-02 03:16:46', NULL),
(45, 42, 53, '47', '0.8868', 39, 7, '2022-06-02 03:20:52', '2022-06-02 03:20:52', NULL),
(46, 11, 45, '5000', '5000', 31, 25, '2022-06-02 03:23:00', '2022-06-02 03:23:00', NULL),
(47, 10, 55, '30', '30', 41, 4, '2022-06-02 16:41:59', '2022-06-02 16:41:59', NULL),
(48, 10, 56, '1', '1', 42, 26, '2022-06-02 16:42:38', '2022-06-02 16:42:38', NULL),
(49, 42, 61, '1.5', '1.5', 47, 26, '2022-06-03 04:43:01', '2022-06-03 04:43:01', NULL),
(50, 11, 59, '50', '50', 45, 4, '2022-06-03 05:39:56', '2022-06-03 05:39:56', NULL),
(51, 11, 58, '1.5', '1.5', 44, 26, '2022-06-03 05:40:47', '2022-06-03 05:40:47', NULL),
(52, 42, 60, '5000', '5000', 46, 25, '2022-06-03 07:42:28', '2022-06-03 07:42:28', NULL),
(53, 42, 36, '1.5', '1.5', 23, 26, '2022-06-03 08:09:18', '2022-06-03 08:09:18', NULL),
(54, 42, 37, '1.5', '1.5', 23, 27, '2022-06-03 08:09:18', '2022-06-03 08:09:18', NULL),
(55, 10, 68, '5000', '5000', 54, 25, '2022-06-04 02:29:22', '2022-06-04 02:29:22', NULL),
(56, 42, 67, '2', '2', 53, 26, '2022-06-04 04:22:35', '2022-06-04 04:22:35', NULL),
(57, 42, 66, '35', '35', 52, 4, '2022-06-04 04:22:50', '2022-06-04 04:22:50', NULL),
(58, 42, 65, '1000', '1000', 51, 25, '2022-06-04 04:23:05', '2022-06-04 04:23:05', NULL),
(59, 42, 69, '3', '3', 55, 104, '2022-06-04 04:25:39', '2022-06-04 04:25:39', NULL),
(60, 10, 57, '30', '30', 43, 22, '2022-06-04 04:44:16', '2022-06-04 04:44:16', NULL),
(61, 42, 72, '3000', '3000', 58, 25, '2022-06-05 13:57:13', '2022-06-05 13:57:13', NULL),
(62, 10, 70, '1.5', '1.5', 56, 26, '2022-06-06 02:31:37', '2022-06-06 02:31:37', NULL),
(63, 42, 71, '1', '1.5', 57, 27, '2022-06-06 02:36:42', '2022-06-06 02:36:42', NULL),
(64, 11, 74, '5000', '5000', 60, 25, '2022-06-06 03:08:16', '2022-06-06 03:08:16', NULL),
(65, 11, 73, '1.5', '1.5', 59, 26, '2022-06-06 03:11:53', '2022-06-06 03:11:53', NULL),
(66, 42, 75, '50', '50', 61, 1, '2022-06-06 06:27:09', '2022-06-06 06:27:09', NULL),
(67, 42, 76, '1.5', '1.5', 62, 26, '2022-06-06 06:28:26', '2022-06-06 06:28:26', NULL),
(68, 42, 77, '1.5', '1.5', 63, 27, '2022-06-06 06:28:37', '2022-06-06 06:28:37', NULL),
(69, 42, 79, '50', '50', 65, 1, '2022-06-06 10:04:37', '2022-06-06 10:04:37', NULL),
(70, 10, 81, '1', '1', 67, 83, '2022-06-07 02:21:33', '2022-06-07 02:21:33', NULL),
(71, 10, 82, '4', '0', 68, 7, '2022-06-07 02:57:13', '2022-06-07 02:57:13', NULL),
(72, 11, 80, '2', '2', 66, 101, '2022-06-07 03:11:14', '2022-06-07 03:11:14', NULL),
(73, 10, 83, '0.076', '0.076', 69, 7, '2022-06-07 03:11:30', '2022-06-07 03:11:30', 'For Decorated Area Additional Work - Urgent Plz'),
(74, 42, 86, '1', '1', 72, 10, '2022-06-07 05:12:19', '2022-06-07 05:12:19', NULL),
(75, 42, 85, '2', '2', 71, 7, '2022-06-07 05:13:00', '2022-06-07 05:13:00', NULL),
(76, 42, 84, '1', '1', 70, 8, '2022-06-07 05:13:50', '2022-06-07 05:13:50', NULL),
(77, 42, 87, '2', '2', 73, 116, '2022-06-07 07:32:58', '2022-06-07 07:32:58', NULL),
(78, 42, 90, '3', '3', 76, 26, '2022-06-08 02:27:00', '2022-06-08 02:27:00', NULL),
(79, 42, 95, '57', '0.4222', 81, 10, '2022-06-08 02:33:11', '2022-06-08 02:33:11', NULL),
(80, 42, 94, '48', '0.9057', 80, 7, '2022-06-08 02:35:05', '2022-06-08 02:35:05', NULL),
(81, 10, 93, '1.5', '1.5', 79, 26, '2022-06-08 05:19:08', '2022-06-08 05:19:08', NULL),
(82, 10, 92, '1.5', '0', 78, 1, '2022-06-08 05:19:52', '2022-06-08 05:19:52', 'Reject Item'),
(83, 11, 89, '50', '0', 75, 4, '2022-06-09 03:07:09', '2022-06-09 03:07:09', '50'),
(84, 10, 97, '50', '50', 83, 4, '2022-06-09 03:07:47', '2022-06-09 03:07:47', NULL),
(85, 11, 88, '1.5', '0', 74, 26, '2022-06-09 03:08:33', '2022-06-09 03:08:33', '1.5'),
(86, 11, 96, '1.5', '0', 82, 27, '2022-06-09 03:10:42', '2022-06-09 03:10:42', '1.5'),
(87, 11, 106, '50', '0', 88, 1, '2022-06-09 03:22:26', '2022-06-09 03:22:26', '50'),
(88, 11, 91, '3', '0', 77, 26, '2022-06-09 06:07:42', '2022-06-09 06:07:42', '3'),
(89, 42, 104, '100', '100', 86, 1, '2022-06-09 06:13:54', '2022-06-09 06:13:54', NULL),
(90, 42, 110, '27', '27', 90, 1, '2022-06-09 06:27:54', '2022-06-09 06:27:54', NULL),
(91, 42, 111, '1', '1', 90, 26, '2022-06-09 06:27:54', '2022-06-09 06:27:54', NULL),
(92, 42, 112, '39', '39', 91, 1, '2022-06-09 06:28:27', '2022-06-09 06:28:27', NULL),
(93, 42, 113, '3', '3', 91, 26, '2022-06-09 06:28:27', '2022-06-09 06:28:27', NULL),
(94, 10, 101, '2', '2', 85, 117, '2022-06-09 08:55:56', '2022-06-09 08:55:56', 'Already arrived on Site'),
(95, 10, 102, '1', '0.75', 85, 17, '2022-06-09 08:55:56', '2022-06-09 08:55:56', '0.18 Ton will transfer Site to Site'),
(96, 10, 103, '1.5', '1.5', 85, 26, '2022-06-09 08:55:56', '2022-06-09 08:55:56', NULL),
(97, 10, 118, '1500', '1500', 95, 106, '2022-06-10 02:59:05', '2022-06-10 02:59:05', NULL),
(98, 10, 115, '30', '30', 93, 4, '2022-06-10 03:00:30', '2022-06-10 03:00:30', NULL),
(99, 10, 114, '5000', '5000', 92, 25, '2022-06-10 03:01:00', '2022-06-10 03:01:00', NULL),
(100, 42, 119, '1000', '1000', 96, 25, '2022-06-10 04:27:24', '2022-06-10 04:27:24', NULL),
(101, 42, 120, '1.5', '1.5', 97, 26, '2022-06-10 04:28:02', '2022-06-10 04:28:02', NULL),
(102, 10, 122, '1', '1', 99, 26, '2022-06-10 06:36:47', '2022-06-10 06:36:47', NULL),
(103, 11, 107, '50', '0', 89, 1, '2022-06-10 08:06:27', '2022-06-10 08:06:27', '50'),
(104, 11, 108, '57', '0', 89, 10, '2022-06-10 08:06:27', '2022-06-10 08:06:27', '0.422'),
(105, 11, 109, '60', '0', 89, 7, '2022-06-10 08:06:27', '2022-06-10 08:06:27', '1.03'),
(106, 11, 116, '2', '0', 94, 26, '2022-06-10 08:11:41', '2022-06-10 08:11:41', '2'),
(107, 11, 117, '50', '0', 94, 4, '2022-06-10 08:11:41', '2022-06-10 08:11:41', '50'),
(108, 42, 124, '1', '1', 101, 26, '2022-06-11 02:50:51', '2022-06-11 02:50:51', NULL),
(109, 10, 130, '1', '1', 106, 15, '2022-06-11 02:59:15', '2022-06-11 02:59:15', NULL),
(110, 11, 126, '120', '0', 103, 19, '2022-06-11 03:15:21', '2022-06-11 03:15:21', 'Site to Site Transfer'),
(111, 11, 127, '12', '0', 103, 21, '2022-06-11 03:15:21', '2022-06-11 03:15:21', 'Site to Site Transfer'),
(112, 11, 129, '1.5', '1.5', 105, 26, '2022-06-11 03:17:58', '2022-06-11 03:17:58', NULL),
(113, 11, 128, '50', '50', 104, 4, '2022-06-11 03:25:58', '2022-06-11 03:25:58', NULL),
(114, 11, 128, '50', '50', 104, 4, '2022-06-11 03:27:00', '2022-06-11 03:27:00', NULL),
(115, 11, 123, '5000', '5000', 100, 25, '2022-06-11 03:29:10', '2022-06-11 03:29:10', NULL),
(116, 11, 131, '1.5', '1.5', 107, 26, '2022-06-11 03:30:48', '2022-06-11 03:30:48', NULL),
(117, 11, 132, '1.5', '1.5', 107, 27, '2022-06-11 03:30:48', '2022-06-11 03:30:48', NULL),
(118, 11, 121, '1.5', '1.5', 98, 26, '2022-06-11 03:32:38', '2022-06-11 03:32:38', NULL),
(119, 42, 32, '1.5', '1.5', 21, 26, '2022-06-11 04:12:05', '2022-06-11 04:12:05', NULL),
(120, 42, 33, '1.5', '1.5', 21, 27, '2022-06-11 04:12:05', '2022-06-11 04:12:05', NULL),
(121, 11, 138, '50', '50', 112, 4, '2022-06-11 07:42:46', '2022-06-11 07:42:46', NULL),
(122, 11, 139, '2', '2', 112, 26, '2022-06-11 07:42:46', '2022-06-11 07:42:46', NULL),
(123, 42, 133, '15', '15', 108, 95, '2022-06-13 02:30:40', '2022-06-13 02:30:40', NULL),
(124, 42, 134, '10', '10', 108, 97, '2022-06-13 02:30:40', '2022-06-13 02:30:40', NULL),
(125, 42, 137, '64', '64', 111, 4, '2022-06-13 02:36:52', '2022-06-13 02:36:52', NULL),
(126, 42, 140, '1.5', '1.5', 113, 26, '2022-06-13 02:52:29', '2022-06-13 02:52:29', NULL),
(127, 42, 141, '1.5', '1.5', 113, 27, '2022-06-13 02:52:29', '2022-06-13 02:52:29', NULL),
(128, 10, 142, '1', '1', 114, 17, '2022-06-13 03:05:56', '2022-06-13 03:05:56', 'Ground to 1st Floor Column Formwork approved by PD'),
(129, 10, 143, '15', '15', 115, 22, '2022-06-13 03:06:57', '2022-06-13 03:06:57', 'Ground to 1st Floor All Columns formwork approved by PD'),
(130, 11, 146, '5000', '5000', 117, 25, '2022-06-13 04:19:27', '2022-06-13 04:19:27', NULL),
(131, 11, 150, '5000', '5000', 120, 25, '2022-06-13 10:01:59', '2022-06-13 10:01:59', NULL),
(132, 42, 155, '1.5', '1.5', 124, 26, '2022-06-14 03:15:08', '2022-06-14 03:15:08', NULL),
(133, 42, 156, '1.5', '1.5', 125, 27, '2022-06-14 03:15:33', '2022-06-14 03:15:33', NULL),
(134, 42, 162, '40', '40', 130, 4, '2022-06-14 03:21:09', '2022-06-14 03:21:09', NULL),
(135, 42, 163, '3', '3', 130, 26, '2022-06-14 03:21:09', '2022-06-14 03:21:09', NULL),
(136, 42, 164, '5000', '5000', 130, 25, '2022-06-14 03:21:09', '2022-06-14 03:21:09', NULL),
(137, 42, 165, '2', '2', 130, 27, '2022-06-14 03:21:09', '2022-06-14 03:21:09', NULL),
(138, 10, 153, '1.5', '1.5', 122, 26, '2022-06-14 03:22:01', '2022-06-14 03:22:01', NULL),
(139, 10, 166, '162', '162', 131, 30, '2022-06-14 04:04:16', '2022-06-14 04:04:16', '7\"x7\" Glass Block'),
(140, 11, 160, '50', '50', 129, 4, '2022-06-14 07:00:52', '2022-06-14 07:00:52', NULL),
(141, 11, 161, '5', '4', 129, 26, '2022-06-14 07:00:52', '2022-06-14 07:00:52', NULL),
(142, 11, 154, '1.5', '1.5', 123, 26, '2022-06-14 07:02:25', '2022-06-14 07:02:25', NULL),
(143, 42, 172, '1000', '1000', 136, 25, '2022-06-14 08:43:47', '2022-06-14 08:43:47', NULL),
(144, 42, 170, '10', '10', 134, 4, '2022-06-14 08:45:27', '2022-06-14 08:45:27', NULL),
(145, 42, 171, '40', '40', 135, 1, '2022-06-14 08:46:27', '2022-06-14 08:46:27', NULL),
(146, 42, 169, '6', '6', 133, 26, '2022-06-14 09:20:34', '2022-06-14 09:20:34', NULL),
(147, 42, 176, '1.5', '1.5', 140, 27, '2022-06-15 03:04:02', '2022-06-15 03:04:02', NULL),
(148, 11, 151, '33', '0.62', 121, 7, '2022-06-15 03:17:28', '2022-06-15 03:17:28', NULL),
(149, 11, 152, '21', '0.64', 121, 8, '2022-06-15 03:17:28', '2022-06-15 03:17:28', NULL),
(150, 11, 167, '80', '80', 132, 4, '2022-06-15 03:19:56', '2022-06-15 03:19:56', NULL),
(151, 11, 168, '1.5', '1.5', 132, 27, '2022-06-15 03:19:56', '2022-06-15 03:19:56', NULL),
(152, 11, 173, '1.5', '1.5', 137, 26, '2022-06-15 03:22:32', '2022-06-15 03:22:32', NULL),
(153, 11, 174, '100', '100', 138, 4, '2022-06-15 03:23:18', '2022-06-15 03:23:18', NULL),
(154, 11, 177, '1.5', '1.5', 141, 26, '2022-06-15 03:29:22', '2022-06-15 03:29:22', NULL),
(155, 11, 178, '1.5', '1.5', 142, 26, '2022-06-15 03:31:55', '2022-06-15 03:31:55', NULL),
(156, 11, 179, '1.5', '1.5', 143, 26, '2022-06-15 03:32:55', '2022-06-15 03:32:55', NULL),
(157, 10, 147, '10000', '10000', 118, 25, '2022-06-15 03:49:16', '2022-06-15 03:49:16', 'For Ground Floor, Total For 5000+10000=15000 Just arrived on Site'),
(158, 10, 148, '2', '1.7556', 118, 5, '2022-06-15 03:49:16', '2022-06-15 03:49:16', '1st,2nd & Roof Floor 5%Wastage -29nos,External Column Stirrups-208nos=237 Nos (1.7556 Ton) Passed'),
(159, 42, 185, '40', '40', 149, 95, '2022-06-15 06:14:38', '2022-06-15 06:14:38', NULL),
(160, 10, 182, '1.5', '1.5', 146, 26, '2022-06-15 07:14:19', '2022-06-15 07:14:19', NULL),
(161, 10, 181, '1.5', '1.5', 145, 26, '2022-06-15 07:17:12', '2022-06-15 07:17:12', NULL),
(162, 10, 180, '1.5', '1.5', 144, 26, '2022-06-15 07:17:49', '2022-06-15 07:17:49', NULL),
(163, 10, 175, '100', '80', 139, 4, '2022-06-15 07:21:09', '2022-06-15 07:21:09', 'For Ground Floor ,1st Floor External Plastering Work,2nd Floor Internal Plastering'),
(164, 11, 149, '1.5', '1.5', 119, 26, '2022-06-15 07:31:21', '2022-06-15 07:31:21', NULL),
(165, 11, 144, '65', '0.48', 116, 10, '2022-06-15 07:32:46', '2022-06-15 07:32:46', NULL),
(166, 11, 145, '20', '0.22', 116, 6, '2022-06-15 07:32:46', '2022-06-15 07:32:46', NULL),
(167, 11, 183, '1.5', '1.5', 147, 131, '2022-06-15 07:36:21', '2022-06-15 07:36:21', NULL),
(168, 11, 135, '3', '20', 109, 117, '2022-06-15 10:00:47', '2022-06-15 10:00:47', 'From 100Yard မှ 20 Yard ချပေးခြင်း'),
(169, 11, 136, '3', '40 Yard', 110, 117, '2022-06-15 10:03:15', '2022-06-15 10:03:15', 'From 100Yard မှ 40Yard ချပေးခြင်း'),
(170, 10, 192, '3', '3', 153, 26, '2022-06-16 03:47:08', '2022-06-16 03:47:08', '+3 (Start)'),
(171, 10, 187, '1', '1', 151, 26, '2022-06-16 03:48:00', '2022-06-16 03:48:00', NULL),
(172, 10, 186, '1', '1', 150, 26, '2022-06-16 03:48:43', '2022-06-16 03:48:43', NULL),
(173, 11, 184, '3', '3', 148, 107, '2022-06-16 04:01:57', '2022-06-16 04:01:57', NULL),
(174, 10, 194, '1.5', '1.5', 155, 26, '2022-06-16 07:15:53', '2022-06-16 07:15:53', NULL),
(175, 11, 188, '1.5', '1.5', 152, 26, '2022-06-16 07:16:46', '2022-06-16 07:16:46', NULL),
(176, 11, 189, '1', '1', 152, 127, '2022-06-16 07:16:46', '2022-06-16 07:16:46', 'ကန်ထရိုက်တာဆီမှ ဖြတ်ရန်'),
(177, 11, 190, '5', '5', 152, 121, '2022-06-16 07:16:46', '2022-06-16 07:16:46', 'ကန်ထရိုက်တာဆီမှ ဖြတ်ရန်'),
(178, 11, 191, '5', '5', 152, 122, '2022-06-16 07:16:46', '2022-06-16 07:16:46', 'ကန်ထရိုက်တာဆီမှ ဖြတ်ရန်'),
(179, 42, 196, '0.7', '0.7', 157, 19, '2022-06-16 08:01:37', '2022-06-16 08:01:37', 'As per OM\'s Instruction.'),
(180, 11, 193, '1.5', '1.5', 154, 131, '2022-06-16 08:11:32', '2022-06-16 08:11:32', NULL),
(181, 11, 200, '3', '3', 161, 131, '2022-06-20 06:11:04', '2022-06-20 06:11:04', NULL),
(182, 11, 199, '40', '40', 160, 4, '2022-06-20 06:17:19', '2022-06-20 06:17:19', NULL),
(183, 42, 203, '1.5', '1.5', 164, 26, '2022-06-21 02:38:49', '2022-06-21 02:38:49', NULL),
(184, 10, 204, '50', '50', 165, 4, '2022-06-21 02:40:17', '2022-06-21 02:40:17', '80+50=130 Bags For Plastering'),
(185, 10, 205, '1.5', '1.5', 166, 26, '2022-06-21 02:41:57', '2022-06-21 02:41:57', NULL),
(186, 10, 198, '5000', '5000', 159, 25, '2022-06-21 02:43:01', '2022-06-21 02:43:01', NULL),
(187, 42, 206, '30', '30', 167, 98, '2022-06-21 02:57:47', '2022-06-21 02:57:47', NULL),
(188, 42, 207, '1.5', '1.5', 168, 26, '2022-06-21 02:59:39', '2022-06-21 02:59:39', NULL),
(189, 42, 208, '35', '35', 169, 1, '2022-06-21 03:02:14', '2022-06-21 03:02:14', NULL),
(190, 42, 209, '2', '2', 169, 26, '2022-06-21 03:02:14', '2022-06-21 03:02:14', NULL),
(191, 11, 210, '50', '50', 170, 1, '2022-06-21 03:06:00', '2022-06-21 03:06:00', NULL),
(192, 11, 211, '1.5', '1.5', 170, 26, '2022-06-21 03:06:00', '2022-06-21 03:06:00', NULL),
(193, 11, 212, '1.5', '1.5', 170, 27, '2022-06-21 03:06:00', '2022-06-21 03:06:00', NULL),
(194, 11, 216, '50', '50', 172, 1, '2022-06-21 03:29:08', '2022-06-21 03:29:08', NULL),
(195, 11, 217, '1.5', '1.5', 172, 26, '2022-06-21 03:29:08', '2022-06-21 03:29:08', NULL),
(196, 11, 218, '1.5', '1.5', 172, 27, '2022-06-21 03:29:08', '2022-06-21 03:29:08', NULL),
(197, 11, 197, '100', '100', 158, 1, '2022-06-21 04:08:53', '2022-06-21 04:08:53', NULL),
(198, 42, 220, '5000', '5000', 174, 25, '2022-06-21 10:34:22', '2022-06-21 10:34:22', NULL),
(199, 42, 221, '1.5', '1.5', 174, 26, '2022-06-21 10:34:22', '2022-06-21 10:34:22', NULL),
(200, 42, 222, '1.5', '1.5', 174, 27, '2022-06-21 10:34:22', '2022-06-21 10:34:22', NULL),
(201, 42, 223, '40', '40', 174, 4, '2022-06-21 10:34:22', '2022-06-21 10:34:22', NULL),
(202, 42, 235, '1500', '1500', 184, 25, '2022-06-22 02:22:06', '2022-06-22 02:22:06', NULL),
(203, 42, 234, '20', '20', 183, 4, '2022-06-22 02:25:11', '2022-06-22 02:25:11', NULL),
(204, 42, 232, '1.3', '1.5', 181, 27, '2022-06-22 02:29:20', '2022-06-22 02:29:20', NULL),
(205, 42, 231, '50', '50', 180, 1, '2022-06-22 02:30:30', '2022-06-22 02:30:30', NULL),
(206, 10, 225, '1', '1', 176, 130, '2022-06-22 02:59:44', '2022-06-22 02:59:44', 'For Large Window-W6 Lintel and Verandah Kicker Rebar Installation'),
(207, 10, 236, '1.8', '1.8', 185, 5, '2022-06-22 03:14:46', '2022-06-22 03:14:46', 'For Slab, Stair and Column Ties all rebar QS passed. Just remain DPC and Lintel and Vertical Stiffener Rebar'),
(208, 11, 227, '20', '20', 178, 136, '2022-06-22 03:20:47', '2022-06-22 03:20:47', NULL),
(209, 11, 228, '3', '3', 178, 135, '2022-06-22 03:20:47', '2022-06-22 03:20:47', NULL),
(210, 11, 229, '2', '2', 178, 133, '2022-06-22 03:20:47', '2022-06-22 03:20:47', NULL),
(211, 11, 219, '60', '60', 173, 4, '2022-06-22 03:33:52', '2022-06-22 03:33:52', NULL),
(212, 11, 226, '1.5', '1.5', 177, 26, '2022-06-22 03:46:27', '2022-06-22 03:46:27', NULL),
(213, 11, 125, '0.13', '0.13', 102, 10, '2022-06-22 09:53:46', '2022-06-22 09:53:46', 'Site to Site Transfer From Ma Hnin Wutt Ye Phyo )'),
(214, 42, 240, '100', '100', 189, 93, '2022-06-23 02:55:25', '2022-06-23 02:55:25', NULL),
(215, 42, 238, '1500', '1500', 187, 25, '2022-06-23 02:55:50', '2022-06-23 02:55:50', NULL),
(216, 11, 242, '50', '50', 191, 4, '2022-06-23 04:16:09', '2022-06-23 04:16:09', NULL),
(217, 11, 239, '1.5', '1.5', 188, 26, '2022-06-23 04:16:59', '2022-06-23 04:16:59', NULL),
(218, 42, 230, '30', '25', 179, 104, '2022-06-23 04:46:56', '2022-06-23 04:46:56', NULL),
(219, 11, 256, '3', '3', 199, 107, '2022-06-24 03:43:19', '2022-06-24 03:43:19', NULL),
(220, 11, 255, '1.5', '1.5', 198, 26, '2022-06-24 03:44:04', '2022-06-24 03:44:04', NULL),
(221, 11, 250, '4', '4', 194, 147, '2022-06-24 03:44:56', '2022-06-24 03:44:56', NULL),
(222, 11, 251, '4', '4', 194, 151, '2022-06-24 03:44:56', '2022-06-24 03:44:56', NULL),
(223, 11, 245, '5', '5', 193, 141, '2022-06-24 03:46:30', '2022-06-24 03:46:30', NULL),
(224, 11, 246, '1', '1', 193, 143, '2022-06-24 03:46:30', '2022-06-24 03:46:30', NULL),
(225, 11, 247, '4', '4', 193, 144, '2022-06-24 03:46:30', '2022-06-24 03:46:30', NULL),
(226, 11, 248, '3', '3', 193, 145, '2022-06-24 03:46:30', '2022-06-24 03:46:30', NULL),
(227, 11, 249, '4', '4', 193, 146, '2022-06-24 03:46:30', '2022-06-24 03:46:30', NULL),
(228, 11, 243, '40', '40', 192, 34, '2022-06-24 03:52:57', '2022-06-24 03:52:57', NULL),
(229, 11, 244, '5', '4', 192, 139, '2022-06-24 03:52:57', '2022-06-24 03:52:57', NULL),
(230, 42, 252, '10', '0.1887', 195, 7, '2022-06-24 12:19:17', '2022-06-24 12:19:17', NULL),
(231, 42, 253, '38', '0.2815', 196, 10, '2022-06-24 12:24:56', '2022-06-24 12:24:56', NULL),
(232, 42, 241, '2', '0.4848', 190, 8, '2022-06-24 12:54:41', '2022-06-24 12:54:41', '20mm (16Nos)');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_received_by_engineers`
--

INSERT INTO `variable_received_by_engineers` (`id`, `user_id`, `received_by_engineer_status`, `received_date`, `variable_request_info_id`, `created_at`, `updated_at`, `remark`) VALUES
(4, 31, 'received', '2022-05-10 12:00 AM', 5, '2022-05-12 12:20:43', '2022-05-12 12:20:43', NULL),
(5, 31, 'received', '2022-05-12 12:00 AM', 6, '2022-05-12 12:20:58', '2022-05-12 12:20:58', NULL),
(6, 31, 'received', '2022-05-12 12:00 AM', 11, '2022-05-12 12:21:04', '2022-05-12 12:21:04', NULL),
(7, 28, 'received', '2022-05-13 12:00 AM', 13, '2022-05-13 04:41:17', '2022-05-13 04:41:17', NULL),
(8, 28, 'received', '2022-05-17 03:00 PM', 17, '2022-05-17 07:40:46', '2022-05-17 07:40:46', NULL),
(9, 31, 'received', '2022-05-17 12:00 AM', 18, '2022-05-21 12:30:04', '2022-05-21 12:30:04', NULL),
(10, 31, 'received', '2022-05-17 12:00 AM', 19, '2022-05-21 12:30:14', '2022-05-21 12:30:14', NULL),
(11, 31, 'received', '2022-05-17 12:00 AM', 20, '2022-05-21 12:30:23', '2022-05-21 12:30:23', NULL),
(12, 31, 'received', '2022-05-26 12:00 AM', 21, '2022-05-27 09:24:38', '2022-05-27 09:24:38', NULL),
(13, 31, 'received', '2022-05-26 12:00 AM', 22, '2022-05-27 09:24:46', '2022-05-27 09:24:46', NULL),
(14, 31, 'received', '2022-06-01 12:00 AM', 23, '2022-06-01 09:59:55', '2022-06-01 09:59:55', NULL),
(15, 28, 'received', '2022-06-01 12:00 AM', 27, '2022-06-02 06:49:48', '2022-06-02 06:49:48', NULL),
(16, 28, 'received', '2022-06-02 07:00 PM', 28, '2022-06-02 06:50:19', '2022-06-02 06:50:19', NULL),
(17, 31, 'received', '2022-06-03 12:00 AM', 29, '2022-06-03 06:46:58', '2022-06-03 06:46:58', NULL),
(18, 31, 'received', '2022-06-03 12:00 AM', 46, '2022-06-03 06:52:26', '2022-06-03 06:52:26', NULL),
(19, 37, 'received', '2022-06-04 03:00 PM', 47, '2022-06-05 09:44:06', '2022-06-05 09:44:06', NULL),
(20, 28, 'received', '2022-06-05 09:00 AM', 54, '2022-06-05 12:03:58', '2022-06-05 12:03:58', NULL),
(21, 36, 'received', '2022-06-04 01:15 PM', 41, '2022-06-05 12:07:00', '2022-06-05 12:07:00', NULL),
(22, 37, 'received', '2022-06-07 12:00 PM', 57, '2022-06-07 05:12:46', '2022-06-07 05:12:46', NULL),
(23, 26, 'received', '2022-06-06 12:00 AM', 56, '2022-06-07 09:34:38', '2022-06-07 09:34:38', NULL),
(24, 36, 'received', '2022-06-07 03:00 PM', 42, '2022-06-07 10:06:04', '2022-06-07 10:06:04', NULL),
(25, 32, 'received', '2022-06-08 09:00 AM', 52, '2022-06-08 02:50:50', '2022-06-08 02:50:50', NULL),
(26, 32, 'received', '2022-06-08 09:00 AM', 53, '2022-06-08 02:50:56', '2022-06-08 02:50:56', NULL),
(27, 32, 'received', '2022-06-08 09:00 AM', 51, '2022-06-08 02:51:08', '2022-06-08 02:51:08', NULL),
(28, 22, 'received', '2022-06-08 09:00 AM', 34, '2022-06-08 02:51:13', '2022-06-08 02:51:13', NULL),
(29, 22, 'received', '2022-06-08 09:00 AM', 37, '2022-06-08 02:51:52', '2022-06-08 02:51:52', NULL),
(30, 22, 'received', '2022-06-08 09:00 AM', 38, '2022-06-08 02:51:58', '2022-06-08 02:51:58', NULL),
(31, 22, 'received', '2022-06-08 09:00 AM', 39, '2022-06-08 02:52:22', '2022-06-08 02:52:22', NULL),
(32, 26, 'received', '2022-06-08 12:00 AM', 59, '2022-06-08 03:30:30', '2022-06-08 03:30:30', NULL),
(33, 26, 'received', '2022-05-11 12:00 AM', 7, '2022-06-08 03:31:23', '2022-06-08 03:31:23', NULL),
(34, 26, 'received', '2022-05-11 12:00 AM', 8, '2022-06-08 03:31:53', '2022-06-08 03:31:53', NULL),
(35, 26, 'received', '2022-05-14 12:00 AM', 12, '2022-06-08 03:32:42', '2022-06-08 03:32:42', NULL),
(36, 26, 'received', '2022-05-13 12:00 AM', 14, '2022-06-08 03:33:44', '2022-06-08 03:33:44', NULL),
(37, 26, 'received', '2022-05-13 12:00 AM', 15, '2022-06-08 03:34:08', '2022-06-08 03:34:08', NULL),
(38, 26, 'received', '2022-05-13 12:00 AM', 16, '2022-06-08 03:34:46', '2022-06-08 03:34:46', NULL),
(39, 26, 'received', '2022-06-03 12:00 AM', 30, '2022-06-08 03:35:15', '2022-06-08 03:35:15', NULL),
(40, 26, 'received', '2022-06-04 12:00 AM', 32, '2022-06-08 03:35:50', '2022-06-08 03:35:50', NULL),
(41, 26, 'received', '2022-06-04 12:00 AM', 33, '2022-06-08 03:36:17', '2022-06-08 03:36:17', NULL),
(42, 26, 'received', '2022-06-05 12:00 AM', 44, '2022-06-08 03:38:05', '2022-06-08 03:38:05', NULL),
(43, 26, 'received', '2022-06-08 12:00 AM', 45, '2022-06-08 04:32:28', '2022-06-08 04:32:28', NULL),
(44, 37, 'received', '2022-06-08 12:00 PM', 64, '2022-06-08 05:06:37', '2022-06-08 05:06:37', NULL),
(45, 37, 'received', '2022-06-08 12:00 PM', 65, '2022-06-08 05:07:00', '2022-06-08 05:07:00', NULL),
(46, 26, 'received', '2022-06-08 12:00 AM', 60, '2022-06-08 06:30:07', '2022-06-08 06:30:07', NULL),
(47, 28, 'received', '2022-06-08 04:00 PM', 67, '2022-06-08 11:41:48', '2022-06-08 11:41:48', NULL),
(48, 47, 'received', '2022-06-08 07:00 PM', 61, '2022-06-08 12:39:25', '2022-06-08 12:39:25', NULL),
(49, 47, 'received', '2022-06-08 07:00 PM', 62, '2022-06-08 12:39:35', '2022-06-08 12:39:35', NULL),
(50, 47, 'received', '2022-06-08 07:00 PM', 63, '2022-06-08 12:39:56', '2022-06-08 12:39:56', NULL),
(51, 47, 'received', '2022-06-08 07:00 PM', 73, '2022-06-08 12:40:14', '2022-06-08 12:40:14', NULL),
(52, 31, 'received', '2022-06-08 08:00 AM', 66, '2022-06-09 01:18:19', '2022-06-09 01:18:19', NULL),
(53, 31, 'received', '2022-06-06 08:00 AM', 55, '2022-06-09 01:18:43', '2022-06-09 01:18:43', NULL),
(54, 31, 'received', '2022-06-09 08:00 AM', 31, '2022-06-09 01:19:06', '2022-06-09 01:19:06', NULL),
(55, 26, 'received', '2022-06-09 12:00 AM', 79, '2022-06-09 03:36:32', '2022-06-09 03:36:32', NULL),
(56, 37, 'received', '2022-06-10 11:00 AM', 58, '2022-06-10 04:09:54', '2022-06-10 04:09:54', NULL),
(57, 31, 'received', '2022-06-09 11:00 AM', 74, '2022-06-10 04:19:05', '2022-06-10 04:19:05', NULL),
(58, 28, 'received', '2022-06-10 11:00 AM', 95, '2022-06-10 14:59:57', '2022-06-10 14:59:57', NULL),
(59, 28, 'received', '2022-06-10 03:00 PM', 85, '2022-06-10 15:00:23', '2022-06-10 15:00:23', NULL),
(60, 28, 'received', '2022-06-10 03:00 PM', 85, '2022-06-10 15:00:24', '2022-06-10 15:00:24', NULL),
(61, 28, 'received', '2022-06-10 03:00 PM', 43, '2022-06-10 15:00:43', '2022-06-10 15:00:43', NULL),
(62, 28, 'received', '2022-06-10 03:00 PM', 40, '2022-06-10 15:00:59', '2022-06-10 15:00:59', NULL),
(63, 26, 'received', '2022-06-11 10:00 AM', 82, '2022-06-11 03:33:19', '2022-06-11 03:33:19', NULL),
(64, 31, 'received', '2022-06-11 09:00 AM', 86, '2022-06-12 02:22:08', '2022-06-12 02:22:08', NULL),
(65, 44, 'received', '2022-06-13 09:00 AM', 89, '2022-06-13 02:40:50', '2022-06-13 02:40:50', NULL),
(66, 44, 'received', '2022-06-13 09:00 AM', 107, '2022-06-13 02:41:07', '2022-06-13 02:41:07', NULL),
(67, 44, 'received', '2022-06-13 09:00 AM', 107, '2022-06-13 02:41:08', '2022-06-13 02:41:08', NULL),
(68, 44, 'received', '2022-06-13 09:00 AM', 107, '2022-06-13 02:41:10', '2022-06-13 02:41:10', NULL),
(69, 44, 'received', '2022-06-13 09:00 AM', 107, '2022-06-13 02:41:10', '2022-06-13 02:41:10', NULL),
(70, 44, 'received', '2022-06-13 09:00 AM', 107, '2022-06-13 02:41:10', '2022-06-13 02:41:10', NULL),
(71, 26, 'received', '2022-06-12 11:00 AM', 83, '2022-06-13 04:16:56', '2022-06-13 04:16:56', NULL),
(72, 26, 'received', '2022-06-12 11:00 AM', 104, '2022-06-13 04:17:16', '2022-06-13 04:17:16', NULL),
(73, 36, 'received', '2022-06-13 02:00 PM', 92, '2022-06-13 06:52:41', '2022-06-13 06:52:41', NULL),
(74, 36, 'received', '2022-06-13 02:30 PM', 99, '2022-06-13 07:22:40', '2022-06-13 07:22:40', NULL),
(75, 36, 'received', '2022-06-13 03:00 PM', 93, '2022-06-13 08:38:12', '2022-06-13 08:38:12', NULL),
(76, 26, 'received', '2022-06-12 04:00 PM', 105, '2022-06-13 09:04:40', '2022-06-13 09:04:40', NULL),
(77, 37, 'received', '2022-06-13 04:00 PM', 96, '2022-06-13 09:25:00', '2022-06-13 09:25:00', NULL),
(78, 37, 'received', '2022-06-13 04:00 PM', 97, '2022-06-13 09:25:05', '2022-06-13 09:25:05', NULL),
(79, 37, 'received', '2022-06-13 04:00 PM', 81, '2022-06-13 09:25:24', '2022-06-13 09:25:24', NULL),
(80, 37, 'received', '2022-06-13 04:00 PM', 80, '2022-06-13 09:25:29', '2022-06-13 09:25:29', NULL),
(81, 44, 'received', '2022-06-14 11:00 AM', 119, '2022-06-14 04:30:02', '2022-06-14 04:30:02', NULL),
(82, 22, 'received', '2022-06-14 12:00 PM', 111, '2022-06-14 05:12:12', '2022-06-14 05:12:12', NULL),
(83, 26, 'received', '2022-06-14 01:00 PM', 120, '2022-06-14 06:23:36', '2022-06-14 06:23:36', NULL),
(84, 31, 'received', '2022-06-09 10:00 AM', 137, '2022-06-15 03:56:51', '2022-06-15 03:56:51', NULL),
(85, 31, 'received', '2022-06-14 11:00 AM', 113, '2022-06-15 04:08:39', '2022-06-15 04:08:39', NULL),
(86, 31, 'received', '2022-06-12 11:00 AM', 75, '2022-06-15 04:10:47', '2022-06-15 04:10:47', NULL),
(87, 31, 'received', '2022-06-12 11:00 AM', 88, '2022-06-15 04:11:14', '2022-06-15 04:11:14', NULL),
(88, 31, 'received', '2022-06-12 11:00 AM', 88, '2022-06-15 04:11:14', '2022-06-15 04:11:14', NULL),
(89, 31, 'received', '2022-06-13 11:00 AM', 98, '2022-06-15 04:12:35', '2022-06-15 04:12:35', NULL),
(90, 31, 'received', '2022-06-12 11:00 AM', 102, '2022-06-15 04:15:20', '2022-06-15 04:15:20', NULL),
(91, 31, 'received', '2022-06-15 02:00 PM', 140, '2022-06-15 07:20:02', '2022-06-15 07:20:02', NULL),
(92, 36, 'received', '2022-06-15 03:00 PM', 131, '2022-06-15 08:14:44', '2022-06-15 08:14:44', NULL),
(93, 28, 'received', '2022-06-16 08:00 AM', 115, '2022-06-16 01:45:44', '2022-06-16 01:45:44', NULL),
(94, 28, 'received', '2022-06-16 08:00 AM', 114, '2022-06-16 01:45:53', '2022-06-16 01:45:53', NULL),
(95, 28, 'received', '2022-06-16 08:00 AM', 106, '2022-06-16 01:46:03', '2022-06-16 01:46:03', NULL),
(96, 36, 'received', '2022-06-16 01:00 PM', 150, '2022-06-16 05:45:09', '2022-06-16 05:45:09', NULL),
(97, 36, 'received', '2022-06-16 01:00 PM', 150, '2022-06-16 05:45:09', '2022-06-16 05:45:09', NULL),
(98, 36, 'received', '2022-06-16 01:00 PM', 150, '2022-06-16 05:45:17', '2022-06-16 05:45:17', NULL),
(99, 26, 'received', '2022-06-15 02:00 PM', 122, '2022-06-16 07:02:01', '2022-06-16 07:02:01', NULL),
(100, 26, 'received', '2022-06-15 02:00 PM', 123, '2022-06-16 07:02:19', '2022-06-16 07:02:19', NULL),
(101, 26, 'received', '2022-06-16 02:00 PM', 138, '2022-06-16 07:02:46', '2022-06-16 07:02:46', NULL),
(102, 26, 'received', '2022-06-16 02:00 PM', 139, '2022-06-16 07:03:14', '2022-06-16 07:03:14', NULL),
(103, 37, 'received', '2022-06-16 02:00 PM', 133, '2022-06-16 07:56:04', '2022-06-16 07:56:04', NULL),
(104, 31, 'received', '2022-06-19 07:00 AM', 148, '2022-06-20 00:40:06', '2022-06-20 00:40:06', NULL),
(105, 36, 'received', '2022-06-18 09:00 AM', 151, '2022-06-20 02:53:02', '2022-06-20 02:53:02', NULL),
(106, 37, 'received', '2022-06-20 10:00 AM', 157, '2022-06-20 03:09:08', '2022-06-20 03:09:08', NULL),
(107, 44, 'received', '2022-06-21 06:00 AM', 152, '2022-06-20 23:41:15', '2022-06-20 23:41:15', NULL),
(108, 44, 'received', '2022-06-21 06:00 AM', 117, '2022-06-20 23:41:58', '2022-06-20 23:41:58', NULL),
(109, 32, 'received', '2022-06-21 01:00 PM', 90, '2022-06-21 06:55:28', '2022-06-21 06:55:28', NULL),
(110, 32, 'received', '2022-06-21 01:00 PM', 91, '2022-06-21 06:55:37', '2022-06-21 06:55:37', NULL),
(111, 22, 'received', '2022-06-21 02:00 PM', 154, '2022-06-21 07:10:07', '2022-06-21 07:10:07', NULL),
(112, 22, 'received', '2022-06-21 02:00 PM', 147, '2022-06-21 07:10:23', '2022-06-21 07:10:23', NULL),
(113, 22, 'received', '2022-06-21 02:00 PM', 132, '2022-06-21 07:10:40', '2022-06-21 07:10:40', NULL),
(114, 31, 'received', '2022-06-12 02:00 PM', 158, '2022-06-21 07:14:23', '2022-06-21 07:14:23', NULL),
(115, 26, 'received', '2022-06-17 03:00 PM', 141, '2022-06-21 08:19:29', '2022-06-21 08:19:29', NULL),
(116, 26, 'received', '2022-06-18 03:00 PM', 142, '2022-06-21 08:19:51', '2022-06-21 08:19:51', NULL),
(117, 26, 'received', '2022-06-19 03:00 PM', 143, '2022-06-21 08:20:24', '2022-06-21 08:20:24', NULL),
(118, 26, 'received', '2022-06-17 03:00 PM', 144, '2022-06-21 08:20:46', '2022-06-21 08:20:46', NULL),
(119, 26, 'received', '2022-06-18 03:00 PM', 145, '2022-06-21 08:21:25', '2022-06-21 08:21:25', NULL),
(120, 47, 'received', '2022-06-21 05:00 PM', 149, '2022-06-21 10:12:52', '2022-06-21 10:12:52', NULL),
(121, 47, 'received', '2022-06-21 05:00 PM', 72, '2022-06-21 10:13:24', '2022-06-21 10:13:24', NULL),
(122, 47, 'received', '2022-06-21 05:00 PM', 101, '2022-06-21 10:13:44', '2022-06-21 10:13:44', NULL),
(123, 37, 'received', '2022-06-21 05:00 PM', 164, '2022-06-21 10:16:20', '2022-06-21 10:16:20', NULL),
(124, 47, 'received', '2022-06-22 02:00 PM', 70, '2022-06-22 07:29:28', '2022-06-22 07:29:28', NULL),
(125, 47, 'received', '2022-06-22 02:00 PM', 71, '2022-06-22 07:29:41', '2022-06-22 07:29:41', NULL),
(126, 47, 'received', '2022-06-22 02:00 PM', 167, '2022-06-22 07:30:17', '2022-06-22 07:30:17', NULL),
(127, 22, 'received', '2022-06-22 02:00 PM', 177, '2022-06-22 07:37:10', '2022-06-22 07:37:10', NULL),
(128, 22, 'received', '2022-06-22 02:00 PM', 112, '2022-06-22 07:39:13', '2022-06-22 07:39:13', NULL),
(129, 22, 'received', '2022-06-22 02:00 PM', 35, '2022-06-22 07:39:24', '2022-06-22 07:39:24', NULL),
(130, 22, 'received', '2022-06-22 02:00 PM', 36, '2022-06-22 07:39:47', '2022-06-22 07:39:47', NULL),
(131, 47, 'received', '2022-06-22 02:00 PM', 168, '2022-06-22 07:52:26', '2022-06-22 07:52:26', NULL),
(132, 28, 'received', '2022-06-18 09:00 AM', 153, '2022-06-22 15:02:09', '2022-06-22 15:02:09', NULL),
(133, 28, 'received', '2022-06-18 09:00 AM', 118, '2022-06-22 15:03:02', '2022-06-22 15:03:02', NULL),
(134, 28, 'received', '2022-06-18 09:00 AM', 118, '2022-06-22 15:03:03', '2022-06-22 15:03:03', NULL),
(135, 26, 'received', '2022-06-22 10:00 PM', 165, '2022-06-22 15:08:24', '2022-06-22 15:08:24', NULL),
(136, 26, 'received', '2022-06-16 10:00 PM', 109, '2022-06-22 15:08:57', '2022-06-22 15:08:57', NULL),
(137, 31, 'received', '2022-06-16 10:00 PM', 108, '2022-06-22 15:09:28', '2022-06-22 15:09:28', NULL),
(138, 26, 'received', '2022-06-16 10:00 PM', 110, '2022-06-22 15:09:34', '2022-06-22 15:09:34', NULL),
(139, 31, 'received', '2022-06-19 10:00 PM', 100, '2022-06-22 15:10:33', '2022-06-22 15:10:33', NULL),
(140, 26, 'received', '2022-06-10 10:00 PM', 77, '2022-06-22 15:13:01', '2022-06-22 15:13:01', NULL),
(141, 44, 'received', '2022-06-23 06:00 AM', 172, '2022-06-22 23:19:33', '2022-06-22 23:19:33', NULL),
(142, 44, 'received', '2022-06-23 06:00 AM', 170, '2022-06-22 23:19:45', '2022-06-22 23:19:45', NULL),
(143, 44, 'received', '2022-06-23 06:00 AM', 103, '2022-06-22 23:19:50', '2022-06-22 23:19:50', NULL),
(144, 44, 'received', '2022-06-23 06:00 AM', 116, '2022-06-22 23:20:07', '2022-06-22 23:20:07', NULL),
(145, 37, 'received', '2022-06-23 09:00 AM', 124, '2022-06-23 02:58:21', '2022-06-23 02:58:21', NULL),
(146, 37, 'received', '2022-06-23 09:00 AM', 125, '2022-06-23 02:58:36', '2022-06-23 02:58:36', NULL),
(147, 37, 'received', '2022-06-23 09:00 AM', 134, '2022-06-23 02:58:56', '2022-06-23 02:58:56', NULL),
(148, 37, 'received', '2022-06-23 09:00 AM', 136, '2022-06-23 02:59:35', '2022-06-23 02:59:35', NULL),
(149, 25, 'received', '2022-06-23 12:00 PM', 160, '2022-06-23 05:09:10', '2022-06-23 05:09:10', NULL),
(150, 25, 'received', '2022-06-23 12:00 PM', 161, '2022-06-23 05:09:39', '2022-06-23 05:09:39', NULL),
(151, 26, 'received', '2022-06-21 05:00 PM', 155, '2022-06-23 10:36:56', '2022-06-23 10:36:56', NULL),
(152, 26, 'received', '2022-06-24 12:00 PM', 198, '2022-06-24 05:05:23', '2022-06-24 05:05:23', NULL),
(153, 26, 'received', '2022-06-24 02:00 PM', 166, '2022-06-24 07:01:16', '2022-06-24 07:01:16', NULL),
(154, 22, 'received', '2022-06-24 07:00 PM', 189, '2022-06-24 12:20:49', '2022-06-24 12:20:49', NULL),
(155, 22, 'received', '2022-06-24 07:00 PM', 173, '2022-06-24 12:21:39', '2022-06-24 12:21:39', NULL),
(156, 22, 'received', '2022-06-24 07:00 PM', 76, '2022-06-24 12:22:05', '2022-06-24 12:22:05', NULL),
(157, 22, 'received', '2022-06-24 07:00 PM', 129, '2022-06-24 12:22:25', '2022-06-24 12:22:25', NULL),
(158, 22, 'received', '2022-06-24 07:00 PM', 94, '2022-06-24 12:22:41', '2022-06-24 12:22:41', NULL),
(159, 28, 'received', '2022-06-24 01:00 PM', 185, '2022-06-24 16:27:23', '2022-06-24 16:27:23', NULL);

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
  `work_scope` text COLLATE utf8mb4_unicode_ci,
  `request_status` text COLLATE utf8mb4_unicode_ci,
  `request_status_date` text COLLATE utf8mb4_unicode_ci,
  `request_status_user` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_request_infos`
--

INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`, `request_status`, `request_status_date`, `request_status_user`) VALUES
(5, 'VR-000001', '2022-05-07 12:00 AM', 14, 31, '2022-05-07 04:12:36', '2022-06-14 07:09:18', 'accept', '2022-05-09 15:04:05pm', 'finished', '2022-05-10 09:51:46am', 'finished', '2022-05-29 15:36:05pm', 'accept', '2022-06-14 14:09:18pm', 'received', '2022-05-10 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:44:41pm', '2022-05-10 12:00 AM', 'Lean Concrete casting', NULL, NULL, NULL),
(6, 'VR-000002', '2022-05-09 12:00 AM', 14, 31, '2022-05-09 03:12:13', '2022-06-14 10:19:54', 'accept', '2022-05-09 15:04:38pm', 'finished', '2022-05-10 09:08:18am', 'finished', '2022-05-26 16:07:19pm', 'accept', '2022-06-14 17:19:54pm', 'received', '2022-05-12 12:00 AM', 'finished', '2022-06-11 11:53:41am', NULL, NULL, 'finished', '2022-06-07 22:15:02pm', '2022-05-12 12:00 AM', 'Lean concret for footing', NULL, NULL, NULL),
(7, 'VR-000003', '2022-05-09 10:40 AM', 4, 26, '2022-05-09 03:43:10', '2022-06-14 10:18:38', 'accept', '2022-05-09 15:09:16pm', 'finished', '2022-05-10 10:50:52am', 'finished', '2022-05-29 15:51:34pm', 'accept', '2022-06-14 17:18:38pm', 'received', '2022-05-11 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:17:20pm', '2022-05-11 09:00 AM', 'G.floor brick work,plastering work,ground tank work', NULL, NULL, NULL),
(8, 'VR-000004', '2022-05-09 12:00 AM', 5, 26, '2022-05-09 03:49:48', '2022-06-14 10:17:43', 'accept', '2022-05-09 15:21:21pm', 'finished', '2022-05-10 09:58:35am', 'finished', '2022-05-29 15:53:44pm', 'accept', '2022-06-14 17:17:43pm', 'received', '2022-05-11 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:18:14pm', '2022-05-11 12:00 AM', 'Concrete casting for DPC,lintel,window sail etc', NULL, NULL, NULL),
(9, 'VR-000005', '2022-05-09 12:00 AM', 6, 25, '2022-05-09 06:55:58', '2022-06-14 10:15:43', 'accept', '2022-05-09 15:21:33pm', 'finished', '2022-05-10 09:57:22am', 'finished', '2022-05-29 15:55:47pm', 'accept', '2022-06-14 17:15:43pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:13:40pm', '2022-05-12 12:00 AM', 'For Plastering Work', NULL, NULL, NULL),
(10, 'VR-000006', '2022-05-09 12:00 AM', 6, 25, '2022-05-09 07:02:30', '2022-06-14 10:14:59', 'accept', '2022-05-10 09:53:47am', 'finished', '2022-05-10 09:54:19am', 'finished', '2022-05-29 15:57:28pm', 'accept', '2022-06-14 17:14:59pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:19:18pm', '2022-05-12 12:00 AM', 'For Plastering Work', NULL, NULL, NULL),
(11, 'VR-000007', '2022-05-09 12:00 AM', 14, 31, '2022-05-09 10:09:30', '2022-06-14 10:14:19', 'accept', '2022-05-10 09:59:13am', 'finished', '2022-05-10 10:51:15am', 'finished', '2022-05-29 15:58:34pm', 'accept', '2022-06-14 17:14:19pm', 'received', '2022-05-12 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:12:38pm', '2022-05-14 12:00 AM', 'Retaining wall', NULL, NULL, NULL),
(12, 'VR-000008', '2022-05-10 12:00 AM', 4, 26, '2022-05-10 06:07:06', '2022-06-14 10:14:57', 'accept', '2022-05-11 11:48:36am', 'finished', '2022-05-11 11:49:15am', 'finished', '2022-05-29 15:59:39pm', 'accept', '2022-06-14 17:13:40pm', 'received', '2022-05-14 12:00 AM', 'finished', '2022-06-14 17:14:57pm', NULL, NULL, 'finished', '2022-06-07 22:11:55pm', '2022-05-10 12:00 AM', 'G.floor brick work,1st floor brick work', NULL, NULL, NULL),
(13, 'VR-000009', '2022-05-10 12:00 AM', 8, 28, '2022-05-10 09:40:28', '2022-06-16 06:27:33', 'accept', '2022-05-11 11:48:47am', 'finished', '2022-05-11 11:49:44am', 'finished', '2022-05-29 16:04:05pm', 'accept', '2022-06-14 17:13:02pm', 'received', '2022-05-13 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 13:27:33pm', '2022-05-10 09:30 AM', 'Ground Tank & Spetic Tank', NULL, NULL, NULL),
(14, 'VR-000010', '2022-05-11 12:00 AM', 4, 26, '2022-05-11 09:17:26', '2022-06-08 03:33:44', 'accept', '2022-05-12 17:14:08pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-05-13 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', 'Roof slab and penthouse slab', NULL, NULL, NULL),
(15, 'VR-000011', '2022-05-11 12:00 AM', 5, 26, '2022-05-11 09:21:14', '2022-06-08 03:34:08', 'accept', '2022-05-12 17:15:28pm', 'finished', '2022-05-12 17:15:56pm', 'finished', '2022-05-29 16:24:42pm', 'reject', '2022-06-07 16:38:38pm', 'received', '2022-05-13 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', 'Brick work and plastering work', NULL, NULL, NULL),
(16, 'VR-000012', '2022-05-11 12:00 AM', 5, 26, '2022-05-11 09:23:38', '2022-06-14 10:12:03', 'accept', '2022-05-12 17:16:12pm', 'finished', '2022-05-13 10:08:34am', 'finished', '2022-05-29 16:25:39pm', 'accept', '2022-06-14 17:12:03pm', 'received', '2022-05-13 12:00 AM', 'finished', '2022-06-14 17:02:30pm', NULL, NULL, 'finished', '2022-06-07 22:21:01pm', '2022-05-13 12:00 AM', '1st floor and 2nd floor brick work', NULL, NULL, NULL),
(17, 'VR-000013', '2022-05-12 12:00 AM', 8, 28, '2022-05-12 09:49:48', '2022-06-07 15:06:45', 'accept', '2022-05-13 10:07:03am', 'finished', '2022-05-13 10:07:20am', 'finished', '2022-05-17 08:49:36am', 'accept', '2022-05-29 18:05:10pm', 'received', '2022-05-17 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:06:45pm', '2022-05-14 12:00 AM', 'Building scaffolding', NULL, NULL, NULL),
(18, 'VR-000014', '2022-05-12 12:00 AM', 14, 31, '2022-05-12 12:23:48', '2022-05-29 11:03:04', 'accept', '2022-05-13 10:07:39am', 'finished', '2022-05-13 10:09:18am', 'finished', '2022-05-29 16:28:48pm', 'reject', '2022-05-29 18:03:04pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 12:00 AM', 'Footing GL C/D/E concrete casting', NULL, NULL, NULL),
(19, 'VR-000015', '2022-05-13 12:00 AM', 11, 31, '2022-05-13 13:04:42', '2022-06-07 15:05:45', 'accept', '2022-05-16 13:09:18pm', 'finished', '2022-05-16 13:11:15pm', 'finished', '2022-05-29 16:30:59pm', 'accept', '2022-05-29 18:01:17pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:05:45pm', '2022-05-17 12:00 AM', 'RB casting', NULL, NULL, NULL),
(20, 'VR-000016', '2022-05-13 12:00 AM', 11, 31, '2022-05-13 13:05:23', '2022-05-30 09:14:36', 'accept', '2022-05-16 13:10:41pm', 'finished', '2022-05-16 13:10:49pm', 'finished', '2022-05-29 16:32:54pm', 'accept', '2022-05-29 18:01:01pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-05-30 16:14:36pm', '2022-05-17 12:00 AM', 'GT and Septic tank', NULL, NULL, NULL),
(21, 'VR-000017', '2022-05-21 12:00 AM', 14, 31, '2022-05-21 12:33:06', '2022-06-16 07:38:56', 'accept', '2022-05-23 21:54:08pm', 'finished', '2022-06-11 11:12:05am', 'finished', '2022-06-11 12:04:55pm', 'accept', '2022-06-14 17:10:17pm', 'received', '2022-05-26 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:38:56pm', '2022-05-24 12:00 AM', 'Footing concrete casting', NULL, NULL, NULL),
(22, 'VR-000018', '2022-05-23 12:00 AM', 14, 31, '2022-05-23 01:14:35', '2022-06-11 05:16:28', 'accept', '2022-05-23 21:54:14pm', 'finished', '2022-05-28 09:43:18am', 'finished', '2022-05-29 16:41:17pm', 'accept', '2022-05-29 18:00:48pm', 'received', '2022-05-26 12:00 AM', 'finished', '2022-06-11 12:16:28pm', NULL, NULL, 'finished', '2022-06-07 22:04:48pm', '2022-05-24 12:00 AM', 'Footing concrete casting', NULL, NULL, NULL),
(23, 'VR-000019', '2022-05-27 12:00 AM', 14, 31, '2022-05-27 09:26:29', '2022-06-16 07:35:42', 'accept', '2022-05-28 16:34:58pm', 'finished', '2022-06-03 15:09:18pm', 'finished', '2022-06-11 12:18:37pm', 'accept', '2022-06-14 17:09:27pm', 'received', '2022-06-01 12:00 AM', 'finished', '2022-06-11 14:39:27pm', NULL, NULL, 'finished', '2022-06-16 14:35:42pm', '2022-05-31 12:00 AM', 'Short column casting GL D and E', NULL, NULL, NULL),
(24, 'VR-000020', '2022-05-30 12:00 AM', 6, 25, '2022-05-30 13:27:38', '2022-06-16 07:31:51', 'accept', '2022-05-31 09:32:23am', 'finished', '2022-05-31 09:32:42am', 'finished', '2022-06-08 16:19:03pm', 'accept', '2022-06-14 17:08:50pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:31:51pm', '2022-06-03 12:00 AM', 'G Tank &Septic Tank (BW &Plastering)', NULL, NULL, NULL),
(25, 'VR-000021', '2022-05-30 12:00 AM', 13, 25, '2022-05-30 13:29:24', '2022-05-31 02:29:29', 'accept', '2022-05-31 09:27:46am', 'finished', '2022-05-31 09:29:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 12:00 AM', 'RW Brickwork', NULL, NULL, NULL),
(26, 'VR-000022', '2022-05-30 12:00 AM', 13, 25, '2022-05-30 13:30:38', '2022-05-31 02:24:40', 'accept', '2022-05-31 09:23:33am', 'finished', '2022-05-31 09:24:40am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 12:00 AM', 'RW Brick work', NULL, NULL, NULL),
(27, 'VR-000023', '2022-05-31 12:00 AM', 2, 28, '2022-05-31 03:47:03', '2022-06-07 15:03:23', 'accept', '2022-05-31 16:31:13pm', 'finished', '2022-05-31 16:33:35pm', 'finished', '2022-06-01 14:07:12pm', 'accept', '2022-06-06 11:52:11am', 'received', '2022-06-01 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:03:23pm', '2022-06-02 12:00 AM', 'Ground Tank and Spetic Tank', NULL, NULL, NULL),
(28, 'VR-000024', '2022-05-31 12:00 AM', 2, 28, '2022-05-31 03:52:08', '2022-06-14 10:08:02', 'accept', '2022-05-31 16:34:42pm', 'finished', '2022-05-31 16:34:56pm', 'finished', '2022-06-01 12:20:59pm', 'accept', '2022-06-14 17:08:02pm', 'received', '2022-06-02 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:02:38pm', '2022-06-02 12:00 AM', 'Ground Tank and Spetic Tank', NULL, NULL, NULL),
(29, 'VR-000025', '2022-05-31 12:00 AM', 11, 31, '2022-05-31 07:48:04', '2022-06-14 10:07:16', 'accept', '2022-06-01 11:18:20am', 'finished', '2022-06-01 11:18:35am', 'finished', '2022-06-03 15:04:24pm', 'accept', '2022-06-14 17:07:16pm', 'received', '2022-06-03 12:00 AM', 'finished', '2022-06-09 12:15:12pm', NULL, NULL, 'finished', '2022-06-07 22:01:36pm', '2022-06-03 12:00 AM', 'Roofing', NULL, NULL, NULL),
(30, 'VR-000026', '2022-05-31 12:00 AM', 4, 26, '2022-05-31 08:49:28', '2022-06-14 10:06:36', 'accept', '2022-06-01 11:17:38am', 'finished', '2022-06-01 11:17:52am', 'finished', '2022-06-01 11:25:41am', 'accept', '2022-06-14 17:06:36pm', 'received', '2022-06-03 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:00:43pm', '2022-06-03 12:00 AM', 'G.floor and 1st floor plastering', NULL, NULL, NULL),
(31, 'VR-000027', '2022-06-01 12:00 AM', 11, 31, '2022-06-01 10:01:05', '2022-06-14 10:04:23', 'accept', '2022-06-02 10:22:00am', 'finished', '2022-06-02 10:23:00am', 'finished', '2022-06-03 11:01:30am', 'accept', '2022-06-14 17:04:23pm', 'received', '2022-06-09 08:00 AM', 'finished', '2022-06-09 12:22:38pm', NULL, NULL, 'finished', '2022-06-07 21:57:40pm', '2022-06-06 12:00 AM', 'Wall and partitions brick work', NULL, NULL, NULL),
(32, 'VR-000028', '2022-06-01 12:00 AM', 5, 26, '2022-06-01 10:30:01', '2022-06-14 10:25:11', 'accept', '2022-06-02 09:38:44am', 'finished', '2022-06-02 09:39:01am', 'finished', '2022-06-07 15:22:53pm', 'accept', '2022-06-14 17:03:44pm', 'received', '2022-06-04 12:00 AM', 'finished', '2022-06-14 17:25:11pm', NULL, NULL, 'finished', '2022-06-07 21:56:51pm', '2022-06-09 12:00 AM', '2nd floor brick work and Roof top brick work', NULL, NULL, NULL),
(33, 'VR-000029', '2022-06-01 12:00 AM', 5, 26, '2022-06-01 10:31:00', '2022-06-14 10:03:00', 'accept', '2022-06-02 09:39:13am', 'finished', '2022-06-02 09:39:53am', 'finished', '2022-06-07 15:33:35pm', 'accept', '2022-06-14 17:03:00pm', 'received', '2022-06-04 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:56:14pm', '2022-06-09 12:00 AM', '2nd floor brick work and 1st floor plastering work', NULL, NULL, NULL),
(34, 'VR-000030', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:17:48', '2022-06-14 10:45:21', 'accept', '2022-06-02 09:55:16am', 'finished', '2022-06-02 09:59:26am', 'finished', '2022-06-06 10:48:03am', 'accept', '2022-06-14 17:02:32pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:45:21pm', NULL, NULL, 'finished', '2022-06-07 21:45:20pm', '2022-06-05 12:00 AM', 'For 1st floor brick work', NULL, NULL, NULL),
(35, 'VR-000031', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:20:27', '2022-06-22 07:39:24', 'accept', '2022-06-02 10:03:39am', 'finished', '2022-06-02 10:04:23am', 'finished', '2022-06-03 11:05:35am', NULL, NULL, 'received', '2022-06-22 02:00 PM', 'finished', '2022-06-09 17:38:20pm', 'finished', '2022-06-09 17:38:54pm', 'finished', '2022-06-07 21:55:28pm', '2022-06-05 12:00 AM', 'For 1st floor brick work', 'completed', '2022-06-09 17:39:48pm', '38'),
(36, 'VR-000032', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:21:23', '2022-06-22 07:39:47', 'accept', '2022-06-02 10:05:35am', 'finished', '2022-06-02 10:05:51am', 'finished', '2022-06-02 17:17:45pm', 'accept', '2022-06-14 17:02:03pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:54:47pm', '2022-06-05 12:00 AM', 'For 1st floor brick work', NULL, NULL, NULL),
(37, 'VR-000033', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:25:59', '2022-06-14 10:51:13', 'accept', '2022-06-02 10:06:30am', 'finished', '2022-06-02 10:11:25am', 'finished', '2022-06-06 13:29:49pm', 'accept', '2022-06-14 17:01:28pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:51:13pm', NULL, NULL, 'finished', '2022-06-07 21:54:15pm', '2022-06-05 12:00 AM', 'For 1st floor DPC & Roof floor stirrups', NULL, NULL, NULL),
(38, 'VR-000034', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:27:00', '2022-06-14 10:52:07', 'accept', '2022-06-02 10:12:13am', 'finished', '2022-06-02 10:16:46am', 'finished', '2022-06-06 13:20:50pm', 'accept', '2022-06-14 17:00:45pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:52:07pm', NULL, NULL, 'finished', '2022-06-07 21:46:20pm', '2022-06-05 12:00 AM', 'For Roof floor rebar work', NULL, NULL, NULL),
(39, 'VR-000035', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:28:22', '2022-06-14 10:56:02', 'accept', '2022-06-02 10:14:14am', 'finished', '2022-06-02 10:20:52am', 'finished', '2022-06-06 13:15:39pm', 'accept', '2022-06-07 16:40:34pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:56:02pm', NULL, NULL, 'finished', '2022-06-07 21:43:44pm', '2022-06-05 12:00 AM', 'For roof floor rebar work', NULL, NULL, NULL),
(40, 'VR-000036', '2022-06-02 12:00 AM', 2, 28, '2022-06-02 06:53:15', '2022-06-10 15:00:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-06-10 03:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'Column Formwork', NULL, NULL, NULL),
(41, 'VR-000037', '2022-06-02 12:00 AM', 8, 36, '2022-06-02 09:19:05', '2022-06-07 14:43:13', 'accept', '2022-06-02 16:29:34pm', 'finished', '2022-06-02 23:41:59pm', 'finished', '2022-06-03 10:59:03am', 'accept', '2022-06-03 11:30:27am', 'received', '2022-06-04 01:15 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:43:13pm', '2022-06-05 12:00 AM', 'Bricks Laying work (Ground Floor)', NULL, NULL, NULL),
(42, 'VR-000038', '2022-06-02 12:00 AM', 8, 36, '2022-06-02 09:21:06', '2022-06-07 14:42:35', 'accept', '2022-06-02 16:29:56pm', 'finished', '2022-06-02 23:42:38pm', 'finished', '2022-06-07 10:41:42am', 'accept', '2022-06-07 16:25:24pm', 'received', '2022-06-07 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:42:35pm', '2022-06-04 09:00 AM', 'Bricks Laying Work (Ground Floor)', NULL, NULL, NULL),
(43, 'VR-000039', '2022-06-02 06:00 PM', 2, 28, '2022-06-02 11:53:56', '2022-06-16 05:31:25', 'accept', '2022-06-04 11:43:59am', 'finished', '2022-06-04 11:44:16am', 'finished', '2022-06-08 16:00:10pm', 'accept', '2022-06-14 16:59:51pm', 'received', '2022-06-10 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:31:25pm', '2022-06-06 09:00 AM', 'Column Formwork', NULL, NULL, NULL),
(44, 'VR-000040', '2022-06-02 12:00 AM', 4, 26, '2022-06-02 14:20:06', '2022-06-08 03:38:05', 'accept', '2022-06-03 12:40:33pm', 'finished', '2022-06-03 12:40:47pm', 'finished', '2022-06-07 15:21:22pm', 'accept', '2022-06-07 16:24:59pm', 'received', '2022-06-05 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:41:51pm', '2022-06-05 12:00 AM', 'G.floor and 1st floor plastering work', NULL, NULL, NULL),
(45, 'VR-000041', '2022-06-02 12:00 AM', 4, 26, '2022-06-02 14:21:11', '2022-06-14 11:04:49', 'accept', '2022-06-03 12:39:43pm', 'finished', '2022-06-03 12:39:56pm', 'finished', '2022-06-07 15:16:23pm', 'accept', '2022-06-07 16:23:53pm', 'received', '2022-06-08 12:00 AM', 'finished', '2022-06-14 18:04:49pm', NULL, NULL, 'finished', '2022-06-07 21:41:21pm', '2022-06-05 12:00 AM', '2nd floor brick work,G.floor and 1st floor plastering work', NULL, NULL, NULL),
(46, 'VR-000042', '2022-06-03 12:00 AM', 14, 31, '2022-06-03 03:14:02', '2022-06-11 07:33:34', 'accept', '2022-06-03 14:42:42pm', 'finished', '2022-06-03 14:42:28pm', 'finished', '2022-06-03 15:02:56pm', 'accept', '2022-06-07 16:22:44pm', 'received', '2022-06-03 12:00 AM', 'finished', '2022-06-11 14:33:34pm', NULL, NULL, 'finished', '2022-06-07 21:40:49pm', '2022-06-03 12:00 AM', 'Retaining Wall brick work', NULL, NULL, NULL),
(47, 'VR-000043', '2022-06-03 10:45 AM', 21, 37, '2022-06-03 03:45:14', '2022-06-07 14:40:21', 'accept', '2022-06-03 11:42:16am', 'finished', '2022-06-03 11:43:01am', 'finished', '2022-06-03 14:59:39pm', 'accept', '2022-06-07 12:34:44pm', 'received', '2022-06-04 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:40:21pm', '2022-06-04 12:00 AM', '01', NULL, NULL, NULL),
(48, 'VR-000044', '2022-06-03 12:00 AM', 14, 31, '2022-06-03 09:03:45', '2022-06-04 04:10:43', 'reject', '2022-06-04 11:10:43am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 12:00 AM', 'Backfilling for beside of GL 4', NULL, NULL, NULL),
(49, 'VR-000045', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 09:59:12', '2022-06-03 10:07:10', 'reject', '2022-06-03 17:07:10pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL),
(50, 'VR-000046', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:00:22', '2022-06-03 10:07:26', 'reject', '2022-06-03 17:07:26pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL),
(51, 'VR-000047', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:02:09', '2022-06-08 02:51:08', 'accept', '2022-06-04 11:15:08am', 'finished', '2022-06-04 11:23:05am', NULL, NULL, NULL, NULL, 'received', '2022-06-08 09:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL),
(52, 'VR-000048', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:09:02', '2022-06-14 11:15:15', 'accept', '2022-06-04 11:22:02am', 'finished', '2022-06-04 11:22:50am', 'finished', '2022-06-05 18:59:23pm', 'accept', '2022-06-06 11:52:40am', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 18:15:15pm', NULL, NULL, 'finished', '2022-06-07 21:37:55pm', '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL),
(53, 'VR-000049', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:10:25', '2022-06-08 02:50:56', 'accept', '2022-06-04 11:21:49am', 'finished', '2022-06-04 11:22:35am', 'finished', '2022-06-07 15:07:41pm', 'accept', '2022-06-07 16:22:28pm', 'received', '2022-06-08 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:39:17pm', '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL),
(54, 'VR-000050', '2022-06-03 06:00 AM', 2, 28, '2022-06-03 11:18:13', '2022-06-07 14:38:47', 'accept', '2022-06-04 09:29:05am', 'finished', '2022-06-04 09:29:22am', 'finished', '2022-06-05 18:53:30pm', 'accept', '2022-06-05 19:55:36pm', 'received', '2022-06-05 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:38:47pm', '2022-06-06 09:00 AM', 'Spetic Tank & GF Brickwork', NULL, NULL, NULL),
(55, 'VR-000051', '2022-06-03 12:00 AM', 14, 31, '2022-06-04 04:15:57', '2022-06-14 09:59:03', 'accept', '2022-06-04 11:23:18am', 'finished', '2022-06-04 11:25:39am', 'finished', '2022-06-07 17:17:25pm', 'accept', '2022-06-14 16:59:03pm', 'received', '2022-06-06 08:00 AM', 'finished', '2022-06-08 12:19:19pm', NULL, NULL, 'finished', '2022-06-08 12:18:37pm', '2022-06-04 12:00 AM', 'Backfilling for beside of GL 4', NULL, NULL, NULL),
(56, 'VR-000052', '2022-06-04 12:00 AM', 5, 26, '2022-06-04 04:26:45', '2022-06-07 14:37:29', 'accept', '2022-06-06 09:31:18am', 'finished', '2022-06-06 09:31:37am', 'finished', '2022-06-07 15:06:38pm', 'accept', '2022-06-07 16:22:07pm', 'received', '2022-06-06 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:37:29pm', '2022-06-07 12:00 AM', '2nd floor brick work and 1st floor plastering work', NULL, NULL, NULL),
(57, 'VR-000053', '2022-06-05 04:45 AM', 21, 37, '2022-06-05 09:50:29', '2022-06-14 09:56:41', 'accept', '2022-06-05 20:57:44pm', 'finished', '2022-06-06 09:36:42am', 'finished', '2022-06-07 17:15:22pm', 'accept', '2022-06-14 16:56:41pm', 'received', '2022-06-07 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:59:42pm', '2022-06-07 12:00 AM', 'Line E Conc: Work', NULL, NULL, NULL),
(58, 'VR-000054', '2022-06-05 05:00 PM', 21, 37, '2022-06-05 10:08:13', '2022-06-16 05:30:33', 'accept', '2022-06-05 20:57:26pm', 'finished', '2022-06-05 20:57:13pm', 'finished', '2022-06-11 10:31:16am', 'accept', '2022-06-14 16:56:00pm', 'received', '2022-06-10 11:00 AM', 'finished', '2022-06-11 14:17:51pm', NULL, NULL, 'finished', '2022-06-16 12:30:33pm', '2022-06-09 12:00 AM', 'Rataining Wall', NULL, NULL, NULL),
(59, 'VR-000055', '2022-06-06 12:00 AM', 4, 26, '2022-06-06 03:04:17', '2022-06-08 03:30:30', 'accept', '2022-06-06 10:11:32am', 'finished', '2022-06-06 10:11:53am', 'finished', '2022-06-07 15:05:50pm', 'accept', '2022-06-07 16:21:37pm', 'received', '2022-06-08 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:37:01pm', '2022-06-08 12:00 AM', '2nd floor brick work,G.Fl and 1st internal wall plastering work', NULL, NULL, NULL),
(60, 'VR-000056', '2022-06-06 12:00 AM', 4, 26, '2022-06-06 03:06:56', '2022-06-09 10:35:27', 'accept', '2022-06-06 10:08:01am', 'finished', '2022-06-06 10:08:16am', 'finished', '2022-06-07 15:03:35pm', 'accept', '2022-06-07 16:21:08pm', 'received', '2022-06-08 12:00 AM', 'finished', '2022-06-09 17:33:53pm', 'finished', '2022-06-09 17:35:00pm', 'finished', '2022-06-07 21:36:21pm', '2022-06-08 12:00 AM', '2nd floor brick work and parapet brick work', 'completed', '2022-06-09 17:35:27pm', '38'),
(61, 'VR-000057', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:30:48', '2022-06-14 09:54:57', 'accept', '2022-06-06 13:25:37pm', 'finished', '2022-06-06 13:27:09pm', 'finished', '2022-06-07 16:27:55pm', 'accept', '2022-06-14 16:54:57pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:47:12pm', '2022-06-06 12:00 AM', 'Lean & Footing casting', NULL, NULL, NULL),
(62, 'VR-000058', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:39:50', '2022-06-14 09:54:10', 'accept', '2022-06-06 13:26:02pm', 'finished', '2022-06-06 13:28:26pm', 'finished', '2022-06-08 12:12:29pm', 'accept', '2022-06-14 16:54:10pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:56:32pm', '2022-06-06 12:00 AM', 'lean casting', NULL, NULL, NULL),
(63, 'VR-000059', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:40:38', '2022-06-08 12:39:56', 'accept', '2022-06-06 13:25:50pm', 'finished', '2022-06-06 13:28:37pm', 'finished', '2022-06-07 15:38:52pm', 'accept', '2022-06-07 16:20:46pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:35:51pm', '2022-06-06 12:00 AM', 'lean casting', NULL, NULL, NULL),
(64, 'VR-000060', '2022-06-06 12:00 AM', 21, 37, '2022-06-06 05:36:16', '2022-06-08 05:06:37', 'reject', '2022-06-06 17:04:24pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-06-08 12:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 12:00 AM', 'Line E & A Footing', NULL, NULL, NULL),
(65, 'VR-000061', '2022-06-06 12:00 AM', 21, 37, '2022-06-06 05:36:58', '2022-06-09 06:10:35', 'accept', '2022-06-06 17:04:16pm', 'finished', '2022-06-06 17:04:37pm', 'finished', '2022-06-07 15:27:30pm', 'accept', '2022-06-07 16:20:28pm', 'received', '2022-06-08 12:00 PM', 'finished', '2022-06-09 13:10:35pm', NULL, NULL, 'finished', '2022-06-07 21:35:04pm', '2022-06-08 12:00 AM', 'Line E & A footing', NULL, NULL, NULL),
(66, 'VR-000062', '2022-06-06 12:00 AM', 11, 31, '2022-06-06 07:43:24', '2022-06-20 04:03:32', 'accept', '2022-06-07 10:09:20am', 'finished', '2022-06-07 10:11:14am', 'finished', '2022-06-07 15:26:40pm', 'accept', '2022-06-07 16:19:52pm', 'received', '2022-06-08 08:00 AM', 'finished', '2022-06-09 12:20:22pm', 'finished', '2022-06-20 11:03:32am', 'finished', '2022-06-07 16:40:25pm', '2022-06-13 12:00 AM', 'Doors (MD and D3)', NULL, NULL, NULL),
(67, 'VR-000063', '2022-06-06 06:00 PM', 2, 28, '2022-06-06 12:14:18', '2022-06-14 09:53:22', 'accept', '2022-06-07 09:21:23am', 'finished', '2022-06-07 09:21:33am', 'finished', '2022-06-08 14:25:37pm', 'accept', '2022-06-14 16:53:22pm', 'received', '2022-06-08 04:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:55:29pm', '2022-06-08 09:00 AM', 'For levelling concrete', NULL, NULL, NULL),
(68, 'VR-000064', '2022-06-07 12:00 AM', 8, 36, '2022-06-07 02:42:05', '2022-06-07 02:57:13', 'reject', '2022-06-07 09:56:57am', 'finished', '2022-06-07 09:57:13am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 09:00 AM', 'For additional work', NULL, NULL, NULL),
(69, 'VR-000065', '2022-06-07 12:00 AM', 8, 36, '2022-06-07 02:58:36', '2022-06-07 14:33:12', 'accept', '2022-06-07 10:10:31am', 'finished', '2022-06-07 10:11:30am', 'finished', '2022-06-07 15:01:33pm', 'accept', '2022-06-07 16:15:30pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:33:12pm', '2022-06-08 09:00 AM', 'For additional work', NULL, NULL, NULL),
(70, 'VR-000066', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 03:13:58', '2022-06-22 07:29:28', 'accept', '2022-06-07 12:13:20pm', 'finished', '2022-06-07 12:13:50pm', 'finished', '2022-06-08 11:43:14am', 'accept', '2022-06-08 14:29:53pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:53:25pm', '2022-06-07 12:00 AM', 'SB and GF column', NULL, NULL, NULL),
(71, 'VR-000067', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 03:15:39', '2022-06-22 07:29:41', 'accept', '2022-06-07 12:12:39pm', 'finished', '2022-06-07 12:13:00pm', 'finished', '2022-06-08 11:34:00am', 'accept', '2022-06-08 13:22:21pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:51:21pm', '2022-06-07 12:00 AM', 'SF. SB. GF(column) GB', NULL, NULL, NULL),
(72, 'VR-000068', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 03:16:07', '2022-06-21 10:13:24', 'accept', '2022-06-07 12:11:58pm', 'finished', '2022-06-07 12:12:19pm', 'finished', '2022-06-08 11:33:15am', 'accept', '2022-06-08 13:22:08pm', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:50:50pm', '2022-06-07 12:00 AM', 'SB Column GB', NULL, NULL, NULL),
(73, 'VR-000069', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 06:34:10', '2022-06-08 12:40:14', 'accept', '2022-06-07 13:45:37pm', 'finished', '2022-06-07 14:32:58pm', 'finished', '2022-06-07 15:24:40pm', 'reject', '2022-06-07 16:13:26pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 12:00 AM', 'GL-D HC laying', NULL, NULL, NULL),
(74, 'VR-000070', '2022-06-07 12:00 AM', 11, 31, '2022-06-07 06:44:48', '2022-06-15 06:08:22', 'accept', '2022-06-09 10:08:05am', 'finished', '2022-06-09 10:08:33am', 'finished', '2022-06-09 16:24:28pm', 'accept', '2022-06-15 13:08:22pm', 'received', '2022-06-09 11:00 AM', 'finished', '2022-06-09 16:25:20pm', 'finished', '2022-06-09 17:41:29pm', NULL, NULL, '2022-06-09 12:00 AM', 'GT Plastering and Exterior Wall brick work', NULL, NULL, NULL),
(75, 'VR-000071', '2022-06-07 12:00 AM', 11, 31, '2022-06-07 06:46:16', '2022-06-16 07:26:33', 'accept', '2022-06-09 10:09:05am', 'finished', '2022-06-09 10:07:09am', 'finished', '2022-06-16 14:26:33pm', NULL, NULL, 'received', '2022-06-12 11:00 AM', 'finished', '2022-06-09 17:43:34pm', 'finished', '2022-06-09 17:44:48pm', NULL, NULL, '2022-06-10 12:00 AM', 'Wall Brick work', 'completed', '2022-06-09 17:45:15pm', '38'),
(76, 'VR-000072', '2022-06-07 04:00 PM', 7, 22, '2022-06-07 09:09:48', '2022-06-24 12:22:05', 'accept', '2022-06-08 09:25:36am', 'finished', '2022-06-08 09:27:00am', 'finished', '2022-06-08 12:02:20pm', 'accept', '2022-06-08 13:15:47pm', 'received', '2022-06-24 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:54:33pm', '2022-06-09 04:00 PM', 'For Fence plaster work', NULL, NULL, NULL),
(77, 'VR-000073', '2022-06-07 12:00 AM', 4, 26, '2022-06-07 09:30:40', '2022-06-22 15:13:01', 'accept', '2022-06-09 13:14:14pm', 'finished', '2022-06-09 13:07:42pm', NULL, NULL, NULL, NULL, 'received', '2022-06-10 10:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 12:00 AM', '1st floor plastering work,2nd floor brick work and parapet brick work', NULL, NULL, NULL),
(78, 'VR-000074', '2022-06-07 12:00 AM', 5, 26, '2022-06-07 09:32:37', '2022-06-08 05:19:52', 'accept', '2022-06-08 12:17:09pm', 'finished', '2022-06-08 12:19:52pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', '1st floor plastering work,G Fl plastering work', NULL, NULL, NULL),
(79, 'VR-000075', '2022-06-07 12:00 AM', 5, 26, '2022-06-07 09:33:36', '2022-06-09 03:36:32', 'accept', '2022-06-08 12:18:49pm', 'finished', '2022-06-08 12:19:08pm', NULL, NULL, NULL, NULL, 'received', '2022-06-09 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', '1st floor and G.Fl plastering work', NULL, NULL, NULL),
(80, 'VR-000076', '2022-06-07 05:00 PM', 21, 37, '2022-06-07 10:15:51', '2022-06-16 07:46:30', 'accept', '2022-06-08 09:33:43am', 'finished', '2022-06-08 09:35:05am', 'finished', '2022-06-11 10:57:02am', 'accept', '2022-06-14 16:49:19pm', 'received', '2022-06-13 04:00 PM', 'finished', '2022-06-11 14:11:36pm', NULL, NULL, 'finished', '2022-06-16 14:46:30pm', '2022-06-11 01:00 PM', 'Ground Beam', NULL, NULL, NULL),
(81, 'VR-000077', '2022-06-07 05:00 PM', 21, 37, '2022-06-07 10:16:51', '2022-06-16 07:47:39', 'accept', '2022-06-08 09:30:46am', 'finished', '2022-06-08 09:33:11am', 'finished', '2022-06-11 10:55:35am', 'accept', '2022-06-14 16:48:32pm', 'received', '2022-06-13 04:00 PM', 'finished', '2022-06-11 14:08:02pm', NULL, NULL, 'finished', '2022-06-16 14:47:39pm', '2022-06-11 01:00 PM', 'Ground Beam', NULL, '2022-06-08 09:44:26am', '1'),
(82, 'VR-000078', '2022-06-08 12:00 AM', 4, 26, '2022-06-08 08:54:47', '2022-06-11 03:33:19', 'accept', '2022-06-09 10:10:07am', 'finished', '2022-06-09 10:10:42am', NULL, NULL, NULL, NULL, 'received', '2022-06-11 10:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-10 12:00 AM', '2nd floor DPC,Lintel and Parapet Capping', NULL, NULL, NULL),
(83, 'VR-000079', '2022-06-08 12:00 AM', 5, 26, '2022-06-08 09:16:20', '2022-06-16 07:50:39', 'accept', '2022-06-09 10:07:13am', 'finished', '2022-06-09 10:07:47am', 'finished', '2022-06-11 12:18:27pm', 'accept', '2022-06-14 16:47:56pm', 'received', '2022-06-12 11:00 AM', 'finished', '2022-06-14 18:22:47pm', NULL, NULL, 'finished', '2022-06-16 14:50:39pm', '2022-06-11 12:00 AM', 'G.Fl,1st Fl,2nd Fl plastering work', NULL, NULL, NULL),
(84, 'VR-000080', '2022-06-08 05:00 PM', 16, 44, '2022-06-08 10:22:56', '2022-06-09 04:03:00', 'reject', '2022-06-09 11:03:00am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 05:00 PM', 'Ground beam', NULL, NULL, NULL),
(85, 'VR-000081', '2022-06-08 06:00 PM', 2, 28, '2022-06-08 11:47:12', '2022-06-16 07:51:44', 'accept', '2022-06-09 12:09:21pm', 'finished', '2022-06-09 15:55:56pm', 'finished', '2022-06-11 10:26:09am', 'accept', '2022-06-14 16:45:48pm', 'received', '2022-06-10 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:51:44pm', '2022-06-09 10:00 AM', 'Roof and Back side covering, Column FW', NULL, NULL, NULL),
(86, 'VR-000082', '2022-06-09 08:00 AM', 14, 31, '2022-06-09 01:23:51', '2022-06-16 08:04:06', 'accept', '2022-06-09 13:13:25pm', 'finished', '2022-06-09 13:13:54pm', 'finished', '2022-06-16 14:22:39pm', 'accept', '2022-06-16 15:04:06pm', 'received', '2022-06-11 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:23:38pm', '2022-06-11 08:00 AM', 'Footing casting GL A and B', NULL, NULL, NULL),
(87, 'VR-000083', '2022-06-09 08:00 AM', 11, 31, '2022-06-09 01:26:38', '2022-06-09 03:31:42', 'reject', '2022-06-09 10:31:42am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 08:00 AM', 'Sill and lintel rebar stirrup', NULL, NULL, NULL),
(88, 'VR-000084', '2022-06-09 10:00 AM', 11, 31, '2022-06-09 03:11:25', '2022-06-15 04:11:14', 'accept', '2022-06-09 10:22:14am', 'finished', '2022-06-09 10:22:26am', NULL, NULL, NULL, NULL, 'received', '2022-06-12 11:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 10:00 AM', 'Wall Plastering', NULL, NULL, NULL),
(89, 'VR-000085', '2022-06-08 11:00 AM', 16, 44, '2022-06-09 04:05:52', '2022-06-13 02:40:50', 'accept', '2022-06-10 15:05:34pm', 'finished', '2022-06-10 15:06:27pm', NULL, NULL, NULL, NULL, 'received', '2022-06-13 09:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 11:00 AM', 'gtound beam ,db 10 for stirup, db 16 for main bar', NULL, NULL, NULL),
(90, 'VR-000086', '2022-06-09 12:00 PM', 12, 32, '2022-06-09 05:50:50', '2022-06-21 06:55:28', 'accept', '2022-06-09 13:19:38pm', 'finished', '2022-06-09 13:27:54pm', 'finished', '2022-06-11 12:15:43pm', 'accept', '2022-06-14 16:44:47pm', 'received', '2022-06-21 01:00 PM', 'finished', '2022-06-14 18:32:59pm', NULL, NULL, 'finished', '2022-06-16 14:17:10pm', '2022-06-11 12:00 PM', 'Plaster Work for Line 2 External Wall', NULL, NULL, NULL),
(91, 'VR-000087', '2022-06-09 01:00 PM', 12, 32, '2022-06-09 06:12:13', '2022-06-21 06:55:37', 'accept', '2022-06-09 13:19:27pm', 'finished', '2022-06-09 13:28:27pm', 'finished', '2022-06-11 12:11:12pm', 'accept', '2022-06-14 16:44:02pm', 'received', '2022-06-21 01:00 PM', 'finished', '2022-06-14 18:33:54pm', NULL, NULL, 'finished', '2022-06-16 14:15:57pm', '2022-06-11 01:00 PM', 'Plaster for Line E and Line 1 External Wall', NULL, NULL, NULL),
(92, 'VR-000088', '2022-06-09 03:00 PM', 8, 36, '2022-06-09 10:15:49', '2022-06-16 07:14:26', 'accept', '2022-06-10 10:00:46am', 'finished', '2022-06-10 10:01:00am', 'finished', '2022-06-13 17:01:19pm', 'accept', '2022-06-14 16:39:52pm', 'received', '2022-06-13 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:14:26pm', '2022-06-11 10:00 AM', 'Bricklaying work (1st floor)', NULL, NULL, NULL),
(93, 'VR-000089', '2022-06-09 03:00 PM', 8, 36, '2022-06-09 10:19:47', '2022-06-16 07:13:19', 'accept', '2022-06-10 09:59:29am', 'finished', '2022-06-10 10:00:30am', 'finished', '2022-06-11 10:44:00am', 'accept', '2022-06-14 16:39:10pm', 'received', '2022-06-13 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:13:19pm', '2022-06-11 10:00 AM', 'Bricklaying work (1st floor)', NULL, NULL, NULL),
(94, 'VR-000090', '2022-06-09 07:00 PM', 9, 22, '2022-06-09 12:53:35', '2022-06-24 12:22:41', 'accept', '2022-06-10 15:11:17pm', 'finished', '2022-06-10 15:11:41pm', NULL, NULL, NULL, NULL, 'received', '2022-06-24 07:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', 'For Fence plaster work & brick work', NULL, NULL, NULL),
(95, 'VR-000091', '2022-06-09 05:00 PM', 2, 28, '2022-06-10 02:52:31', '2022-06-16 07:12:28', 'accept', '2022-06-10 09:58:41am', 'finished', '2022-06-10 09:59:05am', 'finished', '2022-06-11 10:42:57am', 'accept', '2022-06-14 16:38:34pm', 'received', '2022-06-10 11:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:12:28pm', '2022-06-10 10:00 AM', '2F Slab', NULL, NULL, NULL),
(96, 'VR-000092', '2022-06-10 11:00 AM', 21, 37, '2022-06-10 04:11:21', '2022-06-16 07:11:37', 'accept', '2022-06-10 11:26:40am', 'finished', '2022-06-10 11:27:24am', 'finished', '2022-06-11 10:31:46am', 'accept', '2022-06-14 16:37:57pm', 'received', '2022-06-13 04:00 PM', 'finished', '2022-06-15 15:06:17pm', '', '', 'finished', '2022-06-16 14:11:37pm', '2022-06-10 11:00 AM', 'Reatining Wall', NULL, NULL, NULL),
(97, 'VR-000093', '2022-06-10 11:00 AM', 21, 37, '2022-06-10 04:15:28', '2022-06-16 07:10:58', 'accept', '2022-06-10 11:26:56am', 'finished', '2022-06-10 11:28:02am', 'finished', '2022-06-10 14:08:32pm', 'accept', '2022-06-14 16:37:14pm', 'received', '2022-06-13 04:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:10:58pm', '2022-06-10 03:00 PM', 'Retaining wall', NULL, NULL, NULL),
(98, 'VR-000094', '2022-06-10 11:00 AM', 11, 31, '2022-06-10 04:20:20', '2022-06-16 07:10:15', 'accept', '2022-06-11 10:32:21am', 'finished', '2022-06-11 10:32:38am', 'finished', '2022-06-11 10:41:55am', 'accept', '2022-06-14 16:36:27pm', 'received', '2022-06-13 11:00 AM', 'finished', '2022-06-15 14:57:33pm', NULL, NULL, 'finished', '2022-06-16 14:10:15pm', '2022-06-13 11:00 AM', 'GF brick work', NULL, NULL, NULL),
(99, 'VR-000095', '2022-06-10 10:00 AM', 8, 36, '2022-06-10 06:26:36', '2022-06-16 07:09:38', 'accept', '2022-06-10 13:36:33pm', 'finished', '2022-06-10 13:36:47pm', 'finished', '2022-06-11 10:18:19am', 'accept', '2022-06-14 16:35:52pm', 'received', '2022-06-13 02:30 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:09:38pm', '2022-06-11 01:00 PM', 'Bricklaying work (1F)(KKST)', NULL, NULL, NULL),
(100, 'VR-000096', '2022-06-10 02:00 PM', 11, 31, '2022-06-10 07:32:56', '2022-06-24 06:10:11', 'accept', '2022-06-11 10:28:36am', 'finished', '2022-06-11 10:29:10am', 'finished', '2022-06-23 10:25:17am', 'accept', '2022-06-24 13:10:11pm', 'received', '2022-06-19 10:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 02:00 PM', 'GF brick work', NULL, NULL, NULL),
(101, 'VR-000097', '2022-06-10 02:00 PM', 17, 47, '2022-06-10 07:39:32', '2022-06-21 10:13:44', 'accept', '2022-06-11 09:49:49am', 'finished', '2022-06-11 09:50:51am', 'finished', '2022-06-11 10:09:26am', 'accept', '2022-06-14 16:34:29pm', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 13:33:16pm', '2022-06-11 02:00 PM', 'lean casting', NULL, NULL, NULL),
(102, 'VR-000098', '2022-06-10 03:00 PM', 11, 31, '2022-06-10 08:37:13', '2022-06-22 09:53:46', 'accept', '2022-06-22 16:50:37pm', 'finished', '2022-06-22 16:53:46pm', NULL, NULL, NULL, NULL, 'received', '2022-06-12 11:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 03:00 PM', 'DPC stiffner and lintel', NULL, NULL, NULL),
(103, 'VR-000099', '2022-06-10 04:00 PM', 16, 44, '2022-06-10 09:15:02', '2022-06-22 23:19:50', 'accept', '2022-06-11 10:12:28am', 'finished', '2022-06-11 10:15:21am', NULL, NULL, NULL, NULL, 'received', '2022-06-23 06:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-12 04:00 PM', 'Ground beam F.W/stair case', NULL, NULL, NULL),
(104, 'VR-000100', '2022-06-10 12:00 AM', 4, 26, '2022-06-10 10:39:18', '2022-06-16 06:31:45', 'accept', '2022-06-11 10:25:42am', 'finished', '2022-06-11 10:27:00am', 'finished', '2022-06-11 11:28:44am', 'accept', '2022-06-14 16:33:23pm', 'received', '2022-06-12 11:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 13:31:45pm', '2022-06-12 12:00 AM', '1st floor plastering work,2nd floor brick work,parapet plastering work', NULL, NULL, NULL),
(105, 'VR-000101', '2022-06-10 12:00 AM', 4, 26, '2022-06-10 10:40:28', '2022-06-16 06:30:55', 'accept', '2022-06-11 10:17:40am', 'finished', '2022-06-11 10:17:58am', 'finished', '2022-06-11 11:24:40am', 'accept', '2022-06-14 16:32:30pm', 'received', '2022-06-12 04:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 13:30:55pm', '2022-06-12 12:00 AM', '2nd floor brick work,parapet plastering work,1st floor plastering work', NULL, NULL, NULL),
(106, 'VR-000102', '2022-06-10 06:00 PM', 2, 28, '2022-06-10 15:02:53', '2022-06-16 05:38:11', 'accept', '2022-06-11 09:59:04am', 'finished', '2022-06-11 09:59:15am', 'finished', '2022-06-13 17:04:11pm', 'accept', '2022-06-14 16:31:19pm', 'received', '2022-06-16 08:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:38:11pm', '2022-06-14 09:00 PM', 'For Column dowel bar', NULL, NULL, NULL),
(107, 'VR-000103', '2022-06-10 09:00 AM', 16, 44, '2022-06-11 02:32:54', '2022-06-16 05:37:27', 'accept', '2022-06-11 10:30:27am', 'finished', '2022-06-11 10:30:48am', 'finished', '2022-06-11 11:15:36am', 'accept', '2022-06-14 16:30:13pm', 'received', '2022-06-13 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:37:27pm', '2022-06-11 09:00 AM', 'Footing ,lean,hardcore, retaining wall', NULL, NULL, NULL),
(108, 'VR-000104', '2022-06-11 11:00 AM', 14, 31, '2022-06-11 04:42:25', '2022-06-22 15:09:28', 'accept', '2022-06-13 09:29:48am', 'finished', '2022-06-13 09:30:40am', 'finished', '2022-06-14 18:21:36pm', 'accept', '2022-06-15 13:07:20pm', 'received', '2022-06-16 10:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:35:48pm', '2022-06-13 11:00 AM', 'For Foundation', NULL, NULL, NULL),
(109, 'VR-000105', '2022-06-11 11:00 AM', 4, 26, '2022-06-11 04:50:27', '2022-06-22 15:08:57', 'accept', '2022-06-15 16:57:53pm', 'finished', '2022-06-15 17:00:47pm', NULL, NULL, NULL, NULL, 'received', '2022-06-16 10:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 11:00 AM', 'External Plastering work', NULL, NULL, NULL),
(110, 'VR-000106', '2022-06-11 11:00 AM', 5, 26, '2022-06-11 04:51:14', '2022-06-22 15:09:34', 'accept', '2022-06-15 17:01:50pm', 'finished', '2022-06-15 17:03:15pm', NULL, NULL, NULL, NULL, 'received', '2022-06-16 10:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 11:00 AM', 'External plastering work', NULL, NULL, NULL),
(111, 'VR-000107', '2022-06-11 11:00 AM', 7, 22, '2022-06-11 04:55:27', '2022-06-14 05:12:12', 'accept', '2022-06-13 09:36:39am', 'finished', '2022-06-13 09:36:52am', NULL, NULL, NULL, NULL, 'received', '2022-06-14 12:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-13 11:00 AM', 'For Fence work', NULL, NULL, NULL),
(112, 'VR-000108', '2022-06-11 12:00 PM', 9, 22, '2022-06-11 05:03:02', '2022-06-22 07:39:13', 'accept', '2022-06-11 14:41:59pm', 'finished', '2022-06-11 14:42:46pm', NULL, NULL, NULL, NULL, 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 12:00 PM', 'For Fence work', NULL, NULL, NULL),
(113, 'VR-000109', '2022-06-12 09:00 AM', 14, 31, '2022-06-12 02:21:17', '2022-06-16 05:33:42', 'accept', '2022-06-13 09:52:12am', 'finished', '2022-06-13 09:52:29am', 'finished', '2022-06-14 10:56:25am', 'accept', '2022-06-14 16:29:31pm', 'received', '2022-06-14 11:00 AM', 'finished', '2022-06-15 15:02:10pm', NULL, NULL, 'finished', '2022-06-16 12:33:42pm', '2022-06-14 09:00 AM', 'For GL B footing', NULL, NULL, NULL),
(114, 'VR-000110', '2022-06-12 06:00 PM', 2, 28, '2022-06-12 11:04:06', '2022-06-16 05:33:12', 'accept', '2022-06-13 10:04:25am', 'finished', '2022-06-13 10:05:56am', 'finished', '2022-06-13 16:57:42pm', 'accept', '2022-06-14 16:28:53pm', 'received', '2022-06-16 08:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:33:12pm', '2022-06-14 09:00 AM', 'GF to 1F Column FW installation', NULL, NULL, NULL),
(115, 'VR-000111', '2022-06-12 06:00 PM', 2, 28, '2022-06-12 11:05:59', '2022-06-16 05:32:02', 'accept', '2022-06-13 10:06:14am', 'finished', '2022-06-13 10:06:57am', 'finished', '2022-06-13 17:00:14pm', 'accept', '2022-06-14 16:28:18pm', 'received', '2022-06-16 08:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:32:02pm', '2022-06-14 09:00 PM', 'GF to 1F Column FW installation', NULL, NULL, NULL),
(116, 'VR-000112', '2022-06-13 09:00 AM', 16, 44, '2022-06-13 02:43:25', '2022-06-22 23:20:07', 'accept', '2022-06-15 14:31:39pm', 'finished', '2022-06-15 14:32:46pm', 'finished', '2022-06-15 17:38:55pm', 'accept', '2022-06-16 11:16:23am', 'received', '2022-06-23 06:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:29:50pm', '2022-06-15 09:00 AM', 'db10for column stirup, db12 for staircase', NULL, NULL, NULL),
(117, 'VR-000113', '2022-06-12 10:00 AM', 16, 44, '2022-06-13 03:42:02', '2022-06-20 23:41:58', 'accept', '2022-06-13 11:19:09am', 'finished', '2022-06-13 11:19:27am', 'finished', '2022-06-13 17:07:26pm', 'accept', '2022-06-14 16:27:31pm', 'received', '2022-06-21 06:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:29:19pm', '2022-06-14 10:00 AM', 'retaining wall,', NULL, NULL, NULL),
(118, 'VR-000114', '2022-06-13 10:00 AM', 2, 28, '2022-06-13 03:51:44', '2022-06-22 15:03:02', 'accept', '2022-06-15 10:28:09am', 'finished', '2022-06-15 10:49:16am', 'finished', '2022-06-16 12:09:57pm', 'accept', '2022-06-16 15:03:06pm', 'received', '2022-06-18 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:15:50pm', '2022-06-16 10:00 AM', 'GF Brickwork, Roof Slab, Column ties and DPC', NULL, NULL, NULL),
(119, 'VR-000115', '2022-06-13 10:00 AM', 16, 44, '2022-06-13 04:00:28', '2022-06-16 05:28:23', 'accept', '2022-06-15 14:31:00pm', 'finished', '2022-06-15 14:31:21pm', 'finished', '2022-06-15 17:36:04pm', 'accept', '2022-06-16 11:13:19am', 'received', '2022-06-14 11:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:28:23pm', '2022-06-14 10:00 AM', 'Retaining wall,  lean,  hardcore', NULL, NULL, NULL),
(120, 'VR-000116', '2022-06-13 01:00 PM', 4, 26, '2022-06-13 06:44:17', '2022-06-16 05:27:20', 'accept', '2022-06-13 17:01:28pm', 'finished', '2022-06-13 17:01:59pm', 'finished', '2022-06-13 17:06:59pm', 'accept', '2022-06-14 16:26:43pm', 'received', '2022-06-14 01:00 PM', 'finished', '2022-06-15 14:10:03pm', NULL, NULL, 'finished', '2022-06-16 12:27:20pm', '2022-06-15 01:00 PM', 'Roof floor brick work,2nd floor brick work', NULL, NULL, NULL),
(121, 'VR-000117', '2022-06-13 02:00 PM', 16, 44, '2022-06-13 07:21:31', '2022-06-16 05:26:17', 'accept', '2022-06-15 10:16:47am', 'finished', '2022-06-15 10:17:28am', 'finished', '2022-06-15 17:34:40pm', 'accept', '2022-06-16 11:00:31am', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:26:17pm', '2022-06-14 02:00 PM', 'column', NULL, NULL, NULL),
(122, 'VR-000118', '2022-06-13 04:00 PM', 5, 26, '2022-06-13 09:02:34', '2022-06-16 07:02:01', 'accept', '2022-06-14 10:21:45am', 'finished', '2022-06-14 10:22:01am', 'finished', '2022-06-15 17:32:02pm', 'accept', '2022-06-16 10:56:36am', 'received', '2022-06-15 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:24:31pm', '2022-06-15 04:00 PM', 'G.floor plastering work', NULL, '2022-06-14 13:50:15pm', '10'),
(123, 'VR-000119', '2022-06-13 04:00 PM', 4, 26, '2022-06-13 09:05:49', '2022-06-16 07:02:19', 'accept', '2022-06-14 14:02:07pm', 'finished', '2022-06-14 14:02:25pm', 'finished', '2022-06-15 17:30:12pm', 'accept', '2022-06-16 10:55:57am', 'received', '2022-06-15 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:23:15pm', '2022-06-15 04:00 PM', '2nd Floor plastering work,parapet plastering work', NULL, NULL, NULL),
(124, 'VR-000120', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:27:18', '2022-06-23 02:58:21', 'accept', '2022-06-14 10:14:54am', 'finished', '2022-06-14 10:15:08am', 'finished', '2022-06-14 18:19:10pm', 'accept', '2022-06-15 11:56:08am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:22:35pm', '2022-06-14 04:00 PM', 'Line A footing', NULL, NULL, NULL),
(125, 'VR-000121', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:28:14', '2022-06-23 02:58:36', 'accept', '2022-06-14 10:14:40am', 'finished', '2022-06-14 10:15:33am', 'finished', '2022-06-14 18:18:01pm', 'accept', '2022-06-15 11:55:21am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:21:59pm', '2022-06-14 04:00 PM', 'Line A footing', NULL, NULL, NULL),
(126, 'VR-000122', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:29:39', '2022-06-16 07:52:34', 'reject', '2022-06-16 14:52:34pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground Beam', NULL, NULL, NULL),
(127, 'VR-000123', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:31:58', '2022-06-16 07:54:21', 'reject', '2022-06-16 14:54:21pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground beam', NULL, NULL, NULL),
(128, 'VR-000124', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:33:00', '2022-06-16 07:54:41', 'reject', '2022-06-16 14:54:41pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground beam', NULL, NULL, NULL),
(129, 'VR-000125', '2022-06-13 06:00 PM', 9, 22, '2022-06-13 11:34:22', '2022-06-24 12:22:25', 'accept', '2022-06-14 14:00:22pm', 'finished', '2022-06-14 14:00:52pm', 'finished', '2022-06-15 17:27:11pm', 'accept', '2022-06-16 10:55:30am', 'received', '2022-06-24 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:21:13pm', '2022-06-15 06:00 PM', 'Staircase internal & External plaster work & Gtank brick work & plaster work', NULL, NULL, NULL),
(130, 'VR-000126', '2022-06-13 06:00 PM', 7, 22, '2022-06-13 11:47:48', '2022-06-16 05:18:51', 'accept', '2022-06-14 10:17:05am', 'finished', '2022-06-14 10:21:09am', 'finished', '2022-06-15 17:16:44pm', 'accept', '2022-06-16 10:51:54am', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:18:51pm', '2022-06-15 06:00 PM', 'Parapet brick work& plaster work,DPC,Short Column concrete work, plaster work,1st floor DPC concrete work', NULL, NULL, NULL);
INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`, `request_status`, `request_status_date`, `request_status_user`) VALUES
(131, 'VR-000127', '2022-06-14 08:00 AM', 8, 36, '2022-06-14 02:01:23', '2022-06-16 05:16:51', 'accept', '2022-06-14 10:16:44am', 'finished', '2022-06-14 11:04:16am', 'finished', '2022-06-14 15:28:48pm', 'accept', '2022-06-14 16:26:00pm', 'received', '2022-06-15 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:16:51pm', '2022-06-15 09:00 AM', 'For Verandah', NULL, '2022-06-14 13:50:02pm', '10'),
(132, 'VR-000128', '2022-06-14 02:00 PM', 9, 22, '2022-06-14 07:21:42', '2022-06-21 07:10:41', 'accept', '2022-06-15 10:19:29am', 'finished', '2022-06-15 10:19:56am', 'finished', '2022-06-15 13:29:11pm', 'accept', '2022-06-16 11:00:54am', 'received', '2022-06-21 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:16:19pm', '2022-06-16 02:00 PM', 'For Roof floor topping work 3\"thk', NULL, NULL, NULL),
(133, 'VR-000129', '2022-06-14 02:00 PM', 21, 37, '2022-06-14 07:59:54', '2022-06-16 07:56:04', 'accept', '2022-06-14 15:49:56pm', 'finished', '2022-06-14 16:20:34pm', 'finished', '2022-06-14 18:16:28pm', 'accept', '2022-06-15 11:54:08am', 'received', '2022-06-16 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:15:25pm', '2022-06-15 02:00 PM', 'Back Filling', NULL, NULL, NULL),
(134, 'VR-000130', '2022-06-14 02:00 PM', 21, 37, '2022-06-14 08:00:50', '2022-06-23 02:58:56', 'accept', '2022-06-14 15:45:17pm', 'finished', '2022-06-14 15:45:27pm', 'finished', '2022-06-14 18:14:53pm', 'accept', '2022-06-15 11:53:20am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:14:46pm', '2022-06-16 02:00 PM', 'R.wall brick work', NULL, NULL, NULL),
(135, 'VR-000131', '2022-06-14 03:00 PM', 21, 37, '2022-06-14 08:01:45', '2022-06-15 04:52:25', 'accept', '2022-06-14 15:46:04pm', 'finished', '2022-06-14 15:46:27pm', 'finished', '2022-06-14 18:13:38pm', 'reject', '2022-06-15 11:52:25am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 03:00 PM', 'Column', NULL, NULL, NULL),
(136, 'VR-000132', '2022-06-14 03:00 PM', 21, 37, '2022-06-14 08:37:32', '2022-06-23 02:59:35', 'accept', '2022-06-14 15:42:39pm', 'finished', '2022-06-14 15:43:47pm', 'finished', '2022-06-15 10:45:55am', 'accept', '2022-06-15 11:47:45am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:51:25am', '2022-06-16 03:00 PM', 'Rataining Wall/Ground Tank', NULL, NULL, NULL),
(137, 'VR-000133', '2022-06-07 05:00 PM', 11, 31, '2022-06-14 10:03:04', '2022-06-16 04:50:31', 'accept', '2022-06-15 10:21:53am', 'finished', '2022-06-15 10:22:32am', 'finished', '2022-06-15 14:25:14pm', 'accept', '2022-06-16 10:48:34am', 'received', '2022-06-09 10:00 AM', 'finished', '2022-06-15 14:27:51pm', NULL, NULL, 'finished', '2022-06-16 11:50:31am', '2022-06-09 05:00 PM', 'GT plastering and exterior wall brick work', NULL, NULL, NULL),
(138, 'VR-000134', '2022-06-14 05:00 PM', 4, 26, '2022-06-14 10:52:45', '2022-06-16 07:02:46', 'accept', '2022-06-15 10:23:04am', 'finished', '2022-06-15 10:23:18am', 'finished', '2022-06-15 13:26:38pm', 'accept', '2022-06-16 10:47:56am', 'received', '2022-06-16 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:50:04am', '2022-06-16 05:00 PM', 'External wall plastering work', NULL, NULL, NULL),
(139, 'VR-000135', '2022-06-14 05:00 PM', 5, 26, '2022-06-14 11:00:41', '2022-06-16 07:03:14', 'accept', '2022-06-15 14:18:28pm', 'finished', '2022-06-15 14:21:09pm', 'finished', '2022-06-15 16:27:57pm', 'accept', '2022-06-16 10:46:07am', 'received', '2022-06-16 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:36:55am', '2022-06-16 05:00 PM', 'External plastering work,2nd FL internal plastering work', NULL, NULL, NULL),
(140, 'VR-000136', '2022-06-14 06:00 PM', 14, 31, '2022-06-14 11:53:13', '2022-06-16 04:36:07', 'accept', '2022-06-15 10:03:46am', 'finished', '2022-06-15 10:04:02am', 'finished', '2022-06-15 10:34:01am', 'accept', '2022-06-15 11:45:49am', 'received', '2022-06-15 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:36:07am', '2022-06-15 06:00 PM', 'GL A and B short col', NULL, NULL, NULL),
(141, 'VR-000137', '2022-06-15 08:00 AM', 4, 26, '2022-06-15 01:59:18', '2022-06-21 08:19:29', 'accept', '2022-06-15 10:27:17am', 'finished', '2022-06-15 10:29:22am', 'finished', '2022-06-15 10:39:47am', 'accept', '2022-06-15 11:43:42am', 'received', '2022-06-17 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:35:29am', '2022-06-17 08:00 AM', 'External plastering work,2nd FL plastering work', NULL, NULL, NULL),
(142, 'VR-000138', '2022-06-15 08:00 AM', 4, 26, '2022-06-15 01:59:54', '2022-06-21 08:19:51', 'accept', '2022-06-15 10:30:01am', 'finished', '2022-06-15 10:31:55am', 'finished', '2022-06-15 10:37:41am', 'accept', '2022-06-15 11:43:14am', 'received', '2022-06-18 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:35:02am', '2022-06-18 08:00 AM', 'External plastering work,2nd FL plastering work', NULL, NULL, NULL),
(143, 'VR-000139', '2022-06-15 08:00 AM', 4, 26, '2022-06-15 02:00:30', '2022-06-21 08:20:24', 'accept', '2022-06-15 10:32:07am', 'finished', '2022-06-15 10:32:55am', 'finished', '2022-06-15 10:36:42am', 'accept', '2022-06-15 11:42:44am', 'received', '2022-06-19 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:34:23am', '2022-06-19 08:00 AM', 'External plastering work,2nd FL plastering work', NULL, NULL, NULL),
(144, 'VR-000140', '2022-06-15 09:00 AM', 5, 26, '2022-06-15 02:02:11', '2022-06-21 08:20:46', 'accept', '2022-06-15 14:17:33pm', 'finished', '2022-06-15 14:17:49pm', 'finished', '2022-06-15 16:21:25pm', 'accept', '2022-06-16 10:45:00am', 'received', '2022-06-17 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:33:53am', '2022-06-17 09:00 AM', '2nd FL plastering work,G.FL plastering and external plastering', NULL, NULL, NULL),
(145, 'VR-000141', '2022-06-15 09:00 AM', 5, 26, '2022-06-15 02:03:08', '2022-06-21 08:21:25', 'accept', '2022-06-15 14:15:41pm', 'finished', '2022-06-15 14:17:12pm', 'finished', '2022-06-15 16:20:25pm', 'accept', '2022-06-16 10:43:58am', 'received', '2022-06-18 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:33:05am', '2022-06-19 09:00 AM', '2nd FL plastering,G.FL plastering and external plastering', NULL, NULL, NULL),
(146, 'VR-000142', '2022-06-15 09:00 AM', 5, 26, '2022-06-15 02:04:45', '2022-06-16 03:43:14', 'accept', '2022-06-15 14:13:57pm', 'finished', '2022-06-15 14:14:19pm', 'finished', '2022-06-15 16:16:33pm', 'reject', '2022-06-16 10:43:14am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 09:00 AM', '2nd FL plastering,G.FL plastering and external plastering', NULL, NULL, NULL),
(147, 'VR-000143', '2022-06-15 10:00 AM', 9, 22, '2022-06-15 04:01:43', '2022-06-21 07:10:23', 'accept', '2022-06-15 14:35:48pm', 'finished', '2022-06-15 14:36:21pm', 'finished', '2022-06-15 15:40:09pm', 'reject', '2022-06-16 10:42:21am', 'received', '2022-06-21 02:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 10:00 AM', 'For roof floor topping work', NULL, NULL, NULL),
(148, 'VR-000144', '2022-06-15 11:00 AM', 11, 31, '2022-06-15 04:14:26', '2022-06-23 05:05:47', 'accept', '2022-06-16 11:01:04am', 'finished', '2022-06-16 11:01:57am', 'finished', '2022-06-16 13:45:04pm', 'accept', '2022-06-16 15:01:48pm', 'received', '2022-06-19 07:00 AM', 'finished', '2022-06-23 12:05:47pm', NULL, NULL, 'finished', '2022-06-16 15:17:51pm', '2022-06-17 11:00 AM', 'GF Plastering', NULL, NULL, NULL),
(149, 'VR-000145', '2022-06-15 11:00 AM', 17, 47, '2022-06-15 04:31:51', '2022-06-21 10:12:52', 'accept', '2022-06-15 13:14:24pm', 'finished', '2022-06-15 13:14:38pm', 'finished', '2022-06-15 15:58:29pm', 'accept', '2022-06-16 10:41:30am', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:32:38am', '2022-06-15 11:00 AM', 'Earthwork Excavation', NULL, NULL, NULL),
(150, 'VR-000146', '2022-06-15 03:00 PM', 8, 36, '2022-06-15 08:15:56', '2022-06-16 08:28:20', 'accept', '2022-06-16 10:48:19am', 'finished', '2022-06-16 10:48:43am', 'finished', '2022-06-16 11:20:48am', 'accept', '2022-06-16 15:01:13pm', 'received', '2022-06-16 01:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:28:20pm', '2022-06-16 10:00 AM', 'Bricklaying Work (1F)(KKST)', NULL, NULL, NULL),
(151, 'VR-000147', '2022-06-15 03:00 PM', 8, 36, '2022-06-15 08:21:42', '2022-06-20 02:53:02', 'accept', '2022-06-16 10:47:40am', 'finished', '2022-06-16 10:48:00am', 'finished', '2022-06-16 11:20:16am', 'accept', '2022-06-16 15:00:30pm', 'received', '2022-06-18 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:19:01pm', '2022-06-19 10:00 AM', 'Bricklaying Work (1F)(KKST)', NULL, NULL, NULL),
(152, 'VR-000148', '2022-06-15 05:00 PM', 16, 44, '2022-06-15 10:23:11', '2022-06-20 23:41:15', 'accept', '2022-06-16 14:14:56pm', 'finished', '2022-06-16 14:16:46pm', 'finished', '2022-06-16 15:14:46pm', 'accept', '2022-06-16 15:24:05pm', 'received', '2022-06-21 06:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:27:33pm', '2022-06-15 05:00 PM', 'rebar installation lean hardcore brickwork', NULL, NULL, NULL),
(153, 'VR-000149', '2022-06-15 11:00 AM', 2, 28, '2022-06-16 01:47:45', '2022-06-22 15:02:09', 'accept', '2022-06-16 10:45:15am', 'finished', '2022-06-16 10:47:08am', 'finished', '2022-06-16 11:49:08am', 'accept', '2022-06-16 14:59:53pm', 'received', '2022-06-18 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:17:01pm', '2022-06-18 08:00 AM', 'GF Brickwork', NULL, NULL, NULL),
(154, 'VR-000150', '2022-06-14 01:00 PM', 9, 22, '2022-06-16 06:50:49', '2022-06-21 07:10:07', 'accept', '2022-06-16 15:07:16pm', 'finished', '2022-06-16 15:11:32pm', 'finished', '2022-06-16 15:12:58pm', 'accept', '2022-06-16 15:22:49pm', 'received', '2022-06-21 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:27:05pm', '2022-06-15 01:00 PM', 'For roof floor topping work', NULL, NULL, NULL),
(155, 'VR-000151', '2022-06-15 02:00 PM', 5, 26, '2022-06-16 07:01:22', '2022-06-23 10:36:56', 'accept', '2022-06-16 14:15:34pm', 'finished', '2022-06-16 14:15:53pm', 'finished', '2022-06-16 15:04:25pm', 'accept', '2022-06-16 15:22:27pm', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:26:21pm', '2022-06-21 02:00 PM', '2nd FL plastering,G.FL plastering and external plastering', NULL, NULL, NULL),
(156, 'VR-000152', '2022-06-16 03:00 PM', 21, 37, '2022-06-16 07:55:33', '2022-06-16 07:57:13', 'reject', '2022-06-16 14:57:13pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground Beam', NULL, NULL, NULL),
(157, 'VR-000153', '2022-06-16 02:00 PM', 21, 37, '2022-06-16 08:00:53', '2022-06-20 03:09:08', 'accept', '2022-06-16 15:01:08pm', 'finished', '2022-06-16 15:01:37pm', 'finished', '2022-06-16 15:11:38pm', 'accept', '2022-06-16 15:22:02pm', 'received', '2022-06-20 10:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:25:41pm', '2022-06-20 02:00 PM', 'Ground Beam', NULL, NULL, NULL),
(158, 'VR-000154', '2022-06-09 12:00 PM', 11, 31, '2022-06-17 05:21:50', '2022-06-23 04:49:01', 'accept', '2022-06-21 11:08:36am', 'finished', '2022-06-21 11:08:53am', 'finished', '2022-06-21 11:12:30am', 'accept', '2022-06-21 11:59:10am', 'received', '2022-06-12 02:00 PM', 'finished', '2022-06-23 11:49:01am', NULL, NULL, 'finished', '2022-06-21 14:23:16pm', '2022-06-12 12:00 PM', 'GF brick work and plastering', NULL, NULL, NULL),
(159, 'VR-000155', '2022-06-20 09:00 AM', 8, 36, '2022-06-20 02:52:34', '2022-06-24 06:08:41', 'accept', '2022-06-21 09:38:22am', 'finished', '2022-06-21 09:43:01am', 'finished', '2022-06-24 10:34:20am', 'accept', '2022-06-24 13:08:41pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 09:00 AM', 'Bricklaying work (2F)', NULL, NULL, NULL),
(160, 'VR-000156', '2022-06-20 10:00 AM', 6, 25, '2022-06-20 03:04:35', '2022-06-23 05:09:10', 'accept', '2022-06-20 13:17:03pm', 'finished', '2022-06-20 13:17:19pm', 'finished', '2022-06-21 10:25:11am', 'accept', '2022-06-21 11:57:44am', 'received', '2022-06-23 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:14:03pm', '2022-06-23 12:00 AM', 'For Topping Work', NULL, NULL, NULL),
(161, 'VR-000157', '2022-06-20 10:00 AM', 6, 25, '2022-06-20 03:05:55', '2022-06-23 05:09:39', 'accept', '2022-06-20 13:10:42pm', 'finished', '2022-06-20 13:11:04pm', 'finished', '2022-06-21 10:36:43am', 'accept', '2022-06-21 11:56:10am', 'received', '2022-06-23 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:12:51pm', '2022-06-21 09:00 AM', 'For Topping Work', NULL, NULL, NULL),
(162, 'VR-000158', '2022-06-20 10:00 AM', 21, 37, '2022-06-20 03:12:03', '2022-06-20 04:26:13', 'reject', '2022-06-20 11:26:13am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 10:00 AM', 'R.wall,Ground beam Lean', NULL, NULL, NULL),
(163, 'VR-000159', '2022-06-20 10:00 AM', 21, 37, '2022-06-20 03:12:03', '2022-06-20 04:25:55', 'reject', '2022-06-20 11:25:55am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 10:00 AM', 'R.wall,Ground beam Lean', NULL, NULL, NULL),
(164, 'VR-000160', '2022-06-20 10:00 AM', 21, 37, '2022-06-20 03:12:04', '2022-06-21 10:16:20', 'accept', '2022-06-21 09:16:45am', 'finished', '2022-06-21 09:38:49am', 'finished', '2022-06-21 10:32:46am', 'accept', '2022-06-21 11:55:51am', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:09:03pm', '2022-06-20 10:00 AM', 'R.wall,Ground beam Lean', NULL, NULL, NULL),
(165, 'VR-000161', '2022-06-20 01:00 PM', 5, 26, '2022-06-20 06:36:30', '2022-06-22 15:08:24', 'accept', '2022-06-21 09:37:57am', 'finished', '2022-06-21 09:40:17am', 'finished', '2022-06-21 10:30:30am', 'accept', '2022-06-21 11:55:23am', 'received', '2022-06-22 10:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:07:05pm', '2022-06-22 01:00 PM', 'External plastering work for Elevation B,C,A', NULL, NULL, NULL),
(166, 'VR-000162', '2022-06-20 01:00 PM', 5, 26, '2022-06-20 06:37:07', '2022-06-24 07:01:16', 'accept', '2022-06-21 09:40:52am', 'finished', '2022-06-21 09:41:57am', 'finished', '2022-06-21 10:29:33am', 'accept', '2022-06-21 11:54:04am', 'received', '2022-06-24 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:02:26pm', '2022-06-22 01:00 PM', 'External plastering work for Elevation B,C,A', NULL, NULL, NULL),
(167, 'VR-000163', '2022-06-20 02:00 PM', 17, 47, '2022-06-20 07:55:02', '2022-06-24 06:07:59', 'accept', '2022-06-21 09:57:21am', 'finished', '2022-06-21 09:57:47am', 'finished', '2022-06-23 10:36:04am', 'accept', '2022-06-24 13:07:59pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:40:31pm', '2022-06-21 02:00 PM', 'GL D and B Earthwork', NULL, NULL, NULL),
(168, 'VR-000164', '2022-06-20 04:00 PM', 17, 47, '2022-06-20 09:29:56', '2022-06-22 07:52:26', 'accept', '2022-06-21 09:58:49am', 'finished', '2022-06-21 09:59:39am', 'finished', '2022-06-21 10:59:24am', 'accept', '2022-06-21 11:53:20am', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:01:12pm', '2022-06-20 04:00 PM', 'GL-D casting', NULL, NULL, NULL),
(169, 'VR-000165', '2022-06-20 06:00 PM', 12, 32, '2022-06-20 14:32:31', '2022-06-21 06:01:52', 'accept', '2022-06-21 10:01:57am', 'finished', '2022-06-21 10:02:14am', 'finished', '2022-06-21 10:26:35am', 'accept', '2022-06-21 11:52:13am', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:01:52pm', '2022-06-22 06:00 AM', 'Internal Wall Plasterwork', NULL, NULL, NULL),
(170, 'VR-000166', '2022-06-20 06:00 AM', 16, 44, '2022-06-20 23:45:48', '2022-06-22 23:19:45', 'accept', '2022-06-21 10:05:32am', 'finished', '2022-06-21 10:06:00am', 'finished', '2022-06-21 10:16:17am', 'reject', '2022-06-21 11:51:00am', 'received', '2022-06-23 06:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 12:00 AM', 'ground beam casting lean footing', NULL, NULL, NULL),
(171, 'VR-000167', '2022-06-21 10:00 AM', 16, 44, '2022-06-21 03:25:21', '2022-06-21 03:28:32', 'reject', '2022-06-21 10:28:32am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 10:00 AM', 'Ground beam casting, lean,footing', NULL, NULL, NULL),
(172, 'VR-000168', '2022-06-21 10:00 AM', 16, 44, '2022-06-21 03:26:37', '2022-06-22 23:19:33', 'accept', '2022-06-21 10:28:43am', 'finished', '2022-06-21 10:29:08am', 'finished', '2022-06-21 10:31:25am', 'accept', '2022-06-21 11:50:38am', 'received', '2022-06-23 06:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 12:52:13pm', '2022-06-22 10:00 AM', 'Footing ,ground beam casting, lean', NULL, NULL, NULL),
(173, 'VR-000169', '2022-06-21 01:00 PM', 9, 22, '2022-06-21 07:02:07', '2022-06-24 12:21:39', 'accept', '2022-06-22 10:33:06am', 'finished', '2022-06-22 10:33:52am', 'finished', '2022-06-22 17:06:03pm', 'accept', '2022-06-24 13:11:20pm', 'received', '2022-06-24 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:48:00pm', '2022-06-23 01:00 PM', 'For Gfloor sub-floor concrete work,Gfloor internal stair brick work & plaster work,Main stair topping work, Varendah kicker concrete work, staircase slab topping work', NULL, NULL, NULL),
(174, 'VR-000170', '2022-06-21 02:00 PM', 7, 22, '2022-06-21 07:09:07', '2022-06-21 10:34:22', 'accept', '2022-06-21 17:33:50pm', 'finished', '2022-06-21 17:34:22pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 02:00 PM', 'For 2nd floor brick work ,DPC concrete work', NULL, NULL, NULL),
(175, 'VR-000171', '2022-06-21 02:00 PM', 11, 31, '2022-06-21 07:18:14', '2022-06-22 09:49:14', 'reject', '2022-06-22 16:49:14pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 02:00 PM', 'External Scaffolding', NULL, NULL, NULL),
(176, 'VR-000172', '2022-06-21 03:00 PM', 5, 26, '2022-06-21 08:18:31', '2022-06-24 06:06:07', 'accept', '2022-06-22 09:53:17am', 'finished', '2022-06-22 09:59:44am', 'finished', '2022-06-23 15:11:17pm', 'accept', '2022-06-24 13:06:07pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:41:57pm', '2022-06-24 03:00 PM', 'Lintel installation at 1st FLoor Elevation A', NULL, NULL, NULL),
(177, 'VR-000173', '2022-06-21 03:00 PM', 9, 22, '2022-06-21 08:32:27', '2022-06-24 06:04:51', 'accept', '2022-06-22 10:46:08am', 'finished', '2022-06-22 10:46:27am', 'finished', '2022-06-23 15:09:08pm', 'accept', '2022-06-24 13:04:51pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:41:25pm', '2022-06-22 03:00 PM', 'For Gfloor sub-floor concrete work', NULL, NULL, NULL),
(178, 'VR-000174', '2022-06-21 04:00 PM', 11, 31, '2022-06-21 09:44:49', '2022-06-24 06:04:24', 'accept', '2022-06-22 10:17:56am', 'finished', '2022-06-22 10:20:47am', 'finished', '2022-06-23 10:19:59am', 'accept', '2022-06-24 13:04:24pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 04:00 PM', 'Roofing', NULL, NULL, NULL),
(179, 'VR-000175', '2022-06-21 04:00 PM', 14, 31, '2022-06-21 09:57:39', '2022-06-24 06:03:35', 'accept', '2022-06-23 11:46:36am', 'finished', '2022-06-23 11:46:56am', 'finished', '2022-06-24 10:30:10am', 'accept', '2022-06-24 13:03:35pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 04:00 PM', 'GL C to E backfilling work', NULL, NULL, NULL),
(180, 'VR-000176', '2022-06-21 05:00 PM', 17, 47, '2022-06-21 10:04:35', '2022-06-23 09:34:14', 'accept', '2022-06-22 09:30:15am', 'finished', '2022-06-22 09:30:30am', 'finished', '2022-06-23 15:08:00pm', 'accept', '2022-06-23 15:38:26pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:34:14pm', '2022-06-21 05:00 PM', 'Footing casting', NULL, NULL, NULL),
(181, 'VR-000177', '2022-06-21 05:00 PM', 17, 47, '2022-06-21 10:14:47', '2022-06-23 09:37:20', 'accept', '2022-06-22 09:28:52am', 'finished', '2022-06-22 09:29:20am', 'finished', '2022-06-23 10:49:59am', 'accept', '2022-06-23 15:34:29pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:37:20pm', '2022-06-21 05:00 PM', 'Lean & Footing', NULL, NULL, NULL),
(182, 'VR-000178', '2022-06-21 05:00 PM', 17, 47, '2022-06-21 10:15:39', '2022-06-22 02:27:34', 'reject', '2022-06-22 09:27:34am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 05:00 PM', 'Lean & footing', NULL, NULL, NULL),
(183, 'VR-000179', '2022-06-21 05:00 PM', 21, 37, '2022-06-21 10:18:32', '2022-06-23 09:36:41', 'accept', '2022-06-22 09:25:00am', 'finished', '2022-06-22 09:25:11am', 'finished', '2022-06-23 10:59:45am', 'accept', '2022-06-23 15:33:38pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:36:41pm', '2022-06-24 05:00 PM', 'Ground tank/BG Lean/R.WALL', NULL, NULL, NULL),
(184, 'VR-000180', '2022-06-21 05:00 PM', 21, 37, '2022-06-21 10:19:24', '2022-06-22 02:22:06', 'accept', '2022-06-22 09:21:46am', 'finished', '2022-06-22 09:22:06am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 05:00 PM', 'Ground tank', NULL, NULL, NULL),
(185, 'VR-000181', '2022-06-21 05:00 PM', 2, 28, '2022-06-21 15:54:51', '2022-06-24 16:27:23', 'accept', '2022-06-22 10:08:54am', 'finished', '2022-06-22 10:14:46am', 'finished', '2022-06-23 16:26:15pm', 'accept', '2022-06-24 13:02:58pm', 'received', '2022-06-24 01:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:36:10pm', '2022-06-24 09:00 AM', 'Roof, Stair roof slab & Column ties', NULL, NULL, NULL),
(186, 'VR-000182', '2022-06-22 10:00 AM', 17, 47, '2022-06-22 03:19:07', '2022-06-23 02:49:01', 'reject', '2022-06-23 09:49:01am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 10:00 AM', 'Short Column', NULL, NULL, NULL),
(187, 'VR-000183', '2022-06-22 02:00 PM', 17, 47, '2022-06-22 07:07:46', '2022-06-23 02:55:50', 'accept', '2022-06-23 09:55:37am', 'finished', '2022-06-23 09:55:50am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 02:00 PM', 'Line D RW Brickwork', NULL, NULL, NULL),
(188, 'VR-000184', '2022-06-22 02:00 PM', 9, 22, '2022-06-22 07:19:57', '2022-06-23 09:28:45', 'accept', '2022-06-23 11:16:45am', 'finished', '2022-06-23 11:16:59am', 'finished', '2022-06-23 15:05:11pm', 'accept', '2022-06-23 15:32:17pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:28:45pm', '2022-06-23 02:00 PM', 'For Gfloor sub-floor', NULL, NULL, NULL),
(189, 'VR-000185', '2022-06-22 02:00 PM', 7, 22, '2022-06-22 07:28:19', '2022-06-24 12:20:49', 'accept', '2022-06-23 09:55:13am', 'finished', '2022-06-23 09:55:25am', 'finished', '2022-06-23 15:04:12pm', 'accept', '2022-06-23 15:31:51pm', 'received', '2022-06-24 07:00 PM', 'finished', '2022-06-24 12:45:50pm', NULL, NULL, 'finished', '2022-06-23 16:35:37pm', '2022-06-25 02:00 PM', 'For scaffolding', NULL, NULL, NULL),
(190, 'VR-000186', '2022-06-23 09:00 AM', 17, 47, '2022-06-23 02:35:56', '2022-06-24 12:54:41', 'accept', '2022-06-24 19:53:11pm', 'finished', '2022-06-24 19:54:41pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-23 09:00 AM', 'GL B & A\'', NULL, NULL, NULL),
(191, 'VR-000187', '2022-06-23 10:00 AM', 4, 26, '2022-06-23 03:38:35', '2022-06-23 09:34:42', 'accept', '2022-06-23 11:15:54am', 'finished', '2022-06-23 11:16:09am', 'finished', '2022-06-23 15:02:21pm', 'accept', '2022-06-23 15:29:41pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:34:42pm', '2022-06-25 10:00 AM', 'External plastering work elevation B,C,A', NULL, NULL, NULL),
(192, 'VR-000188', '2022-06-23 12:00 PM', 6, 25, '2022-06-23 05:13:12', '2022-06-24 06:01:57', 'accept', '2022-06-24 10:47:29am', 'finished', '2022-06-24 10:52:57am', 'finished', '2022-06-24 11:31:07am', 'accept', '2022-06-24 13:01:57pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 12:00 PM', 'for painting Work', NULL, NULL, NULL),
(193, 'VR-000189', '2022-06-23 12:00 PM', 6, 25, '2022-06-23 05:19:45', '2022-06-24 06:00:22', 'accept', '2022-06-24 10:45:09am', 'finished', '2022-06-24 10:46:30am', 'finished', '2022-06-24 11:29:59am', 'accept', '2022-06-24 13:00:22pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 12:00 PM', 'For Painting Work', NULL, NULL, NULL),
(194, 'VR-000190', '2022-06-23 02:00 PM', 6, 25, '2022-06-23 07:41:18', '2022-06-24 05:59:31', 'accept', '2022-06-24 10:44:26am', 'finished', '2022-06-24 10:44:56am', 'finished', '2022-06-24 11:19:50am', 'accept', '2022-06-24 12:59:31pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 02:00 PM', 'For painting work', NULL, NULL, NULL),
(195, 'VR-000191', '2022-06-23 03:00 PM', 21, 37, '2022-06-23 08:34:58', '2022-06-24 12:19:17', 'accept', '2022-06-24 19:17:37pm', 'finished', '2022-06-24 19:19:17pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:00 PM', 'G.F Column', NULL, NULL, NULL),
(196, 'VR-000192', '2022-06-23 03:00 PM', 21, 37, '2022-06-23 08:36:04', '2022-06-24 12:24:56', 'accept', '2022-06-24 19:24:07pm', 'finished', '2022-06-24 19:24:56pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:00 PM', 'G.F Column', NULL, NULL, NULL),
(197, 'VR-000193', '2022-06-23 03:00 PM', 21, 37, '2022-06-23 08:36:49', '2022-06-24 07:27:13', 'reject', '2022-06-24 14:27:13pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:00 PM', 'G.F Column', NULL, NULL, NULL),
(198, 'VR-000194', '2022-06-23 03:00 PM', 4, 26, '2022-06-23 08:42:20', '2022-06-24 05:05:23', 'accept', '2022-06-24 10:43:43am', 'finished', '2022-06-24 10:44:04am', NULL, NULL, NULL, NULL, 'received', '2022-06-24 12:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 03:00 PM', 'External plastering work Elevation B,C,A', NULL, NULL, NULL),
(199, 'VR-000195', '2022-06-23 04:00 PM', 11, 31, '2022-06-23 09:08:11', '2022-06-24 03:43:19', 'accept', '2022-06-24 10:42:53am', 'finished', '2022-06-24 10:43:19am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 04:00 PM', 'GF Plastering', NULL, NULL, NULL),
(200, 'VR-000196', '2022-06-23 04:00 PM', 14, 31, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-27 04:00 PM', 'GB and Stripfooting (emergency stair area)', NULL, NULL, NULL),
(201, 'VR-000197', '2022-06-24 02:00 PM', 16, 44, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 02:00 PM', 'column', NULL, NULL, NULL),
(202, 'VR-000198', '2022-06-24 02:00 PM', 16, 44, '2022-06-24 07:32:02', '2022-06-24 07:32:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 02:00 PM', 'Column', NULL, NULL, NULL),
(203, 'VR-000199', '2022-06-24 05:00 PM', 17, 47, '2022-06-24 10:03:58', '2022-06-24 10:03:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 05:00 PM', 'Line C Hardcore', NULL, NULL, NULL),
(204, 'VR-000200', '2022-06-24 06:00 PM', 9, 22, '2022-06-24 12:00:16', '2022-06-24 12:00:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 06:00 PM', 'For Gfloor sub-floor work', NULL, NULL, NULL);

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
(81, '83', '1', 28, 67, '2022-06-06 12:14:18', '2022-06-06 12:14:18', '1.2mm'),
(82, '7', '4', 36, 68, '2022-06-07 02:42:05', '2022-06-07 02:42:05', NULL),
(83, '7', '0.076', 36, 69, '2022-06-07 02:58:36', '2022-06-07 02:58:36', NULL),
(84, '8', '1', 47, 70, '2022-06-07 03:13:58', '2022-06-07 03:13:58', NULL),
(85, '7', '2', 47, 71, '2022-06-07 03:15:39', '2022-06-07 03:15:39', NULL),
(86, '10', '1', 47, 72, '2022-06-07 03:16:07', '2022-06-07 03:16:07', NULL),
(87, '116', '2', 47, 73, '2022-06-07 06:34:10', '2022-06-07 06:34:10', 'sub'),
(88, '26', '1.5', 31, 74, '2022-06-07 06:44:48', '2022-06-07 06:44:48', NULL),
(89, '4', '50', 31, 75, '2022-06-07 06:46:16', '2022-06-07 06:46:16', NULL),
(90, '26', '3', 22, 76, '2022-06-07 09:09:48', '2022-06-07 09:09:48', 'Suds'),
(91, '26', '3', 26, 77, '2022-06-07 09:30:40', '2022-06-07 09:30:40', NULL),
(92, '1', '1.5', 26, 78, '2022-06-07 09:32:37', '2022-06-07 09:32:37', NULL),
(93, '26', '1.5', 26, 79, '2022-06-07 09:33:36', '2022-06-07 09:33:36', NULL),
(94, '7', '48', 37, 80, '2022-06-07 10:15:51', '2022-06-07 10:15:51', NULL),
(95, '10', '57', 37, 81, '2022-06-07 10:16:51', '2022-06-07 10:16:51', NULL),
(96, '27', '1.5', 26, 82, '2022-06-08 08:54:47', '2022-06-08 08:54:47', NULL),
(97, '4', '50', 26, 83, '2022-06-08 09:16:20', '2022-06-08 09:16:20', NULL),
(98, '5', '57', 44, 84, '2022-06-08 10:22:56', '2022-06-08 10:22:56', '12m'),
(99, '12', '60', 44, 84, '2022-06-08 10:22:56', '2022-06-08 10:22:56', '12m'),
(100, '1', '50', 44, 84, '2022-06-08 10:22:56', '2022-06-08 10:22:56', NULL),
(101, '117', '2', 28, 85, '2022-06-08 11:47:12', '2022-06-08 11:47:12', NULL),
(102, '17', '1', 28, 85, '2022-06-08 11:47:12', '2022-06-08 11:47:12', 'Above 11ft'),
(103, '26', '1.5', 28, 85, '2022-06-08 11:47:12', '2022-06-08 11:47:12', NULL),
(104, '1', '100', 31, 86, '2022-06-09 01:23:51', '2022-06-09 01:23:51', NULL),
(105, '15', '0.5', 31, 87, '2022-06-09 01:26:38', '2022-06-09 01:26:38', NULL),
(106, '1', '50', 31, 88, '2022-06-09 03:11:25', '2022-06-09 03:11:25', NULL),
(107, '1', '50', 44, 89, '2022-06-09 04:05:52', '2022-06-09 04:05:52', NULL),
(108, '10', '57', 44, 89, '2022-06-09 04:05:52', '2022-06-09 04:05:52', NULL),
(109, '7', '60', 44, 89, '2022-06-09 04:05:52', '2022-06-09 04:05:52', NULL),
(110, '1', '27', 32, 90, '2022-06-09 05:50:50', '2022-06-09 05:50:50', 'Bags'),
(111, '26', '1', 32, 90, '2022-06-09 05:50:50', '2022-06-09 05:50:50', 'Suds'),
(112, '1', '39', 32, 91, '2022-06-09 06:12:13', '2022-06-09 06:12:13', 'Bags'),
(113, '26', '3', 32, 91, '2022-06-09 06:12:13', '2022-06-09 06:12:13', 'Suds'),
(114, '25', '5000', 36, 92, '2022-06-09 10:15:49', '2022-06-09 10:15:49', NULL),
(115, '4', '30', 36, 93, '2022-06-09 10:19:47', '2022-06-09 10:19:47', NULL),
(116, '26', '2', 22, 94, '2022-06-09 12:53:35', '2022-06-09 12:53:35', 'Suds'),
(117, '4', '50', 22, 94, '2022-06-09 12:53:35', '2022-06-09 12:53:35', 'Bags'),
(118, '106', '1500', 28, 95, '2022-06-10 02:52:31', '2022-06-10 02:52:31', '20mm'),
(119, '25', '1000', 37, 96, '2022-06-10 04:11:21', '2022-06-10 04:11:21', NULL),
(120, '26', '1.5', 37, 97, '2022-06-10 04:15:28', '2022-06-10 04:15:28', '1.5'),
(121, '26', '1.5', 31, 98, '2022-06-10 04:20:20', '2022-06-10 04:20:20', NULL),
(122, '26', '1', 36, 99, '2022-06-10 06:26:36', '2022-06-10 06:26:36', NULL),
(123, '25', '5000', 31, 100, '2022-06-10 07:32:56', '2022-06-10 07:32:56', 'MGC'),
(124, '26', '1', 47, 101, '2022-06-10 07:39:32', '2022-06-10 07:39:32', '1'),
(125, '10', '0.13', 31, 102, '2022-06-10 08:37:13', '2022-06-10 08:37:13', NULL),
(126, '19', '120', 44, 103, '2022-06-10 09:15:02', '2022-06-10 09:15:02', NULL),
(127, '21', '12', 44, 103, '2022-06-10 09:15:02', '2022-06-10 09:15:02', NULL),
(128, '4', '50', 26, 104, '2022-06-10 10:39:18', '2022-06-10 10:39:18', NULL),
(129, '26', '1.5', 26, 105, '2022-06-10 10:40:28', '2022-06-10 10:40:28', NULL),
(130, '15', '1', 28, 106, '2022-06-10 15:02:53', '2022-06-10 15:02:53', 'Coil'),
(131, '26', '1.5', 44, 107, '2022-06-11 02:32:54', '2022-06-11 02:32:54', NULL),
(132, '27', '1.5', 44, 107, '2022-06-11 02:32:54', '2022-06-11 02:32:54', NULL),
(133, '95', '15', 31, 108, '2022-06-11 04:42:25', '2022-06-11 04:42:25', NULL),
(134, '97', '10', 31, 108, '2022-06-11 04:42:25', '2022-06-11 04:42:25', NULL),
(135, '117', '3', 26, 109, '2022-06-11 04:50:27', '2022-06-11 04:50:27', NULL),
(136, '117', '3', 26, 110, '2022-06-11 04:51:14', '2022-06-11 04:51:14', NULL),
(137, '4', '64', 22, 111, '2022-06-11 04:55:27', '2022-06-11 04:55:27', 'Bags'),
(138, '4', '50', 22, 112, '2022-06-11 05:03:02', '2022-06-11 05:03:02', 'Bags'),
(139, '26', '2', 22, 112, '2022-06-11 05:03:02', '2022-06-11 05:03:02', 'Suds'),
(140, '26', '1.5', 31, 113, '2022-06-12 02:21:17', '2022-06-12 02:21:17', NULL),
(141, '27', '1.5', 31, 113, '2022-06-12 02:21:17', '2022-06-12 02:21:17', NULL),
(142, '17', '1', 28, 114, '2022-06-12 11:04:06', '2022-06-12 11:04:06', '10ft , 12ft'),
(143, '22', '15', 28, 115, '2022-06-12 11:05:59', '2022-06-12 11:05:59', 'White Elephant brand'),
(144, '10', '65', 44, 116, '2022-06-13 02:43:25', '2022-06-13 02:43:25', NULL),
(145, '6', '20', 44, 116, '2022-06-13 02:43:25', '2022-06-13 02:43:25', NULL),
(146, '25', '5000', 44, 117, '2022-06-13 03:42:02', '2022-06-13 03:42:02', NULL),
(147, '25', '10000', 28, 118, '2022-06-13 03:51:44', '2022-06-13 03:51:44', 'MGC Brand'),
(148, '5', '2', 28, 118, '2022-06-13 03:51:44', '2022-06-13 03:51:44', NULL),
(149, '26', '1.5', 44, 119, '2022-06-13 04:00:28', '2022-06-13 04:00:28', NULL),
(150, '25', '5000', 26, 120, '2022-06-13 06:44:17', '2022-06-13 06:44:17', NULL),
(151, '7', '33', 44, 121, '2022-06-13 07:21:31', '2022-06-13 07:21:31', '1.2'),
(152, '8', '21', 44, 121, '2022-06-13 07:21:31', '2022-06-13 07:21:31', NULL),
(153, '26', '1.5', 26, 122, '2022-06-13 09:02:34', '2022-06-13 09:02:34', NULL),
(154, '26', '1.5', 26, 123, '2022-06-13 09:05:49', '2022-06-13 09:05:49', NULL),
(155, '26', '1.5', 37, 124, '2022-06-13 09:27:18', '2022-06-13 09:27:18', '1.5'),
(156, '27', '1.5', 37, 125, '2022-06-13 09:28:14', '2022-06-13 09:28:14', '1.5'),
(157, '20', '0.35', 37, 126, '2022-06-13 09:29:39', '2022-06-13 09:29:39', '0.35'),
(158, '18', '0.20', 37, 127, '2022-06-13 09:31:58', '2022-06-13 09:31:58', '0.20'),
(159, '22', '22', 37, 128, '2022-06-13 09:33:00', '2022-06-13 09:33:00', '22'),
(160, '4', '50', 22, 129, '2022-06-13 11:34:22', '2022-06-13 11:34:22', 'Bags'),
(161, '26', '5', 22, 129, '2022-06-13 11:34:22', '2022-06-13 11:34:22', 'Suds'),
(162, '4', '40', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Bags'),
(163, '26', '3', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Suds'),
(164, '25', '5000', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Nos'),
(165, '27', '2', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Suds'),
(166, '30', '162', 36, 131, '2022-06-14 02:01:23', '2022-06-14 02:01:23', NULL),
(167, '4', '80', 22, 132, '2022-06-14 07:21:42', '2022-06-14 07:21:42', 'Bags'),
(168, '27', '1.5', 22, 132, '2022-06-14 07:21:42', '2022-06-14 07:21:42', 'Suds'),
(169, '26', '6', 37, 133, '2022-06-14 07:59:54', '2022-06-14 07:59:54', '6'),
(170, '4', '10', 37, 134, '2022-06-14 08:00:50', '2022-06-14 08:00:50', '10'),
(171, '1', '40', 37, 135, '2022-06-14 08:01:45', '2022-06-14 08:01:45', '40'),
(172, '25', '1000', 37, 136, '2022-06-14 08:37:32', '2022-06-14 08:37:32', '1000'),
(173, '26', '1.5', 31, 137, '2022-06-14 10:03:04', '2022-06-14 10:03:04', NULL),
(174, '4', '100', 26, 138, '2022-06-14 10:52:45', '2022-06-14 10:52:45', NULL),
(175, '4', '100', 26, 139, '2022-06-14 11:00:41', '2022-06-14 11:00:41', NULL),
(176, '27', '1.5', 31, 140, '2022-06-14 11:53:13', '2022-06-14 11:53:13', NULL),
(177, '26', '1.5', 26, 141, '2022-06-15 01:59:18', '2022-06-15 01:59:18', NULL),
(178, '26', '1.5', 26, 142, '2022-06-15 01:59:54', '2022-06-15 01:59:54', NULL),
(179, '26', '1.5', 26, 143, '2022-06-15 02:00:30', '2022-06-15 02:00:30', NULL),
(180, '26', '1.5', 26, 144, '2022-06-15 02:02:11', '2022-06-15 02:02:11', NULL),
(181, '26', '1.5', 26, 145, '2022-06-15 02:03:08', '2022-06-15 02:03:08', NULL),
(182, '26', '1.5', 26, 146, '2022-06-15 02:04:45', '2022-06-15 02:04:45', NULL),
(183, '131', '1.5', 22, 147, '2022-06-15 04:01:43', '2022-06-15 04:01:43', 'Suds'),
(184, '107', '3', 31, 148, '2022-06-15 04:14:26', '2022-06-15 04:14:26', NULL),
(185, '95', '40', 47, 149, '2022-06-15 04:31:51', '2022-06-15 04:31:51', '2in'),
(186, '26', '1', 36, 150, '2022-06-15 08:15:56', '2022-06-15 08:15:56', NULL),
(187, '26', '1', 36, 151, '2022-06-15 08:21:42', '2022-06-15 08:21:42', NULL),
(188, '26', '1.5', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL),
(189, '127', '1', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL),
(190, '121', '5', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL),
(191, '122', '5', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL),
(192, '26', '3', 28, 153, '2022-06-16 01:47:45', '2022-06-16 01:47:45', NULL),
(193, '131', '1.5', 22, 154, '2022-06-16 06:50:49', '2022-06-16 06:50:49', 'Suds'),
(194, '26', '1.5', 26, 155, '2022-06-16 07:01:22', '2022-06-16 07:01:22', NULL),
(195, '19', '.07', 37, 156, '2022-06-16 07:55:33', '2022-06-16 07:55:33', '.07'),
(196, '19', '0.7', 37, 157, '2022-06-16 08:00:53', '2022-06-16 08:00:53', '0.7'),
(197, '1', '100', 31, 158, '2022-06-17 05:21:50', '2022-06-17 05:21:50', NULL),
(198, '25', '5000', 36, 159, '2022-06-20 02:52:34', '2022-06-20 02:52:34', NULL),
(199, '4', '40', 25, 160, '2022-06-20 03:04:35', '2022-06-20 03:04:35', '42.5'),
(200, '131', '3', 25, 161, '2022-06-20 03:05:55', '2022-06-20 03:05:55', NULL),
(201, '26', '1.5', 37, 162, '2022-06-20 03:12:03', '2022-06-20 03:12:03', '1.5'),
(202, '26', '1.5', 37, 163, '2022-06-20 03:12:03', '2022-06-20 03:12:03', '1.5'),
(203, '26', '1.5', 37, 164, '2022-06-20 03:12:04', '2022-06-20 03:12:04', '1.5'),
(204, '4', '50', 26, 165, '2022-06-20 06:36:30', '2022-06-20 06:36:30', NULL),
(205, '26', '1.5', 26, 166, '2022-06-20 06:37:07', '2022-06-20 06:37:07', NULL),
(206, '98', '30', 47, 167, '2022-06-20 07:55:02', '2022-06-20 07:55:02', '1'),
(207, '26', '1.5', 47, 168, '2022-06-20 09:29:56', '2022-06-20 09:29:56', '1'),
(208, '1', '35', 32, 169, '2022-06-20 14:32:31', '2022-06-20 14:32:31', 'Bags'),
(209, '26', '2', 32, 169, '2022-06-20 14:32:31', '2022-06-20 14:32:31', 'Suds'),
(210, '1', '50', 44, 170, '2022-06-20 23:45:48', '2022-06-20 23:45:48', NULL),
(211, '26', '1.5', 44, 170, '2022-06-20 23:45:48', '2022-06-20 23:45:48', NULL),
(212, '27', '1.5', 44, 170, '2022-06-20 23:45:48', '2022-06-20 23:45:48', NULL),
(213, '1', '50', 44, 171, '2022-06-21 03:25:21', '2022-06-21 03:25:21', NULL),
(214, '26', '1.5', 44, 171, '2022-06-21 03:25:21', '2022-06-21 03:25:21', NULL),
(215, '27', '1.5', 44, 171, '2022-06-21 03:25:21', '2022-06-21 03:25:21', NULL),
(216, '1', '50', 44, 172, '2022-06-21 03:26:37', '2022-06-21 03:26:37', NULL),
(217, '26', '1.5', 44, 172, '2022-06-21 03:26:37', '2022-06-21 03:26:37', NULL),
(218, '27', '1.5', 44, 172, '2022-06-21 03:26:37', '2022-06-21 03:26:37', NULL),
(219, '4', '60', 22, 173, '2022-06-21 07:02:07', '2022-06-21 07:02:07', 'Bags'),
(220, '25', '5000', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Nos'),
(221, '26', '1.5', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Suds'),
(222, '27', '1.5', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Suds'),
(223, '4', '40', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Bags'),
(224, '92', '150', 31, 175, '2022-06-21 07:18:14', '2022-06-21 07:18:14', NULL),
(225, '130', '1', 26, 176, '2022-06-21 08:18:31', '2022-06-21 08:18:31', NULL),
(226, '26', '1.5', 22, 177, '2022-06-21 08:32:27', '2022-06-21 08:32:27', 'Suds'),
(227, '136', '20', 31, 178, '2022-06-21 09:44:49', '2022-06-21 09:44:49', '2\' width'),
(228, '135', '3', 31, 178, '2022-06-21 09:44:49', '2022-06-21 09:44:49', NULL),
(229, '133', '2', 31, 178, '2022-06-21 09:44:49', '2022-06-21 09:44:49', NULL),
(230, '104', '30', 31, 179, '2022-06-21 09:57:39', '2022-06-21 09:57:39', 'ထမ်းသွင်း'),
(231, '1', '50', 47, 180, '2022-06-21 10:04:35', '2022-06-21 10:04:35', '1'),
(232, '27', '1.3', 47, 181, '2022-06-21 10:14:47', '2022-06-21 10:14:47', '1'),
(233, '27', '1.3', 47, 182, '2022-06-21 10:15:39', '2022-06-21 10:15:39', '1'),
(234, '4', '20', 37, 183, '2022-06-21 10:18:32', '2022-06-21 10:18:32', '20'),
(235, '25', '1500', 37, 184, '2022-06-21 10:19:24', '2022-06-21 10:19:24', '1500'),
(236, '5', '1.8', 28, 185, '2022-06-21 15:54:51', '2022-06-21 15:54:51', NULL),
(237, '22', '4', 47, 186, '2022-06-22 03:19:07', '2022-06-22 03:19:07', NULL),
(238, '25', '1500', 47, 187, '2022-06-22 07:07:46', '2022-06-22 07:07:46', '1'),
(239, '26', '1.5', 22, 188, '2022-06-22 07:19:57', '2022-06-22 07:19:57', 'Suds'),
(240, '93', '100', 22, 189, '2022-06-22 07:28:19', '2022-06-22 07:28:19', 'Nos'),
(241, '8', '2', 47, 190, '2022-06-23 02:35:56', '2022-06-23 02:35:56', '20'),
(242, '4', '50', 26, 191, '2022-06-23 03:38:35', '2022-06-23 03:38:35', NULL),
(243, '34', '40', 25, 192, '2022-06-23 05:13:12', '2022-06-23 05:13:12', NULL),
(244, '139', '5', 25, 192, '2022-06-23 05:13:12', '2022-06-23 05:13:12', 'gal'),
(245, '141', '5', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'Dz'),
(246, '143', '1', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'DZ'),
(247, '144', '4', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'nos'),
(248, '145', '3', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'nos'),
(249, '146', '4', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'nos'),
(250, '147', '4', 25, 194, '2022-06-23 07:41:18', '2022-06-23 07:41:18', NULL),
(251, '151', '4', 25, 194, '2022-06-23 07:41:18', '2022-06-23 07:41:18', NULL),
(252, '7', '10', 37, 195, '2022-06-23 08:34:58', '2022-06-23 08:34:58', '10'),
(253, '10', '38', 37, 196, '2022-06-23 08:36:04', '2022-06-23 08:36:04', '38'),
(254, '17', '1.1', 37, 197, '2022-06-23 08:36:49', '2022-06-23 08:36:49', '1.1'),
(255, '26', '1.5', 26, 198, '2022-06-23 08:42:20', '2022-06-23 08:42:20', NULL),
(256, '107', '3', 31, 199, '2022-06-23 09:08:11', '2022-06-23 09:08:11', NULL),
(257, '8', '15', 31, 200, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL),
(258, '7', '80', 31, 200, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL),
(259, '5', '80', 31, 200, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL),
(260, '19', '112', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', '10ft'),
(261, '127', '1', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL),
(262, '123', '5', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL),
(263, '121', '2', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL),
(264, '23', '13', 44, 202, '2022-06-24 07:32:02', '2022-06-24 07:32:02', NULL),
(265, '116', '2', 47, 203, '2022-06-24 10:03:58', '2022-06-24 10:03:58', '1'),
(266, '27', '1', 22, 204, '2022-06-24 12:00:16', '2022-06-24 12:00:16', 'Suds');

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
-- Indexes for table `members_lists`
--
ALTER TABLE `members_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `approved_bies`
--
ALTER TABLE `approved_bies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `fixed_assets_purchases`
--
ALTER TABLE `fixed_assets_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members_lists`
--
ALTER TABLE `members_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `projects_users`
--
ALTER TABLE `projects_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `qs_team_check_passes`
--
ALTER TABLE `qs_team_check_passes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `received_by_engineers`
--
ALTER TABLE `received_by_engineers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `received_by_store_managers`
--
ALTER TABLE `received_by_store_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `request_infos`
--
ALTER TABLE `request_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `variable_accept_reject_statuses`
--
ALTER TABLE `variable_accept_reject_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `variable_actual_vouchers`
--
ALTER TABLE `variable_actual_vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `variable_assets`
--
ALTER TABLE `variable_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `variable_assets_sizes`
--
ALTER TABLE `variable_assets_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `variable_finance_payment_slips`
--
ALTER TABLE `variable_finance_payment_slips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `variable_logistics_team_checks`
--
ALTER TABLE `variable_logistics_team_checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `variable_logistics_team_sends`
--
ALTER TABLE `variable_logistics_team_sends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `variable_payments`
--
ALTER TABLE `variable_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `variable_qs_team_checks`
--
ALTER TABLE `variable_qs_team_checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `variable_received_by_engineers`
--
ALTER TABLE `variable_received_by_engineers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `variable_request_infos`
--
ALTER TABLE `variable_request_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `variable_request_items`
--
ALTER TABLE `variable_request_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
