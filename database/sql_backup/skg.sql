-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2022 at 08:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skg`
--

-- --------------------------------------------------------

--
-- Table structure for table `accept_reject_statuses`
--

CREATE TABLE `accept_reject_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `accept_reject_statuse` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(35, 19, 'accept', '2022-06-24', '2022-06-24 08:25:55', '2022-06-24 08:25:55', 24),
(36, 42, 'accept', '2022-07-02', '2022-07-02 07:02:02', '2022-07-02 07:02:02', 39),
(37, 10, 'accept', '2022-07-09', '2022-07-09 02:45:10', '2022-07-09 02:45:10', 38),
(38, 42, 'accept', '2022-07-16', '2022-07-16 02:58:03', '2022-07-16 02:58:03', 42);

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
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
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
(9, 'customers_log', 'created', 'App\\Models\\Customers', 53, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Aung Min Kyi\",\"site_location\":\"Kyauk Me\",\"phone\":\"09 5275701\",\"project_code\":\"NS_KM_00049\",\"address\":\"Kyauk Me\",\"created_at\":\"2022-06-15T07:20:54.000000Z\",\"updated_at\":\"2022-06-15T07:20:54.000000Z\"}}', '2022-06-15 06:50:54', '2022-06-15 06:50:54'),
(10, 'customers_log', 'created', 'App\\Models\\Customers', 54, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ko Kyaw Nyein Chan\",\"site_location\":\"No. 143, Hnin Pan Street (2), Snow Garden Housing, Thingangyun Township\",\"phone\":\"09 5017640\",\"project_code\":\"YGN_TGG_00052\",\"address\":\"No. 143, Hnin Pan Street (2), Snow Garden Housing, Thingangyun Township\",\"created_at\":\"2022-07-02T05:42:06.000000Z\",\"updated_at\":\"2022-07-02T05:42:06.000000Z\"}}', '2022-07-02 05:12:06', '2022-07-02 05:12:06'),
(11, 'customers_log', 'created', 'App\\Models\\Customers', 55, 'App\\User', 9, '{\"attributes\":{\"name\":\"Ba Ba Gyi\",\"site_location\":\"No. 58 (A), Thu Nandar Street (4) Ward, Thu Mingalar Housing, Thingangyun Township\",\"phone\":\"09 5123 651\",\"project_code\":\"YGN_TGG_00053\",\"address\":\"No. 58 (A), Thu Nandar Street (4) Ward, Thu Mingalar Housing, Thingangyun Township\",\"created_at\":\"2022-07-02T07:09:15.000000Z\",\"updated_at\":\"2022-07-02T07:09:15.000000Z\"}}', '2022-07-02 06:39:15', '2022-07-02 06:39:15'),
(12, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 1, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Cement ( 52.5 )\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"68\",\"category\":\"Construction\",\"created_at\":\"2022-04-29T10:26:36.000000Z\",\"updated_at\":\"2022-07-04T11:15:44.000000Z\"},\"old\":{\"item_name\":\"Cement ( 52.5 )\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"33\",\"category\":\"Construction\",\"created_at\":\"2022-04-29T10:26:36.000000Z\",\"updated_at\":\"2022-07-03T15:27:46.000000Z\"}}', '2022-07-04 10:45:44', '2022-07-04 10:45:44'),
(13, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 4, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Cement ( 42.5 )\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"69\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T03:27:58.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Cement ( 42.5 )\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"34\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T03:27:58.000000Z\",\"updated_at\":\"2022-07-03T15:28:06.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(14, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 5, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 10mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"70\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:01:02.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 10mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"35\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:01:02.000000Z\",\"updated_at\":\"2022-07-03T15:28:41.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(15, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 6, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 12mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"71\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:01:40.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 12mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"36\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:01:40.000000Z\",\"updated_at\":\"2022-07-03T15:28:52.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(16, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 7, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 16mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"72\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:02:05.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 16mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"37\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:02:05.000000Z\",\"updated_at\":\"2022-07-03T15:29:04.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(17, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 8, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 20mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"73\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:02:27.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 20mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"38\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:02:27.000000Z\",\"updated_at\":\"2022-07-03T15:29:14.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(18, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 9, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 25mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"74\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:02:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 25mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"39\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:02:43.000000Z\",\"updated_at\":\"2022-07-03T15:29:24.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(19, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 10, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 10mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"75\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:03:36.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 10mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"40\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:03:36.000000Z\",\"updated_at\":\"2022-07-03T15:29:34.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(20, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 11, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 12mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"76\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:04:04.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 12mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"41\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:04:04.000000Z\",\"updated_at\":\"2022-07-03T15:29:55.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(21, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 12, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 16mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"77\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:04:28.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 16mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"42\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:04:28.000000Z\",\"updated_at\":\"2022-07-03T15:30:14.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(22, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 13, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Deformed Bar 20mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"78\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:04:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Deformed Bar 20mm ( Local )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"43\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:04:43.000000Z\",\"updated_at\":\"2022-07-03T15:30:54.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(23, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 15, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Coil 6.5mm ( Original )\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"6.5mm\",\"display_order\":\"79\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:05:30.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Coil 6.5mm ( Original )\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"6.5mm\",\"display_order\":\"44\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:05:30.000000Z\",\"updated_at\":\"2022-07-01T03:47:25.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(24, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 16, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Coil 8mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"80\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:05:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Coil 8mm ( Original )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"45\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:05:49.000000Z\",\"updated_at\":\"2022-07-03T15:31:11.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(25, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 17, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Jungle Wood 3\\\"x2\\\" ( 10\' Above )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"81\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:06:47.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Jungle Wood 3\\\"x2\\\" ( 10\' Above )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"46\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:06:47.000000Z\",\"updated_at\":\"2022-07-03T15:31:56.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(26, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 18, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Jungle Wood 3\\\"x2\\\" ( 10\' Below )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"82\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:07:16.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Jungle Wood 3\\\"x2\\\" ( 10\' Below )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"47\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:07:16.000000Z\",\"updated_at\":\"2022-07-03T15:32:09.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(27, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 19, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Jungle Wood 3\\\"x1\\\" ( 10\' Above )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"83\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:08:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Jungle Wood 3\\\"x1\\\" ( 10\' Above )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"48\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:08:12.000000Z\",\"updated_at\":\"2022-07-03T15:32:21.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(28, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 20, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Jungle Wood 3\\\"x1\\\" ( 10\' Below )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"84\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:08:48.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Jungle Wood 3\\\"x1\\\" ( 10\' Below )\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"49\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:08:48.000000Z\",\"updated_at\":\"2022-07-03T15:32:30.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(29, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 22, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Plywood 9mm ( 8\'x4\' Film Coated )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"85\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:12:03.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Plywood 9mm ( 8\'x4\' Film Coated )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"51\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:12:03.000000Z\",\"updated_at\":\"2022-07-03T15:33:22.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(30, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 24, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Plywood 9mm ( 8\'x4\' Inkanyin )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"86\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:12:56.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Plywood 9mm ( 8\'x4\' Inkanyin )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"53\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:12:56.000000Z\",\"updated_at\":\"2022-07-03T15:33:35.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(31, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 25, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Brick ( Normal )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"87\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:48:41.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Brick ( Normal )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"54\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:48:41.000000Z\",\"updated_at\":\"2022-07-03T15:33:56.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(32, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 26, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"River Sand\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"88\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:48:59.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"River Sand\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"55\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:48:59.000000Z\",\"updated_at\":\"2022-07-03T15:34:25.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(33, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 27, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"River Shingle\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"91\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:49:13.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"River Shingle\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"58\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:49:13.000000Z\",\"updated_at\":\"2022-07-03T15:34:56.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(34, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 28, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Concrete Block 9\\\"x9\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"93\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:49:57.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Concrete Block 9\\\"x9\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"60\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:49:57.000000Z\",\"updated_at\":\"2022-07-03T15:35:27.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(35, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 29, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Concrete Block 12\\\" x12\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"94\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:50:19.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Concrete Block 12\\\" x12\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"61\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:50:19.000000Z\",\"updated_at\":\"2022-07-03T15:35:43.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(36, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 30, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Glass Block 8\\\"x8\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"95\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:51:21.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Glass Block 8\\\"x8\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"62\",\"category\":\"Construction\",\"created_at\":\"2022-04-30T04:51:21.000000Z\",\"updated_at\":\"2022-07-03T16:46:46.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(37, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 31, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Red Oxide ( Master )\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"123\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:51:53.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Red Oxide ( Master )\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"27\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:51:53.000000Z\",\"updated_at\":\"2022-07-03T15:24:38.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(38, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 32, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Red Oxide ( Uni Prime )\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"124\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:52:20.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Red Oxide ( Uni Prime )\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"28\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:52:20.000000Z\",\"updated_at\":\"2022-07-03T15:24:59.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(39, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 33, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Turpentine\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"125\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:52:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Turpentine\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"29\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:52:43.000000Z\",\"updated_at\":\"2022-07-03T15:25:10.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(40, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 34, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Smooth Putty\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"121\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:53:01.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Smooth Putty\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"25\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:53:01.000000Z\",\"updated_at\":\"2022-07-03T15:24:02.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(41, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 35, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Thinplast Putty\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"120\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:55:16.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Thinplast Putty\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"24\",\"category\":\"Decoration\",\"created_at\":\"2022-04-30T04:55:16.000000Z\",\"updated_at\":\"2022-07-03T15:23:52.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(42, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 36, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1.5mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"127\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:07:57.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1.5mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"63\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:07:57.000000Z\",\"updated_at\":\"2022-07-03T16:51:43.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(43, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 37, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2.5mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"128\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:08:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2.5mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"64\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:08:12.000000Z\",\"updated_at\":\"2022-07-03T16:51:51.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(44, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 38, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"129\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:08:31.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"65\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:08:31.000000Z\",\"updated_at\":\"2022-07-03T16:51:59.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(45, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 39, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"6mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"130\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:08:44.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"6mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"66\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:08:44.000000Z\",\"updated_at\":\"2022-07-03T16:52:08.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(46, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 40, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"10mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"131\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:09:11.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"10mm2 PVC Wire\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"67\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:09:11.000000Z\",\"updated_at\":\"2022-07-03T16:52:21.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(47, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 41, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"132\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:09:33.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"68\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:09:33.000000Z\",\"updated_at\":\"2022-07-03T16:52:33.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(48, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 42, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 Gang 2 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"133\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:10:07.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 Gang 2 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"69\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:10:07.000000Z\",\"updated_at\":\"2022-07-03T16:52:39.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(49, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 43, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"134\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:11:09.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"70\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:11:09.000000Z\",\"updated_at\":\"2022-07-03T16:52:47.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(50, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 44, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2 Gang 2 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"135\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:11:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2 Gang 2 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"71\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:11:25.000000Z\",\"updated_at\":\"2022-07-03T16:52:57.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(51, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 45, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"136\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:11:53.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"72\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:11:53.000000Z\",\"updated_at\":\"2022-07-03T16:53:05.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(52, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 46, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"137\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:12:08.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"73\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:12:08.000000Z\",\"updated_at\":\"2022-07-03T16:53:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(53, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 47, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"5 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"138\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:12:21.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"5 Gang 1 Way Switch\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"74\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:12:21.000000Z\",\"updated_at\":\"2022-07-03T16:55:49.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(54, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 48, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\\" PVC Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"139\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:37:06.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\\" PVC Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"75\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:37:06.000000Z\",\"updated_at\":\"2022-07-03T16:55:58.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(55, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 49, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/2\\\" PVC Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"140\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:37:56.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 1\\/2\\\" PVC Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"76\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:37:56.000000Z\",\"updated_at\":\"2022-07-03T16:56:17.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(56, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 50, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2\\\" PVC Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"141\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:38:16.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2\\\" PVC Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"77\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:38:16.000000Z\",\"updated_at\":\"2022-07-03T16:56:25.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(57, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 51, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Tape\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"142\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:42:34.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Tape\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"78\",\"category\":\"Electrical\",\"created_at\":\"2022-04-30T06:42:34.000000Z\",\"updated_at\":\"2022-07-03T16:56:58.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(58, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 52, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\/2\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"164\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:14.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\/2\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"79\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:14.000000Z\",\"updated_at\":\"2022-07-03T16:57:32.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(59, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 53, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\/4\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"165\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:29.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3\\/4\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"80\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:29.000000Z\",\"updated_at\":\"2022-07-03T16:57:41.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(60, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 54, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"166\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:42.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"81\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:42.000000Z\",\"updated_at\":\"2022-07-03T16:57:48.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(61, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 55, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/4\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"167\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:59.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 1\\/4\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"82\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:43:59.000000Z\",\"updated_at\":\"2022-07-03T16:57:55.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(62, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 56, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/2\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"168\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:44:21.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 1\\/2\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"83\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:44:21.000000Z\",\"updated_at\":\"2022-07-03T16:58:02.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(63, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 57, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"169\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:44:35.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"84\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:44:35.000000Z\",\"updated_at\":\"2022-07-03T16:58:10.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(64, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 58, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"170\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:44:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"85\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:44:49.000000Z\",\"updated_at\":\"2022-07-03T16:58:19.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(65, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 59, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"171\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:45:02.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"86\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:45:02.000000Z\",\"updated_at\":\"2022-07-03T16:58:26.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(66, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 60, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\/2\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"172\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:57:16.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\/2\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"87\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:57:16.000000Z\",\"updated_at\":\"2022-07-03T16:59:00.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(67, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 61, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\/4\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"173\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:57:39.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3\\/4\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"88\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:57:39.000000Z\",\"updated_at\":\"2022-07-03T16:59:07.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(68, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 62, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"174\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:58:06.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"89\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:58:06.000000Z\",\"updated_at\":\"2022-07-03T16:59:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(69, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 63, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/4\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"175\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:58:24.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 1\\/4\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"90\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:58:24.000000Z\",\"updated_at\":\"2022-07-03T16:59:21.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(70, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 64, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/2\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"176\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:58:24.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1 1\\/2\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"91\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T06:58:24.000000Z\",\"updated_at\":\"2022-07-03T16:59:28.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(71, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 65, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"177\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T07:02:50.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"92\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T07:02:50.000000Z\",\"updated_at\":\"2022-07-03T16:59:34.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(72, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 66, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"178\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T07:03:03.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"93\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T07:03:03.000000Z\",\"updated_at\":\"2022-07-03T16:59:43.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(73, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 67, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"179\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T07:03:15.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"94\",\"category\":\"Plumbing\",\"created_at\":\"2022-04-30T07:03:15.000000Z\",\"updated_at\":\"2022-07-03T16:59:51.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(74, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 68, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\\"x1\\\"\",\"display_order\":\"96\",\"category\":\"Construction\",\"created_at\":\"2022-05-10T15:45:08.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\\"x1\\\"\",\"display_order\":\"95\",\"category\":\"Construction\",\"created_at\":\"2022-05-10T15:45:08.000000Z\",\"updated_at\":\"2022-07-04T03:52:17.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(75, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 69, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"2\",\"category\":null,\"created_at\":\"2022-05-10T15:46:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"96\",\"category\":null,\"created_at\":\"2022-05-10T15:46:25.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(76, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 70, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"1\",\"category\":null,\"created_at\":\"2022-05-10T15:46:50.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"97\",\"category\":null,\"created_at\":\"2022-05-10T15:46:50.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(77, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 71, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"3\",\"category\":null,\"created_at\":\"2022-05-10T15:47:20.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"98\",\"category\":null,\"created_at\":\"2022-05-10T15:47:20.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(78, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 72, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x4\\\"\",\"display_order\":\"4\",\"category\":null,\"created_at\":\"2022-05-10T15:47:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x4\\\"\",\"display_order\":\"99\",\"category\":null,\"created_at\":\"2022-05-10T15:47:37.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(79, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 73, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x1\\\"\",\"display_order\":\"5\",\"category\":null,\"created_at\":\"2022-05-10T15:48:48.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x1\\\"\",\"display_order\":\"100\",\"category\":null,\"created_at\":\"2022-05-10T15:48:48.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(80, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 74, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x1\\u00bd\\\"\",\"display_order\":\"6\",\"category\":null,\"created_at\":\"2022-05-10T15:49:18.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x1\\u00bd\\\"\",\"display_order\":\"101\",\"category\":null,\"created_at\":\"2022-05-10T15:49:18.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(81, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 75, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x2\\\"\",\"display_order\":\"7\",\"category\":null,\"created_at\":\"2022-05-10T15:49:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x2\\\"\",\"display_order\":\"102\",\"category\":null,\"created_at\":\"2022-05-10T15:49:43.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(82, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 76, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\\"x1\\\"\",\"display_order\":\"8\",\"category\":null,\"created_at\":\"2022-05-10T15:50:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\\"x1\\\"\",\"display_order\":\"103\",\"category\":null,\"created_at\":\"2022-05-10T15:50:43.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(83, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 77, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"9\",\"category\":null,\"created_at\":\"2022-05-10T15:51:14.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"104\",\"category\":null,\"created_at\":\"2022-05-10T15:51:14.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(84, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 78, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"10\",\"category\":null,\"created_at\":\"2022-05-10T15:51:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"105\",\"category\":null,\"created_at\":\"2022-05-10T15:51:37.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(85, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 79, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"11\",\"category\":null,\"created_at\":\"2022-05-10T15:52:05.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"106\",\"category\":null,\"created_at\":\"2022-05-10T15:52:05.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(86, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 80, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x4\\\"\",\"display_order\":\"12\",\"category\":null,\"created_at\":\"2022-05-10T15:52:21.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x4\\\"\",\"display_order\":\"107\",\"category\":null,\"created_at\":\"2022-05-10T15:52:21.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(87, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 81, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x1\\\"\",\"display_order\":\"13\",\"category\":null,\"created_at\":\"2022-05-10T15:52:38.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x1\\\"\",\"display_order\":\"108\",\"category\":null,\"created_at\":\"2022-05-10T15:52:38.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(88, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 82, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x1\\u00bd\\\"\",\"display_order\":\"14\",\"category\":null,\"created_at\":\"2022-05-10T15:53:04.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x1\\u00bd\\\"\",\"display_order\":\"109\",\"category\":null,\"created_at\":\"2022-05-10T15:53:04.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(89, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 83, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x2\\\"\",\"display_order\":\"15\",\"category\":null,\"created_at\":\"2022-05-10T15:53:24.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x2\\\"\",\"display_order\":\"110\",\"category\":null,\"created_at\":\"2022-05-10T15:53:24.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(90, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 84, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\\"x1\\\"\",\"display_order\":\"16\",\"category\":null,\"created_at\":\"2022-05-10T15:54:39.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\\"x1\\\"\",\"display_order\":\"111\",\"category\":null,\"created_at\":\"2022-05-10T15:54:39.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(91, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 85, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bc\\\"x1\\u00bc\\\"\",\"display_order\":\"17\",\"category\":null,\"created_at\":\"2022-05-10T15:55:22.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bc\\\"x1\\u00bc\\\"\",\"display_order\":\"112\",\"category\":null,\"created_at\":\"2022-05-10T15:55:22.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(92, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 86, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"18\",\"category\":null,\"created_at\":\"2022-05-10T15:55:57.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"113\",\"category\":null,\"created_at\":\"2022-05-10T15:55:57.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(93, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 87, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"19\",\"category\":null,\"created_at\":\"2022-05-10T15:56:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"114\",\"category\":null,\"created_at\":\"2022-05-10T15:56:12.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(94, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 88, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"20\",\"category\":null,\"created_at\":\"2022-05-10T15:56:28.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"115\",\"category\":null,\"created_at\":\"2022-05-10T15:56:28.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(95, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 89, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x4\\\"\",\"display_order\":\"21\",\"category\":null,\"created_at\":\"2022-05-10T15:56:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"MS Angle Iron\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\\\"x4\\\"\",\"display_order\":\"116\",\"category\":null,\"created_at\":\"2022-05-10T15:56:43.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(96, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 90, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"10\'Above\",\"display_order\":\"22\",\"category\":null,\"created_at\":\"2022-05-10T16:49:11.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"10\'Above\",\"display_order\":\"117\",\"category\":null,\"created_at\":\"2022-05-10T16:49:11.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(97, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 91, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"15\'Above\",\"display_order\":\"23\",\"category\":null,\"created_at\":\"2022-05-10T16:49:21.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"15\'Above\",\"display_order\":\"118\",\"category\":null,\"created_at\":\"2022-05-10T16:49:21.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(98, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 92, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"20\'Above\",\"display_order\":\"24\",\"category\":null,\"created_at\":\"2022-05-10T16:52:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"20\'Above\",\"display_order\":\"119\",\"category\":null,\"created_at\":\"2022-05-10T16:52:37.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(99, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 93, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"25\'Above\",\"display_order\":\"25\",\"category\":null,\"created_at\":\"2022-05-10T16:53:00.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"25\'Above\",\"display_order\":\"120\",\"category\":null,\"created_at\":\"2022-05-10T16:53:00.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(100, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 94, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Coir Yarn\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"26\",\"category\":null,\"created_at\":\"2022-05-10T16:54:32.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Coir Yarn\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"121\",\"category\":null,\"created_at\":\"2022-05-10T16:54:32.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(101, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 95, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bakau Pile (Myaw)\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"10\'Above\",\"display_order\":\"27\",\"category\":null,\"created_at\":\"2022-05-10T16:56:26.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bakau Pile (Myaw)\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"10\'Above\",\"display_order\":\"122\",\"category\":null,\"created_at\":\"2022-05-10T16:56:26.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(102, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 96, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bakau Pile (Myaw)\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"13\'Above\",\"display_order\":\"28\",\"category\":null,\"created_at\":\"2022-05-10T16:56:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bakau Pile (Myaw)\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"13\'Above\",\"display_order\":\"123\",\"category\":null,\"created_at\":\"2022-05-10T16:56:43.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(103, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 97, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\'x2\'\",\"display_order\":\"29\",\"category\":null,\"created_at\":\"2022-05-10T16:57:38.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"4\'x2\'\",\"display_order\":\"124\",\"category\":null,\"created_at\":\"2022-05-10T16:57:38.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(104, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 98, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"6\'x3\'\",\"display_order\":\"30\",\"category\":null,\"created_at\":\"2022-05-10T16:58:33.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"6\'x3\'\",\"display_order\":\"125\",\"category\":null,\"created_at\":\"2022-05-10T16:58:33.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(105, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 99, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"8\'x3\'\",\"display_order\":\"31\",\"category\":null,\"created_at\":\"2022-05-10T16:58:52.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"8\'x3\'\",\"display_order\":\"126\",\"category\":null,\"created_at\":\"2022-05-10T16:58:52.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(106, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 100, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"10\'x3\'\",\"display_order\":\"32\",\"category\":null,\"created_at\":\"2022-05-10T16:59:09.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bamboo Mat (Wagat)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"10\'x3\'\",\"display_order\":\"127\",\"category\":null,\"created_at\":\"2022-05-10T16:59:09.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(107, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 101, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"PKD Chowket 5\\\"x2\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"33\",\"category\":null,\"created_at\":\"2022-06-03T03:16:51.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"PKD Chowket 5\\\"x2\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"128\",\"category\":null,\"created_at\":\"2022-06-03T03:16:51.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(108, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 102, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"PKD Chowket 6\\\"x2\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"34\",\"category\":null,\"created_at\":\"2022-06-03T03:17:46.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"PKD Chowket 6\\\"x2\\\"\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"129\",\"category\":null,\"created_at\":\"2022-06-03T03:17:46.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(109, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 103, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Door Leaf\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"35\",\"category\":null,\"created_at\":\"2022-06-03T03:18:32.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Door Leaf\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"130\",\"category\":null,\"created_at\":\"2022-06-03T03:18:32.000000Z\",\"updated_at\":\"2022-06-23T08:06:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(110, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 104, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Silt Sand\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"90\",\"category\":\"Construction\",\"created_at\":\"2022-06-04T04:41:55.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Silt Sand\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"57\",\"category\":\"Construction\",\"created_at\":\"2022-06-04T04:41:55.000000Z\",\"updated_at\":\"2022-07-03T15:34:43.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(111, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 105, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Concrete Cover Block\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"20\\/25\",\"display_order\":\"36\",\"category\":null,\"created_at\":\"2022-06-04T04:44:23.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Concrete Cover Block\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"20\\/25\",\"display_order\":\"131\",\"category\":null,\"created_at\":\"2022-06-04T04:44:23.000000Z\",\"updated_at\":\"2022-06-23T08:03:19.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(112, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 106, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Concrete Cover Block\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"20\\/25\\/38\",\"display_order\":\"37\",\"category\":null,\"created_at\":\"2022-06-04T04:47:58.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Concrete Cover Block\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"20\\/25\\/38\",\"display_order\":\"132\",\"category\":null,\"created_at\":\"2022-06-04T04:47:58.000000Z\",\"updated_at\":\"2022-06-23T08:03:19.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(113, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 107, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Rough Sand\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"89\",\"category\":\"Construction\",\"created_at\":\"2022-06-04T04:54:10.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Rough Sand\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"56\",\"category\":\"Construction\",\"created_at\":\"2022-06-04T04:54:10.000000Z\",\"updated_at\":\"2022-07-03T15:34:34.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(114, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 108, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Floor Tile ( 1\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"38\",\"category\":null,\"created_at\":\"2022-06-04T05:17:40.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Floor Tile ( 1\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"133\",\"category\":null,\"created_at\":\"2022-06-04T05:17:40.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(115, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 109, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Floor Tile ( 2\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"39\",\"category\":null,\"created_at\":\"2022-06-04T05:18:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Floor Tile ( 2\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"134\",\"category\":null,\"created_at\":\"2022-06-04T05:18:12.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(116, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 110, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Floor Tile ( 2\'x2\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"40\",\"category\":null,\"created_at\":\"2022-06-04T05:18:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Floor Tile ( 2\'x2\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"135\",\"category\":null,\"created_at\":\"2022-06-04T05:18:49.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(117, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 111, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wall Tile ( 1\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"41\",\"category\":null,\"created_at\":\"2022-06-04T05:19:17.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wall Tile ( 1\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"136\",\"category\":null,\"created_at\":\"2022-06-04T05:19:17.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(118, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 112, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wall Tile ( 2\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"42\",\"category\":null,\"created_at\":\"2022-06-04T05:19:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wall Tile ( 2\'x1\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"137\",\"category\":null,\"created_at\":\"2022-06-04T05:19:37.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(119, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 113, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wall Tile ( 2\'x2\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"43\",\"category\":null,\"created_at\":\"2022-06-04T05:28:31.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wall Tile ( 2\'x2\' )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"138\",\"category\":null,\"created_at\":\"2022-06-04T05:28:31.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(120, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 114, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Decking Sheet\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"44\",\"category\":null,\"created_at\":\"2022-06-04T05:34:51.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Decking Sheet\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"139\",\"category\":null,\"created_at\":\"2022-06-04T05:34:51.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(121, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 115, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Hardcore 6\\\" x 9\\\"\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"45\",\"category\":null,\"created_at\":\"2022-06-07T05:57:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Hardcore 6\\\" x 9\\\"\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"140\",\"category\":null,\"created_at\":\"2022-06-07T05:57:43.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(122, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 116, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Hardcore 4\\\" x 6\\\"\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"46\",\"category\":null,\"created_at\":\"2022-06-07T05:58:08.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Hardcore 4\\\" x 6\\\"\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"141\",\"category\":null,\"created_at\":\"2022-06-07T05:58:08.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(123, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 117, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Tarpaulin ( 12\' )\",\"unit\":\"Roll\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"161\",\"category\":\"Other\",\"created_at\":\"2022-06-08T10:01:47.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Tarpaulin ( 12\' )\",\"unit\":\"Roll\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"142\",\"category\":\"Other\",\"created_at\":\"2022-06-08T10:01:47.000000Z\",\"updated_at\":\"2022-07-03T17:01:12.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(124, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 118, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4\\\"x4\\\" PKD Wood\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"47\",\"category\":null,\"created_at\":\"2022-06-08T10:06:41.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4\\\"x4\\\" PKD Wood\",\"unit\":\"Ton\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"143\",\"category\":null,\"created_at\":\"2022-06-08T10:06:41.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(125, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 119, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 1\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"48\",\"category\":null,\"created_at\":\"2022-06-11T03:16:58.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 1\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"144\",\"category\":null,\"created_at\":\"2022-06-11T03:16:58.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(126, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 120, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 1\\u00bc\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"49\",\"category\":null,\"created_at\":\"2022-06-11T03:25:16.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 1\\u00bc\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"145\",\"category\":null,\"created_at\":\"2022-06-11T03:25:16.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(127, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 121, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 1\\u00bd\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"50\",\"category\":null,\"created_at\":\"2022-06-11T03:25:41.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 1\\u00bd\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"146\",\"category\":null,\"created_at\":\"2022-06-11T03:25:41.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(128, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 122, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 2\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"51\",\"category\":null,\"created_at\":\"2022-06-11T03:26:04.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 2\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"147\",\"category\":null,\"created_at\":\"2022-06-11T03:26:04.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(129, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 123, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 2\\u00bd\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"52\",\"category\":null,\"created_at\":\"2022-06-11T03:27:19.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 2\\u00bd\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"148\",\"category\":null,\"created_at\":\"2022-06-11T03:27:19.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(130, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 124, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 3\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"53\",\"category\":null,\"created_at\":\"2022-06-11T03:27:33.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 3\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"149\",\"category\":null,\"created_at\":\"2022-06-11T03:27:33.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(131, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 125, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Wire Nail 4\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"54\",\"category\":null,\"created_at\":\"2022-06-11T03:27:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Wire Nail 4\\\"\",\"unit\":\"Viss\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"150\",\"category\":null,\"created_at\":\"2022-06-11T03:27:49.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(132, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 126, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Binding Wire 16G\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"55\",\"category\":null,\"created_at\":\"2022-06-11T03:30:10.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Binding Wire 16G\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"151\",\"category\":null,\"created_at\":\"2022-06-11T03:30:10.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(133, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 127, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Binding Wire 18G\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"56\",\"category\":null,\"created_at\":\"2022-06-11T03:30:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Binding Wire 18G\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"152\",\"category\":null,\"created_at\":\"2022-06-11T03:30:25.000000Z\",\"updated_at\":\"2022-06-23T08:06:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(134, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 128, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Bonding Agent\",\"unit\":\"Liter\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"67\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T07:19:13.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Bonding Agent\",\"unit\":\"Liter\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"32\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T07:19:13.000000Z\",\"updated_at\":\"2022-07-03T15:27:26.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(135, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 129, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Grouting Cement\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"65\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T07:19:38.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Grouting Cement\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"30\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T07:19:38.000000Z\",\"updated_at\":\"2022-07-03T15:25:53.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(136, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 130, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Epoxy Set ( 1Kg )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"66\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T07:20:10.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Epoxy Set ( 1Kg )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"31\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T07:20:10.000000Z\",\"updated_at\":\"2022-07-03T15:26:51.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(137, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 131, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Topping  Aggregate\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"92\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T08:11:21.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Topping  Aggregate\",\"unit\":\"Sud\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"59\",\"category\":\"Construction\",\"created_at\":\"2022-06-14T08:11:21.000000Z\",\"updated_at\":\"2022-07-03T15:35:06.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(138, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 132, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4 Angle Roofing Sheet\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"60\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T08:40:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4 Angle Roofing Sheet\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"1\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T08:40:49.000000Z\",\"updated_at\":\"2022-07-03T03:07:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(139, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 133, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Ridge Cover\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\'Width\",\"display_order\":\"61\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T08:42:00.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Ridge Cover\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\'Width\",\"display_order\":\"2\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T08:42:00.000000Z\",\"updated_at\":\"2022-07-03T03:07:27.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(140, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 134, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Ridge Cover\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\'Width\",\"display_order\":\"62\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T08:43:20.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Ridge Cover\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\'Width\",\"display_order\":\"3\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T08:43:20.000000Z\",\"updated_at\":\"2022-07-03T03:06:50.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(141, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 135, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Smart Wood Board\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"63\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T10:08:52.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Smart Wood Board\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"4\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T10:08:52.000000Z\",\"updated_at\":\"2022-07-03T03:07:37.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(142, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 136, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Plain Sheet\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"64\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T10:12:44.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Plain Sheet\",\"unit\":\"Rft\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"5\",\"category\":\"Construction\",\"created_at\":\"2022-06-21T10:12:44.000000Z\",\"updated_at\":\"2022-07-03T03:07:50.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(143, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 137, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Smart Putty\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"122\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:49:20.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Smart Putty\",\"unit\":\"Bag\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"26\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:49:20.000000Z\",\"updated_at\":\"2022-07-03T15:24:11.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(144, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 139, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"UPG Orient Sealer ( 18 Lt )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"114\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:50:41.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"UPG Orient Sealer ( 18 Lt )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"18\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:50:41.000000Z\",\"updated_at\":\"2022-07-03T03:10:49.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(145, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 140, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"UPG Orient Sealer ( 7 Lt )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"115\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:51:13.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"UPG Orient Sealer ( 7 Lt )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"19\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:51:13.000000Z\",\"updated_at\":\"2022-07-03T03:11:12.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(146, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 141, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"No.220 Abrasive Paper\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"104\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:52:57.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"No.220 Abrasive Paper\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"8\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:52:57.000000Z\",\"updated_at\":\"2022-07-03T03:08:30.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(147, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 142, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"No.8 Abrasive Paper\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"102\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:53:23.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"No.8 Abrasive Paper\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"6\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:53:23.000000Z\",\"updated_at\":\"2022-07-03T03:08:05.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(148, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 143, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"No.40 Abrasive Paper\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"103\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:53:34.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"No.40 Abrasive Paper\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"7\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:53:34.000000Z\",\"updated_at\":\"2022-07-03T03:08:18.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(149, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 144, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Putty Plate\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"105\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:54:45.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Putty Plate\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"9\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:54:45.000000Z\",\"updated_at\":\"2022-07-03T03:08:42.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(150, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 145, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Handle for Abrasive Paper\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"106\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:56:03.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Handle for Abrasive Paper\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"10\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:56:03.000000Z\",\"updated_at\":\"2022-07-03T03:08:53.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(151, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 146, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Handle for Polish\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"107\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:56:30.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Handle for Polish\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"11\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T04:56:30.000000Z\",\"updated_at\":\"2022-07-03T03:09:04.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(152, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 147, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"10\\\" Roller\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"108\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:52:43.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"10\\\" Roller\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"12\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:52:43.000000Z\",\"updated_at\":\"2022-07-03T03:09:20.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(153, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 148, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"7\\\" Roller\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"109\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:52:55.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"7\\\" Roller\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"13\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:52:55.000000Z\",\"updated_at\":\"2022-07-03T03:09:32.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(154, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 149, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4\\\" Roller\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"110\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:53:06.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4\\\" Roller\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"14\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:53:06.000000Z\",\"updated_at\":\"2022-07-03T03:09:44.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(155, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 150, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2\\\" Paint Brush\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"111\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:53:28.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2\\\" Paint Brush\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"15\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:53:28.000000Z\",\"updated_at\":\"2022-07-03T03:10:00.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(156, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 151, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\\" Paint Brush\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"112\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:54:22.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3\\\" Paint Brush\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"16\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:54:22.000000Z\",\"updated_at\":\"2022-07-03T03:10:21.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(157, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 152, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"4\\\" Paint Brush\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"113\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:54:33.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"4\\\" Paint Brush\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"17\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:54:33.000000Z\",\"updated_at\":\"2022-07-03T03:10:39.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(158, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 153, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Emulsion Paint (Exterior) 18Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"116\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:58:58.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Emulsion Paint (Exterior) 18Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"20\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:58:58.000000Z\",\"updated_at\":\"2022-07-03T03:11:24.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(159, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 154, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Emulsion Paint (Interior) 18Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"117\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:59:26.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Emulsion Paint (Interior) 18Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"21\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:59:26.000000Z\",\"updated_at\":\"2022-07-03T03:11:36.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(160, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 155, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Emulsion Paint (Exterior) 7Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"118\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:59:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Emulsion Paint (Exterior) 7Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"22\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:59:37.000000Z\",\"updated_at\":\"2022-07-03T03:11:49.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(161, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 156, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Emulsion Paint (Interior) 7Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"119\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:59:51.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Emulsion Paint (Interior) 7Lt\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"23\",\"category\":\"Decoration\",\"created_at\":\"2022-06-23T07:59:51.000000Z\",\"updated_at\":\"2022-07-03T15:23:43.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(162, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 157, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"C Channel 13\'\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"97\",\"category\":\"Decoration\",\"created_at\":\"2022-06-27T04:01:10.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"C Channel 13\'\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Decoration\",\"created_at\":\"2022-06-27T04:01:10.000000Z\",\"updated_at\":\"2022-06-27T04:01:10.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(163, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 158, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"L Bar 8\'\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"98\",\"category\":\"Decoration\",\"created_at\":\"2022-06-27T04:01:33.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"L Bar 8\'\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Decoration\",\"created_at\":\"2022-06-27T04:01:33.000000Z\",\"updated_at\":\"2022-06-27T04:01:33.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(164, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 159, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Gypsum Board 9mm ( Normal )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"99\",\"category\":\"Decoration\",\"created_at\":\"2022-06-27T04:03:35.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Gypsum Board 9mm ( Normal )\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Decoration\",\"created_at\":\"2022-06-27T04:03:35.000000Z\",\"updated_at\":\"2022-06-29T09:51:55.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(165, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 160, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\/4\\\" GI Wall Plug ( Outer Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"143\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:04:24.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\/4\\\" GI Wall Plug ( Outer Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:04:24.000000Z\",\"updated_at\":\"2022-06-27T04:04:24.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(166, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 161, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\\" Black Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"144\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:04:42.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\\" Black Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:04:42.000000Z\",\"updated_at\":\"2022-07-03T17:04:42.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(167, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 162, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"M7 PVC Wall Plug\",\"unit\":\"Dz\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"145\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:05:06.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"M7 PVC Wall Plug\",\"unit\":\"Dz\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:05:06.000000Z\",\"updated_at\":\"2022-07-03T17:07:04.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(168, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 163, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\/4\\\" Concrete Nail\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"146\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:05:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"3\\/4\\\" Concrete Nail\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-06-27T04:05:37.000000Z\",\"updated_at\":\"2022-06-27T04:05:37.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(169, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 164, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Gypsum Board 9mm ( Moisture)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"100\",\"category\":\"Decoration\",\"created_at\":\"2022-06-29T09:52:52.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Gypsum Board 9mm ( Moisture)\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Decoration\",\"created_at\":\"2022-06-29T09:52:52.000000Z\",\"updated_at\":\"2022-06-29T09:52:52.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(170, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 165, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"X Met\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"147\",\"category\":\"Other\",\"created_at\":\"2022-07-01T05:05:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"X Met\",\"unit\":\"Coil\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-01T05:05:12.000000Z\",\"updated_at\":\"2022-07-01T05:05:12.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(171, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 166, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"GI Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"148\",\"category\":\"Other\",\"created_at\":\"2022-07-01T05:07:22.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"GI Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-01T05:07:22.000000Z\",\"updated_at\":\"2022-07-01T05:07:22.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(172, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 167, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Pipe Clip ( Swivel Coupler )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"149\",\"category\":\"Other\",\"created_at\":\"2022-07-01T05:07:42.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Pipe Clip ( Swivel Coupler )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-01T05:07:42.000000Z\",\"updated_at\":\"2022-07-03T16:48:09.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(173, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 168, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Plastic Sheet\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"57\",\"category\":\"Construction\",\"created_at\":\"2022-07-03T02:59:17.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Plastic Sheet\",\"unit\":\"Sht\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Construction\",\"created_at\":\"2022-07-03T02:59:17.000000Z\",\"updated_at\":\"2022-07-03T02:59:17.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(174, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 169, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Thinner\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"101\",\"category\":\"Decoration\",\"created_at\":\"2022-07-03T15:25:37.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Thinner\",\"unit\":\"Gal\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Decoration\",\"created_at\":\"2022-07-03T15:25:37.000000Z\",\"updated_at\":\"2022-07-03T15:25:37.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(175, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 170, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Epoxy Set ( 2Kg )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"58\",\"category\":\"Construction\",\"created_at\":\"2022-07-03T15:27:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Epoxy Set ( 2Kg )\",\"unit\":\"Tin\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Construction\",\"created_at\":\"2022-07-03T15:27:12.000000Z\",\"updated_at\":\"2022-07-03T15:27:12.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(176, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 171, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Brick ( Pressure )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"59\",\"category\":\"Construction\",\"created_at\":\"2022-07-03T15:34:13.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"Brick ( Pressure )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Construction\",\"created_at\":\"2022-07-03T15:34:13.000000Z\",\"updated_at\":\"2022-07-03T15:34:13.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(177, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 172, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2\\\"x2\\\" Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"126\",\"category\":\"Electrical\",\"created_at\":\"2022-07-03T16:56:50.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"2\\\"x2\\\" Trunking\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Electrical\",\"created_at\":\"2022-07-03T16:56:50.000000Z\",\"updated_at\":\"2022-07-03T16:56:50.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(178, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 173, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"6\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"162\",\"category\":\"Plumbing\",\"created_at\":\"2022-07-03T16:58:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"6\\\" PVC Pipe ( Class 8.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Plumbing\",\"created_at\":\"2022-07-03T16:58:49.000000Z\",\"updated_at\":\"2022-07-03T16:58:49.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(179, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 174, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"6\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"163\",\"category\":\"Plumbing\",\"created_at\":\"2022-07-03T17:00:12.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"6\\\" PVC Pipe ( Class 13.5 )\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Plumbing\",\"created_at\":\"2022-07-03T17:00:12.000000Z\",\"updated_at\":\"2022-07-03T17:00:12.000000Z\"}}', '2022-07-04 10:45:45', '2022-07-04 10:45:45'),
(180, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 175, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\/4\\\" GI Wall Plug ( Inner Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"150\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:03:06.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"},\"old\":{\"item_name\":\"1\\/4\\\" GI Wall Plug ( Inner Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:03:06.000000Z\",\"updated_at\":\"2022-07-03T17:03:06.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(181, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 176, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\/8\\\" GI Wall Plug ( Outer Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"151\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:03:31.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"3\\/8\\\" GI Wall Plug ( Outer Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:03:31.000000Z\",\"updated_at\":\"2022-07-03T17:03:31.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(182, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 177, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\/8\\\" GI Wall Plug ( Inner Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"152\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:03:53.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"3\\/8\\\" GI Wall Plug ( Inner Thread )\",\"unit\":\"Nos\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:03:53.000000Z\",\"updated_at\":\"2022-07-03T17:03:53.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(183, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 178, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"153\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:05:16.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"1\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:05:16.000000Z\",\"updated_at\":\"2022-07-03T17:05:16.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(184, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 179, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"3\\/4\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"154\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:05:33.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"3\\/4\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:05:33.000000Z\",\"updated_at\":\"2022-07-03T17:05:33.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(185, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 180, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/4\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"155\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:05:49.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"1 1\\/4\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:05:49.000000Z\",\"updated_at\":\"2022-07-03T17:05:49.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(186, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 181, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"1 1\\/2\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"156\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:06:10.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"1 1\\/2\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:06:10.000000Z\",\"updated_at\":\"2022-07-03T17:06:10.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(187, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 182, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"2\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"157\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:06:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"2\\\" Steel Screw\",\"unit\":\"Box\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:06:25.000000Z\",\"updated_at\":\"2022-07-03T17:06:25.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(188, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 183, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"M6 PVC Wall Plug\",\"unit\":\"Kg\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"158\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:07:24.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"M6 PVC Wall Plug\",\"unit\":\"Kg\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:07:24.000000Z\",\"updated_at\":\"2022-07-03T17:07:24.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(189, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 184, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"M8 PVC Wall Plug\",\"unit\":\"Kg\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"159\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:07:40.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"M8 PVC Wall Plug\",\"unit\":\"Kg\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:07:40.000000Z\",\"updated_at\":\"2022-07-03T17:07:40.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(190, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 185, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"Butterfly  Wall Plug\",\"unit\":\"Kg\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"160\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:08:08.000000Z\",\"updated_at\":\"2022-07-04T11:15:46.000000Z\"},\"old\":{\"item_name\":\"Butterfly  Wall Plug\",\"unit\":\"Kg\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"null\",\"display_order\":\"0\",\"category\":\"Other\",\"created_at\":\"2022-07-03T17:08:08.000000Z\",\"updated_at\":\"2022-07-03T17:08:08.000000Z\"}}', '2022-07-04 10:45:46', '2022-07-04 10:45:46'),
(191, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 69, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"1\",\"category\":null,\"created_at\":\"2022-05-10T15:46:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:57.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"2\",\"category\":null,\"created_at\":\"2022-05-10T15:46:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"}}', '2022-07-04 10:45:57', '2022-07-04 10:45:57'),
(192, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 70, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"2\",\"category\":null,\"created_at\":\"2022-05-10T15:46:50.000000Z\",\"updated_at\":\"2022-07-04T11:15:57.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"1\",\"category\":null,\"created_at\":\"2022-05-10T15:46:50.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"}}', '2022-07-04 10:45:57', '2022-07-04 10:45:57'),
(193, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 69, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"2\",\"category\":null,\"created_at\":\"2022-05-10T15:46:25.000000Z\",\"updated_at\":\"2022-07-04T11:16:04.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"1\\u00bd\\\"x1\\u00bd\\\"\",\"display_order\":\"1\",\"category\":null,\"created_at\":\"2022-05-10T15:46:25.000000Z\",\"updated_at\":\"2022-07-04T11:15:57.000000Z\"}}', '2022-07-04 10:46:04', '2022-07-04 10:46:04'),
(194, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 70, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"3\",\"category\":null,\"created_at\":\"2022-05-10T15:46:50.000000Z\",\"updated_at\":\"2022-07-04T11:16:04.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"2\\\"x2\\\"\",\"display_order\":\"2\",\"category\":null,\"created_at\":\"2022-05-10T15:46:50.000000Z\",\"updated_at\":\"2022-07-04T11:15:57.000000Z\"}}', '2022-07-04 10:46:04', '2022-07-04 10:46:04'),
(195, 'variable_assets_log', 'updated', 'App\\Models\\VariableAssets', 71, 'App\\User', 1, '{\"attributes\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"1\",\"category\":null,\"created_at\":\"2022-05-10T15:47:20.000000Z\",\"updated_at\":\"2022-07-04T11:16:04.000000Z\"},\"old\":{\"item_name\":\"MS Hollow Pipe\",\"unit\":\"Pcs\",\"qty\":\"0\",\"remark\":null,\"main_warehouse_id\":\"1\",\"sizes\":\"3\\\"x3\\\"\",\"display_order\":\"3\",\"category\":null,\"created_at\":\"2022-05-10T15:47:20.000000Z\",\"updated_at\":\"2022-07-04T11:15:45.000000Z\"}}', '2022-07-04 10:46:04', '2022-07-04 10:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `approved_bies`
--

CREATE TABLE `approved_bies` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approved_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `archi_exterior_design_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(111, 47, 4, 'public/archiexteriordesign/345QXHE7XDzsukssowSGWpUu6LjX0oDa2t9sS0nE.zip', 'KSLH-PMY-ARCH-R0-23062022.zip', NULL, '2022-06-23', '13:07:20', '2022-06-23 06:07:20', '2022-06-23 06:07:20'),
(112, 25, 13, 'public/archiexteriordesign/wrxStINR1FdbVkRqMELfMMLLnGKZLEvRixpJEsiD.rar', 'UMKK-ARCH-DRAWING-R5-25062022.rar', '2nd confirmed design', '2022-06-25', '17:11:53', '2022-06-25 10:11:53', '2022-06-25 10:11:53'),
(113, 11, 13, 'public/archiexteriordesign/6S43cveiPpBzFDIDuKnLP5miQicGM0VEvVkek7WI.rar', 'KTL-ARCH-DRAWING-R3-29062022.rar', NULL, '2022-06-29', '10:42:16', '2022-06-29 03:42:16', '2022-06-29 03:42:16'),
(114, 25, 13, 'public/archiexteriordesign/VvP6K4paQG8UXlLQ6gDj0tG7cHOEG70jchWEwTCi.rar', 'UMKK-ARCH-DRAWING-R5-29062022.rar', NULL, '2022-06-29', '10:43:34', '2022-06-29 03:43:34', '2022-06-29 03:43:34'),
(115, 46, 13, 'public/archiexteriordesign/7hSJJxyfpiQAJwTL8qzYrzPZZxte8EMeI6qrhjBF.rar', 'UMMH-PMY-ARCH-DWG-R4-30062022.rar', NULL, '2022-06-30', '16:58:58', '2022-06-30 09:58:58', '2022-06-30 09:58:58'),
(116, 7, 13, 'public/archiexteriordesign/hIXKlmbj2GeC0NFUKrvrGECHy1MwgKUcM3DOjl7I.rar', 'KHM-PMY-ARCH-DWG-30062022.rar', NULL, '2022-06-30', '17:00:45', '2022-06-30 10:00:45', '2022-06-30 10:00:45'),
(117, 40, 4, 'public/archiexteriordesign/bMNKgdsZZm7qTRmbEgGDLJC5QoXjRAwiCNRYfUAN.rar', 'KKZM-PMY-ARCH-DWG-R2-29062022.rar', NULL, '2022-07-01', '16:32:05', '2022-07-01 09:32:05', '2022-07-01 09:32:05'),
(118, 48, 13, 'public/archiexteriordesign/doCrNPfOasl6fe7O9POMly3IKjxRlqDoKYytetYH.rar', 'DTTW-PMY-ARCH-DWG-R1-1.7.2022.rar', NULL, '2022-07-01', '16:56:00', '2022-07-01 09:56:00', '2022-07-01 09:56:00'),
(119, 48, 13, 'public/archiexteriordesign/PSMWrsHy6l7uYojfRq0E3JRL0UOs5cL0FjGx0zhs.rar', 'DTTW-PMY-ARCH-DWG-R1-1.7.2022.rar', NULL, '2022-07-01', '17:05:23', '2022-07-01 10:05:23', '2022-07-01 10:05:23'),
(120, 25, 13, 'public/archiexteriordesign/LZjSqIONVOeh8z1Oy5nODGSIkNB0Fh6j3AMBUYGv.rar', 'UMKK-ARCH-DRAWING-R5-04072022.rar', 'UMKK final drawing showing architectural fin line details', '2022-07-04', '09:29:06', '2022-07-04 02:29:06', '2022-07-04 02:29:06'),
(121, 46, 13, 'public/archiexteriordesign/oJ6bRm7EMo96GhKql9ueyUBdRH2CPMXxtLfnPiuP.rar', 'UMMH-PMY-ARCH-DWG-R4-04072022.rar', 'UMMH project showing architectural fin lines detail', '2022-07-04', '10:23:07', '2022-07-04 03:23:07', '2022-07-04 03:23:07'),
(122, 48, 13, 'public/archiexteriordesign/vNQ8IkWKjhDP6CJRnglQAf1MmSHblJ6JPVwIIhGo.rar', 'DTTW-PMY-ARCH-DWG-R1-4.7.2022.rar', NULL, '2022-07-04', '11:23:58', '2022-07-04 04:23:58', '2022-07-04 04:23:58'),
(123, 48, 13, 'public/archiexteriordesign/feXLFTuB7N1sUWEdID5pCM4S6lKckPXAMnMhJIUV.rar', 'DTTW-PMY-ARCH-DWG-R1-4.7.2022.rar', 'doors and windows changes', '2022-07-04', '16:45:55', '2022-07-04 09:45:55', '2022-07-04 09:45:55'),
(124, 38, 13, 'public/archiexteriordesign/3XGOEfwRHLhUIUah40CG3U9uo4NvqwEOQgMs0y1L.rar', 'UAZL-ARCH-DRAWING-R8-05072022.rar', 'doors changed with existing doors', '2022-07-05', '09:51:35', '2022-07-05 02:51:35', '2022-07-05 02:51:35'),
(125, 46, 13, 'public/archiexteriordesign/uHq9XmbkzfhJF43iI9DkVgxcKVdk8Z0TqZLFKnOq.rar', 'UMMH-PMY-ARCH-DWG-R4-04072022.rar', NULL, '2022-07-05', '11:32:55', '2022-07-05 04:32:55', '2022-07-05 04:32:55'),
(126, 48, 13, 'public/archiexteriordesign/Cddg0uvoGBYDtOF8Ft5ZP6sDb7k4qqGpxe6aOR4b.rar', 'DTTW-PMY-ARCH-DWG-R1-4.7.2022.rar', NULL, '2022-07-05', '12:13:14', '2022-07-05 05:13:14', '2022-07-05 05:13:14'),
(127, 48, 13, 'public/archiexteriordesign/AittzfjZFQy72VmDjynBGh28Z0bNhTnWf0WK3Emi.rar', 'DTTW-PMY-ARCH-DWG-R1-4.7.2022.rar', NULL, '2022-07-05', '14:59:59', '2022-07-05 07:59:59', '2022-07-05 07:59:59'),
(128, 22, 12, 'public/archiexteriordesign/AODlysaRXaLkx0mzOOdbyqjzPO1xGgX3LYMVk7fI.rar', 'MSLKM-PMY-ARCH-R1-08072022.rar', NULL, '2022-07-08', '16:30:28', '2022-07-08 09:30:28', '2022-07-08 09:30:28'),
(129, 11, 13, 'public/archiexteriordesign/ZgTDZfBV160C3zP0ncdEkwyGCE1CfIdDDzPKcFjB.rar', 'KTL-ARCH-DRAWING-R3-11072022.rar', NULL, '2022-07-11', '10:42:52', '2022-07-11 03:42:52', '2022-07-11 03:42:52'),
(130, 25, 13, 'public/archiexteriordesign/lJsupgyf94x3rNBVObho8i9GLGaBX4UHT8hl8O8G.rar', 'UMKK-ARCH-DRAWING-R5-13072022.rar', 'DOOR CHANGES', '2022-07-13', '09:41:09', '2022-07-13 02:41:09', '2022-07-13 02:41:09'),
(131, 25, 13, 'public/archiexteriordesign/FI2NAeLIHzDgeeFWTqQnS1WPBl4bIq0kGNXbh03c.rar', 'UMKK-ARCH-DRAWING-R5-13072022.rar', 'DOOR CHANGES', '2022-07-13', '10:11:00', '2022-07-13 03:11:00', '2022-07-13 03:11:00'),
(132, 48, 13, 'public/archiexteriordesign/mqzGt9guYwXe3XRz7LZz78Ps5sf89HJwaa3GypWK.rar', 'DTTW-PMY-ARCH-DWG-R1-13.7.2022.rar', 'several doors and plinth level changes', '2022-07-13', '13:03:33', '2022-07-13 06:03:33', '2022-07-13 06:03:33'),
(133, 48, 13, 'public/archiexteriordesign/7vONgUuuNh0MRBLINtwvzPgG7EHilt4hdY31HIMf.rar', 'DTTW-PMY-ARCH-DWG-R1-13.7.2022.rar', NULL, '2022-07-13', '13:16:38', '2022-07-13 06:16:38', '2022-07-13 06:16:38'),
(134, 46, 13, 'public/archiexteriordesign/0zqtO4UjNPor278azsdhVpgyxBS6B8O9FX9rw0tG.rar', 'UMMH-PMY-ARCH-DWG-R4-13072022.rar', 'EXTENSION AREA ADDED', '2022-07-13', '13:27:56', '2022-07-13 06:27:56', '2022-07-13 06:27:56'),
(135, 25, 13, 'public/archiexteriordesign/v8YqZM34GJ77gIx9ExHwMFDq3WTN7NuWSAckKnmW.rar', 'UMKK-ARCH-DRAWING-R5-13072022.rar', NULL, '2022-07-13', '13:42:02', '2022-07-13 06:42:02', '2022-07-13 06:42:02'),
(136, 46, 13, 'public/archiexteriordesign/4QqKyoEf1Ugov6oBw3kcmdkJOxhZMdKetw96g5SF.rar', 'UMMH-PMY-ARCH-DWG-R4-13072022.rar', NULL, '2022-07-14', '16:33:01', '2022-07-14 09:33:01', '2022-07-14 09:33:01'),
(137, 22, 12, 'public/archiexteriordesign/soRPyfamagOge6jPLxivR58pd52q7tq7wjUdn7f4.rar', 'MSLKM-PMY-ARCH-R2-15072022.rar', NULL, '2022-07-15', '14:57:31', '2022-07-15 07:57:31', '2022-07-15 07:57:31'),
(138, 46, 13, 'public/archiexteriordesign/UlGlOyyauI04XmbFlGtoJ1Wfu0zYF6URSlhARxbG.rar', 'UMMH-PMY-ARCH-DWG-R4-16072022.rar', NULL, '2022-07-16', '09:39:31', '2022-07-16 02:39:31', '2022-07-16 02:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `bq_items`
--

CREATE TABLE `bq_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_bq_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_scope_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bq_items`
--

INSERT INTO `bq_items` (`id`, `variable_asset_id`, `qty`, `rate`, `project_bq_id`, `project_id`, `work_scope_id`, `created_at`, `updated_at`) VALUES
(1, '80', '2', '1000', '1', '2', '1', '2022-08-17 11:21:52', '2022-08-17 11:21:52'),
(2, '4', '10', '1000', '1', '2', '1', '2022-08-17 11:21:52', '2022-08-17 11:21:52'),
(3, '224', '5.3', '1000', '1', '2', '1', '2022-08-17 11:21:52', '2022-08-17 11:21:52'),
(4, '4', '500', '600', '1', '2', '1', '2022-08-17 11:21:52', '2022-08-17 11:21:52'),
(5, '80', '2', '1000', '2', '2', '2', '2022-08-17 11:22:29', '2022-08-17 11:22:29'),
(6, '4', '10', '1000', '2', '2', '2', '2022-08-17 11:22:29', '2022-08-17 11:22:29'),
(7, '224', '5.3', '1000', '2', '2', '2', '2022-08-17 11:22:29', '2022-08-17 11:22:29'),
(9, '4', '500', '1000', '3', '5', '1', '2022-08-17 17:29:19', '2022-08-17 17:29:19'),
(10, '25', '500', '1000', '3', '5', '1', '2022-08-17 17:29:19', '2022-08-17 17:29:19'),
(11, '4', '500', '1000', '4', '5', '2', '2022-08-17 17:29:27', '2022-08-17 17:29:27'),
(12, '25', '500', '1000', '4', '5', '2', '2022-08-17 17:29:27', '2022-08-17 17:29:27'),
(13, '4', '500', '1000', '5', '5', '3', '2022-08-17 17:29:36', '2022-08-17 17:29:36'),
(14, '25', '500', '1000', '5', '5', '3', '2022-08-17 17:29:36', '2022-08-17 17:29:36'),
(15, '4', '500', '1000', '6', '8', '1', '2022-08-17 18:22:13', '2022-08-17 18:22:13'),
(16, '107', '10', '5000', '6', '8', '1', '2022-08-17 18:22:13', '2022-08-17 18:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `bq_temporaries`
--

CREATE TABLE `bq_temporaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bq_temporaries`
--

INSERT INTO `bq_temporaries` (`id`, `variable_asset_id`, `qty`, `rate`, `project_id`, `session_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 80, '2', '1000', NULL, 'eYnaQYd1osiMztNgwMXxHfOazLaNWWdinhFvHxnp', '1', '2022-08-17 09:24:09', '2022-08-17 09:24:09'),
(3, 4, '10', '1000', NULL, 'eYnaQYd1osiMztNgwMXxHfOazLaNWWdinhFvHxnp', '1', '2022-08-17 09:30:28', '2022-08-17 09:30:28'),
(4, 224, '5.3', '1000', NULL, 'eYnaQYd1osiMztNgwMXxHfOazLaNWWdinhFvHxnp', '1', '2022-08-17 09:40:16', '2022-08-17 09:40:16'),
(5, 4, '500', '600', NULL, 'eYnaQYd1osiMztNgwMXxHfOazLaNWWdinhFvHxnp', '1', '2022-08-17 10:42:59', '2022-08-17 10:42:59'),
(6, 4, '500', '1000', NULL, 'Jye78sIcwIvqIA48PhIFfdjNyv457nQ6mZoKrdVr', '1', '2022-08-17 17:29:04', '2022-08-17 17:29:04'),
(8, 107, '10', '5000', NULL, 'Jye78sIcwIvqIA48PhIFfdjNyv457nQ6mZoKrdVr', '1', '2022-08-17 18:21:49', '2022-08-17 18:21:49');

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
  `account_opening_balance` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `contract_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(27, 38, 3, 'public/contract/jGmpqYsYsg1YeoVB5F4AMuohuWiP8LNepgkxAJVF.pdf', 'Ko Aung Zaw Latt Contract.pdf', NULL, '2022-06-05', '14:38:55', '2022-06-05 07:38:55', '2022-06-05 07:38:55'),
(28, 58, 9, 'public/contract/4dbOizVrbCYdHHmsew5bN5JR4x6V22JssBS9z0JW.pdf', 'Ko Thu Ya Contract.pdf', NULL, '2022-07-04', '12:07:09', '2022-07-04 05:07:09', '2022-07-04 05:07:09'),
(29, 7, 9, 'public/contract/sr03ebggmUCHdy3Ud05jEoiuflcsg1TSdPWOiLCN.pdf', 'Ko Hlwn Moe Thu M&E Contract.pdf', NULL, '2022-07-09', '10:12:52', '2022-07-09 03:12:52', '2022-07-09 03:12:52'),
(30, 9, 9, 'public/contract/c5VC0K6BubuwhToDlbeJ0f8wPqfd5UpUWiWtLVMM.pdf', 'Ko Khant Si Thu M&E Contract.pdf', NULL, '2022-07-09', '10:13:17', '2022-07-09 03:13:17', '2022-07-09 03:13:17'),
(31, 8, 9, 'public/contract/0YCJ1eRiE1ltx7GtIdzeZVlSJsPmPei1uFrBZ0DN.pdf', 'Ko San Htoo M&E Contract.pdf', NULL, '2022-07-09', '10:14:10', '2022-07-09 03:14:10', '2022-07-09 03:14:10'),
(32, 11, 9, 'public/contract/j0vCKCQI1YYFHgF1gWiI4OOyQ30JHfjlwO2lEs9Z.pdf', 'Ko Tin Latt M&E Contract.pdf', NULL, '2022-07-09', '10:15:35', '2022-07-09 03:15:35', '2022-07-09 03:15:35'),
(33, 6, 9, 'public/contract/cjNxVzz9wHafKigmtdIS8L8e5dkZACP2x0OFdxiL.pdf', 'Ma Waddy M&E Contract.pdf', NULL, '2022-07-09', '10:16:05', '2022-07-09 03:16:05', '2022-07-09 03:16:05'),
(34, 12, 9, 'public/contract/InnBWsPZe7DpzNQsb3Q05KthMRx9mvNAYAVYvSB5.pdf', 'Ma Zin Wah M&E Contract.pdf', NULL, '2022-07-09', '10:21:33', '2022-07-09 03:21:33', '2022-07-09 03:21:33'),
(35, 10, 9, 'public/contract/o5JJYQ4evebntDnAgxyv6wXuIQ96lkcZcamvqhoS.pdf', 'U Wint Naing Fencing Contract.pdf', NULL, '2022-07-09', '15:58:54', '2022-07-09 08:58:54', '2022-07-09 08:58:54'),
(36, 10, 9, 'public/contract/7zXmvoD28TRuXOfJudBeustaq74BBEXkYtpyF1HJ.pdf', 'U Wint Naing M&E Contract.pdf', NULL, '2022-07-09', '16:08:55', '2022-07-09 09:08:55', '2022-07-09 09:08:55'),
(37, 48, 9, 'public/contract/J1dgNJVCp7xzkjNiL89GWgjC2CssEOVy69GLMz0T.pdf', 'Ma Thet Thet Wai Contract.pdf', NULL, '2022-07-13', '13:12:12', '2022-07-13 06:12:12', '2022-07-13 06:12:12'),
(38, 25, 9, 'public/contract/5mT9clDNgA5HI1tyYAgMfgnXlzeRFULM1g3DbL4C.pdf', 'U Myat Ko Ko Contract.pdf', NULL, '2022-07-15', '09:29:38', '2022-07-15 02:29:38', '2022-07-15 02:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `building_area` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `construction_type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_scope` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storeyed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(53, 'Ko Aung Min Kyi', 'Kyauk Me', '34\'7\" x 45\'', 'RC', NULL, '2022-06-15', '2022-06-15 06:50:54', '2022-06-15 06:50:54', '09 5275701', 'NS_KM_00049', NULL, 'Kyauk Me', '2.5 Storeyed with Roof Slab', NULL),
(54, 'Ko Kyaw Nyein Chan', 'No. 143, Hnin Pan Street (2), Snow Garden Housing, Thingangyun Township', '18\' x 47\'', 'RC', NULL, '2022-07-02', '2022-07-02 05:12:06', '2022-07-02 05:12:06', '09 5017640', 'YGN_TGG_00052', NULL, 'No. 143, Hnin Pan Street (2), Snow Garden Housing, Thingangyun Township', '3 Storeyed with Roof Slab', NULL),
(55, 'Ba Ba Gyi', 'No. 58 (A), Thu Nandar Street (4) Ward, Thu Mingalar Housing, Thingangyun Township', '28\' x 39\'', 'RC', 'Renovation', '2022-07-02', '2022-07-02 06:39:15', '2022-07-02 06:39:15', '09 5123 651', 'YGN_TGG_00053', NULL, 'No. 58 (A), Thu Nandar Street (4) Ward, Thu Mingalar Housing, Thingangyun Township', '2 Storeyed with Roofing', NULL);

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
  `return_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_from_id` int(11) DEFAULT NULL,
  `return_user_id` int(11) DEFAULT NULL,
  `qs_team_check_pass_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_check_sent_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_store_manager_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qs_team_check_pass_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_check_sent_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_store_manager_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `engineer_return_infos`
--

INSERT INTO `engineer_return_infos` (`id`, `return_code`, `return_date`, `return_from_id`, `return_user_id`, `qs_team_check_pass_status`, `logistics_team_check_sent_status`, `received_store_manager_status`, `created_at`, `updated_at`, `qs_team_check_pass_date`, `logistics_team_check_sent_date`, `received_store_manager_date`) VALUES
(1, 'RE-000001', '2022-04-29 12:00 AM', 9, 22, 'finished', 'finished', 'received', '2022-04-29 09:50:57', '2022-04-29 09:51:44', '2022-04-29 16:51:25pm', '2022-04-29 16:51:35pm', '2022-04-29 16:51:44pm'),
(2, 'RE-000001', '2022-04-30 12:00 AM', 9, 22, 'finished', 'finished', 'received', '2022-04-30 05:26:01', '2022-04-30 05:28:49', '2022-04-30 12:28:22pm', '2022-04-30 12:28:33pm', '2022-04-30 12:28:49pm'),
(3, 'RE-000003', '2022-06-25 05:44 PM', 8, 36, NULL, NULL, NULL, '2022-06-25 10:44:43', '2022-06-25 10:44:43', NULL, NULL, NULL),
(4, 'RE-000004', '2022-06-25 05:44 PM', 8, 36, NULL, NULL, NULL, '2022-06-25 10:45:01', '2022-06-25 10:45:01', NULL, NULL, NULL),
(5, 'RE-000005', '2022-06-25 05:45 PM', 8, 36, NULL, NULL, NULL, '2022-06-25 10:46:30', '2022-06-25 10:46:30', NULL, NULL, NULL),
(6, 'RE-000006', '2022-07-05 01:05 AM', 7, 22, NULL, NULL, NULL, '2022-07-04 18:05:18', '2022-07-04 18:05:18', NULL, NULL, NULL),
(7, 'RE-000007', '2022-07-12 08:55 PM', 8, 36, NULL, NULL, NULL, '2022-07-13 03:25:28', '2022-07-13 03:25:28', NULL, NULL, NULL);

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
(98, 8, 2, 47, 0, 35, 17, '2022-06-24 08:05:18', '2022-06-24 08:05:18'),
(99, 1, 200, 44, 0, 36, 16, '2022-06-27 06:33:17', '2022-06-27 06:33:17'),
(100, 1, 170, 44, 0, 36, 16, '2022-06-27 06:33:17', '2022-06-27 06:33:17'),
(101, 1, 200, 44, 0, 37, 16, '2022-06-27 06:33:20', '2022-06-27 06:33:20'),
(102, 1, 170, 44, 0, 37, 16, '2022-06-27 06:33:20', '2022-06-27 06:33:20'),
(103, 4, 1, 28, 0, 38, 2, '2022-07-01 06:37:54', '2022-07-01 06:37:54'),
(104, 1, 250, 37, 0, 39, 21, '2022-07-02 03:45:51', '2022-07-02 03:45:51'),
(105, 1, 280, 47, 0, 40, 17, '2022-07-02 03:55:21', '2022-07-02 03:55:21'),
(106, 5, 1, 54, 0, 41, 6, '2022-07-02 13:46:50', '2022-07-02 13:46:50'),
(107, 4, 1, 32, 0, 42, 12, '2022-07-10 10:21:14', '2022-07-10 10:21:14'),
(108, 8, 1, 26, 0, 43, 4, '2022-07-14 04:10:11', '2022-07-14 04:10:11'),
(109, 5, 1, 54, 0, 44, 6, '2022-07-17 12:30:23', '2022-07-17 12:30:23');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_design_fees`
--

CREATE TABLE `exterior_design_fees` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exterior_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fixed_assets`
--

CREATE TABLE `fixed_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voucher_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unusable_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unusable_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fixed_assets`
--

INSERT INTO `fixed_assets` (`id`, `item_name`, `unit`, `qty`, `desciption`, `main_warehouse_id`, `created_at`, `updated_at`, `voucher_status`, `voucher_date`, `unusable_status`, `unusable_date`) VALUES
(1, 'T Column', 'Nos', 1189, NULL, 1, '2022-04-28 16:13:30', '2022-07-13 08:01:05', NULL, NULL, NULL, NULL),
(2, 'Vibrator', 'Nos', 5, NULL, 1, '2022-04-28 16:13:52', '2022-05-06 07:38:15', NULL, NULL, NULL, NULL),
(3, 'Concrete Mixer', 'Nos', 6, NULL, 1, '2022-04-29 09:33:32', '2022-04-29 09:33:32', NULL, NULL, NULL, NULL),
(4, 'Compactor', 'Nos', 1, NULL, 1, '2022-04-29 09:34:03', '2022-04-29 09:34:03', NULL, NULL, NULL, NULL),
(5, 'Japan Scaffolding', 'Nos', 19, NULL, 1, '2022-04-29 09:34:30', '2022-06-24 06:36:27', NULL, NULL, NULL, NULL),
(6, 'Cement Tank', 'Nos', 11, NULL, 1, '2022-04-29 09:34:59', '2022-06-24 06:43:41', NULL, NULL, NULL, NULL),
(7, 'Fiber Water Tank', 'Nos', 15, NULL, 1, '2022-04-29 09:35:21', '2022-06-24 06:44:05', NULL, NULL, NULL, NULL),
(8, 'Pump ( Petrol )', 'Nos', 5, NULL, 1, '2022-04-29 09:35:43', '2022-06-24 06:44:59', NULL, NULL, NULL, NULL),
(9, 'Water Motor', 'Nos', 2, NULL, 1, '2022-04-29 09:35:58', '2022-04-29 09:35:58', NULL, NULL, NULL, NULL),
(10, 'Pressure Gun', 'Nos', 1, NULL, 1, '2022-04-29 09:36:07', '2022-04-29 09:36:07', NULL, NULL, NULL, NULL),
(11, 'Submersible Pump', 'Nos', 3, NULL, 1, '2022-04-29 09:36:18', '2022-04-29 09:36:18', NULL, NULL, NULL, NULL),
(12, 'Safety Green Net', 'Nos', 0, NULL, 1, '2022-04-29 09:36:35', '2022-04-29 09:37:16', NULL, NULL, NULL, NULL),
(13, 'Tarpolin', 'Nos', 0, NULL, 1, '2022-04-29 09:36:55', '2022-04-29 09:36:55', NULL, NULL, NULL, NULL),
(14, 'Scaffolding Walking Board', 'Nos', 16, NULL, 1, '2022-05-30 07:51:49', '2022-06-24 06:42:02', NULL, NULL, NULL, NULL),
(15, '2\" Hose Pipe', 'Rft', 0, NULL, 1, '2022-06-06 04:11:26', '2022-06-06 04:11:26', NULL, NULL, NULL, NULL),
(16, '2\" Flexible Pipe', 'Rft', 0, NULL, 1, '2022-06-06 04:11:59', '2022-06-06 04:11:59', NULL, NULL, NULL, NULL),
(17, '2\" Foot Valve', 'Nos', 0, NULL, 1, '2022-06-06 04:12:43', '2022-06-06 04:12:43', NULL, NULL, NULL, NULL),
(18, 'Jet Pump', 'Nos', 8, NULL, 1, '2022-06-24 06:35:31', '2022-06-24 06:35:31', NULL, NULL, NULL, NULL),
(19, 'GI Pipe', 'Pcs', 20, NULL, 1, '2022-06-24 06:42:50', '2022-06-24 06:42:50', NULL, NULL, NULL, NULL),
(20, 'Pipe Clip', 'Nos', 35, NULL, 1, '2022-06-24 06:43:16', '2022-06-24 06:43:16', NULL, NULL, NULL, NULL),
(21, 'Pressure Pump', 'Nos', 1, NULL, 1, '2022-06-24 06:45:56', '2022-06-24 06:45:56', NULL, NULL, NULL, NULL),
(22, 'Compressor', 'Set', 1, NULL, 1, '2022-06-24 06:46:18', '2022-06-24 06:46:18', NULL, NULL, NULL, NULL),
(23, '8 KVA Generator', 'Nos', 1, NULL, 1, '2022-06-24 06:46:46', '2022-06-24 06:46:46', NULL, NULL, NULL, NULL),
(24, 'Jumper', 'Nos', 0, NULL, 1, '2022-07-01 06:38:02', '2022-07-01 06:38:02', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fixed_assets_purchases`
--

CREATE TABLE `fixed_assets_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `desciption` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_asset_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
-- Table structure for table `fixed_assets_vouchers`
--

CREATE TABLE `fixed_assets_vouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `voucher` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_asset_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floor_plans`
--

CREATE TABLE `floor_plans` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `floor_plan_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(71, 2, 12, 'public/floor_plans/eAFwHWHJ9gUb92ZKSSfrH4iM43o8vEmsnm0ZhbzP.rar', '2022-06-13', '13:44:44', '2022-06-13 13:44:44', '2022-06-13 06:44:44', '2022-06-13 06:44:44', 'UN-PMY-ARCH-R3-13062022.rar', NULL),
(72, 57, 4, 'public/floor_plans/7v2jeIMCWOyo7aBGKA5EuvsFjAxbdKnaYJusagmp.rar', '2022-07-02', '12:21:47', '2022-07-02 12:21:47', '2022-07-02 05:21:47', '2022-07-02 05:21:47', 'ko kyaw nyein chan.rar', NULL);

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
  `warehouse_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `management_accept_reject_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `management_accept_reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(161, 15, 'accept', '2022-06-24 13:11:20pm', 173, '2022-06-24 06:11:20', '2022-06-24 06:11:20', NULL),
(162, 15, 'accept', '2022-06-27 16:24:05pm', 206, '2022-06-27 09:24:05', '2022-06-27 09:24:05', NULL),
(163, 15, 'accept', '2022-06-27 16:24:08pm', 206, '2022-06-27 09:24:08', '2022-06-27 09:24:08', NULL),
(164, 15, 'accept', '2022-06-27 16:24:10pm', 206, '2022-06-27 09:24:10', '2022-06-27 09:24:10', NULL),
(165, 15, 'accept', '2022-06-27 16:24:13pm', 206, '2022-06-27 09:24:13', '2022-06-27 09:24:13', NULL),
(166, 15, 'accept', '2022-06-27 16:25:42pm', 203, '2022-06-27 09:25:42', '2022-06-27 09:25:42', NULL),
(167, 15, 'accept', '2022-06-27 16:29:42pm', 200, '2022-06-27 09:29:42', '2022-06-27 09:29:42', NULL),
(168, 15, 'accept', '2022-06-27 16:30:33pm', 190, '2022-06-27 09:30:33', '2022-06-27 09:30:33', NULL),
(169, 15, 'accept', '2022-06-28 14:39:30pm', 232, '2022-06-28 07:39:30', '2022-06-28 07:39:30', NULL),
(170, 15, 'accept', '2022-06-28 14:46:58pm', 231, '2022-06-28 07:46:58', '2022-06-28 07:46:58', NULL),
(171, 15, 'accept', '2022-06-28 14:47:11pm', 231, '2022-06-28 07:47:11', '2022-06-28 07:47:11', NULL),
(172, 15, 'accept', '2022-06-28 14:47:43pm', 230, '2022-06-28 07:47:43', '2022-06-28 07:47:43', NULL),
(173, 15, 'accept', '2022-06-28 14:53:48pm', 228, '2022-06-28 07:53:48', '2022-06-28 07:53:48', NULL),
(174, 15, 'accept', '2022-06-28 14:54:21pm', 227, '2022-06-28 07:54:21', '2022-06-28 07:54:21', NULL),
(175, 15, 'accept', '2022-06-28 14:54:32pm', 227, '2022-06-28 07:54:32', '2022-06-28 07:54:32', NULL),
(176, 15, 'accept', '2022-06-28 14:56:06pm', 227, '2022-06-28 07:56:06', '2022-06-28 07:56:06', NULL),
(177, 15, 'accept', '2022-06-28 14:56:13pm', 227, '2022-06-28 07:56:13', '2022-06-28 07:56:13', NULL),
(178, 15, 'accept', '2022-06-28 14:59:40pm', 221, '2022-06-28 07:59:40', '2022-06-28 07:59:40', NULL),
(179, 15, 'accept', '2022-06-28 15:14:46pm', 218, '2022-06-28 08:14:46', '2022-06-28 08:14:46', NULL),
(180, 15, 'accept', '2022-06-28 15:21:04pm', 215, '2022-06-28 08:21:04', '2022-06-28 08:21:04', NULL),
(181, 15, 'accept', '2022-06-28 15:23:52pm', 214, '2022-06-28 08:23:52', '2022-06-28 08:23:52', '10mm rebar 14nos approved(local)'),
(182, 15, 'accept', '2022-06-28 15:24:39pm', 213, '2022-06-28 08:24:39', '2022-06-28 08:24:39', NULL),
(183, 15, 'accept', '2022-06-28 15:25:05pm', 212, '2022-06-28 08:25:05', '2022-06-28 08:25:05', NULL),
(184, 15, 'accept', '2022-06-28 15:26:41pm', 211, '2022-06-28 08:26:41', '2022-06-28 08:26:41', NULL),
(185, 15, 'accept', '2022-06-28 15:28:00pm', 210, '2022-06-28 08:28:00', '2022-06-28 08:28:00', NULL),
(186, 15, 'accept', '2022-06-28 15:28:31pm', 209, '2022-06-28 08:28:31', '2022-06-28 08:28:31', NULL),
(187, 15, 'accept', '2022-06-28 15:29:17pm', 207, '2022-06-28 08:29:17', '2022-06-28 08:29:17', NULL),
(188, 15, 'accept', '2022-06-30 15:33:25pm', 263, '2022-06-30 08:33:25', '2022-06-30 08:33:25', NULL),
(189, 15, 'accept', '2022-06-30 15:34:13pm', 261, '2022-06-30 08:34:13', '2022-06-30 08:34:13', NULL),
(190, 15, 'accept', '2022-06-30 15:35:07pm', 246, '2022-06-30 08:35:07', '2022-06-30 08:35:07', NULL),
(191, 15, 'accept', '2022-06-30 15:37:31pm', 226, '2022-06-30 08:37:31', '2022-06-30 08:37:31', NULL),
(192, 15, 'accept', '2022-06-30 15:38:26pm', 205, '2022-06-30 08:38:26', '2022-06-30 08:38:26', NULL),
(193, 15, 'accept', '2022-06-30 15:39:27pm', 198, '2022-06-30 08:39:27', '2022-06-30 08:39:27', NULL),
(194, 15, 'accept', '2022-07-01 10:17:31am', 245, '2022-07-01 03:17:31', '2022-07-01 03:17:31', NULL),
(195, 15, 'accept', '2022-07-01 10:20:10am', 220, '2022-07-01 03:20:10', '2022-07-01 03:20:10', 'Gypsum Board only delivery hold'),
(196, 15, 'accept', '2022-07-01 10:22:19am', 111, '2022-07-01 03:22:19', '2022-07-01 03:22:19', NULL),
(197, 15, 'accept', '2022-07-01 10:25:39am', 242, '2022-07-01 03:25:39', '2022-07-01 03:25:39', NULL),
(198, 15, 'accept', '2022-07-01 10:26:33am', 241, '2022-07-01 03:26:33', '2022-07-01 03:26:33', NULL),
(199, 15, 'accept', '2022-07-01 10:27:10am', 235, '2022-07-01 03:27:10', '2022-07-01 03:27:10', NULL),
(200, 15, 'accept', '2022-07-01 10:27:58am', 234, '2022-07-01 03:27:58', '2022-07-01 03:27:58', NULL),
(201, 15, 'accept', '2022-07-01 13:11:14pm', 265, '2022-07-01 06:11:14', '2022-07-01 06:11:14', NULL),
(202, 15, 'accept', '2022-07-01 13:13:02pm', 262, '2022-07-01 06:13:02', '2022-07-01 06:13:02', NULL),
(203, 15, 'accept', '2022-07-01 13:13:44pm', 258, '2022-07-01 06:13:44', '2022-07-01 06:13:44', NULL),
(204, 15, 'reject', '2022-07-01 13:14:34pm', 255, '2022-07-01 06:14:34', '2022-07-01 06:14:34', NULL),
(205, 15, 'accept', '2022-07-01 13:15:11pm', 252, '2022-07-01 06:15:11', '2022-07-01 06:15:11', NULL),
(206, 15, 'accept', '2022-07-01 13:15:28pm', 251, '2022-07-01 06:15:28', '2022-07-01 06:15:28', NULL),
(207, 15, 'accept', '2022-07-01 13:16:09pm', 240, '2022-07-01 06:16:09', '2022-07-01 06:16:09', NULL),
(208, 15, 'accept', '2022-07-01 13:17:06pm', 233, '2022-07-01 06:17:06', '2022-07-01 06:17:06', NULL),
(209, 15, 'accept', '2022-07-01 13:22:36pm', 247, '2022-07-01 06:22:36', '2022-07-01 06:22:36', NULL),
(210, 15, 'accept', '2022-07-04 12:20:32pm', 268, '2022-07-04 05:20:32', '2022-07-04 05:20:32', NULL),
(211, 15, 'accept', '2022-07-04 12:21:19pm', 264, '2022-07-04 05:21:19', '2022-07-04 05:21:19', NULL),
(212, 15, 'accept', '2022-07-04 12:24:57pm', 256, '2022-07-04 05:24:57', '2022-07-04 05:24:57', NULL),
(213, 15, 'accept', '2022-07-04 12:25:35pm', 254, '2022-07-04 05:25:35', '2022-07-04 05:25:35', NULL),
(214, 15, 'accept', '2022-07-04 12:26:46pm', 253, '2022-07-04 05:26:46', '2022-07-04 05:26:46', NULL),
(215, 15, 'accept', '2022-07-04 12:26:59pm', 253, '2022-07-04 05:26:59', '2022-07-04 05:26:59', NULL),
(216, 15, 'accept', '2022-07-04 12:27:02pm', 253, '2022-07-04 05:27:02', '2022-07-04 05:27:02', NULL),
(217, 15, 'accept', '2022-07-04 12:28:06pm', 238, '2022-07-04 05:28:06', '2022-07-04 05:28:06', NULL),
(218, 15, 'accept', '2022-07-04 12:28:14pm', 238, '2022-07-04 05:28:14', '2022-07-04 05:28:14', NULL),
(219, 15, 'accept', '2022-07-04 12:28:48pm', 237, '2022-07-04 05:28:48', '2022-07-04 05:28:48', NULL),
(220, 15, 'accept', '2022-07-04 12:29:26pm', 236, '2022-07-04 05:29:26', '2022-07-04 05:29:26', NULL),
(221, 15, 'accept', '2022-07-04 12:30:11pm', 204, '2022-07-04 05:30:11', '2022-07-04 05:30:11', NULL),
(222, 15, 'accept', '2022-07-04 12:32:23pm', 229, '2022-07-04 05:32:23', '2022-07-04 05:32:23', NULL),
(223, 15, 'accept', '2022-07-04 12:33:02pm', 225, '2022-07-04 05:33:02', '2022-07-04 05:33:02', NULL),
(224, 15, 'accept', '2022-07-05 16:38:37pm', 309, '2022-07-05 09:38:37', '2022-07-05 09:38:37', NULL),
(225, 15, 'accept', '2022-07-05 16:40:30pm', 308, '2022-07-05 09:40:30', '2022-07-05 09:40:30', NULL),
(226, 15, 'accept', '2022-07-05 16:41:41pm', 304, '2022-07-05 09:41:41', '2022-07-05 09:41:41', NULL),
(227, 15, 'accept', '2022-07-05 16:42:09pm', 303, '2022-07-05 09:42:09', '2022-07-05 09:42:09', NULL),
(228, 15, 'accept', '2022-07-05 16:42:39pm', 302, '2022-07-05 09:42:39', '2022-07-05 09:42:39', NULL),
(229, 15, 'accept', '2022-07-05 16:43:29pm', 300, '2022-07-05 09:43:29', '2022-07-05 09:43:29', NULL),
(230, 15, 'accept', '2022-07-05 16:44:00pm', 299, '2022-07-05 09:44:00', '2022-07-05 09:44:00', NULL),
(231, 15, 'accept', '2022-07-05 16:44:24pm', 298, '2022-07-05 09:44:24', '2022-07-05 09:44:24', NULL),
(232, 15, 'accept', '2022-07-05 16:45:08pm', 297, '2022-07-05 09:45:08', '2022-07-05 09:45:08', NULL),
(233, 15, 'accept', '2022-07-05 16:45:55pm', 296, '2022-07-05 09:45:55', '2022-07-05 09:45:55', NULL),
(234, 15, 'accept', '2022-07-05 16:46:30pm', 295, '2022-07-05 09:46:30', '2022-07-05 09:46:30', NULL),
(235, 15, 'accept', '2022-07-05 16:47:02pm', 294, '2022-07-05 09:47:02', '2022-07-05 09:47:02', NULL),
(236, 15, 'accept', '2022-07-05 16:51:38pm', 285, '2022-07-05 09:51:38', '2022-07-05 09:51:38', NULL),
(237, 15, 'reject', '2022-07-05 16:57:27pm', 282, '2022-07-05 09:57:27', '2022-07-05 09:57:27', NULL),
(238, 15, 'accept', '2022-07-05 16:58:17pm', 278, '2022-07-05 09:58:17', '2022-07-05 09:58:17', NULL),
(239, 15, 'accept', '2022-07-05 16:58:57pm', 269, '2022-07-05 09:58:57', '2022-07-05 09:58:57', NULL),
(240, 15, 'accept', '2022-07-05 17:00:53pm', 260, '2022-07-05 10:00:53', '2022-07-05 10:00:53', NULL),
(241, 15, 'accept', '2022-07-05 17:07:36pm', 279, '2022-07-05 10:07:36', '2022-07-05 10:07:36', NULL),
(242, 15, 'accept', '2022-07-05 17:08:45pm', 270, '2022-07-05 10:08:45', '2022-07-05 10:08:45', NULL),
(243, 15, 'accept', '2022-07-07 15:07:22pm', 266, '2022-07-07 08:07:22', '2022-07-07 08:07:22', 'X-Met approved,Binding wire-2 coil approved'),
(244, 15, 'accept', '2022-07-07 15:07:25pm', 266, '2022-07-07 08:07:25', '2022-07-07 08:07:25', 'X-Met approved,Binding wire-2 coil approved'),
(245, 15, 'accept', '2022-07-09 10:37:41am', 319, '2022-07-09 03:37:41', '2022-07-09 03:37:41', NULL),
(246, 1, 'accept', '2022-08-14 15:14:56pm', 468, '2022-08-14 08:44:56', '2022-08-14 08:44:56', NULL),
(247, 1, 'reject', '2022-08-14 15:17:54pm', NULL, '2022-08-14 08:47:54', '2022-08-14 08:47:54', NULL),
(248, 1, 'reject', '2022-08-14 15:18:03pm', NULL, '2022-08-14 08:48:03', '2022-08-14 08:48:03', NULL),
(249, 1, 'reject', '2022-08-14 15:20:05pm', 5, '2022-08-14 08:50:05', '2022-08-14 08:50:05', NULL),
(250, 1, 'reject', '2022-08-14 15:20:16pm', 53, '2022-08-14 08:50:16', '2022-08-14 08:50:16', NULL),
(251, 1, 'reject', '2022-08-14 15:20:28pm', 55, '2022-08-14 08:50:28', '2022-08-14 08:50:28', NULL);

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
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitos_of_measure_id` int(11) DEFAULT NULL,
  `selling_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_account_id` int(11) DEFAULT NULL,
  `cost_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_account_id` int(11) DEFAULT NULL,
  `receivable_account_id` int(11) DEFAULT NULL,
  `payable_account_id` int(11) DEFAULT NULL,
  `opening_inventory_account_id` int(11) DEFAULT NULL,
  `closing_inventory_account_id` int(11) DEFAULT NULL,
  `closing_stock_account_id` int(11) DEFAULT NULL,
  `quantity_on_hand` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `as_of_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_cost_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members_lists`
--

CREATE TABLE `members_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `members_list_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(30, 'public/members_list_file/8rk0aR5wQAsUiZ05uXnb2ChdydvbxZF58i8z48Zl.jpg', '5.jpg', 35, 20, '2022-06-24 05:03:32', '2022-06-24 05:03:32'),
(31, 'public/members_list_file/9z5XKRuN8xG2luuJZM4pNiQpKbt0sS3U2DdpLG8s.jpg', '2.jpg', 53, 20, '2022-06-27 05:12:42', '2022-06-27 05:12:42'),
(32, 'public/members_list_file/YSQREq2ZKquIfZkLsXdSMR2nBOxyiQy3Zgejdoaf.jpg', '3.jpg', 53, 20, '2022-06-27 05:12:42', '2022-06-27 05:12:42'),
(33, 'public/members_list_file/SM0cOIkT7xBh1eUeXnWIJntTObsFapoYMJi2fQ6k.jpg', 'viber_image_2022-06-27_12-10-53-652.jpg', 52, 52, '2022-06-27 06:25:32', '2022-06-27 06:25:32'),
(34, 'public/members_list_file/Pcf3U1G5rldAJ2KK7gp7HymE6XIvm8Spwjy2T9oY.jpg', 'viber_image_2022-06-27_12-10-53-659.jpg', 52, 52, '2022-06-27 06:25:32', '2022-06-27 06:25:32'),
(35, 'public/members_list_file/dfO9V2YFsXn4zXqdAw0RSU2HtoY9D84kqs4b5QeD.jpg', '2.jpg', 54, 20, '2022-06-27 06:37:01', '2022-06-27 06:37:01'),
(36, 'public/members_list_file/U4mf1SFZlhOgpArk4nJNJXaiSK6H96Z8NqS2L0Zu.jpg', '3.jpg', 54, 20, '2022-06-27 06:37:01', '2022-06-27 06:37:01'),
(37, 'public/members_list_file/Ua07fQiA58Q3kp5eRD7jSQgGUsFkvwkwB6wy94nL.jpg', '4.jpg', 55, 20, '2022-07-05 04:37:23', '2022-07-05 04:37:23'),
(38, 'public/members_list_file/qTCmYNNitftLs8phcpBuugL6l5ygU36pSxgd0Y13.jpg', '5.jpg', 55, 20, '2022-07-05 04:37:23', '2022-07-05 04:37:23');

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
(120, '2022_06_25_003233_add_remark_to_variable_received_by_engineers_table', 18),
(121, '2022_07_07_085228_create_fixed_assets_vouchers_table', 19),
(122, '2022_07_07_094509_add_voucher_status_to_fixed_assets_table', 19),
(123, '2022_07_07_101451_create_unusable_fixed_assets_table', 20),
(124, '2022_07_18_094044_add_is_banned_to_users_table', 20),
(125, '2022_07_18_102009_add_leave_fields_to_users_table', 21),
(126, '2022_07_18_102638_add_leave_by_to_users_table', 22),
(128, '2022_08_06_201252_create_variable_assets_temporaries_table', 23),
(129, '2022_08_10_131943_create_variable_bq_temporaries_table', 24),
(130, '2022_08_10_133024_add_rate_to_variable_bq_temporaries_table', 25),
(131, '2022_08_17_143410_create_bq_temporaries_table', 26),
(132, '2022_08_17_162959_create_work_scopes_table', 27),
(133, '2022_08_17_173730_create_project_bqs_table', 28),
(135, '2022_08_17_174214_create_bq_items_table', 29),
(136, '2022_08_18_003128_add_project_id_work_scope_id_to_variable_request_infos_table', 30),
(137, '2022_08_18_003221_add_project_id_work_scope_id_to_variable_variable_request_items_table', 30);

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
(8, 'App\\User', 32),
(7, 'App\\User', 38),
(9, 'App\\User', 17),
(8, 'App\\User', 46),
(6, 'App\\User', 8),
(7, 'App\\User', 33),
(7, 'App\\User', 41),
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
(8, 'App\\User', 32),
(7, 'App\\User', 38),
(9, 'App\\User', 17),
(8, 'App\\User', 46),
(5, 'App\\User', 48),
(7, 'App\\User', 7),
(8, 'App\\User', 27),
(8, 'App\\User', 51),
(8, 'App\\User', 30),
(8, 'App\\User', 23),
(7, 'App\\User', 35),
(8, 'App\\User', 35),
(8, 'App\\User', 26),
(6, 'App\\User', 50),
(8, 'App\\User', 53),
(7, 'App\\User', 52),
(8, 'App\\User', 54),
(8, 'App\\User', 40),
(8, 'App\\User', 55),
(8, 'App\\User', 56),
(8, 'App\\User', 25);

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
  `permit_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `processing_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `floor_plan_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plan_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_proposal_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_proposal_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exterior_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archi_exterior_design_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archi_exterior_design_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exterior_design_fees_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `structure_design_fees_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `permit_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permit_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_file_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `customer_id`, `floor_plan_status`, `floor_plan_upload_date`, `quotation_proposal_status`, `quotation_proposal_date`, `exterior_design_fees`, `structure_design_fees`, `archi_exterior_design_status`, `archi_exterior_design_upload_date`, `structure_design_status`, `structure_design_upload_date`, `created_date`, `remark`, `project_status`, `created_at`, `updated_at`, `exterior_design_fees_date`, `structure_design_fees_date`, `approved_status`, `approved_date`, `display_order`, `permit_status`, `permit_upload_date`, `contract_status`, `contract_upload_date`, `processing_file`, `processing_file_upload_date`) VALUES
(2, 2, 'finished', '2022-06-13 13:44:44', NULL, NULL, NULL, NULL, 'finished', '2022-03-17 13:41:36', 'finished', '2022-03-24 11:46:14', '2022-03-15', NULL, 'Proposal', '2022-03-15 09:37:54', '2022-06-13 06:44:44', NULL, NULL, NULL, NULL, 13, NULL, NULL, 'finished', '2022-03-16 22:53:37', NULL, NULL),
(5, 4, 'finished', '2022-03-16 22:50:27', 'finished', '2022-03-16 22:50:45', NULL, NULL, 'finished', '2022-04-04 16:00:22', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:26:46', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 14, NULL, NULL, 'finished', '2022-03-16 22:51:32', NULL, NULL),
(6, 5, 'finished', '2022-04-19 10:42:31', 'finished', '2022-07-10 23:35:46', NULL, 'done', 'finished', '2022-05-09 15:10:14', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 15:34:27', '2022-07-10 16:35:46', NULL, '2022-04-07 16:48:27', NULL, NULL, 7, NULL, NULL, 'finished', '2022-07-09 10:16:05', NULL, NULL),
(7, 6, 'finished', '2022-04-04 16:58:09', 'finished', '2022-07-10 23:32:35', 'done', NULL, 'finished', '2022-06-30 17:00:45', 'finished', '2022-03-25 12:01:33', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:05:40', '2022-07-10 16:32:35', '2022-03-18 09:34:07', NULL, NULL, NULL, 16, NULL, NULL, 'finished', '2022-07-09 10:12:52', NULL, NULL),
(8, 7, 'finished', '2022-03-21 11:38:04', 'finished', '2022-07-10 23:33:36', NULL, NULL, 'finished', '2022-05-24 10:48:51', 'finished', '2022-03-21 13:02:54', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:16:57', '2022-07-10 16:33:36', NULL, NULL, NULL, NULL, 15, NULL, NULL, 'finished', '2022-07-09 10:14:10', NULL, NULL),
(9, 8, 'finished', '2022-04-22 11:03:08', 'finished', '2022-07-10 23:33:11', NULL, NULL, 'finished', '2022-06-20 15:12:49', 'finished', '2022-06-06 11:37:13', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:28:19', '2022-07-10 16:33:11', NULL, NULL, NULL, NULL, 17, NULL, NULL, 'finished', '2022-07-09 10:13:17', NULL, NULL),
(10, 9, 'finished', '2022-03-17 11:37:49', 'finished', '2022-07-10 23:36:18', NULL, NULL, 'finished', '2022-06-15 09:49:00', NULL, NULL, '2022-03-15', NULL, 'Proposal', '2022-03-15 16:38:04', '2022-07-10 16:36:18', NULL, NULL, NULL, NULL, 19, NULL, NULL, 'finished', '2022-07-09 16:08:55', NULL, NULL),
(11, 10, 'finished', '2022-04-01 11:35:54', 'finished', '2022-07-10 23:34:58', NULL, NULL, 'finished', '2022-07-11 10:42:52', 'finished', '2022-03-23 16:00:40', '2022-03-15', NULL, 'Proposal', '2022-03-15 16:49:11', '2022-07-11 03:42:52', NULL, NULL, NULL, NULL, 18, NULL, NULL, 'finished', '2022-07-09 10:15:35', NULL, NULL),
(12, 11, 'finished', '2022-03-16 20:30:43', 'finished', '2022-07-09 16:17:03', NULL, NULL, 'finished', '2022-06-13 09:53:45', 'finished', '2022-03-24 17:15:46', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:04:41', '2022-07-09 09:17:03', NULL, NULL, NULL, NULL, 20, NULL, NULL, 'finished', '2022-07-09 10:21:33', NULL, NULL),
(13, 12, 'finished', '2022-03-16 20:13:53', 'finished', '2022-07-09 15:44:33', NULL, NULL, 'finished', '2022-05-06 10:22:12', 'finished', '2022-03-25 14:04:22', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:10:30', '2022-07-09 08:44:33', NULL, NULL, NULL, NULL, 21, NULL, NULL, 'finished', '2022-03-16 20:16:59', NULL, NULL),
(14, 13, 'finished', '2022-04-05 15:33:30', 'finished', '2022-03-16 20:05:03', NULL, NULL, 'finished', '2022-05-30 15:52:23', 'finished', '2022-05-30 13:23:28', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:18:33', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 22, NULL, NULL, 'finished', '2022-03-16 20:06:52', NULL, NULL),
(15, 14, 'finished', '2022-03-18 09:17:16', 'finished', '2022-03-31 11:45:59', NULL, NULL, 'finished', '2022-05-23 11:33:07', 'finished', '2022-05-30 10:29:44', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:51:50', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 23, NULL, NULL, 'finished', '2022-03-31 11:40:20', NULL, NULL),
(16, 15, 'finished', '2022-04-06 15:45:14', 'finished', '2022-03-16 18:32:29', 'done', NULL, 'finished', '2022-05-10 12:28:56', 'finished', '2022-05-09 11:20:10', '2022-03-16', NULL, 'Proposal', '2022-03-15 17:57:43', '2022-06-07 06:37:23', '2022-03-17 13:59:03', NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 16, 'finished', '2022-03-28 16:02:30', 'finished', '2022-07-09 11:37:04', NULL, NULL, 'finished', '2022-06-07 15:01:39', 'finished', '2022-06-21 09:22:09', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:13:15', '2022-07-09 04:37:04', NULL, NULL, NULL, NULL, 25, NULL, NULL, 'finished', '2022-04-10 00:07:19', 'finished', '2022-03-28 16:15:21'),
(18, 17, 'finished', '2022-03-16 18:19:57', 'finished', '2022-05-28 00:06:12', NULL, NULL, 'finished', '2022-06-09 10:16:35', 'finished', '2022-06-03 13:22:10', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:30:27', '2022-06-09 03:16:35', NULL, NULL, NULL, NULL, 26, NULL, NULL, 'finished', '2022-05-28 00:06:42', NULL, NULL),
(19, 18, 'finished', '2022-03-16 18:03:55', NULL, NULL, NULL, NULL, 'finished', '2022-05-13 09:20:30', 'finished', '2022-05-13 12:32:37', '2022-03-16', NULL, 'Proposal', '2022-03-16 07:39:12', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 19, 'finished', '2022-03-17 11:31:06', 'finished', '2022-03-16 18:12:01', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:09:27', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 20, 'finished', '2022-04-19 12:13:35', NULL, NULL, NULL, NULL, 'finished', '2022-03-26 10:31:25', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 08:33:44', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 21, 'finished', '2022-03-24 10:00:07', 'finished', '2022-04-26 23:11:03', NULL, NULL, 'finished', '2022-07-15 14:57:31', 'finished', '2022-07-08 16:10:27', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:44:19', '2022-07-15 07:57:31', NULL, NULL, NULL, NULL, 30, NULL, NULL, 'finished', '2022-04-26 23:13:41', NULL, NULL),
(23, 22, 'finished', '2022-03-24 13:44:53', NULL, NULL, NULL, NULL, 'finished', '2022-05-05 11:05:44', 'finished', '2022-06-07 14:30:22', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:50:13', '2022-06-07 07:30:22', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 23, 'finished', '2022-03-30 09:57:03', 'finished', '2022-03-16 17:58:29', 'done', 'done', 'finished', '2022-05-09 15:32:29', 'finished', '2022-06-07 14:29:05', '2022-03-16', NULL, 'Proposal', '2022-03-16 08:56:36', '2022-06-07 07:29:05', '2022-03-16 18:00:17', '2022-03-16 18:00:37', NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 24, 'finished', '2022-04-06 15:45:55', NULL, NULL, 'done', NULL, 'finished', '2022-07-13 13:42:02', 'finished', '2022-07-14 14:35:59', '2022-03-16', NULL, 'Proposal', '2022-03-16 09:04:38', '2022-07-15 02:29:38', '2022-03-16 17:52:07', NULL, NULL, NULL, 33, NULL, NULL, 'finished', '2022-07-15 09:29:38', NULL, NULL),
(26, 25, 'finished', '2022-05-08 11:48:28', 'finished', '2022-03-16 17:24:29', NULL, NULL, 'finished', '2022-03-16 17:26:55', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:10:26', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 34, 'finished', '2022-03-16 17:45:37', 'finished', '2022-05-08 11:51:55', NULL, NULL),
(27, 26, 'finished', '2022-03-16 17:19:28', 'finished', '2022-03-16 17:19:55', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:14:19', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 27, NULL, NULL, 'finished', '2022-03-16 17:17:39', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:22:52', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 28, NULL, NULL, 'finished', '2022-03-16 17:14:33', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 09:26:41', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 29, 'finished', '2022-03-18 09:32:20', 'finished', '2022-03-16 23:59:15', NULL, NULL, 'finished', '2022-03-17 10:50:08', NULL, NULL, '2022-03-16', NULL, 'Proposal', '2022-03-16 16:57:25', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 38, NULL, NULL, 'finished', '2022-03-17 00:03:09', NULL, NULL),
(31, 30, 'finished', '2022-03-18 10:14:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:20:51', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 39, NULL, NULL, 'finished', '2022-03-17 00:21:10', NULL, NULL),
(32, 31, 'finished', '2022-03-18 09:34:28', 'finished', '2022-07-11 09:45:05', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:30:01', '2022-07-11 02:45:05', NULL, NULL, NULL, NULL, 40, NULL, NULL, 'finished', '2022-03-17 00:31:23', NULL, NULL),
(33, 32, 'finished', '2022-03-17 13:46:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-17', NULL, 'Proposal', '2022-03-16 17:40:39', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 41, NULL, NULL, 'finished', '2022-03-17 00:41:37', NULL, NULL),
(34, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-03', NULL, 'Proposal', '2022-04-03 09:30:57', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 8, NULL, NULL, 'finished', '2022-04-03 16:32:59', NULL, NULL),
(36, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21', NULL, 'Proposal', '2022-04-21 05:30:51', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21', NULL, 'Proposal', '2022-04-21 05:36:23', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 36, NULL, NULL, 'finished', '2022-06-05 14:26:55', NULL, NULL, 'finished', '2022-07-05 09:51:35', 'finished', '2022-07-08 11:40:15', '2022-04-26', NULL, 'Proposal', '2022-04-26 16:20:58', '2022-07-08 04:40:15', NULL, NULL, NULL, NULL, 11, NULL, NULL, 'finished', '2022-06-05 14:38:55', NULL, NULL),
(39, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-26', NULL, 'Proposal', '2022-04-26 16:23:46', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 38, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-01 16:32:05', 'finished', '2022-06-22 15:10:54', '2022-05-20', NULL, 'Proposal', '2022-05-20 03:14:45', '2022-07-01 09:32:05', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 03:29:42', '2022-06-07 06:37:26', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:24:31', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:33:24', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:41:18', '2022-06-07 06:37:23', NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 44, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-21 16:19:56', NULL, NULL, '2022-05-20', NULL, 'Proposal', '2022-05-20 06:56:06', '2022-06-21 09:19:56', NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 45, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-16 09:39:31', NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 03:01:02', '2022-07-16 02:39:31', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 46, NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-23 13:07:20', 'finished', '2022-07-01 16:42:18', '2022-06-15', NULL, 'Proposal', '2022-06-15 03:26:17', '2022-07-01 09:42:18', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 47, NULL, NULL, 'finished', '2022-07-13 13:11:40', NULL, NULL, 'finished', '2022-07-13 13:16:38', 'finished', '2022-07-11 19:46:43', '2022-06-15', NULL, 'Proposal', '2022-06-15 04:12:23', '2022-07-13 06:16:38', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'finished', '2022-07-13 13:12:12', NULL, NULL),
(49, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:26:44', '2022-06-15 04:26:44', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:30:52', '2022-06-15 04:30:52', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:31:21', '2022-06-15 04:31:21', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:37:55', '2022-06-15 04:37:55', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 04:51:56', '2022-06-15 04:51:56', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 05:37:11', '2022-06-15 05:37:11', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 05:47:51', '2022-06-15 05:47:51', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-15', NULL, 'Proposal', '2022-06-15 06:51:10', '2022-06-15 06:51:10', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 54, 'finished', '2022-07-02 12:21:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02', NULL, 'Proposal', '2022-07-02 05:12:49', '2022-07-02 05:21:47', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 55, NULL, NULL, 'finished', '2022-07-04 11:57:43', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02', NULL, 'Proposal', '2022-07-02 06:39:36', '2022-07-04 05:07:09', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'finished', '2022-07-04 12:07:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_users`
--

CREATE TABLE `projects_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projects_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(17, 32, 29, '', '2022-05-29 13:41:02', '2022-05-29 13:41:02'),
(18, 17, 44, '', '2022-05-29 13:45:59', '2022-05-29 13:45:59'),
(19, 9, 36, '', '2022-05-29 13:46:55', '2022-05-29 13:46:55'),
(20, 18, 47, '', '2022-05-30 09:05:55', '2022-05-30 09:05:55'),
(21, 11, 51, '', '2022-06-28 02:16:15', '2022-06-28 02:16:15'),
(22, 33, 49, '', '2022-06-28 02:16:48', '2022-06-28 02:16:48'),
(23, 38, 53, '', '2022-06-28 02:17:46', '2022-06-28 02:17:46'),
(24, 7, 54, '', '2022-06-28 02:18:51', '2022-06-28 02:18:51'),
(25, 38, 36, '', '2022-06-29 04:45:30', '2022-06-29 04:45:30'),
(26, 38, 36, '', '2022-06-29 04:45:43', '2022-06-29 04:45:43'),
(27, 8, 40, '', '2022-06-29 05:00:31', '2022-06-29 05:00:31'),
(28, 15, 25, '', '2022-06-30 06:30:52', '2022-06-30 06:30:52'),
(29, 12, 25, '', '2022-06-30 06:31:42', '2022-06-30 06:31:42'),
(30, 38, 55, '', '2022-07-05 04:49:14', '2022-07-05 04:49:14'),
(31, 38, 55, '', '2022-07-05 04:49:17', '2022-07-05 04:49:17'),
(32, 58, 29, '', '2022-07-08 08:08:45', '2022-07-08 08:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `project_bqs`
--

CREATE TABLE `project_bqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `work_scope_id` int(11) DEFAULT NULL,
  `bq_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_bqs`
--

INSERT INTO `project_bqs` (`id`, `project_id`, `work_scope_id`, `bq_user`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2022-08-17 11:21:52', '2022-08-17 11:21:52'),
(2, 2, 2, 1, '2022-08-17 11:22:29', '2022-08-17 11:22:29'),
(3, 5, 1, 1, '2022-08-17 17:29:19', '2022-08-17 17:29:19'),
(4, 5, 2, 1, '2022-08-17 17:29:27', '2022-08-17 17:29:27'),
(5, 5, 3, 1, '2022-08-17 17:29:36', '2022-08-17 17:29:36'),
(6, 8, 1, 1, '2022-08-17 18:22:13', '2022-08-17 18:22:13');

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
(97, 11, 32, 0, 1, 1, '2022-06-24 09:17:37', '2022-06-24 09:17:37', 23, 21, 0),
(98, 42, 104, 0, 250, 250, '2022-07-02 07:02:10', '2022-07-02 07:02:10', 39, 1, 0),
(99, 10, 103, 0, 1, 1, '2022-07-09 02:45:50', '2022-07-09 02:45:50', 38, 4, 0),
(100, 42, 107, 0, 1, 1, '2022-07-16 02:58:11', '2022-07-16 02:58:11', 42, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotationproposals`
--

CREATE TABLE `quotationproposals` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quotation_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(31, 38, 3, 'public/quotationproposal/0mKbpx50BTr3hilg0wrdDJ9hDic2R2TD12XWmSiv.pdf', 'Ko Aung Zaw Latt Final Quotation ( 30.5.2022 ).pdf', NULL, '2022-06-05', '14:26:55', '2022-06-05 07:26:55', '2022-06-05 07:26:55'),
(32, 58, 9, 'public/quotationproposal/BjHgJ22d0XMaSQqYirjKNVdCriGWRsnDP1Gk0V7d.pdf', 'Ko Thu Ya Combined Update_1656911313.pdf', NULL, '2022-07-04', '11:49:09', '2022-07-04 04:49:09', '2022-07-04 04:49:09'),
(33, 58, 9, 'public/quotationproposal/g2BxZYQykvnuxhbz1CecQIu47xKZZ5U6apJZWkzt.pdf', 'Ko Thu Ya Combined Update_1656911313.pdf', NULL, '2022-07-04', '11:57:43', '2022-07-04 04:57:43', '2022-07-04 04:57:43'),
(34, 11, 9, 'public/quotationproposal/cvytsLxBB8gvRAq6V202LrPNM7ys78UqW99LNjOT.pdf', 'Ko Tin Lat ( front area smart wood decoration ) 8.7.2022.pdf', NULL, '2022-07-09', '10:02:51', '2022-07-09 03:02:51', '2022-07-09 03:02:51'),
(35, 11, 9, 'public/quotationproposal/uV8s9p1ELtd8PCxRaSZi6y8qmjWNo0mC9x6wIlzp.pdf', 'Ko Tin Lat ( additional & VO ) client confirm - 24.6.2022_1656991088.pdf', NULL, '2022-07-09', '10:03:07', '2022-07-09 03:03:07', '2022-07-09 03:03:07'),
(36, 9, 9, 'public/quotationproposal/DKwAnLgkuWHKI6KOXSogmCoFjVAWfAbsB1J21xH1.pdf', 'Ko Khant Si Thu Decorated Area Confirm.pdf', NULL, '2022-07-09', '10:31:56', '2022-07-09 03:31:56', '2022-07-09 03:31:56'),
(37, 8, 9, 'public/quotationproposal/xt73PCdiViay44xzbUFghTuxxlbatjujgMeldTae.pdf', 'Ko San Htoo (Window) Confirm.pdf', NULL, '2022-07-09', '10:33:03', '2022-07-09 03:33:03', '2022-07-09 03:33:03'),
(38, 8, 9, 'public/quotationproposal/m6jN7gNs5iYcAVF7mLRlZUnzoC7eYeRwN2hc1Lrt.pdf', 'Ko San Htoo (Door).pdf', NULL, '2022-07-09', '10:33:24', '2022-07-09 03:33:24', '2022-07-09 03:33:24'),
(39, 8, 9, 'public/quotationproposal/iiEvM3n7Kn4mzqIE89S30RuGH21iXW5XerFaQq4z.pdf', 'Ko San Htoo (Fencing) 3.pdf', NULL, '2022-07-09', '10:33:41', '2022-07-09 03:33:41', '2022-07-09 03:33:41'),
(40, 17, 9, 'public/quotationproposal/YbqAMERl7btwXkxmuCaVaIwPTWDYGqjALIpO4O1f.pdf', 'Daw Khin Aye Aye Khine Studio Quotation Updated.pdf', NULL, '2022-07-09', '11:36:51', '2022-07-09 04:36:51', '2022-07-09 04:36:51'),
(41, 17, 9, 'public/quotationproposal/kgC3HToAiSuOpERRFfxylntbiIMGwlL8QfKK5vMA.pdf', 'Fencing Work Aunty Aye.pdf', NULL, '2022-07-09', '11:37:04', '2022-07-09 04:37:04', '2022-07-09 04:37:04'),
(42, 13, 9, 'public/quotationproposal/B2SOGEpbb6LG5voSLyvMCWdvCdl1sBzQpW4FirZh.pdf', 'Ma Hnin Wutt Yee Phyo (Door).pdf', NULL, '2022-07-09', '15:44:33', '2022-07-09 08:44:33', '2022-07-09 08:44:33'),
(43, 9, 9, 'public/quotationproposal/y5uGG1FtAqcZTu6SPzVbAaclVo9Bw8r632lSAUyY.pdf', 'Ko Khant Si Thu (Fencing).pdf', NULL, '2022-07-09', '15:50:09', '2022-07-09 08:50:09', '2022-07-09 08:50:09'),
(44, 10, 9, 'public/quotationproposal/dRZ0V15FjEvHMUKNQYDbP9lIJyMnnJ36jno6dQJV.pdf', 'U Wint Naing (Fencing) 3.pdf', NULL, '2022-07-09', '15:58:20', '2022-07-09 08:58:20', '2022-07-09 08:58:20'),
(45, 10, 9, 'public/quotationproposal/Vx3BKxcFO2fKT893fCJclkOgN3F53X4nUgddnvDy.pdf', 'U Wint Naing (M&E Work) Final.pdf', NULL, '2022-07-09', '16:13:55', '2022-07-09 09:13:55', '2022-07-09 09:13:55'),
(46, 12, 9, 'public/quotationproposal/Wr1XwjGQns0HtYgpDL7dRsvQFmVwpI6zwGRNcXLx.pdf', 'Revised 1 Ma Zin Wah (Door & window) Quotation.pdf', NULL, '2022-07-09', '16:17:03', '2022-07-09 09:17:03', '2022-07-09 09:17:03'),
(47, 7, 9, 'public/quotationproposal/vB7Z4uCh4AkTqWIj8r1VVGHKvFDiTRFEPzXLa8Q1.pdf', 'Ko HMT (Mechanical) Combine_1651164717_1656299191.pdf', NULL, '2022-07-10', '23:32:35', '2022-07-10 16:32:35', '2022-07-10 16:32:35'),
(48, 9, 9, 'public/quotationproposal/zVqolU2h05rYVcmWmhQ5lwM8xxkBS1Sw1gX74C3V.pdf', 'Ko Khant Si Thu M&E Work (Combine) Update.pdf', NULL, '2022-07-10', '23:33:11', '2022-07-10 16:33:11', '2022-07-10 16:33:11'),
(49, 8, 9, 'public/quotationproposal/zgDXLnD1RGzlluZMkRT15O6kdtPJek0qd07q7mB3.pdf', 'Ko San Htoo M&E Work (Combine).pdf', NULL, '2022-07-10', '23:33:36', '2022-07-10 16:33:36', '2022-07-10 16:33:36'),
(50, 11, 9, 'public/quotationproposal/DiUemZTz54eNAeOOWvBCnrXLYOJTl0NpUlD1NwiE.pdf', 'M&E combined - 14.2.2022 revised.pdf', NULL, '2022-07-10', '23:34:58', '2022-07-10 16:34:58', '2022-07-10 16:34:58'),
(51, 6, 9, 'public/quotationproposal/KiMBO5bs7WRn0otILapkI1dAGmugMxJkKJYTWt8N.pdf', 'Ma Waddy (M&E Work).pdf', NULL, '2022-07-10', '23:35:46', '2022-07-10 16:35:46', '2022-07-10 16:35:46'),
(52, 10, 9, 'public/quotationproposal/BZYfZgLj2FCqFTNEuixw3o8LbKhRVtPFkFHvkLE3.pdf', 'U Wint Naing (M&E Work) Final.pdf', NULL, '2022-07-10', '23:36:18', '2022-07-10 16:36:18', '2022-07-10 16:36:18'),
(53, 32, 9, 'public/quotationproposal/RooTLurpddpFn1FY2VQaMWlyK5WMbIyoJO6Vql2A.pdf', 'Ko Kyaw Zayyar Tun (Build in Furniture) with Lot Revised 6 (Combine).pdf', NULL, '2022-07-10', '23:39:41', '2022-07-10 16:39:41', '2022-07-10 16:39:41'),
(54, 32, 9, 'public/quotationproposal/9eogmkOEZXkLPOjKYsEKx3PKQsDaemw9nzTZsUWN.pdf', 'Ko Kyaw Zayyar Tun (Build in Furniture) with Lot Revised 7 (Combine)_1657508662.pdf', NULL, '2022-07-11', '09:45:05', '2022-07-11 02:45:05', '2022-07-11 02:45:05'),
(55, 48, 9, 'public/quotationproposal/P54cyF5E6DReMZsKcnljEtYRhqopXZaQde1PtRnH.pdf', 'Ma Thet Thet Wai Quotation (Final Contract).pdf', NULL, '2022-07-13', '13:11:40', '2022-07-13 06:11:40', '2022-07-13 06:11:40');

-- --------------------------------------------------------

--
-- Table structure for table `received_by_engineers`
--

CREATE TABLE `received_by_engineers` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_info_id` int(11) DEFAULT NULL,
  `received_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `received_by_engineers`
--

INSERT INTO `received_by_engineers` (`id`, `request_info_id`, `received_status`, `received_date`, `user_id`, `created_at`, `updated_at`) VALUES
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
  `received_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `transfer_from_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse_id` int(11) DEFAULT NULL,
  `other_site_id` int(11) DEFAULT NULL,
  `received_by_engineer_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qs_team_check_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_check_sent_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projects_users_id` int(11) DEFAULT NULL,
  `request_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status_user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_infos`
--

INSERT INTO `request_infos` (`id`, `request_code`, `request_date`, `work_scope`, `user_id`, `project_id`, `customer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `logistics_team_check_sent_status`, `transfer_from_status`, `main_warehouse_id`, `other_site_id`, `received_by_engineer_status`, `received_date`, `qs_team_check_date`, `logistics_team_check_sent_date`, `projects_users_id`, `request_status`, `request_status_date`, `request_status_user`) VALUES
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
(35, 'FR-000035', '2022-06-24 03:00 PM', 'Site Use', 47, 0, 17, '2022-06-24 08:05:18', '2022-06-24 08:51:23', 'accept', '2022-06-24 15:21:43pm', 'finished', 'finished', 'warehouse', 1, 0, 'received', '2022-06-24 03:00 PM', '2022-06-24 15:29:32pm', '2022-06-24 15:46:22pm', 20, NULL, NULL, NULL),
(36, 'FR-000014', '2022-06-27 01:27 PM', 'Beam & slab', 44, 0, 16, '2022-06-27 06:33:17', '2022-06-27 06:33:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL),
(37, 'FR-000015', '2022-06-27 01:27 PM', 'Beam & slab', 44, 0, 16, '2022-06-27 06:33:20', '2022-06-27 06:33:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL),
(38, 'FR-000016', '2022-07-01 01:37 PM', 'GF compaction work.', 28, 0, 2, '2022-07-01 06:37:54', '2022-07-09 02:45:50', 'accept', '2022-07-09 09:45:10am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 09:45:50am', NULL, 8, NULL, NULL, NULL),
(39, 'FR-000017', '2022-07-02 10:45 AM', '1 st Floor Slab', 37, 0, 21, '2022-07-02 03:45:51', '2022-07-02 07:02:10', 'accept', '2022-07-02 14:02:02pm', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-02 14:02:10pm', NULL, 13, NULL, NULL, NULL),
(40, 'FR-000018', '2022-07-02 10:53 AM', 'GF-FF (12ft hight)', 47, 0, 17, '2022-07-02 03:55:21', '2022-07-02 03:55:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL),
(41, 'FR-000019', '2022-07-03 09:00 AM', 'Patty work', 54, 0, 6, '2022-07-02 13:46:50', '2022-07-02 13:46:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL),
(42, 'FR-000020', '2022-07-11 05:20 PM', 'To Compact Ground Floor', 32, 0, 12, '2022-07-10 10:21:14', '2022-07-16 02:58:11', 'accept', '2022-07-16 09:58:03am', 'finished', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 09:58:11am', NULL, 11, NULL, NULL, NULL),
(43, 'FR-000021', '2022-07-14 11:09 AM', 'Ground tank work', 26, 0, 4, '2022-07-14 04:10:11', '2022-07-14 04:10:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL),
(44, 'FR-000022', '2022-07-17 07:29 PM', 'Wall Tiling work', 54, 0, 6, '2022-07-17 12:30:23', '2022-07-17 12:30:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL);

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
  `fixed_asset_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(2, '4', '1', 22, 2, '2022-04-30 05:26:01', '2022-04-30 05:26:01'),
(3, '4', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(4, '4', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(5, '1', '178', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(6, '5', '2', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(7, '14', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(8, '7', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(9, '6', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(10, '18', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(11, '11', '1', 36, 3, '2022-06-25 10:44:43', '2022-06-25 10:44:43'),
(12, '4', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(13, '4', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(14, '1', '178', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(15, '5', '2', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(16, '14', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(17, '7', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(18, '6', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(19, '18', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(20, '11', '1', 36, 4, '2022-06-25 10:45:01', '2022-06-25 10:45:01'),
(21, '4', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(22, '4', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(23, '1', '178', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(24, '5', '2', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(25, '14', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(26, '7', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(27, '6', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(28, '18', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(29, '11', '1', 36, 5, '2022-06-25 10:46:30', '2022-06-25 10:46:30'),
(30, '4', '1', 36, 7, '2022-07-13 03:25:28', '2022-07-13 03:25:28');

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
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_item_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `transfer_from` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_to_warehouse_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `engineer_return_info_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `sending_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `structure_design_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(36, 40, 6, 'public/structuredesign/4T76TIJu74DbU6EQLhoimM8MR7idke46PBkzZ6kC.rar', 'Ko Kyaw Zin Min-Strudwg-R0-22.6.2022.rar', NULL, '2022-06-22', '15:10:54', '2022-06-22 08:10:54', '2022-06-22 08:10:54'),
(37, 47, 6, 'public/structuredesign/Um9Z4zd2qT0kgGM0uo9mZUkAMYNH3q0byjyhVSRA.rar', 'Ko Soe Lin Tun-Strudwg-R0-28.6.2022.rar', NULL, '2022-06-28', '17:31:34', '2022-06-28 10:31:34', '2022-06-28 10:31:34'),
(38, 47, 6, 'public/structuredesign/fEljPR4KaPCS72uzqUL6OS0z9mIL8ORKxtJ6W92R.rar', 'Ko Soe Lin Tun-Strudwg-R1-1.7.2022.rar', NULL, '2022-07-01', '16:42:18', '2022-07-01 09:42:18', '2022-07-01 09:42:18'),
(39, 38, 6, 'public/structuredesign/ykfRlp8FYaF8TgcTaN87u0ydb0ZVvjv7EUcBDbNf.rar', 'Ko Aung Zaw Latt-Strudwg-R1-5.7.2022.rar', NULL, '2022-07-06', '09:23:43', '2022-07-06 02:23:43', '2022-07-06 02:23:43'),
(40, 38, 6, 'public/structuredesign/CVyYOHsdPAdkCw3ICu9AInekEs2X0ucHiYnL1XMw.rar', 'Ko Aung Zaw Latt-Strudwg-R2-8.7.2022.rar', NULL, '2022-07-08', '11:40:15', '2022-07-08 04:40:15', '2022-07-08 04:40:15'),
(41, 22, 6, 'public/structuredesign/jHCkqOmvP60p4myLyPdjiMRcYOlNOMnrnluh4T5T.rar', 'Ma Sulat Kyaw Min-Structure-R2-8.7.2022.rar', NULL, '2022-07-08', '16:10:27', '2022-07-08 09:10:27', '2022-07-08 09:10:27'),
(42, 48, 6, 'public/structuredesign/jfvxS7t2KQepTMFQxfljUyx7Z9TbwgOMWqHES2MK.rar', 'Daw Thet Thet Wai-Strudwg-R0-9.7.2022.rar', NULL, '2022-07-09', '15:44:32', '2022-07-09 08:44:32', '2022-07-09 08:44:32'),
(43, 48, 6, 'public/structuredesign/tYWsCvMyXMFobdObAF7IVFCbEoHq36L1ErNkG7wA.rar', 'Daw Thet Thet Wai-Strudwg-R0-11.7.2022.rar', NULL, '2022-07-11', '17:20:56', '2022-07-11 10:20:56', '2022-07-11 10:20:56'),
(44, 48, 6, 'public/structuredesign/JlQ8paaYOBdFJ1atBHfp9EGFhNhlXDq7o25Np3Wc.rar', 'Daw Thet Thet Wai-Strudwg-R0-11.7.2022.rar', NULL, '2022-07-11', '19:46:43', '2022-07-11 12:46:43', '2022-07-11 12:46:43'),
(45, 25, 6, 'public/structuredesign/kxWY9PMavdemFteD8ZqQTwfzfFvkAn8S2Aemr0Cp.rar', 'U Myat Ko Ko (Mayangone) -Structure-R1-14.7.2022.rar', NULL, '2022-07-14', '14:35:59', '2022-07-14 07:35:59', '2022-07-14 07:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `structure_design_fees`
--

CREATE TABLE `structure_design_fees` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `structure_design_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `testing` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_infos`
--

CREATE TABLE `transfer_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transfer_from` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse_id` int(11) DEFAULT NULL,
  `sent_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transferred_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `unusable_fixed_assets`
--

CREATE TABLE `unusable_fixed_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_asset_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `gender` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `contact_person` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_contact` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `join_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_type` int(11) DEFAULT NULL,
  `last_login_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_ip` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_front` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nrc_back` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `members_list_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_banned` int(11) NOT NULL DEFAULT 1,
  `leave_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_by` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `employee_id`, `phone`, `nrc_number`, `gender`, `address`, `department_id`, `contact_person`, `emergency_contact`, `passport_photo`, `join_date`, `employment_type`, `last_login_at`, `last_login_ip`, `agent`, `nrc_front`, `nrc_back`, `members_list_file`, `other_file`, `is_banned`, `leave_date`, `leave_remark`, `leave_by`) VALUES
(1, 'Admin', 'admin@skg.com', NULL, '$2y$10$iY.PTOOlASzaLY549BHGH.aQorS3bbzjX7P9wcQ2QbJH/sGWI0aXa', NULL, '2022-02-14 04:00:05', '2022-08-17 14:57:42', 'EMP-00001', '09455165415', '-', 'male', 'YGN', 1, NULL, NULL, 'public/passport/yfI6n3suGBsHHNAoFiNDKV2fVIm4EqkN2Kdmdswg.jpg', '2022-06-01 12:00 AM', 0, '2022-08-17 21:27:42', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(2, 'U AUNG MYO HTUT', 'aungmyohtut.skgroup@gmail.com', NULL, '$2y$10$jYBSEwxV5Fv0WkfDbpwz7.8J4L5nL.qNq4AJ7LXStOWxerGMssZ.S', 'CLb9kS8OAWpQUTVj1smvl85KY7LFRhhCfzQbpo6lyG2JoG00EhBy3f6pHufo', '2022-02-14 04:00:32', '2022-07-18 03:57:55', 'EMP - 00002', '09772746336', '12/OuKaTa(N)178191', 'male', 'အမှတ် (၂၄၆)၊ ၆ လမ်း၊ ၁၁ရပ်ကွက်.‌တောင်ဉက္ကလာပမြို့နယ်၊ ရန်ကုန်မြို့', 1, NULL, NULL, 'public/passport/Ow2ZsVWJ8GcLThEMnvJsrJUY2JJYFBxLVGctygx2.jpg', '2020-12-21 12:00 AM', 0, '2022-06-01 11:51:59', '103.217.156.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'public/photo/PJHizF8U2stJ9aTVEKMOUdNBkyCHjoOG5iVxzbbT.jpg', 'public/photo/GiyMPenfBnPMJRjUlM2VT8LNTRfvRwZVsCPpJUO4.jpg', '', NULL, 0, '2022-07-18 10:27 AM', 'Ok', '1'),
(3, 'Daw Pearl Yadanar Soe', 'pearl.skgroup@gmail.com', NULL, '$2y$10$5ZtZj/NPdW8QTxYw8jHuT.Yt6GEd.2PSy0h.iBmGbOha9piqpfYge', 'w0qC5zZnJI4ZlSTqv1CBlLGe0LtbNpIwnVGtMcN4aS0ZoA1dBl9ky6xG8uQL', '2022-03-07 17:39:27', '2022-06-30 08:14:05', 'EMP-00003', '09751446005', '12/KaThaNa (N)050585', 'female', 'YGN', 4, NULL, NULL, 'public/passport/fQkbrpdxdMDgfzNLa5UTActUa1IKRXuHpnb3PUdA.jpg', '2022-06-03 12:00 AM', 0, '2022-06-30 15:14:05', '8.30.234.3', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'public/photo/7NoIpz2lecBCK0c7ieif98QD1Iyskt4K4kEYVLvA.jpg', 'public/photo/BYGiccJ0mDtxSD8E5dJWaVZyq5crrS8USdoqFWJE.jpg', '', NULL, 1, NULL, NULL, NULL),
(4, 'Archi Myo Thet', 'myothet.skgroup@gmail.com', NULL, '$2y$10$o.55w0i12oOqRzvuJ/PZv.8ioInfp4b5LmqwFrglsMDAWmwBtl7iG', 'YwEkUw3QZI6scWBld8C7nRiNYfSV8ziKXj78C0EAlhnarfq8uqasHn8QbVyN', '2022-03-07 18:22:19', '2022-07-17 12:57:08', 'EMP-00004', '09751446090', '12/Thakata(N)180068', 'male', 'YGN', 6, NULL, NULL, 'public/passport/MPq9DwBPXDQmHdeiIJnjJ90P9x5PB8TLpNDhraIX.jpg', '2022-06-01 12:00 AM', 0, '2022-07-17 19:57:08', '45.125.4.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101 Firefox/102.0', 'public/photo/OVHb7FxrbthLoYex1a5BdVM28pfbvKdZS9LMF1KF.jpg', 'public/photo/1BvWI4vfsZA2MaPvZxHiDUQgp84y0e3Ooep3DJ6B.jpg', '', NULL, 1, NULL, NULL, NULL),
(5, 'Ma Hpoo Ngone Kyaw', 'hpoongone.skgroup@gmail.com', NULL, '$2y$10$wbCsGmqe7rSeDa.GmCsYQeqgknZdelTsPQIQ/ytaKbBgV8tD5baEO', 'JPqxF8s1SwYOSgYy0a6ThzHgQQrWjHSlcA0YkI5qFLM6PhcZf21WEoDFPJG7', '2022-03-11 09:14:52', '2022-06-07 07:34:54', 'EMP - 00005', '09751446006', '12/TaMaNa(N)119539', 'female', 'No 127/5, PaDaMyar Street, Thinkangyun Tsp.', 4, NULL, NULL, 'public/passport/qxi2Imx0vbnnT3u8AkcZZOnIS9hP2LfXNbukyDUn.jpg', '2022-05-31 12:00 AM', 0, NULL, NULL, NULL, 'public/photo/oW8ABZD4n4NuirdWQ7Oh7cDUMtuUQgv24jL9dFXL.jpg', 'public/photo/XYSDDDuoIvL6QSBapF8cEr8V7LpNKKXqWw9bJM2X.jpg', '', NULL, 1, NULL, NULL, NULL),
(6, 'Ma Nandar Hlaing', 'nandar.skgroup@gmail.com', NULL, '$2y$10$3fyamQpVSU/glzf9si7DJuZwHP4Ii7lVyRBRrqykV2TLwho1HxRLC', 'p0tUdZfhtyuiclgbYWwAsRrWiFDvlcbXMLmA5dcJj0d8rukE0KoYLvOZvBgB', '2022-03-15 09:03:34', '2022-07-11 12:04:57', 'EMP - 00006', '09751445235', '12/Thagaka(N)179672', 'female', 'No. 74, Min Nanda Road, Dawpone', 7, NULL, NULL, 'public/passport/0Cqn6y195bWSFRYjZAU2G7JaE1SNq5waAT0gRvj4.jpg', '2022-06-06 12:00 AM', 0, '2022-07-11 19:04:57', '103.197.198.60', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'public/photo/X8lyowgxFKONykTWPaVFVG1TGpjNiObghpb1KmIU.jpg', 'public/photo/AkoyPOeq1nSIKb9WfNLFMVMjal12vjfjX6Ow0byv.jpg', '', NULL, 1, NULL, NULL, NULL),
(7, 'Ko Nyan Lin Htet', 'nyanlinnhtet.skgroup@gmail.com', NULL, '$2y$10$JogAQY0yFfB3XA.5xUkhHOdzgjhIkvpCcgnjbRnOGR33vwCrArCUq', '9u3HiDMdMrjAPeNqg4vkDOFBt9kyQ7SFi7UTypIZMsbTmD4HcvaDRw9kBN8g', '2022-03-15 09:05:41', '2022-06-16 03:01:11', 'EMP - 00007', '09795154291', '12/ThaKaTa(N)162871', 'male', 'YGN', 8, NULL, NULL, 'public/passport/xmeWM9vKoLl8F3AZsYF9itmvjeruAdovbGk8gesg.jpg', '2022-06-16 10:00 AM', 0, '2022-06-01 13:31:58', '103.217.156.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36', 'public/photo/ygxZTM2QesuVjSryQlck8CMHFqP0u7p1ix06a9eQ.jpg', 'public/photo/QCMUgILO9eSrqHm9XCc9TAGeuKp6t9MPMmrLrFLb.jpg', '', NULL, 1, NULL, NULL, NULL),
(8, 'marketing', 'marketing@gmail.com', NULL, '$2y$10$oCUHBB./6fbUQkiAoKkJ6OPq0yW9sYBFEsoNYXjrdyrFVq/Q1LqmO', NULL, '2022-03-15 09:06:40', '2022-03-15 09:06:40', 'EMP - 00008', '09123123123', '5/abc(n)009998', 'male', 'YGN', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(9, 'Ma Ei Chan Myae Khin', 'eichan.skgroup@gmail.com', NULL, '$2y$10$XMR2/iEH8DGCHdGujGCesOnDP8QcHQeOEhUOmD0sDdFm2BFKh3JdW', 'dQXdPonjqVTGVXfFqlNFDJ31ETGZdvMQUpZi5ARWexJVLZKFeQrgY20hY8tN', '2022-03-15 09:07:37', '2022-06-28 06:24:26', 'EMP - 00009', '09977820259', '12/KaTaTa(N)032894', 'female', 'YGN', 4, 'Daw Kay Ti Hlaing', '09795355150', 'public/passport/yqS4btzuzTPYZEMFAbCYBzRqn680VhCXsuhFuKd5.jpg', '2022-01-17 12:00 AM', 0, '2022-06-28 13:24:26', '103.217.156.142', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/5QWU34RyACFyY3LhWZBhZFcotSoRKyq5ulUfrXHr.jpg', 'public/photo/VTvhPTfyeurzWQ91LeHKvoknlq4jVjNWh6jrFcWA.jpg', '', NULL, 1, NULL, NULL, NULL),
(10, 'Ma Moh Moh', 'mohmoh.skgroup@gmail.com', NULL, '$2y$10$BtSiWTSfsBAGtFZxj3qUd.oJc.3E0VMEF/aOfJk45/7wwZANHlCJS', 'yqsMQ92HwGrstjsadiNB9r2hrGnNELicrcg4FlGKtCaI9Vd4U1hIr8dmCuq3', '2022-03-15 09:14:23', '2022-06-07 07:41:15', 'EMP - 00010', '09798868709', '14/PaThaNa(N)201615', 'female', 'No.21/33, Zaw Gyi Street, 9 Quarter, Lanmadaw Tsp, Yangon', 8, NULL, NULL, 'public/passport/B5Al8mv3UylVZy93AygKarLQJBIEMRCjCHw53hOk.jpg', '2022-06-01 12:00 AM', 0, '2022-06-01 10:05:00', '103.217.156.204', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.62 Safari/537.36', 'public/photo/HOwZewdwB3jnFswJgBxgAx82rbyCnb8RxGygajZ8.jpg', 'public/photo/cVexxEGQFYugw7OtjNQ0EoBQzr2uvpFaq3cmAx2y.jpg', '', NULL, 1, NULL, NULL, NULL),
(11, 'Ma Pan Chue Chue', 'chuechue.skgroup@gmail.com', NULL, '$2y$10$BRJIsHrGNeKVTLYWskXzneNivP2Yx2g0V.fWhkmPSE3e4FE2pW/JC', NULL, '2022-03-15 10:38:45', '2022-07-16 07:05:33', 'EMP - 00011', '09751445863', '9/TaTHaNa(N)156794', 'female', 'No.345, Kantaw Street, Thingangyun Township', 8, NULL, NULL, 'public/passport/JQURAODA5V8AisNXQT8XtO4UPGAAkvSoftBsJYgM.jpg', '2022-06-01 12:00 AM', 0, '2022-07-16 14:05:33', '103.135.217.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'public/photo/xooXkv0fSm0pOqbAFQTnVzOkRmHhxBzmquj7A56f.jpg', 'public/photo/JPL62o07VjB3ep9tZFsMV4n0Q20ycB4vJMfsmMd2.jpg', '', NULL, 1, NULL, NULL, NULL),
(12, 'Ma Zar Kyi Moe Naing', 'zarkyi.skgroup@gmail.com', NULL, '$2y$10$3reXW63AOjGCAKY9S7F2yeKDsk1b.lEMgpnX06r3QW7cRvRZW/QjC', '1xj6HVOT59jNjLcw4SLQbyKvyVESWro6iDjQaixjGQOXOTQVxyLeUP2EqNQ5', '2022-03-17 04:03:41', '2022-07-15 07:56:33', 'EMP - 00012', '09772177564', '12/DaGaMa(N)035420', 'female', 'No.(331), Bayintnaung Rd, 31 Quarter, North Dagon Tsp', 6, NULL, NULL, 'public/passport/UEBc42PwAkcwFcwK3X8AeJm2lJDdPWrecVDUWGbU.jpg', '2022-06-01 12:00 AM', 0, '2022-07-15 14:56:33', '103.217.156.145', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'public/photo/3Xez3oB4R5FskwptdXOgiCOrNipa56Qfn1qzeCYI.jpg', 'public/photo/sEgMAgtn6B9XKQRst79xxWUgMvzfmHDUmei3kzAn.jpg', '', NULL, 1, NULL, NULL, NULL),
(13, 'Ko Ye Htet Min', 'yehtetmin.skgroup@gmail.com', NULL, '$2y$10$ZkEkbbvYkTzFtShBQVaeAOPID4EUiizlcQSErpZANHAiIiuyGQyxq', 'vzds3wCIdaUHoK1AWU3wHvp88nurYIzzjrdoLQajciDCFqCU2ksBs7TYni6I', '2022-03-17 04:05:16', '2022-07-14 06:28:38', 'EMP - 00013', '0943096345', '12/BaThaHta(N)040271', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 6, NULL, NULL, 'public/passport/7VpIWVmnet7AMnJvkYx0Tvq9mNPGtHEOuSFd8LE5.jpg', '2022-06-07 12:00 AM', 0, '2022-06-29 10:40:53', '103.217.156.133', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:101.0) Gecko/20100101 Firefox/101.0', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(14, 'Ko Chan Myae Zaw', 'chanmyae.skgroup@gmail.com', NULL, '$2y$10$8AyZUb63vY5l4KAS90aOJ.vyLjxJeDFK5IB2.PCZy60AAXgpxh5xK', 'MJmtK1OCtYJAOaBkXoax3ZnZmPpwDX9tu24r94uIBpL2Nuv0Ux5wPPnrY8mL', '2022-03-17 04:08:50', '2022-06-21 08:18:38', 'EMP - 00014', '09751445993', '7/WaMaNa(N)171834', 'male', 'No.(10), Alone Street, Alone Township, Yangon', 2, NULL, NULL, 'public/passport/6Albzb2z3Mj5HLvwcJTwTPyl8YJuBg6RJkhTeFWw.png', '2022-05-29 12:00 AM', 0, '2022-06-21 15:18:38', '103.217.156.147', 'Mozilla/5.0 (Linux; Android 10; MI 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.125 Mobile Safari/537.36', 'public/photo/BmnMmBXmvbOYeNCJFZ0LREM16aJi4J09onlpMdCb.jpg', 'public/photo/X5SlzDwDjqHLQ9jSr6jJOexXor9COAQX8ko8cKe2.jpg', '', NULL, 1, NULL, NULL, NULL),
(15, 'Ko Thein Zaw Win', 'theinzawwin.skgroup@gmail.com', NULL, '$2y$10$NphAKBtZGN/HH4ziQ2XTL.IXXYm09TRcZYhYhFCKcpLycBTfJfDge', 'o7Tl7cqDYOyv1kOoRKsDDkQcNNNg8gdzfF8357fQJMPDVcv6tj4ZSzmc2Zip', '2022-03-17 04:11:30', '2022-06-07 07:56:25', 'EMP - 00015', '09964105346', '12/PaBaTa(N)034640', 'male', 'No. (9), 6B, 166 Street, Tamwe Township.', 2, NULL, NULL, 'public/passport/vtRypvpjdgUAnqINHx9t5GeUbqPQlzuLr3TQwpqH.jpg', '2022-05-30 12:00 AM', 0, '2022-05-30 12:05:24', '103.217.156.147', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/KLflV8IiDXnIIPqL1DniJV60GYUcB5axjJn1jeDQ.jpg', 'public/photo/af79Qagb9SYDxOX3c674OVtr8XpaEQVnHiG4NoEH.jpg', '', NULL, 1, NULL, NULL, NULL),
(16, 'Ma Thu Zar Hein', 'mazar.skgroup@gmail.com', NULL, '$2y$10$5JYQb99Md7um36xVCIERlesJtXCp.aZBoI9sc7yf8cCuOcmL7vqoG', 'GL447U5mg9pB7EEi5ZXPyKTFPo2g2Tao24NV5XhhHHcBzVfdAp8cOtsxCc7T', '2022-03-17 04:24:34', '2022-07-02 04:08:27', 'EMP - 00016', '09740875438', '9/KaPaTa(N)195155', 'female', 'No(205(3B),Aung Thiri street, Myot Thit Quarter, Dawbon Tsp', 8, NULL, NULL, 'public/passport/UYfEMZsWwsJbbqKyUdCmEYyvnwAK254Le6fbJk3c.jpg', '2022-05-31 12:00 AM', 0, '2022-07-02 11:08:27', '103.217.156.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37', 'public/photo/5jqIgcnGgXDBiQDYSg4VgfcR5YVMSutj6OUlzrH0.jpg', 'public/photo/ymNIsoZEuBltkIlSsmxuXZ5fQJ1ydIUfTAjtdOYr.jpg', '', NULL, 1, NULL, NULL, NULL),
(17, 'Ma Kay Thi Hlaing', 'kaymama.skgroup@gmail.com', NULL, '$2y$10$sVW1LsxB7Ck6NIoQUVtUyeMcJzA9HRY37PplCw6f8t/IMWUs9U7Fa', NULL, '2022-03-17 04:26:53', '2022-07-16 02:55:51', 'EMP - 00017', '09751446027', '12/LaMaTa(N)000705', 'female', 'No.52, 89 street, Mingalar Taung Nyut Tsp', 8, NULL, NULL, 'public/passport/eRmSUiqeZ7Ofgc7g1mU6NVTt9idebwGXq3NWqaos.jpg', '2022-05-30 12:00 AM', 0, '2022-07-16 09:55:51', '103.217.156.141', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'public/photo/kh9JNzFquyD36Es8M22NnvZQv0iSbmyAV5wuqyVd.jpg', 'public/photo/7ebTDB58vyYpzupqlt1MPx7p9iwfclAxBG8freoJ.jpg', '', NULL, 1, NULL, NULL, NULL),
(18, 'Ma Hsu Myat Win', 'hsumyat.skgroup@gmail.com', NULL, '$2y$10$oPB3qKCyQnzBIerf/mBBRuP3z81CGXDY4nIE1pQ.gpNyctD3nx4Yy', '3ce1zsEtzLSjcK21Oalsd4J5gM6srQE0zEI46405kMAfDCB6OwWkA8Wa6sbi', '2022-03-17 04:28:05', '2022-07-16 09:33:59', 'EMP - 00018', '09751445220', '7/PhaMaNa (N)220433', 'female', 'No.(205/3B), Aung Thiri Street, Myo Thit Quarter, Dawpon Tsp', 8, NULL, NULL, 'public/passport/7mDwD39Ap1NEYolaTulpNpjRQ8Q4IeEA7TIwVSi4.jpg', '2022-06-01 12:00 AM', 0, '2022-07-16 16:33:59', '103.217.156.134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', 'public/photo/T4lEKST4PWxeIvarILzbSr9cv2TvcxJ95ujsIWyq.jpg', 'public/photo/StgM3Rpzsi1vB5zOwmeAnzJjHnzyN0FmrgVjSN8x.jpg', '', NULL, 1, NULL, NULL, NULL),
(19, 'AUNG HTET PAING', 'aunghtetpaing.skgroup@gmail.com', NULL, '$2y$10$gQfTPFveu0nOs7Wob8Hb3.UYTTpz3o3gJnEQlt7sAZVCYjOb6MC9S', NULL, '2022-03-17 04:38:03', '2022-07-13 09:29:02', 'EMP - 00019', '09755155166', '12/Lathana(N)021656', 'male', 'No. 74, Min Nanda Road, Dawpone Tsp, Yangon', 1, NULL, NULL, NULL, '2022-06-07 12:00 AM', 0, '2022-07-13 16:29:02', '89.187.162.175', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(20, 'Ko Moe Thae Aung', 'moethae.skgroup@gmail.com', NULL, '$2y$10$nk.ypUUuIAQy.j29wC6ciuEHR0R6Rjs40IjF93I3TdTagunEBOFf2', 'fOJxSNj2Vmct2w8T97D4H1O9x0Kx2JTfBhdfI6jm16MG5RpoM1CS9eWZhvD8', '2022-03-28 05:09:58', '2022-07-18 01:55:58', 'EMP - 00020', '09752800400', '9/AhMaZa(N)016643', 'male', 'No.(5), Bo Sone Pat St, Bo Tun Zan Qt, Daw Pon TS', 3, NULL, NULL, 'public/passport/CPtZMVurA2zIPDKKr842JFrVPUlKg7SUhe4R6c4Q.jpg', '2022-03-28 12:00 AM', 0, '2022-07-18 08:55:58', '8.30.234.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'public/photo/hQ0CWPLnnHoFNBYS5RThqweNXKtM4OkgbVUl5SWE.jpg', 'public/photo/zG4yzkmft9Yd0lwFT80FT1wDv5Qq0RbfvNttV5Gz.jpg', '', NULL, 1, NULL, NULL, NULL),
(21, 'Ko Soe Moe Aung', 'soemoe.skgroup@gmail.com', NULL, '$2y$10$FyWc2Xn8FzmUr9eROnqyqe9N.3eDX78agOHkk6wIgjwfImKoT01aS', 'C4aj7137ouGD3AwpJGcP7k7PavKbaknMrpuRr0zbtlaLeIPQh2w03oyjq5oD', '2022-04-19 07:44:07', '2022-07-18 00:25:49', 'EMP - 00021', '09765417569', '12/', 'male', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 8, NULL, NULL, 'public/passport/8SXLPGuwlcWOGMW2ldebA9AvWimUxfMf479B3dHK.jpg', '2022-06-07 01:00 PM', 0, '2022-07-18 07:25:49', '103.42.217.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'public/photo/4gQlBwQ34Gi5fzIiQzoQm9Yhh6UlL21O2p5Owhn7.jpg', 'public/photo/71lV13sVhPTNWTLlbbqd6EXhdzWd2BVjr4OxaW6b.jpg', '', NULL, 1, NULL, NULL, NULL),
(22, 'Daw Khin Zarni', 'khinzarni.skgroup@gmail.com', NULL, '$2y$10$2ra6OqKvEKq4rB3/eTiDouAk1eeo8YenKYAGDB35JhYlsSzkRTOLe', '4MTy86HbyDVb5bUEhq8rz4n11DUrZyX7mGSF79ZKKQRBL4k9n63oZf2r1Qnx', '2022-04-29 09:39:44', '2022-08-17 17:53:35', 'EMP - 00022', '09740875439', '14/HATHATA(N)021656', 'female', 'No.(202), MaharNawarat Condo (A), 50th Street, Botahtaung Tsp.', 9, NULL, NULL, 'public/passport/KsxCkoQ7IsohA6mX3eKWlnr8HHEX2MArcaOCaHYF.jpg', '2022-06-07 12:00 PM', 0, '2022-08-18 00:23:35', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'public/photo/PnZ9dvQBaq7SuoRnVJAnAfim5RPj1CXnFDZvagSH.pdf', 'public/photo/CN9TAXEP1yCgCwK9DdHEikrbF0hR4bn74iIR6upt.pdf', '', NULL, 1, NULL, NULL, NULL),
(23, 'U Zin Wai Aung', 'zinwaiaung.skgroup@gmail.com', NULL, '$2y$10$lIRAeX5wlbVuT.V3vgtIb.baaZJMdQ00Yu.VDmDb/dwJ0L/Ais98e', NULL, '2022-04-29 12:27:33', '2022-06-16 03:31:08', 'EMP-00023', '09799404246', '12/KAKHAKA(N)090911', 'male', 'Thingyangun', 9, NULL, NULL, NULL, '2022-06-16 10:00 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(24, 'Daw Htet Htet Zaw', 'htethtetzaw.skgroup@gmail.com', NULL, '$2y$10$uvo3UT1Uf1JA8SgHlt0iDOs8DAtRKwPckRhU/.pOiaS1n8ZhiWvwm', 'l7ew8k6pFYVIn45TXROxQFOxGdVT4t8yNKnoA9CStNLcg4808iUEBMxC1Uvz', '2022-04-29 12:37:19', '2022-06-25 07:35:49', 'EMP-00024', '09795345577', '12/BATAHTA(N)044264', 'male', 'No.262,Merchant Road, East Yangon General Hospital, Botahtaung Tsp', 4, NULL, NULL, 'public/passport/uq0PyzmVggoYIA660a9iIK1yxospt6pzfAGfD4jj.jpg', '2022-05-31 12:00 AM', 0, '2022-06-25 14:35:49', '103.135.217.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Safari/537.36 Edg/103.0.1264.37', 'public/photo/aDJvkSqgAXFtjbpMZY5CjzthX72XGgco0esm3RtG.jpg', 'public/photo/4Rw37rhWOXTD53oczdaTn3BOxkJybbCol65Ja4OP.jpg', '', NULL, 1, NULL, NULL, NULL),
(25, 'Daw Zar Zar Khine', 'zarzarkhine.skgroup@gmail.com', NULL, '$2y$10$HfdR7fopHjyS2b5yn1gt6uk7TlVqjrsh1VEpZbEouJq7FXW3nx41G', NULL, '2022-04-29 12:42:04', '2022-08-17 09:48:34', 'EMP-00025', '09799048521', '5/KATHANA(N)122900', 'female', 'Shwe Ta Sote Stree, Thamine, MaYanGone Tsp', 9, NULL, NULL, 'public/passport/ucJI1yfCwS6fdEwKbiIfRBTWexzbU0rVSjNFGZce.jpg', '2022-07-18 09:09 AM', 0, '2022-08-17 16:18:34', '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'public/photo/SZaB1xgXmwmIU6HzobbCTTgVfo1DZxvY8aSzRboG.jpg', 'public/photo/1XxFD6UTvPYerfQbx8CpuVN3t5HvW5Aqjr4sBNLk.jpg', '', NULL, 1, NULL, NULL, NULL),
(26, 'U Zwe Ko Ko Soe', 'zwekokosoe.skgroup@gmail.com', NULL, '$2y$10$KIySMGiziK80Xi2yQX2Z9e/eruvZywdkEXGApfFV/ciDPL/P4Rjeq', 'GppY3ec9qBVYFK8Bdrm0VAGcy9mdmJZsqDhs5H9vp6Px2TPx979C6sSpwoFH', '2022-04-29 12:45:58', '2022-07-17 16:42:18', 'EMP-00026', '09763178824', '12/THAGAKA(N)182803', 'male', 'No.19/2,Khayaymyaing Street,Thuwunna(23) Quarter,Thingangyun township,Yangon', 9, NULL, NULL, 'public/passport/tVvqZoWWicYsQvwTvrcwYIk02fsmMamWUEnJxo8O.jpg', '2022-06-25 12:00 PM', 0, '2022-07-17 23:42:18', '103.217.156.154', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.0 Mobile/15E148 Safari/604.1', 'public/photo/Hf3HAGNUxaIiAKO0NufnjX0wj3EnjUv0caYRwzav.jpg', 'public/photo/fm44nJgnknueXXR7EAcW0nQieq27hxSelFFyQtc8.jpg', '', NULL, 1, NULL, NULL, NULL),
(27, 'U Phyo Kyaw', 'phyokyaw.skgroup@gmail.com', NULL, '$2y$10$eTYZZQ1F.RuoUnn49HVP4uSSBNfTTAMsTZZk64JIMOSAfB78cWcwG', 'Fa4KK3DcxqFmjDecl5dOLSVXzkjv9g0at8sUUX4fGzORHVXUkE7tnVDkUABa', '2022-04-29 12:48:07', '2022-06-16 03:02:42', 'EMP-00027', '095045907', '12/DAGANA(N)032751', 'male', 'အမှတ် (၁၀၃၁) ၊ ညောင်ရမ်းလမ်း ၊ (၁၆)ရပ်ကွက်၊ ရွှေပေါက္ကံမြို့သစ်၊ မြောက်ဥက္ကလာပမြို့နယ်', 9, NULL, NULL, NULL, '2022-06-16 10:00 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(28, 'U Aung Pyae Phyo', 'aungpyaephyo.skgroup@gmail.com', NULL, '$2y$10$J1sWFBLv/hIzptC77GK76Oa6xkpJlXT3ccwSJlMz4Mw5bB0D03hne', 'ahWTXxVxdOXFlolWNWqrKd0bv5vojJcNzxAHatCLQVbP5ogldhqGbew5GYmI', '2022-04-29 12:50:06', '2022-07-17 03:34:49', 'EMP-00028', '09799525101', '12/THAKANA(N)156039', 'male', 'အမှတ် ၉၂၁/က၊ မာန်ပြေ ၃လမ်း အရှေ့၊ ၂တောင်ရပ်ကွက်၊ သာကေတ။', 9, NULL, NULL, NULL, '2022-06-07 01:00 PM', 0, '2022-07-17 10:34:49', '37.111.3.190', 'Mozilla/5.0 (Linux; Android 11; Redmi K30 5G) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Mobile Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(29, 'U Aung Khant Kyaw', 'aungkhantkyaw.skgroup@gmail.com', NULL, '$2y$10$KaBO4rpnb9l4DMEHIiSueeBT1Lr6eo6tyIRYCVTsXfKw696BEMyAS', NULL, '2022-04-29 12:54:48', '2022-06-07 06:02:33', 'EMP-00029', '092305456', '8/KHAMANA(N)162646', 'male', 'No.11,(4A),Satetathukha st,Sanchaung Tsp', 9, NULL, NULL, NULL, '2022-06-07 01:00 PM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(30, 'U Aung Myat Thu', 'aungmyatthu.skgroup@gmail.com', NULL, '$2y$10$1Of462XGT1M55w7p2dwtReZcEvM25yxcPoESBDhGf8IWwex2caSpG', NULL, '2022-04-29 13:02:10', '2022-06-16 03:26:48', 'EMP-00030', '09787206401', '3/BAAHNA(N)273327', 'male', 'B/Sa Yone Wine, Sharkargroup Hp-An', 9, NULL, NULL, NULL, '2022-06-16 10:00 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(31, 'U Aung Ye Kyaw', 'aunyekyaw.skgroup@gmail.com', NULL, '$2y$10$4cnZHddVb0E2c/NP6XJae.hlEY974xK3fHIdRh5L8ZRwahwtiK2wW', 'EZZ5vP2LbMl4Jixuoc7F2g31TX3KCMW66mhu2JaPRr7mCiZ0DiwA94jBfQkO', '2022-04-29 13:06:13', '2022-06-29 15:13:25', 'EMP- 00031', '09788784596', '12/MAGATA(N)102683', 'male', 'Line-101,Room-2,Ma Hlwa Gone Train Compound, Mingalar Taung Nyunt Tsp', 9, NULL, NULL, NULL, '2022-06-07 01:00 PM', 0, '2022-06-29 22:13:25', '37.111.6.64', 'Mozilla/5.0 (Linux; Android 10; M2003J15SC Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/90.0.4430.210 Mobile Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(32, 'U Myo Win Aung', 'myowinaung.skgroup@gmail.com', NULL, '$2y$10$Uh176vaFV49f9Fz71sGCwOmxEQNfFrp5RgR8LW4T0GrYa7TDqqPra', NULL, '2022-04-29 13:08:54', '2022-07-17 10:50:34', 'EMP-00032', '09764364304', '1/ MAKANA (N) 172114', 'male', 'Yangon Street, (21) Quarter, Shwe Paut Kan, Yangon.', 9, NULL, NULL, 'public/passport/gxLaVurwQ7PipbpwgBBZMj213WtLQ3On0GLuaVlZ.jpg', '2022-06-07 01:00 PM', 0, '2022-07-17 17:50:34', '210.14.103.62', 'Mozilla/5.0 (Linux; Android 9; SAMSUNG SM-A530F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/17.0 Chrome/96.0.4664.104 Mobile Safari/537.36', 'public/photo/euTosdeFeZQkhyHgjMReygswjUMSyBDswPBYp7EJ.jpg', 'public/photo/GGXuRtPN95beAsyrizQLSuPhAv1oeT9ZvWwesmQc.jpg', '', NULL, 1, NULL, NULL, NULL),
(34, 'U Min Ko Ko', 'minkoko.skgroup@gmail.com', NULL, '$2y$10$WzoRzVfDgUtCYiEqmOU0mOEzdXw8pT3k2UoC.a9kTy2zfZijjiZiq', NULL, '2022-04-29 13:19:48', '2022-06-03 02:30:05', 'EMP-00034', '09428024529', '7/PAMANA(N)152627', 'male', 'No.6,Raod,Kwm Yar Sine Nea Bus Stop Tarwa, East Yangon University, Thanlyin', 7, NULL, NULL, 'public/passport/3agYEHKb8f2csUv7piWh1zQAF6c8BKbprKgKkQWS.jpg', '2022-06-03 12:00 AM', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(35, 'U Mi Kee', 'mikee.skgroup@gmail.com', NULL, '$2y$10$ZC0cIqbqD4Glz0lfa0phHugAC/wkIWDoKOk9kxhVdAywBeY3adIy6', 'eVNwUuoumcS8PRmH52YTXhK9VKQsGbJyrc5lUn7RZgsaqHOptLI2nljPbpUn', '2022-04-29 13:21:18', '2022-06-24 06:19:24', 'EMP-00035', '09401564992', '8/KHAMANA(P)000083', 'male', 'No(50)A, 5th floor, Zay Street Myaenigone, Yangon, Myanmar', 9, NULL, NULL, 'public/passport/06JZq2jTQbL1MVwetehtvnH0zNVszrCMYpT1o0Ne.jpg', '2022-06-24 01:00 PM', 0, '2022-06-24 13:12:40', '103.217.156.135', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'public/photo/NwP6TpDRqZ0IPdtmDL9q3BinAjp8DYAfOvVo2V2b.jpg', 'public/photo/Qt1tTFgpO7pgivnnWA2FyTViVmIvKhggYjIPMQSG.jpg', '', NULL, 1, NULL, NULL, NULL),
(36, 'U Myo Nyunt', 'myonyunt.skgroup@gmail.com', NULL, '$2y$10$97W5ILXOF7ZoRSv1u1giZudo1xWztNrXC4ZYV2NKavWqut/cX28UC', NULL, '2022-04-30 04:28:03', '2022-07-18 02:18:57', 'EMP-00036', '09776549304', '12/TAMANA(N)125742', 'male', 'No.245(B),5/4 Quater, Shwepyithar Township, Yangon', 9, NULL, NULL, 'public/passport/Y0LX6Vz0XOfXJhnsQTxxQhzKz790yyaxYtMWfZ2J.jpg', '2022-06-07 01:00 PM', 0, '2022-07-18 09:18:57', '37.111.3.74', 'Mozilla/5.0 (Linux; Android 10; CPH1823 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/96.0.4664.104 Mobile Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(37, 'U Paing Thu Hein', 'paingthuhein.skgroup@gmail.com', NULL, '$2y$10$H3ieEgYUgj7dvhS2NTjwgOXVJIBprzggnGRuI3h/Vm5YD6FScfeyW', 'mQWHj9p8KPTfK0RXMO39P0Gw6O1djz1KvZWv4scw8ALVUtsifZwv4BYRzSBQ', '2022-04-30 04:40:21', '2022-07-16 06:57:22', 'EMP-00037', '09780626353', '14/WAKAMA(N)220972', 'male', 'TA YOKE TAN QUARTER,WAKEMA TOWNSHIP', 9, NULL, NULL, 'public/passport/CXp8V6ctnWVPj72KtJjJxYlrrrsu7H929fE2N51K.jpg', '2022-06-07 01:00 PM', 0, '2022-07-16 13:57:22', '37.111.4.217', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 8 Pro Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/103.0.5060.71 Mobile Safari/537.36', 'public/photo/iBrtEsXv02cQ6u1WpGOihzRfJqEuz0fG8UDlp6ay.jpg', 'public/photo/91h01Eo7cBQjuRR8wdCRAD3QK3Ct00OajxtlatRL.jpg', '', NULL, 1, NULL, NULL, NULL),
(38, 'Daw San San Aye', 'sansan.skgroup@gmail.com', NULL, '$2y$10$jcefKnhA5PoC8P6rbUMJ.u0hz5GhvHZVDso.IpbagWj8PFhVxgFku', 'iCKvzk3JnBHVn33Kdf4OXeoNTT3IHSLcnyDrWmioTElwt3KwwkVYAJeL9vZS', '2022-05-05 02:29:34', '2022-06-07 09:24:32', 'EMP-00038', '09751446019', '12/THAKANA(N)179134', 'female', 'No.8, Room(205), Shu Khin Thar Housing, Tharkeyta Tsp', 5, NULL, NULL, 'public/passport/1ho6jZe3nY9f8kaIOb1twbgTxQ2yrNlmpbFCp49D.jpg', '2022-06-01 12:00 AM', 0, '2022-06-07 16:24:32', '103.135.217.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(39, 'U Hein Min Latt', 'heinminlatt.skgroup@gmail.com', NULL, '$2y$10$HGViWsfCfqdbxgx9fNxJYunmFfxpDtCfbKJLPl8ZAxrnzTQFzChYa', 'HqeWypaCbzhaZfnawcri1FMLYai18bkEU5Q5Ooq8ViyBW4lgu7C0kIemTthX', '2022-05-05 02:46:55', '2022-06-07 06:09:56', 'EMP-00039', '09740875433', '12/LATANA(N)019729', 'male', 'No.22, 132 Street, Mingalar Nyut Tsp.', 8, NULL, NULL, 'public/passport/DefunbmTHLlrEZGO8SGoV9J7SCjMZDGbs3pWGNBa.jpg', '2022-06-06 12:00 AM', 0, '2022-06-07 13:09:56', '159.223.163.99', 'Mozilla/5.0 (Linux; Android 10; VOG-L29) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Mobile Safari/537.36', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(40, 'U Aung Kyaw Htet', 'aungkyawhtet.skgroup@gmail.com', NULL, '$2y$10$wJOBhY4SfuRZmhXiI6n4e.ZPVS/rbxVpSkNVqHr7ZKSH5vKKDB0DW', 'Ey8oBOmczTaDnNi6ihSqUAthQeA4OxlAA2jpGM1xgSbQ50kPjmah7Jsq2Zvj', '2022-05-05 03:10:32', '2022-06-29 04:59:32', 'EMP-00040', '09740875436', '12/OUKaTA(N)172749', 'male', 'အမှတ် ၅၆၂ ၊၄ လွှာ ၊အောင်စက်ြာလမ်း ကြီးပွားရေးရပ်ကွက် ကြီးပွားရေး အိမ်ရာရှေ့ သင်္ဃန်းကျွန်းမြို့နယ်', 9, NULL, NULL, 'public/passport/KetPk7FMDtZMAk7lxD0s0C1NgycugUYt7I9sK5zb.jpg', '2022-06-29 11:59 AM', 0, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(41, 'U Kyaw Ko Ko Zaw', 'kyawkoko.skgroup@gmail.com', NULL, '$2y$10$a9CTIJQpaC8mJ/fDAU/V0eRELWCDjnyV9h.6JuT2S26e7WAUlgIs.', 'bylXWtzxiCm7AmCTmMRsP0ioiXreStidymjU6nsw5ZowQnetIRtOEAdNRl56', '2022-05-05 03:31:11', '2022-07-14 06:26:11', 'EMP-00041', '09952613203', '12/OUKATA(N)201677', 'male', 'No.649,Waruna Street,13 Ward,South Okkalapa TownShip', 1, 'Daw Hnin Mhone Than', '09420205133', 'public/passport/0N5IkdMTtemZuRhgoOkwAZMJpZBOPPvy61JDrhSf.jpg', '2022-05-03 12:00 AM', 0, '2022-07-14 13:26:11', '103.217.156.158', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 Edg/103.0.1264.49', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(42, 'Daw Aung San suu Kyaw', 'suukyaw.skgroup@gmail.com', NULL, '$2y$10$8NmMUS.7C08wkfyBlV3Exe0M9Mk5i0J2Tutru694LiQZ.Pmcqi32C', 'gIE2guZB55FhJOtgVg51hpawhtHbPuediTJQp619xQacWUBFvxYcyt7Zghsc', '2022-05-05 06:06:53', '2022-07-18 02:11:09', 'EMP-00042', '09785421470', '12/THAKATA(N)200674', 'female', 'No.(634), 4 Floor, Shwe Pyi Thar Street/ 6 Quarter, Thaketa Tsp.', 8, NULL, NULL, 'public/passport/FRRzMhHoXvAurEAgZHdG8WNpz12E6lQNmlJ5pfPs.jpg', '2022-06-01 12:00 AM', 0, '2022-07-18 09:11:09', '103.135.217.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(43, 'U Wai Yan Lynn', 'waiyanlynn.skgroup@gmail.com', NULL, '$2y$10$Qo2ZqMt0TcUX6eLcQ.fnguvxmN6MyMAdGP8sUf26ZAHL/fR.yP3s6', 'scT6JldCw3Z7jn45pTlaLz2bHIphxnESDvVttcIUfhs1QWJIaq0REbqXa8vX', '2022-05-07 07:13:59', '2022-06-22 03:21:28', 'EMP-00043', '09970047351', '12/DAKASA(N)023993', 'male', 'No.1003/A3,6 Htu Par Yon Stree, Thaketa', 4, NULL, NULL, 'public/passport/5LXfwPIqf6wMkPEzaq8os66y6QE58kV1IUSmxSGY.jpg', '2022-06-01 12:00 AM', 0, '2022-06-22 10:21:28', '103.217.156.152', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(44, 'U Htet Aung', 'htetaung.skgroup@gmail.com', NULL, '$2y$10$RMw4v4PG05XgnN.jyss/xOeWOuybCMN3icMDR8TJw3TG2z5XDn4eW', 'uXrDnigNRTcxjAet9ti3SwQubqy3AOLRuv0S9OdaONxlprRU4m2hI4sFMfdH', '2022-05-12 10:22:08', '2022-06-25 02:47:49', 'EMP-00044', '09951204013', '12/SAKHANA(N)076156', 'male', 'No. 34.(4\" Floor), Sanchaung Stree, Sanchaung, Yangon,Myanmar', 9, NULL, NULL, 'public/passport/QFpRfJ7hKiKdhsq4NjcpGb8IphOP6ltvgJqQyIRR.jpg', '2022-06-07 01:00 PM', 0, '2022-06-25 09:47:49', '8.30.234.19', 'Mozilla/5.0 (Linux; Android 10; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Mobile Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(45, 'Daw Htet Wai Oo', 'htetwaioo.skgroup@gmail.com', NULL, '$2y$10$x2ME8NPzRxTO0ZcTFgLrTeXUY8mUm9z/MmxHVO7hEyU8QGfV694pW', NULL, '2022-05-13 04:24:07', '2022-06-01 07:31:55', 'EMP-00045', '09755713424', '13/NAKHATA(N)082880', 'female', 'တိုက် 256, ဇေယျာသိရီ ၁၃လမ်း, သင်္ဘောကျင်း, ဒေါပုံမြို့နယ်', 7, NULL, NULL, 'public/passport/YGwpQcOnK7LF3hnAvex9m4FQF1TilpQWAEDSmcC5.jpg', '2022-06-01 12:00 AM', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL),
(46, 'U Aung Min Oo', 'aungminoo.skgroup@gmail.com', NULL, '$2y$10$QH/uoohRSJUcAXWDZwDCS.mNRdV/slwTK2ccHciEQq7izkP4i/xN.', NULL, '2022-05-30 07:59:51', '2022-06-26 03:42:08', 'EMP-00046', '09799629597', '7/pakana(n)059612', 'male', 'No.78(b),Anawyahtar Road,Kyeepwaryay(N),Quarter,Tingangyun', 9, NULL, NULL, 'public/passport/NkBkqGYRYQay7tPverVWmR0UIcAnsz7n1hGCkKRK.jpg', '2022-06-07 01:00 PM', 0, '2022-06-26 10:42:08', '37.111.5.113', 'Mozilla/5.0 (Linux; Android 11; Mi 9 Lite Build/RKQ1.200826.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/102.0.5005.125 Mobile Safari/537.36', 'public/photo/d5rWYRKBtkGXq9sB0fomBxOaQdYfajbxGH9V3wa7.jpg', 'public/photo/XxAC0P9KKI92Pf31X3Qkeo53yuaK6NyjtAw14ar4.jpg', '', NULL, 1, NULL, NULL, NULL),
(47, 'U Ye Lynn Htoon', 'yelynnhtoon.skgroup@gmail.com', NULL, '$2y$10$Z5wwXLm3rx/PbxFX9AY80uqn7oi8uel2SfKGm9iLeXNZvJi.nlEGK', 'SEo96zmL5sQ04iMrpAbY39nTOaZzYRSyJqZvpsFodkDUkfp2mHW1TXojyYF3', '2022-05-30 08:03:47', '2022-07-18 00:56:28', 'EMP-00047', '09968878999', '12/magata(n)092879', 'male', 'No(44),109 Stree, Mingalartaungnyunt', 9, NULL, NULL, 'public/passport/0Vf0HeAScgBv9PCVl70YptyuQcJuWYvqrGZfYtIT.jpg', '2022-06-07 01:00 PM', 0, '2022-07-18 07:56:28', '37.111.3.21', 'Mozilla/5.0 (Linux; Android 10; SM-A515F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(48, 'U Wai Lynn Tun', 'wailynntun.skgroup@gmail.com', NULL, '$2y$10$hT5FaxVzrqclKnNsX6f.U.0zLRQ0qie0o4uDcOcf19vpbkWJxLKxm', 'JMpucpLYCYcaeHasjePRurR9VPgUz4L8YFqdsMcAYlKaCgAAdzStn1ftyVIu', '2022-06-06 09:31:20', '2022-06-09 07:05:13', 'EMP-00048', '09663654307', '7/TANGHNA(N)206379', 'male', 'မင်းကြီးဆွေရပ်ကွက်၊ တောင်ငူမြို့', 4, NULL, NULL, 'public/passport/NaIFUCsjCMB26YM1jERrUuLCRgVUk7SzHD06FDrd.jpg', '2022-06-09 02:00 PM', 0, '2022-06-06 16:40:09', '103.217.156.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'public/photo/LBzw5eayap3Hc98m6SIa0kI1LrpKYCL8o9sALfDy.jpg', 'public/photo/MZ05hc95BaxXmEF2E8Gy1OyjgCLOkP6kc3h57wiL.jpg', '', NULL, 1, NULL, NULL, NULL),
(49, 'U Chit Tun Aung', 'chittunaung.skgroup@gmail.com', NULL, '$2y$10$WoPIYd7Z9bcfISRP5BOeEex6q06Lk1BoCnxRjpSkdTIxelovS7LLC', NULL, '2022-06-07 02:16:33', '2022-07-14 04:13:18', 'EMP-00049', '09250081251', '12/MABANA(N)147926', 'male', 'အိမ်အမှတ် (၂၀၂)၊ မြနန္ဒာအိမ်ယာ၊ အုတ်ကျင်းဘူတာရုံလမ်း၊လှိုင်မြို့နယ်', 9, NULL, NULL, '', '2022-06-07 01:00 PM', 0, '2022-07-14 11:13:18', '136.228.172.27', 'Mozilla/5.0 (Linux; Android 10; TECNO LD7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.99 Mobile Safari/537.36', NULL, NULL, '', NULL, 1, NULL, NULL, NULL),
(50, 'Daw Kyawt Khat Khat Wai', 'kyawtkhatkhatwai.skgroup@gmail.com', NULL, '$2y$10$OpA55E0GQvJ1W8MnOIAlM.5qllZ6OsTGm7JS2v.NLmShYPOixYyY.', 'twUlgD6M3Ebolbc4xTefOTIf548iFxJB0hLfnrV8jyWAQgSkMFNVLRf2Ii34', '2022-06-09 06:41:36', '2022-06-27 04:59:58', 'EMP-00050', '09740940648', '12/KAMATA(N)072177', 'female', '14/ဗိုလ်ဥတ္တမ၊ ဘောဂရပ်ကွက်၊ကြည်မြင်တိုင်', 6, NULL, NULL, 'public/passport/VcHTaekKMGzYuNthkhwNdWcZQ2Yr5q8WAbC0zN34.jpg', '2022-06-27 12:00 PM', 0, '2022-06-10 08:57:01', '103.217.156.157', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.63 Safari/537.36', 'public/photo/qDFmF2vCaHEKBUEzG8cCBi8o8qJzUF7geGUFLrM9.jpg', 'public/photo/pyp0F7gsMbGBP6Xstl0IDPVM8Jc7mzpFBhjYrud4.jpg', '', NULL, 1, NULL, NULL, NULL),
(51, 'U Aung Khat Thu', 'aungkhantthu.skgroup@gmail.com', NULL, '$2y$10$sr4mZMWZC4inEki4QBezM.GvLaFwtOqoteJY1SK7rYtD14uKtqHty', NULL, '2022-06-16 03:13:42', '2022-06-16 03:13:42', 'EMP-00051', '09740940649', '14/YAKANA(N)142539', 'male', 'အသုပ် (၄)ရပ်ကွက်၊ မြို့ရိုး(၂)လမ်း၊ရေကြည်မြို့နယ်', 9, NULL, NULL, 'public/passport/5vp412f4q2AXbjuVLCmShOfjIylmppWSDq7Cubhc.jpg', '2022-06-13 10:00 AM', 0, NULL, NULL, NULL, 'public/photo/faYYyXYMJZ1DBgFuW8Vz8YzjrDysNPD5xhzWMw7T.jpg', 'public/photo/BNIPznCCy91a88YGUqsg0AWlhzgiWn9TzsKZz7Ei.jpg', '', NULL, 1, NULL, NULL, NULL),
(52, 'U Zin Min Htun', 'zinminhtun.skgroup@gmail.com', NULL, '$2y$10$lt4D2lSwx.nGga8fARkHE.rJWMOwx1CVj93VbmFVPiI14PWfBcS7C', NULL, '2022-06-27 04:56:18', '2022-06-27 06:27:12', 'EMP-00052', '09255572566', '7/PATANA(N)125497', 'male', 'No.94, Bolayaung street, Dawpon Township Yangon.', 3, 'Daw Po Po Zaw', '09774405573', 'public/passport/FHkDGytrPhwzc6UDrUZy8aBfBOHZJOsxID7zzl5O.jpg', '2022-06-27 01:27 PM', 0, '2022-06-27 11:58:49', '103.135.217.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:100.0) Gecko/20100101 Firefox/100.0', 'public/photo/0zbOG22j7KGGo7lwiVPxPfZKZFDDtvFX7oNBxEFP.jpg', 'public/photo/17NsZyZmS0PVdtcMblLS3c7Bg8JgyNG23o1pWNKi.jpg', '', NULL, 1, NULL, NULL, NULL),
(53, 'U Soe Pyae Aung', 'soepyaeaung.skgroup@gmail.com', NULL, '$2y$10$b2OaaDnbHxoHXKjim0jclOC0rsAly7UGRdNO84u3b5gIVr2dKxISW', 'wzPjsxEfYMrVkvencMTRbIE3VyOwRS5LWIaLHYZ6BjeqsLCkzUfMz1XfSA0S', '2022-06-27 05:03:25', '2022-06-27 06:44:43', 'EMP-00053', '09795402705', '14/PATHANA(N)203658', 'male', 'No.(26/A) Aung Mingalar street, Ward (4/North), Thaketa Township, Yangon.', 9, NULL, NULL, 'public/passport/p7czjiRQ8Et6RHe52oGzQDDYMXXSNucFxPlkxmG9.jpg', '2022-06-27 01:24 PM', 0, '2022-06-27 13:44:43', '107.161.26.87', 'Mozilla/5.0 (Linux; Android 11; BE2029) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', 'public/photo/1g1AM6Y6F3rl8jgrT6uiFcfT6bUtDxpKaEvE9fVp.jpg', 'public/photo/cjsA4mG3bjUnuef1xTNc6B3Ioepq2tkVUOE0gsnn.jpg', '', NULL, 1, NULL, NULL, NULL),
(54, 'U Aung Phone Kyaw', 'aungphonekyaw.skgroup@gmail.com', NULL, '$2y$10$OwqHf/kJIzfeWM5t0lcqU.reBU98i3WA1pAzsdf4/I.pAwluO6M3O', 'uN7DxNNk6Yet2WqDrH4ZRBA4I3DaEYPZZKlcd7y1MNUDB4MLjOYlrGJ1X5Vv', '2022-06-27 06:37:01', '2022-06-27 07:09:39', 'EPM-00054', '09444451241', '12/ThaGaKa(N)190992', 'male', 'No.64/7, Paw San Mwe 7th Stree, Thuwanna , Thingangyn Township, Ygn', 9, NULL, NULL, '', '2022-06-27 02:09 PM', 0, '2022-06-27 13:39:51', '103.217.156.182', 'Mozilla/5.0 (Linux; Android 12; SM-A135F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Mobile Safari/537.36', 'public/photo/ZsQKsn48JKlItOh8rXYoLoFy05UQCEH3PgfNLvg5.jpg', 'public/photo/FOyqhdJRWdpZgW1wae0sCJtkcU5WkogwQyFBSHc9.jpg', '', NULL, 1, NULL, NULL, NULL),
(55, 'Daw Theint Theint', 'theinttheint.skgroup@gmail.com', NULL, '$2y$10$gyIc.OWH62QBI8VRO8aD2.Cla0MA2cXu4y6tFu8.R5XVUgLwkdV1S', 'urF24ybZ630HZlNebQ6JdAudtiavGq02QAGmYZLeIRPsG1CPjhQJKl1dXd6T', '2022-07-04 07:45:37', '2022-07-05 04:37:35', 'EPM-00055', '09421047700', '12/ThaGaKa(N)187186', 'female', 'No.B/87, Thayettaw St, Za/Norht Qtr,Thingankyun Ts, Ygn', 9, NULL, NULL, 'public/passport/SyHMmlfCvy4EH7HsccHhtu6B5MKeNO2mJQpp6VJL.jpg', '2022-07-05 11:37 AM', 0, '2022-07-04 19:33:34', '8.30.234.50', 'Mozilla/5.0 (Linux; Android 11; Redmi Note 8 Pro) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Mobile Safari/537.36', 'public/photo/t3AjacLWxQYNEbZLVn30aXcPAGbrq3n6WpKRPLkz.jpg', 'public/photo/E9T6ppgISMmChD0qqPxxQ2HYaMENNAADOHRVrVCg.jpg', '', NULL, 1, NULL, NULL, NULL),
(56, 'Daw May Thu Thu Han', 'maythuthuhan.skgroup@gmail.com', NULL, '$2y$10$VXfhjx/vGd7Jro58bR3Yo.6qQ2WYIgP8PbZ9MWNEfk2VNLyGwGlIq', NULL, '2022-07-18 02:02:21', '2022-07-18 02:07:22', 'EMP-00056', '09421111756', '12/LAMANA(N)148304', 'female', 'အမတ်-၅၄၈၊ မင်းတန်းလမ်း,မြို့မ(၃) ရပ်ကွက်၊ ဒလမြို့နယ်', 9, 'U Aung Thet Han, 09250685769', NULL, '', '2022-07-18 08:56 AM', 0, '2022-07-18 09:07:22', '147.182.249.217', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_5_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1', '', '', '', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_accept_reject_statuses`
--

CREATE TABLE `variable_accept_reject_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `accept_reject_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(200, 42, 'accept', '2022-06-24', 190, '2022-06-24 12:53:11', '2022-06-24 12:53:11', NULL),
(201, 10, 'accept', '2022-06-25 09:47:16am', 205, '2022-06-25 02:47:16', '2022-06-25 02:47:16', NULL),
(202, 42, 'accept', '2022-06-25 09:52:14am', 203, '2022-06-25 02:52:14', '2022-06-25 02:52:14', NULL),
(203, 42, 'accept', '2022-06-25 10:24:28am', 200, '2022-06-25 03:24:28', '2022-06-25 03:24:28', NULL),
(204, 42, 'accept', '2022-06-25 10:34:18am', 206, '2022-06-25 03:34:18', '2022-06-25 03:34:18', NULL),
(205, 1, NULL, '2022-06-25 13:29:14pm', 213, '2022-06-25 06:29:14', '2022-06-25 06:29:14', NULL),
(206, 42, 'reject', '2022-06-27 09:25:24am', 216, '2022-06-27 02:25:24', '2022-06-27 02:25:24', NULL),
(207, 42, 'reject', '2022-06-27 09:25:29am', 216, '2022-06-27 02:25:29', '2022-06-27 02:25:29', NULL),
(208, 42, 'reject', '2022-06-27 09:25:36am', 217, '2022-06-27 02:25:36', '2022-06-27 02:25:36', NULL),
(209, 10, 'accept', '2022-06-27 10:08:06am', 215, '2022-06-27 03:08:06', '2022-06-27 03:08:06', NULL),
(210, 10, 'accept', '2022-06-27 10:12:47am', 213, '2022-06-27 03:12:47', '2022-06-27 03:12:47', NULL),
(211, 10, 'accept', '2022-06-27 10:13:00am', 213, '2022-06-27 03:13:00', '2022-06-27 03:13:00', NULL),
(212, 10, 'accept', '2022-06-27 10:14:50am', 212, '2022-06-27 03:14:50', '2022-06-27 03:14:50', NULL),
(213, 11, 'accept', '2022-06-27 10:22:59am', 210, '2022-06-27 03:22:59', '2022-06-27 03:22:59', NULL),
(214, 11, 'accept', '2022-06-27 10:24:46am', 209, '2022-06-27 03:24:46', '2022-06-27 03:24:46', NULL),
(215, 11, 'accept', '2022-06-27 10:30:15am', 208, '2022-06-27 03:30:15', '2022-06-27 03:30:15', NULL),
(216, 10, 'accept', '2022-06-27 10:30:26am', 211, '2022-06-27 03:30:26', '2022-06-27 03:30:26', NULL),
(217, 11, 'accept', '2022-06-27 10:33:41am', 208, '2022-06-27 03:33:41', '2022-06-27 03:33:41', NULL),
(218, 11, 'accept', '2022-06-27 10:34:14am', 207, '2022-06-27 03:34:14', '2022-06-27 03:34:14', NULL),
(219, 11, 'accept', '2022-06-27 10:34:55am', 204, '2022-06-27 03:34:55', '2022-06-27 03:34:55', NULL),
(220, 11, 'accept', '2022-06-27 10:35:36am', 202, '2022-06-27 03:35:36', '2022-06-27 03:35:36', NULL),
(221, 11, 'accept', '2022-06-27 10:36:16am', 202, '2022-06-27 03:36:16', '2022-06-27 03:36:16', NULL),
(222, 11, 'accept', '2022-06-27 10:39:27am', 201, '2022-06-27 03:39:27', '2022-06-27 03:39:27', NULL),
(223, 11, 'accept', '2022-06-27 10:39:50am', 214, '2022-06-27 03:39:50', '2022-06-27 03:39:50', NULL),
(224, 42, 'accept', '2022-06-28 09:12:51am', 218, '2022-06-28 02:12:51', '2022-06-28 02:12:51', NULL),
(225, 42, 'reject', '2022-06-28 09:22:18am', 222, '2022-06-28 02:22:18', '2022-06-28 02:22:18', NULL),
(226, 42, 'reject', '2022-06-28 09:22:39am', 223, '2022-06-28 02:22:39', '2022-06-28 02:22:39', NULL),
(227, 42, 'accept', '2022-06-28 09:33:44am', 221, '2022-06-28 02:33:44', '2022-06-28 02:33:44', NULL),
(228, 42, 'accept', '2022-06-28 09:34:33am', 230, '2022-06-28 02:34:33', '2022-06-28 02:34:33', NULL),
(229, 42, 'accept', '2022-06-28 09:35:31am', 230, '2022-06-28 02:35:31', '2022-06-28 02:35:31', NULL),
(230, 42, 'accept', '2022-06-28 09:36:05am', 232, '2022-06-28 02:36:05', '2022-06-28 02:36:05', NULL),
(231, 42, 'accept', '2022-06-28 09:41:15am', 231, '2022-06-28 02:41:15', '2022-06-28 02:41:15', NULL),
(232, 10, 'accept', '2022-06-28 11:10:39am', 227, '2022-06-28 04:10:39', '2022-06-28 04:10:39', NULL),
(233, 42, 'accept', '2022-06-28 11:34:52am', 233, '2022-06-28 04:34:52', '2022-06-28 04:34:52', NULL),
(234, 10, 'accept', '2022-06-28 11:41:35am', 228, '2022-06-28 04:41:35', '2022-06-28 04:41:35', NULL),
(235, 10, 'accept', '2022-06-28 11:41:53am', 228, '2022-06-28 04:41:53', '2022-06-28 04:41:53', NULL),
(236, 11, 'accept', '2022-06-28 11:53:04am', 229, '2022-06-28 04:53:04', '2022-06-28 04:53:04', NULL),
(237, 11, 'accept', '2022-06-28 15:24:06pm', 220, '2022-06-28 08:24:06', '2022-06-28 08:24:06', NULL),
(238, 11, 'accept', '2022-06-28 15:49:36pm', 226, '2022-06-28 08:49:36', '2022-06-28 08:49:36', NULL),
(239, 10, 'accept', '2022-06-29 09:44:09am', 243, '2022-06-29 02:44:09', '2022-06-29 02:44:09', NULL),
(240, 10, 'accept', '2022-06-29 09:47:51am', 240, '2022-06-29 02:47:51', '2022-06-29 02:47:51', NULL),
(241, 10, 'accept', '2022-06-29 09:48:28am', 240, '2022-06-29 02:48:28', '2022-06-29 02:48:28', NULL),
(242, 10, 'accept', '2022-06-29 09:54:46am', 244, '2022-06-29 02:54:46', '2022-06-29 02:54:46', NULL),
(243, 10, 'accept', '2022-06-29 09:58:15am', 236, '2022-06-29 02:58:15', '2022-06-29 02:58:15', NULL),
(244, 10, 'accept', '2022-06-29 09:58:44am', 236, '2022-06-29 02:58:44', '2022-06-29 02:58:44', NULL),
(245, 10, 'accept', '2022-06-29 10:01:11am', 238, '2022-06-29 03:01:11', '2022-06-29 03:01:11', NULL),
(246, 10, 'accept', '2022-06-29 10:03:35am', 237, '2022-06-29 03:03:35', '2022-06-29 03:03:35', NULL),
(247, 10, 'accept', '2022-06-29 10:03:46am', 237, '2022-06-29 03:03:46', '2022-06-29 03:03:46', NULL),
(248, 10, 'accept', '2022-06-29 10:05:22am', 237, '2022-06-29 03:05:22', '2022-06-29 03:05:22', NULL),
(249, 11, 'accept', '2022-06-29 10:10:20am', 239, '2022-06-29 03:10:20', '2022-06-29 03:10:20', NULL),
(250, 10, 'accept', '2022-06-29 10:10:31am', 234, '2022-06-29 03:10:31', '2022-06-29 03:10:31', NULL),
(251, 11, 'accept', '2022-06-29 10:12:38am', 225, '2022-06-29 03:12:38', '2022-06-29 03:12:38', NULL),
(252, 11, 'accept', '2022-06-29 10:15:02am', 225, '2022-06-29 03:15:02', '2022-06-29 03:15:02', NULL),
(253, 11, 'accept', '2022-06-29 10:15:32am', 224, '2022-06-29 03:15:32', '2022-06-29 03:15:32', NULL),
(254, 11, 'accept', '2022-06-29 10:16:15am', 235, '2022-06-29 03:16:15', '2022-06-29 03:16:15', NULL),
(255, 42, 'accept', '2022-06-29 10:37:04am', 242, '2022-06-29 03:37:04', '2022-06-29 03:37:04', NULL),
(256, 42, 'accept', '2022-06-29 10:38:08am', 241, '2022-06-29 03:38:08', '2022-06-29 03:38:08', NULL),
(257, 10, 'accept', '2022-06-29 14:39:15pm', 245, '2022-06-29 07:39:15', '2022-06-29 07:39:15', NULL),
(258, 10, 'accept', '2022-06-29 14:39:26pm', 246, '2022-06-29 07:39:26', '2022-06-29 07:39:26', NULL),
(259, 42, 'accept', '2022-06-30 09:20:02am', 262, '2022-06-30 02:20:02', '2022-06-30 02:20:02', NULL),
(260, 42, 'accept', '2022-06-30 09:22:21am', 261, '2022-06-30 02:22:21', '2022-06-30 02:22:21', NULL),
(261, 42, 'accept', '2022-06-30 10:33:08am', 247, '2022-06-30 03:33:08', '2022-06-30 03:33:08', NULL),
(262, 42, 'accept', '2022-06-30 10:34:26am', 247, '2022-06-30 03:34:26', '2022-06-30 03:34:26', NULL),
(263, 42, 'accept', '2022-06-30 10:35:52am', 248, '2022-06-30 03:35:52', '2022-06-30 03:35:52', NULL),
(264, 42, 'accept', '2022-06-30 10:36:31am', 249, '2022-06-30 03:36:31', '2022-06-30 03:36:31', NULL),
(265, 42, 'accept', '2022-06-30 10:37:16am', 250, '2022-06-30 03:37:16', '2022-06-30 03:37:16', NULL),
(266, 42, 'accept', '2022-06-30 10:46:13am', 258, '2022-06-30 03:46:13', '2022-06-30 03:46:13', NULL),
(267, 42, 'accept', '2022-06-30 10:48:15am', 257, '2022-06-30 03:48:15', '2022-06-30 03:48:15', NULL),
(268, 42, 'accept', '2022-06-30 11:07:06am', 256, '2022-06-30 04:07:06', '2022-06-30 04:07:06', NULL),
(269, 42, 'accept', '2022-06-30 11:21:41am', 255, '2022-06-30 04:21:41', '2022-06-30 04:21:41', NULL),
(270, 10, 'accept', '2022-06-30 11:31:38am', 263, '2022-06-30 04:31:38', '2022-06-30 04:31:38', NULL),
(271, 42, 'accept', '2022-06-30 11:34:55am', 251, '2022-06-30 04:34:55', '2022-06-30 04:34:55', NULL),
(272, 42, 'accept', '2022-06-30 11:34:59am', 252, '2022-06-30 04:34:59', '2022-06-30 04:34:59', NULL),
(273, 42, 'accept', '2022-06-30 12:48:40pm', 259, '2022-06-30 05:48:40', '2022-06-30 05:48:40', NULL),
(274, 42, 'accept', '2022-06-30 12:49:44pm', 260, '2022-06-30 05:49:44', '2022-06-30 05:49:44', NULL),
(275, 42, 'accept', '2022-07-01 10:18:31am', 265, '2022-07-01 03:18:31', '2022-07-01 03:18:31', NULL),
(276, 10, 'accept', '2022-07-01 15:51:44pm', 266, '2022-07-01 08:51:44', '2022-07-01 08:51:44', NULL),
(277, 10, 'accept', '2022-07-01 15:56:43pm', 268, '2022-07-01 08:56:43', '2022-07-01 08:56:43', NULL),
(278, 10, 'accept', '2022-07-01 16:00:59pm', 269, '2022-07-01 09:00:59', '2022-07-01 09:00:59', NULL),
(279, 10, 'accept', '2022-07-01 16:01:03pm', 269, '2022-07-01 09:01:03', '2022-07-01 09:01:03', NULL),
(280, 10, 'accept', '2022-07-02 10:16:27am', 267, '2022-07-02 03:16:27', '2022-07-02 03:16:27', NULL),
(281, 10, 'accept', '2022-07-02 10:16:43am', 267, '2022-07-02 03:16:43', '2022-07-02 03:16:43', NULL),
(282, 11, 'accept', '2022-07-02 10:17:50am', 264, '2022-07-02 03:17:50', '2022-07-02 03:17:50', NULL),
(283, 11, 'accept', '2022-07-02 10:19:17am', 254, '2022-07-02 03:19:17', '2022-07-02 03:19:17', NULL),
(284, 11, 'accept', '2022-07-02 10:19:55am', 253, '2022-07-02 03:19:55', '2022-07-02 03:19:55', NULL),
(285, 10, 'accept', '2022-07-02 10:42:03am', 267, '2022-07-02 03:42:03', '2022-07-02 03:42:03', NULL),
(286, 10, 'accept', '2022-07-02 10:42:42am', 267, '2022-07-02 03:42:42', '2022-07-02 03:42:42', NULL),
(287, 42, 'accept', '2022-07-02 14:06:48pm', 273, '2022-07-02 07:06:48', '2022-07-02 07:06:48', NULL),
(288, 42, 'accept', '2022-07-02 14:10:41pm', 272, '2022-07-02 07:10:41', '2022-07-02 07:10:41', NULL),
(289, 42, 'accept', '2022-07-02 14:12:56pm', 275, '2022-07-02 07:12:56', '2022-07-02 07:12:56', NULL),
(290, 42, 'reject', '2022-07-02 14:15:39pm', 271, '2022-07-02 07:15:39', '2022-07-02 07:15:39', NULL),
(291, 11, 'accept', '2022-07-02 16:25:44pm', 279, '2022-07-02 09:25:44', '2022-07-02 09:25:44', NULL),
(292, 42, 'reject', '2022-07-03 09:48:50am', 284, '2022-07-03 02:48:50', '2022-07-03 02:48:50', NULL),
(293, 42, 'reject', '2022-07-03 09:48:58am', 284, '2022-07-03 02:48:58', '2022-07-03 02:48:58', NULL),
(294, 42, 'accept', '2022-07-03 10:37:30am', 278, '2022-07-03 03:37:30', '2022-07-03 03:37:30', NULL),
(295, 42, 'accept', '2022-07-03 11:30:01am', 285, '2022-07-03 04:30:01', '2022-07-03 04:30:01', NULL),
(296, 10, 'accept', '2022-07-03 19:40:31pm', 274, '2022-07-03 12:40:31', '2022-07-03 12:40:31', NULL),
(297, 10, 'accept', '2022-07-03 19:41:26pm', 270, '2022-07-03 12:41:26', '2022-07-03 12:41:26', NULL),
(298, 42, 'accept', '2022-07-04 15:37:03pm', 281, '2022-07-04 08:37:03', '2022-07-04 08:37:03', NULL),
(299, 42, 'accept', '2022-07-04 15:40:16pm', 283, '2022-07-04 08:40:16', '2022-07-04 08:40:16', NULL),
(300, 42, 'accept', '2022-07-04 15:41:51pm', 282, '2022-07-04 08:41:51', '2022-07-04 08:41:51', NULL),
(301, 42, 'reject', '2022-07-04 15:43:35pm', 286, '2022-07-04 08:43:35', '2022-07-04 08:43:35', NULL),
(302, 42, 'reject', '2022-07-04 15:44:09pm', 293, '2022-07-04 08:44:09', '2022-07-04 08:44:09', NULL),
(303, 42, 'reject', '2022-07-04 15:45:06pm', 289, '2022-07-04 08:45:06', '2022-07-04 08:45:06', NULL),
(304, 42, 'reject', '2022-07-04 15:46:30pm', 292, '2022-07-04 08:46:30', '2022-07-04 08:46:30', NULL),
(305, 42, 'accept', '2022-07-04 15:52:39pm', 294, '2022-07-04 08:52:39', '2022-07-04 08:52:39', NULL),
(306, 42, 'accept', '2022-07-04 15:56:22pm', 295, '2022-07-04 08:56:22', '2022-07-04 08:56:22', NULL),
(307, 42, 'accept', '2022-07-04 15:59:36pm', 296, '2022-07-04 08:59:36', '2022-07-04 08:59:36', NULL),
(308, 42, 'accept', '2022-07-04 16:01:29pm', 297, '2022-07-04 09:01:29', '2022-07-04 09:01:29', NULL),
(309, 42, 'accept', '2022-07-04 16:04:43pm', 300, '2022-07-04 09:04:43', '2022-07-04 09:04:43', NULL),
(310, 42, 'accept', '2022-07-04 16:05:43pm', 306, '2022-07-04 09:05:43', '2022-07-04 09:05:43', NULL),
(311, 42, 'accept', '2022-07-04 16:12:20pm', 304, '2022-07-04 09:12:20', '2022-07-04 09:12:20', NULL),
(312, 10, 'accept', '2022-07-04 16:17:11pm', 299, '2022-07-04 09:17:11', '2022-07-04 09:17:11', NULL),
(313, 10, 'accept', '2022-07-04 16:25:28pm', 299, '2022-07-04 09:25:28', '2022-07-04 09:25:28', NULL),
(314, 11, 'accept', '2022-07-04 17:22:11pm', 298, '2022-07-04 10:22:11', '2022-07-04 10:22:11', NULL),
(315, 11, 'accept', '2022-07-04 17:22:47pm', 302, '2022-07-04 10:22:47', '2022-07-04 10:22:47', NULL),
(316, 42, 'accept', '2022-07-05 09:21:46am', 308, '2022-07-05 02:21:46', '2022-07-05 02:21:46', NULL),
(317, 10, 'accept', '2022-07-05 12:03:31pm', 303, '2022-07-05 05:03:31', '2022-07-05 05:03:31', NULL),
(318, 10, 'accept', '2022-07-05 12:05:38pm', 280, '2022-07-05 05:05:38', '2022-07-05 05:05:38', NULL),
(319, 42, 'accept', '2022-07-05 12:27:15pm', 309, '2022-07-05 05:27:15', '2022-07-05 05:27:15', NULL),
(320, 10, 'accept', '2022-07-06 09:43:58am', 314, '2022-07-06 02:43:58', '2022-07-06 02:43:58', NULL),
(321, 10, 'accept', '2022-07-06 09:44:05am', 314, '2022-07-06 02:44:05', '2022-07-06 02:44:05', NULL),
(322, 42, 'accept', '2022-07-06 09:53:12am', 313, '2022-07-06 02:53:12', '2022-07-06 02:53:12', NULL),
(323, 42, 'accept', '2022-07-06 09:57:25am', 310, '2022-07-06 02:57:25', '2022-07-06 02:57:25', NULL),
(324, 42, 'reject', '2022-07-06 09:59:02am', 277, '2022-07-06 02:59:02', '2022-07-06 02:59:02', NULL),
(325, 42, 'reject', '2022-07-06 09:59:16am', 276, '2022-07-06 02:59:16', '2022-07-06 02:59:16', NULL),
(326, 42, 'accept', '2022-07-06 10:53:36am', 315, '2022-07-06 03:53:36', '2022-07-06 03:53:36', NULL),
(327, 10, 'accept', '2022-07-06 11:47:10am', 317, '2022-07-06 04:47:10', '2022-07-06 04:47:10', NULL),
(328, 10, 'accept', '2022-07-06 12:04:54pm', 316, '2022-07-06 05:04:54', '2022-07-06 05:04:54', NULL),
(329, 10, 'reject', '2022-07-06 12:35:05pm', 321, '2022-07-06 05:35:05', '2022-07-06 05:35:05', 'Site to Site Transfer (From Ma Su Latt Site to KKST,QS Passed amount is 200 ft(0.333 coil))'),
(330, 10, 'reject', '2022-07-06 12:35:11pm', 321, '2022-07-06 05:35:11', '2022-07-06 05:35:11', 'Site to Site Transfer (From Ma Su Latt Site to KKST,QS Passed amount is 200 ft(0.333 coil))'),
(331, 11, 'accept', '2022-07-06 14:14:39pm', 318, '2022-07-06 07:14:39', '2022-07-06 07:14:39', NULL),
(332, 42, 'accept', '2022-07-07 09:23:08am', 322, '2022-07-07 02:23:08', '2022-07-07 02:23:08', NULL),
(333, 42, 'accept', '2022-07-07 09:23:12am', 323, '2022-07-07 02:23:12', '2022-07-07 02:23:12', NULL),
(334, 42, 'accept', '2022-07-07 09:35:42am', 324, '2022-07-07 02:35:42', '2022-07-07 02:35:42', NULL),
(335, 42, 'accept', '2022-07-07 09:53:33am', 325, '2022-07-07 02:53:33', '2022-07-07 02:53:33', NULL),
(336, 42, 'accept', '2022-07-07 10:12:47am', 319, '2022-07-07 03:12:47', '2022-07-07 03:12:47', NULL),
(337, 42, 'accept', '2022-07-07 14:13:51pm', 329, '2022-07-07 07:13:51', '2022-07-07 07:13:51', NULL),
(338, 42, 'accept', '2022-07-07 14:14:03pm', 328, '2022-07-07 07:14:03', '2022-07-07 07:14:03', NULL),
(339, 10, 'accept', '2022-07-07 15:01:49pm', 301, '2022-07-07 08:01:49', '2022-07-07 08:01:49', NULL),
(340, 42, 'accept', '2022-07-08 10:00:06am', 330, '2022-07-08 03:00:06', '2022-07-08 03:00:06', NULL),
(341, 10, 'accept', '2022-07-08 10:18:21am', 326, '2022-07-08 03:18:21', '2022-07-08 03:18:21', NULL),
(342, 10, 'accept', '2022-07-08 10:19:16am', 326, '2022-07-08 03:19:16', '2022-07-08 03:19:16', NULL),
(343, 10, 'accept', '2022-07-08 10:19:18am', 326, '2022-07-08 03:19:18', '2022-07-08 03:19:18', NULL),
(344, 10, 'accept', '2022-07-08 10:20:25am', 327, '2022-07-08 03:20:25', '2022-07-08 03:20:25', NULL),
(345, 11, 'accept', '2022-07-08 13:41:11pm', 336, '2022-07-08 06:41:11', '2022-07-08 06:41:11', NULL),
(346, 11, 'reject', '2022-07-08 13:41:48pm', 335, '2022-07-08 06:41:48', '2022-07-08 06:41:48', NULL),
(347, 42, 'accept', '2022-07-09 10:48:42am', 343, '2022-07-09 03:48:42', '2022-07-09 03:48:42', NULL),
(348, 42, 'accept', '2022-07-09 12:19:10pm', 343, '2022-07-09 05:19:10', '2022-07-09 05:19:10', NULL),
(349, 42, 'accept', '2022-07-09 12:19:25pm', 342, '2022-07-09 05:19:25', '2022-07-09 05:19:25', NULL),
(350, 42, 'reject', '2022-07-09 12:24:53pm', 355, '2022-07-09 05:24:53', '2022-07-09 05:24:53', NULL),
(351, 42, 'reject', '2022-07-09 12:25:10pm', 355, '2022-07-09 05:25:10', '2022-07-09 05:25:10', NULL),
(352, 42, 'accept', '2022-07-09 13:08:08pm', 338, '2022-07-09 06:08:08', '2022-07-09 06:08:08', NULL),
(353, 42, 'accept', '2022-07-09 13:08:13pm', 339, '2022-07-09 06:08:13', '2022-07-09 06:08:13', NULL),
(354, 42, 'accept', '2022-07-09 13:13:41pm', 341, '2022-07-09 06:13:41', '2022-07-09 06:13:41', NULL),
(355, 42, 'accept', '2022-07-09 14:29:54pm', 305, '2022-07-09 07:29:54', '2022-07-09 07:29:54', NULL),
(356, 42, 'accept', '2022-07-09 14:29:58pm', 305, '2022-07-09 07:29:58', '2022-07-09 07:29:58', NULL),
(357, 42, 'accept', '2022-07-09 14:34:18pm', 340, '2022-07-09 07:34:18', '2022-07-09 07:34:18', NULL),
(358, 42, 'reject', '2022-07-11 09:24:02am', 307, '2022-07-11 02:24:02', '2022-07-11 02:24:02', NULL),
(359, 42, 'reject', '2022-07-11 10:03:29am', 333, '2022-07-11 03:03:29', '2022-07-11 03:03:29', NULL),
(360, 42, 'reject', '2022-07-11 10:03:39am', 331, '2022-07-11 03:03:39', '2022-07-11 03:03:39', NULL),
(361, 11, 'accept', '2022-07-11 10:07:43am', 345, '2022-07-11 03:07:43', '2022-07-11 03:07:43', NULL),
(362, 11, 'reject', '2022-07-11 10:07:53am', 346, '2022-07-11 03:07:53', '2022-07-11 03:07:53', NULL),
(363, 42, 'reject', '2022-07-11 10:15:48am', 291, '2022-07-11 03:15:48', '2022-07-11 03:15:48', NULL),
(364, 10, 'accept', '2022-07-11 10:17:08am', 350, '2022-07-11 03:17:08', '2022-07-11 03:17:08', NULL),
(365, 10, 'accept', '2022-07-11 10:23:07am', 351, '2022-07-11 03:23:07', '2022-07-11 03:23:07', NULL),
(366, 10, 'accept', '2022-07-11 10:24:14am', 351, '2022-07-11 03:24:14', '2022-07-11 03:24:14', NULL),
(367, 42, 'accept', '2022-07-11 10:26:54am', 375, '2022-07-11 03:26:54', '2022-07-11 03:26:54', NULL),
(368, 42, 'reject', '2022-07-11 10:32:54am', 374, '2022-07-11 03:32:54', '2022-07-11 03:32:54', NULL),
(369, 42, 'reject', '2022-07-11 10:33:00am', 373, '2022-07-11 03:33:00', '2022-07-11 03:33:00', NULL),
(370, 42, 'reject', '2022-07-11 10:33:07am', 372, '2022-07-11 03:33:07', '2022-07-11 03:33:07', NULL),
(371, 42, 'reject', '2022-07-11 10:33:12am', 371, '2022-07-11 03:33:12', '2022-07-11 03:33:12', NULL),
(372, 42, 'reject', '2022-07-11 10:33:21am', 370, '2022-07-11 03:33:21', '2022-07-11 03:33:21', NULL),
(373, 42, 'reject', '2022-07-11 10:34:08am', 369, '2022-07-11 03:34:08', '2022-07-11 03:34:08', NULL),
(374, 42, 'reject', '2022-07-11 10:34:14am', 368, '2022-07-11 03:34:14', '2022-07-11 03:34:14', NULL),
(375, 42, 'reject', '2022-07-11 10:34:20am', 367, '2022-07-11 03:34:20', '2022-07-11 03:34:20', NULL),
(376, 42, 'reject', '2022-07-11 10:34:25am', 366, '2022-07-11 03:34:25', '2022-07-11 03:34:25', NULL),
(377, 11, 'accept', '2022-07-11 10:35:00am', 347, '2022-07-11 03:35:00', '2022-07-11 03:35:00', NULL),
(378, 11, 'accept', '2022-07-11 10:37:40am', 344, '2022-07-11 03:37:40', '2022-07-11 03:37:40', NULL),
(379, 11, 'accept', '2022-07-11 10:40:53am', 365, '2022-07-11 03:40:53', '2022-07-11 03:40:53', NULL),
(380, 11, 'accept', '2022-07-11 10:44:03am', 361, '2022-07-11 03:44:03', '2022-07-11 03:44:03', NULL),
(381, 11, 'accept', '2022-07-11 10:46:02am', 361, '2022-07-11 03:46:02', '2022-07-11 03:46:02', NULL),
(382, 10, 'accept', '2022-07-11 10:46:44am', 349, '2022-07-11 03:46:44', '2022-07-11 03:46:44', NULL),
(383, 10, 'accept', '2022-07-11 10:48:11am', 352, '2022-07-11 03:48:11', '2022-07-11 03:48:11', NULL),
(384, 11, 'accept', '2022-07-11 10:48:31am', 360, '2022-07-11 03:48:31', '2022-07-11 03:48:31', NULL),
(385, 11, 'accept', '2022-07-11 10:53:21am', 354, '2022-07-11 03:53:21', '2022-07-11 03:53:21', NULL),
(386, 11, 'accept', '2022-07-11 10:55:48am', 353, '2022-07-11 03:55:48', '2022-07-11 03:55:48', NULL),
(387, 42, 'reject', '2022-07-11 11:03:14am', 390, '2022-07-11 04:03:14', '2022-07-11 04:03:14', NULL),
(388, 42, 'accept', '2022-07-11 11:07:22am', 391, '2022-07-11 04:07:22', '2022-07-11 04:07:22', NULL),
(389, 42, 'accept', '2022-07-11 11:14:01am', 392, '2022-07-11 04:14:01', '2022-07-11 04:14:01', NULL),
(390, 10, 'accept', '2022-07-11 11:17:20am', 359, '2022-07-11 04:17:20', '2022-07-11 04:17:20', NULL),
(391, 42, 'accept', '2022-07-11 11:23:13am', 393, '2022-07-11 04:23:13', '2022-07-11 04:23:13', NULL),
(392, 10, 'accept', '2022-07-11 11:40:18am', 337, '2022-07-11 04:40:18', '2022-07-11 04:40:18', NULL),
(393, 42, 'accept', '2022-07-11 11:46:53am', 364, '2022-07-11 04:46:53', '2022-07-11 04:46:53', NULL),
(394, 42, 'accept', '2022-07-11 11:50:52am', 362, '2022-07-11 04:50:52', '2022-07-11 04:50:52', NULL),
(395, 10, 'accept', '2022-07-11 12:02:00pm', 381, '2022-07-11 05:02:00', '2022-07-11 05:02:00', NULL),
(396, 11, 'accept', '2022-07-11 12:17:01pm', 394, '2022-07-11 05:17:01', '2022-07-11 05:17:01', NULL),
(397, 10, 'accept', '2022-07-11 12:18:30pm', 377, '2022-07-11 05:18:30', '2022-07-11 05:18:30', NULL),
(398, 10, 'accept', '2022-07-11 12:22:54pm', 377, '2022-07-11 05:22:54', '2022-07-11 05:22:54', NULL),
(399, 10, 'accept', '2022-07-11 12:34:39pm', 378, '2022-07-11 05:34:39', '2022-07-11 05:34:39', NULL),
(400, 10, 'accept', '2022-07-11 12:36:20pm', 396, '2022-07-11 05:36:20', '2022-07-11 05:36:20', NULL),
(401, 10, 'accept', '2022-07-11 12:36:57pm', 397, '2022-07-11 05:36:57', '2022-07-11 05:36:57', NULL),
(402, 10, 'accept', '2022-07-11 12:39:24pm', 398, '2022-07-11 05:39:24', '2022-07-11 05:39:24', NULL),
(403, 11, 'accept', '2022-07-11 13:56:05pm', 376, '2022-07-11 06:56:05', '2022-07-11 06:56:05', NULL),
(404, 11, 'accept', '2022-07-11 17:29:13pm', 395, '2022-07-11 10:29:13', '2022-07-11 10:29:13', NULL),
(405, 42, 'accept', '2022-07-13 09:35:21am', 401, '2022-07-13 02:35:21', '2022-07-13 02:35:21', NULL),
(406, 42, 'accept', '2022-07-13 09:39:47am', 400, '2022-07-13 02:39:47', '2022-07-13 02:39:47', NULL),
(407, 11, 'accept', '2022-07-13 10:00:31am', 363, '2022-07-13 03:00:31', '2022-07-13 03:00:31', NULL),
(408, 11, 'reject', '2022-07-13 10:41:08am', 404, '2022-07-13 03:41:08', '2022-07-13 03:41:08', NULL),
(409, 11, 'accept', '2022-07-13 12:00:33pm', 403, '2022-07-13 05:00:33', '2022-07-13 05:00:33', NULL),
(410, 11, 'reject', '2022-07-13 12:04:58pm', 407, '2022-07-13 05:04:58', '2022-07-13 05:04:58', NULL),
(411, 11, 'accept', '2022-07-13 12:13:42pm', 410, '2022-07-13 05:13:42', '2022-07-13 05:13:42', NULL),
(412, 11, 'accept', '2022-07-13 12:14:05pm', 409, '2022-07-13 05:14:05', '2022-07-13 05:14:05', NULL),
(413, 11, 'accept', '2022-07-13 12:14:31pm', 408, '2022-07-13 05:14:31', '2022-07-13 05:14:31', NULL),
(414, 11, 'accept', '2022-07-13 12:25:31pm', 402, '2022-07-13 05:25:31', '2022-07-13 05:25:31', NULL),
(415, 11, 'accept', '2022-07-13 12:36:30pm', 411, '2022-07-13 05:36:30', '2022-07-13 05:36:30', NULL),
(416, 11, 'accept', '2022-07-13 12:38:24pm', 406, '2022-07-13 05:38:24', '2022-07-13 05:38:24', NULL),
(417, 10, 'reject', '2022-07-13 14:24:17pm', 382, '2022-07-13 07:24:17', '2022-07-13 07:24:17', 'Just Testing Plz request'),
(418, 1, 'reject', '2022-07-13 14:39:23pm', 415, '2022-07-13 07:39:23', '2022-07-13 07:39:23', 'Testing'),
(419, 1, 'reject', '2022-07-13 14:39:33pm', 415, '2022-07-13 07:39:33', '2022-07-13 07:39:33', 'Testing'),
(420, 1, 'reject', '2022-07-13 14:39:34pm', 415, '2022-07-13 07:39:34', '2022-07-13 07:39:34', 'Testing'),
(421, 1, 'reject', '2022-07-13 14:39:54pm', 415, '2022-07-13 07:39:54', '2022-07-13 07:39:54', 'Testing'),
(422, 1, NULL, '2022-07-13 15:04:35pm', 418, '2022-07-13 08:04:35', '2022-07-13 08:04:35', 'Testing'),
(423, 1, 'accept', '2022-07-13 15:04:37pm', 418, '2022-07-13 08:04:37', '2022-07-13 08:04:37', 'Testing'),
(424, 42, 'accept', '2022-07-13 16:34:59pm', 420, '2022-07-13 09:34:59', '2022-07-13 09:34:59', NULL),
(425, 42, 'accept', '2022-07-13 16:36:41pm', 358, '2022-07-13 09:36:41', '2022-07-13 09:36:41', NULL),
(426, 42, 'accept', '2022-07-13 16:36:46pm', 357, '2022-07-13 09:36:46', '2022-07-13 09:36:46', NULL),
(427, 42, 'accept', '2022-07-13 16:36:51pm', 356, '2022-07-13 09:36:51', '2022-07-13 09:36:51', NULL),
(428, 42, 'accept', '2022-07-14 09:32:22am', 421, '2022-07-14 02:32:22', '2022-07-14 02:32:22', NULL),
(429, 10, 'accept', '2022-07-14 09:55:27am', 414, '2022-07-14 02:55:27', '2022-07-14 02:55:27', NULL),
(430, 10, 'accept', '2022-07-14 09:55:34am', 414, '2022-07-14 02:55:34', '2022-07-14 02:55:34', NULL),
(431, 10, 'accept', '2022-07-14 09:59:47am', 413, '2022-07-14 02:59:47', '2022-07-14 02:59:47', NULL),
(432, 10, 'accept', '2022-07-14 10:00:02am', 413, '2022-07-14 03:00:02', '2022-07-14 03:00:02', NULL),
(433, 10, 'accept', '2022-07-14 10:01:00am', 399, '2022-07-14 03:01:00', '2022-07-14 03:01:00', NULL),
(434, 11, 'accept', '2022-07-14 10:30:42am', 412, '2022-07-14 03:30:42', '2022-07-14 03:30:42', NULL),
(435, 11, 'accept', '2022-07-14 10:31:18am', 405, '2022-07-14 03:31:18', '2022-07-14 03:31:18', NULL),
(436, 10, 'accept', '2022-07-14 11:14:20am', 383, '2022-07-14 04:14:20', '2022-07-14 04:14:20', NULL),
(437, 10, 'accept', '2022-07-14 11:16:47am', 387, '2022-07-14 04:16:47', '2022-07-14 04:16:47', NULL),
(438, 10, 'accept', '2022-07-14 11:19:21am', 386, '2022-07-14 04:19:21', '2022-07-14 04:19:21', NULL),
(439, 10, 'accept', '2022-07-14 11:19:48am', 385, '2022-07-14 04:19:48', '2022-07-14 04:19:48', NULL),
(440, 10, 'accept', '2022-07-14 11:20:08am', 384, '2022-07-14 04:20:08', '2022-07-14 04:20:08', NULL),
(441, 10, 'accept', '2022-07-14 11:20:47am', 416, '2022-07-14 04:20:47', '2022-07-14 04:20:47', NULL),
(442, 11, 'accept', '2022-07-14 12:05:48pm', 426, '2022-07-14 05:05:48', '2022-07-14 05:05:48', NULL),
(443, 11, 'accept', '2022-07-14 12:10:44pm', 425, '2022-07-14 05:10:44', '2022-07-14 05:10:44', NULL),
(444, 11, 'accept', '2022-07-14 12:11:16pm', 424, '2022-07-14 05:11:16', '2022-07-14 05:11:16', NULL),
(445, 11, 'reject', '2022-07-14 12:16:45pm', 423, '2022-07-14 05:16:45', '2022-07-14 05:16:45', NULL),
(446, 42, 'accept', '2022-07-14 13:49:37pm', 419, '2022-07-14 06:49:37', '2022-07-14 06:49:37', NULL),
(447, 42, 'reject', '2022-07-14 14:24:57pm', 332, '2022-07-14 07:24:57', '2022-07-14 07:24:57', NULL),
(448, 42, 'accept', '2022-07-14 17:52:24pm', 433, '2022-07-14 10:52:24', '2022-07-14 10:52:24', NULL),
(449, 42, 'accept', '2022-07-14 17:58:23pm', 432, '2022-07-14 10:58:23', '2022-07-14 10:58:23', NULL),
(450, 42, 'accept', '2022-07-14 18:04:09pm', 431, '2022-07-14 11:04:09', '2022-07-14 11:04:09', NULL),
(451, 42, 'accept', '2022-07-15 09:39:18am', 427, '2022-07-15 02:39:18', '2022-07-15 02:39:18', NULL),
(452, 42, 'accept', '2022-07-15 09:51:15am', 437, '2022-07-15 02:51:15', '2022-07-15 02:51:15', NULL),
(453, 42, 'accept', '2022-07-15 09:51:15am', 437, '2022-07-15 02:51:15', '2022-07-15 02:51:15', NULL),
(454, 42, 'accept', '2022-07-15 09:51:15am', 437, '2022-07-15 02:51:15', '2022-07-15 02:51:15', NULL),
(455, 42, 'accept', '2022-07-15 10:00:31am', 436, '2022-07-15 03:00:31', '2022-07-15 03:00:31', NULL),
(456, 42, 'accept', '2022-07-15 10:03:42am', 439, '2022-07-15 03:03:42', '2022-07-15 03:03:42', NULL),
(457, 11, 'accept', '2022-07-15 11:05:07am', 435, '2022-07-15 04:05:07', '2022-07-15 04:05:07', NULL),
(458, 10, 'accept', '2022-07-15 14:03:00pm', 438, '2022-07-15 07:03:00', '2022-07-15 07:03:00', NULL),
(459, 42, 'accept', '2022-07-15 15:34:09pm', 447, '2022-07-15 08:34:09', '2022-07-15 08:34:09', NULL),
(460, 11, 'accept', '2022-07-15 18:04:50pm', 428, '2022-07-15 11:04:50', '2022-07-15 11:04:50', NULL),
(461, 42, 'accept', '2022-07-16 09:36:18am', 442, '2022-07-16 02:36:18', '2022-07-16 02:36:18', NULL),
(462, 10, 'accept', '2022-07-16 09:38:02am', 440, '2022-07-16 02:38:02', '2022-07-16 02:38:02', NULL),
(463, 10, 'accept', '2022-07-16 09:38:24am', 440, '2022-07-16 02:38:24', '2022-07-16 02:38:24', NULL),
(464, 10, 'accept', '2022-07-16 09:40:43am', 443, '2022-07-16 02:40:43', '2022-07-16 02:40:43', NULL),
(465, 10, 'accept', '2022-07-16 09:41:45am', 441, '2022-07-16 02:41:45', '2022-07-16 02:41:45', NULL),
(466, 42, 'accept', '2022-07-16 09:43:53am', 444, '2022-07-16 02:43:53', '2022-07-16 02:43:53', NULL),
(467, 10, 'accept', '2022-07-16 09:44:14am', 449, '2022-07-16 02:44:14', '2022-07-16 02:44:14', NULL),
(468, 42, 'accept', '2022-07-16 09:52:04am', 448, '2022-07-16 02:52:04', '2022-07-16 02:52:04', NULL),
(469, 42, 'accept', '2022-07-16 09:55:36am', 448, '2022-07-16 02:55:36', '2022-07-16 02:55:36', NULL),
(470, 11, 'accept', '2022-07-16 14:06:28pm', 446, '2022-07-16 07:06:28', '2022-07-16 07:06:28', NULL),
(471, 11, 'accept', '2022-07-16 14:07:21pm', 445, '2022-07-16 07:07:21', '2022-07-16 07:07:21', NULL),
(472, 11, 'accept', '2022-07-16 14:07:51pm', 454, '2022-07-16 07:07:51', '2022-07-16 07:07:51', NULL),
(473, 11, 'accept', '2022-07-16 14:20:24pm', 429, '2022-07-16 07:20:24', '2022-07-16 07:20:24', NULL),
(474, 11, 'accept', '2022-07-16 14:52:44pm', 429, '2022-07-16 07:52:44', '2022-07-16 07:52:44', NULL),
(475, 11, 'accept', '2022-07-16 15:01:26pm', 430, '2022-07-16 08:01:26', '2022-07-16 08:01:26', NULL),
(476, 1, 'accept', '2022-07-20 08:56:59am', 463, '2022-07-20 02:26:59', '2022-07-20 02:26:59', 'Accept Ok'),
(477, 1, 'reject', '2022-07-20 08:58:12am', 462, '2022-07-20 02:28:12', '2022-07-20 02:28:12', 'Reject Ok'),
(478, 1, 'accept', '2022-07-20 09:01:42am', 461, '2022-07-20 02:31:42', '2022-07-20 02:31:42', 'OK Accept'),
(479, 1, 'reject', '2022-07-20 09:02:22am', 460, '2022-07-20 02:32:22', '2022-07-20 02:32:22', 'Reject Ok'),
(480, 1, 'accept', '2022-07-20 09:03:08am', 460, '2022-07-20 02:33:08', '2022-07-20 02:33:08', 'Accept Ok'),
(481, 1, 'accept', '2022-07-23 20:58:25pm', 434, '2022-07-23 14:28:25', '2022-07-23 14:28:25', NULL),
(482, 1, 'accept', '2022-08-14 14:38:52pm', 40, '2022-08-14 08:08:52', '2022-08-14 08:08:52', 'Ok'),
(483, 1, 'reject', '2022-08-14 14:40:37pm', 5, '2022-08-14 08:10:37', '2022-08-14 08:10:37', NULL),
(484, 1, 'reject', '2022-08-14 14:40:57pm', 6, '2022-08-14 08:10:57', '2022-08-14 08:10:57', NULL),
(485, 1, 'reject', '2022-08-14 14:41:12pm', 7, '2022-08-14 08:11:12', '2022-08-14 08:11:12', NULL),
(486, 1, 'reject', '2022-08-14 14:42:14pm', 8, '2022-08-14 08:12:14', '2022-08-14 08:12:14', NULL),
(487, 1, 'accept', '2022-08-14 14:45:30pm', 5, '2022-08-14 08:15:30', '2022-08-14 08:15:30', NULL),
(488, 1, 'accept', '2022-08-14 14:46:00pm', 6, '2022-08-14 08:16:00', '2022-08-14 08:16:00', NULL),
(489, 1, 'reject', '2022-08-14 15:01:46pm', 6, '2022-08-14 08:31:46', '2022-08-14 08:31:46', NULL),
(490, 1, 'reject', '2022-08-14 15:01:55pm', 5, '2022-08-14 08:31:55', '2022-08-14 08:31:55', NULL),
(491, 1, 'accept', '2022-08-14 15:17:23pm', 5, '2022-08-14 08:47:23', '2022-08-14 08:47:23', NULL),
(492, 1, 'reject', '2022-08-14 15:24:07pm', 55, '2022-08-14 08:54:07', '2022-08-14 08:54:07', NULL),
(493, 1, 'accept', '2022-08-14 15:34:50pm', 55, '2022-08-14 09:04:50', '2022-08-14 09:04:50', NULL),
(494, 1, 'reject', '2022-08-14 15:35:08pm', 107, '2022-08-14 09:05:08', '2022-08-14 09:05:08', NULL),
(495, 1, 'reject', '2022-08-14 15:41:19pm', 55, '2022-08-14 09:11:19', '2022-08-14 09:11:19', NULL),
(496, 1, 'accept', '2022-08-14 15:41:47pm', 55, '2022-08-14 09:11:47', '2022-08-14 09:11:47', NULL),
(497, 1, 'reject', '2022-08-14 15:45:15pm', 55, '2022-08-14 09:15:15', '2022-08-14 09:15:15', NULL),
(498, 1, 'reject', '2022-08-14 15:45:31pm', 55, '2022-08-14 09:15:31', '2022-08-14 09:15:31', NULL),
(499, 1, 'accept', '2022-08-14 15:45:52pm', 55, '2022-08-14 09:15:52', '2022-08-14 09:15:52', NULL),
(500, 1, 'reject', '2022-08-14 15:46:03pm', 55, '2022-08-14 09:16:03', '2022-08-14 09:16:03', NULL),
(501, 1, 'accept', '2022-08-14 15:48:10pm', 107, '2022-08-14 09:18:10', '2022-08-14 09:18:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_actual_vouchers`
--

CREATE TABLE `variable_actual_vouchers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `actual_voucher_upload_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_voucher_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_voucher_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(45, 17, 'finished', '2022-06-24 12:45:50pm', 'public/actual_voucher/Jvbx0yxGkHOWqFrylZBiEKwCDaXtaaZKYXs3nXk6.jpg', 'Bamboo.jpg', 189, '2022-06-24 05:45:50', '2022-06-24 05:45:50', 'Ko San Htoo (Bamboo 100Nos)'),
(46, 17, 'finished', '2022-06-25 11:30:15am', 'public/actual_voucher/MWXzqOG21QE2G6AgKWPIwh9VFsZRT3yfEASrZjkX.jpg', 'Paint KHMT.jpg', 193, '2022-06-25 04:30:15', '2022-06-25 04:30:15', NULL),
(47, 17, 'finished', '2022-06-25 11:31:27am', 'public/actual_voucher/T9Uww7Io1ppP488TQSuIn97mI7vGj1htf7PUABu2.jpg', 'Paint KHMT.jpg', 194, '2022-06-25 04:31:27', '2022-06-25 04:31:27', NULL),
(48, 17, 'finished', '2022-06-25 11:38:47am', 'public/actual_voucher/tM6LUPX4rnffKdm6snI4k0mJ3jZYA0FNyaG8OP3D.jpg', 'CROCODILE DSSDA.jpg', 176, '2022-06-25 04:38:47', '2022-06-25 04:38:47', NULL),
(49, 21, 'finished', '2022-06-26 20:38:44pm', 'public/actual_voucher/iJoqIUDLRaTNpb6ckAYzBfhietPilR5QnxNXHLTs.jpg', 'viber_image_2022-06-02_11-43-38-691.jpg', 27, '2022-06-26 13:38:44', '2022-06-26 13:38:44', NULL),
(50, 21, 'finished', '2022-06-26 20:45:28pm', 'public/actual_voucher/a54xUvwQmypabYVHEZ9rTQ59CZCV6OPxObukyKfa.jpg', 'viber_image_2022-06-06_14-45-29-946.jpg', 41, '2022-06-26 13:45:28', '2022-06-26 13:45:28', NULL),
(51, 21, 'finished', '2022-06-26 21:06:13pm', 'public/actual_voucher/7GD5gtrw1FSs78aYSiIw57vf8SCgYTTKY8FQijoo.jpg', 'FIS.jpg', 43, '2022-06-26 14:06:13', '2022-06-26 14:06:13', NULL),
(52, 21, 'finished', '2022-06-26 21:08:06pm', 'public/actual_voucher/sNPyak1n35ZZHsPfBCSib5LVw2yZ6upxjNNy6jfQ.jpg', 'FIS 2.jpg', 115, '2022-06-26 14:08:06', '2022-06-26 14:08:06', NULL),
(53, 21, 'finished', '2022-06-26 21:10:12pm', 'public/actual_voucher/DP1SdoWnddFz5rpALVsuBTnFYDqDTRrKBNQuJM21.jpg', 'MT J Wood.jpg', 85, '2022-06-26 14:10:12', '2022-06-26 14:10:12', NULL),
(54, 21, 'finished', '2022-06-26 21:11:48pm', 'public/actual_voucher/XwJEIyyeA6CdDsmr0yyv5Z4RHZ0FRg2SpsgizKy5.jpg', 'MSDF UN 90000.jpg', 106, '2022-06-26 14:11:48', '2022-06-26 14:11:48', NULL),
(55, 21, 'finished', '2022-06-26 21:16:04pm', 'public/actual_voucher/k7BKAAM2LqjWsMem0dbY5zu26fTlfu07VjS9fXaW.jpg', 'MWD 80.jpg', 139, '2022-06-26 14:16:04', '2022-06-26 14:16:04', NULL),
(56, 21, 'finished', '2022-06-26 21:17:17pm', 'public/actual_voucher/ZFn9tsmdJ3MsYOLdYeHsHv0BNuen5QWUAtnkUo3B.jpg', 'DSSDA 100.jpg', 138, '2022-06-26 14:17:17', '2022-06-26 14:17:17', NULL),
(57, 21, 'finished', '2022-06-26 21:18:31pm', 'public/actual_voucher/LJ5WcWDqRUJ2r8t6krNaaChvqWQTk6Hx0D55Iq00.jpg', 'UWN 140.jpg', 132, '2022-06-26 14:18:31', '2022-06-26 14:18:31', NULL),
(58, 21, 'finished', '2022-06-26 21:26:00pm', 'public/actual_voucher/c4XYGEybYfUmJtxh7s8waWEZpf8iCWXy6JgUoIzv.jpg', 'UWN 140.jpg', 134, '2022-06-26 14:26:00', '2022-06-26 14:26:00', NULL),
(59, 21, 'finished', '2022-06-26 21:26:37pm', 'public/actual_voucher/vPpBiQYF1ucd3687hM5LIcV9auMZfoj00ika2Xx5.jpg', 'UWN 140.jpg', 129, '2022-06-26 14:26:37', '2022-06-26 14:26:37', NULL),
(60, 21, 'finished', '2022-06-26 21:42:46pm', 'public/actual_voucher/tTfLrMMJrLg4s3YWA4SY9dZ0KK0XlfgoHmJhsYRq.jpg', 'viber_image_2022-06-13_15-16-45-082.jpg', 86, '2022-06-26 14:42:46', '2022-06-26 14:42:46', NULL),
(61, 21, 'finished', '2022-06-26 21:56:01pm', 'public/actual_voucher/UydlqzeJfB6PBCuH9i4rGYwUNbY49hnqfaafiNJK.jpg', 'FH 80.jpg', 183, '2022-06-26 14:56:01', '2022-06-26 14:56:01', NULL),
(62, 21, 'finished', '2022-06-26 21:56:06pm', 'public/actual_voucher/Kd3ZTVexMGtjiP2NYIrgCwUfoK7n74cTOddIeMvR.jpg', 'FH 80.jpg', 183, '2022-06-26 14:56:06', '2022-06-26 14:56:06', NULL),
(63, 21, 'finished', '2022-06-26 21:56:41pm', 'public/actual_voucher/hzdLm8LGjkKKKMXIQpBd8YqA5Oae9fXZlLhl2Gla.jpg', 'FH 80.jpg', 173, '2022-06-26 14:56:41', '2022-06-26 14:56:41', NULL),
(64, 21, 'finished', '2022-06-26 21:59:08pm', 'public/actual_voucher/cyP6m4mdeq5mzexMrXfKWRxURgPM6U9HTxsAVH1D.jpg', 'MSDF ZHA.jpg', 206, '2022-06-26 14:59:08', '2022-06-26 14:59:08', NULL),
(65, 21, 'finished', '2022-06-26 22:02:19pm', 'public/actual_voucher/Xv9sx4R3BFF5T9jMtYsPeWPc7bX2DSy5uVUVyaPf.jpg', 'MSDF ZHA.jpg', 200, '2022-06-26 15:02:19', '2022-06-26 15:02:19', NULL),
(66, 21, 'finished', '2022-06-26 22:06:39pm', 'public/actual_voucher/VGqhsFAhOKUBwi8tVuWxcZUYZwTcUqQANNzk2CnI.jpg', 'Ywat Nu Wai.jpg', 203, '2022-06-26 15:06:39', '2022-06-26 15:06:39', NULL),
(67, 21, 'finished', '2022-06-26 22:09:14pm', 'public/actual_voucher/1tRsbenchiuHeDF7AgIqpiffLVM5VnrRnmHCVbWq.jpg', 'MSDF WWL 26.6.22.jpg', 190, '2022-06-26 15:09:14', '2022-06-26 15:09:14', NULL),
(68, 21, 'finished', '2022-06-26 22:11:18pm', 'public/actual_voucher/hA4o8xUZlAJS1PIQ6RJk8VkZI7lu1fJxaeYPgO3A.jpg', 'MSDF UN 1.8 Ton.jpg', 185, '2022-06-26 15:11:18', '2022-06-26 15:11:18', NULL),
(69, 21, 'finished', '2022-06-26 22:14:20pm', 'public/actual_voucher/iTwue3eIHVQVPIwbksaLd5VPJenlWpM75ImgXtEu.jpg', 'FH 35 Bag.jpg', 169, '2022-06-26 15:14:20', '2022-06-26 15:14:20', NULL),
(70, 21, 'finished', '2022-06-26 22:16:17pm', 'public/actual_voucher/0sOOHjAJICjvVk8ZghgyTTd83Z8AUbWtfxbjhfjy.jpg', 'FH 50 bag 22.6.jpg', 165, '2022-06-26 15:16:17', '2022-06-26 15:16:17', NULL),
(71, 21, 'finished', '2022-06-26 22:17:25pm', 'public/actual_voucher/noMcBja1t010XU0odBbkVmMoUEfPeGvl8tPqhvTP.jpg', 'MT MSL.jpg', 157, '2022-06-26 15:17:25', '2022-06-26 15:17:25', NULL),
(72, 21, 'finished', '2022-06-26 22:24:05pm', 'public/actual_voucher/TPfKjaDfZGODRGQDPIaeyg1BCrri7lVhhZHHcWlG.jpg', 'MS Rod.jpg', 121, '2022-06-26 15:24:05', '2022-06-26 15:24:05', NULL),
(73, 21, 'finished', '2022-06-26 22:24:47pm', 'public/actual_voucher/DI5pnOvInR6mdlGlOyymREwbZjdJsffAj0sCJnpp.jpg', 'MS Rod.jpg', 116, '2022-06-26 15:24:47', '2022-06-26 15:24:47', NULL),
(74, 18, 'finished', '2022-07-04 14:18:22pm', 'public/actual_voucher/TyTGunXIqpqtBW10x5LyOf54NBLIBXMrr4gEGxWr.jpg', 'M S L (6.5 mm ).jpg', 265, '2022-07-04 07:18:22', '2022-07-04 07:18:22', NULL),
(75, 17, 'finished', '2022-07-04 16:14:10pm', 'public/actual_voucher/9NNvBRhGZGphy5HcRrZkBIczoJVcaNU65RLN4ZQh.jpg', 'C Channel.jpg', 220, '2022-07-04 09:14:10', '2022-07-04 09:14:10', NULL),
(79, 18, 'finished', '2022-07-13 15:14:55pm', 'public/actual_voucher/V3WeLdYZLaErCVz5LFRpgzL6zb0IaVEnuNAkbCD9.jpg', 'For M Z W ( 3.7.22 & 5.7.22 ).jpg', 279, '2022-07-13 08:14:55', '2022-07-13 08:14:55', NULL),
(80, 18, 'finished', '2022-07-13 15:14:55pm', 'public/actual_voucher/CRzx5qTOT7nmWJwIMfgjcgei2YEDQYI5ICylvefc.jpg', 'For M Z W ( 6.7.22 ) ( VR-000275).jpg', 279, '2022-07-13 08:14:55', '2022-07-13 08:14:55', NULL),
(81, 18, 'finished', '2022-07-13 16:23:37pm', 'public/actual_voucher/4TR5NmzyXanzPE1xRR6ycza4EBozSIcibysIAhUA.jpg', 'For K Z H A ( 8.7.22 ) VR-309.jpg', 313, '2022-07-13 09:23:37', '2022-07-13 09:23:37', NULL),
(82, 18, 'finished', '2022-07-13 16:23:37pm', 'public/actual_voucher/UGF8Jo9gIhVd7fAX0dYXYbPSsiLICgEliS6upqne.jpg', 'For K Z H A ( 11.7.22) VR -000309.jpg', 313, '2022-07-13 09:23:37', '2022-07-13 09:23:37', NULL),
(83, 17, 'finished', '2022-07-13 22:20:56pm', 'public/actual_voucher/1erKNVcwhrIZmRXed68JOBoR1sK1VjURTCALE372.jpg', 'Htun Hla 2.jpg', 229, '2022-07-13 15:20:56', '2022-07-13 15:20:56', NULL),
(84, 17, 'finished', '2022-07-13 22:38:25pm', 'public/actual_voucher/SmdbAh3DLf8W5hKGAPVVFPyrYJykfLliX3CeH60W.jpg', 'T & A Voucher.jpg', 226, '2022-07-13 15:38:25', '2022-07-13 15:38:25', 'Order  85bags ,QS မှ 60 bags သာခွင့်ပြု , Site to Site  40 bags အစားပြန်ပေးသဖြင့်  100 bags ပို့ပေးရခြင်းဖြစ်ပါသည်။'),
(85, 17, 'finished', '2022-07-13 22:54:20pm', 'public/actual_voucher/NfrbezHGfrdeVbxqTvENUumZmqET7K2lQ4y9jHhS.jpg', 'Paint KHMT.jpg', 192, '2022-07-13 15:54:20', '2022-07-13 15:54:20', NULL),
(86, 17, 'finished', '2022-07-13 22:55:14pm', 'public/actual_voucher/7FQh2vH3Mc11ksMIb9JmupzBqiFqXzCMyFP5kSpU.jpg', 'Paint KHMT.jpg', 193, '2022-07-13 15:55:14', '2022-07-13 15:55:14', NULL),
(87, 17, 'finished', '2022-07-13 23:06:23pm', 'public/actual_voucher/WLB4PKnmE5Chj2MyGAijfz8ex4I6vFNuVUshbXMT.jpg', 'DSSDA Cement 50.jpg', 191, '2022-07-13 16:06:23', '2022-07-13 16:06:23', NULL),
(88, 17, 'finished', '2022-07-13 23:19:48pm', 'public/actual_voucher/8WPkZsMHlK56BrY0JuAj4FrIfhkz1NIvMdu8mHOO.jpg', 'KSH Cement 60.jpg', 174, '2022-07-13 16:19:48', '2022-07-13 16:19:48', 'Site to Site ပို့ထားသဖြင့်  60 bags ပေးပို့ရခြင်းဖြစ်ပါသည်။'),
(89, 17, 'finished', '2022-07-13 23:25:07pm', 'public/actual_voucher/2xcJ5CQCaPF0u2n9eakGxS3Wcb1KBGThSsDP1ic8.jpg', '1.jpg', 300, '2022-07-13 16:25:07', '2022-07-13 16:25:07', NULL),
(90, 17, 'finished', '2022-07-13 23:36:29pm', 'public/actual_voucher/90GPajpP0yFQwspE1iqQKvH4VEKuChbLyA3gVcIq.jpg', 'MWD Cement 35.jpg', 234, '2022-07-13 16:36:29', '2022-07-13 16:36:29', 'Order  50 bags, QS  ခွင့်ပြု  35 bags,  Site သို့ ပေးပို့   35 bags'),
(91, 17, 'finished', '2022-07-13 23:38:52pm', 'public/actual_voucher/ZIINPEwIgmNIs4dvrpnBIXDrlgH1MrIHUYvs9Egw.jpg', 'DSSDA Cement 30.jpg', 235, '2022-07-13 16:38:52', '2022-07-13 16:38:52', 'Order  50 bags, QS ခွင့်ပြု  30 bags , Site သို့ပေးပို့  30 bags'),
(92, 17, 'finished', '2022-07-13 23:54:23pm', 'public/actual_voucher/Xy2gwwCgb5jalWCzTBtNtxT96MvOZ47Q61bUPMBJ.jpg', 'KSH Cement 68.jpg', 308, '2022-07-13 16:54:23', '2022-07-13 16:54:23', 'Order  50 bags,  QS ခွင့်ပြု  50 bags, \r\nSite to Site  18 bags (MHWYP), Site  သို့ပေးပို့   68 bags'),
(93, 17, 'finished', '2022-07-14 00:03:02am', 'public/actual_voucher/8EJDmHVi8WBx79THijDHmo5EoYcpPQdENoglVOme.jpg', 'MHWYP Cement 56.jpg', 241, '2022-07-13 17:03:02', '2022-07-13 17:03:02', 'Order  28 bags,  QS  ခွင့်ပြု   28 bags, Voucher 56 bags က လုပ်ငန်းစဉ် (၂ )မျိုး အတွက် အမှာတင် သဖြင့်  ပေးပို့ရခြင်းဖြစ်သည်။'),
(94, 17, 'finished', '2022-07-14 00:07:44am', 'public/actual_voucher/Vz6W1HGfIjh0rLZjHptvUkZmD0l3MZhe5TiZtldW.jpg', 'MHWYP Cement 56.jpg', 242, '2022-07-13 17:07:44', '2022-07-13 17:07:44', 'Order  55 bags, QS ခွင့်ပြု  28 bags , Site သို့ပေးပို့   28 bags'),
(95, 17, 'finished', '2022-07-14 20:51:38pm', 'public/actual_voucher/RCccfbhxnnO3rojmjcroXkfks1IkclH5HU0ftAYW.jpg', 'DSSDA Cement 50,29.jpg', 208, '2022-07-14 13:51:38', '2022-07-14 13:51:38', 'Order  90 bags, QS ခွင့်ပြု  50 bags,  Site  ပို့  50 bags'),
(96, 17, 'finished', '2022-07-14 21:06:26pm', 'public/actual_voucher/Ztr74Fn11R7ggfGw6RGRgbj5jxBhvAefzoGqy7WL.jpg', 'DKAAK Cement 50.jpg', 172, '2022-07-14 14:06:26', '2022-07-14 14:06:26', NULL),
(97, 17, 'finished', '2022-07-14 21:09:03pm', 'public/actual_voucher/v4er1qFEnyHBOuFQ2zqcEGDurAb58Ea1NYI13rBT.jpg', 'DKAAK Cement 50.jpg', 170, '2022-07-14 14:09:03', '2022-07-14 14:09:03', NULL),
(98, 17, 'finished', '2022-07-14 21:22:34pm', 'public/actual_voucher/1SZUk56q0Z1wwyxFXyo1inbvPW7i4sVdMyxqvMo0.jpg', 'UWN Cement 50.jpg', 94, '2022-07-14 14:22:34', '2022-07-14 14:22:34', NULL),
(99, 17, 'finished', '2022-07-14 21:25:09pm', 'public/actual_voucher/UIR82SFxEbBwkXoqo4kaJobVreROsRdYuveL7NNN.jpg', 'MWD Cement 50.jpg', 15, '2022-07-14 14:25:09', '2022-07-14 14:25:09', NULL),
(100, 17, 'finished', '2022-07-14 21:37:09pm', 'public/actual_voucher/Ty3xVsNSeqbYFSsn7wLRQK1oGfqO1lnWmDMGXZCP.jpg', 'DSSDA Cement 50,12.jpg', 104, '2022-07-14 14:37:09', '2022-07-14 14:37:09', NULL),
(101, 17, 'finished', '2022-07-14 21:49:06pm', 'public/actual_voucher/Ge5TgFsNnvW23jQOTgKuxcYaAfiGGNSvD1fFA9FA.jpg', 'DKAAK Re-bar.jpg', 344, '2022-07-14 14:49:06', '2022-07-14 14:49:06', NULL),
(102, 17, 'finished', '2022-07-14 21:49:53pm', 'public/actual_voucher/pVXoZMmmLucxg9IBgGoxh4z87fTpCJqM98u1QXFi.jpg', 'DKAAK Re-bar.jpg', 345, '2022-07-14 14:49:53', '2022-07-14 14:49:53', NULL),
(103, 17, 'finished', '2022-07-14 21:51:46pm', 'public/actual_voucher/ovkq2lr5CBoJ9SFwrcDZSP08bmuHBHJur1CPCK9v.jpg', 'DKAAK Re-bar.jpg', 347, '2022-07-14 14:51:46', '2022-07-14 14:51:46', NULL),
(104, 17, 'finished', '2022-07-14 21:54:53pm', 'public/actual_voucher/XIsiHSbtvaneaXsr51bZmQ7QSRB3bA1xxqrW6uaE.jpg', 'DKAAK Cement 50.jpg', 89, '2022-07-14 14:54:53', '2022-07-14 14:54:53', NULL),
(105, 17, 'finished', '2022-07-14 22:21:36pm', 'public/actual_voucher/RseXuP0acE4G1og4glDNnPHvLoRx0IbfLpquXBLk.jpg', 'KHMT Cement 50,26.jpg', 9, '2022-07-14 15:21:36', '2022-07-14 15:21:36', NULL),
(106, 17, 'finished', '2022-07-14 22:29:14pm', 'public/actual_voucher/FZlPxwNYpAvThI2E3Yui9uBMuq29D2Cpvgr3B2wo.jpg', 'KSH Cement 40.jpg', 160, '2022-07-14 15:29:14', '2022-07-14 15:29:14', NULL),
(107, 17, 'finished', '2022-07-14 22:57:13pm', 'public/actual_voucher/r3LIS9yiQcf0Ut4RqYzM4YTEi7DjgoD1hAAwj69A.jpg', 'Zar Ni.jpg', 36, '2022-07-14 15:57:13', '2022-07-14 15:57:13', NULL),
(108, 17, 'finished', '2022-07-14 22:59:01pm', 'public/actual_voucher/OxUcgrqk7F0M44o8HrRBlCPsKLvco7Hcdt5Vmqry.jpg', 'Zar Ni.jpg', 76, '2022-07-14 15:59:01', '2022-07-14 15:59:01', NULL),
(109, 17, 'finished', '2022-07-14 23:04:49pm', 'public/actual_voucher/tmwcMwWXovrf7IJjUotVLJXkxB30RfbcLMx0PQeX.jpg', 'Zar Ni.jpg', 130, '2022-07-14 16:04:49', '2022-07-14 16:04:49', NULL),
(110, 17, 'finished', '2022-07-14 23:13:19pm', 'public/actual_voucher/h7pAnp3axBi39eOamdQNkLLVXcSwJ3UK98L9E4Fb.jpg', 'Khin Zar Ni.jpg', 112, '2022-07-14 16:13:19', '2022-07-14 16:13:19', NULL),
(111, 17, 'finished', '2022-07-14 23:14:17pm', 'public/actual_voucher/ydC3JXaDUcTo0zQpilsA3vZiG489Su0gP2UWtQtH.jpg', 'Khin Zar Ni.jpg', 147, '2022-07-14 16:14:17', '2022-07-14 16:14:17', NULL),
(112, 17, 'finished', '2022-07-14 23:14:44pm', 'public/actual_voucher/mYa1laq81cVZr1K1cUS2d2sLxpViQkEFRJHc88pH.jpg', 'Khin Zar Ni.jpg', 154, '2022-07-14 16:14:44', '2022-07-14 16:14:44', NULL),
(113, 17, 'finished', '2022-07-14 23:23:04pm', 'public/actual_voucher/6swsD4ST3tjxPsxcNA4Bp24h5nLFh5oOsl7nkusF.jpg', 'MHWYP Sand & River Shingle.jpg', 53, '2022-07-14 16:23:04', '2022-07-14 16:23:04', NULL),
(114, 17, 'finished', '2022-07-14 23:36:21pm', 'public/actual_voucher/qJkxbEeZQT8YSGtI5rzSp2oSiHrEOpSe4hNxMgpf.jpg', 'DSSDA Sand & River Shingle.jpg', 59, '2022-07-14 16:36:21', '2022-07-14 16:36:21', NULL),
(115, 17, 'finished', '2022-07-14 23:37:03pm', 'public/actual_voucher/CARfYbicI7egqQT3VrrxvlJaj2A9AODiJo8Gr8Yn.jpg', 'DSSDA Sand & River Shingle.jpg', 77, '2022-07-14 16:37:03', '2022-07-14 16:37:03', NULL),
(116, 17, 'finished', '2022-07-14 23:37:38pm', 'public/actual_voucher/m0LSLH61qtmSXsPXnZfLkpRwc6fW6ugjlMS7YiN6.jpg', 'DSSDA Sand & River Shingle.jpg', 79, '2022-07-14 16:37:38', '2022-07-14 16:37:38', NULL),
(117, 17, 'finished', '2022-07-14 23:38:49pm', 'public/actual_voucher/QlcbByNvIdIcIOYYWiEVOX1sDARlqiN7Ys4EhyJX.jpg', 'DSSDA Sand & River Shingle.jpg', 44, '2022-07-14 16:38:49', '2022-07-14 16:38:49', NULL),
(118, 17, 'finished', '2022-07-14 23:39:28pm', 'public/actual_voucher/phGEwraMM5ue6dNKuOAQsCZ8NOSHt3KwYmEXVZDm.jpg', 'DSSDA Sand & River Shingle.jpg', 56, '2022-07-14 16:39:28', '2022-07-14 16:39:28', NULL),
(119, 17, 'finished', '2022-07-14 23:54:40pm', 'public/actual_voucher/1NEdePC9d1ETc22XlnvyOZhVpG5emnC4ojNB6bcR.jpg', 'DSSDA Sand & River Shingle.jpg', 82, '2022-07-14 16:54:40', '2022-07-14 16:54:40', NULL),
(120, 17, 'finished', '2022-07-14 23:57:19pm', 'public/actual_voucher/it5gYgHcCoYj7xoLTVXAFl4sWwPwFc58BwvorHoT.jpg', 'DSSDA Sand & River Shingle.jpg', 105, '2022-07-14 16:57:19', '2022-07-14 16:57:19', NULL),
(121, 17, 'finished', '2022-07-14 23:58:42pm', 'public/actual_voucher/OvBmLxR81Jm69aFnCIjti9fY64954HTYEwLB2nNR.jpg', 'DSSDA Sand & River Shingle.jpg', 123, '2022-07-14 16:58:42', '2022-07-14 16:58:42', NULL),
(122, 17, 'finished', '2022-07-14 23:59:33pm', 'public/actual_voucher/7o700GGfQqDe4MdS84BbqsxkCcJUAu8lvu37Vbw5.jpg', 'DSSDA Sand & River Shingle.jpg', 141, '2022-07-14 16:59:33', '2022-07-14 16:59:33', NULL),
(123, 17, 'finished', '2022-07-15 00:00:08am', 'public/actual_voucher/F3yqodA8vZn03aBmoDkxFuPBVqjzR1PVzmFWjB9O.jpg', 'DSSDA Sand & River Shingle.jpg', 142, '2022-07-14 17:00:08', '2022-07-14 17:00:08', NULL),
(124, 17, 'finished', '2022-07-15 00:00:57am', 'public/actual_voucher/PzqBkZx44JG22KU6kXW58sL3T00yJkM4PsFV4foj.jpg', 'DSSDA Sand & River Shingle.jpg', 143, '2022-07-14 17:00:57', '2022-07-14 17:00:57', NULL),
(125, 17, 'finished', '2022-07-15 00:07:22am', 'public/actual_voucher/leW17UTJ0GNTeUq3ECsYEiaSomCWtE7SHWyt7MU5.jpg', 'DKAAK Sand & River Shingle.jpg', 107, '2022-07-14 17:07:22', '2022-07-14 17:07:22', NULL),
(126, 17, 'finished', '2022-07-15 00:08:00am', 'public/actual_voucher/a2TpTGVwMSVjfPhkYJdZluBzndGrhGLgT1nhYavG.jpg', 'DKAAK Sand & River Shingle.jpg', 119, '2022-07-14 17:08:00', '2022-07-14 17:08:00', NULL),
(127, 17, 'finished', '2022-07-15 00:08:37am', 'public/actual_voucher/T358usGgO0hWvgiNHDzZGKkxiBAZhsrHl39mkAKi.jpg', 'DKAAK Sand & River Shingle.jpg', 152, '2022-07-14 17:08:37', '2022-07-14 17:08:37', NULL),
(128, 18, 'finished', '2022-07-15 10:03:41am', 'public/actual_voucher/ShzkyITXmH5bJlarvGS4Mgr8lkHJ9PHKnO8oqkGH.jpg', 'For M Z W ( SCG ) ( VR-000174).jpg', 178, '2022-07-15 03:03:41', '2022-07-15 03:03:41', NULL),
(129, 18, 'finished', '2022-07-15 10:03:41am', 'public/actual_voucher/Y9iIwwgGExVHMUDfOmpJVXzHbG6KrBQ97kZoEGey.jpg', 'For M Z W ( VR-000174).jpg', 178, '2022-07-15 03:03:41', '2022-07-15 03:03:41', NULL),
(130, 18, 'finished', '2022-07-15 10:14:49am', 'public/actual_voucher/6G5086j3XpnB9cFNYBqdloIoAW9iRWUIKirBUOM6.jpg', 'For K Z H A ( VR-000229).jpg', 233, '2022-07-15 03:14:49', '2022-07-15 03:14:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_assets`
--

CREATE TABLE `variable_assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_warehouse_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sizes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_order` int(11) DEFAULT 0,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_assets`
--

INSERT INTO `variable_assets` (`id`, `item_name`, `unit`, `qty`, `remark`, `main_warehouse_id`, `created_at`, `updated_at`, `sizes`, `display_order`, `category`) VALUES
(1, 'Cement ( 52.5 )', 'Bag', 0, NULL, 1, '2022-04-29 09:56:36', '2022-07-14 16:06:22', 'null', 2, 'Construction'),
(4, 'Cement ( 42.5 )', 'Bag', 0, NULL, 1, '2022-04-30 02:57:58', '2022-07-14 16:06:22', 'null', 1, 'Construction'),
(5, 'Deformed Bar 10mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:31:02', '2022-07-14 16:06:22', 'null', 12, 'Construction'),
(6, 'Deformed Bar 12mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:31:40', '2022-07-14 16:06:22', 'null', 13, 'Construction'),
(7, 'Deformed Bar 16mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:05', '2022-07-14 16:06:22', 'null', 14, 'Construction'),
(8, 'Deformed Bar 20mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:27', '2022-07-14 16:06:22', 'null', 15, 'Construction'),
(9, 'Deformed Bar 25mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:32:43', '2022-07-14 16:06:22', 'null', 16, 'Construction'),
(10, 'Deformed Bar 10mm ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:33:36', '2022-07-14 16:06:22', 'null', 17, 'Construction'),
(11, 'Deformed Bar 12mm ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:04', '2022-07-15 04:36:37', 'null', 18, 'Construction'),
(12, 'Deformed Bar 16mm ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:28', '2022-07-15 04:36:37', 'null', 19, 'Construction'),
(13, 'Deformed Bar 20mm ( Local )', 'Ton', 0, NULL, 1, '2022-04-30 03:34:43', '2022-07-15 04:36:37', 'null', 20, 'Construction'),
(15, 'MS Coil 6.5mm ( Original )', 'Coil', 0, NULL, 1, '2022-04-30 03:35:30', '2022-07-14 16:06:22', 'null', 10, 'Construction'),
(16, 'MS Coil 8mm ( Original )', 'Ton', 0, NULL, 1, '2022-04-30 03:35:49', '2022-07-14 16:06:22', 'null', 11, 'Construction'),
(17, 'Jungle Wood 3\"x2\" ( 10\' Above )', 'Ton', 0, NULL, 1, '2022-04-30 03:36:47', '2022-07-15 04:36:37', 'null', 24, 'Construction'),
(18, 'Jungle Wood 3\"x2\" ( 10\' Below )', 'Ton', 0, NULL, 1, '2022-04-30 03:37:16', '2022-07-15 04:36:37', 'null', 25, 'Construction'),
(19, 'Jungle Wood 3\"x1\" ( 10\' Above )', 'Ton', 0, NULL, 1, '2022-04-30 03:38:12', '2022-07-15 04:36:37', 'null', 22, 'Construction'),
(20, 'Jungle Wood 3\"x1\" ( 10\' Below )', 'Ton', 0, NULL, 1, '2022-04-30 03:38:48', '2022-07-15 04:36:37', 'null', 23, 'Construction'),
(22, 'Plywood 9mm ( 8\'x4\' Film Coated )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:03', '2022-07-15 04:36:37', 'null', 27, 'Construction'),
(24, 'Plywood 9mm ( 8\'x4\' Inkanyin )', 'Sht', 0, NULL, 1, '2022-04-30 03:42:56', '2022-07-15 04:36:37', 'null', 26, 'Construction'),
(25, 'Brick ( Normal )', 'Nos', 0, NULL, 1, '2022-04-30 04:18:41', '2022-07-14 16:06:22', 'null', 3, 'Construction'),
(26, 'River Sand', 'Sud', 0, NULL, 1, '2022-04-30 04:18:59', '2022-07-14 16:06:22', 'null', 5, 'Construction'),
(27, 'River Shingle', 'Sud', 0, NULL, 1, '2022-04-30 04:19:13', '2022-07-14 16:06:22', 'null', 8, 'Construction'),
(28, 'Concrete Block 9\"x9\"', 'Nos', 0, NULL, 1, '2022-04-30 04:19:57', '2022-07-15 04:36:23', 'null', 92, 'Construction'),
(29, 'Concrete Block 12\" x12\"', 'Nos', 0, NULL, 1, '2022-04-30 04:20:19', '2022-07-15 04:36:23', 'null', 93, 'Construction'),
(30, 'Glass Block 8\"x8\"', 'Nos', 0, NULL, 1, '2022-04-30 04:21:21', '2022-07-15 04:36:23', 'null', 91, 'Construction'),
(31, 'Red Oxide ( Master )', 'Gal', 0, NULL, 1, '2022-04-30 04:21:53', '2022-07-15 04:36:23', 'null', 155, 'Decoration'),
(32, 'Red Oxide ( Uni Prime )', 'Gal', 0, NULL, 1, '2022-04-30 04:22:20', '2022-07-15 04:36:23', 'null', 156, 'Decoration'),
(33, 'Turpentine', 'Gal', 0, NULL, 1, '2022-04-30 04:22:43', '2022-07-15 04:36:23', 'null', 158, 'Decoration'),
(34, 'Smooth Putty', 'Bag', 0, NULL, 1, '2022-04-30 04:23:01', '2022-07-15 04:36:23', 'null', 153, 'Decoration'),
(35, 'Thinplast Putty', 'Bag', 0, NULL, 1, '2022-04-30 04:25:16', '2022-07-15 04:36:23', 'null', 152, 'Decoration'),
(36, '1.5mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:37:57', '2022-07-17 15:46:40', 'null', 159, 'Electrical'),
(37, '2.5mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:12', '2022-07-17 15:46:40', 'null', 160, 'Electrical'),
(38, '4mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:31', '2022-07-17 15:46:40', 'null', 161, 'Electrical'),
(39, '6mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:38:44', '2022-07-17 15:46:40', 'null', 162, 'Electrical'),
(40, '10mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-04-30 05:39:11', '2022-07-17 15:46:40', 'null', 163, 'Electrical'),
(41, '1 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:39:33', '2022-07-17 15:46:22', 'null', 198, 'Electrical'),
(42, '1 Gang 2 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:40:07', '2022-07-17 15:46:22', 'null', 199, 'Electrical'),
(43, '2 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:09', '2022-07-17 15:46:22', 'null', 200, 'Electrical'),
(44, '2 Gang 2 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:25', '2022-07-17 15:46:22', 'null', 201, 'Electrical'),
(45, '3 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:41:53', '2022-07-17 15:46:22', 'null', 202, 'Electrical'),
(46, '4 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:42:08', '2022-07-17 15:46:22', 'null', 203, 'Electrical'),
(47, '5 Gang 1 Way Switch', 'Nos', 0, NULL, 1, '2022-04-30 05:42:21', '2022-07-17 15:46:22', 'null', 204, 'Electrical'),
(48, '1\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:07:06', '2022-07-17 15:46:22', 'null', 210, 'Electrical'),
(49, '1 1/2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:07:56', '2022-07-17 15:46:22', 'null', 211, 'Electrical'),
(50, '2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-04-30 06:08:16', '2022-07-17 15:46:22', 'null', 212, 'Electrical'),
(51, 'Wire Tape', 'Coil', 0, NULL, 1, '2022-04-30 06:12:34', '2022-07-17 15:46:22', 'null', 216, 'Electrical'),
(52, '½\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:14', '2022-07-17 15:46:22', 'null', 293, 'Plumbing'),
(53, '¾\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:29', '2022-07-17 15:46:22', 'null', 294, 'Plumbing'),
(54, '1\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:42', '2022-07-17 15:46:22', 'null', 295, 'Plumbing'),
(55, '1 ¼\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:13:59', '2022-07-17 15:46:22', 'null', 296, 'Plumbing'),
(56, '1 ½\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:21', '2022-07-17 15:46:22', 'null', 297, 'Plumbing'),
(57, '2\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:35', '2022-07-17 15:46:22', 'null', 298, 'Plumbing'),
(58, '3\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:14:49', '2022-07-17 15:46:22', 'null', 299, 'Plumbing'),
(59, '4\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:15:02', '2022-07-17 15:46:22', 'null', 300, 'Plumbing'),
(60, '½\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:27:16', '2022-07-17 15:46:22', 'null', 302, 'Plumbing'),
(61, '¾\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:27:39', '2022-07-17 15:46:22', 'null', 303, 'Plumbing'),
(62, '1\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:06', '2022-07-17 15:46:22', 'null', 304, 'Plumbing'),
(63, '1 ¼\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:24', '2022-07-17 15:46:22', 'null', 305, 'Plumbing'),
(64, '1 ½\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:28:24', '2022-07-17 15:46:22', 'null', 306, 'Plumbing'),
(65, '2\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:32:50', '2022-07-17 15:46:22', 'null', 307, 'Plumbing'),
(66, '3\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:33:03', '2022-07-17 15:46:22', 'null', 308, 'Plumbing'),
(67, '4\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-04-30 06:33:15', '2022-07-17 15:46:22', 'null', 309, 'Plumbing'),
(68, 'MS Hollow Pipe 1\"x1\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:15:08', '2022-07-15 04:36:37', 'null', 28, 'Construction'),
(69, 'MS Hollow Pipe 1½\"x1½\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:16:25', '2022-07-15 04:36:37', 'null', 29, 'Construction'),
(70, 'MS Hollow Pipe 2\"x2\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:16:50', '2022-07-15 04:36:37', 'null', 30, 'Construction'),
(71, 'MS Hollow Pipe 3\"x3\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:17:20', '2022-07-15 04:36:37', 'null', 31, 'Construction'),
(72, 'MS Hollow Pipe  4\"x4\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:17:37', '2022-07-15 04:36:37', 'null', 32, 'Construction'),
(73, 'MS Hollow Pipe 2\"x1\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:18:48', '2022-07-15 04:36:37', 'null', 33, 'Construction'),
(74, 'MS Hollow Pipe 3\"x1½\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:19:18', '2022-07-15 04:36:37', 'null', 34, 'Construction'),
(75, 'MS Hollow Pipe 4\"x2\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:19:43', '2022-07-15 04:36:37', 'null', 35, 'Construction'),
(76, 'GI Hollow Pipe 1\"x1\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:20:43', '2022-07-15 04:36:37', 'null', 36, 'Construction'),
(77, 'GI Hollow Pipe 1½\"x1½\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:21:14', '2022-07-15 04:36:37', 'null', 37, 'Construction'),
(78, 'GI Hollow Pipe 2\"x2\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:21:37', '2022-07-15 04:36:37', 'null', 38, 'Construction'),
(79, 'GI Hollow Pipe 3\"x3\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:05', '2022-07-15 04:36:37', 'null', 39, 'Construction'),
(80, 'GI Hollow Pipe 4\"x4\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:21', '2022-07-15 04:36:37', 'null', 40, 'Construction'),
(81, 'GI Hollow Pipe 2\"x1\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:22:38', '2022-07-15 04:36:37', 'null', 41, 'Construction'),
(82, 'GI Hollow Pipe 3\"x1½\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:23:04', '2022-07-15 04:36:37', 'null', 42, 'Construction'),
(83, 'GI Hollow Pipe 4\"x2\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:23:24', '2022-07-15 04:36:37', 'null', 43, 'Construction'),
(84, 'MS Angle Iron 1\"x1\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:24:39', '2022-07-15 04:36:37', 'null', 44, 'Construction'),
(85, 'MS Angle Iron 1¼\"x1¼\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:25:22', '2022-07-15 04:36:37', 'null', 45, 'Construction'),
(86, 'MS Angle Iron 1½\"x1½\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:25:57', '2022-07-15 04:36:37', 'null', 46, 'Construction'),
(87, 'MS Angle Iron 2\"x2\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:12', '2022-07-15 04:36:37', 'null', 47, 'Construction'),
(88, 'MS Angle Iron 3\"x3\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:28', '2022-07-15 04:36:37', 'null', 48, 'Construction'),
(89, 'MS Angle Iron 4\"x4\"', 'Pcs', 0, NULL, 1, '2022-05-10 15:26:43', '2022-07-15 04:36:37', 'null', 49, 'Construction'),
(90, 'Bamboo (10\' Above )', 'Pcs', 0, NULL, 1, '2022-05-10 16:19:11', '2022-07-15 04:36:37', 'null', 50, 'Construction'),
(91, 'Bamboo ( 15\' Above )', 'Pcs', 0, NULL, 1, '2022-05-10 16:19:21', '2022-07-15 04:36:37', 'null', 51, 'Construction'),
(92, 'Bamboo ( 20\' Above )', 'Pcs', 0, NULL, 1, '2022-05-10 16:22:37', '2022-07-15 04:36:37', 'null', 52, 'Construction'),
(93, 'Bamboo ( 25\' Above )', 'Pcs', 0, NULL, 1, '2022-05-10 16:23:00', '2022-07-15 04:36:37', 'null', 53, 'Construction'),
(94, 'Coir Yarn', 'Viss', 0, NULL, 1, '2022-05-10 16:24:32', '2022-07-15 04:36:37', 'null', 54, 'Construction'),
(95, 'Bakau Pile / Myaw ( 10\' )', 'Pcs', 0, NULL, 1, '2022-05-10 16:26:26', '2022-07-15 04:36:37', 'null', 55, 'Construction'),
(96, 'Bakau Pile / Myaw ( 13\' )', 'Pcs', 0, NULL, 1, '2022-05-10 16:26:43', '2022-07-15 04:36:37', 'null', 56, 'Construction'),
(97, 'Bamboo Mat / Wagat ( 4\'x2\' )', 'Sht', 0, NULL, 1, '2022-05-10 16:27:38', '2022-07-15 04:36:37', 'null', 57, 'Construction'),
(98, 'Bamboo Mat / Wagat ( 6\'x3\' )', 'Sht', 0, NULL, 1, '2022-05-10 16:28:33', '2022-07-15 04:36:37', 'null', 58, 'Construction'),
(99, 'Bamboo Mat / Wagat ( 8\'x3\' )', 'Sht', 0, NULL, 1, '2022-05-10 16:28:52', '2022-07-15 04:36:37', 'null', 59, 'Construction'),
(100, 'Bamboo Mat / Wagat ( 10\'x3\' )', 'Sht', 0, NULL, 1, '2022-05-10 16:29:09', '2022-07-15 04:36:37', 'null', 60, 'Construction'),
(101, 'PKD Chowket 5\"x2\"', 'Nos', 0, NULL, 1, '2022-06-03 02:46:51', '2022-07-15 04:36:23', 'null', 117, 'Decoration'),
(102, 'PKD Chowket 6\"x2\"', 'Nos', 0, NULL, 1, '2022-06-03 02:47:46', '2022-07-15 04:36:23', 'null', 118, 'Decoration'),
(103, 'Teak Door ( Single Leaf )', 'Nos', 0, NULL, 1, '2022-06-03 02:48:32', '2022-07-15 04:36:23', 'null', 119, 'Decoration'),
(104, 'Silt Sand', 'Sud', 0, NULL, 1, '2022-06-04 04:11:55', '2022-07-14 16:06:22', 'null', 7, 'Construction'),
(105, 'Concrete Cover Block ( 20/25 )', 'Nos', 0, NULL, 1, '2022-06-04 04:14:23', '2022-07-15 04:36:37', 'null', 61, 'Construction'),
(106, 'Concrete Cover Block ( 20/25/38 )', 'Nos', 0, NULL, 1, '2022-06-04 04:17:58', '2022-07-15 04:36:37', 'null', 62, 'Construction'),
(107, 'Rough Sand', 'Sud', 0, NULL, 1, '2022-06-04 04:24:10', '2022-07-14 16:06:22', 'null', 6, 'Construction'),
(108, 'Floor Tile ( 1\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:47:40', '2022-07-15 04:36:23', 'null', 102, 'Decoration'),
(109, 'Floor Tile ( 2\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:48:12', '2022-07-15 04:36:23', 'null', 103, 'Decoration'),
(110, 'Floor Tile ( 2\'x2\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:48:49', '2022-07-15 04:36:23', 'null', 104, 'Decoration'),
(111, 'Wall Tile ( 1\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:49:17', '2022-07-15 04:36:23', 'null', 106, 'Decoration'),
(112, 'Wall Tile ( 2\'x1\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:49:37', '2022-07-15 04:36:23', 'null', 107, 'Decoration'),
(113, 'Wall Tile ( 2\'x2\' )', 'Sht', 0, NULL, 1, '2022-06-04 04:58:31', '2022-07-15 04:36:23', 'null', 108, 'Decoration'),
(114, 'Decking Sheet ( 3\" Depth )', 'Rft', 0, NULL, 1, '2022-06-04 05:04:51', '2022-07-15 05:51:40', 'null', 89, 'Construction'),
(115, 'Hardcore 6\" x 9\"', 'Sud', 0, NULL, 1, '2022-06-07 05:27:43', '2022-07-15 04:36:37', 'null', 64, 'Construction'),
(116, 'Hardcore 4\" x 6\"', 'Sud', 0, NULL, 1, '2022-06-07 05:28:08', '2022-07-15 04:36:37', 'null', 63, 'Construction'),
(117, 'Tarpaulin ( 12\' Width )', 'Roll', 0, NULL, 1, '2022-06-08 09:31:47', '2022-07-17 15:46:22', 'null', 222, 'Other'),
(118, 'PKD Wood 4\"x4\"', 'Ton', 0, NULL, 1, '2022-06-08 09:36:41', '2022-07-15 04:36:23', 'null', 94, 'Construction'),
(119, 'Wire Nail 1\"', 'Viss', 0, NULL, 1, '2022-06-11 02:46:58', '2022-07-15 04:36:37', 'null', 66, 'Construction'),
(120, 'Wire Nail 1¼\"', 'Viss', 0, NULL, 1, '2022-06-11 02:55:16', '2022-07-15 04:36:37', 'null', 67, 'Construction'),
(121, 'Wire Nail 1½\"', 'Viss', 0, NULL, 1, '2022-06-11 02:55:41', '2022-07-15 04:36:37', 'null', 68, 'Construction'),
(122, 'Wire Nail 2\"', 'Viss', 0, NULL, 1, '2022-06-11 02:56:04', '2022-07-15 04:36:37', 'null', 69, 'Construction'),
(123, 'Wire Nail 2½\"', 'Viss', 0, NULL, 1, '2022-06-11 02:57:19', '2022-07-15 04:36:37', 'null', 70, 'Construction'),
(124, 'Wire Nail 3\"', 'Viss', 0, NULL, 1, '2022-06-11 02:57:33', '2022-07-15 04:36:37', 'null', 71, 'Construction'),
(125, 'Wire Nail 4\"', 'Viss', 0, NULL, 1, '2022-06-11 02:57:49', '2022-07-15 04:36:37', 'null', 72, 'Construction'),
(126, 'Binding Wire 16G', 'Coil', 0, NULL, 1, '2022-06-11 03:00:10', '2022-07-15 04:36:37', 'null', 73, 'Construction'),
(127, 'Binding Wire 18G', 'Coil', 0, NULL, 1, '2022-06-11 03:00:25', '2022-07-15 04:36:37', 'null', 74, 'Construction'),
(128, 'Bonding Agent', 'Liter', 0, NULL, 1, '2022-06-14 06:49:13', '2022-07-15 04:36:37', 'null', 76, 'Construction'),
(129, 'Grouting Cement', 'Bag', 0, NULL, 1, '2022-06-14 06:49:38', '2022-07-15 04:36:37', 'null', 77, 'Construction'),
(130, 'Epoxy Set ( 1Kg )', 'Tin', 0, NULL, 1, '2022-06-14 06:50:10', '2022-07-15 04:36:37', 'null', 78, 'Construction'),
(131, 'Topping  Aggregate', 'Sud', 0, NULL, 1, '2022-06-14 07:41:21', '2022-07-14 16:06:22', 'null', 9, 'Construction'),
(132, '4 Angle Roofing Sheet', 'Rft', 0, NULL, 1, '2022-06-21 08:10:49', '2022-07-15 04:36:23', 'null', 81, 'Construction'),
(133, 'Ridge Cover ( 1½\' )', 'Rft', 0, NULL, 1, '2022-06-21 08:12:00', '2022-07-15 04:36:23', 'null', 84, 'Construction'),
(134, 'Ridge Cover ( 2\' )', 'Rft', 0, NULL, 1, '2022-06-21 08:13:20', '2022-07-15 04:36:23', 'null', 85, 'Construction'),
(135, 'Smart Wood Board', 'Sht', 0, NULL, 1, '2022-06-21 09:38:52', '2022-07-15 04:36:23', 'null', 88, 'Construction'),
(136, 'Plain Sheet', 'Rft', 0, NULL, 1, '2022-06-21 09:42:44', '2022-07-15 04:36:23', 'null', 86, 'Construction'),
(137, 'Smart Putty', 'Bag', 0, NULL, 1, '2022-06-23 04:19:20', '2022-07-15 04:36:23', 'null', 154, 'Decoration'),
(139, 'UPG Orient Sealer ( 18 Lt )', 'Tin', 0, NULL, 1, '2022-06-23 04:20:41', '2022-07-15 04:36:23', 'null', 145, 'Decoration'),
(140, 'UPG Orient Sealer ( 7 Lt )', 'Tin', 0, NULL, 1, '2022-06-23 04:21:13', '2022-07-15 04:36:23', 'null', 144, 'Decoration'),
(142, 'No.8 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-06-23 04:23:23', '2022-07-15 04:36:23', 'null', 125, 'Decoration'),
(143, 'No.40 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-06-23 04:23:34', '2022-07-15 04:36:23', 'null', 126, 'Decoration'),
(144, 'Putty Plate', 'Nos', 0, NULL, 1, '2022-06-23 04:24:45', '2022-07-15 04:36:23', 'null', 135, 'Decoration'),
(145, 'Handle for Abrasive Paper', 'Nos', 0, NULL, 1, '2022-06-23 04:26:03', '2022-07-15 04:36:23', 'null', 136, 'Decoration'),
(146, 'Handle for Polish', 'Nos', 0, NULL, 1, '2022-06-23 04:26:30', '2022-07-15 04:36:23', 'null', 137, 'Decoration'),
(147, '10\" Roller', 'Nos', 0, NULL, 1, '2022-06-23 07:22:43', '2022-07-15 04:36:23', 'null', 140, 'Decoration'),
(148, '7\" Roller', 'Nos', 0, NULL, 1, '2022-06-23 07:22:55', '2022-07-15 04:36:23', 'null', 139, 'Decoration'),
(149, '4\" Roller', 'Nos', 0, NULL, 1, '2022-06-23 07:23:06', '2022-07-15 04:36:23', 'null', 138, 'Decoration'),
(150, '2\" Paint Brush', 'Nos', 0, NULL, 1, '2022-06-23 07:23:28', '2022-07-15 04:36:23', 'null', 141, 'Decoration'),
(151, '3\" Paint Brush', 'Nos', 0, NULL, 1, '2022-06-23 07:24:22', '2022-07-15 04:36:23', 'null', 142, 'Decoration'),
(152, '4\" Paint Brush', 'Nos', 0, NULL, 1, '2022-06-23 07:24:33', '2022-07-15 04:36:23', 'null', 143, 'Decoration'),
(153, 'Emulsion Paint (Exterior) 18Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:28:58', '2022-07-15 04:36:23', 'null', 149, 'Decoration'),
(154, 'Emulsion Paint (Interior) 18Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:29:26', '2022-07-15 04:36:23', 'null', 147, 'Decoration'),
(155, 'Emulsion Paint (Exterior) 7Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:29:37', '2022-07-15 04:36:23', 'null', 148, 'Decoration'),
(156, 'Emulsion Paint (Interior) 7Lt', 'Tin', 0, NULL, 1, '2022-06-23 07:29:51', '2022-07-15 04:36:23', 'null', 146, 'Decoration'),
(157, 'C Channel 13\'', 'Pcs', 0, NULL, 1, '2022-06-27 03:31:10', '2022-07-15 04:36:23', 'null', 133, 'Decoration'),
(158, 'L Bar 8\'', 'Pcs', 0, NULL, 1, '2022-06-27 03:31:33', '2022-07-15 04:36:23', 'null', 134, 'Decoration'),
(159, 'Gypsum Board 9mm ( Normal )', 'Sht', 0, NULL, 1, '2022-06-27 03:33:35', '2022-07-15 04:36:23', 'null', 130, 'Decoration'),
(160, '¼\" GI Wall Plug ( Expansion Bolt )', 'Nos', 0, NULL, 1, '2022-06-27 03:34:24', '2022-07-17 15:46:22', 'null', 228, 'Other'),
(161, '1\" Black Screw', 'Box', 0, NULL, 1, '2022-06-27 03:34:42', '2022-07-17 15:46:22', 'null', 238, 'Other'),
(162, 'M7 PVC Wall Plug', 'Dz', 0, NULL, 1, '2022-06-27 03:35:06', '2022-07-17 15:46:22', 'null', 248, 'Other'),
(163, '¾\" Concrete Nail', 'Box', 0, NULL, 1, '2022-06-27 03:35:37', '2022-07-17 15:46:22', 'null', 231, 'Other'),
(164, 'Gypsum Board 9mm ( Moisture)', 'Sht', 0, NULL, 1, '2022-06-29 09:22:52', '2022-07-15 04:36:23', 'null', 131, 'Decoration'),
(165, 'X Met', 'Coil', 0, NULL, 1, '2022-07-01 04:35:12', '2022-07-17 15:46:22', 'null', 224, 'Other'),
(166, 'GI Pipe', 'Pcs', 0, NULL, 1, '2022-07-01 04:37:22', '2022-07-17 15:46:22', 'null', 225, 'Other'),
(167, 'Pipe Clip ( Swivel Coupler )', 'Nos', 0, NULL, 1, '2022-07-01 04:37:42', '2022-07-17 15:46:22', 'null', 226, 'Other'),
(168, 'Plastic Sheet', 'Sht', 0, NULL, 1, '2022-07-03 02:29:17', '2022-07-17 15:46:22', 'null', 217, 'Other'),
(169, 'Thinner', 'Gal', 0, NULL, 1, '2022-07-03 14:55:37', '2022-07-15 04:36:23', 'null', 157, 'Decoration'),
(170, 'Epoxy Set ( 2Kg )', 'Tin', 0, NULL, 1, '2022-07-03 14:57:12', '2022-07-15 04:36:37', 'null', 79, 'Construction'),
(171, 'Brick ( Pressure )', 'Nos', 0, NULL, 1, '2022-07-03 15:04:13', '2022-07-14 16:06:22', 'null', 4, 'Construction'),
(172, '2\"x2\" PVC Trunking', 'Pcs', 0, NULL, 1, '2022-07-03 16:26:50', '2022-07-17 15:46:22', 'null', 213, 'Electrical'),
(173, '6\" PVC Pipe ( Class 8.5 )', 'Pcs', 0, NULL, 1, '2022-07-03 16:28:49', '2022-07-17 15:46:22', 'null', 301, 'Plumbing'),
(174, '6\" PVC Pipe ( Class 13.5 )', 'Pcs', 0, NULL, 1, '2022-07-03 16:30:12', '2022-07-17 15:46:22', 'null', 310, 'Plumbing'),
(175, '¼\" GI Wall Plug ( Inner Thread )', 'Nos', 0, NULL, 1, '2022-07-03 16:33:06', '2022-07-17 15:46:22', 'null', 227, 'Other'),
(176, '⅜\" GI Wall Plug ( Expansion Bolt )', 'Nos', 0, NULL, 1, '2022-07-03 16:33:31', '2022-07-17 15:46:22', 'null', 230, 'Other'),
(177, '⅜\" GI Wall Plug ( Inner Thread )', 'Nos', 0, NULL, 1, '2022-07-03 16:33:53', '2022-07-17 15:46:22', 'null', 229, 'Other'),
(178, '1\" Steel Screw', 'Box', 0, NULL, 1, '2022-07-03 16:35:16', '2022-07-17 15:46:22', 'null', 243, 'Other'),
(179, '¾\" Steel Screw', 'Box', 0, NULL, 1, '2022-07-03 16:35:33', '2022-07-17 15:46:22', 'null', 242, 'Other'),
(180, '1¼\" Steel Screw', 'Box', 0, NULL, 1, '2022-07-03 16:35:49', '2022-07-17 15:46:23', 'null', 244, 'Other'),
(181, '1½\" Steel Screw', 'Box', 0, NULL, 1, '2022-07-03 16:36:10', '2022-07-17 15:46:23', 'null', 245, 'Other'),
(182, '2\" Steel Screw', 'Box', 0, NULL, 1, '2022-07-03 16:36:25', '2022-07-17 15:46:23', 'null', 246, 'Other'),
(183, 'M6 PVC Wall Plug', 'Kg', 0, NULL, 1, '2022-07-03 16:37:24', '2022-07-17 15:46:23', 'null', 247, 'Other'),
(184, 'M8 PVC Wall Plug', 'Kg', 0, NULL, 1, '2022-07-03 16:37:40', '2022-07-17 15:46:23', 'null', 249, 'Other'),
(185, 'Butterfly  Wall Plug', 'Kg', 0, NULL, 1, '2022-07-03 16:38:08', '2022-07-17 15:46:23', 'null', 250, 'Other'),
(186, 'Form Oil', 'Liter', 0, NULL, 1, '2022-07-06 03:04:13', '2022-07-15 04:36:37', 'null', 75, 'Construction'),
(187, '1\" Coil Pipe', 'Coil', 0, NULL, 1, '2022-07-08 08:57:41', '2022-07-17 15:46:23', 'null', 223, 'Other'),
(188, 'ABS Door ( Single Leaf )', 'Sht', 0, NULL, 1, '2022-07-13 03:21:38', '2022-07-15 04:36:23', 'null', 121, 'Decoration'),
(189, 'ABS Door ( Double Leaf )', 'Sht', 0, NULL, 1, '2022-07-13 03:21:54', '2022-07-15 04:36:23', 'null', 122, 'Decoration'),
(190, 'Mild Steel Door ( Single Leaf )', 'Sht', 0, NULL, 1, '2022-07-13 03:22:22', '2022-07-15 04:36:23', 'null', 123, 'Decoration'),
(191, 'Mild Steel Door ( Double Leaf )', 'Sht', 0, NULL, 1, '2022-07-13 03:22:44', '2022-07-15 04:36:23', 'null', 124, 'Decoration'),
(194, 'Safety Net', 'Roll', 0, NULL, 1, '2022-07-13 06:13:09', '2022-07-17 15:46:23', 'null', 218, 'Other'),
(195, 'No.50 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-07-14 05:19:05', '2022-07-15 04:36:23', 'null', 127, 'Decoration'),
(196, 'No.220 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-07-14 05:19:19', '2022-07-15 04:36:23', 'null', 128, 'Decoration'),
(197, 'No.240 Abrasive Paper', 'Sht', 0, NULL, 1, '2022-07-14 05:22:53', '2022-07-15 04:36:23', 'null', 129, 'Decoration'),
(198, 'Joint Tape', 'Coil', 0, NULL, 1, '2022-07-14 05:25:02', '2022-07-15 04:36:23', 'null', 132, 'Decoration'),
(199, 'Wall Tile ( 8\" x 12\" )', 'Sht', 0, NULL, 1, '2022-07-14 05:48:21', '2022-07-15 04:36:23', 'null', 105, 'Decoration'),
(200, 'Tile Adhesive', 'Bag', 0, NULL, 1, '2022-07-14 05:54:04', '2022-07-15 04:36:23', 'null', 112, 'Decoration'),
(201, 'Emulsion Paint (Ceiling White) 7 Lt', 'Tin', 0, NULL, 1, '2022-07-14 07:56:59', '2022-07-15 04:36:23', 'null', 150, 'Decoration'),
(202, 'Emulsion Paint (Ceiling White) 18 Lt', 'Tin', 0, NULL, 1, '2022-07-14 07:57:10', '2022-07-15 04:36:23', 'null', 151, 'Decoration'),
(203, 'Stair Tile ( 2\' x 1\' )', 'Set', 0, NULL, 1, '2022-07-14 07:58:36', '2022-07-15 04:36:23', 'null', 109, 'Decoration'),
(204, 'Stair Tile ( 3\' x 1½\' )', 'Set', 0, NULL, 1, '2022-07-14 08:01:45', '2022-07-15 04:36:23', 'null', 110, 'Decoration'),
(205, 'Stair Tile ( 4\' x 1½\' )', 'Set', 0, NULL, 1, '2022-07-14 08:01:59', '2022-07-15 04:36:23', 'null', 111, 'Decoration'),
(206, 'Teak Door ( Double Leaf )', 'Nos', 0, NULL, 1, '2022-07-14 15:38:15', '2022-07-15 04:36:23', 'null', 120, 'Decoration'),
(207, 'Decking Sheet ( 2\" Depth )', 'Rft', 0, NULL, 1, '2022-07-14 15:41:07', '2022-07-15 05:51:40', 'null', 90, 'Construction'),
(208, 'Hardcore ( Concrete Bat )', 'Sud', 0, NULL, 1, '2022-07-14 15:42:07', '2022-07-15 04:36:37', 'null', 65, 'Construction'),
(209, 'CGI Roofing Sheet ( 9 Lines )', 'Rft', 0, NULL, 1, '2022-07-14 16:05:26', '2022-07-15 04:36:23', 'null', 82, 'Construction'),
(210, 'CGI Roofing Sheet ( 11 Lines )', 'Rft', 0, NULL, 1, '2022-07-14 16:05:41', '2022-07-15 04:36:23', 'null', 83, 'Construction'),
(211, 'Flashing Sheet', 'Rft', 0, NULL, 1, '2022-07-14 16:07:34', '2022-07-15 04:36:23', 'null', 87, 'Construction'),
(212, 'Deformed Bar 25mm ( Local )', 'Ton', 0, NULL, 1, '2022-07-14 16:09:58', '2022-07-15 04:36:37', 'null', 21, 'Construction'),
(213, 'Floor Tile ( 8\"x8\" )', 'Sht', 0, NULL, 1, '2022-07-14 16:13:20', '2022-07-15 04:36:23', 'null', 101, 'Decoration'),
(214, 'White Cement', 'Lb', 0, NULL, 1, '2022-07-14 16:21:16', '2022-07-15 04:36:23', 'null', 113, 'Decoration'),
(215, 'Color Cement', 'Lb', 0, NULL, 1, '2022-07-14 16:22:03', '2022-07-15 04:36:23', 'null', 114, 'Decoration'),
(216, 'Tile Spacer ( 2mm )', 'Pk', 0, NULL, 1, '2022-07-14 16:23:01', '2022-07-15 04:36:23', 'null', 115, 'Decoration'),
(217, 'Tile Spacer ( 3mm )', 'Pk', 0, NULL, 1, '2022-07-14 16:23:16', '2022-07-15 04:36:23', 'null', 116, 'Decoration'),
(218, '10mm2 PVC/PVC Wire', 'Coil', 0, NULL, 1, '2022-07-14 16:31:01', '2022-07-17 15:46:40', 'null', 165, 'Electrical'),
(219, '16mm2 PVC/PVC Wire', 'Coil', 0, NULL, 1, '2022-07-14 16:31:24', '2022-07-17 15:46:40', 'null', 166, 'Electrical'),
(220, '16mm2 PVC Wire', 'Coil', 0, NULL, 1, '2022-07-14 16:32:18', '2022-07-17 15:46:40', 'null', 164, 'Electrical'),
(221, '10A 2Pin SSO', 'Nos', 0, NULL, 1, '2022-07-14 16:34:23', '2022-07-17 15:46:23', 'null', 205, 'Electrical'),
(222, '13A 3Pin SSO', 'Nos', 0, NULL, 1, '2022-07-14 16:34:41', '2022-07-17 15:46:23', 'null', 206, 'Electrical'),
(223, '13A 3Pin SSO ( Multi )', 'Nos', 0, NULL, 1, '2022-07-14 16:35:09', '2022-07-17 15:46:23', 'null', 207, 'Electrical'),
(224, '13A 3Pin SSO ( 2 Pin Multi Combine )', 'Nos', 0, NULL, 1, '2022-07-14 16:35:35', '2022-07-17 15:46:23', 'null', 208, 'Electrical'),
(225, '15A 3Pin SSO', 'Nos', 0, NULL, 1, '2022-07-14 16:35:55', '2022-07-17 15:46:23', 'null', 209, 'Electrical'),
(226, 'Cable Tie', 'Pk', 0, NULL, 1, '2022-07-14 16:37:19', '2022-07-17 15:46:23', 'null', 215, 'Electrical'),
(227, 'Trunking Nail', 'Box', 0, NULL, 1, '2022-07-14 16:37:38', '2022-07-17 15:46:23', 'null', 214, 'Electrical'),
(228, 'PVC DB Box ( 12 Way )', 'Nos', 0, NULL, 1, '2022-07-14 16:38:13', '2022-07-17 15:46:23', 'null', 184, 'Electrical'),
(229, 'PVC DB Box ( 16 Way )', 'Nos', 0, NULL, 1, '2022-07-14 16:38:27', '2022-07-17 15:46:23', 'null', 185, 'Electrical'),
(230, 'PVC DB Box ( 20 Way )', 'Nos', 0, NULL, 1, '2022-07-14 16:38:41', '2022-07-17 15:46:23', 'null', 186, 'Electrical'),
(231, 'PVC DB Box ( 24 Way )', 'Nos', 0, NULL, 1, '2022-07-14 16:38:55', '2022-07-17 15:46:23', 'null', 187, 'Electrical'),
(232, '10A 1P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:39:21', '2022-07-17 15:46:23', 'null', 188, 'Electrical'),
(233, '16A 1P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:39:39', '2022-07-17 15:46:23', 'null', 189, 'Electrical'),
(234, '20A 1P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:39:57', '2022-07-17 15:46:23', 'null', 190, 'Electrical'),
(235, '32A 1P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:40:24', '2022-07-17 15:46:23', 'null', 191, 'Electrical'),
(236, '20A 2P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:40:44', '2022-07-17 15:46:23', 'null', 192, 'Electrical'),
(237, '32A 2P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:41:05', '2022-07-17 15:46:23', 'null', 193, 'Electrical'),
(238, '40A 2P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:41:19', '2022-07-17 15:46:23', 'null', 194, 'Electrical'),
(239, '63A 2P MCB', 'Nos', 0, NULL, 1, '2022-07-14 16:41:33', '2022-07-17 15:46:23', 'null', 195, 'Electrical'),
(240, '40A 2P Change Breaker', 'Nos', 0, NULL, 1, '2022-07-14 16:41:57', '2022-07-17 15:46:23', 'null', 196, 'Electrical'),
(241, '64A 2P Change Breaker', 'Nos', 0, NULL, 1, '2022-07-14 16:42:18', '2022-07-17 15:46:23', 'null', 197, 'Electrical'),
(242, 'SPC Floor ( 4.5mm )', 'Sud', 0, NULL, 1, '2022-07-14 16:47:06', '2022-07-15 04:36:23', 'null', 95, 'Decoration'),
(243, 'SPC Floor ( 5.5mm )', 'Sud', 0, NULL, 1, '2022-07-14 16:47:24', '2022-07-15 04:36:23', 'null', 96, 'Decoration'),
(244, 'SPC Floor ( 6.5mm )', 'Sud', 0, NULL, 1, '2022-07-14 16:47:39', '2022-07-15 04:36:23', 'null', 97, 'Decoration'),
(245, 'Laminate Floor ( 8mm )', 'Sud', 0, NULL, 1, '2022-07-14 16:48:03', '2022-07-15 04:36:23', 'null', 98, 'Decoration'),
(246, 'Laminate Floor ( 12mm )', 'Sud', 0, NULL, 1, '2022-07-14 16:48:15', '2022-07-15 04:36:23', 'null', 99, 'Decoration'),
(247, 'Teak Parquet', 'Sud', 0, NULL, 1, '2022-07-14 16:49:01', '2022-07-15 04:36:23', 'null', 100, 'Decoration'),
(248, 'Early Strength', 'Gal', 0, NULL, 1, '2022-07-15 04:36:06', '2022-07-15 04:36:37', 'null', 80, 'Construction'),
(249, '½\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:07:19', '2022-07-17 15:46:23', 'null', 311, 'Plumbing'),
(250, '¾\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:08:31', '2022-07-17 15:46:23', 'null', 312, 'Plumbing'),
(251, '1\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:08:59', '2022-07-17 15:46:23', 'null', 313, 'Plumbing'),
(252, '2\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:10:25', '2022-07-17 15:46:23', 'null', 318, 'Plumbing'),
(253, '3\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:11:08', '2022-07-17 15:46:23', 'null', 320, 'Plumbing'),
(254, '4\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:11:21', '2022-07-17 15:46:23', 'null', 322, 'Plumbing'),
(255, '2\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:18:41', '2022-07-17 15:46:23', 'null', 319, 'Plumbing'),
(256, '3\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:19:00', '2022-07-17 15:46:23', 'null', 321, 'Plumbing'),
(257, '4\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:19:13', '2022-07-17 15:46:23', 'null', 323, 'Plumbing'),
(258, '1¼\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:19:35', '2022-07-17 15:46:23', 'null', 314, 'Plumbing'),
(259, '1½\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:20:01', '2022-07-17 15:46:23', 'null', 317, 'Plumbing'),
(261, '1½\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:20:16', '2022-07-17 15:46:23', 'null', 316, 'Plumbing'),
(262, '1¼\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:20:32', '2022-07-17 15:46:23', 'null', 315, 'Plumbing'),
(263, '½\" x ¾\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:56:48', '2022-07-17 15:46:23', 'null', 324, 'Plumbing'),
(264, '1\" x ¾\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:57:04', '2022-07-17 15:46:23', 'null', 326, 'Plumbing'),
(265, '1\" x ½\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:57:24', '2022-07-17 15:46:23', 'null', 325, 'Plumbing'),
(266, '1\" x 1¼\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:57:56', '2022-07-17 15:46:23', 'null', 327, 'Plumbing'),
(267, '1½\" x 1\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:59:19', '2022-07-17 15:46:23', 'null', 328, 'Plumbing'),
(268, '2\" x 1\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:59:33', '2022-07-17 15:46:23', 'null', 331, 'Plumbing'),
(269, '1½\" x 1¼\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 09:59:50', '2022-07-17 15:46:23', 'null', 329, 'Plumbing'),
(270, '1½\" x 1¼\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:00:05', '2022-07-17 15:46:23', 'null', 330, 'Plumbing'),
(271, '2\" x 1\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:00:09', '2022-07-17 15:46:23', 'null', 332, 'Plumbing'),
(272, '2\" x 1¼\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:00:22', '2022-07-17 15:46:23', 'null', 333, 'Plumbing'),
(273, '2\" x 1¼\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:00:34', '2022-07-17 15:46:23', 'null', 334, 'Plumbing'),
(274, '2\" x 1½\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:00:51', '2022-07-17 15:46:23', 'null', 336, 'Plumbing'),
(275, '2\" x 1½\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:01:04', '2022-07-17 15:46:23', 'null', 335, 'Plumbing'),
(276, '3\" x 2\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:01:19', '2022-07-17 15:46:23', 'null', 338, 'Plumbing'),
(277, '3\" x 2\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:01:30', '2022-07-17 15:46:23', 'null', 337, 'Plumbing'),
(278, '4\" x 3\" PVC Socket ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:02:00', '2022-07-17 15:46:23', 'null', 340, 'Plumbing'),
(279, '4\" x 3\" PVC Socket ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:02:09', '2022-07-17 15:46:23', 'null', 339, 'Plumbing'),
(280, '½\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:50:16', '2022-07-17 15:46:23', 'null', 341, 'Plumbing'),
(281, '½\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:50:28', '2022-07-17 15:46:23', 'null', 342, 'Plumbing'),
(282, '¾\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:50:45', '2022-07-17 15:46:23', 'null', 343, 'Plumbing'),
(283, '¾\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:50:55', '2022-07-17 15:46:23', 'null', 344, 'Plumbing'),
(284, '1\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:51:05', '2022-07-17 15:46:23', 'null', 345, 'Plumbing'),
(285, '1\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:51:18', '2022-07-17 15:46:23', 'null', 346, 'Plumbing'),
(286, '1¼\" PVC Elbow 90\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:51:49', '2022-07-17 15:46:23', 'null', 347, 'Plumbing'),
(287, '1¼\" PVC Elbow 45\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:51:59', '2022-07-17 15:46:23', 'null', 348, 'Plumbing'),
(288, '1½\" PVC Elbow 90\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:52:17', '2022-07-17 15:46:23', 'null', 351, 'Plumbing'),
(289, '1½\" PVC Elbow 45\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:52:26', '2022-07-17 15:46:23', 'null', 352, 'Plumbing'),
(290, '1½\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:52:39', '2022-07-17 15:46:23', 'null', 349, 'Plumbing'),
(291, '1½\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:52:49', '2022-07-17 15:46:23', 'null', 350, 'Plumbing'),
(292, '2\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:53:02', '2022-07-17 15:46:23', 'null', 353, 'Plumbing'),
(293, '2\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:53:11', '2022-07-17 15:46:23', 'null', 354, 'Plumbing'),
(294, '2\" PVC Elbow 90\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:57:18', '2022-07-17 15:46:23', 'null', 355, 'Plumbing'),
(295, '2\" PVC Elbow 45\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:57:28', '2022-07-17 15:46:23', 'null', 356, 'Plumbing'),
(296, '3\" PVC Elbow 90\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:57:40', '2022-07-17 15:46:23', 'null', 359, 'Plumbing'),
(297, '3\" PVC Elbow 45\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:57:50', '2022-07-17 15:46:23', 'null', 360, 'Plumbing'),
(298, '3\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:58:00', '2022-07-17 15:46:23', 'null', 357, 'Plumbing'),
(299, '3\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:58:23', '2022-07-17 15:46:23', 'null', 358, 'Plumbing'),
(300, '4\" PVC Elbow 90\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:58:33', '2022-07-17 15:46:23', 'null', 363, 'Plumbing'),
(301, '4\" PVC Elbow 45\' ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:58:44', '2022-07-17 15:46:23', 'null', 364, 'Plumbing'),
(302, '4\" PVC Elbow 90\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:58:53', '2022-07-17 15:46:23', 'null', 361, 'Plumbing'),
(303, '4\" PVC Elbow 45\' ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 10:59:07', '2022-07-17 15:46:23', 'null', 362, 'Plumbing'),
(304, '½\" x ¾\" PVC Elbow ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:03:00', '2022-07-17 15:46:23', 'null', 365, 'Plumbing'),
(305, '1\" x ½\" PVC Elbow ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:03:25', '2022-07-17 15:46:23', 'null', 366, 'Plumbing'),
(306, '1\" x ¾\" PVC Elbow ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:03:36', '2022-07-17 15:46:23', 'null', 367, 'Plumbing'),
(307, '2\" x 1\" PVC Elbow ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:03:59', '2022-07-17 15:46:23', 'null', 368, 'Plumbing'),
(308, '½\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:13:11', '2022-07-17 15:46:23', 'null', 369, 'Plumbing'),
(309, '¾\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:13:26', '2022-07-17 15:46:23', 'null', 370, 'Plumbing'),
(311, '1\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:13:44', '2022-07-17 15:46:23', 'null', 371, 'Plumbing'),
(312, '1¼\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:14:03', '2022-07-17 15:46:23', 'null', 372, 'Plumbing'),
(313, '1½\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:14:26', '2022-07-17 15:46:23', 'null', 374, 'Plumbing'),
(314, '2\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:14:36', '2022-07-17 15:46:23', 'null', 376, 'Plumbing'),
(315, '3\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:14:46', '2022-07-17 15:46:23', 'null', 378, 'Plumbing'),
(316, '4\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:14:57', '2022-07-17 15:46:23', 'null', 380, 'Plumbing'),
(317, '1½\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:15:15', '2022-07-17 15:46:23', 'null', 375, 'Plumbing'),
(318, '1¼\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:15:32', '2022-07-17 15:46:23', 'null', 373, 'Plumbing'),
(319, '2\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:15:42', '2022-07-17 15:46:23', 'null', 377, 'Plumbing'),
(320, '3\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:15:50', '2022-07-17 15:46:23', 'null', 379, 'Plumbing'),
(321, '4\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:15:58', '2022-07-17 15:46:23', 'null', 381, 'Plumbing'),
(322, '2\" PVC R Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:16:39', '2022-07-17 15:46:23', 'null', 390, 'Plumbing'),
(323, '3\" PVC R Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:16:48', '2022-07-17 15:46:23', 'null', 391, 'Plumbing'),
(324, '4\" PVC R Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:16:59', '2022-07-17 15:46:23', 'null', 392, 'Plumbing'),
(325, '4\" PVC Double R Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:17:29', '2022-07-17 15:46:23', 'null', 395, 'Plumbing'),
(326, '3\" PVC Double R Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:17:37', '2022-07-17 15:46:23', 'null', 394, 'Plumbing'),
(327, '2\" PVC Y Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:17:56', '2022-07-17 15:46:23', 'null', 396, 'Plumbing'),
(328, '3\" PVC Y Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:18:05', '2022-07-17 15:46:23', 'null', 397, 'Plumbing'),
(329, '4\" PVC Y Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:18:14', '2022-07-17 15:46:23', 'null', 398, 'Plumbing'),
(330, '2\" PVC Double R Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:30:46', '2022-07-17 15:46:23', 'null', 393, 'Plumbing'),
(331, '2\" PVC Double Y Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:31:02', '2022-07-17 15:46:23', 'null', 399, 'Plumbing'),
(332, '3\" PVC Double Y Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:31:12', '2022-07-17 15:46:23', 'null', 400, 'Plumbing'),
(333, '4\" PVC Double Y Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:31:24', '2022-07-17 15:46:23', 'null', 401, 'Plumbing'),
(334, '4\" x 3\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:34:02', '2022-07-17 15:46:23', 'null', 389, 'Plumbing'),
(335, '3\" x 2\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:34:14', '2022-07-17 15:46:23', 'null', 388, 'Plumbing'),
(336, '2\" x 1¼\" PVC Tee ( 8.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:34:37', '2022-07-17 15:46:23', 'null', 386, 'Plumbing'),
(337, '2\" x 1½\" PVC Tee ( 8.5 )', NULL, 0, NULL, 1, '2022-07-17 11:34:48', '2022-07-17 15:46:23', 'null', 387, 'Plumbing'),
(338, '½\" x ¾\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:50:09', '2022-07-17 15:46:23', 'null', 382, 'Plumbing'),
(339, '1\" x ¾\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:50:21', '2022-07-17 15:46:23', 'null', 384, 'Plumbing'),
(340, '1\" x  ½\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:50:40', '2022-07-17 15:46:23', 'null', 383, 'Plumbing'),
(341, '2\" x 1\" PVC Tee ( 13.5 )', 'Nos', 0, NULL, 1, '2022-07-17 11:51:03', '2022-07-17 15:46:23', 'null', 385, 'Plumbing'),
(342, '½\" PVC Valve Socket', 'Nos', 0, NULL, 1, '2022-07-17 11:54:40', '2022-07-17 15:46:23', 'null', 402, 'Plumbing'),
(343, '¾\" PVC Valve Socket', 'Nos', 0, NULL, 1, '2022-07-17 11:54:58', '2022-07-17 15:46:23', 'null', 403, 'Plumbing'),
(344, '1\" PVC Valve Socket', 'Nos', 0, NULL, 1, '2022-07-17 11:55:18', '2022-07-17 15:46:23', 'null', 404, 'Plumbing'),
(345, '2\" PVC Valve Socket', 'Nos', 0, NULL, 1, '2022-07-17 11:55:29', '2022-07-17 15:46:23', 'null', 405, 'Plumbing'),
(346, '½\" PVC Faucet Socket ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:56:27', '2022-07-17 15:46:23', 'null', 407, 'Plumbing'),
(347, '½\" PVC Faucet Socket ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:56:38', '2022-07-17 15:46:23', 'null', 406, 'Plumbing'),
(348, '¾\" PVC Faucet Socket ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:56:59', '2022-07-17 15:46:23', 'null', 409, 'Plumbing'),
(349, '¾\" PVC Faucet Socket ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:57:11', '2022-07-17 15:46:23', 'null', 408, 'Plumbing'),
(350, '1\" PVC Faucet Socket ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:57:24', '2022-07-17 15:46:23', 'null', 411, 'Plumbing'),
(351, '1\" PVC Faucet Socket ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:57:35', '2022-07-17 15:46:23', 'null', 410, 'Plumbing'),
(352, '½\" PVC Faucet Elbow ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:58:18', '2022-07-17 15:46:23', 'null', 413, 'Plumbing'),
(353, '½\" PVC Faucet Elbow ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:58:30', '2022-07-17 15:46:23', 'null', 412, 'Plumbing'),
(354, '¾\" PVC Faucet Elbow ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:58:49', '2022-07-17 15:46:23', 'null', 415, 'Plumbing'),
(355, '¾\" PVC Faucet Elbow ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:59:01', '2022-07-17 15:46:23', 'null', 414, 'Plumbing'),
(356, '1\" PVC Faucet Elbow ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:59:14', '2022-07-17 15:46:23', 'null', 417, 'Plumbing'),
(357, '1\" PVC Faucet Elbow ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 11:59:24', '2022-07-17 15:46:23', 'null', 416, 'Plumbing'),
(358, '½\" PVC Faucet Tee ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 12:05:39', '2022-07-17 15:46:23', 'null', 419, 'Plumbing'),
(359, '½\" PVC Faucet Tee ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 12:05:51', '2022-07-17 15:46:23', 'null', 418, 'Plumbing'),
(360, '¾\" PVC Faucet Tee ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 12:06:11', '2022-07-17 15:46:23', 'null', 421, 'Plumbing'),
(361, '¾\" PVC Faucet Tee ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 12:06:23', '2022-07-17 15:46:23', 'null', 420, 'Plumbing'),
(362, '1\" PVC Faucet Tee ( Copper Thread )', 'Nos', 0, NULL, 1, '2022-07-17 12:06:34', '2022-07-17 15:46:23', 'null', 423, 'Plumbing'),
(363, '1\" PVC Faucet Tee ( PVC Thread )', 'Nos', 0, NULL, 1, '2022-07-17 12:06:49', '2022-07-17 15:46:23', 'null', 422, 'Plumbing'),
(364, '3\" Clean Out Plug ( PVC Lid )', 'Nos', 0, NULL, 1, '2022-07-17 12:11:30', '2022-07-17 15:46:23', 'null', 424, 'Plumbing'),
(365, '3\" Clean Out Plug ( Copper Lid )', 'Nos', 0, NULL, 1, '2022-07-17 12:11:44', '2022-07-17 15:46:23', 'null', 425, 'Plumbing'),
(366, '4\" Clean Out Plug ( PVC Lid )', 'Nos', 0, NULL, 1, '2022-07-17 12:11:57', '2022-07-17 15:46:23', 'null', 426, 'Plumbing'),
(367, '4\" Clean Out Plug ( Copper Lid )', 'Nos', 0, NULL, 1, '2022-07-17 12:12:15', '2022-07-17 15:46:23', 'null', 427, 'Plumbing'),
(368, '½\" PVC L Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:12:38', '2022-07-17 15:46:23', 'null', 428, 'Plumbing'),
(369, '¾\" PVC L Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:12:54', '2022-07-17 15:46:23', 'null', 429, 'Plumbing'),
(370, '1\" PVC L Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:13:07', '2022-07-17 15:46:23', 'null', 430, 'Plumbing'),
(371, '½\" PVC Cap Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:13:43', '2022-07-17 15:46:23', 'null', 431, 'Plumbing'),
(372, '¾\" PVC Cap Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:14:05', '2022-07-17 15:46:23', 'null', 432, 'Plumbing'),
(373, '1\" PVC Cap Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:14:27', '2022-07-17 15:46:23', 'null', 433, 'Plumbing'),
(374, '2\" PVC Cap Plug', 'Nos', 0, NULL, 1, '2022-07-17 12:14:42', '2022-07-17 15:46:23', 'null', 434, 'Plumbing'),
(375, '¾\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:18:50', '2022-07-17 15:46:23', 'null', 436, 'Plumbing'),
(376, '½\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:19:10', '2022-07-17 15:46:23', 'null', 435, 'Plumbing'),
(377, '1\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:19:20', '2022-07-17 15:46:23', 'null', 437, 'Plumbing'),
(378, '1¼\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:19:38', '2022-07-17 15:46:23', 'null', 438, 'Plumbing'),
(379, '1½\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:19:54', '2022-07-17 15:46:23', 'null', 439, 'Plumbing'),
(380, '2\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:20:10', '2022-07-17 15:46:23', 'null', 440, 'Plumbing'),
(381, '3\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:20:18', '2022-07-17 15:46:23', 'null', 441, 'Plumbing'),
(382, '4\" PVC Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:20:27', '2022-07-17 15:46:23', 'null', 442, 'Plumbing'),
(383, '½\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:20:50', '2022-07-17 15:46:23', 'null', 443, 'Plumbing'),
(384, '¾\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:21:04', '2022-07-17 15:46:23', 'null', 444, 'Plumbing'),
(385, '1\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:21:10', '2022-07-17 15:46:23', 'null', 445, 'Plumbing'),
(386, '2\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:21:21', '2022-07-17 15:46:23', 'null', 448, 'Plumbing'),
(387, '3\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:21:29', '2022-07-17 15:46:23', 'null', 449, 'Plumbing'),
(388, '4\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:21:37', '2022-07-17 15:46:23', 'null', 450, 'Plumbing'),
(389, '1¼\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:27:07', '2022-07-17 15:46:23', 'null', 446, 'Plumbing'),
(390, '1½\" GI Saddle', 'Nos', 0, NULL, 1, '2022-07-17 12:27:22', '2022-07-17 15:46:23', 'null', 447, 'Plumbing'),
(391, 'EWC ( S Trap )', 'Nos', 0, NULL, 1, '2022-07-17 14:10:32', '2022-07-17 15:46:23', 'null', 268, 'Plumbing'),
(392, 'EWC ( P Trap )', 'Nos', 0, NULL, 1, '2022-07-17 14:10:42', '2022-07-17 15:46:23', 'null', 269, 'Plumbing'),
(393, 'IWC', 'Nos', 0, NULL, 1, '2022-07-17 14:10:54', '2022-07-17 15:46:23', 'null', 270, 'Plumbing'),
(394, 'Bottle Trap', 'Nos', 0, NULL, 1, '2022-07-17 14:11:12', '2022-07-17 15:46:23', 'null', 271, 'Plumbing'),
(395, 'Ceramic Basin', 'Nos', 0, NULL, 1, '2022-07-17 14:11:25', '2022-07-17 15:46:23', 'null', 272, 'Plumbing'),
(396, 'Steel Sink', 'Nos', 0, NULL, 1, '2022-07-17 14:11:38', '2022-07-17 15:46:23', 'null', 273, 'Plumbing'),
(397, 'Basin Tap', 'Nos', 0, NULL, 1, '2022-07-17 14:11:47', '2022-07-17 15:46:23', 'null', 274, 'Plumbing'),
(398, 'Sink Tap', 'Nos', 0, NULL, 1, '2022-07-17 14:11:57', '2022-07-17 15:46:23', 'null', 275, 'Plumbing'),
(399, 'Hand Spray', 'Nos', 0, NULL, 1, '2022-07-17 14:12:10', '2022-07-17 15:46:23', 'null', 276, 'Plumbing'),
(400, 'Hand Shower', 'Nos', 0, NULL, 1, '2022-07-17 14:12:31', '2022-07-17 15:46:23', 'null', 277, 'Plumbing'),
(401, 'Rain Shower', 'Nos', 0, NULL, 1, '2022-07-17 14:12:46', '2022-07-17 15:46:23', 'null', 278, 'Plumbing'),
(402, 'L Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:12:57', '2022-07-17 15:46:23', 'null', 279, 'Plumbing'),
(403, 'T Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:13:05', '2022-07-17 15:46:23', 'null', 280, 'Plumbing'),
(404, '½\" x ½\" Lux Pipe ( 12\" )', 'Nos', 0, NULL, 1, '2022-07-17 14:13:49', '2022-07-17 15:46:23', 'null', 281, 'Plumbing'),
(405, '½\" x ½\" Lux Pipe ( 18\" )', 'Nos', 0, NULL, 1, '2022-07-17 14:14:01', '2022-07-17 15:46:23', 'null', 282, 'Plumbing'),
(406, '1\" Gate Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:14:20', '2022-07-17 15:46:23', 'null', 283, 'Plumbing'),
(407, '1\" Check Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:14:57', '2022-07-17 15:46:23', 'null', 285, 'Plumbing'),
(408, '2\" Check Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:15:07', '2022-07-17 15:46:23', 'null', 286, 'Plumbing'),
(409, '2\" Gate Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:15:19', '2022-07-17 15:46:23', 'null', 284, 'Plumbing'),
(410, '1\" Ball Valve ( Socket Type )', 'Nos', 0, NULL, 1, '2022-07-17 14:15:52', '2022-07-17 15:46:23', 'null', 287, 'Plumbing'),
(411, '1\" Ball Valve ( Thread Type )', 'Nos', 0, NULL, 1, '2022-07-17 14:16:06', '2022-07-17 15:46:23', 'null', 288, 'Plumbing'),
(412, 'Seal Tape', 'Coil', 0, NULL, 1, '2022-07-17 14:16:17', '2022-07-17 15:46:23', 'null', 291, 'Plumbing'),
(413, 'OCI Glue ( 500 g )', 'Tin', 0, NULL, 1, '2022-07-17 14:16:37', '2022-07-17 15:46:23', 'null', 292, 'Plumbing'),
(414, '½\" Stop Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:22:20', '2022-07-17 15:46:23', 'null', 289, 'Plumbing'),
(415, '¾\" Stop Valve', 'Nos', 0, NULL, 1, '2022-07-17 14:22:36', '2022-07-17 15:46:23', 'null', 290, 'Plumbing'),
(416, '2\" PVC Vent Cap', 'Nos', 0, NULL, 1, '2022-07-17 14:23:18', '2022-07-17 15:46:23', 'null', 451, 'Plumbing'),
(417, '3\" PVC Vent Cap', 'Nos', 0, NULL, 1, '2022-07-17 14:23:28', '2022-07-17 15:46:23', 'null', 452, 'Plumbing'),
(418, '4\" PVC Vent Cap', 'Nos', 0, NULL, 1, '2022-07-17 14:23:38', '2022-07-17 15:46:23', 'null', 453, 'Plumbing'),
(419, '1\" Hanger Ring', 'Nos', 0, NULL, 1, '2022-07-17 14:26:24', '2022-07-17 15:46:23', 'null', 454, 'Plumbing'),
(420, '1¼\" Hanger Ring', 'Nos', 0, NULL, 1, '2022-07-17 14:26:42', '2022-07-17 15:46:23', 'null', 455, 'Plumbing'),
(421, '1½\" Hanger Ring', 'Nos', 0, NULL, 1, '2022-07-17 14:27:05', '2022-07-17 15:46:23', 'null', 456, 'Plumbing');
INSERT INTO `variable_assets` (`id`, `item_name`, `unit`, `qty`, `remark`, `main_warehouse_id`, `created_at`, `updated_at`, `sizes`, `display_order`, `category`) VALUES
(422, '2\" Hanger Ring', 'Nos', 0, NULL, 1, '2022-07-17 14:27:15', '2022-07-17 15:46:23', 'null', 457, 'Plumbing'),
(423, '3\" Hanger Ring', 'Nos', 0, NULL, 1, '2022-07-17 14:27:23', '2022-07-17 15:46:23', 'null', 458, 'Plumbing'),
(424, '4\" Hanger Ring', 'Nos', 0, NULL, 1, '2022-07-17 14:27:32', '2022-07-17 15:46:23', 'null', 459, 'Plumbing'),
(425, '1\" U Bolt', 'Nos', 0, NULL, 1, '2022-07-17 14:27:53', '2022-07-17 15:46:23', 'null', 460, 'Plumbing'),
(426, '1½\" U Bolt', 'Nos', 0, NULL, 1, '2022-07-17 14:28:11', '2022-07-17 15:46:23', 'null', 462, 'Plumbing'),
(427, '1¼\" U Bolt', 'Nos', 0, NULL, 1, '2022-07-17 14:28:24', '2022-07-17 15:46:23', 'null', 461, 'Plumbing'),
(428, '2\" U Bolt', 'Nos', 0, NULL, 1, '2022-07-17 14:28:35', '2022-07-17 15:46:23', 'null', 463, 'Plumbing'),
(429, '3\" U Bolt', 'Nos', 0, NULL, 1, '2022-07-17 14:28:43', '2022-07-17 15:46:23', 'null', 464, 'Plumbing'),
(430, '4\" U Bolt', 'Nos', 0, NULL, 1, '2022-07-17 14:28:54', '2022-07-17 15:46:23', 'null', 465, 'Plumbing'),
(431, 'Tarpaulin ( 6\' Width )', 'Roll', 0, NULL, 1, '2022-07-17 14:41:47', '2022-07-17 15:46:23', 'null', 219, 'Other'),
(432, '1¼\" Black Screw', 'Box', 0, NULL, 1, '2022-07-17 14:42:48', '2022-07-17 15:46:23', 'null', 239, 'Other'),
(433, '1½\" Black Screw', 'Box', 0, NULL, 1, '2022-07-17 14:43:04', '2022-07-17 15:46:23', 'null', 240, 'Other'),
(434, '2\" Black Screw', 'Box', 0, NULL, 1, '2022-07-17 14:43:17', '2022-07-17 15:46:23', 'null', 241, 'Other'),
(435, '¾\" Black Screw', 'Box', 0, NULL, 1, '2022-07-17 14:44:53', '2022-07-17 15:46:23', 'null', 237, 'Other'),
(436, '1\" Concrete Nail', 'Box', 0, NULL, 1, '2022-07-17 14:45:54', '2022-07-17 15:46:23', 'null', 232, 'Other'),
(437, '2\" Concrete Nail', 'Box', 0, NULL, 1, '2022-07-17 14:46:09', '2022-07-17 15:46:23', 'null', 234, 'Other'),
(438, '3\" Concrete Nail', 'Box', 0, NULL, 1, '2022-07-17 14:46:21', '2022-07-17 15:46:23', 'null', 235, 'Other'),
(439, '4\" Concrete Nail', 'Box', 0, NULL, 1, '2022-07-17 14:46:30', '2022-07-17 15:46:23', 'null', 236, 'Other'),
(440, '1½\" Concrete Nail', 'Box', 0, NULL, 1, '2022-07-17 14:48:04', '2022-07-17 15:46:23', 'null', 233, 'Other'),
(441, 'Tarpaulin ( 8\' Width )', 'Roll', 0, NULL, 1, '2022-07-17 14:49:22', '2022-07-17 15:46:23', 'null', 220, 'Other'),
(442, 'Tarpaulin ( 10\' Width )', 'Roll', 0, NULL, 1, '2022-07-17 14:49:33', '2022-07-17 15:46:23', 'null', 221, 'Other'),
(443, '¼\" GI Long Thread', 'Pcs', 0, NULL, 1, '2022-07-17 14:50:50', '2022-07-17 15:46:23', 'null', 251, 'Other'),
(444, '⅜\" GI Long Thread', 'Pcs', 0, NULL, 1, '2022-07-17 14:51:05', '2022-07-17 15:46:23', 'null', 252, 'Other'),
(445, '½\" GI Long Thread', 'Pcs', 0, NULL, 1, '2022-07-17 14:51:33', '2022-07-17 15:46:23', 'null', 253, 'Other'),
(446, '⅜\" Washer', 'Nos', 0, NULL, 1, '2022-07-17 14:53:11', '2022-07-17 15:46:23', 'null', 254, 'Other'),
(447, '⅜\" Nut', 'Nos', 0, NULL, 1, '2022-07-17 14:53:23', '2022-07-17 15:46:23', 'null', 257, 'Other'),
(448, '½\" Washer', 'Nos', 0, NULL, 1, '2022-07-17 14:53:45', '2022-07-17 15:46:23', 'null', 255, 'Other'),
(449, '½\" Nut', 'Nos', 0, NULL, 1, '2022-07-17 14:53:59', '2022-07-17 15:46:23', 'null', 258, 'Other'),
(450, '⅝\" Washer', 'Nos', 0, NULL, 1, '2022-07-17 14:54:29', '2022-07-17 15:46:23', 'null', 256, 'Other'),
(451, '⅝\" Nut', 'Nos', 0, NULL, 1, '2022-07-17 14:54:40', '2022-07-17 15:46:23', 'null', 259, 'Other'),
(452, 'Fiber Tank 500 Lt ( Vertical )', 'Nos', 0, NULL, 1, '2022-07-17 14:57:19', '2022-07-17 15:46:23', 'null', 260, 'Plumbing'),
(453, 'Fiber Tank 1000 Lt ( Vertical )', 'Nos', 0, NULL, 1, '2022-07-17 14:57:33', '2022-07-17 15:46:23', 'null', 261, 'Plumbing'),
(454, 'Fiber Tank 500 Lt ( Horizonal )', 'Nos', 0, NULL, 1, '2022-07-17 14:58:09', '2022-07-17 15:46:23', 'null', 262, 'Plumbing'),
(455, 'Fiber Tank 1000 Lt ( Horizonal )', 'Nos', 0, NULL, 1, '2022-07-17 14:58:25', '2022-07-17 15:46:23', 'null', 263, 'Plumbing'),
(456, 'Steel Tank 500 Lt ( Horizonal )', 'Nos', 0, NULL, 1, '2022-07-17 14:58:39', '2022-07-17 15:46:23', 'null', 264, 'Plumbing'),
(457, 'Steel Tank 1000 Lt ( Horizonal )', 'Nos', 0, NULL, 1, '2022-07-17 14:58:48', '2022-07-17 15:46:23', 'null', 265, 'Plumbing'),
(458, 'Steel Tank 500 Lt ( Vertical )', 'Nos', 0, NULL, 1, '2022-07-17 14:59:07', '2022-07-17 15:46:23', 'null', 266, 'Plumbing'),
(459, 'Steel Tank 1000 Lt ( Vertical )', 'Nos', 0, NULL, 1, '2022-07-17 14:59:16', '2022-07-17 15:46:23', 'null', 267, 'Plumbing'),
(460, 'Wall Lamp', 'Nos', 0, NULL, 1, '2022-07-17 15:01:02', '2022-07-17 15:46:23', 'null', 176, 'Electrical'),
(461, 'Security Lamp', 'Nos', 0, NULL, 1, '2022-07-17 15:01:20', '2022-07-17 15:46:23', 'null', 177, 'Electrical'),
(462, 'Pendant Lamp', 'Nos', 0, NULL, 1, '2022-07-17 15:02:31', '2022-07-17 15:46:23', 'null', 178, 'Electrical'),
(463, 'Chandelier', 'Nos', 0, NULL, 1, '2022-07-17 15:03:13', '2022-07-17 15:46:40', 'null', 169, 'Electrical'),
(464, 'Strip Light', 'Coil', 0, NULL, 1, '2022-07-17 15:03:45', '2022-07-17 15:46:23', 'null', 181, 'Electrical'),
(465, 'Circular Lamp 9W ( Recessed Type )', 'Nos', 0, NULL, 1, '2022-07-17 15:04:16', '2022-07-17 15:46:40', 'null', 170, 'Electrical'),
(466, 'Circular Lamp 12W ( Recessed Type )', 'Nos', 0, NULL, 1, '2022-07-17 15:04:25', '2022-07-17 15:46:40', 'null', 171, 'Electrical'),
(467, 'Circular Lamp 18W ( Recessed Type )', 'Nos', 0, NULL, 1, '2022-07-17 15:04:37', '2022-07-17 15:46:40', 'null', 172, 'Electrical'),
(468, 'Garden Lamp', 'Nos', 0, NULL, 1, '2022-07-17 15:06:08', '2022-07-17 15:46:23', 'null', 180, 'Electrical'),
(469, 'Fluorescent Lamp 20W', 'Nos', 0, NULL, 1, '2022-07-17 15:08:59', '2022-07-17 15:46:23', 'null', 182, 'Electrical'),
(470, 'Fluorescent Lamp 40W', 'Nos', 0, NULL, 1, '2022-07-17 15:09:12', '2022-07-17 15:46:23', 'null', 183, 'Electrical'),
(471, 'Ceiling Lamp 12\"', 'Nos', 0, NULL, 1, '2022-07-17 15:09:51', '2022-07-17 15:46:40', 'null', 167, 'Electrical'),
(472, 'Ceiling Lamp 16\"', 'Nos', 0, NULL, 1, '2022-07-17 15:10:02', '2022-07-17 15:46:40', 'null', 168, 'Electrical'),
(473, 'Pilot Lamp', 'Nos', 0, NULL, 1, '2022-07-17 15:10:32', '2022-07-17 15:46:23', 'null', 179, 'Electrical'),
(474, 'Circular Lamp 9W ( Mounted Type )', 'Nos', 0, NULL, 1, '2022-07-17 15:44:27', '2022-07-17 15:46:40', 'null', 173, 'Electrical'),
(475, 'Circular Lamp 12W ( Mounted Type )', 'Nos', 0, NULL, 1, '2022-07-17 15:44:43', '2022-07-17 15:46:40', 'null', 174, 'Electrical'),
(476, 'Circular Lamp 18W ( Mounted Type )', 'Nos', 0, NULL, 1, '2022-07-17 15:45:00', '2022-07-17 15:46:40', 'null', 175, 'Electrical');

-- --------------------------------------------------------

--
-- Table structure for table `variable_assets_sizes`
--

CREATE TABLE `variable_assets_sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `size` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_assets_sizes`
--

INSERT INTO `variable_assets_sizes` (`id`, `variable_asset_id`, `size`, `created_at`, `updated_at`) VALUES
(12, 14, '20mm', '2022-04-30 03:35:00', '2022-04-30 03:35:00'),
(24, 21, '8\'x4\'', '2022-04-30 03:41:28', '2022-04-30 03:41:28'),
(26, 23, '8\'x4\'', '2022-04-30 03:42:35', '2022-04-30 03:42:35'),
(104, 159, 'null', '2022-06-29 09:21:55', '2022-06-29 09:21:55'),
(107, 132, 'null', '2022-07-03 02:37:13', '2022-07-03 02:37:13'),
(109, 135, 'null', '2022-07-03 02:37:37', '2022-07-03 02:37:37'),
(110, 136, 'null', '2022-07-03 02:37:50', '2022-07-03 02:37:50'),
(111, 142, 'null', '2022-07-03 02:38:05', '2022-07-03 02:38:05'),
(112, 143, 'null', '2022-07-03 02:38:18', '2022-07-03 02:38:18'),
(113, 141, 'null', '2022-07-03 02:38:30', '2022-07-03 02:38:30'),
(114, 144, 'null', '2022-07-03 02:38:42', '2022-07-03 02:38:42'),
(115, 145, 'null', '2022-07-03 02:38:53', '2022-07-03 02:38:53'),
(116, 146, 'null', '2022-07-03 02:39:04', '2022-07-03 02:39:04'),
(117, 147, 'null', '2022-07-03 02:39:20', '2022-07-03 02:39:20'),
(118, 148, 'null', '2022-07-03 02:39:32', '2022-07-03 02:39:32'),
(119, 149, 'null', '2022-07-03 02:39:44', '2022-07-03 02:39:44'),
(120, 150, 'null', '2022-07-03 02:40:00', '2022-07-03 02:40:00'),
(121, 151, 'null', '2022-07-03 02:40:21', '2022-07-03 02:40:21'),
(122, 152, 'null', '2022-07-03 02:40:39', '2022-07-03 02:40:39'),
(123, 139, 'null', '2022-07-03 02:40:49', '2022-07-03 02:40:49'),
(124, 140, 'null', '2022-07-03 02:41:12', '2022-07-03 02:41:12'),
(125, 153, 'null', '2022-07-03 02:41:24', '2022-07-03 02:41:24'),
(126, 154, 'null', '2022-07-03 02:41:36', '2022-07-03 02:41:36'),
(127, 155, 'null', '2022-07-03 02:41:49', '2022-07-03 02:41:49'),
(128, 156, 'null', '2022-07-03 14:53:43', '2022-07-03 14:53:43'),
(129, 35, 'null', '2022-07-03 14:53:52', '2022-07-03 14:53:52'),
(130, 34, 'null', '2022-07-03 14:54:02', '2022-07-03 14:54:02'),
(131, 137, 'null', '2022-07-03 14:54:11', '2022-07-03 14:54:11'),
(132, 33, 'null', '2022-07-03 14:55:10', '2022-07-03 14:55:10'),
(133, 129, 'null', '2022-07-03 14:55:53', '2022-07-03 14:55:53'),
(135, 130, 'null', '2022-07-03 14:56:51', '2022-07-03 14:56:51'),
(136, 128, 'null', '2022-07-03 14:57:26', '2022-07-03 14:57:26'),
(137, 11, 'null', '2022-07-03 14:59:55', '2022-07-03 14:59:55'),
(138, 36, 'null', '2022-07-03 16:21:43', '2022-07-03 16:21:43'),
(139, 37, 'null', '2022-07-03 16:21:51', '2022-07-03 16:21:51'),
(140, 38, 'null', '2022-07-03 16:21:59', '2022-07-03 16:21:59'),
(141, 39, 'null', '2022-07-03 16:22:08', '2022-07-03 16:22:08'),
(142, 40, 'null', '2022-07-03 16:22:21', '2022-07-03 16:22:21'),
(143, 41, 'null', '2022-07-03 16:22:33', '2022-07-03 16:22:33'),
(144, 42, 'null', '2022-07-03 16:22:39', '2022-07-03 16:22:39'),
(145, 43, 'null', '2022-07-03 16:22:47', '2022-07-03 16:22:47'),
(146, 44, 'null', '2022-07-03 16:22:57', '2022-07-03 16:22:57'),
(147, 45, 'null', '2022-07-03 16:23:05', '2022-07-03 16:23:05'),
(149, 46, 'null', '2022-07-03 16:25:39', '2022-07-03 16:25:39'),
(150, 47, 'null', '2022-07-03 16:25:49', '2022-07-03 16:25:49'),
(151, 48, 'null', '2022-07-03 16:25:58', '2022-07-03 16:25:58'),
(152, 49, 'null', '2022-07-03 16:26:17', '2022-07-03 16:26:17'),
(153, 50, 'null', '2022-07-03 16:26:25', '2022-07-03 16:26:25'),
(154, 51, 'null', '2022-07-03 16:26:58', '2022-07-03 16:26:58'),
(157, 54, 'null', '2022-07-03 16:27:48', '2022-07-03 16:27:48'),
(160, 57, 'null', '2022-07-03 16:28:10', '2022-07-03 16:28:10'),
(161, 58, 'null', '2022-07-03 16:28:19', '2022-07-03 16:28:19'),
(162, 59, 'null', '2022-07-03 16:28:26', '2022-07-03 16:28:26'),
(165, 62, 'null', '2022-07-03 16:29:13', '2022-07-03 16:29:13'),
(168, 65, 'null', '2022-07-03 16:29:34', '2022-07-03 16:29:34'),
(169, 66, 'null', '2022-07-03 16:29:43', '2022-07-03 16:29:43'),
(170, 67, 'null', '2022-07-03 16:29:51', '2022-07-03 16:29:51'),
(172, 161, 'null', '2022-07-03 16:34:42', '2022-07-03 16:34:42'),
(173, 162, 'null', '2022-07-03 16:37:04', '2022-07-03 16:37:04'),
(175, 196, 'null', '2022-07-14 05:26:47', '2022-07-14 05:26:47'),
(176, 108, 'null', '2022-07-14 15:39:13', '2022-07-14 15:39:13'),
(177, 109, 'null', '2022-07-14 15:39:23', '2022-07-14 15:39:23'),
(178, 110, 'null', '2022-07-14 15:39:32', '2022-07-14 15:39:32'),
(179, 111, 'null', '2022-07-14 15:39:43', '2022-07-14 15:39:43'),
(180, 112, 'null', '2022-07-14 15:39:51', '2022-07-14 15:39:51'),
(181, 113, 'null', '2022-07-14 15:40:06', '2022-07-14 15:40:06'),
(182, 114, 'null', '2022-07-14 15:40:54', '2022-07-14 15:40:54'),
(183, 115, 'null', '2022-07-14 15:41:19', '2022-07-14 15:41:19'),
(184, 116, 'null', '2022-07-14 15:41:46', '2022-07-14 15:41:46'),
(186, 119, 'null', '2022-07-14 15:42:46', '2022-07-14 15:42:46'),
(187, 120, 'null', '2022-07-14 15:42:54', '2022-07-14 15:42:54'),
(188, 121, 'null', '2022-07-14 15:43:03', '2022-07-14 15:43:03'),
(189, 122, 'null', '2022-07-14 15:43:11', '2022-07-14 15:43:11'),
(190, 123, 'null', '2022-07-14 15:43:19', '2022-07-14 15:43:19'),
(191, 124, 'null', '2022-07-14 15:43:27', '2022-07-14 15:43:27'),
(192, 125, 'null', '2022-07-14 15:43:35', '2022-07-14 15:43:35'),
(193, 126, 'null', '2022-07-14 15:43:43', '2022-07-14 15:43:43'),
(194, 127, 'null', '2022-07-14 15:43:55', '2022-07-14 15:43:55'),
(196, 25, 'null', '2022-07-14 15:59:50', '2022-07-14 15:59:50'),
(197, 168, 'null', '2022-07-14 16:03:41', '2022-07-14 16:03:41'),
(198, 209, 'null', '2022-07-14 16:06:48', '2022-07-14 16:06:48'),
(199, 210, 'null', '2022-07-14 16:07:13', '2022-07-14 16:07:13'),
(200, 186, 'null', '2022-07-14 16:12:22', '2022-07-14 16:12:22'),
(201, 97, 'null', '2022-07-14 16:14:39', '2022-07-14 16:14:39'),
(202, 98, 'null', '2022-07-14 16:14:59', '2022-07-14 16:14:59'),
(203, 99, 'null', '2022-07-14 16:15:15', '2022-07-14 16:15:15'),
(204, 213, 'null', '2022-07-14 16:15:36', '2022-07-14 16:15:36'),
(205, 199, 'null', '2022-07-14 16:16:10', '2022-07-14 16:16:10'),
(206, 118, 'null', '2022-07-14 16:17:55', '2022-07-14 16:17:55'),
(207, 52, 'null', '2022-07-14 16:26:57', '2022-07-14 16:26:57'),
(208, 60, 'null', '2022-07-14 16:27:10', '2022-07-14 16:27:10'),
(209, 64, 'null', '2022-07-14 16:27:29', '2022-07-14 16:27:29'),
(210, 56, 'null', '2022-07-14 16:27:46', '2022-07-14 16:27:46'),
(211, 63, 'null', '2022-07-14 16:28:07', '2022-07-14 16:28:07'),
(212, 55, 'null', '2022-07-14 16:28:45', '2022-07-14 16:28:45'),
(213, 61, 'null', '2022-07-14 16:29:12', '2022-07-14 16:29:12'),
(214, 53, 'null', '2022-07-14 16:29:25', '2022-07-14 16:29:25'),
(215, 220, 'null', '2022-07-14 16:32:40', '2022-07-14 16:32:40'),
(216, 172, 'null', '2022-07-14 16:33:19', '2022-07-14 16:33:19'),
(217, 103, 'null', '2022-07-14 16:52:46', '2022-07-14 16:52:46'),
(218, 206, 'null', '2022-07-14 16:53:06', '2022-07-14 16:53:06'),
(220, 249, 'null', '2022-07-17 09:17:38', '2022-07-17 09:17:38'),
(221, 258, 'null', '2022-07-17 09:54:44', '2022-07-17 09:54:44'),
(222, 271, 'null', '2022-07-17 10:08:52', '2022-07-17 10:08:52'),
(223, 302, 'null', '2022-07-17 11:06:17', '2022-07-17 11:06:17'),
(224, 281, 'null', '2022-07-17 11:06:36', '2022-07-17 11:06:36'),
(225, 294, 'null', '2022-07-17 11:06:50', '2022-07-17 11:06:50'),
(226, 299, 'null', '2022-07-17 11:07:06', '2022-07-17 11:07:06'),
(227, 288, 'null', '2022-07-17 11:07:21', '2022-07-17 11:07:21'),
(228, 291, 'null', '2022-07-17 11:07:36', '2022-07-17 11:07:36'),
(229, 296, 'null', '2022-07-17 11:07:54', '2022-07-17 11:07:54'),
(230, 289, 'null', '2022-07-17 11:08:07', '2022-07-17 11:08:07'),
(231, 301, 'null', '2022-07-17 11:08:22', '2022-07-17 11:08:22'),
(232, 300, 'null', '2022-07-17 11:08:35', '2022-07-17 11:08:35'),
(233, 297, 'null', '2022-07-17 11:08:51', '2022-07-17 11:08:51'),
(235, 292, 'null', '2022-07-17 11:09:05', '2022-07-17 11:09:05'),
(236, 303, 'null', '2022-07-17 11:09:18', '2022-07-17 11:09:18'),
(238, 298, 'null', '2022-07-17 11:09:36', '2022-07-17 11:09:36'),
(239, 295, 'null', '2022-07-17 11:09:52', '2022-07-17 11:09:52'),
(240, 282, 'null', '2022-07-17 11:10:06', '2022-07-17 11:10:06'),
(241, 280, 'null', '2022-07-17 11:10:19', '2022-07-17 11:10:19'),
(242, 283, 'null', '2022-07-17 11:10:32', '2022-07-17 11:10:32'),
(243, 293, 'null', '2022-07-17 11:10:46', '2022-07-17 11:10:46'),
(244, 286, 'null', '2022-07-17 11:11:00', '2022-07-17 11:11:00'),
(245, 284, 'null', '2022-07-17 11:11:12', '2022-07-17 11:11:12'),
(246, 287, 'null', '2022-07-17 11:11:38', '2022-07-17 11:11:38'),
(247, 285, 'null', '2022-07-17 11:11:52', '2022-07-17 11:11:52'),
(248, 290, 'null', '2022-07-17 11:12:12', '2022-07-17 11:12:12'),
(249, 330, 'null', '2022-07-17 11:31:43', '2022-07-17 11:31:43'),
(250, 385, 'null', '2022-07-17 12:21:56', '2022-07-17 12:21:56'),
(251, 406, 'null', '2022-07-17 14:18:22', '2022-07-17 14:18:22'),
(252, 412, 'null', '2022-07-17 14:24:27', '2022-07-17 14:24:27'),
(254, 160, 'null', '2022-07-17 14:37:11', '2022-07-17 14:37:11'),
(255, 175, 'null', '2022-07-17 14:37:36', '2022-07-17 14:37:36'),
(256, 177, 'null', '2022-07-17 14:39:05', '2022-07-17 14:39:05'),
(257, 176, 'null', '2022-07-17 14:39:31', '2022-07-17 14:39:31'),
(258, 179, 'null', '2022-07-17 14:40:49', '2022-07-17 14:40:49'),
(259, 181, 'null', '2022-07-17 14:42:11', '2022-07-17 14:42:11'),
(260, 180, 'null', '2022-07-17 14:45:29', '2022-07-17 14:45:29'),
(261, 163, 'null', '2022-07-17 14:47:40', '2022-07-17 14:47:40'),
(262, 117, 'null', '2022-07-17 14:48:48', '2022-07-17 14:48:48'),
(263, 465, 'null', '2022-07-17 15:15:50', '2022-07-17 15:15:50'),
(264, 466, 'null', '2022-07-17 15:16:06', '2022-07-17 15:16:06'),
(265, 467, 'null', '2022-07-17 15:16:27', '2022-07-17 15:16:27');

-- --------------------------------------------------------

--
-- Table structure for table `variable_assets_temporaries`
--

CREATE TABLE `variable_assets_temporaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_assets_temporaries`
--

INSERT INTO `variable_assets_temporaries` (`id`, `variable_asset_id`, `qty`, `session_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 424, '1', 'WZgEpxJaGW68DpvXCW4rJuBbrQ3QhSrc39JSEqI8', '22', '2022-08-10 06:38:34', '2022-08-10 06:38:34'),
(2, 425, '1', 'WZgEpxJaGW68DpvXCW4rJuBbrQ3QhSrc39JSEqI8', '22', '2022-08-10 06:38:35', '2022-08-10 06:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `variable_bq_temporaries`
--

CREATE TABLE `variable_bq_temporaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_bq_temporaries`
--

INSERT INTO `variable_bq_temporaries` (`id`, `variable_asset_id`, `qty`, `session_id`, `user_id`, `created_at`, `updated_at`, `rate`) VALUES
(13, 4, '1', 'uMp6ucpm47WCh8oM11UrjjkMQdi9rt0eAb6ubKdS', '1', '2022-08-10 09:58:46', '2022-08-10 09:58:46', '0'),
(14, 25, '1', 'uMp6ucpm47WCh8oM11UrjjkMQdi9rt0eAb6ubKdS', '1', '2022-08-10 09:58:49', '2022-08-10 09:58:49', '0'),
(15, 26, '1', 'uMp6ucpm47WCh8oM11UrjjkMQdi9rt0eAb6ubKdS', '1', '2022-08-10 09:58:50', '2022-08-10 09:58:50', '0'),
(16, 107, '1', 'uMp6ucpm47WCh8oM11UrjjkMQdi9rt0eAb6ubKdS', '1', '2022-08-10 09:58:52', '2022-08-10 09:58:52', '0'),
(17, 15, '1', 'uMp6ucpm47WCh8oM11UrjjkMQdi9rt0eAb6ubKdS', '1', '2022-08-10 09:59:33', '2022-08-10 09:59:33', '0'),
(18, 447, '1', 'uMp6ucpm47WCh8oM11UrjjkMQdi9rt0eAb6ubKdS', '1', '2022-08-10 10:05:05', '2022-08-10 10:05:05', '0'),
(19, 4, '1', 'kotvRKkgrpzuiDdudrnTO2l13DpYYYFIONG0PYBV', '1', '2022-08-17 03:00:30', '2022-08-17 03:00:30', '0'),
(20, 1, '1', 'kotvRKkgrpzuiDdudrnTO2l13DpYYYFIONG0PYBV', '1', '2022-08-17 03:00:31', '2022-08-17 03:00:31', '0'),
(21, 25, '1', 'kotvRKkgrpzuiDdudrnTO2l13DpYYYFIONG0PYBV', '1', '2022-08-17 03:00:32', '2022-08-17 03:01:16', '1000'),
(22, 171, '1', 'kotvRKkgrpzuiDdudrnTO2l13DpYYYFIONG0PYBV', '1', '2022-08-17 03:40:38', '2022-08-17 03:40:38', '0'),
(23, 26, '1', 'kotvRKkgrpzuiDdudrnTO2l13DpYYYFIONG0PYBV', '1', '2022-08-17 03:40:39', '2022-08-17 03:40:39', '0');

-- --------------------------------------------------------

--
-- Table structure for table `variable_finance_payment_slips`
--

CREATE TABLE `variable_finance_payment_slips` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `finance_payment_slip_upload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finance_payment_slip_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finance_payment_slip_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(6, 38, 'finished', '2022-06-20 11:03:32am', 'public/variable_finance_payment_slip/S3cR9DDrTV4zc2tsrJZB5EGtCwIk8qfz5LRj6I5x.jpg', '176,000.jpg', 66, 'PKD', '2022-06-20 04:03:32', '2022-06-20 04:03:32'),
(7, 17, 'finished', '2022-07-13 22:48:13pm', 'public/variable_finance_payment_slip/wpuFtUMMJwckTfLaMMgeo5cWCVuHjwWngExwwLzV.jpg', 'CROCODILE MWD.jpg', 176, NULL, '2022-07-13 15:48:13', '2022-07-13 15:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `variable_logistics_team_checks`
--

CREATE TABLE `variable_logistics_team_checks` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `variable_request_item_id` int(11) DEFAULT NULL,
  `eng_request_qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qs_passed_qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(201, 192, 21, 244, '5', '4', '93000', 139, '2022-06-24 04:31:07', '2022-06-24 04:31:07', NULL),
(202, 200, 21, 257, '15', '0.1212', '1130000', 8, '2022-06-26 08:53:00', '2022-06-26 08:53:00', NULL),
(203, 200, 21, 258, '80', '1.3208', '1150000', 7, '2022-06-26 08:53:00', '2022-06-26 08:53:00', NULL),
(204, 200, 21, 259, '80', '0', '0', 5, '2022-06-26 08:53:00', '2022-06-26 08:53:00', NULL),
(205, 206, 21, 268, '0.56', '0.5556', '900000', 10, '2022-06-26 08:54:01', '2022-06-26 08:54:01', NULL),
(206, 203, 21, 265, '2', '2', '105000', 116, '2022-06-26 09:03:35', '2022-06-26 09:03:35', NULL),
(207, 190, 21, 241, '2', '0.4848', '1130000', 8, '2022-06-26 09:26:48', '2022-06-26 09:26:48', NULL),
(208, 232, 21, 302, '3', '3', '18333.3333', 104, '2022-06-28 03:42:00', '2022-06-28 03:42:00', NULL),
(209, 230, 21, 300, '6', '6', '18333.3333', 104, '2022-06-28 03:43:09', '2022-06-28 03:43:09', NULL),
(210, 215, 21, 277, '1500', '1500', '35', 106, '2022-06-28 04:00:32', '2022-06-28 04:00:32', NULL),
(211, 231, 21, 301, '100', '100', '7800', 4, '2022-06-28 04:15:51', '2022-06-28 04:15:51', NULL),
(212, 212, 21, 274, '1.5', '1.5', '13000', 26, '2022-06-28 04:22:35', '2022-06-28 04:22:35', NULL),
(213, 221, 21, 289, '1', '1', '13000', 26, '2022-06-28 04:26:30', '2022-06-28 04:26:30', NULL),
(214, 218, 21, 280, '1.5', '1.5', '13000', 26, '2022-06-28 04:33:26', '2022-06-28 04:33:26', NULL),
(215, 213, 21, 275, '2', '2', '68000', 27, '2022-06-28 04:34:42', '2022-06-28 04:34:42', NULL),
(216, 210, 21, 272, '3.5', '3', '68000', 27, '2022-06-28 04:37:52', '2022-06-28 04:37:52', NULL),
(217, 209, 21, 271, '3', '2', '13000', 26, '2022-06-28 04:45:05', '2022-06-28 04:45:05', NULL),
(218, 207, 21, 269, '4000', '4000', '133', 25, '2022-06-28 04:56:53', '2022-06-28 04:56:53', NULL),
(219, 211, 21, 273, '40', '30', '7825', 1, '2022-06-28 04:58:00', '2022-06-28 04:58:00', NULL),
(220, 227, 21, 297, '50', '50', '7800', 4, '2022-06-28 04:58:49', '2022-06-28 04:58:49', NULL),
(221, 228, 21, 298, '6', '6', '18333.3333', 104, '2022-06-28 05:00:01', '2022-06-28 05:00:01', NULL),
(222, 214, 21, 276, '30', '30', '6666', 10, '2022-06-28 05:17:18', '2022-06-28 05:17:18', '14 Pcs Purchased only'),
(223, 226, 17, 296, '85', '60', '7800', 4, '2022-06-28 09:40:25', '2022-06-28 09:40:25', NULL),
(224, 111, 17, 137, '64', '64', '7800', 4, '2022-06-29 05:55:08', '2022-06-29 05:55:08', NULL),
(225, 246, 21, 319, '5000', '5000', '134', 25, '2022-06-29 09:09:40', '2022-06-29 09:09:40', NULL),
(226, 245, 21, 318, '5000', '1000', '134', 25, '2022-06-29 09:10:16', '2022-06-29 09:10:16', NULL),
(227, 245, 21, 318, '5000', '1000', '134', 25, '2022-06-29 09:10:16', '2022-06-29 09:10:16', NULL),
(228, 198, 21, 255, '1.5', '1.5', '13000', 26, '2022-06-29 10:25:39', '2022-06-29 10:25:39', NULL),
(229, 205, 21, 267, '1', '1', '28000', 26, '2022-06-29 16:21:01', '2022-06-29 16:21:01', NULL),
(230, 263, 21, 338, '6', '6', '18333.3333', 104, '2022-06-30 04:42:22', '2022-06-30 04:42:22', NULL),
(231, 261, 21, 334, '25', '25', '1800', 98, '2022-06-30 04:45:37', '2022-06-30 04:45:37', NULL),
(232, 261, 21, 335, '15', '15', '3500', 95, '2022-06-30 04:45:37', '2022-06-30 04:45:37', NULL),
(233, 220, 21, 282, '220', '160', '2180', 157, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(234, 220, 21, 283, '100', '80', '900', 158, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(235, 220, 21, 284, '300', '200', '80', 160, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(236, 220, 21, 285, '7', '7', '5000', 161, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(237, 220, 21, 286, '45', '40', '7450', 159, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(238, 220, 21, 287, '200', '200', '8', 162, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(239, 220, 21, 288, '1', '1', '4000', 163, '2022-06-30 10:14:27', '2022-06-30 10:14:27', NULL),
(240, 242, 21, 313, '55', '28', '7800', 1, '2022-07-01 03:16:30', '2022-07-01 03:16:30', NULL),
(241, 242, 21, 314, '1.5', '1.5', '13000', 26, '2022-07-01 03:16:30', '2022-07-01 03:16:30', NULL),
(242, 242, 21, 315, '2', '1.5', '68000', 131, '2022-07-01 03:16:30', '2022-07-01 03:16:30', NULL),
(243, 241, 21, 311, '28', '28', '7800', 1, '2022-07-01 03:18:38', '2022-07-01 03:18:38', NULL),
(244, 241, 21, 312, '1.2', '1', '13000', 26, '2022-07-01 03:18:38', '2022-07-01 03:18:38', NULL),
(245, 235, 21, 305, '50', '30', '7825', 4, '2022-07-01 03:21:07', '2022-07-01 03:21:07', NULL),
(246, 234, 21, 304, '50', '35', '7825', 4, '2022-07-01 03:22:35', '2022-07-01 03:22:35', NULL),
(247, 258, 21, 331, '50', '50', '7800', 1, '2022-07-01 04:00:07', '2022-07-01 04:00:07', NULL),
(248, 265, 21, 340, '1', '1', '90000', 15, '2022-07-01 04:00:50', '2022-07-01 04:00:50', NULL),
(249, 252, 21, 325, '1', '1.5', '60000', 27, '2022-07-01 04:23:17', '2022-07-01 04:23:17', NULL),
(250, 251, 21, 324, '1', '1.5', '18666.6667', 26, '2022-07-01 04:25:35', '2022-07-01 04:25:35', NULL),
(251, 255, 21, 328, '1.5', '1.5', '13000', 26, '2022-07-01 04:50:32', '2022-07-01 04:50:32', NULL),
(252, 255, 21, 328, '1.5', '1.5', '13000', 26, '2022-07-01 05:15:17', '2022-07-01 05:15:17', NULL),
(253, 233, 21, 303, '28', '28', '22300', 21, '2022-07-01 05:20:25', '2022-07-01 05:20:25', NULL),
(254, 240, 21, 310, '7', '7', '34500', 83, '2022-07-01 06:07:23', '2022-07-01 06:07:23', NULL),
(255, 262, 21, 336, '1.5', '1.5', '13000', 107, '2022-07-01 06:10:14', '2022-07-01 06:10:14', NULL),
(256, 262, 21, 337, '1.5', '1.5', '65000', 27, '2022-07-01 06:10:14', '2022-07-01 06:10:14', NULL),
(257, 247, 21, 320, '17', '14', '22300', 22, '2022-07-01 06:21:57', '2022-07-01 06:21:57', NULL),
(258, 237, 21, 307, '1', '0.05', '1800000', 15, '2022-07-01 15:46:57', '2022-07-01 15:46:57', NULL),
(259, 238, 21, 308, '10000', '10000', '134', 25, '2022-07-01 15:47:44', '2022-07-01 15:47:44', NULL),
(260, 236, 21, 306, '60', '0.4444', '900000', 5, '2022-07-01 15:49:23', '2022-07-01 15:49:23', NULL),
(261, 204, 21, 266, '1', '1', '64000', 27, '2022-07-01 16:00:21', '2022-07-01 16:00:21', NULL),
(262, 264, 17, 339, '2', '2', '18333', 26, '2022-07-02 04:48:19', '2022-07-02 04:48:19', NULL),
(263, 268, 17, 345, '1.5', '1.5', '13000', 26, '2022-07-02 05:02:40', '2022-07-02 05:02:40', NULL),
(264, 254, 17, 327, '1.5', '1.5', '13000', 26, '2022-07-02 05:04:15', '2022-07-02 05:04:15', NULL),
(265, 253, 17, 326, '1.5', '1.5', '65000', 27, '2022-07-02 05:07:25', '2022-07-02 05:07:25', NULL),
(266, 229, 17, 299, '9', '7', '18333', 26, '2022-07-02 05:14:00', '2022-07-02 05:14:00', NULL),
(267, 225, 17, 295, '1.5', '1.5', '13000', 26, '2022-07-02 05:30:54', '2022-07-02 05:30:54', NULL),
(268, 256, 21, 329, '0.74', '0.74', '850000', 17, '2022-07-02 06:42:51', '2022-07-02 06:42:51', NULL),
(269, 309, 21, 390, '1.25', '1.25', '22400', 26, '2022-07-05 08:55:44', '2022-07-05 08:55:44', NULL),
(270, 303, 21, 383, '1.5', '1.5', '18666.6667', 26, '2022-07-05 08:59:47', '2022-07-05 08:59:47', NULL),
(271, 302, 21, 382, '1.5', '1.5', '13000', 26, '2022-07-05 09:10:19', '2022-07-05 09:10:19', NULL),
(272, 308, 21, 389, '50', '50', '7800', 4, '2022-07-05 09:12:15', '2022-07-05 09:12:15', NULL),
(273, 300, 21, 380, '3', '3', '18333.3333', 104, '2022-07-05 09:16:58', '2022-07-05 09:16:58', NULL),
(274, 299, 21, 379, '3', '3', '13000', 26, '2022-07-05 09:24:52', '2022-07-05 09:24:52', NULL),
(275, 298, 21, 378, '1.5', '1.5', '13000', 26, '2022-07-05 09:26:43', '2022-07-05 09:26:43', NULL),
(276, 297, 21, 377, '0.14', '0.1407', '1040000', 10, '2022-07-05 09:29:15', '2022-07-05 09:29:15', NULL),
(277, 295, 21, 375, '0.17', '0.17', '1110000', 6, '2022-07-05 09:30:05', '2022-07-05 09:30:05', NULL),
(278, 296, 21, 376, '0.81', '0.8113', '1180000', 7, '2022-07-05 09:31:47', '2022-07-05 09:31:47', NULL),
(279, 294, 21, 374, '1', '1', '1250000', 5, '2022-07-05 09:34:10', '2022-07-05 09:34:10', NULL),
(280, 304, 21, 384, '30', '20', '1800', 98, '2022-07-05 09:35:17', '2022-07-05 09:35:17', NULL),
(281, 285, 21, 364, '3', '3', '13000', 26, '2022-07-05 09:38:41', '2022-07-05 09:38:41', NULL),
(282, 285, 21, 365, '3', '3', '65000', 27, '2022-07-05 09:38:41', '2022-07-05 09:38:41', NULL),
(283, 282, 21, 360, '0.5', '0.5', '1120000', 6, '2022-07-05 09:40:15', '2022-07-05 09:40:15', NULL),
(284, 278, 21, 355, '1.5', '1.5', '13000', 26, '2022-07-05 09:42:03', '2022-07-05 09:42:03', NULL),
(285, 269, 21, 346, '100', '100', '35', 106, '2022-07-05 09:44:44', '2022-07-05 09:44:44', NULL),
(286, 260, 21, 333, '0.5', '0.5', '1040000', 10, '2022-07-05 09:51:42', '2022-07-05 09:51:42', NULL),
(287, 266, 21, 341, '60', '60', '1700', 165, '2022-07-05 10:01:29', '2022-07-05 10:01:29', NULL),
(288, 266, 21, 342, '5', '5', '49000', 127, '2022-07-05 10:01:29', '2022-07-05 10:01:29', NULL),
(289, 270, 21, 347, '50', '50', '7800', 1, '2022-07-05 10:03:59', '2022-07-05 10:03:59', NULL),
(290, 279, 21, 356, '50', '30', '7800', 1, '2022-07-05 10:06:20', '2022-07-05 10:06:20', NULL),
(291, 279, 21, 357, '10', '3', '13000', 26, '2022-07-05 10:06:20', '2022-07-05 10:06:20', NULL),
(292, 319, 17, 403, '3', '1.5', '13000', 104, '2022-07-07 10:12:23', '2022-07-07 10:12:23', NULL),
(293, 313, 18, 395, '100', '100', '7800', 1, '2022-07-13 08:42:07', '2022-07-13 08:42:07', NULL),
(294, 313, 18, 396, '5000', '5000', '136', 25, '2022-07-13 08:42:07', '2022-07-13 08:42:07', NULL),
(295, 375, 17, 459, '190', '190', '0', 25, '2022-07-14 16:29:58', '2022-07-14 16:29:58', 'Site to Site ( UWN Carry)'),
(296, 408, 18, 492, '60', '50', '7800', 1, '2022-07-15 03:23:46', '2022-07-15 03:23:46', NULL),
(297, 318, 18, 402, '3', '1.5', '13000', 27, '2022-07-15 03:49:24', '2022-07-15 03:49:24', NULL),
(298, 359, 21, 443, '1', '1', '13000', 26, '2022-07-18 00:52:43', '2022-07-18 00:52:43', NULL),
(299, 443, 21, 554, '1', '1', '13000', 26, '2022-07-18 00:55:23', '2022-07-18 00:55:23', NULL),
(300, 349, 21, 433, '100', '50', '7750', 4, '2022-07-18 00:56:46', '2022-07-18 00:56:46', NULL),
(301, 340, 21, 424, '1.25', '1.25', '13000', 26, '2022-07-18 01:05:06', '2022-07-18 01:05:06', NULL),
(302, 419, 21, 504, '5000', '5000', '123', 25, '2022-07-18 01:06:11', '2022-07-18 01:06:11', NULL),
(303, 454, 1, 576, '1.5', '1.5', '1000', 26, '2022-08-01 17:27:19', '2022-08-01 17:27:19', NULL),
(304, 454, 1, 577, '1.5', '1.5', '1000', 27, '2022-08-01 17:27:19', '2022-08-01 17:27:19', NULL),
(305, 449, 1, 568, '100', '100', '1000', 167, '2022-08-01 17:29:39', '2022-08-01 17:29:39', NULL),
(306, 448, 1, 567, '1000', '1000', '10', 25, '2022-08-08 02:40:02', '2022-08-08 02:40:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_logistics_team_sends`
--

CREATE TABLE `variable_logistics_team_sends` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_from_warehouse_id` int(11) DEFAULT NULL,
  `transfer_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transfer_to_customer_id` int(11) DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(152, 1, 'YGN_TKT_00007', '2022-06-23 04:00 PM', '21', '173', '2022-06-23 09:48:00', '2022-06-23 09:48:00', 9, NULL),
(153, 1, 'YGN_DP_00004', '2022-06-26 03:57 PM', '21', '192', '2022-06-26 08:57:15', '2022-06-26 08:57:15', 6, NULL),
(154, 1, 'YGN_DP_00004', '2022-06-26 04:03 PM', '21', '193', '2022-06-26 09:03:59', '2022-06-26 09:03:59', 6, NULL),
(155, 1, 'YGN_DP_00004', '2022-06-26 04:04 PM', '21', '194', '2022-06-26 09:04:18', '2022-06-26 09:04:18', 6, NULL),
(156, 1, 'YGN_MYG_00012', '2022-06-26 04:04 PM', '21', '179', '2022-06-26 09:04:52', '2022-06-26 09:04:52', 14, NULL),
(157, 1, 'YGN_MYG_00009', '2022-06-26 04:05 PM', '21', '178', '2022-06-26 09:05:09', '2022-06-26 09:05:09', 11, NULL),
(158, 1, 'YGN_ND_00006', '2022-06-26 04:05 PM', '21', '159', '2022-06-26 09:05:38', '2022-06-26 09:05:38', 8, NULL),
(159, 1, 'YGN_MYG_00009', '2022-06-26 04:06 PM', '21', '100', '2022-06-26 09:06:08', '2022-06-26 09:06:08', 11, NULL),
(160, 1, 'YGN_MYG_00009', '2022-06-26 04:06 PM', '21', '74', '2022-06-26 09:06:48', '2022-06-26 09:06:48', 11, NULL),
(161, 1, 'YGN_MYG_00012', '2022-06-26 10:04 PM', '21', '206', '2022-06-26 15:04:34', '2022-06-26 15:04:34', 14, NULL),
(162, 1, 'YGN_TKT_00016', '2022-06-26 10:05 PM', '21', '203', '2022-06-26 15:05:10', '2022-06-26 15:05:10', 17, NULL),
(163, 1, 'YGN_MYG_00012', '2022-06-27 10:07 PM', '21', '200', '2022-06-26 15:07:24', '2022-06-26 15:07:24', 14, NULL),
(164, 1, 'YGN_TKT_00016', '2022-06-27 10:08 PM', '21', '190', '2022-06-26 15:08:35', '2022-06-26 15:08:35', 17, NULL),
(165, 1, 'YGN_MYG_00009', '2022-07-01 11:35 PM', '21', '207', '2022-06-29 16:33:05', '2022-06-29 16:33:05', 11, NULL),
(166, 1, 'YGN_DGSK_0001', '2022-06-30 02:12 AM', '21', '263', '2022-06-30 08:42:23', '2022-06-30 08:42:23', 2, NULL),
(167, 1, 'YGN_MYG_00012', '2022-06-30 02:12 AM', '21', '261', '2022-06-30 08:43:03', '2022-06-30 08:43:03', 14, NULL),
(168, 1, 'YGN_ND_00006', '2022-06-30 02:13 AM', '21', '246', '2022-06-30 08:43:48', '2022-06-30 08:43:48', 8, NULL),
(169, 1, 'YGN_TKT_00020', '2022-06-30 02:14 AM', '21', '232', '2022-06-30 08:51:49', '2022-06-30 08:51:49', 21, NULL),
(170, 1, 'YGN_ND_00006', '2022-07-01 02:29 AM', '21', '205', '2022-07-01 08:59:51', '2022-07-01 08:59:51', 8, NULL),
(171, 1, 'YGN_TGG_00005', '2022-07-14 06:08 PM', '21', '319', '2022-07-15 00:38:17', '2022-07-15 00:38:17', 7, NULL),
(172, 1, 'YGN_TKT_00007', '2022-07-14 06:09 PM', '21', '302', '2022-07-15 00:39:09', '2022-07-15 00:39:09', 9, NULL),
(173, 1, 'YGN_ND_00006', '2022-07-14 06:09 PM', '21', '303', '2022-07-15 00:39:22', '2022-07-15 00:39:22', 8, NULL),
(174, 1, 'YGN_DGSK_0001', '2022-07-14 06:09 PM', '21', '299', '2022-07-15 00:39:55', '2022-07-15 00:39:55', 2, NULL),
(175, 1, 'YGN_TKT_00016', '2022-07-14 06:10 PM', '21', '304', '2022-07-15 00:40:35', '2022-07-15 00:40:35', 17, NULL),
(176, 1, 'YGN_ND_00034', '2022-07-15 07:57 AM', '21', '309', '2022-07-15 14:27:45', '2022-07-15 14:27:45', 36, NULL),
(177, 1, 'YGN_TGG_00005', '2022-07-15 07:58 AM', '21', '308', '2022-07-15 14:28:18', '2022-07-15 14:28:18', 7, NULL),
(178, 1, 'YGN_TGG_00005', '2022-07-15 07:58 AM', '21', '300', '2022-07-15 14:28:57', '2022-07-15 14:28:57', 7, NULL),
(179, 1, 'YGN_TGG_00015', '2022-07-15 07:59 AM', '21', '298', '2022-07-15 14:29:40', '2022-07-15 14:29:40', 16, NULL),
(180, 1, 'YGN_MYG_00012', '2022-07-15 08:00 AM', '21', '285', '2022-07-15 14:30:13', '2022-07-15 14:30:13', 14, NULL),
(181, 1, 'YGN_TKT_00020', '2022-07-15 08:00 AM', '21', '297', '2022-07-15 14:30:35', '2022-07-15 14:30:35', 21, NULL),
(182, 1, 'YGN_TKT_00020', '2022-07-15 08:01 AM', '21', '296', '2022-07-15 14:31:08', '2022-07-15 14:31:08', 21, NULL),
(183, 1, 'YGN_TKT_00020', '2022-07-15 08:01 AM', '21', '295', '2022-07-15 14:31:36', '2022-07-15 14:31:36', 21, NULL),
(184, 1, 'YGN_TKT_00020', '2022-07-15 08:01 AM', '21', '294', '2022-07-15 14:32:00', '2022-07-15 14:32:00', 21, NULL),
(185, 1, 'YGN_TKT_00007', '2022-07-15 08:02 AM', '21', '225', '2022-07-15 14:32:36', '2022-07-15 14:32:36', 9, NULL),
(186, 1, 'YGN_DGSK_0001', '2022-07-15 08:02 AM', '21', '228', '2022-07-15 14:33:00', '2022-07-15 14:33:00', 2, NULL),
(187, 1, 'YGN_MYG_00009', '2022-07-15 08:03 AM', '21', '279', '2022-07-15 14:33:46', '2022-07-15 14:33:46', 11, NULL),
(188, 1, 'YGN_TGG_00005', '2022-07-15 08:04 AM', '21', '278', '2022-07-15 14:34:31', '2022-07-15 14:34:31', 7, NULL),
(189, 1, 'YGN_ND_00006', '2022-07-15 08:05 AM', '21', '270', '2022-07-15 14:35:22', '2022-07-15 14:35:22', 8, NULL),
(190, 1, 'YGN_TKT_00020', '2022-07-15 08:05 AM', '21', '256', '2022-07-15 14:35:59', '2022-07-15 14:35:59', 21, NULL),
(191, 1, 'YGN_DGSK_0001', '2022-07-15 08:07 AM', '21', '269', '2022-07-15 14:37:17', '2022-07-15 14:37:17', 2, NULL),
(192, 1, 'YGN_MYG_00012', '2022-07-15 08:07 AM', '21', '262', '2022-07-15 14:37:43', '2022-07-15 14:37:43', 14, NULL),
(193, 1, 'YGN_TGG_00005', '2022-07-15 08:12 AM', '21', '111', '2022-07-15 14:42:14', '2022-07-15 14:42:14', 7, NULL),
(194, 1, 'YGN- SOKL- 00002', '2022-07-15 08:13 AM', '21', '198', '2022-07-15 14:43:32', '2022-07-15 14:43:32', 4, NULL),
(195, 1, 'YGN_TKT_00007', '2022-07-15 08:14 AM', '21', '204', '2022-07-15 14:44:19', '2022-07-15 14:44:19', 9, NULL),
(196, 1, 'YGN- SOKL- 00002', '2022-07-15 08:14 AM', '21', '209', '2022-07-15 14:44:54', '2022-07-15 14:44:54', 4, NULL),
(197, 1, 'YGN- SOKL- 00002', '2022-07-15 08:15 AM', '21', '210', '2022-07-15 14:45:20', '2022-07-15 14:45:20', 4, NULL),
(198, 1, 'YGN_SOKL_00003', '2022-07-15 08:15 AM', '21', '211', '2022-07-15 14:45:54', '2022-07-15 14:45:54', 5, NULL),
(199, 1, 'YGN_SOKL_00003', '2022-07-15 08:16 AM', '21', '212', '2022-07-15 14:46:29', '2022-07-15 14:46:29', 5, NULL),
(200, 1, 'YGN_SOKL_00003', '2022-07-15 08:16 AM', '21', '213', '2022-07-15 14:46:59', '2022-07-15 14:46:59', 5, NULL),
(201, 1, 'YGN_TKT_00007', '2022-07-15 08:17 AM', '21', '214', '2022-07-15 14:47:27', '2022-07-15 14:47:27', 9, NULL),
(202, 1, 'YGN_DGSK_0001', '2022-07-15 08:18 AM', '21', '215', '2022-07-15 14:48:17', '2022-07-15 14:48:17', 2, NULL),
(203, 1, 'YGN_TGG_00005', '2022-07-15 08:18 AM', '21', '218', '2022-07-15 14:48:57', '2022-07-15 14:48:57', 7, NULL),
(204, 1, 'YGN_DP_00004', '2022-07-15 08:19 AM', '21', '220', '2022-07-15 14:49:29', '2022-07-15 14:49:29', 6, NULL),
(205, 1, 'YGN_TKT_00016', '2022-07-15 08:20 AM', '21', '221', '2022-07-15 14:50:40', '2022-07-15 14:50:40', 17, NULL),
(206, 1, 'YGN_TKT_00016', '2022-07-15 08:20 AM', '21', '221', '2022-07-15 14:50:40', '2022-07-15 14:50:40', 17, NULL),
(207, 1, 'YGN_TKT_00007', '2022-07-15 08:21 AM', '21', '226', '2022-07-15 14:51:24', '2022-07-15 14:51:24', 9, NULL),
(208, 1, 'YGN_DGSK_0001', '2022-07-15 08:21 AM', '21', '227', '2022-07-15 14:52:00', '2022-07-15 14:52:00', 2, NULL),
(209, 1, 'YGN_TGG_00015', '2022-07-15 08:24 AM', '21', '229', '2022-07-15 14:54:41', '2022-07-15 14:54:41', 16, NULL),
(210, 1, 'YGN_TKT_00020', '2022-07-15 08:25 AM', '21', '230', '2022-07-15 14:55:22', '2022-07-15 14:55:22', 21, NULL),
(211, 1, 'YGN_DGSK_0001', '2022-07-15 08:25 AM', '21', '237', '2022-07-15 14:55:51', '2022-07-15 14:55:51', 2, NULL),
(212, 1, 'YGN_DGSK_0001', '2022-07-15 08:26 AM', '21', '238', '2022-07-15 14:56:24', '2022-07-15 14:56:24', 2, NULL),
(213, 1, 'YGN_TGG_00005', '2022-07-15 08:27 AM', '21', '231', '2022-07-15 14:57:57', '2022-07-15 14:57:57', 7, NULL),
(214, 1, 'YGN_MYG_00012', '2022-07-15 08:28 AM', '21', '233', '2022-07-15 14:58:45', '2022-07-15 14:58:45', 14, NULL),
(215, 1, 'YGN_SOKL_00003', '2022-07-15 08:29 AM', '21', '234', '2022-07-15 14:59:18', '2022-07-15 14:59:18', 5, NULL),
(216, 1, 'YGN- SOKL- 00002', '2022-07-15 08:30 AM', '21', '235', '2022-07-15 15:00:57', '2022-07-15 15:00:57', 4, NULL),
(217, 1, 'YGN_DGSK_0001', '2022-07-15 08:31 AM', '21', '236', '2022-07-15 15:01:39', '2022-07-15 15:01:39', 2, NULL),
(218, 1, 'YGN_DGSK_0001', '2022-07-15 08:32 AM', '21', '240', '2022-07-15 15:02:21', '2022-07-15 15:02:21', 2, NULL),
(219, 1, 'YGN_ND_00034', '2022-07-15 08:32 AM', '21', '251', '2022-07-15 15:02:45', '2022-07-15 15:02:45', 36, NULL),
(220, 1, 'YGN_TGG_00010', '2022-07-15 08:33 AM', '21', '241', '2022-07-15 15:03:20', '2022-07-15 15:03:20', 12, NULL),
(221, 1, 'YGN_TGG_00010', '2022-07-15 08:34 AM', '21', '242', '2022-07-15 15:04:35', '2022-07-15 15:04:35', 12, NULL),
(222, 1, 'YGN_ND_00006', '2022-07-15 08:35 AM', '21', '245', '2022-07-15 15:05:13', '2022-07-15 15:05:13', 8, NULL),
(223, 1, 'YGN_TKT_00016', '2022-07-15 08:35 AM', '21', '247', '2022-07-15 15:05:51', '2022-07-15 15:05:51', 17, NULL),
(224, 1, 'YGN_ND_00034', '2022-07-15 08:39 AM', '21', '252', '2022-07-15 15:09:15', '2022-07-15 15:09:15', 36, NULL),
(225, 1, 'YGN_TKT_00007', '2022-07-15 08:39 AM', '21', '253', '2022-07-15 15:09:51', '2022-07-15 15:09:51', 9, NULL),
(226, 1, 'YGN_TKT_00007', '2022-07-15 08:40 AM', '21', '254', '2022-07-15 15:10:21', '2022-07-15 15:10:21', 9, NULL),
(227, 1, 'YGN_ND_00034', '2022-07-15 08:40 AM', '21', '258', '2022-07-15 15:10:59', '2022-07-15 15:10:59', 36, NULL),
(228, 1, 'YGN_ND_00034', '2022-07-15 08:41 AM', '21', '260', '2022-07-15 15:11:40', '2022-07-15 15:11:40', 36, NULL),
(229, 1, 'YGN_TGG_00015', '2022-07-15 08:43 AM', '21', '264', '2022-07-15 15:13:07', '2022-07-15 15:13:07', 16, NULL),
(230, 1, 'YGN_SOKL_00003', '2022-07-15 08:43 AM', '21', '268', '2022-07-15 15:13:36', '2022-07-15 15:13:36', 5, NULL),
(231, 1, 'YGN_TKT_00020', '2022-07-15 08:44 AM', '21', '265', '2022-07-15 15:14:09', '2022-07-15 15:14:09', 21, NULL),
(232, 1, 'YGN_DGSK_0001', '2022-07-15 08:44 AM', '21', '266', '2022-07-15 15:14:41', '2022-07-15 15:14:41', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_payments`
--

CREATE TABLE `variable_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `transportation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banking_percent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(157, 192, 21, '0', '0', '0', '0', '2022-06-24 04:31:07', '2022-06-24 04:31:07', 'Aung Myo Hein'),
(158, 200, 21, '28000', '7000', '0', '0', '2022-06-26 08:53:00', '2022-06-26 08:53:00', 'MSDF'),
(159, 206, 21, '0', '0', '0', '0', '2022-06-26 08:54:01', '2022-06-26 08:54:01', 'MSDF'),
(160, 203, 21, '35000', '10000', '0', '0', '2022-06-26 09:03:35', '2022-06-26 09:03:35', 'Ywat Nu Wai'),
(161, 190, 21, '20000', '2100', '0', '0', '2022-06-26 09:26:48', '2022-06-26 09:26:48', 'MSDF'),
(162, 232, 21, '0', '0', '0', '0', '2022-06-28 03:42:00', '2022-06-28 03:42:00', 'U Tun Hla'),
(163, 230, 21, '0', '0', '0', '0', '2022-06-28 03:43:09', '2022-06-28 03:43:09', 'U Tun Hla'),
(164, 215, 21, '2000', '0', '0', '0', '2022-06-28 04:00:32', '2022-06-28 04:00:32', 'PI'),
(165, 231, 21, '0', '0', '0', '0', '2022-06-28 04:15:51', '2022-06-28 04:15:51', 'Future Home'),
(166, 212, 21, '14000', '5000', '0', '0', '2022-06-28 04:22:35', '2022-06-28 04:22:35', 'Pyi Thar'),
(167, 221, 21, '12000', '0', '0', '0', '2022-06-28 04:26:30', '2022-06-28 04:26:30', 'Pyi Thar'),
(168, 218, 21, '14000', '0', '0', '0', '2022-06-28 04:33:26', '2022-06-28 04:33:26', 'Pyi Thar'),
(169, 213, 21, '15000', '8000', '0', '0', '2022-06-28 04:34:42', '2022-06-28 04:34:42', 'Pyi Thar'),
(170, 210, 21, '30000', '16000', '0', '0', '2022-06-28 04:37:52', '2022-06-28 04:37:52', 'Pyi Thar'),
(171, 209, 21, '15000', '5000', '0', '0', '2022-06-28 04:45:05', '2022-06-28 04:45:05', 'Pyi Thar'),
(172, 207, 21, '0', '0', '0', '0', '2022-06-28 04:56:53', '2022-06-28 04:56:53', 'MGC'),
(173, 211, 21, '0', '0', '0', '0', '2022-06-28 04:58:00', '2022-06-28 04:58:00', 'Future Home'),
(174, 227, 21, '0', '0', '0', '0', '2022-06-28 04:58:49', '2022-06-28 04:58:49', 'Future Home'),
(175, 228, 21, '0', '0', '0', '0', '2022-06-28 05:00:01', '2022-06-28 05:00:01', 'U Tun Hla'),
(176, 214, 21, '0', '0', '0', '0', '2022-06-28 05:17:18', '2022-06-28 05:17:18', 'MSDF'),
(177, 226, 17, '0', '0', '0', '0', '2022-06-28 09:40:25', '2022-06-28 09:40:25', 'Future Home'),
(178, 111, 17, '0', '0', '0', '0', '2022-06-29 05:55:08', '2022-06-29 05:55:08', 'Future Home'),
(179, 246, 21, '0', '0', '0', '0', '2022-06-29 09:09:40', '2022-06-29 09:09:40', 'Myint Myat Kyaw'),
(180, 245, 21, '0', '0', '0', '0', '2022-06-29 09:10:16', '2022-06-29 09:10:16', 'Myint Myat Kyaw'),
(181, 245, 21, '0', '0', '0', '0', '2022-06-29 09:10:16', '2022-06-29 09:10:16', 'Myint Myat Kyaw'),
(182, 198, 21, '14000', '5000', '0', '0', '2022-06-29 10:25:39', '2022-06-29 10:25:39', 'Pyi Thar'),
(183, 205, 21, '0', '0', '0', '0', '2022-06-29 16:21:01', '2022-06-29 16:21:01', 'Toe Pwar Aung'),
(184, 263, 21, '0', '0', '0', '0', '2022-06-30 04:42:22', '2022-06-30 04:42:22', 'U Tun Hla'),
(185, 261, 21, '30000', '0', '0', '0', '2022-06-30 04:45:37', '2022-06-30 04:45:37', 'Aung Thein'),
(186, 220, 21, '25000', '0', '0', '0', '2022-06-30 10:14:27', '2022-06-30 10:14:27', 'Myat Saytanar'),
(187, 242, 21, '30000', '0', '0', '0', '2022-07-01 03:16:30', '2022-07-01 03:16:30', 'Furure Home / Pyi Thar'),
(188, 241, 21, '15000', '0', '0', '0', '2022-07-01 03:18:38', '2022-07-01 03:18:38', 'Future Home / Pyi Thar'),
(189, 235, 21, '0', '0', '0', '0', '2022-07-01 03:21:07', '2022-07-01 03:21:07', 'Furure Home'),
(190, 234, 21, '0', '0', '0', '0', '2022-07-01 03:22:35', '2022-07-01 03:22:35', 'Future Home'),
(191, 258, 21, '0', '0', '0', '0', '2022-07-01 04:00:07', '2022-07-01 04:00:07', 'Future Home'),
(192, 265, 21, '0', '0', '0', '0', '2022-07-01 04:00:50', '2022-07-01 04:00:50', 'Mg Mg Lay'),
(193, 252, 21, '0', '0', '0', '5000', '2022-07-01 04:23:17', '2022-07-01 04:23:17', 'Toe Pwar Aung'),
(194, 251, 21, '0', '0', '0', '0', '2022-07-01 04:25:35', '2022-07-01 04:25:35', 'Toe Pwar Aung'),
(195, 255, 21, '15000', '0', '0', '0', '2022-07-01 04:50:32', '2022-07-01 04:50:32', 'Pyi Thar'),
(196, 255, 21, '15000', '0', '0', '0', '2022-07-01 05:15:17', '2022-07-01 05:15:17', 'Pyi Thar'),
(197, 233, 21, '0', '0', '0', '0', '2022-07-01 05:20:25', '2022-07-01 05:20:25', 'Kyaw Kyaw Lin'),
(198, 240, 21, '20000', '0', '0', '0', '2022-07-01 06:07:23', '2022-07-01 06:07:23', 'Phyo Thu Kha'),
(199, 262, 21, '40000', '14000', '0', '0', '2022-07-01 06:10:14', '2022-07-01 06:10:14', 'Ngwe Eain San'),
(200, 247, 21, '0', '0', '0', '0', '2022-07-01 06:21:57', '2022-07-01 06:21:57', 'Kyaw Kyaw Lin'),
(201, 237, 21, '0', '0', '0', '0', '2022-07-01 15:46:57', '2022-07-01 15:46:57', 'Future Home'),
(202, 238, 21, '0', '0', '0', '0', '2022-07-01 15:47:44', '2022-07-01 15:47:44', 'MGC'),
(203, 236, 21, '20000', '3500', '0.8', '0', '2022-07-01 15:49:23', '2022-07-01 15:49:23', 'Future Home'),
(204, 204, 21, '12000', '0', '0', '0', '2022-07-01 16:00:21', '2022-07-01 16:00:21', 'Pyi Thar'),
(205, 264, 17, '0', '0', '0', '0', '2022-07-02 04:48:19', '2022-07-02 04:48:19', 'U Htun Hla'),
(206, 268, 17, '15000', '5000', '0', '0', '2022-07-02 05:02:40', '2022-07-02 05:02:40', 'Pyi Thar'),
(207, 254, 17, '12000', '0', '0', '0', '2022-07-02 05:04:15', '2022-07-02 05:04:15', 'Pyi thar'),
(208, 253, 17, '12000', '0', '0', '0', '2022-07-02 05:07:25', '2022-07-02 05:07:25', 'Pyi Thar'),
(209, 229, 17, '0', '0', '0', '0', '2022-07-02 05:14:00', '2022-07-02 05:14:00', 'U Tun Hla'),
(210, 225, 17, '12000', '0', '0', '0', '2022-07-02 05:30:54', '2022-07-02 05:30:54', 'Pyi Thar'),
(211, 256, 21, '0', '0', '0', '0', '2022-07-02 06:42:51', '2022-07-02 06:42:51', 'Htarwara Miba Myitter'),
(212, 309, 21, '0', '0', '0', '0', '2022-07-05 08:55:44', '2022-07-05 08:55:44', 'Toe Pwar Aung'),
(213, 303, 21, '0', '0', '0', '0', '2022-07-05 08:59:47', '2022-07-05 08:59:47', 'Toe Pwar Aung'),
(214, 302, 21, '12000', '0', '0', '0', '2022-07-05 09:10:19', '2022-07-05 09:10:19', 'Pyi Thar'),
(215, 308, 21, '0', '0', '0', '0', '2022-07-05 09:12:15', '2022-07-05 09:12:15', 'Future Home'),
(216, 300, 21, '0', '0', '0', '0', '2022-07-05 09:16:58', '2022-07-05 09:16:58', 'U Tun Hla'),
(217, 299, 21, '26000', '0', '0', '0', '2022-07-05 09:24:52', '2022-07-05 09:24:52', 'Pyi Thar'),
(218, 298, 21, '12000', '0', '0', '0', '2022-07-05 09:26:43', '2022-07-05 09:26:43', 'Pyi Thar'),
(219, 297, 21, '0', '0', '0', '0', '2022-07-05 09:29:15', '2022-07-05 09:29:15', 'MSDF'),
(220, 295, 21, '0', '0', '0', '0', '2022-07-05 09:30:05', '2022-07-05 09:30:05', 'MSDF'),
(221, 296, 21, '0', '0', '0', '0', '2022-07-05 09:31:47', '2022-07-05 09:31:47', 'MSDF'),
(222, 294, 21, '25000', '7350', '0', '18027', '2022-07-05 09:34:10', '2022-07-05 09:34:10', 'MSDF'),
(223, 304, 21, '0', '0', '0', '0', '2022-07-05 09:35:17', '2022-07-05 09:35:17', 'Aung Thein'),
(224, 285, 21, '80000', '34000', '0', '0', '2022-07-05 09:38:41', '2022-07-05 09:38:41', 'Ngwe Eain San'),
(225, 282, 21, '25000', '1750', '0', '0', '2022-07-05 09:40:15', '2022-07-05 09:40:15', 'MSDF'),
(226, 278, 21, '14000', '0', '0', '0', '2022-07-05 09:42:03', '2022-07-05 09:42:03', 'Pyi Thar'),
(227, 269, 21, '2000', '0', '0', '0', '2022-07-05 09:44:44', '2022-07-05 09:44:44', 'PI'),
(228, 260, 21, '0', '0', '0.7', '0', '2022-07-05 09:51:42', '2022-07-05 09:51:42', 'MSDF'),
(229, 266, 21, '0', '0', '0', '0', '2022-07-05 10:01:29', '2022-07-05 10:01:29', 'Hu Sein'),
(230, 270, 21, '0', '0', '0', '0', '2022-07-05 10:03:59', '2022-07-05 10:03:59', 'Future Home'),
(231, 279, 21, '40000', '0', '0', '0', '2022-07-05 10:06:20', '2022-07-05 10:06:20', 'Future Home / Ngwe Eain San'),
(232, 319, 17, '14000', '0', '0', '0', '2022-07-07 10:12:23', '2022-07-07 10:12:23', 'Pyi Thar'),
(233, 313, 18, '0', '10000', '0', '0', '2022-07-13 08:42:07', '2022-07-13 08:42:07', 'MGC & Future Home'),
(234, 375, 17, '0', '0', '0', '0', '2022-07-14 16:29:58', '2022-07-14 16:29:58', ''),
(235, 408, 18, '0', '0', '0', '0', '2022-07-15 03:23:46', '2022-07-15 03:23:46', 'Future Home'),
(236, 318, 18, '20000', '7000', '0', '10000', '2022-07-15 03:49:24', '2022-07-15 03:49:24', 'Ngwe Eain San'),
(237, 359, 21, '20000', '0', '0', '0', '2022-07-18 00:52:43', '2022-07-18 00:52:43', 'Pyi Thar'),
(238, 443, 21, '20000', '0', '0', '0', '2022-07-18 00:55:23', '2022-07-18 00:55:23', 'Pyi Thar'),
(239, 349, 21, '0', '0', '0', '0', '2022-07-18 00:56:46', '2022-07-18 00:56:46', 'Future Home'),
(240, 340, 21, '20000', '0', '0', '0', '2022-07-18 01:05:06', '2022-07-18 01:05:06', 'Pyi Thar'),
(241, 419, 21, '0', '0', '0', '0', '2022-07-18 01:06:11', '2022-07-18 01:06:11', 'Five Star'),
(242, 454, 1, '0', '0', '0', '3000', '2022-08-01 17:27:19', '2022-08-01 17:27:19', ''),
(243, 449, 1, '0', '0', '0', '0', '2022-08-01 17:29:39', '2022-08-01 17:29:39', ''),
(244, 448, 1, '10', '10', '5', '10', '2022-08-08 02:40:02', '2022-08-08 02:40:02', 'Mg Mg');

-- --------------------------------------------------------

--
-- Table structure for table `variable_qs_team_checks`
--

CREATE TABLE `variable_qs_team_checks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `variable_request_item_id` int(11) DEFAULT NULL,
  `eng_request_qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qs_passed_qty` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `variable_asset_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(232, 42, 241, '2', '0.4848', 190, 8, '2022-06-24 12:54:41', '2022-06-24 12:54:41', '20mm (16Nos)'),
(233, 10, 267, '1', '1', 205, 26, '2022-06-25 02:47:29', '2022-06-25 02:47:29', NULL),
(234, 42, 265, '2', '2', 203, 116, '2022-06-25 02:52:43', '2022-06-25 02:52:43', 'As per client\'s request.'),
(235, 42, 257, '15', '0.1212', 200, 8, '2022-06-25 03:32:26', '2022-06-25 03:32:26', '20mm (4Nos)'),
(236, 42, 258, '80', '1.3208', 200, 7, '2022-06-25 03:32:26', '2022-06-25 03:32:26', '16mm (70Nos)'),
(237, 42, 259, '80', '0', 200, 5, '2022-06-25 03:32:26', '2022-06-25 03:32:26', 'Must request 10mm (local)'),
(238, 42, 268, '0.56', '0.5556', 206, 10, '2022-06-25 03:39:21', '2022-06-25 03:39:21', '10mm Local (75Nos)'),
(239, 10, 277, '1500', '1500', 215, 106, '2022-06-27 03:11:32', '2022-06-27 03:11:32', 'Total =160+1500+1200+1500 (Now)= 4360 nos QS passed'),
(240, 10, 275, '2', '2', 213, 27, '2022-06-27 03:13:45', '2022-06-27 03:13:45', NULL),
(241, 10, 274, '1.5', '1.5', 212, 26, '2022-06-27 03:15:01', '2022-06-27 03:15:01', NULL),
(242, 11, 272, '3.5', '3', 210, 27, '2022-06-27 03:23:54', '2022-06-27 03:23:54', NULL),
(243, 11, 271, '3', '2', 209, 26, '2022-06-27 03:25:04', '2022-06-27 03:25:04', NULL),
(244, 10, 273, '40', '30', 211, 1, '2022-06-27 03:30:38', '2022-06-27 03:30:38', NULL),
(245, 11, 270, '90', '50', 208, 1, '2022-06-27 03:33:54', '2022-06-27 03:33:54', NULL),
(246, 11, 269, '4000', '4000', 207, 25, '2022-06-27 03:34:35', '2022-06-27 03:34:35', NULL),
(247, 11, 266, '1', '1', 204, 27, '2022-06-27 03:35:09', '2022-06-27 03:35:09', NULL),
(248, 11, 264, '13', '13', 202, 23, '2022-06-27 03:39:16', '2022-06-27 03:39:16', 'Site to Site Transfer'),
(249, 11, 276, '30', '30', 214, 10, '2022-06-27 03:42:11', '2022-06-27 03:42:11', '16 Nos ( From Ma HWYP Site ), 14Nos ( Purchase ) 14Nos ( P'),
(250, 42, 280, '1.5', '1.5', 218, 26, '2022-06-28 02:13:54', '2022-06-28 02:13:54', NULL),
(251, 42, 289, '1', '1', 221, 26, '2022-06-28 02:34:10', '2022-06-28 02:34:10', 'As per PE\'s Instruction'),
(252, 42, 300, '6', '6', 230, 104, '2022-06-28 02:35:54', '2022-06-28 02:35:54', NULL),
(253, 42, 302, '3', '3', 232, 104, '2022-06-28 02:36:11', '2022-06-28 02:36:11', NULL),
(254, 42, 301, '100', '100', 231, 4, '2022-06-28 02:41:47', '2022-06-28 02:41:47', NULL),
(255, 42, 303, '28', '28', 233, 21, '2022-06-28 04:35:50', '2022-06-28 04:35:50', 'As per PE\'s Instruction.'),
(256, 10, 297, '50', '50', 227, 4, '2022-06-28 04:39:12', '2022-06-28 04:39:12', NULL),
(257, 10, 298, '6', '6', 228, 104, '2022-06-28 04:42:06', '2022-06-28 04:42:06', NULL),
(258, 11, 299, '9', '7', 229, 26, '2022-06-28 04:57:37', '2022-06-28 04:57:37', NULL),
(259, 11, 282, '220', '160', 220, 157, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(260, 11, 283, '100', '80', 220, 158, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(261, 11, 284, '300', '200', 220, 160, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(262, 11, 285, '7', '7', 220, 161, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(263, 11, 286, '45', '40', 220, 159, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(264, 11, 287, '200', '200', 220, 162, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(265, 11, 288, '1', '1', 220, 163, '2022-06-28 08:27:52', '2022-06-28 08:27:52', NULL),
(266, 11, 260, '112', '112', 201, 19, '2022-06-28 08:29:56', '2022-06-28 08:29:56', NULL),
(267, 11, 261, '1', '1', 201, 127, '2022-06-28 08:29:56', '2022-06-28 08:29:56', NULL),
(268, 11, 262, '5', '5', 201, 123, '2022-06-28 08:29:56', '2022-06-28 08:29:56', NULL),
(269, 11, 263, '2', '2', 201, 121, '2022-06-28 08:29:56', '2022-06-28 08:29:56', NULL),
(270, 11, 296, '85', '60', 226, 4, '2022-06-28 08:50:17', '2022-06-28 08:50:17', NULL),
(271, 10, 316, '3.7', '3.7', 243, 5, '2022-06-29 02:46:46', '2022-06-29 02:46:46', 'Additional Work'),
(272, 10, 310, '7', '7', 240, 83, '2022-06-29 02:51:41', '2022-06-29 02:51:41', NULL),
(273, 10, 317, '0.14', '0.14', 244, 5, '2022-06-29 02:57:39', '2022-06-29 02:57:39', NULL),
(274, 10, 306, '60', '0.4444', 236, 5, '2022-06-29 03:00:07', '2022-06-29 03:00:07', 'Plz order 10mm Local Type - Ko Soe Moe'),
(275, 10, 308, '10000', '10000', 238, 25, '2022-06-29 03:02:55', '2022-06-29 03:02:55', 'Total -20000 nos QS approve for Brick Work'),
(276, 10, 307, '1', '0.05', 237, 15, '2022-06-29 03:09:27', '2022-06-29 03:09:27', '1 coil QS approve'),
(277, 11, 309, '1', '1', 239, 94, '2022-06-29 03:11:04', '2022-06-29 03:11:04', 'Transfer From U Wint Naing Site'),
(278, 10, 304, '50', '35', 234, 4, '2022-06-29 03:11:16', '2022-06-29 03:11:16', NULL),
(279, 11, 295, '1.5', '1.5', 225, 26, '2022-06-29 03:15:14', '2022-06-29 03:15:14', NULL),
(280, 11, 292, '20', '20', 224, 17, '2022-06-29 03:15:57', '2022-06-29 03:15:57', NULL),
(281, 11, 293, '50', '50', 224, 17, '2022-06-29 03:15:57', '2022-06-29 03:15:57', NULL),
(282, 11, 294, '45', '35', 224, 22, '2022-06-29 03:15:57', '2022-06-29 03:15:57', NULL),
(283, 11, 305, '50', '30', 235, 4, '2022-06-29 03:16:26', '2022-06-29 03:16:26', NULL),
(284, 42, 313, '55', '28', 242, 1, '2022-06-29 03:37:30', '2022-06-29 03:37:30', NULL),
(285, 42, 314, '1.5', '1.5', 242, 26, '2022-06-29 03:37:30', '2022-06-29 03:37:30', NULL),
(286, 42, 315, '2', '1.5', 242, 131, '2022-06-29 03:37:30', '2022-06-29 03:37:30', NULL),
(287, 42, 311, '28', '28', 241, 1, '2022-06-29 03:38:22', '2022-06-29 03:38:22', NULL),
(288, 42, 312, '1.2', '1', 241, 26, '2022-06-29 03:38:22', '2022-06-29 03:38:22', NULL),
(289, 10, 318, '5000', '1000', 245, 25, '2022-06-29 07:38:49', '2022-06-29 07:38:49', NULL),
(290, 10, 319, '5000', '5000', 246, 25, '2022-06-29 07:39:38', '2022-06-29 07:39:38', NULL),
(291, 42, 336, '1.5', '1.5', 262, 107, '2022-06-30 02:20:36', '2022-06-30 02:20:36', NULL),
(292, 42, 337, '1.5', '1.5', 262, 27, '2022-06-30 02:20:36', '2022-06-30 02:20:36', NULL),
(293, 42, 334, '25', '25', 261, 98, '2022-06-30 02:22:59', '2022-06-30 02:22:59', NULL),
(294, 42, 335, '15', '15', 261, 95, '2022-06-30 02:22:59', '2022-06-30 02:22:59', NULL),
(295, 42, 320, '17', '14', 247, 22, '2022-06-30 03:34:59', '2022-06-30 03:34:59', NULL),
(296, 42, 321, '0.75', '0.75', 248, 19, '2022-06-30 03:36:04', '2022-06-30 03:36:04', NULL),
(297, 42, 322, '8', '8', 249, 22, '2022-06-30 03:36:37', '2022-06-30 03:36:37', NULL),
(298, 42, 323, '40', '31', 250, 22, '2022-06-30 03:37:27', '2022-06-30 03:37:27', NULL),
(299, 42, 331, '50', '50', 258, 1, '2022-06-30 03:46:24', '2022-06-30 03:46:24', NULL),
(300, 42, 330, '1000', '1000', 257, 25, '2022-06-30 04:01:26', '2022-06-30 04:01:26', NULL),
(301, 42, 329, '0.74', '0.74', 256, 17, '2022-06-30 04:07:27', '2022-06-30 04:07:27', NULL),
(302, 42, 328, '1.5', '1.5', 255, 26, '2022-06-30 04:23:02', '2022-06-30 04:23:02', NULL),
(303, 10, 338, '6', '6', 263, 104, '2022-06-30 04:32:19', '2022-06-30 04:32:19', NULL),
(304, 42, 325, '1', '1.5', 252, 27, '2022-06-30 04:35:07', '2022-06-30 04:35:07', NULL),
(305, 42, 324, '1', '1.5', 251, 26, '2022-06-30 04:35:25', '2022-06-30 04:35:25', NULL),
(306, 42, 332, '2.5', '2.5', 259, 7, '2022-06-30 05:49:04', '2022-06-30 05:49:04', '16 mm (133Nos)'),
(307, 42, 333, '0.5', '0.5', 260, 10, '2022-06-30 05:50:47', '2022-06-30 05:50:47', '10mm Local (68Nos)'),
(308, 42, 340, '1', '1', 265, 15, '2022-07-01 03:19:04', '2022-07-01 03:19:04', NULL),
(309, 10, 341, '60', '60', 266, 165, '2022-07-01 08:56:07', '2022-07-01 08:56:07', NULL),
(310, 10, 342, '5', '5', 266, 127, '2022-07-01 08:56:07', '2022-07-01 08:56:07', NULL),
(311, 10, 345, '1.5', '1.5', 268, 26, '2022-07-01 08:57:00', '2022-07-01 08:57:00', NULL),
(312, 10, 346, '100', '100', 269, 106, '2022-07-01 09:01:51', '2022-07-01 09:01:51', 'Total=4360+100(Now)=4460 nos QS Approved'),
(313, 11, 339, '2', '2', 264, 26, '2022-07-02 03:18:09', '2022-07-02 03:18:09', NULL),
(314, 11, 327, '1.5', '1.5', 254, 26, '2022-07-02 03:19:33', '2022-07-02 03:19:33', NULL),
(315, 11, 326, '1.5', '1.5', 253, 27, '2022-07-02 03:20:09', '2022-07-02 03:20:09', NULL),
(316, 10, 343, '510', '510', 267, 166, '2022-07-02 03:47:36', '2022-07-02 03:47:36', 'Remain Internal Bracing'),
(317, 10, 344, '1660', '1660', 267, 167, '2022-07-02 03:47:36', '2022-07-02 03:47:36', NULL),
(318, 42, 350, '45', '45', 273, 22, '2022-07-02 07:07:35', '2022-07-02 07:07:35', NULL),
(319, 42, 349, '1.4', '1.4', 272, 17, '2022-07-02 07:10:51', '2022-07-02 07:10:51', NULL),
(320, 42, 352, '8', '8', 275, 22, '2022-07-02 07:13:03', '2022-07-02 07:13:03', NULL),
(321, 11, 356, '50', '30', 279, 1, '2022-07-02 09:28:17', '2022-07-02 09:28:17', 'For Lintel & Stiffner work အတွက် ချပေးခြင်းဖြစ်ပါသည်။'),
(322, 11, 357, '10', '3', 279, 26, '2022-07-02 09:28:17', '2022-07-02 09:28:17', NULL),
(323, 42, 355, '1.5', '1.5', 278, 26, '2022-07-03 03:37:43', '2022-07-03 03:37:43', NULL),
(324, 42, 364, '3', '3', 285, 26, '2022-07-03 04:30:12', '2022-07-03 04:30:12', NULL),
(325, 42, 365, '3', '3', 285, 27, '2022-07-03 04:30:12', '2022-07-03 04:30:12', NULL),
(326, 10, 351, '1', '1', 274, 26, '2022-07-03 12:40:43', '2022-07-03 12:40:43', NULL),
(327, 42, 359, '1', '1', 281, 8, '2022-07-04 08:37:10', '2022-07-04 08:37:10', NULL),
(328, 42, 361, '1', '1', 283, 7, '2022-07-04 08:40:31', '2022-07-04 08:40:31', NULL),
(329, 42, 360, '0.5', '0.5', 282, 6, '2022-07-04 08:41:58', '2022-07-04 08:41:58', NULL),
(330, 42, 374, '1', '1', 294, 5, '2022-07-04 08:52:47', '2022-07-04 08:52:47', NULL),
(331, 42, 375, '0.17', '0.17', 295, 6, '2022-07-04 08:56:31', '2022-07-04 08:56:31', NULL),
(332, 42, 376, '0.81', '0.8113', 296, 7, '2022-07-04 08:59:44', '2022-07-04 08:59:44', NULL),
(333, 42, 377, '0.14', '0.1407', 297, 10, '2022-07-04 09:01:37', '2022-07-04 09:01:37', NULL),
(334, 42, 380, '3', '3', 300, 104, '2022-07-04 09:04:48', '2022-07-04 09:04:48', NULL),
(335, 42, 386, '1', '1', 306, 10, '2022-07-04 09:05:49', '2022-07-04 09:05:49', NULL),
(336, 42, 384, '30', '20', 304, 98, '2022-07-04 09:12:29', '2022-07-04 09:12:29', NULL),
(337, 11, 378, '1.5', '1.5', 298, 26, '2022-07-04 10:22:29', '2022-07-04 10:22:29', NULL),
(338, 11, 382, '1.5', '1.5', 302, 26, '2022-07-04 10:23:01', '2022-07-04 10:23:01', NULL),
(339, 42, 389, '50', '50', 308, 4, '2022-07-05 02:21:53', '2022-07-05 02:21:53', NULL),
(340, 10, 383, '1.5', '1.5', 303, 26, '2022-07-05 05:03:44', '2022-07-05 05:03:44', NULL),
(341, 10, 379, '3', '3', 299, 26, '2022-07-05 05:04:29', '2022-07-05 05:04:29', NULL),
(342, 42, 390, '1.25', '1.25', 309, 26, '2022-07-05 05:27:29', '2022-07-05 05:27:29', NULL),
(343, 10, 358, '1.5', '0', 280, 26, '2022-07-05 09:51:47', '2022-07-05 09:51:47', 'No need to purchase for Backfilling'),
(344, 10, 347, '50', '50', 270, 1, '2022-07-05 09:55:30', '2022-07-05 09:55:30', NULL),
(345, 10, 397, '200', '200', 314, 166, '2022-07-06 02:44:52', '2022-07-06 02:44:52', 'Total =200(Now)+510=710 nos For Scaffolding'),
(346, 42, 395, '100', '100', 313, 1, '2022-07-06 02:53:39', '2022-07-06 02:53:39', NULL),
(347, 42, 396, '5000', '5000', 313, 25, '2022-07-06 02:53:39', '2022-07-06 02:53:39', NULL),
(348, 42, 391, '20', '20', 310, 98, '2022-07-06 02:57:38', '2022-07-06 02:57:38', NULL),
(349, 42, 392, '20', '20', 310, 95, '2022-07-06 02:57:38', '2022-07-06 02:57:38', NULL),
(350, 42, 398, '1', '0.75', 315, 19, '2022-07-06 03:54:26', '2022-07-06 03:54:26', NULL),
(351, 42, 399, '1', '0.5', 315, 17, '2022-07-06 03:54:26', '2022-07-06 03:54:26', NULL),
(352, 10, 401, '100', '100', 317, 4, '2022-07-06 04:53:34', '2022-07-06 04:53:34', 'Ground Floor Brick Work Total - 100(Now)+50=150 bags (Till Just Now)'),
(353, 10, 400, '10', '10', 316, 186, '2022-07-06 05:06:56', '2022-07-06 05:06:56', NULL),
(354, 11, 402, '3', '1.5', 318, 27, '2022-07-06 07:14:49', '2022-07-06 07:14:49', NULL),
(355, 42, 407, '3', '3', 323, 186, '2022-07-07 02:23:21', '2022-07-07 02:23:21', NULL),
(356, 42, 406, '1', '1', 322, 186, '2022-07-07 02:23:53', '2022-07-07 02:23:53', NULL),
(357, 42, 408, '120', '100', 324, 90, '2022-07-07 02:35:49', '2022-07-07 02:35:49', NULL),
(358, 42, 409, '3', '3', 325, 94, '2022-07-07 02:53:45', '2022-07-07 02:53:45', NULL),
(359, 42, 403, '3', '1.5', 319, 104, '2022-07-07 03:12:56', '2022-07-07 03:12:56', NULL),
(360, 42, 413, '0.5', '0.5', 329, 27, '2022-07-07 07:14:12', '2022-07-07 07:14:12', NULL),
(361, 42, 412, '0.5', '0.5', 328, 26, '2022-07-07 07:14:33', '2022-07-07 07:14:33', NULL),
(362, 10, 381, '0.35', '0.35', 301, 17, '2022-07-07 08:02:21', '2022-07-07 08:02:21', NULL),
(363, 42, 414, '0.5', '0.5', 330, 26, '2022-07-08 03:00:14', '2022-07-08 03:00:14', NULL),
(364, 10, 410, '1.5', '1.5', 326, 26, '2022-07-08 03:19:33', '2022-07-08 03:19:33', NULL),
(365, 10, 411, '1', '1', 327, 26, '2022-07-08 03:20:48', '2022-07-08 03:20:48', NULL),
(366, 11, 420, '3', '3', 336, 26, '2022-07-08 06:41:34', '2022-07-08 06:41:34', 'For Backfilling Work'),
(367, 42, 427, '1.5', '1.5', 343, 26, '2022-07-09 05:19:45', '2022-07-09 05:19:45', NULL),
(368, 42, 426, '1.4', '1.4', 342, 131, '2022-07-09 05:20:13', '2022-07-09 05:20:13', NULL),
(369, 42, 425, '1', '1', 341, 187, '2022-07-09 06:15:00', '2022-07-09 06:15:00', NULL),
(370, 42, 423, '40', '0.1275', 339, 20, '2022-07-09 06:19:05', '2022-07-09 06:19:05', NULL),
(371, 42, 422, '15', '0.1375', 338, 17, '2022-07-09 06:20:14', '2022-07-09 06:20:14', NULL),
(372, 42, 385, '1', '1', 305, 101, '2022-07-09 07:30:25', '2022-07-09 07:30:25', NULL),
(373, 42, 424, '1.25', '1.25', 340, 26, '2022-07-09 07:34:38', '2022-07-09 07:34:38', NULL),
(374, 10, 434, '3', '3', 350, 26, '2022-07-11 03:17:39', '2022-07-11 03:17:39', NULL),
(375, 42, 459, '190', '190', 375, 25, '2022-07-11 03:29:00', '2022-07-11 03:29:00', 'Please Arrange Site to Site.'),
(376, 11, 431, '93', '0.667', 347, 10, '2022-07-11 03:35:48', '2022-07-11 03:35:48', NULL),
(377, 11, 429, '82', '1.528', 345, 7, '2022-07-11 03:37:22', '2022-07-11 03:37:22', NULL),
(378, 10, 435, '10000', '10000', 351, 25, '2022-07-11 03:38:26', '2022-07-11 03:38:26', NULL),
(379, 11, 428, '309', '2.288', 344, 5, '2022-07-11 03:38:53', '2022-07-11 03:38:53', NULL),
(380, 11, 449, '1.5', '1.5', 365, 26, '2022-07-11 03:43:15', '2022-07-11 03:43:15', NULL),
(381, 11, 445, '20', '3', 361, 141, '2022-07-11 03:46:30', '2022-07-11 03:46:30', NULL),
(382, 10, 433, '100', '50', 349, 4, '2022-07-11 03:47:23', '2022-07-11 03:47:23', 'Only for Plastering'),
(383, 11, 444, '10', '10', 360, 137, '2022-07-11 03:51:54', '2022-07-11 03:51:54', NULL),
(384, 11, 438, '3', '1.5', 354, 26, '2022-07-11 03:53:34', '2022-07-11 03:53:34', NULL),
(385, 11, 437, '35', '20', 353, 1, '2022-07-11 03:58:23', '2022-07-11 03:58:23', NULL),
(386, 42, 475, '1', '1', 391, 107, '2022-07-11 04:07:29', '2022-07-11 04:07:29', NULL),
(387, 42, 476, '34', '34', 392, 1, '2022-07-11 04:14:10', '2022-07-11 04:14:10', NULL),
(388, 10, 443, '1', '1', 359, 26, '2022-07-11 04:17:36', '2022-07-11 04:17:36', NULL),
(389, 42, 477, '1.5', '1.5', 393, 26, '2022-07-11 04:23:27', '2022-07-11 04:23:27', NULL),
(390, 10, 436, '60', '0.444', 352, 10, '2022-07-11 04:29:30', '2022-07-11 04:29:30', 'Stiffener Total =0.444+0.144+0444 (Now)=1.03 Ton Passed (up to 11-07-22 )'),
(391, 10, 421, '5000', '5000', 337, 25, '2022-07-11 04:45:06', '2022-07-11 04:45:06', 'Remaining On Site Balance-1000 nos that is indented to be used for Fencing Brick Work so Fencing QS approved is 6000 nos (up to 11-07-22)'),
(392, 42, 448, '50', '50', 364, 4, '2022-07-11 04:47:09', '2022-07-11 04:47:09', NULL),
(393, 42, 446, '1.5', '1.5', 362, 26, '2022-07-11 04:50:59', '2022-07-11 04:50:59', NULL),
(394, 11, 478, '7', '7', 394, 159, '2022-07-11 05:18:29', '2022-07-11 05:18:29', NULL),
(395, 10, 461, '124', '120', 377, 157, '2022-07-11 05:32:05', '2022-07-11 05:32:05', 'for 2\' Spacing'),
(396, 10, 462, '24', '24', 378, 158, '2022-07-11 05:35:02', '2022-07-11 05:35:02', NULL),
(397, 10, 480, '2', '2', 396, 161, '2022-07-11 05:36:29', '2022-07-11 05:36:29', NULL),
(398, 10, 481, '1', '1', 397, 162, '2022-07-11 05:37:17', '2022-07-11 05:37:17', NULL),
(399, 10, 482, '1', '1', 398, 163, '2022-07-11 05:37:40', '2022-07-11 05:37:40', NULL),
(400, 11, 460, '1', '0', 376, 83, '2022-07-11 07:54:58', '2022-07-11 07:54:58', 'Reject'),
(401, 11, 479, '7', '7', 395, 103, '2022-07-11 10:30:05', '2022-07-11 10:30:05', 'MD = 1Nos, D1V = 2Nos, D1 = 4Nos'),
(402, 42, 485, '3', '3', 401, 26, '2022-07-13 02:35:31', '2022-07-13 02:35:31', NULL),
(403, 42, 484, '3', '3', 400, 27, '2022-07-13 02:39:53', '2022-07-13 02:39:53', NULL),
(404, 11, 447, '50', '50', 363, 4, '2022-07-13 03:02:35', '2022-07-13 03:02:35', 'For Drain Work'),
(405, 11, 487, '9', '9', 403, 94, '2022-07-13 05:00:49', '2022-07-13 05:00:49', NULL),
(406, 11, 494, '6', '4', 410, 27, '2022-07-13 05:13:53', '2022-07-13 05:13:53', NULL),
(407, 11, 493, '3', '2', 409, 26, '2022-07-13 05:14:15', '2022-07-13 05:14:15', NULL),
(408, 11, 492, '60', '50', 408, 1, '2022-07-13 05:14:40', '2022-07-13 05:14:40', NULL),
(409, 11, 486, '160', '100', 402, 93, '2022-07-13 05:30:32', '2022-07-13 05:30:32', NULL),
(410, 11, 495, '0.75', '0.75', 411, 17, '2022-07-13 05:37:56', '2022-07-13 05:37:56', 'Height = 14\''),
(411, 11, 490, '0.75', '0.5', 406, 19, '2022-07-13 05:39:33', '2022-07-13 05:39:33', 'Height = 10\''),
(412, 42, 505, '1', '1', 420, 10, '2022-07-13 09:35:05', '2022-07-13 09:35:05', NULL),
(413, 42, 440, '0.25', '0.25', 356, 6, '2022-07-13 09:36:58', '2022-07-13 09:36:58', NULL),
(414, 42, 441, '1', '1', 357, 7, '2022-07-13 09:37:19', '2022-07-13 09:37:19', NULL),
(415, 42, 442, '1', '0.3030', 358, 8, '2022-07-13 09:38:52', '2022-07-13 09:38:52', '20mm (10Nos)'),
(416, 42, 506, '1.5', '1.5', 421, 26, '2022-07-14 02:32:29', '2022-07-14 02:32:29', NULL),
(417, 10, 498, '1', '1', 414, 15, '2022-07-14 02:56:56', '2022-07-14 02:56:56', 'Total - 2 coils for Brick Work (That is all BQ amount for Brick Work)'),
(418, 10, 497, '2', '2', 413, 194, '2022-07-14 03:00:27', '2022-07-14 03:00:27', NULL),
(419, 10, 483, '10000', '10000', 399, 25, '2022-07-14 03:16:22', '2022-07-14 03:16:22', 'Previous Total Qty Brick-35,000+10,000(Now)=45,000 nos'),
(420, 11, 496, '19', '19', 412, 22, '2022-07-14 03:30:53', '2022-07-14 03:30:53', NULL),
(421, 11, 489, '2', '2', 405, 154, '2022-07-14 03:31:32', '2022-07-14 03:31:32', NULL),
(422, 10, 465, '36', '26', 381, 34, '2022-07-14 04:13:17', '2022-07-14 04:13:17', NULL),
(423, 10, 467, '7', '7', 383, 144, '2022-07-14 04:14:47', '2022-07-14 04:14:47', NULL),
(424, 10, 471, '2', '2', 387, 139, '2022-07-14 04:16:55', '2022-07-14 04:16:55', NULL),
(425, 10, 470, '5', '5', 386, 152, '2022-07-14 04:19:31', '2022-07-14 04:19:31', NULL),
(426, 10, 469, '5', '5', 385, 151, '2022-07-14 04:19:56', '2022-07-14 04:19:56', NULL),
(427, 10, 468, '5', '5', 384, 147, '2022-07-14 04:20:20', '2022-07-14 04:20:20', NULL),
(428, 10, 500, '1', '1', 416, 141, '2022-07-14 04:20:55', '2022-07-14 04:20:55', NULL),
(429, 11, 519, '22', '4', 426, 110, '2022-07-14 05:06:19', '2022-07-14 05:06:19', NULL),
(430, 11, 518, '268', '200', 425, 108, '2022-07-14 05:10:55', '2022-07-14 05:10:55', NULL),
(431, 11, 517, '574', '520', 424, 109, '2022-07-14 05:12:30', '2022-07-14 05:12:30', NULL),
(432, 42, 504, '5000', '5000', 419, 25, '2022-07-14 06:49:45', '2022-07-14 06:49:45', NULL),
(433, 42, 538, '8', '8', 433, 110, '2022-07-14 10:52:32', '2022-07-14 10:52:32', NULL),
(434, 42, 536, '269', '197', 432, 108, '2022-07-14 11:03:25', '2022-07-14 11:03:25', 'extra 50 shts ချန်ထားပေးရန် supplier ကို request လုပ်ထားပေးပါ။'),
(435, 42, 537, '613', '414', 432, 199, '2022-07-14 11:03:25', '2022-07-14 11:03:25', 'extra 100 shts ချန်ထားပေးရန် supplier ကို request လုပ်ထားပေးပါ။'),
(436, 42, 534, '595', '428', 431, 199, '2022-07-14 11:05:16', '2022-07-14 11:05:16', 'extra 100 shts ချန်ထားပေးရန် supplier ကို request လုပ်ထားပေးပါ။'),
(437, 42, 535, '132', '129', 431, 108, '2022-07-14 11:05:16', '2022-07-14 11:05:16', 'extra 32 shts ချန်ထားပေးရန် supplier ကို request လုပ်ထားပေးပါ။'),
(438, 42, 520, '1.5', '1.5', 427, 26, '2022-07-15 02:39:39', '2022-07-15 02:39:39', NULL),
(439, 42, 521, '1.5', '1.5', 427, 27, '2022-07-15 02:39:39', '2022-07-15 02:39:39', NULL),
(440, 42, 544, '0.81', '0.8113', 437, 7, '2022-07-15 02:53:04', '2022-07-15 02:53:04', NULL),
(441, 42, 543, '0.19', '0.1926', 436, 10, '2022-07-15 03:00:39', '2022-07-15 03:00:39', NULL),
(442, 42, 548, '5000', '5000', 439, 25, '2022-07-15 03:03:52', '2022-07-15 03:03:52', NULL),
(443, 11, 541, '24', '20', 435, 4, '2022-07-15 04:06:19', '2022-07-15 04:06:19', NULL),
(444, 11, 542, '48', '25', 435, 200, '2022-07-15 04:06:19', '2022-07-15 04:06:19', NULL),
(445, 10, 545, '1', '1', 438, 197, '2022-07-15 07:03:37', '2022-07-15 07:03:37', NULL),
(446, 10, 546, '2', '2', 438, 198, '2022-07-15 07:03:37', '2022-07-15 07:03:37', NULL),
(447, 10, 547, '2', '2', 438, 195, '2022-07-15 07:03:37', '2022-07-15 07:03:37', NULL),
(448, 42, 566, '1.3', '1.3', 447, 27, '2022-07-15 08:34:19', '2022-07-15 08:34:19', NULL),
(449, 11, 522, '160', '120', 428, 157, '2022-07-15 11:06:49', '2022-07-15 11:06:49', NULL),
(450, 11, 523, '48', '30', 428, 158, '2022-07-15 11:06:49', '2022-07-15 11:06:49', NULL),
(451, 11, 524, '4', '3', 428, 161, '2022-07-15 11:06:49', '2022-07-15 11:06:49', NULL),
(452, 11, 525, '39', '30', 428, 164, '2022-07-15 11:06:49', '2022-07-15 11:06:49', 'For 9mm Gypsum Board ( Normal )'),
(453, 11, 526, '1', '1', 428, 162, '2022-07-15 11:06:49', '2022-07-15 11:06:49', NULL),
(454, 11, 527, '1', '1', 428, 179, '2022-07-15 11:06:49', '2022-07-15 11:06:49', NULL),
(455, 42, 551, '100', '100', 442, 1, '2022-07-16 02:36:33', '2022-07-16 02:36:33', NULL),
(456, 42, 552, '1.5', '1.5', 442, 26, '2022-07-16 02:36:33', '2022-07-16 02:36:33', NULL),
(457, 42, 553, '1.5', '1.5', 442, 27, '2022-07-16 02:36:33', '2022-07-16 02:36:33', NULL),
(458, 10, 549, '3', '3', 440, 26, '2022-07-16 02:40:07', '2022-07-16 02:40:07', NULL),
(459, 10, 554, '1', '1', 443, 26, '2022-07-16 02:41:05', '2022-07-16 02:41:05', NULL),
(460, 10, 550, '60', '50', 441, 165, '2022-07-16 02:42:45', '2022-07-16 02:42:45', NULL),
(461, 10, 568, '100', '100', 449, 167, '2022-07-16 02:44:32', '2022-07-16 02:44:32', NULL),
(462, 42, 555, '5', '5', 444, 248, '2022-07-16 02:45:15', '2022-07-16 02:45:15', NULL),
(463, 42, 556, '10', '10', 444, 128, '2022-07-16 02:45:15', '2022-07-16 02:45:15', NULL),
(464, 42, 557, '1', '0', 444, 170, '2022-07-16 02:45:15', '2022-07-16 02:45:15', NULL),
(465, 42, 558, '5', '5', 444, 186, '2022-07-16 02:45:15', '2022-07-16 02:45:15', NULL),
(466, 42, 567, '1000', '1000', 448, 25, '2022-07-16 02:55:43', '2022-07-16 02:55:43', NULL),
(467, 11, 563, '30', '30', 446, 1, '2022-07-16 07:06:46', '2022-07-16 07:06:46', NULL),
(468, 11, 564, '3', '1.5', 446, 26, '2022-07-16 07:06:46', '2022-07-16 07:06:46', NULL),
(469, 11, 565, '3000', '3000', 446, 25, '2022-07-16 07:06:46', '2022-07-16 07:06:46', NULL),
(470, 11, 559, '1.5', '0', 445, 26, '2022-07-16 07:07:36', '2022-07-16 07:07:36', NULL),
(471, 11, 560, '1.5', '0', 445, 26, '2022-07-16 07:07:36', '2022-07-16 07:07:36', NULL),
(472, 11, 561, '1.5', '1.5', 445, 27, '2022-07-16 07:07:36', '2022-07-16 07:07:36', NULL),
(473, 11, 562, '1.5', '0', 445, 27, '2022-07-16 07:07:36', '2022-07-16 07:07:36', NULL),
(474, 11, 576, '1.5', '1.5', 454, 26, '2022-07-16 07:11:16', '2022-07-16 07:11:16', NULL),
(475, 11, 577, '1.5', '1.5', 454, 27, '2022-07-16 07:11:16', '2022-07-16 07:11:16', NULL),
(476, 11, 528, '20', '20', 429, 1, '2022-07-16 08:00:19', '2022-07-16 08:00:19', NULL),
(477, 11, 529, '115', '110', 429, 108, '2022-07-16 08:00:19', '2022-07-16 08:00:19', 'For Bath & WC Floor Tile'),
(478, 11, 530, '32', '5', 429, 110, '2022-07-16 08:00:19', '2022-07-16 08:00:19', 'For Kitchen Counter Top'),
(479, 11, 531, '185', '320', 429, 112, '2022-07-16 08:00:19', '2022-07-16 08:00:19', 'For Bath & WC Wall Tile ( 1\'-0\" x 1\'-0\" )'),
(480, 11, 532, '285', '180', 430, 199, '2022-07-16 08:02:40', '2022-07-16 08:02:40', 'For Kitchen Wall Tile ( 1\' x 1\' )'),
(481, 11, 533, '10', '10', 430, 200, '2022-07-16 08:02:40', '2022-07-16 08:02:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_received_by_engineers`
--

CREATE TABLE `variable_received_by_engineers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `received_by_engineer_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(159, 28, 'received', '2022-06-24 01:00 PM', 185, '2022-06-24 16:27:23', '2022-06-24 16:27:23', NULL),
(160, 26, 'received', '2022-06-24 12:34 PM', 176, '2022-06-25 05:35:16', '2022-06-25 05:35:16', NULL),
(161, 26, 'received', '2022-06-24 12:35 PM', 191, '2022-06-25 05:35:54', '2022-06-25 05:35:54', NULL),
(162, 22, 'received', '2022-06-25 02:19 PM', 204, '2022-06-25 07:20:00', '2022-06-25 07:20:00', NULL),
(163, 22, 'received', '2022-06-25 02:21 PM', 188, '2022-06-25 07:21:41', '2022-06-25 07:21:41', NULL),
(164, 36, 'received', '2022-06-25 03:21 PM', 159, '2022-06-25 08:21:27', '2022-06-25 08:21:27', NULL),
(165, 25, 'received', '2022-06-27 11:38 AM', 193, '2022-06-27 04:38:47', '2022-06-27 04:38:47', NULL),
(166, 25, 'received', '2022-06-27 11:38 AM', 194, '2022-06-27 04:38:56', '2022-06-27 04:38:56', NULL),
(167, 47, 'received', '2022-06-27 01:11 PM', 180, '2022-06-27 06:11:24', '2022-06-27 06:11:24', NULL),
(168, 47, 'received', '2022-06-27 01:11 PM', 181, '2022-06-27 06:11:40', '2022-06-27 06:11:40', NULL),
(169, 47, 'received', '2022-06-27 01:11 PM', 203, '2022-06-27 06:12:03', '2022-06-27 06:12:03', NULL),
(170, 47, 'received', '2022-06-27 03:34 PM', 190, '2022-06-27 08:35:07', '2022-06-27 08:35:07', 'T20 16nos'),
(171, 31, 'received', '2022-06-27 04:35 PM', 200, '2022-06-27 09:36:25', '2022-06-27 09:36:25', NULL),
(172, 31, 'received', '2022-06-27 04:36 PM', 206, '2022-06-27 09:36:49', '2022-06-27 09:36:49', NULL),
(173, 31, 'received', '2022-06-27 04:36 PM', 199, '2022-06-27 09:37:13', '2022-06-27 09:37:13', NULL),
(174, 31, 'received', '2022-06-27 04:37 PM', 178, '2022-06-27 09:37:50', '2022-06-27 09:37:50', NULL),
(175, 28, 'received', '2022-06-27 10:20 PM', 215, '2022-06-27 15:20:14', '2022-06-27 15:20:14', NULL),
(176, 36, 'received', '2022-06-27 01:00 PM', 205, '2022-06-28 01:56:04', '2022-06-28 01:56:04', NULL),
(177, 32, 'received', '2022-06-28 08:49 PM', 169, '2022-06-28 13:51:18', '2022-06-28 13:51:18', NULL),
(178, 44, 'received', '2022-06-29 10:27 AM', 229, '2022-06-29 03:29:32', '2022-06-29 03:29:32', NULL),
(179, 22, 'received', '2022-06-29 12:27 PM', 231, '2022-06-29 05:27:22', '2022-06-29 05:27:22', NULL),
(180, 22, 'received', '2022-06-29 12:27 PM', 225, '2022-06-29 05:28:07', '2022-06-29 05:28:07', NULL),
(181, 22, 'received', '2022-06-29 12:28 PM', 218, '2022-06-29 05:28:31', '2022-06-29 05:28:31', NULL),
(182, 22, 'received', '2022-06-29 12:28 PM', 130, '2022-06-29 05:30:12', '2022-06-29 05:30:12', NULL),
(183, 22, 'received', '2022-06-29 12:30 PM', 214, '2022-06-29 05:30:28', '2022-06-29 05:30:28', NULL),
(184, 37, 'received', '2022-06-29 01:20 PM', 183, '2022-06-29 06:21:32', '2022-06-29 06:21:32', NULL),
(185, 37, 'received', '2022-06-29 01:21 PM', 230, '2022-06-29 06:22:13', '2022-06-29 06:22:13', NULL),
(186, 47, 'received', '2022-06-29 02:38 PM', 221, '2022-06-29 07:38:39', '2022-06-29 07:38:39', NULL),
(187, 47, 'received', '2022-06-29 02:38 PM', 187, '2022-06-29 07:38:58', '2022-06-29 07:38:58', NULL),
(188, 31, 'received', '2022-06-29 05:02 PM', 261, '2022-06-29 10:02:51', '2022-06-29 10:02:51', NULL),
(189, 31, 'received', '2022-06-28 05:06 PM', 179, '2022-06-29 10:06:46', '2022-06-29 10:06:46', NULL),
(190, 44, 'received', '2022-06-30 12:14 PM', 121, '2022-06-30 05:14:09', '2022-06-30 05:14:09', NULL),
(191, 44, 'received', '2022-06-30 12:14 PM', 202, '2022-06-30 05:14:24', '2022-06-30 05:14:24', NULL),
(192, 44, 'received', '2022-06-30 12:14 PM', 201, '2022-06-30 05:14:38', '2022-06-30 05:14:38', NULL),
(193, 36, 'received', '2022-07-01 11:45 AM', 251, '2022-07-01 04:45:25', '2022-07-01 04:45:25', NULL),
(194, 26, 'received', '2022-06-29 01:21 PM', 208, '2022-07-01 06:21:52', '2022-07-01 06:21:52', NULL),
(195, 26, 'received', '2022-06-27 01:22 PM', 210, '2022-07-01 06:22:26', '2022-07-01 06:22:26', NULL),
(196, 26, 'received', '2022-06-27 01:22 PM', 209, '2022-07-01 06:22:47', '2022-07-01 06:22:47', NULL),
(197, 26, 'received', '2022-06-29 01:22 PM', 211, '2022-07-01 06:23:10', '2022-07-01 06:23:10', NULL),
(198, 26, 'received', '2022-06-27 01:25 PM', 213, '2022-07-01 06:25:20', '2022-07-01 06:25:20', NULL),
(199, 28, 'received', '2022-07-01 03:16 PM', 244, '2022-07-01 08:17:12', '2022-07-01 08:17:12', NULL),
(200, 28, 'received', '2022-07-01 03:17 PM', 263, '2022-07-01 08:17:32', '2022-07-01 08:17:32', NULL),
(201, 28, 'received', '2022-07-01 03:17 PM', 237, '2022-07-01 08:17:46', '2022-07-01 08:17:46', NULL),
(202, 28, 'received', '2022-07-01 03:17 PM', 236, '2022-07-01 08:18:09', '2022-07-01 08:18:09', NULL),
(203, 22, 'received', '2022-07-02 10:33 AM', 255, '2022-07-02 03:34:19', '2022-07-02 03:34:19', NULL),
(204, 22, 'received', '2022-07-02 10:34 AM', 253, '2022-07-02 03:34:39', '2022-07-02 03:34:39', NULL),
(205, 22, 'received', '2022-07-02 10:34 AM', 226, '2022-07-02 03:35:03', '2022-07-02 03:35:03', NULL),
(206, 36, 'received', '2022-07-02 12:21 PM', 252, '2022-07-02 05:21:35', '2022-07-02 05:21:35', NULL),
(207, 36, 'received', '2022-07-02 12:21 PM', 258, '2022-07-02 05:21:50', '2022-07-02 05:21:50', NULL),
(208, 26, 'received', '2022-07-02 02:34 PM', 268, '2022-07-02 07:34:31', '2022-07-02 07:34:31', NULL),
(209, 26, 'received', '2022-07-02 02:34 PM', 234, '2022-07-02 07:34:48', '2022-07-02 07:34:48', NULL),
(210, 26, 'received', '2022-07-02 02:34 PM', 235, '2022-07-02 07:34:56', '2022-07-02 07:34:56', NULL),
(211, 36, 'received', '2022-07-02 05:16 PM', 274, '2022-07-02 10:17:00', '2022-07-02 10:17:00', NULL),
(212, 32, 'received', '2022-07-03 05:24 PM', 241, '2022-07-03 10:25:16', '2022-07-03 10:25:16', NULL),
(213, 32, 'received', '2022-07-03 05:25 PM', 242, '2022-07-03 10:25:31', '2022-07-03 10:25:31', NULL),
(214, 37, 'received', '2022-07-03 06:00 PM', 195, '2022-07-03 11:01:53', '2022-07-03 11:01:53', NULL),
(215, 37, 'received', '2022-07-03 06:01 PM', 265, '2022-07-03 11:13:53', '2022-07-03 11:13:53', NULL),
(216, 44, 'received', '2022-07-03 09:09 PM', 264, '2022-07-03 14:09:46', '2022-07-03 14:09:46', NULL),
(217, 28, 'received', '2022-07-04 09:37 AM', 269, '2022-07-04 02:37:48', '2022-07-04 02:37:48', NULL),
(218, 37, 'received', '2022-07-05 07:47 AM', 272, '2022-07-05 00:47:59', '2022-07-05 00:47:59', NULL),
(219, 37, 'received', '2022-07-05 07:48 AM', 273, '2022-07-05 00:48:30', '2022-07-05 00:48:30', NULL),
(220, 25, 'received', '2022-07-05 01:05 PM', 220, '2022-07-05 06:06:58', '2022-07-05 06:06:58', NULL),
(221, 28, 'received', '2022-07-06 10:06 AM', 240, '2022-07-06 03:08:07', '2022-07-06 03:08:07', NULL),
(222, 28, 'received', '2022-07-06 10:08 AM', 238, '2022-07-06 03:08:30', '2022-07-06 03:08:30', NULL),
(223, 22, 'received', '2022-07-06 11:12 AM', 300, '2022-07-06 04:13:08', '2022-07-06 04:13:08', NULL),
(224, 22, 'received', '2022-07-06 11:13 AM', 302, '2022-07-06 04:13:48', '2022-07-06 04:13:48', NULL),
(225, 22, 'received', '2022-07-06 11:13 AM', 174, '2022-07-06 04:14:16', '2022-07-06 04:14:16', NULL),
(226, 22, 'received', '2022-07-06 11:14 AM', 271, '2022-07-06 04:15:06', '2022-07-06 04:15:06', NULL),
(227, 44, 'received', '2022-07-06 11:29 AM', 298, '2022-07-06 04:29:46', '2022-07-06 04:29:46', NULL),
(228, 44, 'received', '2022-07-06 11:29 AM', 224, '2022-07-06 04:30:16', '2022-07-06 04:30:16', NULL),
(229, 37, 'received', '2022-07-06 02:29 PM', 294, '2022-07-06 07:30:13', '2022-07-06 07:30:13', NULL),
(230, 37, 'received', '2022-07-06 02:30 PM', 295, '2022-07-06 07:30:27', '2022-07-06 07:30:27', NULL),
(231, 37, 'received', '2022-07-06 02:30 PM', 296, '2022-07-06 07:31:30', '2022-07-06 07:31:30', NULL),
(232, 37, 'received', '2022-07-06 02:31 PM', 297, '2022-07-06 07:32:04', '2022-07-06 07:32:04', NULL),
(233, 36, 'received', '2022-07-06 04:05 PM', 270, '2022-07-06 09:06:11', '2022-07-06 09:06:11', NULL),
(234, 36, 'received', '2022-07-02 02:00 PM', 246, '2022-07-06 09:09:37', '2022-07-06 09:09:37', NULL),
(235, 36, 'received', '2022-07-06 04:09 PM', 303, '2022-07-06 09:11:40', '2022-07-06 09:11:40', NULL),
(236, 36, 'received', '2022-07-07 11:03 AM', 321, '2022-07-07 04:04:11', '2022-07-07 04:04:11', NULL),
(237, 26, 'received', '2022-07-08 12:22 PM', 326, '2022-07-08 05:22:51', '2022-07-08 05:22:51', NULL),
(238, 28, 'received', '2022-07-09 10:41 AM', 317, '2022-07-09 03:41:15', '2022-07-09 03:41:15', NULL),
(239, 28, 'received', '2022-07-09 10:41 AM', 314, '2022-07-09 03:41:39', '2022-07-09 03:41:39', NULL),
(240, 28, 'received', '2022-07-09 10:41 AM', 301, '2022-07-09 03:41:51', '2022-07-09 03:41:51', NULL),
(241, 28, 'received', '2022-07-09 10:41 AM', 299, '2022-07-09 03:42:08', '2022-07-09 03:42:08', NULL),
(242, 28, 'received', '2022-07-09 10:42 AM', 267, '2022-07-09 03:42:39', '2022-07-09 03:42:39', NULL),
(243, 28, 'received', '2022-07-09 10:42 AM', 266, '2022-07-09 03:42:54', '2022-07-09 03:42:54', NULL),
(244, 22, 'received', '2022-07-10 11:28 AM', 348, '2022-07-10 04:28:18', '2022-07-10 04:28:18', NULL),
(245, 22, 'received', '2022-07-10 11:28 AM', 343, '2022-07-10 04:28:42', '2022-07-10 04:28:42', NULL),
(246, 22, 'received', '2022-07-10 11:28 AM', 319, '2022-07-10 04:29:24', '2022-07-10 04:29:24', NULL),
(247, 22, 'received', '2022-07-10 11:29 AM', 254, '2022-07-10 04:30:22', '2022-07-10 04:30:22', NULL),
(248, 22, 'received', '2022-07-10 11:30 AM', 312, '2022-07-10 04:31:04', '2022-07-10 04:31:04', NULL),
(249, 26, 'received', '2022-07-10 08:03 PM', 334, '2022-07-10 13:04:07', '2022-07-10 13:04:07', NULL),
(250, 36, 'received', '2022-07-10 09:46 AM', 327, '2022-07-11 02:47:04', '2022-07-11 02:47:04', NULL),
(251, 22, 'received', '2022-07-13 04:18 PM', 365, '2022-07-13 09:20:28', '2022-07-13 09:20:28', NULL),
(252, 26, 'received', '2022-07-14 01:23 PM', 377, '2022-07-14 06:24:09', '2022-07-14 06:24:09', NULL),
(253, 26, 'received', '2022-07-14 01:24 PM', 378, '2022-07-14 06:24:21', '2022-07-14 06:24:21', NULL),
(254, 26, 'received', '2022-07-14 01:24 PM', 396, '2022-07-14 06:24:53', '2022-07-14 06:24:53', NULL),
(255, 26, 'received', '2022-07-14 01:24 PM', 397, '2022-07-14 06:25:10', '2022-07-14 06:25:10', NULL),
(256, 26, 'received', '2022-07-14 01:25 PM', 398, '2022-07-14 06:25:22', '2022-07-14 06:25:22', NULL),
(257, 37, 'received', '2022-07-14 03:56 PM', 341, '2022-07-14 08:56:19', '2022-07-14 08:56:19', NULL),
(258, 37, 'received', '2022-07-14 03:56 PM', 325, '2022-07-14 08:56:32', '2022-07-14 08:56:32', NULL),
(259, 37, 'received', '2022-07-14 03:56 PM', 324, '2022-07-14 08:56:47', '2022-07-14 08:56:47', NULL),
(260, 37, 'received', '2022-07-14 03:56 PM', 323, '2022-07-14 08:57:00', '2022-07-14 08:57:00', NULL),
(261, 37, 'received', '2022-07-14 03:57 PM', 322, '2022-07-14 08:57:14', '2022-07-14 08:57:14', NULL),
(262, 37, 'received', '2022-07-14 03:57 PM', 232, '2022-07-14 08:57:44', '2022-07-14 08:57:44', NULL),
(263, 37, 'received', '2022-07-14 03:57 PM', 256, '2022-07-14 08:58:15', '2022-07-14 08:58:15', NULL),
(264, 37, 'received', '2022-07-14 03:58 PM', 196, '2022-07-14 08:58:53', '2022-07-14 08:58:53', NULL),
(265, 36, 'received', '2022-07-15 10:10 AM', 359, '2022-07-15 03:10:44', '2022-07-15 03:10:44', NULL),
(266, 28, 'received', '2022-07-15 10:20 AM', 350, '2022-07-15 03:20:21', '2022-07-15 03:20:21', NULL),
(267, 28, 'received', '2022-07-15 10:20 AM', 316, '2022-07-15 03:20:43', '2022-07-15 03:20:43', NULL),
(268, 28, 'received', '2022-07-15 10:20 AM', 228, '2022-07-15 03:21:05', '2022-07-15 03:21:05', NULL),
(269, 28, 'received', '2022-07-15 10:21 AM', 227, '2022-07-15 03:21:20', '2022-07-15 03:21:20', NULL),
(270, 25, 'received', '2022-07-15 10:59 AM', 9, '2022-07-15 04:00:08', '2022-07-15 04:00:08', NULL),
(271, 47, 'received', '2022-07-15 03:21 PM', 393, '2022-07-15 08:21:53', '2022-07-15 08:21:53', NULL),
(272, 44, 'received', '2022-07-16 12:37 PM', 412, '2022-07-16 05:37:25', '2022-07-16 05:37:25', NULL),
(273, 44, 'received', '2022-07-16 12:37 PM', 406, '2022-07-16 05:37:35', '2022-07-16 05:37:35', NULL),
(274, 44, 'received', '2022-07-16 12:37 PM', 411, '2022-07-16 05:37:48', '2022-07-16 05:37:48', NULL),
(275, 44, 'received', '2022-07-16 12:37 PM', 344, '2022-07-16 05:38:10', '2022-07-16 05:38:10', NULL),
(276, 44, 'received', '2022-07-16 12:38 PM', 345, '2022-07-16 05:38:24', '2022-07-16 05:38:24', NULL),
(277, 44, 'received', '2022-07-16 12:38 PM', 347, '2022-07-16 05:38:50', '2022-07-16 05:38:50', NULL),
(278, 44, 'received', '2022-07-16 12:38 PM', 402, '2022-07-16 05:39:14', '2022-07-16 05:39:14', NULL),
(279, 44, 'received', '2022-07-16 12:39 PM', 403, '2022-07-16 05:39:44', '2022-07-16 05:39:44', NULL),
(280, 28, 'received', '2022-07-16 03:43 PM', 414, '2022-07-16 08:44:04', '2022-07-16 08:44:04', NULL),
(281, 28, 'received', '2022-07-16 03:44 PM', 352, '2022-07-16 08:44:23', '2022-07-16 08:44:23', NULL),
(282, 47, 'received', '2022-07-17 11:09 AM', 447, '2022-07-17 04:09:48', '2022-07-17 04:09:48', NULL),
(283, 47, 'received', '2022-07-17 11:09 AM', 328, '2022-07-17 04:10:17', '2022-07-17 04:10:17', NULL),
(284, 36, 'received', '2022-07-18 09:19 AM', 349, '2022-07-18 02:19:19', '2022-07-18 02:19:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variable_request_infos`
--

CREATE TABLE `variable_request_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `engineer_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `accept_reject_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accept_reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qs_team_check_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qs_team_check_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_check` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_check_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `management_accept_reject_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `management_accept_reject_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_by_engineer_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `received_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_voucher_upload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_voucher_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finance_payment_slip_upload` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finance_payment_slip_upload_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_send_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logistics_team_send_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `need_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_scope` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status_date` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status_user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `work_scope_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_request_infos`
--

INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`, `request_status`, `request_status_date`, `request_status_user`, `project_id`, `work_scope_id`) VALUES
(5, 'VR-000001', '2022-05-07 12:00 AM', 14, 31, '2022-05-07 04:12:36', '2022-08-14 08:50:05', 'accept', '2022-08-14 15:17:23pm', 'finished', '2022-05-10 09:51:46am', 'finished', '2022-05-29 15:36:05pm', 'reject', '2022-08-14 15:20:05pm', 'received', '2022-05-10 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:44:41pm', '2022-05-10 12:00 AM', 'Lean Concrete casting', NULL, NULL, NULL, NULL, NULL),
(6, 'VR-000002', '2022-05-09 12:00 AM', 14, 31, '2022-05-09 03:12:13', '2022-08-14 08:31:46', 'reject', '2022-08-14 15:01:46pm', 'finished', '2022-05-10 09:08:18am', 'finished', '2022-05-26 16:07:19pm', 'accept', '2022-06-14 17:19:54pm', 'received', '2022-05-12 12:00 AM', 'finished', '2022-06-11 11:53:41am', NULL, NULL, 'finished', '2022-06-07 22:15:02pm', '2022-05-12 12:00 AM', 'Lean concret for footing', NULL, NULL, NULL, NULL, NULL),
(7, 'VR-000003', '2022-05-09 10:40 AM', 4, 26, '2022-05-09 03:43:10', '2022-08-14 08:11:12', 'reject', '2022-08-14 14:41:12pm', 'finished', '2022-05-10 10:50:52am', 'finished', '2022-05-29 15:51:34pm', 'accept', '2022-06-14 17:18:38pm', 'received', '2022-05-11 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:17:20pm', '2022-05-11 09:00 AM', 'G.floor brick work,plastering work,ground tank work', NULL, NULL, NULL, NULL, NULL),
(8, 'VR-000004', '2022-05-09 12:00 AM', 5, 26, '2022-05-09 03:49:48', '2022-08-14 08:12:14', 'reject', '2022-08-14 14:42:14pm', 'finished', '2022-05-10 09:58:35am', 'finished', '2022-05-29 15:53:44pm', 'accept', '2022-06-14 17:17:43pm', 'received', '2022-05-11 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:18:14pm', '2022-05-11 12:00 AM', 'Concrete casting for DPC,lintel,window sail etc', NULL, NULL, NULL, NULL, NULL),
(9, 'VR-000005', '2022-05-09 12:00 AM', 6, 25, '2022-05-09 06:55:58', '2022-07-15 04:00:08', 'accept', '2022-05-09 15:21:33pm', 'finished', '2022-05-10 09:57:22am', 'finished', '2022-05-29 15:55:47pm', 'accept', '2022-06-14 17:15:43pm', 'received', '2022-07-15 10:59 AM', 'finished', '2022-07-14 22:21:36pm', NULL, NULL, 'finished', '2022-06-07 22:13:40pm', '2022-05-12 12:00 AM', 'For Plastering Work', NULL, NULL, NULL, NULL, NULL),
(10, 'VR-000006', '2022-05-09 12:00 AM', 6, 25, '2022-05-09 07:02:30', '2022-06-14 10:14:59', 'accept', '2022-05-10 09:53:47am', 'finished', '2022-05-10 09:54:19am', 'finished', '2022-05-29 15:57:28pm', 'accept', '2022-06-14 17:14:59pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:19:18pm', '2022-05-12 12:00 AM', 'For Plastering Work', NULL, NULL, NULL, NULL, NULL),
(11, 'VR-000007', '2022-05-09 12:00 AM', 14, 31, '2022-05-09 10:09:30', '2022-06-14 10:14:19', 'accept', '2022-05-10 09:59:13am', 'finished', '2022-05-10 10:51:15am', 'finished', '2022-05-29 15:58:34pm', 'accept', '2022-06-14 17:14:19pm', 'received', '2022-05-12 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:12:38pm', '2022-05-14 12:00 AM', 'Retaining wall', NULL, NULL, NULL, NULL, NULL),
(12, 'VR-000008', '2022-05-10 12:00 AM', 4, 26, '2022-05-10 06:07:06', '2022-06-14 10:14:57', 'accept', '2022-05-11 11:48:36am', 'finished', '2022-05-11 11:49:15am', 'finished', '2022-05-29 15:59:39pm', 'accept', '2022-06-14 17:13:40pm', 'received', '2022-05-14 12:00 AM', 'finished', '2022-06-14 17:14:57pm', NULL, NULL, 'finished', '2022-06-07 22:11:55pm', '2022-05-10 12:00 AM', 'G.floor brick work,1st floor brick work', NULL, NULL, NULL, NULL, NULL),
(13, 'VR-000009', '2022-05-10 12:00 AM', 8, 28, '2022-05-10 09:40:28', '2022-06-16 06:27:33', 'accept', '2022-05-11 11:48:47am', 'finished', '2022-05-11 11:49:44am', 'finished', '2022-05-29 16:04:05pm', 'accept', '2022-06-14 17:13:02pm', 'received', '2022-05-13 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 13:27:33pm', '2022-05-10 09:30 AM', 'Ground Tank & Spetic Tank', NULL, NULL, NULL, NULL, NULL),
(14, 'VR-000010', '2022-05-11 12:00 AM', 4, 26, '2022-05-11 09:17:26', '2022-06-08 03:33:44', 'accept', '2022-05-12 17:14:08pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-05-13 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', 'Roof slab and penthouse slab', NULL, NULL, NULL, NULL, NULL),
(15, 'VR-000011', '2022-05-11 12:00 AM', 5, 26, '2022-05-11 09:21:14', '2022-07-14 14:25:09', 'accept', '2022-05-12 17:15:28pm', 'finished', '2022-05-12 17:15:56pm', 'finished', '2022-05-29 16:24:42pm', 'reject', '2022-06-07 16:38:38pm', 'received', '2022-05-13 12:00 AM', 'finished', '2022-07-14 21:25:09pm', NULL, NULL, NULL, NULL, '2022-05-13 12:00 AM', 'Brick work and plastering work', NULL, NULL, NULL, NULL, NULL),
(16, 'VR-000012', '2022-05-11 12:00 AM', 5, 26, '2022-05-11 09:23:38', '2022-06-14 10:12:03', 'accept', '2022-05-12 17:16:12pm', 'finished', '2022-05-13 10:08:34am', 'finished', '2022-05-29 16:25:39pm', 'accept', '2022-06-14 17:12:03pm', 'received', '2022-05-13 12:00 AM', 'finished', '2022-06-14 17:02:30pm', NULL, NULL, 'finished', '2022-06-07 22:21:01pm', '2022-05-13 12:00 AM', '1st floor and 2nd floor brick work', NULL, NULL, NULL, NULL, NULL),
(17, 'VR-000013', '2022-05-12 12:00 AM', 8, 28, '2022-05-12 09:49:48', '2022-06-07 15:06:45', 'accept', '2022-05-13 10:07:03am', 'finished', '2022-05-13 10:07:20am', 'finished', '2022-05-17 08:49:36am', 'accept', '2022-05-29 18:05:10pm', 'received', '2022-05-17 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:06:45pm', '2022-05-14 12:00 AM', 'Building scaffolding', NULL, NULL, NULL, NULL, NULL),
(18, 'VR-000014', '2022-05-12 12:00 AM', 14, 31, '2022-05-12 12:23:48', '2022-05-29 11:03:04', 'accept', '2022-05-13 10:07:39am', 'finished', '2022-05-13 10:09:18am', 'finished', '2022-05-29 16:28:48pm', 'reject', '2022-05-29 18:03:04pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-15 12:00 AM', 'Footing GL C/D/E concrete casting', NULL, NULL, NULL, NULL, NULL),
(19, 'VR-000015', '2022-05-13 12:00 AM', 11, 31, '2022-05-13 13:04:42', '2022-06-07 15:05:45', 'accept', '2022-05-16 13:09:18pm', 'finished', '2022-05-16 13:11:15pm', 'finished', '2022-05-29 16:30:59pm', 'accept', '2022-05-29 18:01:17pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:05:45pm', '2022-05-17 12:00 AM', 'RB casting', NULL, NULL, NULL, NULL, NULL),
(20, 'VR-000016', '2022-05-13 12:00 AM', 11, 31, '2022-05-13 13:05:23', '2022-05-30 09:14:36', 'accept', '2022-05-16 13:10:41pm', 'finished', '2022-05-16 13:10:49pm', 'finished', '2022-05-29 16:32:54pm', 'accept', '2022-05-29 18:01:01pm', 'received', '2022-05-17 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-05-30 16:14:36pm', '2022-05-17 12:00 AM', 'GT and Septic tank', NULL, NULL, NULL, NULL, NULL),
(21, 'VR-000017', '2022-05-21 12:00 AM', 14, 31, '2022-05-21 12:33:06', '2022-06-16 07:38:56', 'accept', '2022-05-23 21:54:08pm', 'finished', '2022-06-11 11:12:05am', 'finished', '2022-06-11 12:04:55pm', 'accept', '2022-06-14 17:10:17pm', 'received', '2022-05-26 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:38:56pm', '2022-05-24 12:00 AM', 'Footing concrete casting', NULL, NULL, NULL, NULL, NULL),
(22, 'VR-000018', '2022-05-23 12:00 AM', 14, 31, '2022-05-23 01:14:35', '2022-06-11 05:16:28', 'accept', '2022-05-23 21:54:14pm', 'finished', '2022-05-28 09:43:18am', 'finished', '2022-05-29 16:41:17pm', 'accept', '2022-05-29 18:00:48pm', 'received', '2022-05-26 12:00 AM', 'finished', '2022-06-11 12:16:28pm', NULL, NULL, 'finished', '2022-06-07 22:04:48pm', '2022-05-24 12:00 AM', 'Footing concrete casting', NULL, NULL, NULL, NULL, NULL),
(23, 'VR-000019', '2022-05-27 12:00 AM', 14, 31, '2022-05-27 09:26:29', '2022-06-16 07:35:42', 'accept', '2022-05-28 16:34:58pm', 'finished', '2022-06-03 15:09:18pm', 'finished', '2022-06-11 12:18:37pm', 'accept', '2022-06-14 17:09:27pm', 'received', '2022-06-01 12:00 AM', 'finished', '2022-06-11 14:39:27pm', NULL, NULL, 'finished', '2022-06-16 14:35:42pm', '2022-05-31 12:00 AM', 'Short column casting GL D and E', NULL, NULL, NULL, NULL, NULL),
(24, 'VR-000020', '2022-05-30 12:00 AM', 6, 25, '2022-05-30 13:27:38', '2022-06-16 07:31:51', 'accept', '2022-05-31 09:32:23am', 'finished', '2022-05-31 09:32:42am', 'finished', '2022-06-08 16:19:03pm', 'accept', '2022-06-14 17:08:50pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:31:51pm', '2022-06-03 12:00 AM', 'G Tank &Septic Tank (BW &Plastering)', NULL, NULL, NULL, NULL, NULL),
(25, 'VR-000021', '2022-05-30 12:00 AM', 13, 25, '2022-05-30 13:29:24', '2022-05-31 02:29:29', 'accept', '2022-05-31 09:27:46am', 'finished', '2022-05-31 09:29:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-02 12:00 AM', 'RW Brickwork', NULL, NULL, NULL, NULL, NULL),
(26, 'VR-000022', '2022-05-30 12:00 AM', 13, 25, '2022-05-30 13:30:38', '2022-05-31 02:24:40', 'accept', '2022-05-31 09:23:33am', 'finished', '2022-05-31 09:24:40am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 12:00 AM', 'RW Brick work', NULL, NULL, NULL, NULL, NULL),
(27, 'VR-000023', '2022-05-31 12:00 AM', 2, 28, '2022-05-31 03:47:03', '2022-06-26 13:38:44', 'accept', '2022-05-31 16:31:13pm', 'finished', '2022-05-31 16:33:35pm', 'finished', '2022-06-01 14:07:12pm', 'accept', '2022-06-06 11:52:11am', 'received', '2022-06-01 12:00 AM', 'finished', '2022-06-26 20:38:44pm', NULL, NULL, 'finished', '2022-06-07 22:03:23pm', '2022-06-02 12:00 AM', 'Ground Tank and Spetic Tank', NULL, NULL, NULL, NULL, NULL),
(28, 'VR-000024', '2022-05-31 12:00 AM', 2, 28, '2022-05-31 03:52:08', '2022-06-14 10:08:02', 'accept', '2022-05-31 16:34:42pm', 'finished', '2022-05-31 16:34:56pm', 'finished', '2022-06-01 12:20:59pm', 'accept', '2022-06-14 17:08:02pm', 'received', '2022-06-02 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:02:38pm', '2022-06-02 12:00 AM', 'Ground Tank and Spetic Tank', NULL, NULL, NULL, NULL, NULL),
(29, 'VR-000025', '2022-05-31 12:00 AM', 11, 31, '2022-05-31 07:48:04', '2022-06-14 10:07:16', 'accept', '2022-06-01 11:18:20am', 'finished', '2022-06-01 11:18:35am', 'finished', '2022-06-03 15:04:24pm', 'accept', '2022-06-14 17:07:16pm', 'received', '2022-06-03 12:00 AM', 'finished', '2022-06-09 12:15:12pm', NULL, NULL, 'finished', '2022-06-07 22:01:36pm', '2022-06-03 12:00 AM', 'Roofing', NULL, NULL, NULL, NULL, NULL),
(30, 'VR-000026', '2022-05-31 12:00 AM', 4, 26, '2022-05-31 08:49:28', '2022-06-14 10:06:36', 'accept', '2022-06-01 11:17:38am', 'finished', '2022-06-01 11:17:52am', 'finished', '2022-06-01 11:25:41am', 'accept', '2022-06-14 17:06:36pm', 'received', '2022-06-03 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 22:00:43pm', '2022-06-03 12:00 AM', 'G.floor and 1st floor plastering', NULL, NULL, NULL, NULL, NULL),
(31, 'VR-000027', '2022-06-01 12:00 AM', 11, 31, '2022-06-01 10:01:05', '2022-06-14 10:04:23', 'accept', '2022-06-02 10:22:00am', 'finished', '2022-06-02 10:23:00am', 'finished', '2022-06-03 11:01:30am', 'accept', '2022-06-14 17:04:23pm', 'received', '2022-06-09 08:00 AM', 'finished', '2022-06-09 12:22:38pm', NULL, NULL, 'finished', '2022-06-07 21:57:40pm', '2022-06-06 12:00 AM', 'Wall and partitions brick work', NULL, NULL, NULL, NULL, NULL),
(32, 'VR-000028', '2022-06-01 12:00 AM', 5, 26, '2022-06-01 10:30:01', '2022-06-14 10:25:11', 'accept', '2022-06-02 09:38:44am', 'finished', '2022-06-02 09:39:01am', 'finished', '2022-06-07 15:22:53pm', 'accept', '2022-06-14 17:03:44pm', 'received', '2022-06-04 12:00 AM', 'finished', '2022-06-14 17:25:11pm', NULL, NULL, 'finished', '2022-06-07 21:56:51pm', '2022-06-09 12:00 AM', '2nd floor brick work and Roof top brick work', NULL, NULL, NULL, NULL, NULL),
(33, 'VR-000029', '2022-06-01 12:00 AM', 5, 26, '2022-06-01 10:31:00', '2022-06-14 10:03:00', 'accept', '2022-06-02 09:39:13am', 'finished', '2022-06-02 09:39:53am', 'finished', '2022-06-07 15:33:35pm', 'accept', '2022-06-14 17:03:00pm', 'received', '2022-06-04 12:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:56:14pm', '2022-06-09 12:00 AM', '2nd floor brick work and 1st floor plastering work', NULL, NULL, NULL, NULL, NULL),
(34, 'VR-000030', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:17:48', '2022-06-14 10:45:21', 'accept', '2022-06-02 09:55:16am', 'finished', '2022-06-02 09:59:26am', 'finished', '2022-06-06 10:48:03am', 'accept', '2022-06-14 17:02:32pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:45:21pm', NULL, NULL, 'finished', '2022-06-07 21:45:20pm', '2022-06-05 12:00 AM', 'For 1st floor brick work', NULL, NULL, NULL, NULL, NULL),
(35, 'VR-000031', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:20:27', '2022-06-22 07:39:24', 'accept', '2022-06-02 10:03:39am', 'finished', '2022-06-02 10:04:23am', 'finished', '2022-06-03 11:05:35am', NULL, NULL, 'received', '2022-06-22 02:00 PM', 'finished', '2022-06-09 17:38:20pm', 'finished', '2022-06-09 17:38:54pm', 'finished', '2022-06-07 21:55:28pm', '2022-06-05 12:00 AM', 'For 1st floor brick work', 'completed', '2022-06-09 17:39:48pm', '38', NULL, NULL),
(36, 'VR-000032', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:21:23', '2022-07-14 15:57:13', 'accept', '2022-06-02 10:05:35am', 'finished', '2022-06-02 10:05:51am', 'finished', '2022-06-02 17:17:45pm', 'accept', '2022-06-14 17:02:03pm', 'received', '2022-06-22 02:00 PM', 'finished', '2022-07-14 22:57:13pm', NULL, NULL, 'finished', '2022-06-07 21:54:47pm', '2022-06-05 12:00 AM', 'For 1st floor brick work', NULL, NULL, NULL, NULL, NULL),
(37, 'VR-000033', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:25:59', '2022-06-14 10:51:13', 'accept', '2022-06-02 10:06:30am', 'finished', '2022-06-02 10:11:25am', 'finished', '2022-06-06 13:29:49pm', 'accept', '2022-06-14 17:01:28pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:51:13pm', NULL, NULL, 'finished', '2022-06-07 21:54:15pm', '2022-06-05 12:00 AM', 'For 1st floor DPC & Roof floor stirrups', NULL, NULL, NULL, NULL, NULL),
(38, 'VR-000034', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:27:00', '2022-06-14 10:52:07', 'accept', '2022-06-02 10:12:13am', 'finished', '2022-06-02 10:16:46am', 'finished', '2022-06-06 13:20:50pm', 'accept', '2022-06-14 17:00:45pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:52:07pm', NULL, NULL, 'finished', '2022-06-07 21:46:20pm', '2022-06-05 12:00 AM', 'For Roof floor rebar work', NULL, NULL, NULL, NULL, NULL),
(39, 'VR-000035', '2022-06-01 12:00 AM', 7, 22, '2022-06-01 14:28:22', '2022-06-14 10:56:02', 'accept', '2022-06-02 10:14:14am', 'finished', '2022-06-02 10:20:52am', 'finished', '2022-06-06 13:15:39pm', 'accept', '2022-06-07 16:40:34pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 17:56:02pm', NULL, NULL, 'finished', '2022-06-07 21:43:44pm', '2022-06-05 12:00 AM', 'For roof floor rebar work', NULL, NULL, NULL, NULL, NULL),
(40, 'VR-000036', '2022-06-02 12:00 AM', 2, 28, '2022-06-02 06:53:15', '2022-08-14 08:08:52', 'accept', '2022-08-14 14:38:52pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-06-10 03:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'Column Formwork', NULL, NULL, NULL, NULL, NULL),
(41, 'VR-000037', '2022-06-02 12:00 AM', 8, 36, '2022-06-02 09:19:05', '2022-06-26 13:45:28', 'accept', '2022-06-02 16:29:34pm', 'finished', '2022-06-02 23:41:59pm', 'finished', '2022-06-03 10:59:03am', 'accept', '2022-06-03 11:30:27am', 'received', '2022-06-04 01:15 PM', 'finished', '2022-06-26 20:45:28pm', NULL, NULL, 'finished', '2022-06-07 21:43:13pm', '2022-06-05 12:00 AM', 'Bricks Laying work (Ground Floor)', NULL, NULL, NULL, NULL, NULL),
(42, 'VR-000038', '2022-06-02 12:00 AM', 8, 36, '2022-06-02 09:21:06', '2022-06-07 14:42:35', 'accept', '2022-06-02 16:29:56pm', 'finished', '2022-06-02 23:42:38pm', 'finished', '2022-06-07 10:41:42am', 'accept', '2022-06-07 16:25:24pm', 'received', '2022-06-07 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:42:35pm', '2022-06-04 09:00 AM', 'Bricks Laying Work (Ground Floor)', NULL, NULL, NULL, NULL, NULL),
(43, 'VR-000039', '2022-06-02 06:00 PM', 2, 28, '2022-06-02 11:53:56', '2022-06-26 14:06:13', 'accept', '2022-06-04 11:43:59am', 'finished', '2022-06-04 11:44:16am', 'finished', '2022-06-08 16:00:10pm', 'accept', '2022-06-14 16:59:51pm', 'received', '2022-06-10 03:00 PM', 'finished', '2022-06-26 21:06:13pm', NULL, NULL, 'finished', '2022-06-16 12:31:25pm', '2022-06-06 09:00 AM', 'Column Formwork', NULL, NULL, NULL, NULL, NULL),
(44, 'VR-000040', '2022-06-02 12:00 AM', 4, 26, '2022-06-02 14:20:06', '2022-07-14 16:38:49', 'accept', '2022-06-03 12:40:33pm', 'finished', '2022-06-03 12:40:47pm', 'finished', '2022-06-07 15:21:22pm', 'accept', '2022-06-07 16:24:59pm', 'received', '2022-06-05 12:00 AM', 'finished', '2022-07-14 23:38:49pm', NULL, NULL, 'finished', '2022-06-07 21:41:51pm', '2022-06-05 12:00 AM', 'G.floor and 1st floor plastering work', NULL, NULL, NULL, NULL, NULL),
(45, 'VR-000041', '2022-06-02 12:00 AM', 4, 26, '2022-06-02 14:21:11', '2022-06-14 11:04:49', 'accept', '2022-06-03 12:39:43pm', 'finished', '2022-06-03 12:39:56pm', 'finished', '2022-06-07 15:16:23pm', 'accept', '2022-06-07 16:23:53pm', 'received', '2022-06-08 12:00 AM', 'finished', '2022-06-14 18:04:49pm', NULL, NULL, 'finished', '2022-06-07 21:41:21pm', '2022-06-05 12:00 AM', '2nd floor brick work,G.floor and 1st floor plastering work', NULL, NULL, NULL, NULL, NULL),
(46, 'VR-000042', '2022-06-03 12:00 AM', 14, 31, '2022-06-03 03:14:02', '2022-06-11 07:33:34', 'accept', '2022-06-03 14:42:42pm', 'finished', '2022-06-03 14:42:28pm', 'finished', '2022-06-03 15:02:56pm', 'accept', '2022-06-07 16:22:44pm', 'received', '2022-06-03 12:00 AM', 'finished', '2022-06-11 14:33:34pm', NULL, NULL, 'finished', '2022-06-07 21:40:49pm', '2022-06-03 12:00 AM', 'Retaining Wall brick work', NULL, NULL, NULL, NULL, NULL),
(47, 'VR-000043', '2022-06-03 10:45 AM', 21, 37, '2022-06-03 03:45:14', '2022-06-07 14:40:21', 'accept', '2022-06-03 11:42:16am', 'finished', '2022-06-03 11:43:01am', 'finished', '2022-06-03 14:59:39pm', 'accept', '2022-06-07 12:34:44pm', 'received', '2022-06-04 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:40:21pm', '2022-06-04 12:00 AM', '01', NULL, NULL, NULL, NULL, NULL),
(48, 'VR-000044', '2022-06-03 12:00 AM', 14, 31, '2022-06-03 09:03:45', '2022-06-04 04:10:43', 'reject', '2022-06-04 11:10:43am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-04 12:00 AM', 'Backfilling for beside of GL 4', NULL, NULL, NULL, NULL, NULL),
(49, 'VR-000045', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 09:59:12', '2022-06-03 10:07:10', 'reject', '2022-06-03 17:07:10pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL, NULL, NULL),
(50, 'VR-000046', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:00:22', '2022-06-03 10:07:26', 'reject', '2022-06-03 17:07:26pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-03 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL, NULL, NULL),
(51, 'VR-000047', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:02:09', '2022-06-08 02:51:08', 'accept', '2022-06-04 11:15:08am', 'finished', '2022-06-04 11:23:05am', NULL, NULL, NULL, NULL, 'received', '2022-06-08 09:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL, NULL, NULL),
(52, 'VR-000048', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:09:02', '2022-06-14 11:15:15', 'accept', '2022-06-04 11:22:02am', 'finished', '2022-06-04 11:22:50am', 'finished', '2022-06-05 18:59:23pm', 'accept', '2022-06-06 11:52:40am', 'received', '2022-06-08 09:00 AM', 'finished', '2022-06-14 18:15:15pm', NULL, NULL, 'finished', '2022-06-07 21:37:55pm', '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL, NULL, NULL),
(53, 'VR-000049', '2022-06-03 12:00 AM', 12, 32, '2022-06-03 10:10:25', '2022-08-14 08:50:16', 'accept', '2022-06-04 11:21:49am', 'finished', '2022-06-04 11:22:35am', 'finished', '2022-06-07 15:07:41pm', 'reject', '2022-08-14 15:20:16pm', 'received', '2022-06-08 09:00 AM', 'finished', '2022-07-14 23:23:04pm', NULL, NULL, 'finished', '2022-06-07 21:39:17pm', '2022-06-06 12:00 AM', 'DPC and Roof Floor Brickwork', NULL, NULL, NULL, NULL, NULL),
(54, 'VR-000050', '2022-06-03 06:00 AM', 2, 28, '2022-06-03 11:18:13', '2022-06-07 14:38:47', 'accept', '2022-06-04 09:29:05am', 'finished', '2022-06-04 09:29:22am', 'finished', '2022-06-05 18:53:30pm', 'accept', '2022-06-05 19:55:36pm', 'received', '2022-06-05 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:38:47pm', '2022-06-06 09:00 AM', 'Spetic Tank & GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(55, 'VR-000051', '2022-06-03 12:00 AM', 14, 31, '2022-06-04 04:15:57', '2022-08-14 09:16:03', 'reject', '2022-08-14 15:46:03pm', 'finished', '2022-06-04 11:25:39am', 'finished', '2022-06-07 17:17:25pm', 'reject', '2022-08-14 15:20:28pm', 'received', '2022-06-06 08:00 AM', 'finished', '2022-06-08 12:19:19pm', NULL, NULL, 'finished', '2022-06-08 12:18:37pm', '2022-06-04 12:00 AM', 'Backfilling for beside of GL 4', NULL, NULL, NULL, NULL, NULL),
(56, 'VR-000052', '2022-06-04 12:00 AM', 5, 26, '2022-06-04 04:26:45', '2022-07-14 16:39:28', 'accept', '2022-06-06 09:31:18am', 'finished', '2022-06-06 09:31:37am', 'finished', '2022-06-07 15:06:38pm', 'accept', '2022-06-07 16:22:07pm', 'received', '2022-06-06 12:00 AM', 'finished', '2022-07-14 23:39:28pm', NULL, NULL, 'finished', '2022-06-07 21:37:29pm', '2022-06-07 12:00 AM', '2nd floor brick work and 1st floor plastering work', NULL, NULL, NULL, NULL, NULL),
(57, 'VR-000053', '2022-06-05 04:45 AM', 21, 37, '2022-06-05 09:50:29', '2022-06-14 09:56:41', 'accept', '2022-06-05 20:57:44pm', 'finished', '2022-06-06 09:36:42am', 'finished', '2022-06-07 17:15:22pm', 'accept', '2022-06-14 16:56:41pm', 'received', '2022-06-07 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:59:42pm', '2022-06-07 12:00 AM', 'Line E Conc: Work', NULL, NULL, NULL, NULL, NULL),
(58, 'VR-000054', '2022-06-05 05:00 PM', 21, 37, '2022-06-05 10:08:13', '2022-06-16 05:30:33', 'accept', '2022-06-05 20:57:26pm', 'finished', '2022-06-05 20:57:13pm', 'finished', '2022-06-11 10:31:16am', 'accept', '2022-06-14 16:56:00pm', 'received', '2022-06-10 11:00 AM', 'finished', '2022-06-11 14:17:51pm', NULL, NULL, 'finished', '2022-06-16 12:30:33pm', '2022-06-09 12:00 AM', 'Rataining Wall', NULL, NULL, NULL, NULL, NULL),
(59, 'VR-000055', '2022-06-06 12:00 AM', 4, 26, '2022-06-06 03:04:17', '2022-07-14 16:36:21', 'accept', '2022-06-06 10:11:32am', 'finished', '2022-06-06 10:11:53am', 'finished', '2022-06-07 15:05:50pm', 'accept', '2022-06-07 16:21:37pm', 'received', '2022-06-08 12:00 AM', 'finished', '2022-07-14 23:36:21pm', NULL, NULL, 'finished', '2022-06-07 21:37:01pm', '2022-06-08 12:00 AM', '2nd floor brick work,G.Fl and 1st internal wall plastering work', NULL, NULL, NULL, NULL, NULL),
(60, 'VR-000056', '2022-06-06 12:00 AM', 4, 26, '2022-06-06 03:06:56', '2022-06-09 10:35:27', 'accept', '2022-06-06 10:08:01am', 'finished', '2022-06-06 10:08:16am', 'finished', '2022-06-07 15:03:35pm', 'accept', '2022-06-07 16:21:08pm', 'received', '2022-06-08 12:00 AM', 'finished', '2022-06-09 17:33:53pm', 'finished', '2022-06-09 17:35:00pm', 'finished', '2022-06-07 21:36:21pm', '2022-06-08 12:00 AM', '2nd floor brick work and parapet brick work', 'completed', '2022-06-09 17:35:27pm', '38', NULL, NULL),
(61, 'VR-000057', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:30:48', '2022-06-14 09:54:57', 'accept', '2022-06-06 13:25:37pm', 'finished', '2022-06-06 13:27:09pm', 'finished', '2022-06-07 16:27:55pm', 'accept', '2022-06-14 16:54:57pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:47:12pm', '2022-06-06 12:00 AM', 'Lean & Footing casting', NULL, NULL, NULL, NULL, NULL),
(62, 'VR-000058', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:39:50', '2022-06-14 09:54:10', 'accept', '2022-06-06 13:26:02pm', 'finished', '2022-06-06 13:28:26pm', 'finished', '2022-06-08 12:12:29pm', 'accept', '2022-06-14 16:54:10pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:56:32pm', '2022-06-06 12:00 AM', 'lean casting', NULL, NULL, NULL, NULL, NULL),
(63, 'VR-000059', '2022-06-06 12:00 AM', 17, 47, '2022-06-06 03:40:38', '2022-06-08 12:39:56', 'accept', '2022-06-06 13:25:50pm', 'finished', '2022-06-06 13:28:37pm', 'finished', '2022-06-07 15:38:52pm', 'accept', '2022-06-07 16:20:46pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:35:51pm', '2022-06-06 12:00 AM', 'lean casting', NULL, NULL, NULL, NULL, NULL),
(64, 'VR-000060', '2022-06-06 12:00 AM', 21, 37, '2022-06-06 05:36:16', '2022-06-08 05:06:37', 'reject', '2022-06-06 17:04:24pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-06-08 12:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 12:00 AM', 'Line E & A Footing', NULL, NULL, NULL, NULL, NULL),
(65, 'VR-000061', '2022-06-06 12:00 AM', 21, 37, '2022-06-06 05:36:58', '2022-06-09 06:10:35', 'accept', '2022-06-06 17:04:16pm', 'finished', '2022-06-06 17:04:37pm', 'finished', '2022-06-07 15:27:30pm', 'accept', '2022-06-07 16:20:28pm', 'received', '2022-06-08 12:00 PM', 'finished', '2022-06-09 13:10:35pm', NULL, NULL, 'finished', '2022-06-07 21:35:04pm', '2022-06-08 12:00 AM', 'Line E & A footing', NULL, NULL, NULL, NULL, NULL),
(66, 'VR-000062', '2022-06-06 12:00 AM', 11, 31, '2022-06-06 07:43:24', '2022-06-20 04:03:32', 'accept', '2022-06-07 10:09:20am', 'finished', '2022-06-07 10:11:14am', 'finished', '2022-06-07 15:26:40pm', 'accept', '2022-06-07 16:19:52pm', 'received', '2022-06-08 08:00 AM', 'finished', '2022-06-09 12:20:22pm', 'finished', '2022-06-20 11:03:32am', 'finished', '2022-06-07 16:40:25pm', '2022-06-13 12:00 AM', 'Doors (MD and D3)', NULL, NULL, NULL, NULL, NULL),
(67, 'VR-000063', '2022-06-06 06:00 PM', 2, 28, '2022-06-06 12:14:18', '2022-06-14 09:53:22', 'accept', '2022-06-07 09:21:23am', 'finished', '2022-06-07 09:21:33am', 'finished', '2022-06-08 14:25:37pm', 'accept', '2022-06-14 16:53:22pm', 'received', '2022-06-08 04:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:55:29pm', '2022-06-08 09:00 AM', 'For levelling concrete', NULL, NULL, NULL, NULL, NULL),
(68, 'VR-000064', '2022-06-07 12:00 AM', 8, 36, '2022-06-07 02:42:05', '2022-06-07 02:57:13', 'reject', '2022-06-07 09:56:57am', 'finished', '2022-06-07 09:57:13am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 09:00 AM', 'For additional work', NULL, NULL, NULL, NULL, NULL),
(69, 'VR-000065', '2022-06-07 12:00 AM', 8, 36, '2022-06-07 02:58:36', '2022-06-07 14:33:12', 'accept', '2022-06-07 10:10:31am', 'finished', '2022-06-07 10:11:30am', 'finished', '2022-06-07 15:01:33pm', 'accept', '2022-06-07 16:15:30pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-07 21:33:12pm', '2022-06-08 09:00 AM', 'For additional work', NULL, NULL, NULL, NULL, NULL),
(70, 'VR-000066', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 03:13:58', '2022-06-22 07:29:28', 'accept', '2022-06-07 12:13:20pm', 'finished', '2022-06-07 12:13:50pm', 'finished', '2022-06-08 11:43:14am', 'accept', '2022-06-08 14:29:53pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:53:25pm', '2022-06-07 12:00 AM', 'SB and GF column', NULL, NULL, NULL, NULL, NULL),
(71, 'VR-000067', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 03:15:39', '2022-06-22 07:29:41', 'accept', '2022-06-07 12:12:39pm', 'finished', '2022-06-07 12:13:00pm', 'finished', '2022-06-08 11:34:00am', 'accept', '2022-06-08 13:22:21pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:51:21pm', '2022-06-07 12:00 AM', 'SF. SB. GF(column) GB', NULL, NULL, NULL, NULL, NULL),
(72, 'VR-000068', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 03:16:07', '2022-06-21 10:13:24', 'accept', '2022-06-07 12:11:58pm', 'finished', '2022-06-07 12:12:19pm', 'finished', '2022-06-08 11:33:15am', 'accept', '2022-06-08 13:22:08pm', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-08 15:50:50pm', '2022-06-07 12:00 AM', 'SB Column GB', NULL, NULL, NULL, NULL, NULL),
(73, 'VR-000069', '2022-06-07 12:00 AM', 17, 47, '2022-06-07 06:34:10', '2022-06-08 12:40:14', 'accept', '2022-06-07 13:45:37pm', 'finished', '2022-06-07 14:32:58pm', 'finished', '2022-06-07 15:24:40pm', 'reject', '2022-06-07 16:13:26pm', 'received', '2022-06-08 07:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-07 12:00 AM', 'GL-D HC laying', NULL, NULL, NULL, NULL, NULL),
(74, 'VR-000070', '2022-06-07 12:00 AM', 11, 31, '2022-06-07 06:44:48', '2022-06-26 09:06:48', 'accept', '2022-06-09 10:08:05am', 'finished', '2022-06-09 10:08:33am', 'finished', '2022-06-09 16:24:28pm', 'accept', '2022-06-15 13:08:22pm', 'received', '2022-06-09 11:00 AM', 'finished', '2022-06-09 16:25:20pm', 'finished', '2022-06-09 17:41:29pm', 'finished', '2022-06-26 16:06:48pm', '2022-06-09 12:00 AM', 'GT Plastering and Exterior Wall brick work', NULL, NULL, NULL, NULL, NULL),
(75, 'VR-000071', '2022-06-07 12:00 AM', 11, 31, '2022-06-07 06:46:16', '2022-06-16 07:26:33', 'accept', '2022-06-09 10:09:05am', 'finished', '2022-06-09 10:07:09am', 'finished', '2022-06-16 14:26:33pm', NULL, NULL, 'received', '2022-06-12 11:00 AM', 'finished', '2022-06-09 17:43:34pm', 'finished', '2022-06-09 17:44:48pm', NULL, NULL, '2022-06-10 12:00 AM', 'Wall Brick work', 'completed', '2022-06-09 17:45:15pm', '38', NULL, NULL),
(76, 'VR-000072', '2022-06-07 04:00 PM', 7, 22, '2022-06-07 09:09:48', '2022-07-14 15:59:01', 'accept', '2022-06-08 09:25:36am', 'finished', '2022-06-08 09:27:00am', 'finished', '2022-06-08 12:02:20pm', 'accept', '2022-06-08 13:15:47pm', 'received', '2022-06-24 07:00 PM', 'finished', '2022-07-14 22:59:01pm', NULL, NULL, 'finished', '2022-06-08 15:54:33pm', '2022-06-09 04:00 PM', 'For Fence plaster work', NULL, NULL, NULL, NULL, NULL),
(77, 'VR-000073', '2022-06-07 12:00 AM', 4, 26, '2022-06-07 09:30:40', '2022-07-14 16:37:03', 'accept', '2022-06-09 13:14:14pm', 'finished', '2022-06-09 13:07:42pm', NULL, NULL, NULL, NULL, 'received', '2022-06-10 10:00 PM', 'finished', '2022-07-14 23:37:03pm', NULL, NULL, NULL, NULL, '2022-06-10 12:00 AM', '1st floor plastering work,2nd floor brick work and parapet brick work', NULL, NULL, NULL, NULL, NULL),
(78, 'VR-000074', '2022-06-07 12:00 AM', 5, 26, '2022-06-07 09:32:37', '2022-06-08 05:19:52', 'accept', '2022-06-08 12:17:09pm', 'finished', '2022-06-08 12:19:52pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', '1st floor plastering work,G Fl plastering work', NULL, NULL, NULL, NULL, NULL),
(79, 'VR-000075', '2022-06-07 12:00 AM', 5, 26, '2022-06-07 09:33:36', '2022-07-14 16:37:38', 'accept', '2022-06-08 12:18:49pm', 'finished', '2022-06-08 12:19:08pm', NULL, NULL, NULL, NULL, 'received', '2022-06-09 12:00 AM', 'finished', '2022-07-14 23:37:38pm', NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', '1st floor and G.Fl plastering work', NULL, NULL, NULL, NULL, NULL),
(80, 'VR-000076', '2022-06-07 05:00 PM', 21, 37, '2022-06-07 10:15:51', '2022-06-16 07:46:30', 'accept', '2022-06-08 09:33:43am', 'finished', '2022-06-08 09:35:05am', 'finished', '2022-06-11 10:57:02am', 'accept', '2022-06-14 16:49:19pm', 'received', '2022-06-13 04:00 PM', 'finished', '2022-06-11 14:11:36pm', NULL, NULL, 'finished', '2022-06-16 14:46:30pm', '2022-06-11 01:00 PM', 'Ground Beam', NULL, NULL, NULL, NULL, NULL),
(81, 'VR-000077', '2022-06-07 05:00 PM', 21, 37, '2022-06-07 10:16:51', '2022-06-16 07:47:39', 'accept', '2022-06-08 09:30:46am', 'finished', '2022-06-08 09:33:11am', 'finished', '2022-06-11 10:55:35am', 'accept', '2022-06-14 16:48:32pm', 'received', '2022-06-13 04:00 PM', 'finished', '2022-06-11 14:08:02pm', NULL, NULL, 'finished', '2022-06-16 14:47:39pm', '2022-06-11 01:00 PM', 'Ground Beam', NULL, '2022-06-08 09:44:26am', '1', NULL, NULL),
(82, 'VR-000078', '2022-06-08 12:00 AM', 4, 26, '2022-06-08 08:54:47', '2022-07-14 16:54:40', 'accept', '2022-06-09 10:10:07am', 'finished', '2022-06-09 10:10:42am', NULL, NULL, NULL, NULL, 'received', '2022-06-11 10:00 AM', 'finished', '2022-07-14 23:54:40pm', NULL, NULL, NULL, NULL, '2022-06-10 12:00 AM', '2nd floor DPC,Lintel and Parapet Capping', NULL, NULL, NULL, NULL, NULL),
(83, 'VR-000079', '2022-06-08 12:00 AM', 5, 26, '2022-06-08 09:16:20', '2022-06-16 07:50:39', 'accept', '2022-06-09 10:07:13am', 'finished', '2022-06-09 10:07:47am', 'finished', '2022-06-11 12:18:27pm', 'accept', '2022-06-14 16:47:56pm', 'received', '2022-06-12 11:00 AM', 'finished', '2022-06-14 18:22:47pm', NULL, NULL, 'finished', '2022-06-16 14:50:39pm', '2022-06-11 12:00 AM', 'G.Fl,1st Fl,2nd Fl plastering work', NULL, NULL, NULL, NULL, NULL),
(84, 'VR-000080', '2022-06-08 05:00 PM', 16, 44, '2022-06-08 10:22:56', '2022-06-09 04:03:00', 'reject', '2022-06-09 11:03:00am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 05:00 PM', 'Ground beam', NULL, NULL, NULL, NULL, NULL),
(85, 'VR-000081', '2022-06-08 06:00 PM', 2, 28, '2022-06-08 11:47:12', '2022-06-26 14:10:12', 'accept', '2022-06-09 12:09:21pm', 'finished', '2022-06-09 15:55:56pm', 'finished', '2022-06-11 10:26:09am', 'accept', '2022-06-14 16:45:48pm', 'received', '2022-06-10 03:00 PM', 'finished', '2022-06-26 21:10:12pm', NULL, NULL, 'finished', '2022-06-16 14:51:44pm', '2022-06-09 10:00 AM', 'Roof and Back side covering, Column FW', NULL, NULL, NULL, NULL, NULL),
(86, 'VR-000082', '2022-06-09 08:00 AM', 14, 31, '2022-06-09 01:23:51', '2022-06-26 14:42:46', 'accept', '2022-06-09 13:13:25pm', 'finished', '2022-06-09 13:13:54pm', 'finished', '2022-06-16 14:22:39pm', 'accept', '2022-06-16 15:04:06pm', 'received', '2022-06-11 09:00 AM', 'finished', '2022-06-26 21:42:46pm', NULL, NULL, 'finished', '2022-06-16 14:23:38pm', '2022-06-11 08:00 AM', 'Footing casting GL A and B', NULL, NULL, NULL, NULL, NULL),
(87, 'VR-000083', '2022-06-09 08:00 AM', 11, 31, '2022-06-09 01:26:38', '2022-06-09 03:31:42', 'reject', '2022-06-09 10:31:42am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 08:00 AM', 'Sill and lintel rebar stirrup', NULL, NULL, NULL, NULL, NULL),
(88, 'VR-000084', '2022-06-09 10:00 AM', 11, 31, '2022-06-09 03:11:25', '2022-06-15 04:11:14', 'accept', '2022-06-09 10:22:14am', 'finished', '2022-06-09 10:22:26am', NULL, NULL, NULL, NULL, 'received', '2022-06-12 11:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-11 10:00 AM', 'Wall Plastering', NULL, NULL, NULL, NULL, NULL),
(89, 'VR-000085', '2022-06-08 11:00 AM', 16, 44, '2022-06-09 04:05:52', '2022-07-14 14:54:53', 'accept', '2022-06-10 15:05:34pm', 'finished', '2022-06-10 15:06:27pm', NULL, NULL, NULL, NULL, 'received', '2022-06-13 09:00 AM', 'finished', '2022-07-14 21:54:53pm', NULL, NULL, NULL, NULL, '2022-06-11 11:00 AM', 'gtound beam ,db 10 for stirup, db 16 for main bar', NULL, NULL, NULL, NULL, NULL),
(90, 'VR-000086', '2022-06-09 12:00 PM', 12, 32, '2022-06-09 05:50:50', '2022-06-21 06:55:28', 'accept', '2022-06-09 13:19:38pm', 'finished', '2022-06-09 13:27:54pm', 'finished', '2022-06-11 12:15:43pm', 'accept', '2022-06-14 16:44:47pm', 'received', '2022-06-21 01:00 PM', 'finished', '2022-06-14 18:32:59pm', NULL, NULL, 'finished', '2022-06-16 14:17:10pm', '2022-06-11 12:00 PM', 'Plaster Work for Line 2 External Wall', NULL, NULL, NULL, NULL, NULL),
(91, 'VR-000087', '2022-06-09 01:00 PM', 12, 32, '2022-06-09 06:12:13', '2022-06-21 06:55:37', 'accept', '2022-06-09 13:19:27pm', 'finished', '2022-06-09 13:28:27pm', 'finished', '2022-06-11 12:11:12pm', 'accept', '2022-06-14 16:44:02pm', 'received', '2022-06-21 01:00 PM', 'finished', '2022-06-14 18:33:54pm', NULL, NULL, 'finished', '2022-06-16 14:15:57pm', '2022-06-11 01:00 PM', 'Plaster for Line E and Line 1 External Wall', NULL, NULL, NULL, NULL, NULL),
(92, 'VR-000088', '2022-06-09 03:00 PM', 8, 36, '2022-06-09 10:15:49', '2022-06-16 07:14:26', 'accept', '2022-06-10 10:00:46am', 'finished', '2022-06-10 10:01:00am', 'finished', '2022-06-13 17:01:19pm', 'accept', '2022-06-14 16:39:52pm', 'received', '2022-06-13 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:14:26pm', '2022-06-11 10:00 AM', 'Bricklaying work (1st floor)', NULL, NULL, NULL, NULL, NULL),
(93, 'VR-000089', '2022-06-09 03:00 PM', 8, 36, '2022-06-09 10:19:47', '2022-06-16 07:13:19', 'accept', '2022-06-10 09:59:29am', 'finished', '2022-06-10 10:00:30am', 'finished', '2022-06-11 10:44:00am', 'accept', '2022-06-14 16:39:10pm', 'received', '2022-06-13 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:13:19pm', '2022-06-11 10:00 AM', 'Bricklaying work (1st floor)', NULL, NULL, NULL, NULL, NULL),
(94, 'VR-000090', '2022-06-09 07:00 PM', 9, 22, '2022-06-09 12:53:35', '2022-07-14 14:22:34', 'accept', '2022-06-10 15:11:17pm', 'finished', '2022-06-10 15:11:41pm', NULL, NULL, NULL, NULL, 'received', '2022-06-24 07:00 PM', 'finished', '2022-07-14 21:22:34pm', NULL, NULL, NULL, NULL, '2022-06-09 12:00 AM', 'For Fence plaster work & brick work', NULL, NULL, NULL, NULL, NULL),
(95, 'VR-000091', '2022-06-09 05:00 PM', 2, 28, '2022-06-10 02:52:31', '2022-06-16 07:12:28', 'accept', '2022-06-10 09:58:41am', 'finished', '2022-06-10 09:59:05am', 'finished', '2022-06-11 10:42:57am', 'accept', '2022-06-14 16:38:34pm', 'received', '2022-06-10 11:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:12:28pm', '2022-06-10 10:00 AM', '2F Slab', NULL, NULL, NULL, NULL, NULL),
(96, 'VR-000092', '2022-06-10 11:00 AM', 21, 37, '2022-06-10 04:11:21', '2022-06-16 07:11:37', 'accept', '2022-06-10 11:26:40am', 'finished', '2022-06-10 11:27:24am', 'finished', '2022-06-11 10:31:46am', 'accept', '2022-06-14 16:37:57pm', 'received', '2022-06-13 04:00 PM', 'finished', '2022-06-15 15:06:17pm', '', '', 'finished', '2022-06-16 14:11:37pm', '2022-06-10 11:00 AM', 'Reatining Wall', NULL, NULL, NULL, NULL, NULL),
(97, 'VR-000093', '2022-06-10 11:00 AM', 21, 37, '2022-06-10 04:15:28', '2022-06-16 07:10:58', 'accept', '2022-06-10 11:26:56am', 'finished', '2022-06-10 11:28:02am', 'finished', '2022-06-10 14:08:32pm', 'accept', '2022-06-14 16:37:14pm', 'received', '2022-06-13 04:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:10:58pm', '2022-06-10 03:00 PM', 'Retaining wall', NULL, NULL, NULL, NULL, NULL),
(98, 'VR-000094', '2022-06-10 11:00 AM', 11, 31, '2022-06-10 04:20:20', '2022-06-16 07:10:15', 'accept', '2022-06-11 10:32:21am', 'finished', '2022-06-11 10:32:38am', 'finished', '2022-06-11 10:41:55am', 'accept', '2022-06-14 16:36:27pm', 'received', '2022-06-13 11:00 AM', 'finished', '2022-06-15 14:57:33pm', NULL, NULL, 'finished', '2022-06-16 14:10:15pm', '2022-06-13 11:00 AM', 'GF brick work', NULL, NULL, NULL, NULL, NULL),
(99, 'VR-000095', '2022-06-10 10:00 AM', 8, 36, '2022-06-10 06:26:36', '2022-06-16 07:09:38', 'accept', '2022-06-10 13:36:33pm', 'finished', '2022-06-10 13:36:47pm', 'finished', '2022-06-11 10:18:19am', 'accept', '2022-06-14 16:35:52pm', 'received', '2022-06-13 02:30 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 14:09:38pm', '2022-06-11 01:00 PM', 'Bricklaying work (1F)(KKST)', NULL, NULL, NULL, NULL, NULL),
(100, 'VR-000096', '2022-06-10 02:00 PM', 11, 31, '2022-06-10 07:32:56', '2022-06-26 09:06:08', 'accept', '2022-06-11 10:28:36am', 'finished', '2022-06-11 10:29:10am', 'finished', '2022-06-23 10:25:17am', 'accept', '2022-06-24 13:10:11pm', 'received', '2022-06-19 10:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-26 16:06:08pm', '2022-06-14 02:00 PM', 'GF brick work', NULL, NULL, NULL, NULL, NULL),
(101, 'VR-000097', '2022-06-10 02:00 PM', 17, 47, '2022-06-10 07:39:32', '2022-06-21 10:13:44', 'accept', '2022-06-11 09:49:49am', 'finished', '2022-06-11 09:50:51am', 'finished', '2022-06-11 10:09:26am', 'accept', '2022-06-14 16:34:29pm', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 13:33:16pm', '2022-06-11 02:00 PM', 'lean casting', NULL, NULL, NULL, NULL, NULL),
(102, 'VR-000098', '2022-06-10 03:00 PM', 11, 31, '2022-06-10 08:37:13', '2022-06-22 09:53:46', 'accept', '2022-06-22 16:50:37pm', 'finished', '2022-06-22 16:53:46pm', NULL, NULL, NULL, NULL, 'received', '2022-06-12 11:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 03:00 PM', 'DPC stiffner and lintel', NULL, NULL, NULL, NULL, NULL),
(103, 'VR-000099', '2022-06-10 04:00 PM', 16, 44, '2022-06-10 09:15:02', '2022-06-22 23:19:50', 'accept', '2022-06-11 10:12:28am', 'finished', '2022-06-11 10:15:21am', NULL, NULL, NULL, NULL, 'received', '2022-06-23 06:00 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-12 04:00 PM', 'Ground beam F.W/stair case', NULL, NULL, NULL, NULL, NULL),
(104, 'VR-000100', '2022-06-10 12:00 AM', 4, 26, '2022-06-10 10:39:18', '2022-07-14 14:37:09', 'accept', '2022-06-11 10:25:42am', 'finished', '2022-06-11 10:27:00am', 'finished', '2022-06-11 11:28:44am', 'accept', '2022-06-14 16:33:23pm', 'received', '2022-06-12 11:00 AM', 'finished', '2022-07-14 21:37:09pm', NULL, NULL, 'finished', '2022-06-16 13:31:45pm', '2022-06-12 12:00 AM', '1st floor plastering work,2nd floor brick work,parapet plastering work', NULL, NULL, NULL, NULL, NULL),
(105, 'VR-000101', '2022-06-10 12:00 AM', 4, 26, '2022-06-10 10:40:28', '2022-07-14 16:57:19', 'accept', '2022-06-11 10:17:40am', 'finished', '2022-06-11 10:17:58am', 'finished', '2022-06-11 11:24:40am', 'accept', '2022-06-14 16:32:30pm', 'received', '2022-06-12 04:00 PM', 'finished', '2022-07-14 23:57:19pm', NULL, NULL, 'finished', '2022-06-16 13:30:55pm', '2022-06-12 12:00 AM', '2nd floor brick work,parapet plastering work,1st floor plastering work', NULL, NULL, NULL, NULL, NULL),
(106, 'VR-000102', '2022-06-10 06:00 PM', 2, 28, '2022-06-10 15:02:53', '2022-06-26 14:11:48', 'accept', '2022-06-11 09:59:04am', 'finished', '2022-06-11 09:59:15am', 'finished', '2022-06-13 17:04:11pm', 'accept', '2022-06-14 16:31:19pm', 'received', '2022-06-16 08:00 AM', 'finished', '2022-06-26 21:11:48pm', NULL, NULL, 'finished', '2022-06-16 12:38:11pm', '2022-06-14 09:00 PM', 'For Column dowel bar', NULL, NULL, NULL, NULL, NULL),
(107, 'VR-000103', '2022-06-10 09:00 AM', 16, 44, '2022-06-11 02:32:54', '2022-08-14 09:18:10', 'accept', '2022-08-14 15:48:10pm', 'finished', '2022-06-11 10:30:48am', 'finished', '2022-06-11 11:15:36am', 'accept', '2022-06-14 16:30:13pm', 'received', '2022-06-13 09:00 AM', 'finished', '2022-07-15 00:07:22am', NULL, NULL, 'finished', '2022-06-16 12:37:27pm', '2022-06-11 09:00 AM', 'Footing ,lean,hardcore, retaining wall', NULL, NULL, NULL, NULL, NULL),
(108, 'VR-000104', '2022-06-11 11:00 AM', 14, 31, '2022-06-11 04:42:25', '2022-06-22 15:09:28', 'accept', '2022-06-13 09:29:48am', 'finished', '2022-06-13 09:30:40am', 'finished', '2022-06-14 18:21:36pm', 'accept', '2022-06-15 13:07:20pm', 'received', '2022-06-16 10:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:35:48pm', '2022-06-13 11:00 AM', 'For Foundation', NULL, NULL, NULL, NULL, NULL),
(109, 'VR-000105', '2022-06-11 11:00 AM', 4, 26, '2022-06-11 04:50:27', '2022-06-22 15:08:57', 'accept', '2022-06-15 16:57:53pm', 'finished', '2022-06-15 17:00:47pm', NULL, NULL, NULL, NULL, 'received', '2022-06-16 10:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 11:00 AM', 'External Plastering work', NULL, NULL, NULL, NULL, NULL),
(110, 'VR-000106', '2022-06-11 11:00 AM', 5, 26, '2022-06-11 04:51:14', '2022-06-22 15:09:34', 'accept', '2022-06-15 17:01:50pm', 'finished', '2022-06-15 17:03:15pm', NULL, NULL, NULL, NULL, 'received', '2022-06-16 10:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-14 11:00 AM', 'External plastering work', NULL, NULL, NULL, NULL, NULL),
(111, 'VR-000107', '2022-06-11 11:00 AM', 7, 22, '2022-06-11 04:55:27', '2022-07-15 14:42:14', 'accept', '2022-06-13 09:36:39am', 'finished', '2022-06-13 09:36:52am', 'finished', '2022-06-29 12:55:08pm', 'accept', '2022-07-01 10:22:19am', 'received', '2022-06-14 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:42:14pm', '2022-06-13 11:00 AM', 'For Fence work', NULL, NULL, NULL, NULL, NULL),
(112, 'VR-000108', '2022-06-11 12:00 PM', 9, 22, '2022-06-11 05:03:02', '2022-07-14 16:13:19', 'accept', '2022-06-11 14:41:59pm', 'finished', '2022-06-11 14:42:46pm', NULL, NULL, NULL, NULL, 'received', '2022-06-22 02:00 PM', 'finished', '2022-07-14 23:13:19pm', NULL, NULL, NULL, NULL, '2022-06-11 12:00 PM', 'For Fence work', NULL, NULL, NULL, NULL, NULL),
(113, 'VR-000109', '2022-06-12 09:00 AM', 14, 31, '2022-06-12 02:21:17', '2022-06-16 05:33:42', 'accept', '2022-06-13 09:52:12am', 'finished', '2022-06-13 09:52:29am', 'finished', '2022-06-14 10:56:25am', 'accept', '2022-06-14 16:29:31pm', 'received', '2022-06-14 11:00 AM', 'finished', '2022-06-15 15:02:10pm', NULL, NULL, 'finished', '2022-06-16 12:33:42pm', '2022-06-14 09:00 AM', 'For GL B footing', NULL, NULL, NULL, NULL, NULL),
(114, 'VR-000110', '2022-06-12 06:00 PM', 2, 28, '2022-06-12 11:04:06', '2022-06-16 05:33:12', 'accept', '2022-06-13 10:04:25am', 'finished', '2022-06-13 10:05:56am', 'finished', '2022-06-13 16:57:42pm', 'accept', '2022-06-14 16:28:53pm', 'received', '2022-06-16 08:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:33:12pm', '2022-06-14 09:00 AM', 'GF to 1F Column FW installation', NULL, NULL, NULL, NULL, NULL),
(115, 'VR-000111', '2022-06-12 06:00 PM', 2, 28, '2022-06-12 11:05:59', '2022-06-26 14:08:06', 'accept', '2022-06-13 10:06:14am', 'finished', '2022-06-13 10:06:57am', 'finished', '2022-06-13 17:00:14pm', 'accept', '2022-06-14 16:28:18pm', 'received', '2022-06-16 08:00 AM', 'finished', '2022-06-26 21:08:06pm', NULL, NULL, 'finished', '2022-06-16 12:32:02pm', '2022-06-14 09:00 PM', 'GF to 1F Column FW installation', NULL, NULL, NULL, NULL, NULL),
(116, 'VR-000112', '2022-06-13 09:00 AM', 16, 44, '2022-06-13 02:43:25', '2022-06-26 15:24:47', 'accept', '2022-06-15 14:31:39pm', 'finished', '2022-06-15 14:32:46pm', 'finished', '2022-06-15 17:38:55pm', 'accept', '2022-06-16 11:16:23am', 'received', '2022-06-23 06:00 AM', 'finished', '2022-06-26 22:24:47pm', NULL, NULL, 'finished', '2022-06-16 12:29:50pm', '2022-06-15 09:00 AM', 'db10for column stirup, db12 for staircase', NULL, NULL, NULL, NULL, NULL),
(117, 'VR-000113', '2022-06-12 10:00 AM', 16, 44, '2022-06-13 03:42:02', '2022-06-20 23:41:58', 'accept', '2022-06-13 11:19:09am', 'finished', '2022-06-13 11:19:27am', 'finished', '2022-06-13 17:07:26pm', 'accept', '2022-06-14 16:27:31pm', 'received', '2022-06-21 06:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:29:19pm', '2022-06-14 10:00 AM', 'retaining wall,', NULL, NULL, NULL, NULL, NULL),
(118, 'VR-000114', '2022-06-13 10:00 AM', 2, 28, '2022-06-13 03:51:44', '2022-06-22 15:03:02', 'accept', '2022-06-15 10:28:09am', 'finished', '2022-06-15 10:49:16am', 'finished', '2022-06-16 12:09:57pm', 'accept', '2022-06-16 15:03:06pm', 'received', '2022-06-18 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:15:50pm', '2022-06-16 10:00 AM', 'GF Brickwork, Roof Slab, Column ties and DPC', NULL, NULL, NULL, NULL, NULL),
(119, 'VR-000115', '2022-06-13 10:00 AM', 16, 44, '2022-06-13 04:00:28', '2022-07-14 17:08:00', 'accept', '2022-06-15 14:31:00pm', 'finished', '2022-06-15 14:31:21pm', 'finished', '2022-06-15 17:36:04pm', 'accept', '2022-06-16 11:13:19am', 'received', '2022-06-14 11:00 AM', 'finished', '2022-07-15 00:08:00am', NULL, NULL, 'finished', '2022-06-16 12:28:23pm', '2022-06-14 10:00 AM', 'Retaining wall,  lean,  hardcore', NULL, NULL, NULL, NULL, NULL),
(120, 'VR-000116', '2022-06-13 01:00 PM', 4, 26, '2022-06-13 06:44:17', '2022-06-16 05:27:20', 'accept', '2022-06-13 17:01:28pm', 'finished', '2022-06-13 17:01:59pm', 'finished', '2022-06-13 17:06:59pm', 'accept', '2022-06-14 16:26:43pm', 'received', '2022-06-14 01:00 PM', 'finished', '2022-06-15 14:10:03pm', NULL, NULL, 'finished', '2022-06-16 12:27:20pm', '2022-06-15 01:00 PM', 'Roof floor brick work,2nd floor brick work', NULL, NULL, NULL, NULL, NULL),
(121, 'VR-000117', '2022-06-13 02:00 PM', 16, 44, '2022-06-13 07:21:31', '2022-06-30 05:14:09', 'accept', '2022-06-15 10:16:47am', 'finished', '2022-06-15 10:17:28am', 'finished', '2022-06-15 17:34:40pm', 'accept', '2022-06-16 11:00:31am', 'received', '2022-06-30 12:14 PM', 'finished', '2022-06-26 22:24:05pm', NULL, NULL, 'finished', '2022-06-16 12:26:17pm', '2022-06-14 02:00 PM', 'column', NULL, NULL, NULL, NULL, NULL),
(122, 'VR-000118', '2022-06-13 04:00 PM', 5, 26, '2022-06-13 09:02:34', '2022-06-16 07:02:01', 'accept', '2022-06-14 10:21:45am', 'finished', '2022-06-14 10:22:01am', 'finished', '2022-06-15 17:32:02pm', 'accept', '2022-06-16 10:56:36am', 'received', '2022-06-15 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:24:31pm', '2022-06-15 04:00 PM', 'G.floor plastering work', NULL, '2022-06-14 13:50:15pm', '10', NULL, NULL),
(123, 'VR-000119', '2022-06-13 04:00 PM', 4, 26, '2022-06-13 09:05:49', '2022-07-14 16:58:42', 'accept', '2022-06-14 14:02:07pm', 'finished', '2022-06-14 14:02:25pm', 'finished', '2022-06-15 17:30:12pm', 'accept', '2022-06-16 10:55:57am', 'received', '2022-06-15 02:00 PM', 'finished', '2022-07-14 23:58:42pm', NULL, NULL, 'finished', '2022-06-16 12:23:15pm', '2022-06-15 04:00 PM', '2nd Floor plastering work,parapet plastering work', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`, `request_status`, `request_status_date`, `request_status_user`, `project_id`, `work_scope_id`) VALUES
(124, 'VR-000120', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:27:18', '2022-06-23 02:58:21', 'accept', '2022-06-14 10:14:54am', 'finished', '2022-06-14 10:15:08am', 'finished', '2022-06-14 18:19:10pm', 'accept', '2022-06-15 11:56:08am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:22:35pm', '2022-06-14 04:00 PM', 'Line A footing', NULL, NULL, NULL, NULL, NULL),
(125, 'VR-000121', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:28:14', '2022-06-23 02:58:36', 'accept', '2022-06-14 10:14:40am', 'finished', '2022-06-14 10:15:33am', 'finished', '2022-06-14 18:18:01pm', 'accept', '2022-06-15 11:55:21am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:21:59pm', '2022-06-14 04:00 PM', 'Line A footing', NULL, NULL, NULL, NULL, NULL),
(126, 'VR-000122', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:29:39', '2022-06-16 07:52:34', 'reject', '2022-06-16 14:52:34pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground Beam', NULL, NULL, NULL, NULL, NULL),
(127, 'VR-000123', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:31:58', '2022-06-16 07:54:21', 'reject', '2022-06-16 14:54:21pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground beam', NULL, NULL, NULL, NULL, NULL),
(128, 'VR-000124', '2022-06-13 04:00 PM', 21, 37, '2022-06-13 09:33:00', '2022-06-16 07:54:41', 'reject', '2022-06-16 14:54:41pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground beam', NULL, NULL, NULL, NULL, NULL),
(129, 'VR-000125', '2022-06-13 06:00 PM', 9, 22, '2022-06-13 11:34:22', '2022-06-26 14:26:37', 'accept', '2022-06-14 14:00:22pm', 'finished', '2022-06-14 14:00:52pm', 'finished', '2022-06-15 17:27:11pm', 'accept', '2022-06-16 10:55:30am', 'received', '2022-06-24 07:00 PM', 'finished', '2022-06-26 21:26:37pm', NULL, NULL, 'finished', '2022-06-16 12:21:13pm', '2022-06-15 06:00 PM', 'Staircase internal & External plaster work & Gtank brick work & plaster work', NULL, NULL, NULL, NULL, NULL),
(130, 'VR-000126', '2022-06-13 06:00 PM', 7, 22, '2022-06-13 11:47:48', '2022-07-14 16:04:49', 'accept', '2022-06-14 10:17:05am', 'finished', '2022-06-14 10:21:09am', 'finished', '2022-06-15 17:16:44pm', 'accept', '2022-06-16 10:51:54am', 'received', '2022-06-29 12:28 PM', 'finished', '2022-07-14 23:04:49pm', NULL, NULL, 'finished', '2022-06-16 12:18:51pm', '2022-06-15 06:00 PM', 'Parapet brick work& plaster work,DPC,Short Column concrete work, plaster work,1st floor DPC concrete work', NULL, NULL, NULL, NULL, NULL),
(131, 'VR-000127', '2022-06-14 08:00 AM', 8, 36, '2022-06-14 02:01:23', '2022-06-16 05:16:51', 'accept', '2022-06-14 10:16:44am', 'finished', '2022-06-14 11:04:16am', 'finished', '2022-06-14 15:28:48pm', 'accept', '2022-06-14 16:26:00pm', 'received', '2022-06-15 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:16:51pm', '2022-06-15 09:00 AM', 'For Verandah', NULL, '2022-06-14 13:50:02pm', '10', NULL, NULL),
(132, 'VR-000128', '2022-06-14 02:00 PM', 9, 22, '2022-06-14 07:21:42', '2022-06-26 14:18:31', 'accept', '2022-06-15 10:19:29am', 'finished', '2022-06-15 10:19:56am', 'finished', '2022-06-15 13:29:11pm', 'accept', '2022-06-16 11:00:54am', 'received', '2022-06-21 02:00 PM', 'finished', '2022-06-26 21:18:31pm', NULL, NULL, 'finished', '2022-06-16 12:16:19pm', '2022-06-16 02:00 PM', 'For Roof floor topping work 3\"thk', NULL, NULL, NULL, NULL, NULL),
(133, 'VR-000129', '2022-06-14 02:00 PM', 21, 37, '2022-06-14 07:59:54', '2022-06-16 07:56:04', 'accept', '2022-06-14 15:49:56pm', 'finished', '2022-06-14 16:20:34pm', 'finished', '2022-06-14 18:16:28pm', 'accept', '2022-06-15 11:54:08am', 'received', '2022-06-16 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 12:15:25pm', '2022-06-15 02:00 PM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(134, 'VR-000130', '2022-06-14 02:00 PM', 21, 37, '2022-06-14 08:00:50', '2022-06-26 14:26:00', 'accept', '2022-06-14 15:45:17pm', 'finished', '2022-06-14 15:45:27pm', 'finished', '2022-06-14 18:14:53pm', 'accept', '2022-06-15 11:53:20am', 'received', '2022-06-23 09:00 AM', 'finished', '2022-06-26 21:26:00pm', NULL, NULL, 'finished', '2022-06-16 12:14:46pm', '2022-06-16 02:00 PM', 'R.wall brick work', NULL, NULL, NULL, NULL, NULL),
(135, 'VR-000131', '2022-06-14 03:00 PM', 21, 37, '2022-06-14 08:01:45', '2022-06-15 04:52:25', 'accept', '2022-06-14 15:46:04pm', 'finished', '2022-06-14 15:46:27pm', 'finished', '2022-06-14 18:13:38pm', 'reject', '2022-06-15 11:52:25am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 03:00 PM', 'Column', NULL, NULL, NULL, NULL, NULL),
(136, 'VR-000132', '2022-06-14 03:00 PM', 21, 37, '2022-06-14 08:37:32', '2022-06-23 02:59:35', 'accept', '2022-06-14 15:42:39pm', 'finished', '2022-06-14 15:43:47pm', 'finished', '2022-06-15 10:45:55am', 'accept', '2022-06-15 11:47:45am', 'received', '2022-06-23 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:51:25am', '2022-06-16 03:00 PM', 'Rataining Wall/Ground Tank', NULL, NULL, NULL, NULL, NULL),
(137, 'VR-000133', '2022-06-07 05:00 PM', 11, 31, '2022-06-14 10:03:04', '2022-06-16 04:50:31', 'accept', '2022-06-15 10:21:53am', 'finished', '2022-06-15 10:22:32am', 'finished', '2022-06-15 14:25:14pm', 'accept', '2022-06-16 10:48:34am', 'received', '2022-06-09 10:00 AM', 'finished', '2022-06-15 14:27:51pm', NULL, NULL, 'finished', '2022-06-16 11:50:31am', '2022-06-09 05:00 PM', 'GT plastering and exterior wall brick work', NULL, NULL, NULL, NULL, NULL),
(138, 'VR-000134', '2022-06-14 05:00 PM', 4, 26, '2022-06-14 10:52:45', '2022-06-26 14:17:17', 'accept', '2022-06-15 10:23:04am', 'finished', '2022-06-15 10:23:18am', 'finished', '2022-06-15 13:26:38pm', 'accept', '2022-06-16 10:47:56am', 'received', '2022-06-16 02:00 PM', 'finished', '2022-06-26 21:17:17pm', NULL, NULL, 'finished', '2022-06-16 11:50:04am', '2022-06-16 05:00 PM', 'External wall plastering work', NULL, NULL, NULL, NULL, NULL),
(139, 'VR-000135', '2022-06-14 05:00 PM', 5, 26, '2022-06-14 11:00:41', '2022-06-26 14:16:04', 'accept', '2022-06-15 14:18:28pm', 'finished', '2022-06-15 14:21:09pm', 'finished', '2022-06-15 16:27:57pm', 'accept', '2022-06-16 10:46:07am', 'received', '2022-06-16 02:00 PM', 'finished', '2022-06-26 21:16:04pm', NULL, NULL, 'finished', '2022-06-16 11:36:55am', '2022-06-16 05:00 PM', 'External plastering work,2nd FL internal plastering work', NULL, NULL, NULL, NULL, NULL),
(140, 'VR-000136', '2022-06-14 06:00 PM', 14, 31, '2022-06-14 11:53:13', '2022-06-16 04:36:07', 'accept', '2022-06-15 10:03:46am', 'finished', '2022-06-15 10:04:02am', 'finished', '2022-06-15 10:34:01am', 'accept', '2022-06-15 11:45:49am', 'received', '2022-06-15 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:36:07am', '2022-06-15 06:00 PM', 'GL A and B short col', NULL, NULL, NULL, NULL, NULL),
(141, 'VR-000137', '2022-06-15 08:00 AM', 4, 26, '2022-06-15 01:59:18', '2022-07-14 16:59:33', 'accept', '2022-06-15 10:27:17am', 'finished', '2022-06-15 10:29:22am', 'finished', '2022-06-15 10:39:47am', 'accept', '2022-06-15 11:43:42am', 'received', '2022-06-17 03:00 PM', 'finished', '2022-07-14 23:59:33pm', NULL, NULL, 'finished', '2022-06-16 11:35:29am', '2022-06-17 08:00 AM', 'External plastering work,2nd FL plastering work', NULL, NULL, NULL, NULL, NULL),
(142, 'VR-000138', '2022-06-15 08:00 AM', 4, 26, '2022-06-15 01:59:54', '2022-07-14 17:00:08', 'accept', '2022-06-15 10:30:01am', 'finished', '2022-06-15 10:31:55am', 'finished', '2022-06-15 10:37:41am', 'accept', '2022-06-15 11:43:14am', 'received', '2022-06-18 03:00 PM', 'finished', '2022-07-15 00:00:08am', NULL, NULL, 'finished', '2022-06-16 11:35:02am', '2022-06-18 08:00 AM', 'External plastering work,2nd FL plastering work', NULL, NULL, NULL, NULL, NULL),
(143, 'VR-000139', '2022-06-15 08:00 AM', 4, 26, '2022-06-15 02:00:30', '2022-07-14 17:00:57', 'accept', '2022-06-15 10:32:07am', 'finished', '2022-06-15 10:32:55am', 'finished', '2022-06-15 10:36:42am', 'accept', '2022-06-15 11:42:44am', 'received', '2022-06-19 03:00 PM', 'finished', '2022-07-15 00:00:57am', NULL, NULL, 'finished', '2022-06-16 11:34:23am', '2022-06-19 08:00 AM', 'External plastering work,2nd FL plastering work', NULL, NULL, NULL, NULL, NULL),
(144, 'VR-000140', '2022-06-15 09:00 AM', 5, 26, '2022-06-15 02:02:11', '2022-06-21 08:20:46', 'accept', '2022-06-15 14:17:33pm', 'finished', '2022-06-15 14:17:49pm', 'finished', '2022-06-15 16:21:25pm', 'accept', '2022-06-16 10:45:00am', 'received', '2022-06-17 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:33:53am', '2022-06-17 09:00 AM', '2nd FL plastering work,G.FL plastering and external plastering', NULL, NULL, NULL, NULL, NULL),
(145, 'VR-000141', '2022-06-15 09:00 AM', 5, 26, '2022-06-15 02:03:08', '2022-06-21 08:21:25', 'accept', '2022-06-15 14:15:41pm', 'finished', '2022-06-15 14:17:12pm', 'finished', '2022-06-15 16:20:25pm', 'accept', '2022-06-16 10:43:58am', 'received', '2022-06-18 03:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:33:05am', '2022-06-19 09:00 AM', '2nd FL plastering,G.FL plastering and external plastering', NULL, NULL, NULL, NULL, NULL),
(146, 'VR-000142', '2022-06-15 09:00 AM', 5, 26, '2022-06-15 02:04:45', '2022-06-16 03:43:14', 'accept', '2022-06-15 14:13:57pm', 'finished', '2022-06-15 14:14:19pm', 'finished', '2022-06-15 16:16:33pm', 'reject', '2022-06-16 10:43:14am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 09:00 AM', '2nd FL plastering,G.FL plastering and external plastering', NULL, NULL, NULL, NULL, NULL),
(147, 'VR-000143', '2022-06-15 10:00 AM', 9, 22, '2022-06-15 04:01:43', '2022-07-14 16:14:17', 'accept', '2022-06-15 14:35:48pm', 'finished', '2022-06-15 14:36:21pm', 'finished', '2022-06-15 15:40:09pm', 'reject', '2022-06-16 10:42:21am', 'received', '2022-06-21 02:00 PM', 'finished', '2022-07-14 23:14:17pm', NULL, NULL, NULL, NULL, '2022-06-16 10:00 AM', 'For roof floor topping work', NULL, NULL, NULL, NULL, NULL),
(148, 'VR-000144', '2022-06-15 11:00 AM', 11, 31, '2022-06-15 04:14:26', '2022-06-23 05:05:47', 'accept', '2022-06-16 11:01:04am', 'finished', '2022-06-16 11:01:57am', 'finished', '2022-06-16 13:45:04pm', 'accept', '2022-06-16 15:01:48pm', 'received', '2022-06-19 07:00 AM', 'finished', '2022-06-23 12:05:47pm', NULL, NULL, 'finished', '2022-06-16 15:17:51pm', '2022-06-17 11:00 AM', 'GF Plastering', NULL, NULL, NULL, NULL, NULL),
(149, 'VR-000145', '2022-06-15 11:00 AM', 17, 47, '2022-06-15 04:31:51', '2022-06-21 10:12:52', 'accept', '2022-06-15 13:14:24pm', 'finished', '2022-06-15 13:14:38pm', 'finished', '2022-06-15 15:58:29pm', 'accept', '2022-06-16 10:41:30am', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 11:32:38am', '2022-06-15 11:00 AM', 'Earthwork Excavation', NULL, NULL, NULL, NULL, NULL),
(150, 'VR-000146', '2022-06-15 03:00 PM', 8, 36, '2022-06-15 08:15:56', '2022-06-16 08:28:20', 'accept', '2022-06-16 10:48:19am', 'finished', '2022-06-16 10:48:43am', 'finished', '2022-06-16 11:20:48am', 'accept', '2022-06-16 15:01:13pm', 'received', '2022-06-16 01:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:28:20pm', '2022-06-16 10:00 AM', 'Bricklaying Work (1F)(KKST)', NULL, NULL, NULL, NULL, NULL),
(151, 'VR-000147', '2022-06-15 03:00 PM', 8, 36, '2022-06-15 08:21:42', '2022-06-20 02:53:02', 'accept', '2022-06-16 10:47:40am', 'finished', '2022-06-16 10:48:00am', 'finished', '2022-06-16 11:20:16am', 'accept', '2022-06-16 15:00:30pm', 'received', '2022-06-18 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:19:01pm', '2022-06-19 10:00 AM', 'Bricklaying Work (1F)(KKST)', NULL, NULL, NULL, NULL, NULL),
(152, 'VR-000148', '2022-06-15 05:00 PM', 16, 44, '2022-06-15 10:23:11', '2022-07-14 17:08:37', 'accept', '2022-06-16 14:14:56pm', 'finished', '2022-06-16 14:16:46pm', 'finished', '2022-06-16 15:14:46pm', 'accept', '2022-06-16 15:24:05pm', 'received', '2022-06-21 06:00 AM', 'finished', '2022-07-15 00:08:37am', NULL, NULL, 'finished', '2022-06-16 15:27:33pm', '2022-06-15 05:00 PM', 'rebar installation lean hardcore brickwork', NULL, NULL, NULL, NULL, NULL),
(153, 'VR-000149', '2022-06-15 11:00 AM', 2, 28, '2022-06-16 01:47:45', '2022-06-22 15:02:09', 'accept', '2022-06-16 10:45:15am', 'finished', '2022-06-16 10:47:08am', 'finished', '2022-06-16 11:49:08am', 'accept', '2022-06-16 14:59:53pm', 'received', '2022-06-18 09:00 AM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:17:01pm', '2022-06-18 08:00 AM', 'GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(154, 'VR-000150', '2022-06-14 01:00 PM', 9, 22, '2022-06-16 06:50:49', '2022-07-14 16:14:44', 'accept', '2022-06-16 15:07:16pm', 'finished', '2022-06-16 15:11:32pm', 'finished', '2022-06-16 15:12:58pm', 'accept', '2022-06-16 15:22:49pm', 'received', '2022-06-21 02:00 PM', 'finished', '2022-07-14 23:14:44pm', NULL, NULL, 'finished', '2022-06-16 15:27:05pm', '2022-06-15 01:00 PM', 'For roof floor topping work', NULL, NULL, NULL, NULL, NULL),
(155, 'VR-000151', '2022-06-15 02:00 PM', 5, 26, '2022-06-16 07:01:22', '2022-06-23 10:36:56', 'accept', '2022-06-16 14:15:34pm', 'finished', '2022-06-16 14:15:53pm', 'finished', '2022-06-16 15:04:25pm', 'accept', '2022-06-16 15:22:27pm', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-16 15:26:21pm', '2022-06-21 02:00 PM', '2nd FL plastering,G.FL plastering and external plastering', NULL, NULL, NULL, NULL, NULL),
(156, 'VR-000152', '2022-06-16 03:00 PM', 21, 37, '2022-06-16 07:55:33', '2022-06-16 07:57:13', 'reject', '2022-06-16 14:57:13pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-16 04:00 PM', 'Ground Beam', NULL, NULL, NULL, NULL, NULL),
(157, 'VR-000153', '2022-06-16 02:00 PM', 21, 37, '2022-06-16 08:00:53', '2022-06-26 15:17:25', 'accept', '2022-06-16 15:01:08pm', 'finished', '2022-06-16 15:01:37pm', 'finished', '2022-06-16 15:11:38pm', 'accept', '2022-06-16 15:22:02pm', 'received', '2022-06-20 10:00 AM', 'finished', '2022-06-26 22:17:25pm', NULL, NULL, 'finished', '2022-06-16 15:25:41pm', '2022-06-20 02:00 PM', 'Ground Beam', NULL, NULL, NULL, NULL, NULL),
(158, 'VR-000154', '2022-06-09 12:00 PM', 11, 31, '2022-06-17 05:21:50', '2022-06-23 04:49:01', 'accept', '2022-06-21 11:08:36am', 'finished', '2022-06-21 11:08:53am', 'finished', '2022-06-21 11:12:30am', 'accept', '2022-06-21 11:59:10am', 'received', '2022-06-12 02:00 PM', 'finished', '2022-06-23 11:49:01am', NULL, NULL, 'finished', '2022-06-21 14:23:16pm', '2022-06-12 12:00 PM', 'GF brick work and plastering', NULL, NULL, NULL, NULL, NULL),
(159, 'VR-000155', '2022-06-20 09:00 AM', 8, 36, '2022-06-20 02:52:34', '2022-06-26 09:05:38', 'accept', '2022-06-21 09:38:22am', 'finished', '2022-06-21 09:43:01am', 'finished', '2022-06-24 10:34:20am', 'accept', '2022-06-24 13:08:41pm', 'received', '2022-06-25 03:21 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-26 16:05:38pm', '2022-06-23 09:00 AM', 'Bricklaying work (2F)', NULL, NULL, NULL, NULL, NULL),
(160, 'VR-000156', '2022-06-20 10:00 AM', 6, 25, '2022-06-20 03:04:35', '2022-07-14 15:29:14', 'accept', '2022-06-20 13:17:03pm', 'finished', '2022-06-20 13:17:19pm', 'finished', '2022-06-21 10:25:11am', 'accept', '2022-06-21 11:57:44am', 'received', '2022-06-23 12:00 PM', 'finished', '2022-07-14 22:29:14pm', NULL, NULL, 'finished', '2022-06-21 13:14:03pm', '2022-06-23 12:00 AM', 'For Topping Work', NULL, NULL, NULL, NULL, NULL),
(161, 'VR-000157', '2022-06-20 10:00 AM', 6, 25, '2022-06-20 03:05:55', '2022-06-23 05:09:39', 'accept', '2022-06-20 13:10:42pm', 'finished', '2022-06-20 13:11:04pm', 'finished', '2022-06-21 10:36:43am', 'accept', '2022-06-21 11:56:10am', 'received', '2022-06-23 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:12:51pm', '2022-06-21 09:00 AM', 'For Topping Work', NULL, NULL, NULL, NULL, NULL),
(162, 'VR-000158', '2022-06-20 10:00 AM', 21, 37, '2022-06-20 03:12:03', '2022-06-20 04:26:13', 'reject', '2022-06-20 11:26:13am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 10:00 AM', 'R.wall,Ground beam Lean', NULL, NULL, NULL, NULL, NULL),
(163, 'VR-000159', '2022-06-20 10:00 AM', 21, 37, '2022-06-20 03:12:03', '2022-06-20 04:25:55', 'reject', '2022-06-20 11:25:55am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 10:00 AM', 'R.wall,Ground beam Lean', NULL, NULL, NULL, NULL, NULL),
(164, 'VR-000160', '2022-06-20 10:00 AM', 21, 37, '2022-06-20 03:12:04', '2022-06-21 10:16:20', 'accept', '2022-06-21 09:16:45am', 'finished', '2022-06-21 09:38:49am', 'finished', '2022-06-21 10:32:46am', 'accept', '2022-06-21 11:55:51am', 'received', '2022-06-21 05:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:09:03pm', '2022-06-20 10:00 AM', 'R.wall,Ground beam Lean', NULL, NULL, NULL, NULL, NULL),
(165, 'VR-000161', '2022-06-20 01:00 PM', 5, 26, '2022-06-20 06:36:30', '2022-06-26 15:16:17', 'accept', '2022-06-21 09:37:57am', 'finished', '2022-06-21 09:40:17am', 'finished', '2022-06-21 10:30:30am', 'accept', '2022-06-21 11:55:23am', 'received', '2022-06-22 10:00 PM', 'finished', '2022-06-26 22:16:17pm', NULL, NULL, 'finished', '2022-06-21 13:07:05pm', '2022-06-22 01:00 PM', 'External plastering work for Elevation B,C,A', NULL, NULL, NULL, NULL, NULL),
(166, 'VR-000162', '2022-06-20 01:00 PM', 5, 26, '2022-06-20 06:37:07', '2022-06-24 07:01:16', 'accept', '2022-06-21 09:40:52am', 'finished', '2022-06-21 09:41:57am', 'finished', '2022-06-21 10:29:33am', 'accept', '2022-06-21 11:54:04am', 'received', '2022-06-24 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:02:26pm', '2022-06-22 01:00 PM', 'External plastering work for Elevation B,C,A', NULL, NULL, NULL, NULL, NULL),
(167, 'VR-000163', '2022-06-20 02:00 PM', 17, 47, '2022-06-20 07:55:02', '2022-06-24 06:07:59', 'accept', '2022-06-21 09:57:21am', 'finished', '2022-06-21 09:57:47am', 'finished', '2022-06-23 10:36:04am', 'accept', '2022-06-24 13:07:59pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:40:31pm', '2022-06-21 02:00 PM', 'GL D and B Earthwork', NULL, NULL, NULL, NULL, NULL),
(168, 'VR-000164', '2022-06-20 04:00 PM', 17, 47, '2022-06-20 09:29:56', '2022-06-22 07:52:26', 'accept', '2022-06-21 09:58:49am', 'finished', '2022-06-21 09:59:39am', 'finished', '2022-06-21 10:59:24am', 'accept', '2022-06-21 11:53:20am', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-21 13:01:12pm', '2022-06-20 04:00 PM', 'GL-D casting', NULL, NULL, NULL, NULL, NULL),
(169, 'VR-000165', '2022-06-20 06:00 PM', 12, 32, '2022-06-20 14:32:31', '2022-06-28 13:51:18', 'accept', '2022-06-21 10:01:57am', 'finished', '2022-06-21 10:02:14am', 'finished', '2022-06-21 10:26:35am', 'accept', '2022-06-21 11:52:13am', 'received', '2022-06-28 08:49 PM', 'finished', '2022-06-26 22:14:20pm', NULL, NULL, 'finished', '2022-06-21 13:01:52pm', '2022-06-22 06:00 AM', 'Internal Wall Plasterwork', NULL, NULL, NULL, NULL, NULL),
(170, 'VR-000166', '2022-06-20 06:00 AM', 16, 44, '2022-06-20 23:45:48', '2022-07-14 14:09:03', 'accept', '2022-06-21 10:05:32am', 'finished', '2022-06-21 10:06:00am', 'finished', '2022-06-21 10:16:17am', 'reject', '2022-06-21 11:51:00am', 'received', '2022-06-23 06:00 AM', 'finished', '2022-07-14 21:09:03pm', NULL, NULL, NULL, NULL, '2022-06-22 12:00 AM', 'ground beam casting lean footing', NULL, NULL, NULL, NULL, NULL),
(171, 'VR-000167', '2022-06-21 10:00 AM', 16, 44, '2022-06-21 03:25:21', '2022-06-21 03:28:32', 'reject', '2022-06-21 10:28:32am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 10:00 AM', 'Ground beam casting, lean,footing', NULL, NULL, NULL, NULL, NULL),
(172, 'VR-000168', '2022-06-21 10:00 AM', 16, 44, '2022-06-21 03:26:37', '2022-07-14 14:06:26', 'accept', '2022-06-21 10:28:43am', 'finished', '2022-06-21 10:29:08am', 'finished', '2022-06-21 10:31:25am', 'accept', '2022-06-21 11:50:38am', 'received', '2022-06-23 06:00 AM', 'finished', '2022-07-14 21:06:26pm', NULL, NULL, 'finished', '2022-06-21 12:52:13pm', '2022-06-22 10:00 AM', 'Footing ,ground beam casting, lean', NULL, NULL, NULL, NULL, NULL),
(173, 'VR-000169', '2022-06-21 01:00 PM', 9, 22, '2022-06-21 07:02:07', '2022-06-26 14:56:41', 'accept', '2022-06-22 10:33:06am', 'finished', '2022-06-22 10:33:52am', 'finished', '2022-06-22 17:06:03pm', 'accept', '2022-06-24 13:11:20pm', 'received', '2022-06-24 07:00 PM', 'finished', '2022-06-26 21:56:41pm', NULL, NULL, 'finished', '2022-06-23 16:48:00pm', '2022-06-23 01:00 PM', 'For Gfloor sub-floor concrete work,Gfloor internal stair brick work & plaster work,Main stair topping work, Varendah kicker concrete work, staircase slab topping work', NULL, NULL, NULL, NULL, NULL),
(174, 'VR-000170', '2022-06-21 02:00 PM', 7, 22, '2022-06-21 07:09:07', '2022-07-13 16:19:48', 'accept', '2022-06-21 17:33:50pm', 'finished', '2022-06-21 17:34:22pm', NULL, NULL, NULL, NULL, 'received', '2022-07-06 11:13 AM', 'finished', '2022-07-13 23:19:48pm', NULL, NULL, NULL, NULL, '2022-06-24 02:00 PM', 'For 2nd floor brick work ,DPC concrete work', NULL, NULL, NULL, NULL, NULL),
(175, 'VR-000171', '2022-06-21 02:00 PM', 11, 31, '2022-06-21 07:18:14', '2022-06-22 09:49:14', 'reject', '2022-06-22 16:49:14pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 02:00 PM', 'External Scaffolding', NULL, NULL, NULL, NULL, NULL),
(176, 'VR-000172', '2022-06-21 03:00 PM', 5, 26, '2022-06-21 08:18:31', '2022-07-13 15:48:13', 'accept', '2022-06-22 09:53:17am', 'finished', '2022-06-22 09:59:44am', 'finished', '2022-06-23 15:11:17pm', 'accept', '2022-06-24 13:06:07pm', 'received', '2022-06-24 12:34 PM', 'finished', '2022-06-25 11:38:47am', 'finished', '2022-07-13 22:48:13pm', 'finished', '2022-06-23 16:41:57pm', '2022-06-24 03:00 PM', 'Lintel installation at 1st FLoor Elevation A', NULL, NULL, NULL, NULL, NULL),
(177, 'VR-000173', '2022-06-21 03:00 PM', 9, 22, '2022-06-21 08:32:27', '2022-06-24 06:04:51', 'accept', '2022-06-22 10:46:08am', 'finished', '2022-06-22 10:46:27am', 'finished', '2022-06-23 15:09:08pm', 'accept', '2022-06-24 13:04:51pm', 'received', '2022-06-22 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:41:25pm', '2022-06-22 03:00 PM', 'For Gfloor sub-floor concrete work', NULL, NULL, NULL, NULL, NULL),
(178, 'VR-000174', '2022-06-21 04:00 PM', 11, 31, '2022-06-21 09:44:49', '2022-07-15 03:03:41', 'accept', '2022-06-22 10:17:56am', 'finished', '2022-06-22 10:20:47am', 'finished', '2022-06-23 10:19:59am', 'accept', '2022-06-24 13:04:24pm', 'received', '2022-06-27 04:37 PM', 'finished', '2022-07-15 10:03:41am', NULL, NULL, 'finished', '2022-06-26 16:05:09pm', '2022-06-23 04:00 PM', 'Roofing', NULL, NULL, NULL, NULL, NULL),
(179, 'VR-000175', '2022-06-21 04:00 PM', 14, 31, '2022-06-21 09:57:39', '2022-06-29 10:06:46', 'accept', '2022-06-23 11:46:36am', 'finished', '2022-06-23 11:46:56am', 'finished', '2022-06-24 10:30:10am', 'accept', '2022-06-24 13:03:35pm', 'received', '2022-06-28 05:06 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-26 16:04:52pm', '2022-06-23 04:00 PM', 'GL C to E backfilling work', NULL, NULL, NULL, NULL, NULL),
(180, 'VR-000176', '2022-06-21 05:00 PM', 17, 47, '2022-06-21 10:04:35', '2022-06-27 06:11:24', 'accept', '2022-06-22 09:30:15am', 'finished', '2022-06-22 09:30:30am', 'finished', '2022-06-23 15:08:00pm', 'accept', '2022-06-23 15:38:26pm', 'received', '2022-06-27 01:11 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:34:14pm', '2022-06-21 05:00 PM', 'Footing casting', NULL, NULL, NULL, NULL, NULL),
(181, 'VR-000177', '2022-06-21 05:00 PM', 17, 47, '2022-06-21 10:14:47', '2022-06-27 06:11:40', 'accept', '2022-06-22 09:28:52am', 'finished', '2022-06-22 09:29:20am', 'finished', '2022-06-23 10:49:59am', 'accept', '2022-06-23 15:34:29pm', 'received', '2022-06-27 01:11 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:37:20pm', '2022-06-21 05:00 PM', 'Lean & Footing', NULL, NULL, NULL, NULL, NULL),
(182, 'VR-000178', '2022-06-21 05:00 PM', 17, 47, '2022-06-21 10:15:39', '2022-06-22 02:27:34', 'reject', '2022-06-22 09:27:34am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-21 05:00 PM', 'Lean & footing', NULL, NULL, NULL, NULL, NULL),
(183, 'VR-000179', '2022-06-21 05:00 PM', 21, 37, '2022-06-21 10:18:32', '2022-06-29 06:21:32', 'accept', '2022-06-22 09:25:00am', 'finished', '2022-06-22 09:25:11am', 'finished', '2022-06-23 10:59:45am', 'accept', '2022-06-23 15:33:38pm', 'received', '2022-06-29 01:20 PM', 'finished', '2022-06-26 21:56:06pm', NULL, NULL, 'finished', '2022-06-23 16:36:41pm', '2022-06-24 05:00 PM', 'Ground tank/BG Lean/R.WALL', NULL, NULL, NULL, NULL, NULL),
(184, 'VR-000180', '2022-06-21 05:00 PM', 21, 37, '2022-06-21 10:19:24', '2022-06-22 02:22:06', 'accept', '2022-06-22 09:21:46am', 'finished', '2022-06-22 09:22:06am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 05:00 PM', 'Ground tank', NULL, NULL, NULL, NULL, NULL),
(185, 'VR-000181', '2022-06-21 05:00 PM', 2, 28, '2022-06-21 15:54:51', '2022-06-26 15:11:18', 'accept', '2022-06-22 10:08:54am', 'finished', '2022-06-22 10:14:46am', 'finished', '2022-06-23 16:26:15pm', 'accept', '2022-06-24 13:02:58pm', 'received', '2022-06-24 01:00 PM', 'finished', '2022-06-26 22:11:18pm', NULL, NULL, 'finished', '2022-06-23 16:36:10pm', '2022-06-24 09:00 AM', 'Roof, Stair roof slab & Column ties', NULL, NULL, NULL, NULL, NULL),
(186, 'VR-000182', '2022-06-22 10:00 AM', 17, 47, '2022-06-22 03:19:07', '2022-06-23 02:49:01', 'reject', '2022-06-23 09:49:01am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-22 10:00 AM', 'Short Column', NULL, NULL, NULL, NULL, NULL),
(187, 'VR-000183', '2022-06-22 02:00 PM', 17, 47, '2022-06-22 07:07:46', '2022-06-29 07:38:58', 'accept', '2022-06-23 09:55:37am', 'finished', '2022-06-23 09:55:50am', NULL, NULL, NULL, NULL, 'received', '2022-06-29 02:38 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-24 02:00 PM', 'Line D RW Brickwork', NULL, NULL, NULL, NULL, NULL),
(188, 'VR-000184', '2022-06-22 02:00 PM', 9, 22, '2022-06-22 07:19:57', '2022-06-25 07:21:41', 'accept', '2022-06-23 11:16:45am', 'finished', '2022-06-23 11:16:59am', 'finished', '2022-06-23 15:05:11pm', 'accept', '2022-06-23 15:32:17pm', 'received', '2022-06-25 02:21 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-23 16:28:45pm', '2022-06-23 02:00 PM', 'For Gfloor sub-floor', NULL, NULL, NULL, NULL, NULL),
(189, 'VR-000185', '2022-06-22 02:00 PM', 7, 22, '2022-06-22 07:28:19', '2022-06-24 12:20:49', 'accept', '2022-06-23 09:55:13am', 'finished', '2022-06-23 09:55:25am', 'finished', '2022-06-23 15:04:12pm', 'accept', '2022-06-23 15:31:51pm', 'received', '2022-06-24 07:00 PM', 'finished', '2022-06-24 12:45:50pm', NULL, NULL, 'finished', '2022-06-23 16:35:37pm', '2022-06-25 02:00 PM', 'For scaffolding', NULL, NULL, NULL, NULL, NULL),
(190, 'VR-000186', '2022-06-23 09:00 AM', 17, 47, '2022-06-23 02:35:56', '2022-06-27 09:30:33', 'accept', '2022-06-24 19:53:11pm', 'finished', '2022-06-24 19:54:41pm', 'finished', '2022-06-26 16:26:48pm', 'accept', '2022-06-27 16:30:33pm', 'received', '2022-06-27 03:34 PM', 'finished', '2022-06-26 22:09:14pm', NULL, NULL, 'finished', '2022-06-26 22:08:35pm', '2022-06-23 09:00 AM', 'GL B & A\'', NULL, NULL, NULL, NULL, NULL),
(191, 'VR-000187', '2022-06-23 10:00 AM', 4, 26, '2022-06-23 03:38:35', '2022-07-13 16:06:23', 'accept', '2022-06-23 11:15:54am', 'finished', '2022-06-23 11:16:09am', 'finished', '2022-06-23 15:02:21pm', 'accept', '2022-06-23 15:29:41pm', 'received', '2022-06-24 12:35 PM', 'finished', '2022-07-13 23:06:23pm', NULL, NULL, 'finished', '2022-06-23 16:34:42pm', '2022-06-25 10:00 AM', 'External plastering work elevation B,C,A', NULL, NULL, NULL, NULL, NULL),
(192, 'VR-000188', '2022-06-23 12:00 PM', 6, 25, '2022-06-23 05:13:12', '2022-07-13 15:54:20', 'accept', '2022-06-24 10:47:29am', 'finished', '2022-06-24 10:52:57am', 'finished', '2022-06-24 11:31:07am', 'accept', '2022-06-24 13:01:57pm', NULL, NULL, 'finished', '2022-07-13 22:54:20pm', NULL, NULL, 'finished', '2022-06-26 15:57:15pm', '2022-06-25 12:00 PM', 'for painting Work', NULL, NULL, NULL, NULL, NULL),
(193, 'VR-000189', '2022-06-23 12:00 PM', 6, 25, '2022-06-23 05:19:45', '2022-07-13 15:55:14', 'accept', '2022-06-24 10:45:09am', 'finished', '2022-06-24 10:46:30am', 'finished', '2022-06-24 11:29:59am', 'accept', '2022-06-24 13:00:22pm', 'received', '2022-06-27 11:38 AM', 'finished', '2022-07-13 22:55:14pm', NULL, NULL, 'finished', '2022-06-26 16:03:59pm', '2022-06-25 12:00 PM', 'For Painting Work', NULL, NULL, NULL, NULL, NULL),
(194, 'VR-000190', '2022-06-23 02:00 PM', 6, 25, '2022-06-23 07:41:18', '2022-06-27 04:38:56', 'accept', '2022-06-24 10:44:26am', 'finished', '2022-06-24 10:44:56am', 'finished', '2022-06-24 11:19:50am', 'accept', '2022-06-24 12:59:31pm', 'received', '2022-06-27 11:38 AM', 'finished', '2022-06-25 11:31:27am', NULL, NULL, 'finished', '2022-06-26 16:04:18pm', '2022-06-25 02:00 PM', 'For painting work', NULL, NULL, NULL, NULL, NULL),
(195, 'VR-000191', '2022-06-23 03:00 PM', 21, 37, '2022-06-23 08:34:58', '2022-07-03 11:01:54', 'accept', '2022-06-24 19:17:37pm', 'finished', '2022-06-24 19:19:17pm', NULL, NULL, NULL, NULL, 'received', '2022-07-03 06:00 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:00 PM', 'G.F Column', NULL, NULL, NULL, NULL, NULL),
(196, 'VR-000192', '2022-06-23 03:00 PM', 21, 37, '2022-06-23 08:36:04', '2022-07-14 08:58:53', 'accept', '2022-06-24 19:24:07pm', 'finished', '2022-06-24 19:24:56pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 03:58 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:00 PM', 'G.F Column', NULL, NULL, NULL, NULL, NULL),
(197, 'VR-000193', '2022-06-23 03:00 PM', 21, 37, '2022-06-23 08:36:49', '2022-06-24 07:27:13', 'reject', '2022-06-24 14:27:13pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 03:00 PM', 'G.F Column', NULL, NULL, NULL, NULL, NULL),
(198, 'VR-000194', '2022-06-23 03:00 PM', 4, 26, '2022-06-23 08:42:20', '2022-07-15 14:43:32', 'accept', '2022-06-24 10:43:43am', 'finished', '2022-06-24 10:44:04am', 'finished', '2022-06-29 17:25:39pm', 'accept', '2022-06-30 15:39:27pm', 'received', '2022-06-24 12:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:43:32pm', '2022-06-25 03:00 PM', 'External plastering work Elevation B,C,A', NULL, NULL, NULL, NULL, NULL),
(199, 'VR-000195', '2022-06-23 04:00 PM', 11, 31, '2022-06-23 09:08:11', '2022-06-27 09:37:13', 'accept', '2022-06-24 10:42:53am', 'finished', '2022-06-24 10:43:19am', NULL, NULL, NULL, NULL, 'received', '2022-06-27 04:36 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-25 04:00 PM', 'GF Plastering', NULL, NULL, NULL, NULL, NULL),
(200, 'VR-000196', '2022-06-23 04:00 PM', 14, 31, '2022-06-23 09:10:58', '2022-06-27 09:36:25', 'accept', '2022-06-25 10:24:28am', 'finished', '2022-06-25 10:32:26am', 'finished', '2022-06-26 15:53:00pm', 'accept', '2022-06-27 16:29:42pm', 'received', '2022-06-27 04:35 PM', 'finished', '2022-06-26 22:02:19pm', NULL, NULL, 'finished', '2022-06-26 22:07:24pm', '2022-06-27 04:00 PM', 'GB and Stripfooting (emergency stair area)', NULL, NULL, NULL, NULL, NULL),
(201, 'VR-000197', '2022-06-24 02:00 PM', 16, 44, '2022-06-24 07:18:29', '2022-06-30 05:14:38', 'accept', '2022-06-27 10:39:27am', 'finished', '2022-06-28 15:29:56pm', NULL, NULL, NULL, NULL, 'received', '2022-06-30 12:14 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 02:00 PM', 'column', NULL, NULL, NULL, NULL, NULL),
(202, 'VR-000198', '2022-06-24 02:00 PM', 16, 44, '2022-06-24 07:32:02', '2022-06-30 05:14:24', 'accept', '2022-06-27 10:36:16am', 'finished', '2022-06-27 10:39:16am', NULL, NULL, NULL, NULL, 'received', '2022-06-30 12:14 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-26 02:00 PM', 'Column', NULL, NULL, NULL, NULL, NULL),
(203, 'VR-000199', '2022-06-24 05:00 PM', 17, 47, '2022-06-24 10:03:58', '2022-06-27 09:25:42', 'accept', '2022-06-25 09:52:14am', 'finished', '2022-06-25 09:52:43am', 'finished', '2022-06-26 16:03:35pm', 'accept', '2022-06-27 16:25:42pm', 'received', '2022-06-27 01:11 PM', 'finished', '2022-06-26 22:06:39pm', NULL, NULL, 'finished', '2022-06-26 22:05:10pm', '2022-06-24 05:00 PM', 'Line C Hardcore', NULL, NULL, NULL, NULL, NULL),
(204, 'VR-000200', '2022-06-24 06:00 PM', 9, 22, '2022-06-24 12:00:16', '2022-07-15 14:44:19', 'accept', '2022-06-27 10:34:55am', 'finished', '2022-06-27 10:35:09am', 'finished', '2022-07-01 23:00:21pm', 'accept', '2022-07-04 12:30:11pm', 'received', '2022-06-25 02:19 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:44:19pm', '2022-06-25 06:00 PM', 'For Gfloor sub-floor work', NULL, NULL, NULL, NULL, NULL),
(205, 'VR-000201', '2022-06-25 09:02 AM', 8, 36, '2022-06-25 02:04:11', '2022-07-01 08:59:51', 'accept', '2022-06-25 09:47:16am', 'finished', '2022-06-25 09:47:29am', 'finished', '2022-06-29 23:21:01pm', 'accept', '2022-06-30 15:38:26pm', 'received', '2022-06-27 01:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-01 15:59:51pm', '2022-06-26 09:02 AM', 'Bricklaying Work (2F)', NULL, NULL, NULL, NULL, NULL),
(206, 'VR-000202', '2022-06-25 10:24 AM', 14, 31, '2022-06-25 03:28:20', '2022-06-27 09:36:49', 'accept', '2022-06-25 10:34:18am', 'finished', '2022-06-25 10:39:21am', 'finished', '2022-06-26 15:54:01pm', 'accept', '2022-06-27 16:24:13pm', 'received', '2022-06-27 04:36 PM', 'finished', '2022-06-26 21:59:08pm', NULL, NULL, 'finished', '2022-06-26 22:04:34pm', '2022-06-27 10:24 AM', 'GB / emergency stair area stripfooting and column stirrups', NULL, NULL, NULL, NULL, NULL),
(207, 'VR-000203', '2022-06-25 01:00 PM', 11, 31, '2022-06-25 05:32:17', '2022-06-29 16:33:05', 'accept', '2022-06-27 10:34:14am', 'finished', '2022-06-27 10:34:35am', 'finished', '2022-06-28 11:56:53am', 'accept', '2022-06-28 15:29:17pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-06-29 23:33:05pm', '2022-06-29 06:00 AM', 'External 9\"thk RW (6\'height)', NULL, NULL, NULL, NULL, NULL),
(208, 'VR-000204', '2022-06-25 01:15 PM', 4, 26, '2022-06-25 06:17:37', '2022-07-14 13:51:38', 'accept', '2022-06-27 10:33:41am', 'finished', '2022-06-27 10:33:54am', NULL, NULL, NULL, NULL, 'received', '2022-06-29 01:21 PM', 'finished', '2022-07-14 20:51:38pm', NULL, NULL, NULL, NULL, '2022-06-27 01:16 PM', 'Roof Slab,2nd FL slab,1st FL slab topping casting', NULL, NULL, NULL, NULL, NULL),
(209, 'VR-000205', '2022-06-25 01:17 PM', 4, 26, '2022-06-25 06:18:36', '2022-07-15 14:44:54', 'accept', '2022-06-27 10:24:46am', 'finished', '2022-06-27 10:25:04am', 'finished', '2022-06-28 11:45:05am', 'accept', '2022-06-28 15:28:31pm', 'received', '2022-06-27 01:22 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:44:54pm', '2022-06-27 01:18 PM', 'Roof slab,2nd FL slab,1st FL slab topping casting', NULL, NULL, NULL, NULL, NULL),
(210, 'VR-000206', '2022-06-25 01:18 PM', 4, 26, '2022-06-25 06:20:14', '2022-07-15 14:45:20', 'accept', '2022-06-27 10:22:59am', 'finished', '2022-06-27 10:23:54am', 'finished', '2022-06-28 11:37:52am', 'accept', '2022-06-28 15:28:00pm', 'received', '2022-06-27 01:22 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:45:20pm', '2022-06-27 01:19 PM', 'Roof slab,2nd FL slab,1st FL slab topping casting', NULL, NULL, NULL, NULL, NULL),
(211, 'VR-000207', '2022-06-25 01:21 PM', 5, 26, '2022-06-25 06:22:51', '2022-07-15 14:45:54', 'accept', '2022-06-27 10:30:26am', 'finished', '2022-06-27 10:30:38am', 'finished', '2022-06-28 11:58:00am', 'accept', '2022-06-28 15:26:41pm', 'received', '2022-06-29 01:22 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:45:54pm', '2022-06-27 01:21 PM', '2nd FL and 1st Fl topping casting', NULL, NULL, NULL, NULL, NULL),
(212, 'VR-000208', '2022-06-25 01:22 PM', 5, 26, '2022-06-25 06:23:37', '2022-07-15 14:46:29', 'accept', '2022-06-27 10:14:50am', 'finished', '2022-06-27 10:15:01am', 'finished', '2022-06-28 11:22:35am', 'accept', '2022-06-28 15:25:05pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:46:29pm', '2022-06-27 01:22 PM', '2nd FL and 1st FL topping casting', NULL, NULL, NULL, NULL, NULL),
(213, 'VR-000209', '2022-06-25 01:23 PM', 5, 26, '2022-06-25 06:24:22', '2022-07-15 14:46:59', 'accept', '2022-06-27 10:13:00am', 'finished', '2022-06-27 10:13:45am', 'finished', '2022-06-28 11:34:42am', 'accept', '2022-06-28 15:24:39pm', 'received', '2022-06-27 01:25 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:46:59pm', '2022-06-27 01:23 PM', '2nd FL and 1st FL topping casting', NULL, NULL, NULL, NULL, NULL),
(214, 'VR-000210', '2022-06-25 02:20 PM', 9, 22, '2022-06-25 07:21:01', '2022-07-15 14:47:27', 'accept', '2022-06-27 10:39:50am', 'finished', '2022-06-27 10:42:11am', 'finished', '2022-06-28 12:17:18pm', 'accept', '2022-06-28 15:23:52pm', 'received', '2022-06-29 12:30 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:47:27pm', '2022-06-27 02:20 PM', 'For car ramp slab rebar work', NULL, NULL, NULL, NULL, NULL),
(215, 'VR-000211', '2022-06-25 02:34 PM', 2, 28, '2022-06-25 07:36:47', '2022-07-15 14:48:17', 'accept', '2022-06-27 10:08:06am', 'finished', '2022-06-27 10:11:32am', 'finished', '2022-06-28 11:00:32am', 'accept', '2022-06-28 15:21:04pm', 'received', '2022-06-27 10:20 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:48:17pm', '2022-06-27 09:34 AM', 'Roof And Stair roof slab', NULL, NULL, NULL, NULL, NULL),
(216, 'VR-000212', '2022-06-26 06:33 PM', 21, 37, '2022-06-26 11:35:02', '2022-06-27 02:25:29', 'reject', '2022-06-27 09:25:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-31 01:00 PM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(217, 'VR-000213', '2022-06-26 06:36 PM', 21, 37, '2022-06-26 11:36:58', '2022-06-27 02:25:36', 'reject', '2022-06-27 09:25:36am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 09:00 AM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(218, 'VR-000214', '2022-06-27 09:31 AM', 7, 22, '2022-06-27 02:32:15', '2022-07-15 14:48:57', 'accept', '2022-06-28 09:12:51am', 'finished', '2022-06-28 09:13:54am', 'finished', '2022-06-28 11:33:26am', 'accept', '2022-06-28 15:14:46pm', 'received', '2022-06-29 12:28 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:48:57pm', '2022-06-28 09:31 AM', 'For Gfloor internal plaster work', NULL, NULL, NULL, NULL, NULL),
(219, 'VR-000215', '2022-06-27 10:24 AM', 4, 26, '2022-06-27 03:26:01', '2022-06-27 03:26:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 10:25 AM', 'External plastering work Elevation C,B', NULL, NULL, NULL, NULL, NULL),
(220, 'VR-000216', '2022-06-27 11:39 AM', 6, 25, '2022-06-27 04:50:24', '2022-07-15 14:49:29', 'accept', '2022-06-28 15:24:06pm', 'finished', '2022-06-28 15:27:52pm', 'finished', '2022-06-30 17:14:27pm', 'accept', '2022-07-01 10:20:10am', 'received', '2022-07-05 01:05 PM', 'finished', '2022-07-04 16:14:10pm', NULL, NULL, 'finished', '2022-07-15 21:49:29pm', '2022-06-29 11:39 AM', 'For Ceiling Work', NULL, NULL, NULL, NULL, NULL),
(221, 'VR-000217', '2022-06-27 01:10 PM', 17, 47, '2022-06-27 06:10:53', '2022-07-15 14:50:40', 'accept', '2022-06-28 09:33:44am', 'finished', '2022-06-28 09:34:10am', 'finished', '2022-06-28 11:26:30am', 'accept', '2022-06-28 14:59:40pm', 'received', '2022-06-29 02:38 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:50:40pm', '2022-06-27 01:10 PM', 'မြေကြီးထုတ်ရန် သဲရော', NULL, NULL, NULL, NULL, NULL),
(222, 'VR-000218', '2022-06-27 01:21 PM', 21, 37, '2022-06-27 06:23:16', '2022-06-28 02:22:18', 'reject', '2022-06-28 09:22:18am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-28 01:21 PM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(223, 'VR-000219', '2022-06-27 01:23 PM', 21, 37, '2022-06-27 06:24:17', '2022-06-28 02:22:39', 'reject', '2022-06-28 09:22:39am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 09:00 AM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(224, 'VR-000220', '2022-06-27 01:20 PM', 16, 44, '2022-06-27 06:27:31', '2022-07-06 04:30:16', 'accept', '2022-06-29 10:15:32am', 'finished', '2022-06-29 10:15:57am', NULL, NULL, NULL, NULL, 'received', '2022-07-06 11:29 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 01:26 PM', 'First floor beam & slab  F.W', NULL, NULL, NULL, NULL, NULL),
(225, 'VR-000221', '2022-06-27 01:33 PM', 9, 22, '2022-06-27 06:34:30', '2022-07-15 14:32:36', 'accept', '2022-06-29 10:15:02am', 'finished', '2022-06-29 10:15:14am', 'finished', '2022-07-02 12:30:54pm', 'accept', '2022-07-04 12:33:02pm', 'received', '2022-06-29 12:27 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:32:36pm', '2022-06-28 01:34 PM', 'For Gfloor internal stair brick work & plaster work, additional wall plaster work(2.5\")', NULL, NULL, NULL, NULL, NULL),
(226, 'VR-000222', '2022-06-27 06:28 PM', 9, 22, '2022-06-27 11:29:23', '2022-07-15 14:51:24', 'accept', '2022-06-28 15:49:36pm', 'finished', '2022-06-28 15:50:17pm', 'finished', '2022-06-28 16:40:25pm', 'accept', '2022-06-30 15:37:31pm', 'received', '2022-07-02 10:34 AM', 'finished', '2022-07-13 22:38:25pm', NULL, NULL, 'finished', '2022-07-15 21:51:24pm', '2022-06-29 06:28 PM', 'For Gfloor sub-floor & Fence plaster work', NULL, NULL, NULL, NULL, NULL),
(227, 'VR-000223', '2022-06-27 05:20 PM', 2, 28, '2022-06-27 15:22:54', '2022-07-15 14:52:00', 'accept', '2022-06-28 11:10:39am', 'finished', '2022-06-28 11:39:12am', 'finished', '2022-06-28 11:58:49am', 'accept', '2022-06-28 14:56:13pm', 'received', '2022-07-15 10:21 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:52:00pm', '2022-06-30 09:20 AM', 'GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(228, 'VR-000224', '2022-06-27 05:23 PM', 2, 28, '2022-06-27 15:24:52', '2022-07-15 14:33:00', 'accept', '2022-06-28 11:41:53am', 'finished', '2022-06-28 11:42:06am', 'finished', '2022-06-28 12:00:01pm', 'accept', '2022-06-28 14:53:48pm', 'received', '2022-07-15 10:20 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:33:00pm', '2022-06-29 09:23 AM', 'Backfilling inside building', NULL, NULL, NULL, NULL, NULL),
(229, 'VR-000225', '2022-06-27 05:00 PM', 16, 44, '2022-06-28 00:21:46', '2022-07-15 14:54:41', 'accept', '2022-06-28 11:53:04am', 'finished', '2022-06-28 11:57:37am', 'finished', '2022-07-02 12:14:00pm', 'accept', '2022-07-04 12:32:23pm', 'received', '2022-06-29 10:27 AM', 'finished', '2022-07-13 22:20:56pm', NULL, NULL, 'finished', '2022-07-15 21:54:41pm', '2022-06-28 05:00 PM', 'backfilling to gb level', NULL, NULL, NULL, NULL, NULL),
(230, 'VR-000226', '2022-06-28 09:26 AM', 21, 37, '2022-06-28 02:32:24', '2022-07-15 14:55:22', 'accept', '2022-06-28 09:35:31am', 'finished', '2022-06-28 09:35:54am', 'finished', '2022-06-28 10:43:09am', 'accept', '2022-06-28 14:47:43pm', 'received', '2022-06-29 01:21 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:55:22pm', '2022-06-28 01:00 PM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(231, 'VR-000227', '2022-06-29 09:32 AM', 7, 22, '2022-06-28 02:32:56', '2022-07-15 14:57:57', 'accept', '2022-06-28 09:41:15am', 'finished', '2022-06-28 09:41:47am', 'finished', '2022-06-28 11:15:51am', 'accept', '2022-06-28 14:47:11pm', 'received', '2022-06-29 12:27 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:57:57pm', '2022-06-28 09:31 AM', 'For Gfloor & 1st floor plaster work', NULL, NULL, NULL, NULL, NULL),
(232, 'VR-000228', '2022-06-28 09:32 AM', 21, 37, '2022-06-28 02:33:25', '2022-07-14 08:57:44', 'accept', '2022-06-28 09:36:05am', 'finished', '2022-06-28 09:36:11am', 'finished', '2022-06-28 10:42:01am', 'accept', '2022-06-28 14:39:30pm', 'received', '2022-07-14 03:57 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-30 15:51:49pm', '2022-06-29 09:00 AM', 'Back Filling', NULL, NULL, NULL, NULL, NULL),
(233, 'VR-000229', '2022-06-28 10:18 AM', 14, 31, '2022-06-28 03:26:18', '2022-07-15 14:58:45', 'accept', '2022-06-28 11:34:52am', 'finished', '2022-06-28 11:35:50am', 'finished', '2022-07-01 12:20:25pm', 'accept', '2022-07-01 13:17:06pm', NULL, NULL, 'finished', '2022-07-15 10:14:49am', NULL, NULL, 'finished', '2022-07-15 21:58:45pm', '2022-07-01 10:22 AM', 'GB Formwork', NULL, NULL, NULL, NULL, NULL),
(234, 'VR-000230', '2022-06-28 11:54 AM', 5, 26, '2022-06-28 04:56:25', '2022-07-15 14:59:18', 'accept', '2022-06-29 10:10:31am', 'finished', '2022-06-29 10:11:16am', 'finished', '2022-07-01 10:22:35am', 'accept', '2022-07-01 10:27:58am', 'received', '2022-07-02 02:34 PM', 'finished', '2022-07-13 23:36:29pm', NULL, NULL, 'finished', '2022-07-15 21:59:18pm', '2022-06-30 11:54 AM', 'external plastering work elevation C,window and door corner plastering', NULL, NULL, NULL, NULL, NULL),
(235, 'VR-000231', '2022-06-28 11:56 AM', 4, 26, '2022-06-28 04:57:34', '2022-07-15 15:00:57', 'accept', '2022-06-29 10:16:15am', 'finished', '2022-06-29 10:16:26am', 'finished', '2022-07-01 10:21:07am', 'accept', '2022-07-01 10:27:10am', 'received', '2022-07-02 02:34 PM', 'finished', '2022-07-13 23:38:52pm', NULL, NULL, 'finished', '2022-07-15 22:00:57pm', '2022-06-30 11:56 AM', 'External plastering work elevation C,window and door corner plastering', NULL, NULL, NULL, NULL, NULL),
(236, 'VR-000232', '2022-06-28 02:17 PM', 2, 28, '2022-06-28 07:19:28', '2022-07-15 15:01:39', 'accept', '2022-06-29 09:58:44am', 'finished', '2022-06-29 10:00:07am', 'finished', '2022-07-01 22:49:23pm', 'accept', '2022-07-04 12:29:26pm', 'received', '2022-07-01 03:17 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:01:39pm', '2022-06-30 09:00 AM', 'GF Brickwork (lintel, stiffener & sunshade)', NULL, NULL, NULL, NULL, NULL),
(237, 'VR-000233', '2022-06-28 02:20 PM', 2, 28, '2022-06-28 07:21:53', '2022-07-15 14:55:51', 'accept', '2022-06-29 10:05:22am', 'finished', '2022-06-29 10:09:27am', 'finished', '2022-07-01 22:46:57pm', 'accept', '2022-07-04 12:28:48pm', 'received', '2022-07-01 03:17 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:55:51pm', '2022-06-30 09:00 AM', 'GF Brickwork (lintel, stiffener, sunshade)', NULL, NULL, NULL, NULL, NULL),
(238, 'VR-000234', '2022-06-28 02:23 PM', 2, 28, '2022-06-28 07:24:14', '2022-07-15 14:56:24', 'accept', '2022-06-29 10:01:11am', 'finished', '2022-06-29 10:02:55am', 'finished', '2022-07-01 22:47:44pm', 'accept', '2022-07-04 12:28:14pm', 'received', '2022-07-06 10:08 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:56:24pm', '2022-06-30 09:00 AM', 'GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(239, 'VR-000235', '2022-06-28 04:35 PM', 6, 54, '2022-06-28 09:39:27', '2022-06-29 03:11:04', 'accept', '2022-06-29 10:10:20am', 'finished', '2022-06-29 10:11:04am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 09:00 AM', 'Bamboo Scaffolding for parapet wall', NULL, NULL, NULL, NULL, NULL),
(240, 'VR-000236', '2022-06-28 04:47 PM', 2, 28, '2022-06-28 13:50:46', '2022-07-15 15:02:21', 'accept', '2022-06-29 09:48:28am', 'finished', '2022-06-29 09:51:41am', 'finished', '2022-07-01 13:07:23pm', 'accept', '2022-07-01 13:16:09pm', 'received', '2022-07-06 10:06 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:02:21pm', '2022-07-01 09:00 AM', 'Roof slab (Gutter line)', NULL, NULL, NULL, NULL, NULL),
(241, 'VR-000237', '2022-06-28 09:15 PM', 12, 32, '2022-06-28 14:17:54', '2022-07-15 15:03:20', 'accept', '2022-06-29 10:38:08am', 'finished', '2022-06-29 10:38:22am', 'finished', '2022-07-01 10:18:38am', 'accept', '2022-07-01 10:26:33am', 'received', '2022-07-03 05:24 PM', 'finished', '2022-07-14 00:03:02am', NULL, NULL, 'finished', '2022-07-15 22:03:20pm', '2022-07-01 09:16 PM', 'Plasterwork for Roof Floor Internal Wall', NULL, NULL, NULL, NULL, NULL),
(242, 'VR-000238', '2022-06-28 09:17 PM', 12, 32, '2022-06-28 14:21:34', '2022-07-15 15:04:35', 'accept', '2022-06-29 10:37:04am', 'finished', '2022-06-29 10:37:30am', 'finished', '2022-07-01 10:16:30am', 'accept', '2022-07-01 10:25:39am', 'received', '2022-07-03 05:25 PM', 'finished', '2022-07-14 00:07:44am', NULL, NULL, 'finished', '2022-07-15 22:04:35pm', '2022-07-01 09:18 PM', 'Topping for Roof Floor and First Floor', NULL, NULL, NULL, NULL, NULL),
(243, 'VR-000239', '2022-06-29 09:13 AM', 2, 28, '2022-06-29 02:13:51', '2022-06-29 02:46:46', 'accept', '2022-06-29 09:44:09am', 'finished', '2022-06-29 09:46:46am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30 09:13 AM', 'GF slab', NULL, NULL, NULL, NULL, NULL),
(244, 'VR-000240', '2022-06-29 09:13 AM', 2, 28, '2022-06-29 02:16:11', '2022-07-01 08:17:12', 'accept', '2022-06-29 09:54:46am', 'finished', '2022-06-29 09:57:39am', NULL, NULL, NULL, NULL, 'received', '2022-07-01 03:16 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-30 09:13 AM', '1F, 2F and roof Vertical stiffener (Ld)', NULL, NULL, NULL, NULL, NULL),
(245, 'VR-000241', '2022-06-29 11:24 AM', 8, 36, '2022-06-29 04:26:22', '2022-07-15 15:05:13', 'accept', '2022-06-29 14:39:15pm', 'finished', '2022-06-29 14:38:49pm', 'finished', '2022-06-29 16:10:16pm', 'accept', '2022-07-01 10:17:31am', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:05:13pm', '2022-07-03 09:00 AM', 'Bricklaying work(GF+roof floor parapet )(GF Interior wall)', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`, `request_status`, `request_status_date`, `request_status_user`, `project_id`, `work_scope_id`) VALUES
(246, 'VR-000242', '2022-06-29 11:24 AM', 8, 36, '2022-06-29 04:26:22', '2022-07-06 09:09:37', 'accept', '2022-06-29 14:39:26pm', 'finished', '2022-06-29 14:39:38pm', 'finished', '2022-06-29 16:09:40pm', 'accept', '2022-06-30 15:35:07pm', 'received', '2022-07-02 02:00 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-30 15:43:48pm', '2022-07-03 09:00 AM', 'Bricklaying work(GF+roof floor parapet )(GF Interior wall)', NULL, NULL, NULL, NULL, NULL),
(247, 'VR-000243', '2022-06-29 11:24 AM', 17, 47, '2022-06-29 04:26:55', '2022-07-15 15:05:51', 'accept', '2022-06-30 10:34:26am', 'finished', '2022-06-30 10:34:59am', 'finished', '2022-07-01 13:21:57pm', 'accept', '2022-07-01 13:22:36pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:05:51pm', '2022-06-29 11:24 AM', 'GB', NULL, NULL, NULL, NULL, NULL),
(248, 'VR-000244', '2022-06-29 11:26 AM', 17, 47, '2022-06-29 04:28:46', '2022-06-30 03:36:04', 'accept', '2022-06-30 10:35:52am', 'finished', '2022-06-30 10:36:04am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 11:26 AM', 'GB', NULL, NULL, NULL, NULL, NULL),
(249, 'VR-000245', '2022-06-29 11:28 AM', 17, 47, '2022-06-29 04:30:16', '2022-06-30 03:36:37', 'accept', '2022-06-30 10:36:31am', 'finished', '2022-06-30 10:36:37am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 11:28 AM', 'Column', NULL, NULL, NULL, NULL, NULL),
(250, 'VR-000246', '2022-06-29 11:30 AM', 17, 47, '2022-06-29 04:31:23', '2022-06-30 03:37:27', 'accept', '2022-06-30 10:37:16am', 'finished', '2022-06-30 10:37:27am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 11:30 AM', 'First Floor', NULL, NULL, NULL, NULL, NULL),
(251, 'VR-000247', '2022-06-29 11:51 AM', 36, 36, '2022-06-29 04:53:37', '2022-07-15 15:02:45', 'accept', '2022-06-30 11:34:55am', 'finished', '2022-06-30 11:35:25am', 'finished', '2022-07-01 11:25:35am', 'accept', '2022-07-01 13:15:28pm', 'received', '2022-07-01 11:45 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:02:45pm', '2022-07-02 09:00 AM', 'Hard core and lean concrete', NULL, NULL, NULL, NULL, NULL),
(252, 'VR-000248', '2022-06-29 11:53 AM', 36, 36, '2022-06-29 04:54:33', '2022-07-15 15:09:15', 'accept', '2022-06-30 11:34:59am', 'finished', '2022-06-30 11:35:07am', 'finished', '2022-07-01 11:23:17am', 'accept', '2022-07-01 13:15:11pm', 'received', '2022-07-02 12:21 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:09:15pm', '2022-07-02 09:00 AM', 'Hard core and lean concrete', NULL, NULL, NULL, NULL, NULL),
(253, 'VR-000249', '2022-06-29 12:30 PM', 9, 22, '2022-06-29 05:31:25', '2022-07-15 15:09:51', 'accept', '2022-07-02 10:19:55am', 'finished', '2022-07-02 10:20:09am', 'finished', '2022-07-02 12:07:25pm', 'accept', '2022-07-04 12:27:02pm', 'received', '2022-07-02 10:34 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:09:51pm', '2022-06-29 12:30 PM', 'For Fence work', NULL, NULL, NULL, NULL, NULL),
(254, 'VR-000250', '2022-06-29 12:31 PM', 9, 22, '2022-06-29 05:32:53', '2022-07-15 15:10:21', 'accept', '2022-07-02 10:19:17am', 'finished', '2022-07-02 10:19:33am', 'finished', '2022-07-02 12:04:15pm', 'accept', '2022-07-04 12:25:35pm', 'received', '2022-07-10 11:29 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:10:21pm', '2022-07-01 12:31 PM', 'For Fence work', NULL, NULL, NULL, NULL, NULL),
(255, 'VR-000251', '2022-06-29 12:32 PM', 7, 22, '2022-06-29 05:34:36', '2022-07-02 03:34:19', 'accept', '2022-06-30 11:21:41am', 'finished', '2022-06-30 11:23:02am', 'finished', '2022-07-01 12:15:17pm', 'reject', '2022-07-01 13:14:34pm', 'received', '2022-07-02 10:33 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-01 12:32 PM', 'For Gfloor &1st floor internal plaster work', NULL, NULL, NULL, NULL, NULL),
(256, 'VR-000252', '2022-06-29 01:19 PM', 21, 37, '2022-06-29 06:20:02', '2022-07-15 14:35:59', 'accept', '2022-06-30 11:07:06am', 'finished', '2022-06-30 11:07:27am', 'finished', '2022-07-02 13:42:51pm', 'accept', '2022-07-04 12:24:57pm', 'received', '2022-07-14 03:57 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:35:59pm', '2022-06-29 01:19 PM', 'Ground Floor Col', NULL, NULL, NULL, NULL, NULL),
(257, 'VR-000253', '2022-06-29 02:37 PM', 17, 47, '2022-06-29 07:38:19', '2022-06-30 04:01:26', 'accept', '2022-06-30 10:48:15am', 'finished', '2022-06-30 11:01:26am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-29 02:37 PM', 'RWall', NULL, NULL, NULL, NULL, NULL),
(258, 'VR-000254', '2022-06-29 02:37 PM', 36, 36, '2022-06-29 07:38:51', '2022-07-15 15:10:59', 'accept', '2022-06-30 10:46:13am', 'finished', '2022-06-30 10:46:24am', 'finished', '2022-07-01 11:00:07am', 'accept', '2022-07-01 13:13:44pm', 'received', '2022-07-02 12:21 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:10:59pm', '2022-07-03 09:00 AM', 'Lean Concrete', NULL, NULL, NULL, NULL, NULL),
(259, 'VR-000255', '2022-06-29 04:10 PM', 36, 36, '2022-06-29 09:11:47', '2022-06-30 05:49:04', 'accept', '2022-06-30 12:48:40pm', 'finished', '2022-06-30 12:49:04pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 09:10 AM', 'Footing and column', NULL, NULL, NULL, NULL, NULL),
(260, 'VR-000256', '2022-06-29 04:11 PM', 36, 36, '2022-06-29 09:13:58', '2022-07-15 15:11:40', 'accept', '2022-06-30 12:49:44pm', 'finished', '2022-06-30 12:50:47pm', 'finished', '2022-07-05 16:51:42pm', 'accept', '2022-07-05 17:00:53pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:11:40pm', '2022-07-03 09:00 AM', 'Column ties', NULL, NULL, NULL, NULL, NULL),
(261, 'VR-000257', '2022-06-29 05:01 PM', 14, 31, '2022-06-29 10:02:22', '2022-06-30 08:43:03', 'accept', '2022-06-30 09:22:21am', 'finished', '2022-06-30 09:22:59am', 'finished', '2022-06-30 11:45:37am', 'accept', '2022-06-30 15:34:13pm', 'received', '2022-06-29 05:02 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-30 15:43:03pm', '2022-06-29 05:01 PM', 'GL A excavation', NULL, NULL, NULL, NULL, NULL),
(262, 'VR-000258', '2022-06-29 05:03 PM', 14, 31, '2022-06-29 10:06:00', '2022-07-15 14:37:43', 'accept', '2022-06-30 09:20:02am', 'finished', '2022-06-30 09:20:36am', 'finished', '2022-07-01 13:10:14pm', 'accept', '2022-07-01 13:13:02pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:37:43pm', '2022-07-01 05:03 PM', 'GL A footing casting', NULL, NULL, NULL, NULL, NULL),
(263, 'VR-000259', '2022-06-30 11:11 AM', 2, 28, '2022-06-30 04:12:21', '2022-07-01 08:17:32', 'accept', '2022-06-30 11:31:38am', 'finished', '2022-06-30 11:32:19am', 'finished', '2022-06-30 11:42:22am', 'accept', '2022-06-30 15:33:25pm', 'received', '2022-07-01 03:17 PM', NULL, NULL, NULL, NULL, 'finished', '2022-06-30 15:42:23pm', '2022-06-30 11:11 AM', 'Backfilling inside Building', NULL, NULL, NULL, NULL, NULL),
(264, 'VR-000260', '2022-06-30 12:14 PM', 16, 44, '2022-06-30 05:15:08', '2022-07-15 15:13:07', 'accept', '2022-07-02 10:17:50am', 'finished', '2022-07-02 10:18:09am', 'finished', '2022-07-02 11:48:19am', 'accept', '2022-07-04 12:21:19pm', 'received', '2022-07-03 09:09 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:13:07pm', '2022-06-30 12:14 PM', 'backfilling', NULL, NULL, NULL, NULL, NULL),
(265, 'VR-000261', '2022-06-30 02:54 PM', 21, 37, '2022-06-30 07:56:07', '2022-07-15 15:14:09', 'accept', '2022-07-01 10:18:31am', 'finished', '2022-07-01 10:19:04am', 'finished', '2022-07-01 11:00:50am', 'accept', '2022-07-01 13:11:14pm', 'received', '2022-07-03 06:01 PM', 'finished', '2022-07-04 14:18:22pm', NULL, NULL, 'finished', '2022-07-15 22:14:09pm', '2022-07-01 02:54 PM', 'G.F Column', NULL, NULL, NULL, NULL, NULL),
(266, 'VR-000262', '2022-07-01 12:00 PM', 2, 28, '2022-07-01 05:02:44', '2022-07-15 15:14:41', 'accept', '2022-07-01 15:51:44pm', 'finished', '2022-07-01 15:56:07pm', 'finished', '2022-07-05 17:01:29pm', 'accept', '2022-07-07 15:07:25pm', 'received', '2022-07-09 10:42 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:14:41pm', '2022-07-01 12:00 PM', 'GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(267, 'VR-000263', '2022-07-01 12:02 PM', 2, 28, '2022-07-01 05:15:20', '2022-07-09 03:42:39', 'accept', '2022-07-02 10:42:42am', 'finished', '2022-07-02 10:47:36am', NULL, NULL, NULL, NULL, 'received', '2022-07-09 10:42 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 12:02 PM', 'Scaffolding work', NULL, NULL, NULL, NULL, NULL),
(268, 'VR-000264', '2022-07-01 01:30 PM', 5, 26, '2022-07-01 06:31:50', '2022-07-15 15:13:36', 'accept', '2022-07-01 15:56:43pm', 'finished', '2022-07-01 15:57:00pm', 'finished', '2022-07-02 12:02:40pm', 'accept', '2022-07-04 12:20:32pm', 'received', '2022-07-02 02:34 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 22:13:36pm', '2022-07-02 01:31 PM', 'G.Floor final sand filling work', NULL, NULL, NULL, NULL, NULL),
(269, 'VR-000265', '2022-07-01 03:18 PM', 2, 28, '2022-07-01 08:19:50', '2022-07-15 14:37:17', 'accept', '2022-07-01 16:01:03pm', 'finished', '2022-07-01 16:01:51pm', 'finished', '2022-07-05 16:44:44pm', 'accept', '2022-07-05 16:58:57pm', 'received', '2022-07-04 09:37 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:37:17pm', '2022-07-01 03:18 PM', 'Stair roof rebar installation', NULL, NULL, NULL, NULL, NULL),
(270, 'VR-000266', '2022-07-02 10:18 AM', 8, 36, '2022-07-02 03:19:44', '2022-07-15 14:35:22', 'accept', '2022-07-03 19:41:26pm', 'finished', '2022-07-05 16:55:30pm', 'finished', '2022-07-05 17:03:59pm', 'accept', '2022-07-05 17:08:45pm', 'received', '2022-07-06 04:05 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:35:22pm', '2022-07-06 10:19 AM', 'Brick work (2F+roof parapet)+Plastering work (GF)', NULL, NULL, NULL, NULL, NULL),
(271, 'VR-000267', '2022-07-02 10:36 AM', 7, 22, '2022-07-02 03:36:59', '2022-07-06 04:15:06', 'reject', '2022-07-02 14:15:39pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-07-06 11:14 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 10:36 AM', 'For 2nd floor brick work', NULL, NULL, NULL, NULL, NULL),
(272, 'VR-000268', '2022-07-02 10:43 AM', 21, 37, '2022-07-02 03:44:19', '2022-07-05 00:47:59', 'accept', '2022-07-02 14:10:41pm', 'finished', '2022-07-02 14:10:51pm', NULL, NULL, NULL, NULL, 'received', '2022-07-05 07:47 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 10:43 AM', '1 st Floor slab', NULL, NULL, NULL, NULL, NULL),
(273, 'VR-000269', '2022-07-02 10:44 AM', 21, 37, '2022-07-02 03:45:13', '2022-07-05 00:48:30', 'accept', '2022-07-02 14:06:48pm', 'finished', '2022-07-02 14:07:35pm', NULL, NULL, NULL, NULL, 'received', '2022-07-05 07:48 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 10:44 AM', '1 st Floor Slab', NULL, NULL, NULL, NULL, NULL),
(274, 'VR-000270', '2022-07-02 10:51 AM', 8, 36, '2022-07-02 03:53:03', '2022-07-03 12:40:43', 'accept', '2022-07-03 19:40:31pm', 'finished', '2022-07-03 19:40:43pm', NULL, NULL, NULL, NULL, 'received', '2022-07-02 05:16 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 10:51 AM', 'Brick work (2F)', NULL, NULL, NULL, NULL, NULL),
(275, 'VR-000271', '2022-07-02 10:58 AM', 17, 47, '2022-07-02 03:59:56', '2022-07-02 07:13:03', 'accept', '2022-07-02 14:12:56pm', 'finished', '2022-07-02 14:13:03pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 10:58 AM', 'Column FW', NULL, NULL, NULL, NULL, NULL),
(276, 'VR-000272', '2022-07-02 11:01 AM', 17, 47, '2022-07-02 04:02:51', '2022-07-06 02:59:16', 'reject', '2022-07-06 09:59:16am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-02 11:01 AM', 'Column FW', NULL, NULL, NULL, NULL, NULL),
(277, 'VR-000273', '2022-07-02 11:02 AM', 17, 47, '2022-07-02 04:04:39', '2022-07-06 02:59:02', 'reject', '2022-07-06 09:59:02am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-03 11:02 AM', 'FF Slab', NULL, NULL, NULL, NULL, NULL),
(278, 'VR-000274', '2022-07-02 02:17 PM', 7, 22, '2022-07-02 07:18:46', '2022-07-15 14:34:31', 'accept', '2022-07-03 10:37:30am', 'finished', '2022-07-03 10:37:43am', 'finished', '2022-07-05 16:42:03pm', 'accept', '2022-07-05 16:58:17pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:34:31pm', '2022-07-04 02:17 PM', 'For 2nd floor brick work', NULL, NULL, NULL, NULL, NULL),
(279, 'VR-000275', '2022-07-02 02:36 PM', 11, 25, '2022-07-02 07:43:50', '2022-07-15 14:33:46', 'accept', '2022-07-02 16:25:44pm', 'finished', '2022-07-02 16:28:17pm', 'finished', '2022-07-05 17:06:20pm', 'accept', '2022-07-05 17:07:36pm', NULL, NULL, 'finished', '2022-07-13 15:14:55pm', NULL, NULL, 'finished', '2022-07-15 21:33:46pm', '2022-07-04 02:36 PM', 'For Plastering Work', NULL, NULL, NULL, NULL, NULL),
(280, 'VR-000276', '2022-07-02 04:30 PM', 5, 26, '2022-07-02 09:31:48', '2022-07-05 09:51:47', 'accept', '2022-07-05 12:05:38pm', 'finished', '2022-07-05 16:51:47pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-04 04:30 PM', 'G.FL final sand filling', NULL, NULL, NULL, NULL, NULL),
(281, 'VR-000277', '2022-07-02 04:59 PM', 17, 47, '2022-07-02 10:00:22', '2022-07-04 08:37:10', 'accept', '2022-07-04 15:37:03pm', 'finished', '2022-07-04 15:37:10pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 04:59 PM', 'Column', NULL, NULL, NULL, NULL, NULL),
(282, 'VR-000278', '2022-07-02 05:00 PM', 17, 47, '2022-07-02 10:01:10', '2022-07-05 09:57:27', 'accept', '2022-07-04 15:41:51pm', 'finished', '2022-07-04 15:41:58pm', 'finished', '2022-07-05 16:40:15pm', 'reject', '2022-07-05 16:57:27pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 05:00 PM', 'Main Stair', NULL, NULL, NULL, NULL, NULL),
(283, 'VR-000279', '2022-07-02 05:01 PM', 17, 47, '2022-07-02 10:02:48', '2022-07-04 08:40:31', 'accept', '2022-07-04 15:40:16pm', 'finished', '2022-07-04 15:40:31pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-05 05:01 PM', 'Column & FF Beam', NULL, NULL, NULL, NULL, NULL),
(284, 'VR-000280', '2022-07-02 05:57 PM', 14, 25, '2022-07-02 10:58:39', '2022-07-03 02:48:58', 'reject', '2022-07-03 09:48:58am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 05:57 PM', 'For Concrete Casting Work', NULL, NULL, NULL, NULL, NULL),
(285, 'VR-000281', '2022-07-03 11:25 AM', 14, 25, '2022-07-03 04:27:21', '2022-07-15 14:30:13', 'accept', '2022-07-03 11:30:01am', 'finished', '2022-07-03 11:30:12am', 'finished', '2022-07-05 16:38:41pm', 'accept', '2022-07-05 16:51:38pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:30:13pm', '2022-07-04 11:25 AM', 'For Footing Concrete Casting', NULL, NULL, NULL, NULL, NULL),
(286, 'VR-000282', '2022-07-03 03:49 PM', 12, 32, '2022-07-03 08:58:29', '2022-07-04 08:43:35', 'reject', '2022-07-04 15:43:35pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-03 03:49 PM', 'Timber တံခါးရွက် 2\'6\"x 6\'9\" အတွက် ကျဥ်း​ဘောင်', NULL, NULL, NULL, NULL, NULL),
(287, 'VR-000283', '2022-07-03 04:37 PM', 12, 32, '2022-07-03 09:40:09', '2022-07-03 09:40:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:37 PM', 'For BWC အနင်း ပြား', NULL, NULL, NULL, NULL, NULL),
(288, 'VR-000284', '2022-07-03 04:40 PM', 12, 32, '2022-07-03 09:41:37', '2022-07-03 09:41:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:40 PM', 'For Kitchen Room အနင်းပြား', NULL, NULL, NULL, NULL, NULL),
(289, 'VR-000285', '2022-07-03 04:40 PM', 12, 32, '2022-07-03 09:41:40', '2022-07-04 08:45:06', 'reject', '2022-07-04 15:45:06pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:40 PM', 'For Kitchen Room အနင်းပြား', NULL, NULL, NULL, NULL, NULL),
(290, 'VR-000286', '2022-07-03 04:41 PM', 12, 32, '2022-07-03 09:42:51', '2022-07-03 09:42:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:42 PM', 'For ဝရန်တာ အနင်းပြား', NULL, NULL, NULL, NULL, NULL),
(291, 'VR-000287', '2022-07-03 04:42 PM', 12, 32, '2022-07-03 09:44:06', '2022-07-11 03:15:48', 'reject', '2022-07-11 10:15:48am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:43 PM', 'For BWC Wall', NULL, NULL, NULL, NULL, NULL),
(292, 'VR-000288', '2022-07-03 04:42 PM', 12, 32, '2022-07-03 09:44:09', '2022-07-04 08:46:30', 'reject', '2022-07-04 15:46:30pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:43 PM', 'For BWC Wall', NULL, NULL, NULL, NULL, NULL),
(293, 'VR-000289', '2022-07-03 05:25 PM', 12, 32, '2022-07-03 10:28:52', '2022-07-04 08:44:09', 'reject', '2022-07-04 15:44:09pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 05:27 PM', 'For ထပ်တိုး သစ်သားကျည်း​ဘောင် ၊ 2\'6\" × 6\'9\" တံခါးရွက်အတွက်', NULL, NULL, NULL, NULL, NULL),
(294, 'VR-000290', '2022-07-03 05:00 PM', 21, 37, '2022-07-03 10:51:46', '2022-07-15 14:32:00', 'accept', '2022-07-04 15:52:39pm', 'finished', '2022-07-04 15:52:47pm', 'finished', '2022-07-05 16:34:10pm', 'accept', '2022-07-05 16:47:02pm', 'received', '2022-07-06 02:29 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:32:00pm', '2022-07-06 09:00 AM', '1st Gloor Slab', NULL, NULL, NULL, NULL, NULL),
(295, 'VR-000291', '2022-07-03 05:51 PM', 21, 37, '2022-07-03 10:55:41', '2022-07-15 14:31:36', 'accept', '2022-07-04 15:56:22pm', 'finished', '2022-07-04 15:56:31pm', 'finished', '2022-07-05 16:30:05pm', 'accept', '2022-07-05 16:46:30pm', 'received', '2022-07-06 02:30 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:31:36pm', '2022-07-06 09:00 AM', 'G.F to 1st slab stair', NULL, NULL, NULL, NULL, NULL),
(296, 'VR-000292', '2022-07-03 05:55 PM', 21, 37, '2022-07-03 10:57:25', '2022-07-15 14:31:08', 'accept', '2022-07-04 15:59:36pm', 'finished', '2022-07-04 15:59:44pm', 'finished', '2022-07-05 16:31:47pm', 'accept', '2022-07-05 16:45:55pm', 'received', '2022-07-06 02:30 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:31:08pm', '2022-07-06 09:00 AM', '1ft floor beam', NULL, NULL, NULL, NULL, NULL),
(297, 'VR-000293', '2022-07-03 05:57 PM', 21, 37, '2022-07-03 11:00:20', '2022-07-15 14:30:35', 'accept', '2022-07-04 16:01:29pm', 'finished', '2022-07-04 16:01:37pm', 'finished', '2022-07-05 16:29:15pm', 'accept', '2022-07-05 16:45:08pm', 'received', '2022-07-06 02:31 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:30:35pm', '2022-07-06 09:00 AM', '1st Floor Beam strriup', NULL, NULL, NULL, NULL, NULL),
(298, 'VR-000294', '2022-07-03 09:09 PM', 16, 44, '2022-07-03 14:10:32', '2022-07-15 14:29:40', 'accept', '2022-07-04 17:22:11pm', 'finished', '2022-07-04 17:22:29pm', 'finished', '2022-07-05 16:26:43pm', 'accept', '2022-07-05 16:44:24pm', 'received', '2022-07-06 11:29 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:29:40pm', '2022-07-05 09:10 PM', 'column casting', NULL, NULL, NULL, NULL, NULL),
(299, 'VR-000295', '2022-07-04 09:36 AM', 2, 28, '2022-07-04 02:36:58', '2022-07-15 00:39:55', 'accept', '2022-07-04 16:25:28pm', 'finished', '2022-07-05 12:04:29pm', 'finished', '2022-07-05 16:24:52pm', 'accept', '2022-07-05 16:44:00pm', 'received', '2022-07-09 10:41 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 07:39:55am', '2022-07-04 09:36 AM', 'GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(300, 'VR-000296', '2022-07-04 10:49 AM', 7, 22, '2022-07-04 03:50:30', '2022-07-15 14:28:57', 'accept', '2022-07-04 16:04:43pm', 'finished', '2022-07-04 16:04:48pm', 'finished', '2022-07-05 16:16:58pm', 'accept', '2022-07-05 16:43:29pm', 'received', '2022-07-06 11:12 AM', 'finished', '2022-07-13 23:25:07pm', NULL, NULL, 'finished', '2022-07-15 21:28:57pm', '2022-07-06 10:49 AM', 'For Gfloor sub-floor', NULL, NULL, NULL, NULL, NULL),
(301, 'VR-000297', '2022-07-04 11:13 AM', 2, 28, '2022-07-04 04:14:35', '2022-07-09 03:41:51', 'accept', '2022-07-07 15:01:49pm', 'finished', '2022-07-07 15:02:21pm', NULL, NULL, NULL, NULL, 'received', '2022-07-09 10:41 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06 11:13 AM', '1F to 2F Column FW', NULL, NULL, NULL, NULL, NULL),
(302, 'VR-000298', '2022-07-04 10:50 AM', 9, 22, '2022-07-04 04:28:16', '2022-07-15 00:39:09', 'accept', '2022-07-04 17:22:47pm', 'finished', '2022-07-04 17:23:01pm', 'finished', '2022-07-05 16:10:19pm', 'accept', '2022-07-05 16:42:39pm', 'received', '2022-07-06 11:13 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 07:39:09am', '2022-07-04 10:50 AM', 'For Fence DPC & stiffener work', NULL, NULL, NULL, NULL, NULL),
(303, 'VR-000299', '2022-07-04 11:59 AM', 8, 36, '2022-07-04 05:00:41', '2022-07-15 00:39:22', 'accept', '2022-07-05 12:03:31pm', 'finished', '2022-07-05 12:03:44pm', 'finished', '2022-07-05 15:59:47pm', 'accept', '2022-07-05 16:42:09pm', 'received', '2022-07-06 04:09 PM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 07:39:22am', '2022-07-07 09:00 AM', 'Brick work (2F)', NULL, NULL, NULL, NULL, NULL),
(304, 'VR-000300', '2022-07-04 02:55 PM', 17, 47, '2022-07-04 07:57:09', '2022-07-15 00:40:35', 'accept', '2022-07-04 16:12:20pm', 'finished', '2022-07-04 16:12:29pm', 'finished', '2022-07-05 16:35:17pm', 'accept', '2022-07-05 16:41:41pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 07:40:35am', '2022-07-06 02:56 PM', 'EW Protection', NULL, NULL, NULL, NULL, NULL),
(305, 'VR-000301', '2022-07-04 03:50 PM', 12, 32, '2022-07-04 08:51:34', '2022-07-09 07:30:25', 'accept', '2022-07-09 14:29:58pm', 'finished', '2022-07-09 14:30:25pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 03:50 PM', 'For First Floor ထပ်တိုး', NULL, NULL, NULL, NULL, NULL),
(306, 'VR-000302', '2022-07-04 03:55 PM', 17, 47, '2022-07-04 08:56:04', '2022-07-04 09:05:49', 'accept', '2022-07-04 16:05:43pm', 'finished', '2022-07-04 16:05:49pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06 03:55 PM', 'Column & Beam Stirrup', NULL, NULL, NULL, NULL, NULL),
(307, 'VR-000303', '2022-07-04 04:26 PM', 12, 32, '2022-07-04 09:30:34', '2022-07-11 02:24:02', 'reject', '2022-07-11 09:24:02am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 04:28 PM', 'For Stairs အနင်း နှင့် အ​ကျော် ​ကြွေပြား', NULL, NULL, NULL, NULL, NULL),
(308, 'VR-000304', '2022-07-07 04:53 PM', 7, 22, '2022-07-04 09:55:30', '2022-07-15 14:28:18', 'accept', '2022-07-05 09:21:46am', 'finished', '2022-07-05 09:21:53am', 'finished', '2022-07-05 16:12:15pm', 'accept', '2022-07-05 16:40:30pm', NULL, NULL, 'finished', '2022-07-13 23:54:23pm', NULL, NULL, 'finished', '2022-07-15 21:28:18pm', '2022-07-04 04:52 PM', 'For 2nd internal plaster work', NULL, NULL, NULL, NULL, NULL),
(309, 'VR-000305', '2022-07-05 12:21 PM', 36, 55, '2022-07-05 05:25:39', '2022-07-15 14:27:45', 'accept', '2022-07-05 12:27:15pm', 'finished', '2022-07-05 12:27:29pm', 'finished', '2022-07-05 15:55:44pm', 'accept', '2022-07-05 16:38:37pm', NULL, NULL, NULL, NULL, NULL, NULL, 'finished', '2022-07-15 21:27:45pm', '2022-07-06 12:21 PM', 'Lean Concrete for Footing', NULL, NULL, NULL, NULL, NULL),
(310, 'VR-000306', '2022-07-05 12:30 PM', 36, 55, '2022-07-05 05:33:06', '2022-07-06 02:57:38', 'accept', '2022-07-06 09:57:25am', 'finished', '2022-07-06 09:57:38am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06 12:30 PM', 'For Earthwork Excavation', NULL, NULL, NULL, NULL, NULL),
(311, 'VR-000307', '2022-07-05 12:53 PM', 9, 22, '2022-07-05 05:54:04', '2022-07-05 05:54:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 12:53 PM', 'For Fence work', NULL, NULL, NULL, NULL, NULL),
(312, 'VR-000308', '2022-07-05 12:54 PM', 9, 22, '2022-07-05 05:56:56', '2022-07-10 04:31:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-07-10 11:30 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 12:56 PM', 'For riser Brick work & plaster work,BWC partition brick work &plaster work', NULL, NULL, NULL, NULL, NULL),
(313, 'VR-000309', '2022-07-05 01:07 PM', 14, 25, '2022-07-05 06:10:26', '2022-07-13 09:23:37', 'accept', '2022-07-06 09:53:12am', 'finished', '2022-07-06 09:53:39am', 'finished', '2022-07-13 15:42:07pm', NULL, NULL, NULL, NULL, 'finished', '2022-07-13 16:23:37pm', NULL, NULL, NULL, NULL, '2022-07-08 01:07 PM', 'For F&PB Concrete Casting &RW &Walling BW', NULL, NULL, NULL, NULL, NULL),
(314, 'VR-000310', '2022-07-05 01:56 PM', 2, 28, '2022-07-05 06:57:38', '2022-07-09 03:41:39', 'accept', '2022-07-06 09:44:05am', 'finished', '2022-07-06 09:44:52am', NULL, NULL, NULL, NULL, 'received', '2022-07-09 10:41 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 01:56 PM', 'Scaffolding', NULL, NULL, NULL, NULL, NULL),
(315, 'VR-000311', '2022-07-06 09:54 AM', 14, 25, '2022-07-06 02:55:41', '2022-07-06 03:54:26', 'accept', '2022-07-06 10:53:36am', 'finished', '2022-07-06 10:54:26am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 09:54 AM', 'For PB F/W', NULL, NULL, NULL, NULL, NULL),
(316, 'VR-000312', '2022-07-06 10:05 AM', 2, 28, '2022-07-06 03:06:03', '2022-07-15 03:20:43', 'accept', '2022-07-06 12:04:54pm', 'finished', '2022-07-06 12:06:56pm', NULL, NULL, NULL, NULL, 'received', '2022-07-15 10:20 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 10:05 AM', 'Column Formwork', NULL, NULL, NULL, NULL, NULL),
(317, 'VR-000313', '2022-07-06 10:10 AM', 2, 28, '2022-07-06 03:12:00', '2022-07-09 03:41:15', 'accept', '2022-07-06 11:47:10am', 'finished', '2022-07-06 11:53:34am', NULL, NULL, NULL, NULL, 'received', '2022-07-09 10:41 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 10:10 AM', 'GF and 1F Brickwork', NULL, NULL, NULL, NULL, NULL),
(318, 'VR-000314', '2022-07-06 10:42 AM', 11, 25, '2022-07-06 03:43:34', '2022-07-15 03:49:24', 'accept', '2022-07-06 14:14:39pm', 'finished', '2022-07-06 14:14:49pm', 'finished', '2022-07-15 10:49:24am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-06 10:42 AM', 'For Sub Floor Concrete Casting &RW', NULL, NULL, NULL, NULL, NULL),
(319, 'VR-000315', '2022-07-06 11:11 AM', 7, 22, '2022-07-06 04:12:32', '2022-07-15 00:38:17', 'accept', '2022-07-07 10:12:47am', 'finished', '2022-07-07 10:12:56am', 'finished', '2022-07-07 17:12:23pm', 'accept', '2022-07-09 10:37:41am', 'received', '2022-07-10 11:28 AM', NULL, NULL, NULL, NULL, 'finished', '2022-07-15 07:38:17am', '2022-07-08 11:12 AM', 'For Gfloor sub-floor', NULL, NULL, NULL, NULL, NULL),
(320, 'VR-000316', '2022-07-06 11:54 AM', 8, 36, '2022-07-06 04:55:58', '2022-07-06 04:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 09:00 AM', 'Fence', NULL, NULL, NULL, NULL, NULL),
(321, 'VR-000317', '2022-07-06 11:55 AM', 8, 36, '2022-07-06 04:56:54', '2022-07-07 04:04:11', 'reject', '2022-07-06 12:35:11pm', NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-07-07 11:03 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 09:00 AM', 'Fence', NULL, NULL, NULL, NULL, NULL),
(322, 'VR-000318', '2022-07-06 02:32 PM', 21, 37, '2022-07-06 07:38:46', '2022-07-14 08:57:14', 'accept', '2022-07-07 09:23:08am', 'finished', '2022-07-07 09:23:53am', NULL, NULL, NULL, NULL, 'received', '2022-07-14 03:57 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 02:33 PM', '1st Floor Formwork', NULL, NULL, NULL, NULL, NULL),
(323, 'VR-000319', '2022-07-06 02:39 PM', 21, 37, '2022-07-06 07:39:56', '2022-07-14 08:57:00', 'accept', '2022-07-07 09:23:12am', 'finished', '2022-07-07 09:23:21am', NULL, NULL, NULL, NULL, 'received', '2022-07-14 03:56 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 02:39 PM', '1st Floor Slab', NULL, NULL, NULL, NULL, NULL),
(324, 'VR-000320', '2022-07-06 04:35 PM', 21, 37, '2022-07-06 09:39:47', '2022-07-14 08:56:47', 'accept', '2022-07-07 09:35:42am', 'finished', '2022-07-07 09:35:49am', NULL, NULL, NULL, NULL, 'received', '2022-07-14 03:56 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 04:36 PM', '1st Floor Slab', NULL, NULL, NULL, NULL, NULL),
(325, 'VR-000321', '2022-07-06 04:39 PM', 21, 37, '2022-07-06 09:42:37', '2022-07-14 08:56:32', 'accept', '2022-07-07 09:53:33am', 'finished', '2022-07-07 09:53:45am', NULL, NULL, NULL, NULL, 'received', '2022-07-14 03:56 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 04:39 PM', '1 st floor slab', NULL, NULL, NULL, NULL, NULL),
(326, 'VR-000322', '2022-07-07 10:04 AM', 5, 26, '2022-07-07 03:05:08', '2022-07-08 05:22:51', 'accept', '2022-07-08 10:19:18am', 'finished', '2022-07-08 10:19:33am', NULL, NULL, NULL, NULL, 'received', '2022-07-08 12:22 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 10:04 AM', '2nd FL and 1st FL topping casting', NULL, NULL, NULL, NULL, NULL),
(327, 'VR-000323', '2022-07-07 11:04 AM', 8, 36, '2022-07-07 04:05:33', '2022-07-11 02:47:04', 'accept', '2022-07-08 10:20:25am', 'finished', '2022-07-08 10:20:48am', NULL, NULL, NULL, NULL, 'received', '2022-07-10 09:46 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-10 09:00 AM', 'Plastering work (1F)', NULL, NULL, NULL, NULL, NULL),
(328, 'VR-000324', '2022-07-07 01:07 PM', 17, 47, '2022-07-07 06:08:23', '2022-07-17 04:10:17', 'accept', '2022-07-07 14:14:03pm', 'finished', '2022-07-07 14:14:33pm', NULL, NULL, NULL, NULL, 'received', '2022-07-17 11:09 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 01:07 PM', 'Brickwork laying & Lean casting', NULL, NULL, NULL, NULL, NULL),
(329, 'VR-000325', '2022-07-07 01:08 PM', 17, 47, '2022-07-07 06:08:55', '2022-07-07 07:14:12', 'accept', '2022-07-07 14:13:51pm', 'finished', '2022-07-07 14:14:12pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 01:08 PM', 'Lean Casting', NULL, NULL, NULL, NULL, NULL),
(330, 'VR-000326', '2022-07-07 03:18 PM', 17, 47, '2022-07-07 08:19:04', '2022-07-08 03:00:14', 'accept', '2022-07-08 10:00:06am', 'finished', '2022-07-08 10:00:14am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 03:18 PM', 'Brickwork laying & Lean casting', NULL, NULL, NULL, NULL, NULL),
(331, 'VR-000327', '2022-07-07 07:33 PM', 12, 32, '2022-07-07 12:36:15', '2022-07-11 03:03:39', 'reject', '2022-07-11 10:03:39am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 07:33 PM', 'Floor Tile  for Kitchen Room', NULL, NULL, NULL, NULL, NULL),
(332, 'VR-000328', '2022-07-07 07:36 PM', 12, 32, '2022-07-07 12:37:04', '2022-07-14 07:24:57', 'reject', '2022-07-14 14:24:57pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 07:36 PM', 'Wall Tile For Kitchen Room', NULL, NULL, NULL, NULL, NULL),
(333, 'VR-000329', '2022-07-07 07:37 PM', 12, 32, '2022-07-07 12:41:23', '2022-07-11 03:03:29', 'reject', '2022-07-11 10:03:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 07:39 PM', 'Heat Proof Tiling For Kitchen Counter', NULL, NULL, NULL, NULL, NULL),
(334, 'VR-000330', '2022-07-08 12:29 PM', 4, 26, '2022-07-08 05:32:10', '2022-07-10 13:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-07-10 08:03 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 12:29 PM', 'Roof FL and 1st FL topping casting', NULL, NULL, NULL, NULL, NULL),
(335, 'VR-000331', '2022-07-08 12:38 PM', 11, 25, '2022-07-08 05:39:43', '2022-07-08 06:41:49', 'reject', '2022-07-08 13:41:49pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 12:38 PM', 'For Plastering Work', NULL, NULL, NULL, NULL, NULL),
(336, 'VR-000332', '2022-07-08 12:42 PM', 11, 25, '2022-07-08 05:42:55', '2022-07-08 06:41:34', 'accept', '2022-07-08 13:41:11pm', 'finished', '2022-07-08 13:41:34pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 12:42 PM', 'For Plastering Work', NULL, NULL, NULL, NULL, NULL),
(337, 'VR-000333', '2022-07-08 12:59 PM', 8, 36, '2022-07-08 06:00:37', '2022-07-11 04:45:06', 'accept', '2022-07-11 11:40:18am', 'finished', '2022-07-11 11:45:06am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 10:00 AM', 'Fence', NULL, NULL, NULL, NULL, NULL),
(338, 'VR-000334', '2022-07-08 01:43 PM', 36, 55, '2022-07-08 06:45:45', '2022-07-09 06:20:14', 'accept', '2022-07-09 13:08:08pm', 'finished', '2022-07-09 13:20:14pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 01:44 PM', 'Formwork for Short Column', NULL, NULL, NULL, NULL, NULL),
(339, 'VR-000335', '2022-07-08 01:45 PM', 36, 55, '2022-07-08 06:46:42', '2022-07-09 06:19:05', 'accept', '2022-07-09 13:08:13pm', 'finished', '2022-07-09 13:19:05pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 01:46 PM', 'Formwork for Short Column', NULL, NULL, NULL, NULL, NULL),
(340, 'VR-000336', '2022-07-08 04:19 PM', 36, 55, '2022-07-08 09:33:21', '2022-07-18 01:05:06', 'accept', '2022-07-09 14:34:18pm', 'finished', '2022-07-09 14:34:38pm', 'finished', '2022-07-18 08:05:06am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-10 01:00 PM', 'For Lean Concrete', NULL, NULL, NULL, NULL, NULL),
(341, 'VR-000337', '2022-07-08 04:54 PM', 21, 37, '2022-07-08 09:55:26', '2022-07-14 08:56:19', 'accept', '2022-07-09 13:13:41pm', 'finished', '2022-07-09 13:15:00pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 03:56 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 04:54 PM', 'Curing', NULL, NULL, NULL, NULL, NULL),
(342, 'VR-000338', '2022-07-11 12:18 AM', 7, 22, '2022-07-08 17:20:55', '2022-07-09 05:20:13', 'accept', '2022-07-09 12:19:25pm', 'finished', '2022-07-09 12:20:13pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:18 AM', 'For 1st floor topping work', NULL, NULL, NULL, NULL, NULL),
(343, 'VR-000339', '2022-07-09 12:24 AM', 7, 22, '2022-07-08 17:25:21', '2022-07-10 04:28:42', 'accept', '2022-07-09 12:19:10pm', 'finished', '2022-07-09 12:19:45pm', NULL, NULL, NULL, NULL, 'received', '2022-07-10 11:28 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:25 AM', 'For 1st floor topping work', NULL, NULL, NULL, NULL, NULL),
(344, 'VR-000340', '2022-07-09 09:59 AM', 16, 44, '2022-07-09 03:01:21', '2022-07-16 05:38:10', 'accept', '2022-07-11 10:37:40am', 'finished', '2022-07-11 10:38:53am', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:37 PM', 'finished', '2022-07-14 21:49:06pm', NULL, NULL, NULL, NULL, '2022-07-11 09:59 AM', 'First floor slab', NULL, NULL, NULL, NULL, NULL),
(345, 'VR-000341', '2022-07-09 10:01 AM', 16, 44, '2022-07-09 03:02:43', '2022-07-16 05:38:24', 'accept', '2022-07-11 10:07:43am', 'finished', '2022-07-11 10:37:22am', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:38 PM', 'finished', '2022-07-14 21:49:53pm', NULL, NULL, NULL, NULL, '2022-07-11 10:01 AM', 'first floor beam', NULL, NULL, NULL, NULL, NULL),
(346, 'VR-000342', '2022-07-09 10:01 AM', 16, 44, '2022-07-09 03:02:43', '2022-07-11 03:07:53', 'reject', '2022-07-11 10:07:53am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 10:01 AM', 'first floor beam', NULL, NULL, NULL, NULL, NULL),
(347, 'VR-000343', '2022-07-09 10:02 AM', 16, 44, '2022-07-09 03:03:18', '2022-07-16 05:38:50', 'accept', '2022-07-11 10:35:00am', 'finished', '2022-07-11 10:35:48am', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:38 PM', 'finished', '2022-07-14 21:51:46pm', NULL, NULL, NULL, NULL, '2022-07-11 10:03 AM', 'first floor beam', NULL, NULL, NULL, NULL, NULL),
(348, 'VR-000344', '2022-07-09 10:17 AM', 9, 22, '2022-07-09 03:17:56', '2022-07-10 04:28:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'received', '2022-07-10 11:28 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-10 10:17 AM', 'For Fence work', NULL, NULL, NULL, NULL, NULL),
(349, 'VR-000345', '2022-07-09 10:27 AM', 8, 36, '2022-07-09 03:31:43', '2022-07-18 02:19:19', 'accept', '2022-07-11 10:46:44am', 'finished', '2022-07-11 10:47:23am', 'finished', '2022-07-18 07:56:46am', NULL, NULL, 'received', '2022-07-18 09:19 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 10:27 AM', 'Plastering work(1F)+ Brickwork (fence)', NULL, NULL, NULL, NULL, NULL),
(350, 'VR-000346', '2022-07-09 10:45 AM', 2, 28, '2022-07-09 03:45:32', '2022-07-15 03:20:21', 'accept', '2022-07-11 10:17:08am', 'finished', '2022-07-11 10:17:39am', NULL, NULL, NULL, NULL, 'received', '2022-07-15 10:20 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-10 10:45 AM', 'GF Brickwork', NULL, NULL, NULL, NULL, NULL),
(351, 'VR-000347', '2022-07-09 10:45 AM', 2, 28, '2022-07-09 03:47:58', '2022-07-11 03:38:26', 'accept', '2022-07-11 10:24:14am', 'finished', '2022-07-11 10:38:26am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 10:45 AM', '1F Brickwork', NULL, NULL, NULL, NULL, NULL),
(352, 'VR-000348', '2022-07-09 10:48 AM', 2, 28, '2022-07-09 03:52:40', '2022-07-16 08:44:23', 'accept', '2022-07-11 10:48:11am', 'finished', '2022-07-11 11:29:30am', NULL, NULL, NULL, NULL, 'received', '2022-07-16 03:44 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 10:48 AM', '1F Vertical and horizontal stiffener', NULL, NULL, NULL, NULL, NULL),
(353, 'VR-000349', '2022-07-09 12:02 PM', 11, 25, '2022-07-09 05:03:45', '2022-07-11 03:58:23', 'accept', '2022-07-11 10:55:48am', 'finished', '2022-07-11 10:58:23am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:03 PM', 'For Gable BW &Plastering Work And DPC /Lintel/Stiffner', NULL, NULL, NULL, NULL, NULL),
(354, 'VR-000350', '2022-07-09 12:03 PM', 11, 25, '2022-07-09 05:06:29', '2022-07-11 03:53:34', 'accept', '2022-07-11 10:53:21am', 'finished', '2022-07-11 10:53:34am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:12 AM', 'For Gable BW &Plastering And DPC /Lintel/Stiffner', NULL, NULL, NULL, NULL, NULL),
(355, 'VR-000351', '2022-07-09 12:06 PM', 11, 25, '2022-07-09 05:10:38', '2022-07-09 05:25:10', 'reject', '2022-07-09 12:25:10pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:06 PM', 'For Stair /G to 1st col/ 1st FB', NULL, NULL, NULL, NULL, NULL),
(356, 'VR-000352', '2022-07-09 12:12 PM', 14, 25, '2022-07-09 05:13:42', '2022-07-13 09:36:58', 'accept', '2022-07-13 16:36:51pm', 'finished', '2022-07-13 16:36:58pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:12 PM', 'For Stair/G to 1st col:/FB', NULL, NULL, NULL, NULL, NULL),
(357, 'VR-000353', '2022-07-09 12:13 PM', 14, 25, '2022-07-09 05:15:17', '2022-07-13 09:37:19', 'accept', '2022-07-13 16:36:46pm', 'finished', '2022-07-13 16:37:19pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:12 AM', 'G to 1st Col:/ 1st floor beam', NULL, NULL, NULL, NULL, NULL),
(358, 'VR-000354', '2022-07-09 12:15 PM', 14, 25, '2022-07-09 05:16:13', '2022-07-13 09:38:52', 'accept', '2022-07-13 16:36:41pm', 'finished', '2022-07-13 16:38:52pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 12:12 AM', 'For G to 1st Col: &1st floor Beam', NULL, NULL, NULL, NULL, NULL),
(359, 'VR-000355', '2022-07-09 12:46 PM', 8, 36, '2022-07-09 05:47:32', '2022-07-18 00:52:43', 'accept', '2022-07-11 11:17:20am', 'finished', '2022-07-11 11:17:36am', 'finished', '2022-07-18 07:52:43am', NULL, NULL, 'received', '2022-07-15 10:10 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 09:00 AM', 'Plastering work', NULL, NULL, NULL, NULL, NULL),
(360, 'VR-000356', '2022-07-09 04:43 PM', 6, 54, '2022-07-09 09:44:59', '2022-07-11 03:51:54', 'accept', '2022-07-11 10:48:31am', 'finished', '2022-07-11 10:51:54am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-09 04:43 PM', 'Patty work', NULL, NULL, NULL, NULL, NULL),
(361, 'VR-000357', '2022-07-09 04:45 PM', 6, 54, '2022-07-09 09:49:23', '2022-07-11 03:46:30', 'accept', '2022-07-11 10:46:02am', 'finished', '2022-07-11 10:46:30am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 09:00 AM', 'Patty work', NULL, NULL, NULL, NULL, NULL),
(362, 'VR-000358', '2022-07-10 11:31 AM', 7, 22, '2022-07-10 04:33:03', '2022-07-11 04:50:59', 'accept', '2022-07-11 11:50:52am', 'finished', '2022-07-11 11:50:59am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 11:32 AM', 'For external plaster work', NULL, NULL, NULL, NULL, NULL),
(363, 'VR-000359', '2022-07-10 11:49 AM', 9, 22, '2022-07-10 04:57:31', '2022-07-13 03:02:35', 'accept', '2022-07-13 10:00:31am', 'finished', '2022-07-13 10:02:35am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 11:57 AM', 'For external plaster work (1\"&1-1/4\") difference, Gfloor sub-floor work, corner plaster work (2times &3times cos of rainy), kicker concrete & plaster work', NULL, NULL, NULL, NULL, NULL),
(364, 'VR-000360', '2022-07-10 11:57 AM', 7, 22, '2022-07-10 04:58:21', '2022-07-11 04:47:10', 'accept', '2022-07-11 11:46:53am', 'finished', '2022-07-11 11:47:10am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 11:58 AM', 'For external plaster work', NULL, NULL, NULL, NULL, NULL),
(365, 'VR-000361', '2022-07-10 12:02 PM', 9, 22, '2022-07-10 05:02:36', '2022-07-13 09:20:28', 'accept', '2022-07-11 10:40:53am', 'finished', '2022-07-11 10:43:15am', NULL, NULL, NULL, NULL, 'received', '2022-07-13 04:18 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-12 12:02 PM', 'For external plaster work (1\"&1-1/4\") difference, Gfloor sub-floor work, corner plaster work (2times &3times cos of rainy), kicker concrete & plaster work', NULL, NULL, NULL, NULL, NULL),
(366, 'VR-000362', '2022-07-10 05:21 PM', 12, 32, '2022-07-10 10:25:30', '2022-07-11 03:34:25', 'reject', '2022-07-11 10:34:25am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:22 PM', 'For Column Corner Plasterwork and ဘုရားစဥ်လုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(367, 'VR-000363', '2022-07-10 05:25 PM', 12, 32, '2022-07-10 10:27:00', '2022-07-11 03:34:20', 'reject', '2022-07-11 10:34:20am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:26 PM', 'For Columns Corner Plasterwork and ဘုရားစဥ် လုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(368, 'VR-000364', '2022-07-10 05:27 PM', 12, 32, '2022-07-10 10:29:21', '2022-07-11 03:34:14', 'reject', '2022-07-11 10:34:14am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:27 PM', 'For Ground Tank အဖုံး and Septic Tank အဖုံး Concrete Casting', NULL, NULL, NULL, NULL, NULL),
(369, 'VR-000365', '2022-07-10 05:29 PM', 12, 32, '2022-07-10 10:30:25', '2022-07-11 03:34:08', 'reject', '2022-07-11 10:34:08am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:29 PM', 'For Ground Tank အဖုံး and Septic Tank အဖုံး Concrete Casting', NULL, NULL, NULL, NULL, NULL),
(370, 'VR-000366', '2022-07-10 05:30 PM', 12, 32, '2022-07-10 10:31:24', '2022-07-11 03:33:21', 'reject', '2022-07-11 10:33:21am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:31 PM', 'For Sunshades Corner Plasterwork', NULL, NULL, NULL, NULL, NULL),
(371, 'VR-000367', '2022-07-10 05:31 PM', 12, 32, '2022-07-10 10:32:35', '2022-07-11 03:33:12', 'reject', '2022-07-11 10:33:12am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:31 PM', 'For Sunshades Corner Plasterwork', NULL, NULL, NULL, NULL, NULL),
(372, 'VR-000368', '2022-07-10 05:32 PM', 12, 32, '2022-07-10 10:33:25', '2022-07-11 03:33:07', 'reject', '2022-07-11 10:33:07am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:32 PM', 'For Sunshades Corner Plasterwork', NULL, NULL, NULL, NULL, NULL),
(373, 'VR-000369', '2022-07-10 05:33 PM', 12, 32, '2022-07-10 10:36:00', '2022-07-11 03:33:00', 'reject', '2022-07-11 10:33:00am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:33 PM', 'Kitchen Counter လုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(374, 'VR-000370', '2022-07-10 05:36 PM', 12, 32, '2022-07-10 10:36:58', '2022-07-11 03:32:54', 'reject', '2022-07-11 10:32:54am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:36 PM', 'For Kitchen Counter လုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(375, 'VR-000371', '2022-07-10 05:36 PM', 12, 32, '2022-07-10 10:40:27', '2022-07-14 16:29:58', 'accept', '2022-07-11 10:26:54am', 'finished', '2022-07-11 10:29:00am', 'finished', '2022-07-14 23:29:58pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 05:39 PM', 'For Kitchen Counter လုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(376, 'VR-000372', '2022-07-10 06:38 PM', 11, 25, '2022-07-10 11:42:14', '2022-07-11 07:54:58', 'accept', '2022-07-11 13:56:05pm', 'finished', '2022-07-11 14:54:58pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 06:38 PM', 'For Ridge &Support', NULL, NULL, NULL, NULL, NULL),
(377, 'VR-000373', '2022-07-10 08:07 PM', 5, 26, '2022-07-10 13:10:07', '2022-07-14 06:24:09', 'accept', '2022-07-11 12:22:54pm', 'finished', '2022-07-11 12:32:05pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 01:23 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 08:08 PM', '2nd FL ceiling work', NULL, NULL, NULL, NULL, NULL),
(378, 'VR-000374', '2022-07-10 08:10 PM', 5, 26, '2022-07-10 13:10:54', '2022-07-14 06:24:21', 'accept', '2022-07-11 12:34:39pm', 'finished', '2022-07-11 12:35:02pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 01:24 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 08:10 PM', '2nd FL ceiling work', NULL, NULL, NULL, NULL, NULL),
(379, 'VR-000375', '2022-07-10 08:10 PM', 5, 26, '2022-07-10 13:13:24', '2022-07-10 13:13:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 08:10 PM', '2nd FL ceiling work', NULL, NULL, NULL, NULL, NULL),
(380, 'VR-000376', '2022-07-10 08:13 PM', 5, 26, '2022-07-10 13:14:08', '2022-07-10 13:14:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 08:13 PM', '2nd FL ceiling work', NULL, NULL, NULL, NULL, NULL),
(381, 'VR-000377', '2022-07-10 08:17 PM', 5, 26, '2022-07-10 13:18:35', '2022-07-14 04:13:17', 'accept', '2022-07-11 12:02:00pm', 'finished', '2022-07-14 11:13:17am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:17 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(382, 'VR-000378', '2022-07-10 08:18 PM', 5, 26, '2022-07-10 13:21:20', '2022-07-13 07:24:17', 'reject', '2022-07-13 14:24:17pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:18 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(383, 'VR-000379', '2022-07-10 08:21 PM', 5, 26, '2022-07-10 13:22:25', '2022-07-14 04:14:47', 'accept', '2022-07-14 11:14:20am', 'finished', '2022-07-14 11:14:47am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:21 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(384, 'VR-000380', '2022-07-10 08:23 PM', 5, 26, '2022-07-10 13:23:46', '2022-07-14 04:20:20', 'accept', '2022-07-14 11:20:08am', 'finished', '2022-07-14 11:20:20am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:23 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(385, 'VR-000381', '2022-07-10 08:23 PM', 5, 26, '2022-07-10 13:24:57', '2022-07-14 04:19:56', 'accept', '2022-07-14 11:19:48am', 'finished', '2022-07-14 11:19:56am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:23 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(386, 'VR-000382', '2022-07-10 08:24 PM', 5, 26, '2022-07-10 13:25:34', '2022-07-14 04:19:31', 'accept', '2022-07-14 11:19:21am', 'finished', '2022-07-14 11:19:31am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:24 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(387, 'VR-000383', '2022-07-10 08:25 PM', 5, 26, '2022-07-10 13:28:45', '2022-07-14 04:16:55', 'accept', '2022-07-14 11:16:47am', 'finished', '2022-07-14 11:16:55am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:25 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(388, 'VR-000384', '2022-07-10 08:31 PM', 5, 26, '2022-07-10 13:38:37', '2022-07-10 13:38:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:31 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(389, 'VR-000385', '2022-07-10 08:38 PM', 5, 26, '2022-07-10 13:39:45', '2022-07-10 13:39:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 08:38 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `variable_request_infos` (`id`, `code`, `date`, `customer_id`, `engineer_id`, `created_at`, `updated_at`, `accept_reject_status`, `accept_reject_date`, `qs_team_check_status`, `qs_team_check_date`, `logistics_team_check`, `logistics_team_check_date`, `management_accept_reject_status`, `management_accept_reject_date`, `received_by_engineer_status`, `received_date`, `actual_voucher_upload`, `actual_voucher_upload_date`, `finance_payment_slip_upload`, `finance_payment_slip_upload_date`, `logistics_team_send_status`, `logistics_team_send_date`, `need_date`, `work_scope`, `request_status`, `request_status_date`, `request_status_user`, `project_id`, `work_scope_id`) VALUES
(390, 'VR-000386', '2022-07-11 10:29 AM', 12, 32, '2022-07-11 03:29:53', '2022-07-11 04:03:14', 'reject', '2022-07-11 11:03:14am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 10:29 AM', 'GT,Septic,Sunshades,Corners,ဘုရားစဥ်လုပ်ငန်း&Kitchen Counter', NULL, NULL, NULL, NULL, NULL),
(391, 'VR-000387', '2022-07-11 10:29 AM', 12, 32, '2022-07-11 03:31:22', '2022-07-11 04:07:29', 'accept', '2022-07-11 11:07:22am', 'finished', '2022-07-11 11:07:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 10:30 AM', 'GT,Septic,Sunshades,Corners,ဘုရားစဥ်လုပ်ငန်း&Kitchen Counter', NULL, NULL, NULL, NULL, NULL),
(392, 'VR-000388', '2022-07-11 10:31 AM', 12, 32, '2022-07-11 03:54:05', '2022-07-11 04:14:10', 'accept', '2022-07-11 11:14:01am', 'finished', '2022-07-11 11:14:10am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 10:53 AM', 'GT,Septic,Sunshades,Corner,ဘုရားစဥ်လုပ်ငန်း&Kitchen Counter', NULL, NULL, NULL, NULL, NULL),
(393, 'VR-000389', '2022-07-11 10:59 AM', 17, 47, '2022-07-11 04:00:24', '2022-07-15 08:21:53', 'accept', '2022-07-11 11:23:13am', 'finished', '2022-07-11 11:23:27am', NULL, NULL, NULL, NULL, 'received', '2022-07-15 03:21 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 10:59 AM', 'SC ,GL-A lean casting', NULL, NULL, NULL, NULL, NULL),
(394, 'VR-000390', '2022-07-11 12:10 PM', 6, 54, '2022-07-11 05:11:42', '2022-07-11 05:18:29', 'accept', '2022-07-11 12:17:01pm', 'finished', '2022-07-11 12:18:29pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 02:00 PM', 'Ceilings board installation', NULL, NULL, NULL, NULL, NULL),
(395, 'VR-000391', '2022-07-11 12:13 PM', 6, 54, '2022-07-11 05:15:51', '2022-07-11 10:30:05', 'accept', '2022-07-11 17:29:13pm', 'finished', '2022-07-11 17:30:05pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 09:00 AM', 'Main Door & Abs door installation', NULL, NULL, NULL, NULL, NULL),
(396, 'VR-000392', '2022-07-11 12:23 PM', 5, 26, '2022-07-11 05:26:15', '2022-07-14 06:24:53', 'accept', '2022-07-11 12:36:20pm', 'finished', '2022-07-11 12:36:29pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 01:24 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 12:23 PM', '2nd FL Ceiling work', NULL, NULL, NULL, NULL, NULL),
(397, 'VR-000393', '2022-07-11 12:26 PM', 5, 26, '2022-07-11 05:28:02', '2022-07-14 06:25:10', 'accept', '2022-07-11 12:36:57pm', 'finished', '2022-07-11 12:37:17pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 01:24 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 12:26 PM', '2nd FL ceiling work', NULL, NULL, NULL, NULL, NULL),
(398, 'VR-000394', '2022-07-11 12:28 PM', 5, 26, '2022-07-11 05:29:40', '2022-07-14 06:25:22', 'accept', '2022-07-11 12:39:24pm', 'finished', '2022-07-11 12:37:40pm', NULL, NULL, NULL, NULL, 'received', '2022-07-14 01:25 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 12:28 PM', '2nd FL ceiling work', NULL, NULL, NULL, NULL, NULL),
(399, 'VR-000395', '2022-07-11 02:18 PM', 2, 28, '2022-07-11 07:19:06', '2022-07-14 03:16:22', 'accept', '2022-07-14 10:01:00am', 'finished', '2022-07-14 10:16:22am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 02:18 PM', '2F Brickwork', NULL, NULL, NULL, NULL, NULL),
(400, 'VR-000396', '2022-07-11 02:35 PM', 14, 25, '2022-07-11 07:37:29', '2022-07-13 02:39:53', 'accept', '2022-07-13 09:39:47am', 'finished', '2022-07-13 09:39:53am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-11 02:36 PM', 'For S.col &PB Concrete Casting', NULL, NULL, NULL, NULL, NULL),
(401, 'VR-000397', '2022-07-11 02:37 PM', 14, 25, '2022-07-11 07:38:17', '2022-07-13 02:35:31', 'accept', '2022-07-13 09:35:21am', 'finished', '2022-07-13 09:35:31am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 02:37 PM', 'For S:col&PB Concrete Casting', NULL, NULL, NULL, NULL, NULL),
(402, 'VR-000398', '2022-07-11 04:32 PM', 16, 44, '2022-07-11 09:39:09', '2022-07-16 05:39:14', 'accept', '2022-07-13 12:25:31pm', 'finished', '2022-07-13 12:30:32pm', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:38 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 04:38 PM', 'ground to 1st F.W installation', NULL, NULL, NULL, NULL, NULL),
(403, 'VR-000399', '2022-07-11 04:00 PM', 16, 44, '2022-07-12 00:22:02', '2022-07-16 05:39:44', 'accept', '2022-07-13 12:00:33pm', 'finished', '2022-07-13 12:00:49pm', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:39 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 07:21 AM', 'ground to 1st F.W', NULL, NULL, NULL, NULL, NULL),
(404, 'VR-000400', '2022-07-11 04:00 PM', 16, 44, '2022-07-12 06:19:23', '2022-07-13 03:41:08', 'reject', '2022-07-13 10:41:08am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 01:18 PM', 'Slab', NULL, NULL, NULL, NULL, NULL),
(405, 'VR-000401', '2022-07-13 09:43 AM', 6, 54, '2022-07-13 02:47:57', '2022-07-14 03:31:32', 'accept', '2022-07-14 10:31:18am', 'finished', '2022-07-14 10:31:32am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 09:00 AM', 'OE 8002 Ceiling White for Ceilings', NULL, NULL, NULL, NULL, NULL),
(406, 'VR-000402', '2022-07-13 10:29 AM', 16, 44, '2022-07-13 03:37:33', '2022-07-16 05:37:35', 'accept', '2022-07-13 12:38:24pm', 'finished', '2022-07-13 12:39:33pm', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:37 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 10:29 AM', 'Slab', NULL, NULL, NULL, NULL, NULL),
(407, 'VR-000403', '2022-07-13 11:07 AM', 11, 25, '2022-07-13 04:10:42', '2022-07-13 05:04:58', 'reject', '2022-07-13 12:04:58pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 11:07 AM', 'For Topping Work (G floor 4.5inch)', NULL, NULL, NULL, NULL, NULL),
(408, 'VR-000404', '2022-07-13 11:15 AM', 11, 25, '2022-07-13 04:16:17', '2022-07-15 03:23:46', 'accept', '2022-07-13 12:14:31pm', 'finished', '2022-07-13 12:14:40pm', 'finished', '2022-07-15 10:23:46am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 11:15 AM', 'For Topping Work (G.floor 4.5inch)', NULL, NULL, NULL, NULL, NULL),
(409, 'VR-000405', '2022-07-13 11:16 AM', 11, 25, '2022-07-13 04:17:17', '2022-07-13 05:14:15', 'accept', '2022-07-13 12:14:05pm', 'finished', '2022-07-13 12:14:15pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 11:16 AM', 'For Topping Work (G.floor 4.5in)', NULL, NULL, NULL, NULL, NULL),
(410, 'VR-000406', '2022-07-13 11:17 AM', 11, 25, '2022-07-13 04:18:08', '2022-07-13 05:13:53', 'accept', '2022-07-13 12:13:42pm', 'finished', '2022-07-13 12:13:53pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 11:17 AM', 'For Topping Work (G.floor 4.5inch)', NULL, NULL, NULL, NULL, NULL),
(411, 'VR-000407', '2022-07-13 11:21 AM', 16, 44, '2022-07-13 04:21:42', '2022-07-16 05:37:48', 'accept', '2022-07-13 12:36:30pm', 'finished', '2022-07-13 12:37:56pm', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:37 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 11:21 AM', 'slav', NULL, NULL, NULL, NULL, NULL),
(412, 'VR-000408', '2022-07-13 12:36 PM', 16, 44, '2022-07-13 05:50:11', '2022-07-16 05:37:25', 'accept', '2022-07-14 10:30:42am', 'finished', '2022-07-14 10:30:53am', NULL, NULL, NULL, NULL, 'received', '2022-07-16 12:37 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 12:36 PM', 'First floor slab and beam', NULL, NULL, NULL, NULL, NULL),
(413, 'VR-000409', '2022-07-13 01:13 PM', 2, 28, '2022-07-13 06:14:05', '2022-07-14 03:00:27', 'accept', '2022-07-14 10:00:02am', 'finished', '2022-07-14 10:00:27am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 09:00 AM', 'For scaffolding', NULL, NULL, NULL, NULL, NULL),
(414, 'VR-000410', '2022-07-13 01:14 PM', 2, 28, '2022-07-13 06:16:00', '2022-07-16 08:44:04', 'accept', '2022-07-14 09:55:34am', 'finished', '2022-07-14 09:56:56am', NULL, NULL, NULL, NULL, 'received', '2022-07-16 03:43 PM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 09:00 AM', 'For dowel bar and stiffener', NULL, NULL, NULL, NULL, NULL),
(415, 'VR-000411', '2022-07-13 02:35 PM', 9, 22, '2022-07-13 07:35:29', '2022-07-13 07:39:54', 'reject', '2022-07-13 14:39:54pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 02:35 PM', 'Foundation', NULL, NULL, NULL, NULL, NULL),
(416, 'VR-000412', '2022-07-10 02:53 PM', 5, 26, '2022-07-13 07:54:09', '2022-07-14 04:20:55', 'accept', '2022-07-14 11:20:47am', 'finished', '2022-07-14 11:20:55am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 02:53 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(419, 'VR-000415', '2022-07-13 03:27 PM', 36, 55, '2022-07-13 08:28:29', '2022-07-18 01:06:11', 'accept', '2022-07-14 13:49:37pm', 'finished', '2022-07-14 13:49:45pm', 'finished', '2022-07-18 08:06:11am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 10:00 AM', 'Brick work for Retaining wall', NULL, NULL, NULL, NULL, NULL),
(420, 'VR-000416', '2022-07-13 03:35 PM', 14, 25, '2022-07-13 08:37:33', '2022-07-13 09:35:05', 'accept', '2022-07-13 16:34:59pm', 'finished', '2022-07-13 16:35:05pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 03:36 PM', 'For Stirrup (FB & Col)', NULL, NULL, NULL, NULL, NULL),
(421, 'VR-000417', '2022-07-13 04:20 PM', 7, 22, '2022-07-13 09:21:52', '2022-07-14 02:32:29', 'accept', '2022-07-14 09:32:22am', 'finished', '2022-07-14 09:32:29am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 04:21 PM', 'For 2nd floor topping work', NULL, NULL, NULL, NULL, NULL),
(422, 'VR-000418', '2022-07-13 10:26 PM', 11, 25, '2022-07-13 15:36:41', '2022-07-13 15:36:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 10:26 PM', 'For Painting Work', NULL, NULL, NULL, NULL, NULL),
(423, 'VR-000417', '2022-07-14 10:25 AM', 6, 54, '2022-07-14 03:28:14', '2022-07-14 05:16:45', 'reject', '2022-07-14 12:16:45pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 10:25 AM', 'Vifeng Ceramic YF 22 ( 300 × 300 ) mm - 268 nos  DM 6076 - 12 nos', NULL, NULL, NULL, NULL, NULL),
(424, 'VR-000418', '2022-07-14 10:28 AM', 6, 54, '2022-07-14 03:29:01', '2022-07-14 05:12:30', 'accept', '2022-07-14 12:11:16pm', 'finished', '2022-07-14 12:12:30pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 10:28 AM', 'Tiling work', NULL, NULL, NULL, NULL, NULL),
(425, 'VR-000419', '2022-07-14 10:58 AM', 6, 54, '2022-07-14 03:59:51', '2022-07-14 05:10:55', 'accept', '2022-07-14 12:10:44pm', 'finished', '2022-07-14 12:10:55pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 10:58 AM', 'Tiling work ( 300 × 300 )mm Tiling', NULL, NULL, NULL, NULL, NULL),
(426, 'VR-000420', '2022-07-14 11:23 AM', 6, 54, '2022-07-14 04:25:56', '2022-07-14 05:06:19', 'accept', '2022-07-14 12:05:48pm', 'finished', '2022-07-14 12:06:19pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-14 11:23 AM', 'Kitchen counter tiling', NULL, NULL, NULL, NULL, NULL),
(427, 'VR-000421', '2022-07-14 11:25 AM', 36, 55, '2022-07-14 04:27:03', '2022-07-15 02:39:39', 'accept', '2022-07-15 09:39:18am', 'finished', '2022-07-15 09:39:39am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 10:00 AM', 'Footing & Lean Concrete Work', NULL, NULL, NULL, NULL, NULL),
(428, 'VR-000422', '2022-07-14 12:33 PM', 11, 25, '2022-07-14 05:39:06', '2022-07-15 11:06:49', 'accept', '2022-07-15 18:04:50pm', 'finished', '2022-07-15 18:06:49pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 12:33 PM', 'For Ceiling', NULL, NULL, NULL, NULL, NULL),
(429, 'VR-000423', '2022-07-14 12:41 PM', 11, 25, '2022-07-14 05:57:26', '2022-07-16 08:00:19', 'accept', '2022-07-16 14:52:44pm', 'finished', '2022-07-16 15:00:19pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 12:41 PM', 'For Tiling Work', NULL, NULL, NULL, NULL, NULL),
(430, 'VR-000424', '2022-07-14 12:58 PM', 11, 25, '2022-07-14 06:00:22', '2022-07-16 08:02:40', 'accept', '2022-07-16 15:01:26pm', 'finished', '2022-07-16 15:02:40pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 12:58 PM', 'For Tiling Work', NULL, NULL, NULL, NULL, NULL),
(431, 'VR-000425', '2022-07-14 02:49 PM', 12, 32, '2022-07-14 07:50:04', '2022-07-14 11:05:16', 'accept', '2022-07-14 18:04:09pm', 'finished', '2022-07-14 18:05:16pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 02:46 PM', 'Bath and WC ​ကြွေပြားလုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(432, 'VR-000426', '2022-07-14 02:50 PM', 12, 32, '2022-07-14 07:53:38', '2022-07-14 11:03:25', 'accept', '2022-07-14 17:58:23pm', 'finished', '2022-07-14 18:03:25pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 02:50 PM', 'Kitchen Room ​ကြွေပြားလုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(433, 'VR-000427', '2022-07-14 02:53 PM', 12, 32, '2022-07-14 07:58:03', '2022-07-14 10:52:32', 'accept', '2022-07-14 17:52:24pm', 'finished', '2022-07-14 17:52:32pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 02:57 PM', 'Kitchen Counter အပူခံ ​ကြွေပြားလုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(434, 'VR-000428', '2022-07-14 02:58 PM', 12, 32, '2022-07-14 07:59:30', '2022-07-23 14:28:25', 'accept', '2022-07-23 20:58:25pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 02:58 PM', 'Stairs ​ယပ်​တောင်​ကွေး​ကြွေပြားလုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(435, 'VR-000429', '2022-07-14 03:27 PM', 6, 54, '2022-07-14 08:28:23', '2022-07-15 04:06:19', 'accept', '2022-07-15 11:05:07am', 'finished', '2022-07-15 11:06:19am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 09:00 AM', 'Tiling work', NULL, NULL, NULL, NULL, NULL),
(436, 'VR-000430', '2022-07-14 04:00 PM', 21, 37, '2022-07-14 09:03:47', '2022-07-15 03:00:39', 'accept', '2022-07-15 10:00:31am', 'finished', '2022-07-15 10:00:39am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 09:00 AM', '1st Floor To Roof Slab Column', NULL, NULL, NULL, NULL, NULL),
(437, 'VR-000431', '2022-07-14 04:03 PM', 21, 37, '2022-07-14 09:04:53', '2022-07-15 02:53:04', 'accept', '2022-07-15 09:51:16am', 'finished', '2022-07-15 09:53:04am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 09:00 AM', '1st Floor to Roof Slab Column', NULL, NULL, NULL, NULL, NULL),
(438, 'VR-000432', '2022-07-14 04:50 PM', 5, 26, '2022-07-14 09:57:24', '2022-07-15 07:03:37', 'accept', '2022-07-15 14:03:00pm', 'finished', '2022-07-15 14:03:37pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 04:50 PM', 'Painting work', NULL, NULL, NULL, NULL, NULL),
(439, 'VR-000433', '2022-07-15 09:56 AM', 7, 22, '2022-07-15 02:57:36', '2022-07-15 03:03:52', 'accept', '2022-07-15 10:03:42am', 'finished', '2022-07-15 10:03:52am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 09:57 AM', 'For Fence brick work,Gtank brick work', NULL, NULL, NULL, NULL, NULL),
(440, 'VR-000434', '2022-07-15 10:19 AM', 2, 28, '2022-07-15 03:19:57', '2022-07-16 02:40:07', 'accept', '2022-07-16 09:38:24am', 'finished', '2022-07-16 09:40:07am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 09:00 AM', '1F brickwork', NULL, NULL, NULL, NULL, NULL),
(441, 'VR-000435', '2022-07-15 10:22 AM', 2, 28, '2022-07-15 03:24:11', '2022-07-16 02:42:45', 'accept', '2022-07-16 09:41:45am', 'finished', '2022-07-16 09:42:45am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 09:00 AM', '1F brickwork', NULL, NULL, NULL, NULL, NULL),
(442, 'VR-000436', '2022-07-15 10:57 AM', 14, 25, '2022-07-15 03:58:25', '2022-07-16 02:36:33', 'accept', '2022-07-16 09:36:18am', 'finished', '2022-07-16 09:36:33am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 10:57 AM', 'For RW Brick Work', NULL, NULL, NULL, NULL, NULL),
(443, 'VR-000437', '2022-07-15 11:25 AM', 8, 36, '2022-07-15 04:26:28', '2022-07-18 00:55:23', 'accept', '2022-07-16 09:40:43am', 'finished', '2022-07-16 09:41:05am', 'finished', '2022-07-18 07:55:23am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 09:00 AM', 'Plastering work(2F)', NULL, NULL, NULL, NULL, NULL),
(444, 'VR-000438', '2022-07-15 12:51 PM', 14, 25, '2022-07-15 05:58:03', '2022-07-16 02:45:15', 'accept', '2022-07-16 09:43:53am', 'finished', '2022-07-16 09:45:15am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 12:51 PM', 'For Concrete Casting', NULL, NULL, NULL, NULL, NULL),
(445, 'VR-000439', '2022-07-15 12:58 PM', 11, 25, '2022-07-15 06:04:23', '2022-07-16 07:07:36', 'accept', '2022-07-16 14:07:21pm', 'finished', '2022-07-16 14:07:36pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 12:58 PM', 'For RW Brick Work', NULL, NULL, NULL, NULL, NULL),
(446, 'VR-000440', '2022-07-15 01:04 PM', 11, 25, '2022-07-15 07:30:04', '2022-07-16 07:06:46', 'accept', '2022-07-16 14:06:28pm', 'finished', '2022-07-16 14:06:46pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 01:04 PM', 'For RW Brick Work', NULL, NULL, NULL, NULL, NULL),
(447, 'VR-000441', '2022-07-15 03:22 PM', 17, 47, '2022-07-15 08:22:34', '2022-07-17 04:09:48', 'accept', '2022-07-15 15:34:09pm', 'finished', '2022-07-15 15:34:19pm', NULL, NULL, NULL, NULL, 'received', '2022-07-17 11:09 AM', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 03:22 PM', 'lean casting for GB', NULL, NULL, NULL, NULL, NULL),
(448, 'VR-000442', '2022-07-15 05:47 PM', 17, 47, '2022-07-15 10:48:26', '2022-08-08 02:40:02', 'accept', '2022-07-16 09:55:36am', 'finished', '2022-07-16 09:55:43am', 'finished', '2022-08-08 09:10:02am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 05:47 PM', 'RW', NULL, NULL, NULL, NULL, NULL),
(449, 'VR-000443', '2022-07-15 06:00 PM', 2, 28, '2022-07-16 01:33:13', '2022-08-01 17:29:39', 'accept', '2022-07-16 09:44:14am', 'finished', '2022-07-16 09:44:32am', 'finished', '2022-08-01 23:59:39pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-17 09:00 AM', 'For scaffolding', NULL, NULL, NULL, NULL, NULL),
(450, 'VR-000444', '2022-07-16 10:19 AM', 36, 55, '2022-07-16 03:20:45', '2022-07-16 03:20:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 10:00 AM', 'Lean, Footing, Short Column and R.W Work', NULL, NULL, NULL, NULL, NULL),
(451, 'VR-000445', '2022-07-16 11:08 AM', 14, 25, '2022-07-16 04:10:01', '2022-07-16 04:10:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 11:08 AM', 'For Covering &Protection Work', NULL, NULL, NULL, NULL, NULL),
(452, 'VR-000446', '2022-07-16 11:15 AM', 14, 25, '2022-07-16 04:17:02', '2022-07-16 04:17:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 11:15 AM', 'For Backfilling Work', NULL, NULL, NULL, NULL, NULL),
(453, 'VR-000447', '2022-07-16 09:00 AM', 2, 28, '2022-07-16 04:23:11', '2022-07-16 04:23:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 09:00 AM', 'Facade beam FW', NULL, NULL, NULL, NULL, NULL),
(454, 'VR-000448', '2022-07-18 12:40 PM', 16, 44, '2022-07-16 05:41:08', '2022-08-01 17:27:19', 'accept', '2022-07-16 14:07:51pm', 'finished', '2022-07-16 14:11:16pm', 'finished', '2022-08-01 23:57:19pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 12:40 PM', 'ground beam', NULL, NULL, NULL, NULL, NULL),
(455, 'VR-000449', '2022-07-16 05:34 PM', 12, 32, '2022-07-16 10:36:18', '2022-07-16 10:36:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 05:34 PM', '​ကြွေပြားလုပ်ငန်း', NULL, NULL, NULL, NULL, NULL),
(456, 'VR-000450', '2022-07-16 05:00 PM', 2, 28, '2022-07-17 03:36:07', '2022-07-17 03:36:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 09:00 AM', 'GF sand filling', NULL, NULL, NULL, NULL, NULL),
(457, 'VR-000451', '2022-07-17 11:08 AM', 17, 47, '2022-07-17 04:09:21', '2022-07-17 04:09:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-18 11:08 AM', 'GB lean casting', NULL, NULL, NULL, NULL, NULL),
(458, 'VR-000452', '2022-07-17 05:50 PM', 12, 32, '2022-07-17 11:08:57', '2022-07-17 11:08:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 05:51 PM', 'For Putty and Paint', NULL, NULL, NULL, NULL, NULL),
(459, 'VR-000453', '2022-07-17 11:42 PM', 4, 26, '2022-07-17 16:44:08', '2022-07-17 16:44:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 11:42 PM', 'stair topping and plastering,Ground tank Cover Slab,G.tank Brick work,Corners plastering work', NULL, NULL, NULL, NULL, NULL),
(460, 'VR-000454', '2022-07-17 11:44 PM', 5, 26, '2022-07-17 16:45:42', '2022-07-20 02:33:08', 'accept', '2022-07-20 09:03:08am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-19 11:44 PM', 'G.Tank brick work,G.tank Foundation slab and Cover slab,stair topping and plastering', NULL, NULL, NULL, NULL, NULL),
(461, 'VR-000455', '2022-07-18 07:56 AM', 17, 47, '2022-07-18 00:57:15', '2022-07-20 02:31:42', 'accept', '2022-07-20 09:01:42am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 07:56 AM', 'RW', NULL, NULL, NULL, NULL, NULL),
(462, 'VR-000456', '2022-07-18 09:12 AM', 17, 47, '2022-07-18 02:13:03', '2022-07-20 02:28:12', 'reject', '2022-07-20 08:58:12am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 09:12 AM', 'RW & GT', NULL, NULL, NULL, NULL, NULL),
(463, 'VR-000457', '2022-07-18 09:19 AM', 8, 36, '2022-07-18 02:20:04', '2022-07-20 02:27:38', 'accept', '2022-07-20 08:56:59am', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-20 09:19 AM', 'Plastering work (2F)', NULL, '2022-07-20 08:57:38am', '1', NULL, NULL),
(464, 'VR-000458', '2022-08-06 09:13 PM', 9, 22, '2022-08-06 14:43:40', '2022-08-06 14:43:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 09:13 PM', 'Test', NULL, NULL, NULL, NULL, NULL),
(465, 'VR-000459', '2022-08-06 09:14 PM', 7, 22, '2022-08-06 14:44:46', '2022-08-06 14:44:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 09:14 PM', 'Testing', NULL, NULL, NULL, NULL, NULL),
(466, 'VR-000460', '2022-08-06 09:16 PM', 7, 22, '2022-08-06 14:46:16', '2022-08-06 14:46:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-06 09:16 PM', 'abcd', NULL, NULL, NULL, NULL, NULL),
(467, 'VR-000461', '2022-08-10 04:07 PM', 9, 22, '2022-08-10 09:37:58', '2022-08-10 09:37:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 04:07 PM', 'Test', NULL, NULL, NULL, NULL, NULL),
(468, 'VR-000462', '2022-08-10 04:08 PM', 9, 22, '2022-08-10 09:38:50', '2022-08-14 08:44:56', NULL, NULL, NULL, NULL, NULL, NULL, 'accept', '2022-08-14 15:14:56pm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-10 04:08 PM', 'Test1', NULL, NULL, NULL, NULL, NULL),
(469, 'VR-000463', '2022-08-18 12:42 AM', 7, 22, '2022-08-17 18:13:15', '2022-08-17 18:13:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 12:42 AM', 'Foundation', NULL, NULL, NULL, 8, 1),
(470, 'VR-000464', '2022-08-18 12:45 AM', 7, 22, '2022-08-17 18:16:01', '2022-08-17 18:16:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 12:45 AM', 'Foundation', NULL, NULL, NULL, 8, 1),
(471, 'VR-000465', '2022-08-18 12:48 AM', 7, 22, '2022-08-17 18:18:17', '2022-08-17 18:18:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 12:48 AM', 'Foundation', NULL, NULL, NULL, 8, 1),
(472, 'VR-000466', '2022-08-18 12:49 AM', 7, 22, '2022-08-17 18:19:22', '2022-08-17 18:19:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 12:49 AM', 'Foundation', NULL, NULL, NULL, 8, 1),
(473, 'VR-000467', '2022-08-18 01:12 AM', 7, 22, '2022-08-17 18:42:26', '2022-08-17 18:42:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-18 01:12 AM', 'Foundation', NULL, NULL, NULL, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `variable_request_items`
--

CREATE TABLE `variable_request_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `variable_asset_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `variable_request_info_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `work_scope_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variable_request_items`
--

INSERT INTO `variable_request_items` (`id`, `variable_asset_id`, `quantity`, `user_id`, `variable_request_info_id`, `created_at`, `updated_at`, `size`, `project_id`, `work_scope_id`) VALUES
(8, '26', '1.5', 31, 5, '2022-05-07 04:12:36', '2022-05-07 04:12:36', NULL, NULL, NULL),
(9, '26', '1.5', 31, 6, '2022-05-09 03:12:13', '2022-05-09 03:12:13', NULL, NULL, NULL),
(10, '4', '50', 26, 7, '2022-05-09 03:43:10', '2022-05-09 03:43:10', NULL, NULL, NULL),
(11, '26', '1.5', 26, 7, '2022-05-09 03:43:10', '2022-05-09 03:43:10', NULL, NULL, NULL),
(12, '27', '1', 26, 8, '2022-05-09 03:49:48', '2022-05-09 03:49:48', NULL, NULL, NULL),
(13, '4', '50', 25, 9, '2022-05-09 06:55:58', '2022-05-09 06:55:58', '42.5', NULL, NULL),
(14, '26', '3', 25, 10, '2022-05-09 07:02:30', '2022-05-09 07:02:30', 'null', NULL, NULL),
(15, '25', '3000', 31, 11, '2022-05-09 10:09:30', '2022-05-09 10:09:30', NULL, NULL, NULL),
(16, '25', '5000', 26, 12, '2022-05-10 06:07:06', '2022-05-10 06:07:06', NULL, NULL, NULL),
(17, '4', '30', 28, 13, '2022-05-10 09:40:28', '2022-05-10 09:40:28', NULL, NULL, NULL),
(18, '26', '1.5', 28, 13, '2022-05-10 09:40:28', '2022-05-10 09:40:28', NULL, NULL, NULL),
(19, '27', '1.5', 28, 13, '2022-05-10 09:40:28', '2022-05-10 09:40:28', NULL, NULL, NULL),
(20, '21', '5', 26, 14, '2022-05-11 09:17:26', '2022-05-11 09:17:26', '8\'x4\'', NULL, NULL),
(21, '4', '50', 26, 15, '2022-05-11 09:21:14', '2022-05-11 09:21:14', NULL, NULL, NULL),
(22, '25', '3000', 26, 16, '2022-05-11 09:23:38', '2022-05-11 09:23:38', NULL, NULL, NULL),
(23, '92', '150', 28, 17, '2022-05-12 09:49:48', '2022-05-12 09:49:48', NULL, NULL, NULL),
(24, '94', '15', 28, 17, '2022-05-12 09:49:48', '2022-05-12 09:49:48', NULL, NULL, NULL),
(25, '1', '50', 31, 18, '2022-05-12 12:23:48', '2022-05-12 12:23:48', NULL, NULL, NULL),
(26, '27', '1.5', 31, 18, '2022-05-12 12:23:48', '2022-05-12 12:23:48', NULL, NULL, NULL),
(27, '26', '1.5', 31, 18, '2022-05-12 12:23:48', '2022-05-12 12:23:48', NULL, NULL, NULL),
(28, '1', '40', 31, 19, '2022-05-13 13:04:42', '2022-05-13 13:04:42', NULL, NULL, NULL),
(29, '26', '1.5', 31, 19, '2022-05-13 13:04:42', '2022-05-13 13:04:42', NULL, NULL, NULL),
(30, '27', '2.5', 31, 19, '2022-05-13 13:04:42', '2022-05-13 13:04:42', NULL, NULL, NULL),
(31, '4', '20', 31, 20, '2022-05-13 13:05:23', '2022-05-13 13:05:23', NULL, NULL, NULL),
(32, '26', '1.5', 31, 21, '2022-05-21 12:33:06', '2022-05-21 12:33:06', NULL, NULL, NULL),
(33, '27', '1.5', 31, 21, '2022-05-21 12:33:06', '2022-05-21 12:33:06', NULL, NULL, NULL),
(34, '26', '1.5', 31, 22, '2022-05-23 01:14:35', '2022-05-23 01:14:35', NULL, NULL, NULL),
(35, '27', '1.5', 31, 22, '2022-05-23 01:14:35', '2022-05-23 01:14:35', NULL, NULL, NULL),
(36, '26', '1.5', 31, 23, '2022-05-27 09:26:29', '2022-05-27 09:26:29', NULL, NULL, NULL),
(37, '27', '1.5', 31, 23, '2022-05-27 09:26:29', '2022-05-27 09:26:29', NULL, NULL, NULL),
(38, '26', '3', 25, 24, '2022-05-30 13:27:38', '2022-05-30 13:27:38', NULL, NULL, NULL),
(39, '25', '5000', 25, 25, '2022-05-30 13:29:24', '2022-05-30 13:29:24', 'MGC', NULL, NULL),
(40, '26', '3', 25, 26, '2022-05-30 13:30:38', '2022-05-30 13:30:38', NULL, NULL, NULL),
(41, '4', '50', 28, 27, '2022-05-31 03:47:03', '2022-05-31 03:47:03', '50kg', NULL, NULL),
(42, '26', '3', 28, 28, '2022-05-31 03:52:08', '2022-05-31 03:52:08', 'Suds', NULL, NULL),
(43, '77', '25', 31, 29, '2022-05-31 07:48:04', '2022-05-31 07:48:04', NULL, NULL, NULL),
(44, '26', '1.5', 26, 30, '2022-05-31 08:49:28', '2022-05-31 08:49:28', NULL, NULL, NULL),
(45, '25', '5000', 31, 31, '2022-06-01 10:01:05', '2022-06-01 10:01:05', NULL, NULL, NULL),
(46, '25', '5000', 26, 32, '2022-06-01 10:30:01', '2022-06-01 10:30:01', NULL, NULL, NULL),
(47, '26', '1.5', 26, 33, '2022-06-01 10:31:00', '2022-06-01 10:31:00', NULL, NULL, NULL),
(48, '4', '40', 22, 34, '2022-06-01 14:17:48', '2022-06-01 14:17:48', NULL, NULL, NULL),
(49, '25', '10000', 22, 35, '2022-06-01 14:20:27', '2022-06-01 14:20:27', NULL, NULL, NULL),
(50, '26', '3', 22, 36, '2022-06-01 14:21:23', '2022-06-01 14:21:23', 'Suds', NULL, NULL),
(51, '10', '80', 22, 37, '2022-06-01 14:25:59', '2022-06-01 14:25:59', 'Nos', NULL, NULL),
(52, '5', '140', 22, 38, '2022-06-01 14:27:00', '2022-06-01 14:27:00', 'Nos', NULL, NULL),
(53, '7', '47', 22, 39, '2022-06-01 14:28:22', '2022-06-01 14:28:22', 'Nos', NULL, NULL),
(54, '17', '1', 28, 40, '2022-06-02 06:53:15', '2022-06-02 06:53:15', '11ft, 13ft', NULL, NULL),
(55, '4', '30', 36, 41, '2022-06-02 09:19:05', '2022-06-02 09:19:05', NULL, NULL, NULL),
(56, '26', '1', 36, 42, '2022-06-02 09:21:06', '2022-06-02 09:21:06', NULL, NULL, NULL),
(57, '22', '30', 28, 43, '2022-06-02 11:53:56', '2022-06-02 11:53:56', '8x4', NULL, NULL),
(58, '26', '1.5', 26, 44, '2022-06-02 14:20:06', '2022-06-02 14:20:06', NULL, NULL, NULL),
(59, '4', '50', 26, 45, '2022-06-02 14:21:11', '2022-06-02 14:21:11', NULL, NULL, NULL),
(60, '25', '5000', 31, 46, '2022-06-03 03:14:02', '2022-06-03 03:14:02', 'MGC', NULL, NULL),
(61, '26', '1.5', 37, 47, '2022-06-03 03:45:14', '2022-06-03 03:45:14', '1.5sud', NULL, NULL),
(62, '26', '3', 31, 48, '2022-06-03 09:03:45', '2022-06-03 09:03:45', 'ထမ်းသွင်း', NULL, NULL),
(63, '1', '35', 32, 49, '2022-06-03 09:59:12', '2022-06-03 09:59:12', 'Bags', NULL, NULL),
(64, '26', '2', 32, 50, '2022-06-03 10:00:22', '2022-06-03 10:00:22', 'Suds', NULL, NULL),
(65, '25', '1000', 32, 51, '2022-06-03 10:02:09', '2022-06-03 10:02:09', 'Nos.', NULL, NULL),
(66, '4', '35', 32, 52, '2022-06-03 10:09:02', '2022-06-03 10:09:02', 'Bags', NULL, NULL),
(67, '26', '2', 32, 53, '2022-06-03 10:10:25', '2022-06-03 10:10:25', 'Suds', NULL, NULL),
(68, '25', '5000', 28, 54, '2022-06-03 11:18:13', '2022-06-03 11:18:13', 'Upper', NULL, NULL),
(69, '104', '3', 31, 55, '2022-06-04 04:15:57', '2022-06-04 04:15:57', 'ထမ်းသွင်း', NULL, NULL),
(70, '26', '1.5', 26, 56, '2022-06-04 04:26:45', '2022-06-04 04:26:45', NULL, NULL, NULL),
(71, '27', '1', 37, 57, '2022-06-05 09:50:29', '2022-06-05 09:50:29', '1.5sud', NULL, NULL),
(72, '25', '3000', 37, 58, '2022-06-05 10:08:13', '2022-06-05 10:08:13', NULL, NULL, NULL),
(73, '26', '1.5', 26, 59, '2022-06-06 03:04:17', '2022-06-06 03:04:17', NULL, NULL, NULL),
(74, '25', '5000', 26, 60, '2022-06-06 03:06:56', '2022-06-06 03:06:56', NULL, NULL, NULL),
(75, '1', '50', 47, 61, '2022-06-06 03:30:48', '2022-06-06 03:30:48', '52.5', NULL, NULL),
(76, '26', '1.5', 47, 62, '2022-06-06 03:39:50', '2022-06-06 03:39:50', NULL, NULL, NULL),
(77, '27', '1.5', 47, 63, '2022-06-06 03:40:38', '2022-06-06 03:40:38', NULL, NULL, NULL),
(78, '1', '50', 37, 64, '2022-06-06 05:36:16', '2022-06-06 05:36:16', NULL, NULL, NULL),
(79, '1', '50', 37, 65, '2022-06-06 05:36:58', '2022-06-06 05:36:58', NULL, NULL, NULL),
(80, '101', '2', 31, 66, '2022-06-06 07:43:24', '2022-06-06 07:43:24', NULL, NULL, NULL),
(81, '83', '1', 28, 67, '2022-06-06 12:14:18', '2022-06-06 12:14:18', '1.2mm', NULL, NULL),
(82, '7', '4', 36, 68, '2022-06-07 02:42:05', '2022-06-07 02:42:05', NULL, NULL, NULL),
(83, '7', '0.076', 36, 69, '2022-06-07 02:58:36', '2022-06-07 02:58:36', NULL, NULL, NULL),
(84, '8', '1', 47, 70, '2022-06-07 03:13:58', '2022-06-07 03:13:58', NULL, NULL, NULL),
(85, '7', '2', 47, 71, '2022-06-07 03:15:39', '2022-06-07 03:15:39', NULL, NULL, NULL),
(86, '10', '1', 47, 72, '2022-06-07 03:16:07', '2022-06-07 03:16:07', NULL, NULL, NULL),
(87, '116', '2', 47, 73, '2022-06-07 06:34:10', '2022-06-07 06:34:10', 'sub', NULL, NULL),
(88, '26', '1.5', 31, 74, '2022-06-07 06:44:48', '2022-06-07 06:44:48', NULL, NULL, NULL),
(89, '4', '50', 31, 75, '2022-06-07 06:46:16', '2022-06-07 06:46:16', NULL, NULL, NULL),
(90, '26', '3', 22, 76, '2022-06-07 09:09:48', '2022-06-07 09:09:48', 'Suds', NULL, NULL),
(91, '26', '3', 26, 77, '2022-06-07 09:30:40', '2022-06-07 09:30:40', NULL, NULL, NULL),
(92, '1', '1.5', 26, 78, '2022-06-07 09:32:37', '2022-06-07 09:32:37', NULL, NULL, NULL),
(93, '26', '1.5', 26, 79, '2022-06-07 09:33:36', '2022-06-07 09:33:36', NULL, NULL, NULL),
(94, '7', '48', 37, 80, '2022-06-07 10:15:51', '2022-06-07 10:15:51', NULL, NULL, NULL),
(95, '10', '57', 37, 81, '2022-06-07 10:16:51', '2022-06-07 10:16:51', NULL, NULL, NULL),
(96, '27', '1.5', 26, 82, '2022-06-08 08:54:47', '2022-06-08 08:54:47', NULL, NULL, NULL),
(97, '4', '50', 26, 83, '2022-06-08 09:16:20', '2022-06-08 09:16:20', NULL, NULL, NULL),
(98, '5', '57', 44, 84, '2022-06-08 10:22:56', '2022-06-08 10:22:56', '12m', NULL, NULL),
(99, '12', '60', 44, 84, '2022-06-08 10:22:56', '2022-06-08 10:22:56', '12m', NULL, NULL),
(100, '1', '50', 44, 84, '2022-06-08 10:22:56', '2022-06-08 10:22:56', NULL, NULL, NULL),
(101, '117', '2', 28, 85, '2022-06-08 11:47:12', '2022-06-08 11:47:12', NULL, NULL, NULL),
(102, '17', '1', 28, 85, '2022-06-08 11:47:12', '2022-06-08 11:47:12', 'Above 11ft', NULL, NULL),
(103, '26', '1.5', 28, 85, '2022-06-08 11:47:12', '2022-06-08 11:47:12', NULL, NULL, NULL),
(104, '1', '100', 31, 86, '2022-06-09 01:23:51', '2022-06-09 01:23:51', NULL, NULL, NULL),
(105, '15', '0.5', 31, 87, '2022-06-09 01:26:38', '2022-06-09 01:26:38', NULL, NULL, NULL),
(106, '1', '50', 31, 88, '2022-06-09 03:11:25', '2022-06-09 03:11:25', NULL, NULL, NULL),
(107, '1', '50', 44, 89, '2022-06-09 04:05:52', '2022-06-09 04:05:52', NULL, NULL, NULL),
(108, '10', '57', 44, 89, '2022-06-09 04:05:52', '2022-06-09 04:05:52', NULL, NULL, NULL),
(109, '7', '60', 44, 89, '2022-06-09 04:05:52', '2022-06-09 04:05:52', NULL, NULL, NULL),
(110, '1', '27', 32, 90, '2022-06-09 05:50:50', '2022-06-09 05:50:50', 'Bags', NULL, NULL),
(111, '26', '1', 32, 90, '2022-06-09 05:50:50', '2022-06-09 05:50:50', 'Suds', NULL, NULL),
(112, '1', '39', 32, 91, '2022-06-09 06:12:13', '2022-06-09 06:12:13', 'Bags', NULL, NULL),
(113, '26', '3', 32, 91, '2022-06-09 06:12:13', '2022-06-09 06:12:13', 'Suds', NULL, NULL),
(114, '25', '5000', 36, 92, '2022-06-09 10:15:49', '2022-06-09 10:15:49', NULL, NULL, NULL),
(115, '4', '30', 36, 93, '2022-06-09 10:19:47', '2022-06-09 10:19:47', NULL, NULL, NULL),
(116, '26', '2', 22, 94, '2022-06-09 12:53:35', '2022-06-09 12:53:35', 'Suds', NULL, NULL),
(117, '4', '50', 22, 94, '2022-06-09 12:53:35', '2022-06-09 12:53:35', 'Bags', NULL, NULL),
(118, '106', '1500', 28, 95, '2022-06-10 02:52:31', '2022-06-10 02:52:31', '20mm', NULL, NULL),
(119, '25', '1000', 37, 96, '2022-06-10 04:11:21', '2022-06-10 04:11:21', NULL, NULL, NULL),
(120, '26', '1.5', 37, 97, '2022-06-10 04:15:28', '2022-06-10 04:15:28', '1.5', NULL, NULL),
(121, '26', '1.5', 31, 98, '2022-06-10 04:20:20', '2022-06-10 04:20:20', NULL, NULL, NULL),
(122, '26', '1', 36, 99, '2022-06-10 06:26:36', '2022-06-10 06:26:36', NULL, NULL, NULL),
(123, '25', '5000', 31, 100, '2022-06-10 07:32:56', '2022-06-10 07:32:56', 'MGC', NULL, NULL),
(124, '26', '1', 47, 101, '2022-06-10 07:39:32', '2022-06-10 07:39:32', '1', NULL, NULL),
(125, '10', '0.13', 31, 102, '2022-06-10 08:37:13', '2022-06-10 08:37:13', NULL, NULL, NULL),
(126, '19', '120', 44, 103, '2022-06-10 09:15:02', '2022-06-10 09:15:02', NULL, NULL, NULL),
(127, '21', '12', 44, 103, '2022-06-10 09:15:02', '2022-06-10 09:15:02', NULL, NULL, NULL),
(128, '4', '50', 26, 104, '2022-06-10 10:39:18', '2022-06-10 10:39:18', NULL, NULL, NULL),
(129, '26', '1.5', 26, 105, '2022-06-10 10:40:28', '2022-06-10 10:40:28', NULL, NULL, NULL),
(130, '15', '1', 28, 106, '2022-06-10 15:02:53', '2022-06-10 15:02:53', 'Coil', NULL, NULL),
(131, '26', '1.5', 44, 107, '2022-06-11 02:32:54', '2022-06-11 02:32:54', NULL, NULL, NULL),
(132, '27', '1.5', 44, 107, '2022-06-11 02:32:54', '2022-06-11 02:32:54', NULL, NULL, NULL),
(133, '95', '15', 31, 108, '2022-06-11 04:42:25', '2022-06-11 04:42:25', NULL, NULL, NULL),
(134, '97', '10', 31, 108, '2022-06-11 04:42:25', '2022-06-11 04:42:25', NULL, NULL, NULL),
(135, '117', '3', 26, 109, '2022-06-11 04:50:27', '2022-06-11 04:50:27', NULL, NULL, NULL),
(136, '117', '3', 26, 110, '2022-06-11 04:51:14', '2022-06-11 04:51:14', NULL, NULL, NULL),
(137, '4', '64', 22, 111, '2022-06-11 04:55:27', '2022-06-11 04:55:27', 'Bags', NULL, NULL),
(138, '4', '50', 22, 112, '2022-06-11 05:03:02', '2022-06-11 05:03:02', 'Bags', NULL, NULL),
(139, '26', '2', 22, 112, '2022-06-11 05:03:02', '2022-06-11 05:03:02', 'Suds', NULL, NULL),
(140, '26', '1.5', 31, 113, '2022-06-12 02:21:17', '2022-06-12 02:21:17', NULL, NULL, NULL),
(141, '27', '1.5', 31, 113, '2022-06-12 02:21:17', '2022-06-12 02:21:17', NULL, NULL, NULL),
(142, '17', '1', 28, 114, '2022-06-12 11:04:06', '2022-06-12 11:04:06', '10ft , 12ft', NULL, NULL),
(143, '22', '15', 28, 115, '2022-06-12 11:05:59', '2022-06-12 11:05:59', 'White Elephant brand', NULL, NULL),
(144, '10', '65', 44, 116, '2022-06-13 02:43:25', '2022-06-13 02:43:25', NULL, NULL, NULL),
(145, '6', '20', 44, 116, '2022-06-13 02:43:25', '2022-06-13 02:43:25', NULL, NULL, NULL),
(146, '25', '5000', 44, 117, '2022-06-13 03:42:02', '2022-06-13 03:42:02', NULL, NULL, NULL),
(147, '25', '10000', 28, 118, '2022-06-13 03:51:44', '2022-06-13 03:51:44', 'MGC Brand', NULL, NULL),
(148, '5', '2', 28, 118, '2022-06-13 03:51:44', '2022-06-13 03:51:44', NULL, NULL, NULL),
(149, '26', '1.5', 44, 119, '2022-06-13 04:00:28', '2022-06-13 04:00:28', NULL, NULL, NULL),
(150, '25', '5000', 26, 120, '2022-06-13 06:44:17', '2022-06-13 06:44:17', NULL, NULL, NULL),
(151, '7', '33', 44, 121, '2022-06-13 07:21:31', '2022-06-13 07:21:31', '1.2', NULL, NULL),
(152, '8', '21', 44, 121, '2022-06-13 07:21:31', '2022-06-13 07:21:31', NULL, NULL, NULL),
(153, '26', '1.5', 26, 122, '2022-06-13 09:02:34', '2022-06-13 09:02:34', NULL, NULL, NULL),
(154, '26', '1.5', 26, 123, '2022-06-13 09:05:49', '2022-06-13 09:05:49', NULL, NULL, NULL),
(155, '26', '1.5', 37, 124, '2022-06-13 09:27:18', '2022-06-13 09:27:18', '1.5', NULL, NULL),
(156, '27', '1.5', 37, 125, '2022-06-13 09:28:14', '2022-06-13 09:28:14', '1.5', NULL, NULL),
(157, '20', '0.35', 37, 126, '2022-06-13 09:29:39', '2022-06-13 09:29:39', '0.35', NULL, NULL),
(158, '18', '0.20', 37, 127, '2022-06-13 09:31:58', '2022-06-13 09:31:58', '0.20', NULL, NULL),
(159, '22', '22', 37, 128, '2022-06-13 09:33:00', '2022-06-13 09:33:00', '22', NULL, NULL),
(160, '4', '50', 22, 129, '2022-06-13 11:34:22', '2022-06-13 11:34:22', 'Bags', NULL, NULL),
(161, '26', '5', 22, 129, '2022-06-13 11:34:22', '2022-06-13 11:34:22', 'Suds', NULL, NULL),
(162, '4', '40', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Bags', NULL, NULL),
(163, '26', '3', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Suds', NULL, NULL),
(164, '25', '5000', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Nos', NULL, NULL),
(165, '27', '2', 22, 130, '2022-06-13 11:47:48', '2022-06-13 11:47:48', 'Suds', NULL, NULL),
(166, '30', '162', 36, 131, '2022-06-14 02:01:23', '2022-06-14 02:01:23', NULL, NULL, NULL),
(167, '4', '80', 22, 132, '2022-06-14 07:21:42', '2022-06-14 07:21:42', 'Bags', NULL, NULL),
(168, '27', '1.5', 22, 132, '2022-06-14 07:21:42', '2022-06-14 07:21:42', 'Suds', NULL, NULL),
(169, '26', '6', 37, 133, '2022-06-14 07:59:54', '2022-06-14 07:59:54', '6', NULL, NULL),
(170, '4', '10', 37, 134, '2022-06-14 08:00:50', '2022-06-14 08:00:50', '10', NULL, NULL),
(171, '1', '40', 37, 135, '2022-06-14 08:01:45', '2022-06-14 08:01:45', '40', NULL, NULL),
(172, '25', '1000', 37, 136, '2022-06-14 08:37:32', '2022-06-14 08:37:32', '1000', NULL, NULL),
(173, '26', '1.5', 31, 137, '2022-06-14 10:03:04', '2022-06-14 10:03:04', NULL, NULL, NULL),
(174, '4', '100', 26, 138, '2022-06-14 10:52:45', '2022-06-14 10:52:45', NULL, NULL, NULL),
(175, '4', '100', 26, 139, '2022-06-14 11:00:41', '2022-06-14 11:00:41', NULL, NULL, NULL),
(176, '27', '1.5', 31, 140, '2022-06-14 11:53:13', '2022-06-14 11:53:13', NULL, NULL, NULL),
(177, '26', '1.5', 26, 141, '2022-06-15 01:59:18', '2022-06-15 01:59:18', NULL, NULL, NULL),
(178, '26', '1.5', 26, 142, '2022-06-15 01:59:54', '2022-06-15 01:59:54', NULL, NULL, NULL),
(179, '26', '1.5', 26, 143, '2022-06-15 02:00:30', '2022-06-15 02:00:30', NULL, NULL, NULL),
(180, '26', '1.5', 26, 144, '2022-06-15 02:02:11', '2022-06-15 02:02:11', NULL, NULL, NULL),
(181, '26', '1.5', 26, 145, '2022-06-15 02:03:08', '2022-06-15 02:03:08', NULL, NULL, NULL),
(182, '26', '1.5', 26, 146, '2022-06-15 02:04:45', '2022-06-15 02:04:45', NULL, NULL, NULL),
(183, '131', '1.5', 22, 147, '2022-06-15 04:01:43', '2022-06-15 04:01:43', 'Suds', NULL, NULL),
(184, '107', '3', 31, 148, '2022-06-15 04:14:26', '2022-06-15 04:14:26', NULL, NULL, NULL),
(185, '95', '40', 47, 149, '2022-06-15 04:31:51', '2022-06-15 04:31:51', '2in', NULL, NULL),
(186, '26', '1', 36, 150, '2022-06-15 08:15:56', '2022-06-15 08:15:56', NULL, NULL, NULL),
(187, '26', '1', 36, 151, '2022-06-15 08:21:42', '2022-06-15 08:21:42', NULL, NULL, NULL),
(188, '26', '1.5', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL, NULL, NULL),
(189, '127', '1', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL, NULL, NULL),
(190, '121', '5', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL, NULL, NULL),
(191, '122', '5', 44, 152, '2022-06-15 10:23:11', '2022-06-15 10:23:11', NULL, NULL, NULL),
(192, '26', '3', 28, 153, '2022-06-16 01:47:45', '2022-06-16 01:47:45', NULL, NULL, NULL),
(193, '131', '1.5', 22, 154, '2022-06-16 06:50:49', '2022-06-16 06:50:49', 'Suds', NULL, NULL),
(194, '26', '1.5', 26, 155, '2022-06-16 07:01:22', '2022-06-16 07:01:22', NULL, NULL, NULL),
(195, '19', '.07', 37, 156, '2022-06-16 07:55:33', '2022-06-16 07:55:33', '.07', NULL, NULL),
(196, '19', '0.7', 37, 157, '2022-06-16 08:00:53', '2022-06-16 08:00:53', '0.7', NULL, NULL),
(197, '1', '100', 31, 158, '2022-06-17 05:21:50', '2022-06-17 05:21:50', NULL, NULL, NULL),
(198, '25', '5000', 36, 159, '2022-06-20 02:52:34', '2022-06-20 02:52:34', NULL, NULL, NULL),
(199, '4', '40', 25, 160, '2022-06-20 03:04:35', '2022-06-20 03:04:35', '42.5', NULL, NULL),
(200, '131', '3', 25, 161, '2022-06-20 03:05:55', '2022-06-20 03:05:55', NULL, NULL, NULL),
(201, '26', '1.5', 37, 162, '2022-06-20 03:12:03', '2022-06-20 03:12:03', '1.5', NULL, NULL),
(202, '26', '1.5', 37, 163, '2022-06-20 03:12:03', '2022-06-20 03:12:03', '1.5', NULL, NULL),
(203, '26', '1.5', 37, 164, '2022-06-20 03:12:04', '2022-06-20 03:12:04', '1.5', NULL, NULL),
(204, '4', '50', 26, 165, '2022-06-20 06:36:30', '2022-06-20 06:36:30', NULL, NULL, NULL),
(205, '26', '1.5', 26, 166, '2022-06-20 06:37:07', '2022-06-20 06:37:07', NULL, NULL, NULL),
(206, '98', '30', 47, 167, '2022-06-20 07:55:02', '2022-06-20 07:55:02', '1', NULL, NULL),
(207, '26', '1.5', 47, 168, '2022-06-20 09:29:56', '2022-06-20 09:29:56', '1', NULL, NULL),
(208, '1', '35', 32, 169, '2022-06-20 14:32:31', '2022-06-20 14:32:31', 'Bags', NULL, NULL),
(209, '26', '2', 32, 169, '2022-06-20 14:32:31', '2022-06-20 14:32:31', 'Suds', NULL, NULL),
(210, '1', '50', 44, 170, '2022-06-20 23:45:48', '2022-06-20 23:45:48', NULL, NULL, NULL),
(211, '26', '1.5', 44, 170, '2022-06-20 23:45:48', '2022-06-20 23:45:48', NULL, NULL, NULL),
(212, '27', '1.5', 44, 170, '2022-06-20 23:45:48', '2022-06-20 23:45:48', NULL, NULL, NULL),
(213, '1', '50', 44, 171, '2022-06-21 03:25:21', '2022-06-21 03:25:21', NULL, NULL, NULL),
(214, '26', '1.5', 44, 171, '2022-06-21 03:25:21', '2022-06-21 03:25:21', NULL, NULL, NULL),
(215, '27', '1.5', 44, 171, '2022-06-21 03:25:21', '2022-06-21 03:25:21', NULL, NULL, NULL),
(216, '1', '50', 44, 172, '2022-06-21 03:26:37', '2022-06-21 03:26:37', NULL, NULL, NULL),
(217, '26', '1.5', 44, 172, '2022-06-21 03:26:37', '2022-06-21 03:26:37', NULL, NULL, NULL),
(218, '27', '1.5', 44, 172, '2022-06-21 03:26:37', '2022-06-21 03:26:37', NULL, NULL, NULL),
(219, '4', '60', 22, 173, '2022-06-21 07:02:07', '2022-06-21 07:02:07', 'Bags', NULL, NULL),
(220, '25', '5000', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Nos', NULL, NULL),
(221, '26', '1.5', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Suds', NULL, NULL),
(222, '27', '1.5', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Suds', NULL, NULL),
(223, '4', '40', 22, 174, '2022-06-21 07:09:07', '2022-06-21 07:09:07', 'Bags', NULL, NULL),
(224, '92', '150', 31, 175, '2022-06-21 07:18:14', '2022-06-21 07:18:14', NULL, NULL, NULL),
(225, '130', '1', 26, 176, '2022-06-21 08:18:31', '2022-06-21 08:18:31', NULL, NULL, NULL),
(226, '26', '1.5', 22, 177, '2022-06-21 08:32:27', '2022-06-21 08:32:27', 'Suds', NULL, NULL),
(227, '136', '20', 31, 178, '2022-06-21 09:44:49', '2022-06-21 09:44:49', '2\' width', NULL, NULL),
(228, '135', '3', 31, 178, '2022-06-21 09:44:49', '2022-06-21 09:44:49', NULL, NULL, NULL),
(229, '133', '2', 31, 178, '2022-06-21 09:44:49', '2022-06-21 09:44:49', NULL, NULL, NULL),
(230, '104', '30', 31, 179, '2022-06-21 09:57:39', '2022-06-21 09:57:39', 'ထမ်းသွင်း', NULL, NULL),
(231, '1', '50', 47, 180, '2022-06-21 10:04:35', '2022-06-21 10:04:35', '1', NULL, NULL),
(232, '27', '1.3', 47, 181, '2022-06-21 10:14:47', '2022-06-21 10:14:47', '1', NULL, NULL),
(233, '27', '1.3', 47, 182, '2022-06-21 10:15:39', '2022-06-21 10:15:39', '1', NULL, NULL),
(234, '4', '20', 37, 183, '2022-06-21 10:18:32', '2022-06-21 10:18:32', '20', NULL, NULL),
(235, '25', '1500', 37, 184, '2022-06-21 10:19:24', '2022-06-21 10:19:24', '1500', NULL, NULL),
(236, '5', '1.8', 28, 185, '2022-06-21 15:54:51', '2022-06-21 15:54:51', NULL, NULL, NULL),
(237, '22', '4', 47, 186, '2022-06-22 03:19:07', '2022-06-22 03:19:07', NULL, NULL, NULL),
(238, '25', '1500', 47, 187, '2022-06-22 07:07:46', '2022-06-22 07:07:46', '1', NULL, NULL),
(239, '26', '1.5', 22, 188, '2022-06-22 07:19:57', '2022-06-22 07:19:57', 'Suds', NULL, NULL),
(240, '93', '100', 22, 189, '2022-06-22 07:28:19', '2022-06-22 07:28:19', 'Nos', NULL, NULL),
(241, '8', '2', 47, 190, '2022-06-23 02:35:56', '2022-06-23 02:35:56', '20', NULL, NULL),
(242, '4', '50', 26, 191, '2022-06-23 03:38:35', '2022-06-23 03:38:35', NULL, NULL, NULL),
(243, '34', '40', 25, 192, '2022-06-23 05:13:12', '2022-06-23 05:13:12', NULL, NULL, NULL),
(244, '139', '5', 25, 192, '2022-06-23 05:13:12', '2022-06-23 05:13:12', 'gal', NULL, NULL),
(245, '141', '5', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'Dz', NULL, NULL),
(246, '143', '1', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'DZ', NULL, NULL),
(247, '144', '4', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'nos', NULL, NULL),
(248, '145', '3', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'nos', NULL, NULL),
(249, '146', '4', 25, 193, '2022-06-23 05:19:45', '2022-06-23 05:19:45', 'nos', NULL, NULL),
(250, '147', '4', 25, 194, '2022-06-23 07:41:18', '2022-06-23 07:41:18', NULL, NULL, NULL),
(251, '151', '4', 25, 194, '2022-06-23 07:41:18', '2022-06-23 07:41:18', NULL, NULL, NULL),
(252, '7', '10', 37, 195, '2022-06-23 08:34:58', '2022-06-23 08:34:58', '10', NULL, NULL),
(253, '10', '38', 37, 196, '2022-06-23 08:36:04', '2022-06-23 08:36:04', '38', NULL, NULL),
(254, '17', '1.1', 37, 197, '2022-06-23 08:36:49', '2022-06-23 08:36:49', '1.1', NULL, NULL),
(255, '26', '1.5', 26, 198, '2022-06-23 08:42:20', '2022-06-23 08:42:20', NULL, NULL, NULL),
(256, '107', '3', 31, 199, '2022-06-23 09:08:11', '2022-06-23 09:08:11', NULL, NULL, NULL),
(257, '8', '15', 31, 200, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL, NULL, NULL),
(258, '7', '80', 31, 200, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL, NULL, NULL),
(259, '5', '80', 31, 200, '2022-06-23 09:10:58', '2022-06-23 09:10:58', NULL, NULL, NULL),
(260, '19', '112', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', '10ft', NULL, NULL),
(261, '127', '1', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL, NULL, NULL),
(262, '123', '5', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL, NULL, NULL),
(263, '121', '2', 44, 201, '2022-06-24 07:18:29', '2022-06-24 07:18:29', NULL, NULL, NULL),
(264, '23', '13', 44, 202, '2022-06-24 07:32:02', '2022-06-24 07:32:02', NULL, NULL, NULL),
(265, '116', '2', 47, 203, '2022-06-24 10:03:58', '2022-06-24 10:03:58', '1', NULL, NULL),
(266, '27', '1', 22, 204, '2022-06-24 12:00:16', '2022-06-24 12:00:16', 'Suds', NULL, NULL),
(267, '26', '1', 36, 205, '2022-06-25 02:04:11', '2022-06-25 02:04:11', NULL, NULL, NULL),
(268, '10', '0.56', 31, 206, '2022-06-25 03:28:20', '2022-06-25 03:28:20', NULL, NULL, NULL),
(269, '25', '4000', 31, 207, '2022-06-25 05:32:17', '2022-06-25 05:32:17', NULL, NULL, NULL),
(270, '1', '90', 26, 208, '2022-06-25 06:17:37', '2022-06-25 06:17:37', NULL, NULL, NULL),
(271, '26', '3', 26, 209, '2022-06-25 06:18:36', '2022-06-25 06:18:36', NULL, NULL, NULL),
(272, '27', '3.5', 26, 210, '2022-06-25 06:20:14', '2022-06-25 06:20:14', 'topping', NULL, NULL),
(273, '1', '40', 26, 211, '2022-06-25 06:22:51', '2022-06-25 06:22:51', NULL, NULL, NULL),
(274, '26', '1.5', 26, 212, '2022-06-25 06:23:37', '2022-06-25 06:23:37', NULL, NULL, NULL),
(275, '27', '2', 26, 213, '2022-06-25 06:24:22', '2022-06-25 06:24:22', 'Topping', NULL, NULL),
(276, '10', '30', 22, 214, '2022-06-25 07:21:01', '2022-06-25 07:21:01', 'Nos', NULL, NULL),
(277, '106', '1500', 28, 215, '2022-06-25 07:36:47', '2022-06-25 07:36:47', NULL, NULL, NULL),
(278, '26', '6', 37, 216, '2022-06-26 11:35:02', '2022-06-26 11:35:02', '6', NULL, NULL),
(279, '26', '3', 37, 217, '2022-06-26 11:36:58', '2022-06-26 11:36:58', '3', NULL, NULL),
(280, '26', '1.5', 22, 218, '2022-06-27 02:32:15', '2022-06-27 02:32:15', 'Suds', NULL, NULL),
(281, '26', '1.5', 26, 219, '2022-06-27 03:26:01', '2022-06-27 03:26:01', NULL, NULL, NULL),
(282, '157', '220', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'pcs', NULL, NULL),
(283, '158', '100', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'pcs', NULL, NULL),
(284, '160', '300', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'pcs', NULL, NULL),
(285, '161', '7', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'boxs', NULL, NULL),
(286, '159', '45', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'nos', NULL, NULL),
(287, '162', '200', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'pcs', NULL, NULL),
(288, '163', '1', 25, 220, '2022-06-27 04:50:24', '2022-06-27 04:50:24', 'box', NULL, NULL),
(289, '26', '1', 47, 221, '2022-06-27 06:10:53', '2022-06-27 06:10:53', '1', NULL, NULL),
(290, '107', '6', 37, 222, '2022-06-27 06:23:16', '2022-06-27 06:23:16', '6', NULL, NULL),
(291, '107', '3', 37, 223, '2022-06-27 06:24:17', '2022-06-27 06:24:17', '3', NULL, NULL),
(292, '17', '20', 44, 224, '2022-06-27 06:27:31', '2022-06-27 06:27:31', '16', NULL, NULL),
(293, '17', '50', 44, 224, '2022-06-27 06:27:31', '2022-06-27 06:27:31', '15', NULL, NULL),
(294, '22', '45', 44, 224, '2022-06-27 06:27:31', '2022-06-27 06:27:31', NULL, NULL, NULL),
(295, '26', '1.5', 22, 225, '2022-06-27 06:34:30', '2022-06-27 06:34:30', 'Suds', NULL, NULL),
(296, '4', '85', 22, 226, '2022-06-27 11:29:23', '2022-06-27 11:29:23', 'Bags', NULL, NULL),
(297, '4', '50', 28, 227, '2022-06-27 15:22:54', '2022-06-27 15:22:54', NULL, NULL, NULL),
(298, '104', '6', 28, 228, '2022-06-27 15:24:52', '2022-06-27 15:24:52', NULL, NULL, NULL),
(299, '26', '9', 44, 229, '2022-06-28 00:21:46', '2022-06-28 00:21:46', NULL, NULL, NULL),
(300, '104', '6', 37, 230, '2022-06-28 02:32:24', '2022-06-28 02:32:24', '6', NULL, NULL),
(301, '4', '100', 22, 231, '2022-06-28 02:32:56', '2022-06-28 02:32:56', 'Bags', NULL, NULL),
(302, '104', '3', 37, 232, '2022-06-28 02:33:25', '2022-06-28 02:33:25', '3', NULL, NULL),
(303, '21', '28', 31, 233, '2022-06-28 03:26:18', '2022-06-28 03:26:18', NULL, NULL, NULL),
(304, '4', '50', 26, 234, '2022-06-28 04:56:25', '2022-06-28 04:56:25', NULL, NULL, NULL),
(305, '4', '50', 26, 235, '2022-06-28 04:57:34', '2022-06-28 04:57:34', NULL, NULL, NULL),
(306, '5', '60', 28, 236, '2022-06-28 07:19:28', '2022-06-28 07:19:28', NULL, NULL, NULL),
(307, '15', '1', 28, 237, '2022-06-28 07:21:53', '2022-06-28 07:21:53', NULL, NULL, NULL),
(308, '25', '10000', 28, 238, '2022-06-28 07:24:14', '2022-06-28 07:24:14', 'MGC brand', NULL, NULL),
(309, '94', '1', 54, 239, '2022-06-28 09:39:27', '2022-06-28 09:39:27', NULL, NULL, NULL),
(310, '83', '7', 28, 240, '2022-06-28 13:50:46', '2022-06-28 13:50:46', NULL, NULL, NULL),
(311, '1', '28', 32, 241, '2022-06-28 14:17:54', '2022-06-28 14:17:54', 'Bags', NULL, NULL),
(312, '26', '1.2', 32, 241, '2022-06-28 14:17:54', '2022-06-28 14:17:54', 'Suds', NULL, NULL),
(313, '1', '55', 32, 242, '2022-06-28 14:21:34', '2022-06-28 14:21:34', 'Bags', NULL, NULL),
(314, '26', '1.5', 32, 242, '2022-06-28 14:21:34', '2022-06-28 14:21:34', 'Suds', NULL, NULL),
(315, '131', '2', 32, 242, '2022-06-28 14:21:34', '2022-06-28 14:21:34', 'Suds', NULL, NULL),
(316, '5', '3.7', 28, 243, '2022-06-29 02:13:51', '2022-06-29 02:13:51', NULL, NULL, NULL),
(317, '5', '0.14', 28, 244, '2022-06-29 02:16:11', '2022-06-29 02:16:11', NULL, NULL, NULL),
(318, '25', '5000', 36, 245, '2022-06-29 04:26:22', '2022-06-29 04:26:22', NULL, NULL, NULL),
(319, '25', '5000', 36, 246, '2022-06-29 04:26:22', '2022-06-29 04:26:22', NULL, NULL, NULL),
(320, '22', '17', 47, 247, '2022-06-29 04:26:55', '2022-06-29 04:26:55', '1', NULL, NULL),
(321, '19', '0.75', 47, 248, '2022-06-29 04:28:46', '2022-06-29 04:28:46', '1', NULL, NULL),
(322, '22', '8', 47, 249, '2022-06-29 04:30:16', '2022-06-29 04:30:16', '1', NULL, NULL),
(323, '22', '40', 47, 250, '2022-06-29 04:31:23', '2022-06-29 04:31:23', '1', NULL, NULL),
(324, '26', '1', 36, 251, '2022-06-29 04:53:37', '2022-06-29 04:53:37', NULL, NULL, NULL),
(325, '27', '1', 36, 252, '2022-06-29 04:54:33', '2022-06-29 04:54:33', NULL, NULL, NULL),
(326, '27', '1.5', 22, 253, '2022-06-29 05:31:25', '2022-06-29 05:31:25', 'Suds', NULL, NULL),
(327, '26', '1.5', 22, 254, '2022-06-29 05:32:53', '2022-06-29 05:32:53', 'Suds', NULL, NULL),
(328, '26', '1.5', 22, 255, '2022-06-29 05:34:36', '2022-06-29 05:34:36', 'Suds', NULL, NULL),
(329, '17', '0.74', 37, 256, '2022-06-29 06:20:02', '2022-06-29 06:20:02', '0.74', NULL, NULL),
(330, '25', '1000', 47, 257, '2022-06-29 07:38:19', '2022-06-29 07:38:19', '1', NULL, NULL),
(331, '1', '50', 36, 258, '2022-06-29 07:38:51', '2022-06-29 07:38:51', NULL, NULL, NULL),
(332, '7', '2.5', 36, 259, '2022-06-29 09:11:47', '2022-06-29 09:11:47', NULL, NULL, NULL),
(333, '10', '0.5', 36, 260, '2022-06-29 09:13:58', '2022-06-29 09:13:58', NULL, NULL, NULL),
(334, '98', '25', 31, 261, '2022-06-29 10:02:22', '2022-06-29 10:02:22', NULL, NULL, NULL),
(335, '95', '15', 31, 261, '2022-06-29 10:02:22', '2022-06-29 10:02:22', NULL, NULL, NULL),
(336, '107', '1.5', 31, 262, '2022-06-29 10:06:00', '2022-06-29 10:06:00', NULL, NULL, NULL),
(337, '27', '1.5', 31, 262, '2022-06-29 10:06:00', '2022-06-29 10:06:00', NULL, NULL, NULL),
(338, '104', '6', 28, 263, '2022-06-30 04:12:21', '2022-06-30 04:12:21', NULL, NULL, NULL),
(339, '26', '2', 44, 264, '2022-06-30 05:15:08', '2022-06-30 05:15:08', NULL, NULL, NULL),
(340, '15', '1', 37, 265, '2022-06-30 07:56:07', '2022-06-30 07:56:07', '1', NULL, NULL),
(341, '165', '60', 28, 266, '2022-07-01 05:02:44', '2022-07-01 05:02:44', NULL, NULL, NULL),
(342, '127', '5', 28, 266, '2022-07-01 05:02:44', '2022-07-01 05:02:44', 'Viss', NULL, NULL),
(343, '166', '510', 28, 267, '2022-07-01 05:15:20', '2022-07-01 05:15:20', NULL, NULL, NULL),
(344, '167', '1660', 28, 267, '2022-07-01 05:15:20', '2022-07-01 05:15:20', NULL, NULL, NULL),
(345, '26', '1.5', 26, 268, '2022-07-01 06:31:50', '2022-07-01 06:31:50', NULL, NULL, NULL),
(346, '106', '100', 28, 269, '2022-07-01 08:19:50', '2022-07-01 08:19:50', NULL, NULL, NULL),
(347, '1', '50', 36, 270, '2022-07-02 03:19:44', '2022-07-02 03:19:44', NULL, NULL, NULL),
(348, '27', '1.5', 22, 271, '2022-07-02 03:36:59', '2022-07-02 03:36:59', 'Suds', NULL, NULL),
(349, '17', '1.4', 37, 272, '2022-07-02 03:44:19', '2022-07-02 03:44:19', '1.4', NULL, NULL),
(350, '22', '45', 37, 273, '2022-07-02 03:45:13', '2022-07-02 03:45:13', '45', NULL, NULL),
(351, '26', '1', 36, 274, '2022-07-02 03:53:03', '2022-07-02 03:53:03', NULL, NULL, NULL),
(352, '22', '8', 47, 275, '2022-07-02 03:59:56', '2022-07-02 03:59:56', '1', NULL, NULL),
(353, '19', '0.5', 47, 276, '2022-07-02 04:02:51', '2022-07-02 04:02:51', '1', NULL, NULL),
(354, '17', '3.75', 47, 277, '2022-07-02 04:04:39', '2022-07-02 04:04:39', '1', NULL, NULL),
(355, '26', '1.5', 22, 278, '2022-07-02 07:18:46', '2022-07-02 07:18:46', 'Suds', NULL, NULL),
(356, '1', '50', 25, 279, '2022-07-02 07:43:50', '2022-07-02 07:43:50', 'Bags', NULL, NULL),
(357, '26', '10', 25, 279, '2022-07-02 07:43:50', '2022-07-02 07:43:50', 'suds', NULL, NULL),
(358, '26', '1.5', 26, 280, '2022-07-02 09:31:48', '2022-07-02 09:31:48', NULL, NULL, NULL),
(359, '8', '1', 47, 281, '2022-07-02 10:00:22', '2022-07-02 10:00:22', '1', NULL, NULL),
(360, '6', '0.5', 47, 282, '2022-07-02 10:01:10', '2022-07-02 10:01:10', '1', NULL, NULL),
(361, '7', '1', 47, 283, '2022-07-02 10:02:48', '2022-07-02 10:02:48', '1', NULL, NULL),
(362, '26', '10', 25, 284, '2022-07-02 10:58:39', '2022-07-02 10:58:39', 'suds', NULL, NULL),
(363, '27', '10', 25, 284, '2022-07-02 10:58:39', '2022-07-02 10:58:39', 'suds', NULL, NULL),
(364, '26', '3', 25, 285, '2022-07-03 04:27:21', '2022-07-03 04:27:21', NULL, NULL, NULL),
(365, '27', '3', 25, 285, '2022-07-03 04:27:21', '2022-07-03 04:27:21', NULL, NULL, NULL),
(366, '103', '1', 32, 286, '2022-07-03 08:58:29', '2022-07-03 08:58:29', '2\'6\" × 6\'9\"', NULL, NULL),
(367, '108', '130', 32, 287, '2022-07-03 09:40:09', '2022-07-03 09:40:09', '1\'×1\'', NULL, NULL),
(368, '108', '215', 32, 288, '2022-07-03 09:41:37', '2022-07-03 09:41:37', '1\'×1\'', NULL, NULL),
(369, '108', '215', 32, 289, '2022-07-03 09:41:40', '2022-07-03 09:41:40', '1\'×1\'', NULL, NULL),
(370, '108', '48', 32, 290, '2022-07-03 09:42:51', '2022-07-03 09:42:51', '1\'×1\'', NULL, NULL),
(371, '111', '630', 32, 291, '2022-07-03 09:44:06', '2022-07-03 09:44:06', '8\"×1\'', NULL, NULL),
(372, '111', '630', 32, 292, '2022-07-03 09:44:09', '2022-07-03 09:44:09', '8\"×1\'', NULL, NULL),
(373, '103', '1', 32, 293, '2022-07-03 10:28:52', '2022-07-03 10:28:52', '5\"× 2\" ​ဘောင်', NULL, NULL),
(374, '5', '1', 37, 294, '2022-07-03 10:51:46', '2022-07-03 10:51:46', '1', NULL, NULL),
(375, '6', '0.17', 37, 295, '2022-07-03 10:55:41', '2022-07-03 10:55:41', '0.17', NULL, NULL),
(376, '7', '0.81', 37, 296, '2022-07-03 10:57:25', '2022-07-03 10:57:25', '0.81', NULL, NULL),
(377, '10', '0.14', 37, 297, '2022-07-03 11:00:20', '2022-07-03 11:00:20', '0.14', NULL, NULL),
(378, '26', '1.5', 44, 298, '2022-07-03 14:10:32', '2022-07-03 14:10:32', NULL, NULL, NULL),
(379, '26', '3', 28, 299, '2022-07-04 02:36:58', '2022-07-04 02:36:58', NULL, NULL, NULL),
(380, '104', '3', 22, 300, '2022-07-04 03:50:30', '2022-07-04 03:50:30', 'Suds', NULL, NULL),
(381, '17', '0.35', 28, 301, '2022-07-04 04:14:35', '2022-07-04 04:14:35', NULL, NULL, NULL),
(382, '26', '1.5', 22, 302, '2022-07-04 04:28:16', '2022-07-04 04:28:16', 'Suds', NULL, NULL),
(383, '26', '1.5', 36, 303, '2022-07-04 05:00:41', '2022-07-04 05:00:41', NULL, NULL, NULL),
(384, '98', '30', 47, 304, '2022-07-04 07:57:09', '2022-07-04 07:57:09', '1', NULL, NULL),
(385, '101', '1', 32, 305, '2022-07-04 08:51:34', '2022-07-04 08:51:34', '2\'6\" × 6\'9\"', NULL, NULL),
(386, '10', '1', 47, 306, '2022-07-04 08:56:04', '2022-07-04 08:56:04', NULL, NULL, NULL),
(387, '108', '118', 32, 307, '2022-07-04 09:30:34', '2022-07-04 09:30:34', '1\'×1\'', NULL, NULL),
(388, '111', '125', 32, 307, '2022-07-04 09:30:34', '2022-07-04 09:30:34', '8\"×1\'', NULL, NULL),
(389, '4', '50', 22, 308, '2022-07-04 09:55:30', '2022-07-04 09:55:30', 'Bags', NULL, NULL),
(390, '26', '1.25', 55, 309, '2022-07-05 05:25:39', '2022-07-05 05:25:39', NULL, NULL, NULL),
(391, '98', '20', 55, 310, '2022-07-05 05:33:06', '2022-07-05 05:33:06', NULL, NULL, NULL),
(392, '95', '20', 55, 310, '2022-07-05 05:33:06', '2022-07-05 05:33:06', NULL, NULL, NULL),
(393, '25', '5000', 22, 311, '2022-07-05 05:54:04', '2022-07-05 05:54:04', 'Nos', NULL, NULL),
(394, '26', '1.5', 22, 312, '2022-07-05 05:56:56', '2022-07-05 05:56:56', 'Suds', NULL, NULL),
(395, '1', '100', 25, 313, '2022-07-05 06:10:26', '2022-07-05 06:10:26', NULL, NULL, NULL),
(396, '25', '5000', 25, 313, '2022-07-05 06:10:26', '2022-07-05 06:10:26', 'MGC', NULL, NULL),
(397, '166', '200', 28, 314, '2022-07-05 06:57:38', '2022-07-05 06:57:38', '4ft', NULL, NULL),
(398, '19', '1', 25, 315, '2022-07-06 02:55:41', '2022-07-06 02:55:41', 'ton', NULL, NULL),
(399, '17', '1', 25, 315, '2022-07-06 02:55:41', '2022-07-06 02:55:41', 'ton', NULL, NULL),
(400, '186', '10', 28, 316, '2022-07-06 03:06:03', '2022-07-06 03:06:03', NULL, NULL, NULL),
(401, '4', '100', 28, 317, '2022-07-06 03:12:00', '2022-07-06 03:12:00', NULL, NULL, NULL),
(402, '27', '3', 25, 318, '2022-07-06 03:43:34', '2022-07-06 03:43:34', 'suds', NULL, NULL),
(403, '104', '3', 22, 319, '2022-07-06 04:12:32', '2022-07-06 04:12:32', 'Suds', NULL, NULL),
(404, '6', '0.44', 36, 320, '2022-07-06 04:55:58', '2022-07-06 04:55:58', NULL, NULL, NULL),
(405, '15', '1', 36, 321, '2022-07-06 04:56:54', '2022-07-06 04:56:54', NULL, NULL, NULL),
(406, '186', '1', 37, 322, '2022-07-06 07:38:46', '2022-07-06 07:38:46', '1', NULL, NULL),
(407, '186', '3', 37, 323, '2022-07-06 07:39:56', '2022-07-06 07:39:56', '3', NULL, NULL),
(408, '90', '120', 37, 324, '2022-07-06 09:39:47', '2022-07-06 09:39:47', '120', NULL, NULL),
(409, '94', '3', 37, 325, '2022-07-06 09:42:37', '2022-07-06 09:42:37', '3', NULL, NULL),
(410, '26', '1.5', 26, 326, '2022-07-07 03:05:08', '2022-07-07 03:05:08', NULL, NULL, NULL),
(411, '26', '1', 36, 327, '2022-07-07 04:05:33', '2022-07-07 04:05:33', NULL, NULL, NULL),
(412, '26', '0.5', 47, 328, '2022-07-07 06:08:23', '2022-07-07 06:08:23', NULL, NULL, NULL),
(413, '27', '0.5', 47, 329, '2022-07-07 06:08:55', '2022-07-07 06:08:55', NULL, NULL, NULL),
(414, '26', '0.5', 47, 330, '2022-07-07 08:19:04', '2022-07-07 08:19:04', NULL, NULL, NULL),
(415, '110', '68', 32, 331, '2022-07-07 12:36:15', '2022-07-07 12:36:15', NULL, NULL, NULL),
(416, '112', '205', 32, 332, '2022-07-07 12:37:04', '2022-07-07 12:37:04', NULL, NULL, NULL),
(417, '110', '8', 32, 333, '2022-07-07 12:41:23', '2022-07-07 12:41:23', NULL, NULL, NULL),
(418, '27', '1.5', 26, 334, '2022-07-08 05:32:10', '2022-07-08 05:32:10', NULL, NULL, NULL),
(419, '26', '3', 25, 335, '2022-07-08 05:39:43', '2022-07-08 05:39:43', NULL, NULL, NULL),
(420, '26', '3', 25, 336, '2022-07-08 05:42:55', '2022-07-08 05:42:55', NULL, NULL, NULL),
(421, '25', '5000', 36, 337, '2022-07-08 06:00:37', '2022-07-08 06:00:37', NULL, NULL, NULL),
(422, '17', '15', 55, 338, '2022-07-08 06:45:45', '2022-07-08 06:45:45', NULL, NULL, NULL),
(423, '20', '40', 55, 339, '2022-07-08 06:46:42', '2022-07-08 06:46:42', NULL, NULL, NULL),
(424, '26', '1.25', 55, 340, '2022-07-08 09:33:21', '2022-07-08 09:33:21', NULL, NULL, NULL),
(425, '187', '1', 37, 341, '2022-07-08 09:55:26', '2022-07-08 09:55:26', NULL, NULL, NULL),
(426, '131', '1.4', 22, 342, '2022-07-08 17:20:55', '2022-07-08 17:20:55', NULL, NULL, NULL),
(427, '26', '1.5', 22, 343, '2022-07-08 17:25:21', '2022-07-08 17:25:21', NULL, NULL, NULL),
(428, '5', '309', 44, 344, '2022-07-09 03:01:21', '2022-07-09 03:01:21', NULL, NULL, NULL),
(429, '7', '82', 44, 345, '2022-07-09 03:02:43', '2022-07-09 03:02:43', NULL, NULL, NULL),
(430, '7', '82', 44, 346, '2022-07-09 03:02:43', '2022-07-09 03:02:43', NULL, NULL, NULL),
(431, '10', '93', 44, 347, '2022-07-09 03:03:18', '2022-07-09 03:03:18', NULL, NULL, NULL),
(432, '27', '1.5', 22, 348, '2022-07-09 03:17:56', '2022-07-09 03:17:56', NULL, NULL, NULL),
(433, '4', '100', 36, 349, '2022-07-09 03:31:43', '2022-07-09 03:31:43', NULL, NULL, NULL),
(434, '26', '3', 28, 350, '2022-07-09 03:45:32', '2022-07-09 03:45:32', NULL, NULL, NULL),
(435, '25', '10000', 28, 351, '2022-07-09 03:47:58', '2022-07-09 03:47:58', NULL, NULL, NULL),
(436, '10', '60', 28, 352, '2022-07-09 03:52:40', '2022-07-09 03:52:40', NULL, NULL, NULL),
(437, '1', '35', 25, 353, '2022-07-09 05:03:45', '2022-07-09 05:03:45', NULL, NULL, NULL),
(438, '26', '3', 25, 354, '2022-07-09 05:06:29', '2022-07-09 05:06:29', NULL, NULL, NULL),
(439, '6', '0.25', 25, 355, '2022-07-09 05:10:38', '2022-07-09 05:10:38', NULL, NULL, NULL),
(440, '6', '0.25', 25, 356, '2022-07-09 05:13:42', '2022-07-09 05:13:42', NULL, NULL, NULL),
(441, '7', '1', 25, 357, '2022-07-09 05:15:17', '2022-07-09 05:15:17', NULL, NULL, NULL),
(442, '8', '1', 25, 358, '2022-07-09 05:16:13', '2022-07-09 05:16:13', NULL, NULL, NULL),
(443, '26', '1', 36, 359, '2022-07-09 05:47:32', '2022-07-09 05:47:32', NULL, NULL, NULL),
(444, '137', '10', 54, 360, '2022-07-09 09:44:59', '2022-07-09 09:44:59', NULL, NULL, NULL),
(445, '141', '20', 54, 361, '2022-07-09 09:49:23', '2022-07-09 09:49:23', NULL, NULL, NULL),
(446, '26', '1.5', 22, 362, '2022-07-10 04:33:03', '2022-07-10 04:33:03', NULL, NULL, NULL),
(447, '4', '50', 22, 363, '2022-07-10 04:57:31', '2022-07-10 04:57:31', NULL, NULL, NULL),
(448, '4', '50', 22, 364, '2022-07-10 04:58:21', '2022-07-10 04:58:21', NULL, NULL, NULL),
(449, '26', '1.5', 22, 365, '2022-07-10 05:02:36', '2022-07-10 05:02:36', NULL, NULL, NULL),
(450, '4', '11', 32, 366, '2022-07-10 10:25:30', '2022-07-10 10:25:30', NULL, NULL, NULL),
(451, '107', '0.3', 32, 367, '2022-07-10 10:27:00', '2022-07-10 10:27:00', NULL, NULL, NULL),
(452, '4', '9', 32, 368, '2022-07-10 10:29:21', '2022-07-10 10:29:21', NULL, NULL, NULL),
(453, '107', '0.2', 32, 369, '2022-07-10 10:30:25', '2022-07-10 10:30:25', NULL, NULL, NULL),
(454, '1', '4', 32, 370, '2022-07-10 10:31:24', '2022-07-10 10:31:24', NULL, NULL, NULL),
(455, '4', '4', 32, 371, '2022-07-10 10:32:35', '2022-07-10 10:32:35', NULL, NULL, NULL),
(456, '107', '0.2', 32, 372, '2022-07-10 10:33:25', '2022-07-10 10:33:25', NULL, NULL, NULL),
(457, '1', '6', 32, 373, '2022-07-10 10:36:00', '2022-07-10 10:36:00', NULL, NULL, NULL),
(458, '107', '0.2', 32, 374, '2022-07-10 10:36:58', '2022-07-10 10:36:58', NULL, NULL, NULL),
(459, '25', '190', 32, 375, '2022-07-10 10:40:27', '2022-07-10 10:40:27', NULL, NULL, NULL),
(460, '83', '1', 25, 376, '2022-07-10 11:42:14', '2022-07-10 11:42:14', NULL, NULL, NULL),
(461, '157', '124', 26, 377, '2022-07-10 13:10:07', '2022-07-10 13:10:07', NULL, NULL, NULL),
(462, '158', '24', 26, 378, '2022-07-10 13:10:54', '2022-07-10 13:10:54', NULL, NULL, NULL),
(463, '159', '15', 26, 379, '2022-07-10 13:13:24', '2022-07-10 13:13:24', NULL, NULL, NULL),
(464, '164', '6', 26, 380, '2022-07-10 13:14:08', '2022-07-10 13:14:08', NULL, NULL, NULL),
(465, '34', '36', 26, 381, '2022-07-10 13:18:35', '2022-07-10 13:18:35', NULL, NULL, NULL),
(466, '141', '1', 26, 382, '2022-07-10 13:21:20', '2022-07-10 13:21:20', NULL, NULL, NULL),
(467, '144', '7', 26, 383, '2022-07-10 13:22:25', '2022-07-10 13:22:25', NULL, NULL, NULL),
(468, '147', '5', 26, 384, '2022-07-10 13:23:46', '2022-07-10 13:23:46', NULL, NULL, NULL),
(469, '151', '5', 26, 385, '2022-07-10 13:24:57', '2022-07-10 13:24:57', NULL, NULL, NULL),
(470, '152', '5', 26, 386, '2022-07-10 13:25:34', '2022-07-10 13:25:34', NULL, NULL, NULL),
(471, '139', '2', 26, 387, '2022-07-10 13:28:45', '2022-07-10 13:28:45', NULL, NULL, NULL),
(472, '153', '3', 26, 388, '2022-07-10 13:38:37', '2022-07-10 13:38:37', NULL, NULL, NULL),
(473, '154', '3', 26, 389, '2022-07-10 13:39:45', '2022-07-10 13:39:45', NULL, NULL, NULL),
(474, '1', '30', 32, 390, '2022-07-11 03:29:53', '2022-07-11 03:29:53', NULL, NULL, NULL),
(475, '107', '1', 32, 391, '2022-07-11 03:31:22', '2022-07-11 03:31:22', NULL, NULL, NULL),
(476, '1', '34', 32, 392, '2022-07-11 03:54:05', '2022-07-11 03:54:05', NULL, NULL, NULL),
(477, '26', '1.5', 47, 393, '2022-07-11 04:00:24', '2022-07-11 04:00:24', NULL, NULL, NULL),
(478, '159', '7', 54, 394, '2022-07-11 05:11:42', '2022-07-11 05:11:42', NULL, NULL, NULL),
(479, '103', '7', 54, 395, '2022-07-11 05:15:51', '2022-07-11 05:15:51', NULL, NULL, NULL),
(480, '161', '2', 26, 396, '2022-07-11 05:26:15', '2022-07-11 05:26:15', NULL, NULL, NULL),
(481, '162', '1', 26, 397, '2022-07-11 05:28:02', '2022-07-11 05:28:02', NULL, NULL, NULL),
(482, '163', '1', 26, 398, '2022-07-11 05:29:40', '2022-07-11 05:29:40', NULL, NULL, NULL),
(483, '25', '10000', 28, 399, '2022-07-11 07:19:06', '2022-07-11 07:19:06', NULL, NULL, NULL),
(484, '27', '3', 25, 400, '2022-07-11 07:37:29', '2022-07-11 07:37:29', NULL, NULL, NULL),
(485, '26', '3', 25, 401, '2022-07-11 07:38:17', '2022-07-11 07:38:17', NULL, NULL, NULL),
(486, '93', '160', 44, 402, '2022-07-11 09:39:09', '2022-07-11 09:39:09', NULL, NULL, NULL),
(487, '94', '9', 44, 403, '2022-07-12 00:22:02', '2022-07-12 00:22:02', NULL, NULL, NULL),
(488, '17', '100', 44, 404, '2022-07-12 06:19:23', '2022-07-12 06:19:23', NULL, NULL, NULL),
(489, '154', '2', 54, 405, '2022-07-13 02:47:57', '2022-07-13 02:47:57', NULL, NULL, NULL),
(490, '19', '0.75', 44, 406, '2022-07-13 03:37:33', '2022-07-13 03:37:33', NULL, NULL, NULL),
(491, '1', '60', 25, 407, '2022-07-13 04:10:42', '2022-07-13 04:10:42', NULL, NULL, NULL),
(492, '1', '60', 25, 408, '2022-07-13 04:16:17', '2022-07-13 04:16:17', NULL, NULL, NULL),
(493, '26', '3', 25, 409, '2022-07-13 04:17:17', '2022-07-13 04:17:17', NULL, NULL, NULL),
(494, '27', '6', 25, 410, '2022-07-13 04:18:08', '2022-07-13 04:18:08', NULL, NULL, NULL),
(495, '17', '0.75', 44, 411, '2022-07-13 04:21:42', '2022-07-13 04:21:42', NULL, NULL, NULL),
(496, '22', '19', 44, 412, '2022-07-13 05:50:11', '2022-07-13 05:50:11', NULL, NULL, NULL),
(497, '194', '2', 28, 413, '2022-07-13 06:14:05', '2022-07-13 06:14:05', NULL, NULL, NULL),
(498, '15', '1', 28, 414, '2022-07-13 06:16:00', '2022-07-13 06:16:00', NULL, NULL, NULL),
(499, '1', '1', 22, 415, '2022-07-13 07:35:29', '2022-07-13 07:35:29', NULL, NULL, NULL),
(500, '141', '1', 26, 416, '2022-07-13 07:54:09', '2022-07-13 07:54:09', NULL, NULL, NULL),
(504, '25', '5000', 55, 419, '2022-07-13 08:28:29', '2022-07-13 08:28:29', '', NULL, NULL),
(505, '10', '1', 25, 420, '2022-07-13 08:37:33', '2022-07-13 08:37:33', '', NULL, NULL),
(506, '26', '1.5', 22, 421, '2022-07-13 09:21:52', '2022-07-13 09:21:52', '', NULL, NULL),
(507, '34', '36', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(508, '139', '2', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(509, '141', '5', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(510, '144', '6', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(511, '147', '5', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(512, '151', '5', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(513, '152', '5', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(514, '143', '2', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(515, '51', '2', 25, 422, '2022-07-13 15:36:41', '2022-07-13 15:36:41', '', NULL, NULL),
(516, '110', '280', 54, 423, '2022-07-14 03:28:14', '2022-07-14 03:28:14', '', NULL, NULL),
(517, '109', '574', 54, 424, '2022-07-14 03:29:01', '2022-07-14 03:29:01', '', NULL, NULL),
(518, '108', '268', 54, 425, '2022-07-14 03:59:51', '2022-07-14 03:59:51', '', NULL, NULL),
(519, '110', '22', 54, 426, '2022-07-14 04:25:56', '2022-07-14 04:25:56', '', NULL, NULL),
(520, '26', '1.5', 55, 427, '2022-07-14 04:27:03', '2022-07-14 04:27:03', '', NULL, NULL),
(521, '27', '1.5', 55, 427, '2022-07-14 04:27:03', '2022-07-14 04:27:03', '', NULL, NULL),
(522, '157', '160', 25, 428, '2022-07-14 05:39:06', '2022-07-14 05:39:06', '', NULL, NULL),
(523, '158', '48', 25, 428, '2022-07-14 05:39:06', '2022-07-14 05:39:06', '', NULL, NULL),
(524, '161', '4', 25, 428, '2022-07-14 05:39:06', '2022-07-14 05:39:06', '', NULL, NULL),
(525, '164', '39', 25, 428, '2022-07-14 05:39:06', '2022-07-14 05:39:06', '', NULL, NULL),
(526, '162', '1', 25, 428, '2022-07-14 05:39:06', '2022-07-14 05:39:06', '', NULL, NULL),
(527, '179', '1', 25, 428, '2022-07-14 05:39:06', '2022-07-14 05:39:06', '', NULL, NULL),
(528, '1', '20', 25, 429, '2022-07-14 05:57:26', '2022-07-14 05:57:26', '', NULL, NULL),
(529, '108', '115', 25, 429, '2022-07-14 05:57:26', '2022-07-14 05:57:26', '', NULL, NULL),
(530, '110', '32', 25, 429, '2022-07-14 05:57:26', '2022-07-14 05:57:26', '', NULL, NULL),
(531, '112', '185', 25, 429, '2022-07-14 05:57:26', '2022-07-14 05:57:26', '', NULL, NULL),
(532, '199', '285', 25, 430, '2022-07-14 06:00:22', '2022-07-14 06:00:22', '', NULL, NULL),
(533, '200', '10', 25, 430, '2022-07-14 06:00:22', '2022-07-14 06:00:22', '', NULL, NULL),
(534, '199', '595', 32, 431, '2022-07-14 07:50:04', '2022-07-14 07:50:04', '', NULL, NULL),
(535, '108', '132', 32, 431, '2022-07-14 07:50:04', '2022-07-14 07:50:04', '', NULL, NULL),
(536, '108', '269', 32, 432, '2022-07-14 07:53:38', '2022-07-14 07:53:38', '', NULL, NULL),
(537, '199', '613', 32, 432, '2022-07-14 07:53:38', '2022-07-14 07:53:38', '', NULL, NULL),
(538, '110', '8', 32, 433, '2022-07-14 07:58:03', '2022-07-14 07:58:03', '', NULL, NULL),
(539, '108', '66', 32, 434, '2022-07-14 07:59:30', '2022-07-14 07:59:30', '', NULL, NULL),
(540, '199', '44', 32, 434, '2022-07-14 07:59:30', '2022-07-14 07:59:30', '', NULL, NULL),
(541, '4', '24', 54, 435, '2022-07-14 08:28:23', '2022-07-14 08:28:23', '', NULL, NULL),
(542, '200', '48', 54, 435, '2022-07-14 08:28:23', '2022-07-14 08:28:23', '', NULL, NULL),
(543, '10', '0.19', 37, 436, '2022-07-14 09:03:47', '2022-07-14 09:03:47', '', NULL, NULL),
(544, '7', '0.81', 37, 437, '2022-07-14 09:04:53', '2022-07-14 09:04:53', '', NULL, NULL),
(545, '197', '1', 26, 438, '2022-07-14 09:57:24', '2022-07-14 09:57:24', '', NULL, NULL),
(546, '198', '2', 26, 438, '2022-07-14 09:57:24', '2022-07-14 09:57:24', '', NULL, NULL),
(547, '195', '2', 26, 438, '2022-07-14 09:57:24', '2022-07-14 09:57:24', '', NULL, NULL),
(548, '25', '5000', 22, 439, '2022-07-15 02:57:36', '2022-07-15 02:57:36', '', NULL, NULL),
(549, '26', '3', 28, 440, '2022-07-15 03:19:57', '2022-07-15 03:19:57', '', NULL, NULL),
(550, '165', '60', 28, 441, '2022-07-15 03:24:11', '2022-07-15 03:24:11', '', NULL, NULL),
(551, '1', '100', 25, 442, '2022-07-15 03:58:25', '2022-07-15 03:58:25', '', NULL, NULL),
(552, '26', '1.5', 25, 442, '2022-07-15 03:58:25', '2022-07-15 03:58:25', '', NULL, NULL),
(553, '27', '1.5', 25, 442, '2022-07-15 03:58:25', '2022-07-15 03:58:25', '', NULL, NULL),
(554, '26', '1', 36, 443, '2022-07-15 04:26:28', '2022-07-15 04:26:28', '', NULL, NULL),
(555, '248', '5', 25, 444, '2022-07-15 05:58:03', '2022-07-15 05:58:03', '', NULL, NULL),
(556, '128', '10', 25, 444, '2022-07-15 05:58:03', '2022-07-15 05:58:03', '', NULL, NULL),
(557, '170', '1', 25, 444, '2022-07-15 05:58:03', '2022-07-15 05:58:03', '', NULL, NULL),
(558, '186', '5', 25, 444, '2022-07-15 05:58:03', '2022-07-15 05:58:03', '', NULL, NULL),
(559, '26', '1.5', 25, 445, '2022-07-15 06:04:23', '2022-07-15 06:04:23', '', NULL, NULL),
(560, '26', '1.5', 25, 445, '2022-07-15 06:04:23', '2022-07-15 06:04:23', '', NULL, NULL),
(561, '27', '1.5', 25, 445, '2022-07-15 06:04:23', '2022-07-15 06:04:23', '', NULL, NULL);
INSERT INTO `variable_request_items` (`id`, `variable_asset_id`, `quantity`, `user_id`, `variable_request_info_id`, `created_at`, `updated_at`, `size`, `project_id`, `work_scope_id`) VALUES
(562, '27', '1.5', 25, 445, '2022-07-15 06:04:23', '2022-07-15 06:04:23', '', NULL, NULL),
(563, '1', '30', 25, 446, '2022-07-15 07:30:04', '2022-07-15 07:30:04', '', NULL, NULL),
(564, '26', '3', 25, 446, '2022-07-15 07:30:04', '2022-07-15 07:30:04', '', NULL, NULL),
(565, '25', '3000', 25, 446, '2022-07-15 07:30:04', '2022-07-15 07:30:04', '', NULL, NULL),
(566, '27', '1.3', 47, 447, '2022-07-15 08:22:34', '2022-07-15 08:22:34', '', NULL, NULL),
(567, '25', '1000', 47, 448, '2022-07-15 10:48:26', '2022-07-15 10:48:26', '', NULL, NULL),
(568, '167', '100', 28, 449, '2022-07-16 01:33:13', '2022-07-16 01:33:13', '', NULL, NULL),
(569, '1', '50', 55, 450, '2022-07-16 03:20:45', '2022-07-16 03:20:45', '', NULL, NULL),
(570, '117', '100', 25, 451, '2022-07-16 04:10:01', '2022-07-16 04:10:01', '', NULL, NULL),
(571, '26', '1.5', 25, 452, '2022-07-16 04:17:02', '2022-07-16 04:17:02', '', NULL, NULL),
(572, '26', '1.5', 25, 452, '2022-07-16 04:17:02', '2022-07-16 04:17:02', '', NULL, NULL),
(573, '26', '1.5', 25, 452, '2022-07-16 04:17:02', '2022-07-16 04:17:02', '', NULL, NULL),
(574, '26', '1.5', 25, 452, '2022-07-16 04:17:02', '2022-07-16 04:17:02', '', NULL, NULL),
(575, '19', '.2', 28, 453, '2022-07-16 04:23:11', '2022-07-16 04:23:11', '', NULL, NULL),
(576, '26', '1.5', 44, 454, '2022-07-16 05:41:08', '2022-07-16 05:41:08', '', NULL, NULL),
(577, '27', '1.5', 44, 454, '2022-07-16 05:41:08', '2022-07-16 05:41:08', '', NULL, NULL),
(578, '1', '23', 32, 455, '2022-07-16 10:36:18', '2022-07-16 10:36:18', '', NULL, NULL),
(579, '200', '10', 32, 455, '2022-07-16 10:36:18', '2022-07-16 10:36:18', '', NULL, NULL),
(580, '107', '0.5', 32, 455, '2022-07-16 10:36:18', '2022-07-16 10:36:18', '', NULL, NULL),
(581, '104', '15', 28, 456, '2022-07-17 03:36:07', '2022-07-17 03:36:07', '', NULL, NULL),
(582, '26', '1.3', 47, 457, '2022-07-17 04:09:21', '2022-07-17 04:09:21', '', NULL, NULL),
(583, '34', '50', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(584, '147', '4', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(585, '151', '4', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(586, '143', '12', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(587, '144', '5', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(588, '145', '3', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(589, '146', '5', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(590, '196', '60', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(591, '139', '5', 32, 458, '2022-07-17 11:08:57', '2022-07-17 11:08:57', '', NULL, NULL),
(592, '4', '50', 26, 459, '2022-07-17 16:44:08', '2022-07-17 16:44:08', '', NULL, NULL),
(593, '4', '50', 26, 460, '2022-07-17 16:45:42', '2022-07-17 16:45:42', '', NULL, NULL),
(594, '25', '1500', 47, 461, '2022-07-18 00:57:15', '2022-07-18 00:57:15', '', NULL, NULL),
(595, '25', '500', 47, 462, '2022-07-18 02:13:03', '2022-07-18 02:13:03', '', NULL, NULL),
(596, '4', '50', 36, 463, '2022-07-18 02:20:04', '2022-07-18 02:20:04', '', NULL, NULL),
(597, 'ID 1', '23', 22, 464, '2022-08-06 14:43:40', '2022-08-06 14:43:40', '', NULL, NULL),
(598, 'ID 170', '21', 22, 464, '2022-08-06 14:43:40', '2022-08-06 14:43:40', '', NULL, NULL),
(599, 'ID 242', '100', 22, 464, '2022-08-06 14:43:40', '2022-08-06 14:43:40', '', NULL, NULL),
(600, 'ID 8', '1', 22, 464, '2022-08-06 14:43:40', '2022-08-06 14:43:40', '', NULL, NULL),
(601, '1', '23', 22, 465, '2022-08-06 14:44:46', '2022-08-06 14:44:46', '', NULL, NULL),
(602, '170', '21', 22, 465, '2022-08-06 14:44:46', '2022-08-06 14:44:46', '', NULL, NULL),
(603, '242', '100', 22, 465, '2022-08-06 14:44:46', '2022-08-06 14:44:46', '', NULL, NULL),
(604, '8', '1', 22, 465, '2022-08-06 14:44:46', '2022-08-06 14:44:46', '', NULL, NULL),
(605, '1', '23', 22, 466, '2022-08-06 14:46:16', '2022-08-06 14:46:16', '', NULL, NULL),
(606, '170', '21', 22, 466, '2022-08-06 14:46:16', '2022-08-06 14:46:16', '', NULL, NULL),
(607, '242', '100', 22, 466, '2022-08-06 14:46:16', '2022-08-06 14:46:16', '', NULL, NULL),
(608, '8', '1', 22, 466, '2022-08-06 14:46:16', '2022-08-06 14:46:16', '', NULL, NULL),
(609, '4', '1', 22, 467, '2022-08-10 09:37:58', '2022-08-10 09:37:58', '', NULL, NULL),
(610, '1', '1', 22, 467, '2022-08-10 09:37:58', '2022-08-10 09:37:58', '', NULL, NULL),
(611, '4', '1', 22, 468, '2022-08-10 09:38:50', '2022-08-10 09:38:50', '', NULL, NULL),
(612, '1', '1', 22, 468, '2022-08-10 09:38:50', '2022-08-10 09:38:50', '', NULL, NULL),
(613, '4', '1', 22, 469, '2022-08-17 18:13:15', '2022-08-17 18:13:15', '', NULL, NULL),
(614, '25', '1', 22, 469, '2022-08-17 18:13:15', '2022-08-17 18:13:15', '', NULL, NULL),
(615, '4', '1', 22, 470, '2022-08-17 18:16:01', '2022-08-17 18:16:01', '', NULL, NULL),
(616, '25', '1', 22, 470, '2022-08-17 18:16:01', '2022-08-17 18:16:01', '', NULL, NULL),
(617, '4', '1', 22, 471, '2022-08-17 18:18:17', '2022-08-17 18:18:17', '', NULL, NULL),
(618, '26', '1', 22, 471, '2022-08-17 18:18:17', '2022-08-17 18:18:17', '', NULL, NULL),
(619, '4', '2', 22, 472, '2022-08-17 18:19:22', '2022-08-17 18:19:22', '', 8, 1),
(620, '107', '1', 22, 472, '2022-08-17 18:19:22', '2022-08-17 18:19:22', '', 8, 1),
(621, '107', '10', 22, 473, '2022-08-17 18:42:26', '2022-08-17 18:42:26', '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `work_scopes`
--

CREATE TABLE `work_scopes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_scopes`
--

INSERT INTO `work_scopes` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Foundation', '2022-08-17 10:03:39', '2022-08-17 10:09:30'),
(2, 'Super Structure', '2022-08-17 10:09:41', '2022-08-17 10:15:59'),
(3, 'Wet Trade', '2022-08-17 10:09:47', '2022-08-17 10:16:10'),
(4, 'ID', '2022-08-17 10:48:44', '2022-08-17 10:48:44'),
(5, 'Fencing', '2022-08-17 10:48:51', '2022-08-17 10:48:51'),
(6, 'Others', '2022-08-17 10:48:57', '2022-08-17 10:48:57');

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
-- Indexes for table `bq_items`
--
ALTER TABLE `bq_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bq_temporaries`
--
ALTER TABLE `bq_temporaries`
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
-- Indexes for table `fixed_assets_vouchers`
--
ALTER TABLE `fixed_assets_vouchers`
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
-- Indexes for table `project_bqs`
--
ALTER TABLE `project_bqs`
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
-- Indexes for table `unusable_fixed_assets`
--
ALTER TABLE `unusable_fixed_assets`
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
-- Indexes for table `variable_assets_temporaries`
--
ALTER TABLE `variable_assets_temporaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variable_bq_temporaries`
--
ALTER TABLE `variable_bq_temporaries`
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
-- Indexes for table `work_scopes`
--
ALTER TABLE `work_scopes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accept_reject_statuses`
--
ALTER TABLE `accept_reject_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `approved_bies`
--
ALTER TABLE `approved_bies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archi_exterior_designs`
--
ALTER TABLE `archi_exterior_designs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `bq_items`
--
ALTER TABLE `bq_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bq_temporaries`
--
ALTER TABLE `bq_temporaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chartof_accounts`
--
ALTER TABLE `chartof_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `engineer_return_infos`
--
ALTER TABLE `engineer_return_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `eng_request_items`
--
ALTER TABLE `eng_request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `exterior_design_fees`
--
ALTER TABLE `exterior_design_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fixed_assets`
--
ALTER TABLE `fixed_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fixed_assets_purchases`
--
ALTER TABLE `fixed_assets_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fixed_assets_vouchers`
--
ALTER TABLE `fixed_assets_vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floor_plans`
--
ALTER TABLE `floor_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members_lists`
--
ALTER TABLE `members_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `projects_users`
--
ALTER TABLE `projects_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `project_bqs`
--
ALTER TABLE `project_bqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qs_team_check_passes`
--
ALTER TABLE `qs_team_check_passes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `quotationproposals`
--
ALTER TABLE `quotationproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `request_items`
--
ALTER TABLE `request_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_items`
--
ALTER TABLE `return_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

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
-- AUTO_INCREMENT for table `unusable_fixed_assets`
--
ALTER TABLE `unusable_fixed_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `variable_accept_reject_statuses`
--
ALTER TABLE `variable_accept_reject_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT for table `variable_actual_vouchers`
--
ALTER TABLE `variable_actual_vouchers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `variable_assets`
--
ALTER TABLE `variable_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `variable_assets_sizes`
--
ALTER TABLE `variable_assets_sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;

--
-- AUTO_INCREMENT for table `variable_assets_temporaries`
--
ALTER TABLE `variable_assets_temporaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `variable_bq_temporaries`
--
ALTER TABLE `variable_bq_temporaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `variable_finance_payment_slips`
--
ALTER TABLE `variable_finance_payment_slips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `variable_logistics_team_checks`
--
ALTER TABLE `variable_logistics_team_checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `variable_logistics_team_sends`
--
ALTER TABLE `variable_logistics_team_sends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `variable_payments`
--
ALTER TABLE `variable_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `variable_qs_team_checks`
--
ALTER TABLE `variable_qs_team_checks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `variable_received_by_engineers`
--
ALTER TABLE `variable_received_by_engineers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `variable_request_infos`
--
ALTER TABLE `variable_request_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT for table `variable_request_items`
--
ALTER TABLE `variable_request_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `work_scopes`
--
ALTER TABLE `work_scopes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
