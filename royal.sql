-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2019 at 05:53 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royal`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_bd` double(12,2) NOT NULL DEFAULT '0.00',
  `balance_cd` double(12,2) NOT NULL DEFAULT '0.00',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `slug`, `balance_bd`, `balance_cd`, `company_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 'cash', 0.00, 0.00, 6, 'A', '2019-02-25 02:48:19', '2019-02-25 02:48:19'),
(2, 'Payable', 'payable', 0.00, 0.00, 6, 'L', '2019-02-27 14:37:29', '2019-02-27 14:37:29'),
(3, 'Expense', 'expense', 0.00, 0.00, 6, 'E', '2019-02-27 14:37:39', '2019-02-27 14:37:39'),
(4, 'Sales Revenue', 'sales-revenue', 0.00, 0.00, 6, 'R', '2019-02-27 14:37:53', '2019-02-27 14:37:53'),
(5, 'Capital', 'capital', 0.00, 0.00, 6, 'OE', '2019-02-27 14:38:03', '2019-02-27 14:38:03'),
(6, 'Purchase', 'purchase', 0.00, 0.00, 6, 'A', '2019-02-27 14:38:56', '2019-02-27 14:38:56'),
(7, 'Cash', 'cash', 0.00, 0.00, 1, 'A', '2019-03-02 17:45:47', '2019-03-02 17:45:47'),
(8, 'Accounts Receivable', 'accounts-receivable', 0.00, 0.00, 1, 'A', '2019-03-02 17:47:09', '2019-03-02 17:47:09'),
(9, 'Accounts Payable', 'Accounts Payable', 0.00, 0.00, 1, 'L', '2019-03-02 17:47:39', '2019-03-02 17:50:25'),
(11, 'Capital', 'capital', 0.00, 0.00, 1, 'OE', '2019-03-02 17:48:34', '2019-03-02 17:48:34'),
(12, 'Income', 'Income', 0.00, 0.00, 1, 'R', '2019-03-02 17:49:06', '2019-03-02 17:51:17'),
(13, 'Expance', 'expance', 0.00, 0.00, 1, 'E', '2019-03-02 17:51:06', '2019-03-02 17:51:06'),
(14, 'Land', 'land', 0.00, 0.00, 1, 'A', '2019-03-02 18:05:25', '2019-03-02 18:05:25'),
(15, 'Cash', 'cash', 0.00, 0.00, 5, 'A', '2019-03-02 18:14:46', '2019-03-02 18:14:46'),
(16, 'Accounts Receivable', 'accounts-receivable', 0.00, 0.00, 5, 'A', '2019-03-02 18:15:11', '2019-03-02 18:15:11'),
(17, 'Capital', 'capital', 0.00, 0.00, 5, 'OE', '2019-03-02 18:16:06', '2019-03-02 18:16:06'),
(18, 'AAIB -SAhara  -16221', 'aaib-sahara-16221', 0.00, 0.00, 5, 'OE', '2019-03-02 18:16:27', '2019-03-02 18:16:27'),
(19, 'Accounts Payable', 'Accounts Payable', 0.00, 0.00, 5, 'L', '2019-03-02 18:17:00', '2019-03-02 19:05:21'),
(20, 'Nots-Payable', 'nots-payable', 0.00, 0.00, 5, 'OE', '2019-03-02 18:18:19', '2019-03-02 18:18:19'),
(21, 'Income', 'income', 0.00, 0.00, 5, 'R', '2019-03-02 18:18:43', '2019-03-02 18:18:43'),
(22, 'Expance', 'expance', 0.00, 0.00, 5, 'E', '2019-03-02 18:19:24', '2019-03-02 18:19:24'),
(23, 'Pre-Paid Rent.', 'pre-paid-rent', 0.00, 0.00, 5, 'A', '2019-03-02 18:24:12', '2019-03-02 18:24:12'),
(24, 'Cash', 'cash', 0.00, 0.00, 7, 'A', '2019-03-03 18:04:42', '2019-03-03 18:04:42'),
(25, 'Account Payable', 'account-payable', 0.00, 0.00, 7, 'L', '2019-03-03 18:05:06', '2019-03-03 18:05:06'),
(26, 'Inventory', 'inventory', 0.00, 0.00, 7, 'A', '2019-03-03 18:05:21', '2019-03-03 18:05:21'),
(27, 'Purchase', 'purchase', 0.00, 0.00, 7, 'E', '2019-03-03 18:05:36', '2019-03-03 18:05:36'),
(28, 'Revenue', 'revenue', 0.00, 0.00, 7, 'R', '2019-03-03 18:06:00', '2019-03-03 18:06:00'),
(29, 'Capital', 'capital', 0.00, 0.00, 7, 'OE', '2019-03-03 18:06:16', '2019-03-03 18:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` time NOT NULL,
  `exit_time` time NOT NULL,
  `overtime` float(8,2) NOT NULL DEFAULT '0.00',
  `shift` tinyint(1) NOT NULL DEFAULT '0',
  `measurement_quantity` double(8,2) DEFAULT NULL,
  `total_wage` float(8,2) DEFAULT NULL,
  `overtime_wage` float(8,2) DEFAULT NULL,
  `net_wage` float(8,2) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `attendance_date`, `in_time`, `exit_time`, `overtime`, `shift`, `measurement_quantity`, `total_wage`, `overtime_wage`, `net_wage`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2019-02-27', '10:00:00', '16:00:00', 0.00, 0, 6.00, NULL, NULL, NULL, 6, '2019-02-27 06:09:08', '2019-02-27 06:09:08', NULL),
(2, 1, '2019-02-26', '12:09:00', '16:00:00', 0.00, 0, 4.51, NULL, NULL, NULL, 6, '2019-02-27 06:09:26', '2019-02-27 06:09:26', NULL),
(3, 1, '2019-01-01', '10:00:00', '16:00:00', 0.00, 0, 6.00, NULL, NULL, NULL, 6, '2019-02-27 08:12:59', '2019-02-27 08:12:59', NULL),
(4, 1, '2019-01-02', '12:13:00', '18:13:00', 0.00, 0, 6.00, NULL, NULL, NULL, 6, '2019-02-27 08:13:20', '2019-02-27 08:13:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bonuses`
--

CREATE TABLE `bonuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bonuses`
--

INSERT INTO `bonuses` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Eid Ul Fitr', 6, '2019-02-24 22:08:39', '2019-02-24 22:08:39'),
(2, 'Performance Bonus', 7, '2019-03-03 17:55:16', '2019-03-03 17:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(2, 'Orange', 7, '2019-03-03 17:58:53', '2019-03-03 17:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `contact_no`, `email`, `address`, `logo`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Royal Group', '01771900500,01754988440', 'fahadibne30@gmail.com', 'Royal Industrial Park Simulia  Rupganj  Narayanganj', 'images/royal-group/logo.png', NULL, '2019-02-24 22:07:11', '2019-03-09 07:09:38'),
(2, 'Royal Ply & Particle Board Mill’s  LTD', '01771900500,01777409140.', NULL, 'Royal Industrial Park Simulia  Rupganj  Narayanganj', NULL, NULL, '2019-02-24 22:07:11', '2019-03-02 15:23:45'),
(3, 'Royal Metal & Iron Industries LTD', '01771900500,01754988440', NULL, 'Royal Industrial Park Simulia  Rupganj  Narayanganj', NULL, NULL, '2019-02-24 22:07:11', '2019-03-02 15:24:43'),
(4, 'Royal Farm', '01771900500,01754988440', NULL, 'charbarua Phas khal, Vill-Amukanda ,Post-shibpur,Ps-Motlob,Dist-Chandpur.', NULL, NULL, '2019-02-24 22:07:11', '2019-03-02 15:29:01'),
(5, 'Sahara Trade Corporation', '01771900500,01754988440 Phone-02-57160735', NULL, '6,Kazi Abdul Hamid Lan,152 Sahid Sayeed nazul islam shaorawni (old).north south Road Siddik  bazar Dhaka', 'images/sahara-trade-corporation/logo.png', NULL, '2019-02-24 22:07:11', '2019-03-14 08:27:27'),
(6, 'Test Group', '', '', '', NULL, NULL, '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(7, 'Demo Company', '01737525434', 'winskit2014@gmail.com', '105/2,Car Lane,Kakrail', NULL, NULL, '2019-03-03 17:47:12', '2019-03-03 17:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `company_transactions`
--

CREATE TABLE `company_transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` int(10) UNSIGNED NOT NULL,
  `to` int(10) UNSIGNED NOT NULL,
  `journal_entry_id_from` int(10) UNSIGNED DEFAULT NULL,
  `journal_entry_id_to` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_transactions`
--

INSERT INTO `company_transactions` (`id`, `from`, `to`, `journal_entry_id_from`, `journal_entry_id_to`, `status`, `amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 5, 19, 20, 1, 4846300, '2019-03-02 19:01:44', '2019-03-02 19:07:58', NULL),
(4, 5, 1, 43, 44, 1, 270000, '2019-03-03 16:57:45', '2019-03-03 16:59:09', NULL),
(5, 5, 1, 55, 56, 1, 115000, '2019-03-03 17:18:33', '2019-03-03 17:19:35', NULL),
(6, 5, 1, 75, NULL, 0, 300000, '2019-03-03 19:52:53', '2019-03-03 19:52:53', NULL),
(7, 5, 1, 78, NULL, 0, 600000, '2019-03-03 20:10:46', '2019-03-03 20:10:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_users`
--

INSERT INTO `company_users` (`id`, `company_id`, `user_id`, `is_admin`, `created_at`, `updated_at`) VALUES
(5, 6, 4, 1, '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(12, 2, 3, 1, '2019-03-02 15:23:45', '2019-03-02 15:23:45'),
(13, 3, 3, 1, '2019-03-02 15:24:43', '2019-03-02 15:24:43'),
(14, 4, 3, 1, '2019-03-02 15:29:01', '2019-03-02 15:29:01'),
(16, 5, 5, 0, '2019-03-02 16:27:19', '2019-03-02 16:27:19'),
(17, 7, 6, 1, '2019-03-03 17:47:12', '2019-03-03 17:47:12'),
(19, 1, 3, 1, '2019-03-09 07:21:57', '2019-03-09 07:21:57'),
(22, 5, 3, 1, '2019-03-14 08:29:27', '2019-03-14 08:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `deduction_types`
--

CREATE TABLE `deduction_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deduction_types`
--

INSERT INTO `deduction_types` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(2, 'Late Attendence', 6, '2019-02-24 22:16:58', '2019-02-24 22:16:58'),
(3, 'Absence', 6, '2019-02-27 08:21:55', '2019-02-27 08:21:55'),
(4, 'Canteen Charge', 7, '2019-03-03 17:55:47', '2019-03-03 17:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Manager', 6, '2019-02-25 01:40:52', '2019-02-25 01:40:52', NULL),
(2, 'Purchase Manager', 7, '2019-03-03 17:50:38', '2019-03-03 17:50:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT NULL,
  `present_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shift` tinyint(1) NOT NULL DEFAULT '0',
  `salary_type` tinyint(4) NOT NULL DEFAULT '1',
  `in_time` time DEFAULT NULL,
  `exit_time` time DEFAULT NULL,
  `minimum_working_hour` double(5,2) DEFAULT NULL,
  `salary` double NOT NULL DEFAULT '0',
  `weekends` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation_id`, `present_address`, `permanent_address`, `nid`, `photo`, `contact_no`, `email`, `status`, `company_id`, `created_at`, `updated_at`, `shift`, `salary_type`, `in_time`, `exit_time`, `minimum_working_hour`, `salary`, `weekends`) VALUES
(1, 'Nizam', 1, 'Dhaka', 'Dhaka', '21561546482', NULL, '01791944248', 'nizam.everymoment@yahoo.com', 1, 6, '2019-02-25 01:49:41', '2019-02-25 01:49:41', 0, 2, '10:00:00', '18:00:00', 8.00, 20000, '[]'),
(2, 'রবীন্দ্রনাথ প্রামানিক', NULL, 'Gulshan Dhaka', 'Gulsan dhaka', '54444444444489625', 'public/attachments/1551523725.jpg', '01707077199', 'mkr.win01@gmail.com', 1, 5, '2019-03-02 21:48:45', '2019-03-02 21:48:45', 0, 2, '08:20:00', '17:45:00', 9.25, 80000, '[]'),
(3, 'Shazzadur Rahman', 2, '41/A Green corner,Green road,Dhaka-1209', '41/A Green corner,Green road,Dhaka-1209', '908098098', NULL, '01857444087', 'winskit2014@gmail.com', 1, 7, '2019-03-03 17:52:12', '2019-03-03 17:52:12', 0, 2, '09:00:00', '16:59:00', 7.59, 20000, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `employee_annual_leaves`
--

CREATE TABLE `employee_annual_leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `year` int(10) NOT NULL,
  `taken_leave_days` int(11) NOT NULL DEFAULT '0',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_annual_leaves`
--

INSERT INTO `employee_annual_leaves` (`id`, `employee_id`, `leave_type_id`, `year`, `taken_leave_days`, `company_id`, `created_at`, `updated_at`) VALUES
(7, 1, 1, 2019, 15, 6, '2019-02-26 01:38:37', '2019-02-27 08:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `employee_leave_types`
--

CREATE TABLE `employee_leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `max_allowed_days` int(11) NOT NULL DEFAULT '0',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_leave_types`
--

INSERT INTO `employee_leave_types` (`id`, `employee_id`, `leave_type_id`, `max_allowed_days`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10, 6, '2019-02-25 23:36:26', '2019-02-25 23:36:26'),
(2, 3, 4, 10, 7, '2019-03-03 17:54:31', '2019-03-03 17:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `employee_monthly_leaves`
--

CREATE TABLE `employee_monthly_leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `year` int(11) NOT NULL,
  `month` tinyint(4) NOT NULL,
  `basic_salary` double(8,2) NOT NULL DEFAULT '0.00',
  `bonuses_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `deductions_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `funds_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `net_salary` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salaries`
--

INSERT INTO `employee_salaries` (`id`, `employee_id`, `company_id`, `year`, `month`, `basic_salary`, `bonuses_amount`, `deductions_amount`, `funds_amount`, `status`, `net_salary`, `created_at`, `updated_at`) VALUES
(1, 3, 7, 2019, 3, 20000.00, 0.00, 0.00, 0.00, 0, 20000.00, '2019-03-07 05:56:07', '2019-03-07 05:56:07'),
(2, 2, 5, 2019, 1, 80000.00, 0.00, 0.00, 0.00, 0, 80000.00, '2019-03-13 07:47:19', '2019-03-13 07:47:19');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `expense_head_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` date NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_heads`
--

CREATE TABLE `expense_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `unit_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `thickness` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `min_radius` double(8,2) NOT NULL,
  `max_radius` double(8,2) NOT NULL,
  `name` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_unit` double(8,2) NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_items`
--

CREATE TABLE `inventory_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `raw_material_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `thickness` double(8,2) DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(4) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_items`
--

INSERT INTO `inventory_items` (`id`, `raw_material_id`, `unit_id`, `thickness`, `size`, `quantity`, `type`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, NULL, NULL, 5000.00, 1, 7, '2019-03-03 18:02:20', '2019-03-03 18:02:20'),
(2, 4, 1, 0.00, '0', 5000.00, 2, 7, '2019-03-03 18:59:36', '2019-03-03 18:59:36'),
(3, 5, 3, 100.00, '20', 3800.00, 2, 5, '2019-05-28 06:18:00', '2019-05-28 06:28:49'),
(4, 6, 4, NULL, NULL, 1800.00, 2, 5, '2019-05-28 06:18:00', '2019-05-28 06:48:37'),
(5, 5, 3, NULL, NULL, 4800.00, 2, 5, '2019-05-28 06:37:15', '2019-05-28 06:57:00');

-- --------------------------------------------------------

--
-- Table structure for table `journals`
--

CREATE TABLE `journals` (
  `id` int(10) UNSIGNED NOT NULL,
  `journal_date` date NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `journal_id` int(10) UNSIGNED DEFAULT NULL,
  `debit` double DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_type` tinyint(1) NOT NULL DEFAULT '0',
  `journal_entry_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journals`
--

INSERT INTO `journals` (`id`, `journal_date`, `account_id`, `journal_id`, `debit`, `credit`, `company_id`, `created_at`, `updated_at`, `account_type`, `journal_entry_id`) VALUES
(1, '2019-01-12', 6, 2, 50000, NULL, 6, '2019-02-27 14:39:49', '2019-02-27 14:56:20', 0, 1),
(2, '2019-01-12', 1, 1, NULL, 50000, 6, '2019-02-27 14:39:49', '2019-02-27 14:56:20', 1, 1),
(3, '2019-01-01', 6, 4, 10000, NULL, 6, '2019-02-27 14:41:59', '2019-02-27 14:41:59', 0, 2),
(4, '2019-01-01', 2, 3, NULL, 10000, 6, '2019-02-27 14:41:59', '2019-02-27 14:41:59', 1, 2),
(5, '2019-02-27', 1, 6, 500000, NULL, 6, '2019-02-27 14:46:42', '2019-02-27 14:46:42', 0, 3),
(6, '2019-02-27', 5, 5, NULL, 500000, 6, '2019-02-27 14:46:42', '2019-02-27 14:46:42', 1, 3),
(7, '2019-02-13', 3, 8, 30000, NULL, 6, '2019-02-27 14:47:28', '2019-02-28 07:59:42', 0, 4),
(8, '2019-02-13', 1, 7, NULL, 30000, 6, '2019-02-27 14:47:28', '2019-02-28 07:59:42', 1, 4),
(9, '2019-02-27', 6, 10, 5000, NULL, 6, '2019-02-27 14:50:04', '2019-02-27 14:50:04', 0, 5),
(10, '2019-02-27', 4, 9, NULL, 5000, 6, '2019-02-27 14:50:04', '2019-02-27 14:50:04', 1, 5),
(11, '2019-01-01', 3, 12, 1000, NULL, 6, '2019-02-27 14:51:18', '2019-02-27 14:51:18', 0, 6),
(12, '2019-01-01', 1, 11, NULL, 1000, 6, '2019-02-27 14:51:18', '2019-02-27 14:51:18', 1, 6),
(13, '2019-01-16', 6, 14, 20000, NULL, 6, '2019-02-27 14:52:11', '2019-02-27 14:52:11', 0, 7),
(14, '2019-01-16', 2, 13, NULL, 20000, 6, '2019-02-27 14:52:11', '2019-02-27 14:52:11', 1, 7),
(15, '2019-01-19', 3, 16, 40000, NULL, 6, '2019-02-27 14:53:34', '2019-02-27 14:53:49', 0, 8),
(16, '2019-01-19', 3, 15, NULL, 40000, 6, '2019-02-27 14:53:34', '2019-02-27 14:53:49', 1, 8),
(17, '2019-01-22', 6, 18, 8000, NULL, 6, '2019-02-27 14:55:00', '2019-02-27 14:55:00', 0, 9),
(18, '2019-01-22', 6, 17, NULL, 8000, 6, '2019-02-27 14:55:00', '2019-02-27 14:55:15', 1, 9),
(19, '2019-02-06', 4, 20, 6000, NULL, 6, '2019-02-27 14:57:19', '2019-02-27 14:57:19', 0, 10),
(20, '2019-02-06', 6, 19, NULL, 6000, 6, '2019-02-27 14:57:19', '2019-02-27 14:57:19', 1, 10),
(21, '2014-07-14', 7, 22, 6146300, NULL, 1, '2019-03-02 18:28:20', '2019-03-02 18:28:20', 0, 11),
(22, '2014-07-14', 11, 21, NULL, 6146300, 1, '2019-03-02 18:28:20', '2019-03-02 18:28:20', 1, 11),
(23, '2014-07-19', 13, 24, 50000, NULL, 1, '2019-03-02 18:39:16', '2019-03-02 18:39:16', 0, 12),
(24, '2014-07-19', 7, 23, NULL, 50000, 1, '2019-03-02 18:39:16', '2019-03-02 18:39:16', 1, 12),
(25, '2014-07-27', 13, 26, 150000, NULL, 1, '2019-03-02 18:43:00', '2019-03-02 18:43:00', 0, 13),
(26, '2014-07-27', 7, 25, NULL, 150000, 1, '2019-03-02 18:43:00', '2019-03-02 18:43:00', 1, 13),
(27, '2014-10-04', 13, 28, 200000, NULL, 1, '2019-03-02 18:45:51', '2019-03-02 18:45:51', 0, 14),
(28, '2014-10-04', 7, 27, NULL, 200000, 1, '2019-03-02 18:45:51', '2019-03-02 18:45:51', 1, 14),
(29, '2014-10-21', 13, 30, 50000, NULL, 1, '2019-03-02 18:47:46', '2019-03-02 18:47:46', 0, 15),
(30, '2014-10-21', 7, 29, NULL, 50000, 1, '2019-03-02 18:47:46', '2019-03-02 18:47:46', 1, 15),
(31, '2014-10-24', 13, 32, 50000, NULL, 1, '2019-03-02 18:50:08', '2019-03-02 18:50:08', 0, 16),
(32, '2014-10-24', 7, 31, NULL, 50000, 1, '2019-03-02 18:50:08', '2019-03-02 18:50:08', 1, 16),
(33, '2015-01-18', 13, 34, 50000, NULL, 1, '2019-03-02 18:51:58', '2019-03-02 18:51:58', 0, 17),
(34, '2015-01-18', 7, 33, NULL, 50000, 1, '2019-03-02 18:51:58', '2019-03-02 18:51:58', 1, 17),
(35, '2015-03-31', 14, 36, 750000, NULL, 1, '2019-03-02 18:53:41', '2019-03-02 18:53:41', 0, 18),
(36, '2015-03-31', 7, 35, NULL, 750000, 1, '2019-03-02 18:53:41', '2019-03-02 18:53:41', 1, 18),
(37, '2019-03-02', 8, 38, 4846300, NULL, 1, '2019-03-02 19:01:44', '2019-03-02 19:01:44', 0, 19),
(38, '2019-03-02', 7, 37, NULL, 4846300, 1, '2019-03-02 19:01:44', '2019-03-02 19:01:44', 1, 19),
(39, '2015-01-01', 15, 40, 4846300, NULL, 5, '2019-03-02 19:07:58', '2019-03-02 19:07:58', 0, 20),
(40, '2015-01-01', 19, 39, NULL, 4846300, 5, '2019-03-02 19:07:58', '2019-03-02 19:07:58', 1, 20),
(43, '2015-01-02', 22, 44, 32000, NULL, 5, '2019-03-02 21:00:00', '2019-03-02 21:00:00', 0, 22),
(44, '2015-01-02', 15, 43, NULL, 32000, 5, '2019-03-02 21:00:00', '2019-03-02 21:00:00', 1, 22),
(45, '2015-01-14', 22, 46, 10000, NULL, 5, '2019-03-02 21:04:25', '2019-03-02 21:04:25', 0, 23),
(46, '2015-01-14', 15, 45, NULL, 10000, 5, '2019-03-02 21:04:25', '2019-03-02 21:04:25', 1, 23),
(47, '2015-01-14', 20, 48, 51750, NULL, 5, '2019-03-02 21:07:09', '2019-03-02 21:17:32', 0, 24),
(48, '2015-01-14', 15, 47, NULL, 51750, 5, '2019-03-02 21:07:09', '2019-03-02 21:20:04', 1, 24),
(49, '2015-01-14', 20, 50, 203417, NULL, 5, '2019-03-02 21:09:36', '2019-03-02 21:09:36', 0, 25),
(50, '2015-01-14', 15, 49, NULL, 203417, 5, '2019-03-02 21:09:36', '2019-03-02 21:19:30', 1, 25),
(51, '2015-03-12', 20, 52, 1700000, NULL, 5, '2019-03-02 21:30:07', '2019-03-02 21:30:07', 0, 26),
(52, '2015-03-12', 15, 51, NULL, 1700000, 5, '2019-03-02 21:30:07', '2019-03-02 21:30:07', 1, 26),
(53, '2015-03-12', 20, 54, 350000, NULL, 5, '2019-03-02 21:33:10', '2019-03-02 21:33:10', 0, 27),
(54, '2015-03-12', 15, 53, NULL, 350000, 5, '2019-03-02 21:33:10', '2019-03-02 21:33:10', 1, 27),
(55, '2015-03-30', 22, 56, 627010, NULL, 5, '2019-03-02 21:47:24', '2019-03-02 21:47:24', 0, 28),
(56, '2015-03-30', 15, 55, NULL, 627010, 5, '2019-03-02 21:47:24', '2019-03-02 21:47:24', 1, 28),
(57, '2015-05-11', 18, 58, 1872123, NULL, 5, '2019-03-02 21:49:07', '2019-03-02 21:49:07', 0, 29),
(58, '2015-05-11', 15, 57, NULL, 1872123, 5, '2019-03-02 21:49:07', '2019-03-02 21:49:07', 1, 29),
(75, '2015-04-08', 15, 76, 480000, NULL, 5, '2019-03-03 15:44:39', '2019-03-03 15:44:39', 0, 38),
(76, '2015-04-08', 21, 75, NULL, 480000, 5, '2019-03-03 15:44:39', '2019-03-03 15:44:39', 1, 38),
(77, '2015-04-08', 18, 78, 480000, NULL, 5, '2019-03-03 15:45:43', '2019-03-03 15:45:43', 0, 39),
(78, '2015-04-08', 15, 77, NULL, 480000, 5, '2019-03-03 15:45:43', '2019-03-03 15:45:43', 1, 39),
(79, '2015-04-11', 15, 80, 270000, NULL, 5, '2019-03-03 16:13:18', '2019-03-03 16:13:18', 0, 40),
(80, '2015-04-11', 21, 79, NULL, 270000, 5, '2019-03-03 16:13:18', '2019-03-03 16:13:18', 1, 40),
(85, '2015-04-11', 19, 86, 270000, NULL, 5, '2019-03-03 16:57:45', '2019-03-03 16:57:45', 0, 43),
(86, '2015-04-11', 15, 85, NULL, 270000, 5, '2019-03-03 16:57:45', '2019-03-03 16:57:45', 1, 43),
(87, '2015-04-11', 7, 88, 270000, NULL, 1, '2019-03-03 16:59:09', '2019-03-03 16:59:09', 0, 44),
(88, '2015-04-11', 8, 87, NULL, 270000, 1, '2019-03-03 16:59:09', '2019-03-03 16:59:09', 1, 44),
(89, '2015-04-15', 15, 90, 4000000, NULL, 5, '2019-03-03 17:01:44', '2019-03-03 17:01:44', 0, 45),
(90, '2015-04-15', 20, 89, NULL, 4000000, 5, '2019-03-03 17:01:44', '2019-03-03 17:01:44', 1, 45),
(91, '2015-04-15', 22, 92, 4000000, NULL, 5, '2019-03-03 17:03:43', '2019-03-03 17:03:43', 0, 46),
(92, '2015-04-15', 15, 91, NULL, 4000000, 5, '2019-03-03 17:03:43', '2019-03-03 17:03:43', 1, 46),
(93, '2015-04-16', 15, 94, 100000, NULL, 5, '2019-03-03 17:04:57', '2019-03-03 17:04:57', 0, 47),
(94, '2015-04-16', 21, 93, NULL, 100000, 5, '2019-03-03 17:04:57', '2019-03-03 17:04:57', 1, 47),
(95, '2015-04-16', 18, 96, 100000, NULL, 5, '2019-03-03 17:06:07', '2019-03-03 17:06:07', 0, 48),
(96, '2015-04-16', 15, 95, NULL, 100000, 5, '2019-03-03 17:06:07', '2019-03-03 17:06:07', 1, 48),
(97, '2015-04-20', 15, 98, 350000, NULL, 5, '2019-03-03 17:07:03', '2019-03-03 17:07:03', 0, 49),
(98, '2015-04-20', 21, 97, NULL, 350000, 5, '2019-03-03 17:07:03', '2019-03-03 17:07:03', 1, 49),
(99, '2015-04-20', 18, 100, 350000, NULL, 5, '2019-03-03 17:08:00', '2019-03-03 17:08:00', 0, 50),
(100, '2015-04-20', 15, 99, NULL, 350000, 5, '2019-03-03 17:08:00', '2019-03-03 17:08:00', 1, 50),
(101, '2015-04-21', 15, 102, 400000, NULL, 5, '2019-03-03 17:09:10', '2019-03-03 17:09:10', 0, 51),
(102, '2015-04-21', 21, 101, NULL, 400000, 5, '2019-03-03 17:09:10', '2019-03-03 17:09:10', 1, 51),
(103, '2015-04-21', 18, 104, 400000, NULL, 5, '2019-03-03 17:10:12', '2019-03-03 17:10:12', 0, 52),
(104, '2015-04-21', 15, 103, NULL, 400000, 5, '2019-03-03 17:10:12', '2019-03-03 17:10:12', 1, 52),
(105, '2015-04-23', 15, 106, 600000, NULL, 5, '2019-03-03 17:13:22', '2019-03-03 17:13:22', 0, 53),
(106, '2015-04-23', 21, 105, NULL, 600000, 5, '2019-03-03 17:13:22', '2019-03-03 17:13:22', 1, 53),
(107, '2015-04-23', 18, 108, 300000, NULL, 5, '2019-03-03 17:16:14', '2019-03-03 17:16:14', 0, 54),
(108, '2015-04-23', 15, 107, NULL, 300000, 5, '2019-03-03 17:16:14', '2019-03-03 17:16:14', 1, 54),
(109, '2015-04-23', 19, 110, 115000, NULL, 5, '2019-03-03 17:18:33', '2019-03-03 17:18:33', 0, 55),
(110, '2015-04-23', 15, 109, NULL, 115000, 5, '2019-03-03 17:18:33', '2019-03-03 17:18:33', 1, 55),
(111, '2015-04-23', 7, 112, 115000, NULL, 1, '2019-03-03 17:19:35', '2019-03-03 17:19:35', 0, 56),
(112, '2015-04-23', 8, 111, NULL, 115000, 1, '2019-03-03 17:19:35', '2019-03-03 17:19:35', 1, 56),
(113, '2015-04-26', 15, 114, 100000, NULL, 5, '2019-03-03 17:21:03', '2019-03-03 17:21:03', 0, 57),
(114, '2015-04-26', 21, 113, NULL, 100000, 5, '2019-03-03 17:21:03', '2019-03-03 17:21:03', 1, 57),
(115, '2015-04-26', 18, 116, 200000, NULL, 5, '2019-03-03 17:21:48', '2019-03-03 17:21:48', 0, 58),
(116, '2015-04-26', 15, 115, NULL, 200000, 5, '2019-03-03 17:21:48', '2019-03-03 17:21:48', 1, 58),
(117, '2015-04-27', 15, 118, 65000, NULL, 5, '2019-03-03 17:23:25', '2019-03-03 17:23:25', 0, 59),
(118, '2015-04-27', 21, 117, NULL, 65000, 5, '2019-03-03 17:23:25', '2019-03-03 17:23:25', 1, 59),
(119, '2015-04-27', 18, 120, 150000, NULL, 5, '2019-03-03 17:24:20', '2019-03-03 17:24:20', 0, 60),
(120, '2015-04-27', 15, 119, NULL, 150000, 5, '2019-03-03 17:24:20', '2019-03-03 17:24:20', 1, 60),
(121, '2015-04-30', 15, 122, 350000, NULL, 5, '2019-03-03 17:25:44', '2019-03-03 17:25:44', 0, 61),
(122, '2015-04-30', 21, 121, NULL, 350000, 5, '2019-03-03 17:25:44', '2019-03-03 17:25:44', 1, 61),
(123, '2015-04-30', 18, 124, 100000, NULL, 5, '2019-03-03 17:30:47', '2019-03-03 17:30:47', 0, 62),
(124, '2015-04-30', 15, 123, NULL, 100000, 5, '2019-03-03 17:30:47', '2019-03-03 17:30:47', 1, 62),
(125, '2019-03-03', 24, 126, 5000000, NULL, 7, '2019-03-03 18:07:20', '2019-03-03 18:07:20', 0, 63),
(126, '2019-03-03', 29, 125, NULL, 5000000, 7, '2019-03-03 18:07:20', '2019-03-03 18:07:20', 1, 63),
(127, '2015-05-04', 15, 128, 250000, NULL, 5, '2019-03-03 18:30:28', '2019-03-03 18:30:28', 0, 64),
(128, '2015-05-04', 21, 127, NULL, 250000, 5, '2019-03-03 18:30:28', '2019-03-03 18:30:28', 1, 64),
(129, '2015-05-04', 22, 130, 500000, NULL, 5, '2019-03-03 18:33:31', '2019-03-03 18:33:31', 0, 65),
(130, '2015-05-04', 15, 129, NULL, 500000, 5, '2019-03-03 18:33:31', '2019-03-03 18:33:31', 1, 65),
(131, '2015-05-06', 15, 132, 620000, NULL, 5, '2019-03-03 18:41:16', '2019-03-03 18:41:16', 0, 66),
(132, '2015-05-06', 21, 131, NULL, 620000, 5, '2019-03-03 18:41:16', '2019-03-03 18:41:16', 1, 66),
(133, '2015-05-07', 15, 134, 200000, NULL, 5, '2019-03-03 18:43:49', '2019-03-03 18:43:49', 0, 67),
(134, '2015-05-07', 21, 133, NULL, 200000, 5, '2019-03-03 18:43:49', '2019-03-03 18:43:49', 1, 67),
(135, '2015-05-07', 22, 136, 820000, NULL, 5, '2019-03-03 18:59:40', '2019-03-03 18:59:40', 0, 68),
(136, '2015-05-07', 15, 135, NULL, 820000, 5, '2019-03-03 18:59:40', '2019-03-03 18:59:40', 1, 68),
(137, '2015-05-12', 15, 138, 200000, NULL, 5, '2019-03-03 19:01:42', '2019-03-03 19:01:42', 0, 69),
(138, '2015-05-12', 21, 137, NULL, 200000, 5, '2019-03-03 19:01:42', '2019-03-03 19:01:42', 1, 69),
(141, '2015-05-12', 22, 142, 200000, NULL, 5, '2019-03-03 19:20:14', '2019-03-03 19:20:14', 0, 71),
(142, '2015-05-12', 15, 141, NULL, 200000, 5, '2019-03-03 19:20:14', '2019-03-03 19:20:14', 1, 71),
(143, '2015-05-13', 15, 144, 600000, NULL, 5, '2019-03-03 19:29:29', '2019-03-03 19:29:29', 0, 72),
(144, '2015-05-13', 21, 143, NULL, 600000, 5, '2019-03-03 19:29:29', '2019-03-03 19:29:29', 1, 72),
(145, '2019-03-03', 28, 146, 85211963, NULL, 7, '2019-03-03 19:33:45', '2019-03-03 19:33:45', 0, 73),
(146, '2019-03-03', 29, 145, NULL, 85211963, 7, '2019-03-03 19:33:45', '2019-03-03 19:33:45', 1, 73),
(147, '2015-05-13', 22, 148, 300000, NULL, 5, '2019-03-03 19:38:12', '2019-03-03 19:38:12', 0, 74),
(148, '2015-05-13', 15, 147, NULL, 300000, 5, '2019-03-03 19:38:12', '2019-03-03 19:38:12', 1, 74),
(149, '2015-05-13', 19, 150, 300000, NULL, 5, '2019-03-03 19:52:53', '2019-03-03 19:52:53', 0, 75),
(150, '2015-05-13', 15, 149, NULL, 300000, 5, '2019-03-03 19:52:53', '2019-03-03 19:52:53', 1, 75),
(151, '2015-05-14', 15, 152, 700000, NULL, 5, '2019-03-03 19:57:27', '2019-03-03 19:57:27', 0, 76),
(152, '2015-05-14', 21, 151, NULL, 700000, 5, '2019-03-03 19:57:27', '2019-03-03 19:57:27', 1, 76),
(153, '2015-05-14', 18, 154, 100000, NULL, 5, '2019-03-03 19:58:39', '2019-03-03 19:58:39', 0, 77),
(154, '2015-05-14', 15, 153, NULL, 100000, 5, '2019-03-03 19:58:39', '2019-03-03 19:58:39', 1, 77),
(155, '2015-05-14', 19, 156, 600000, NULL, 5, '2019-03-03 20:10:46', '2019-03-03 20:10:46', 0, 78),
(156, '2015-05-14', 15, 155, NULL, 600000, 5, '2019-03-03 20:10:46', '2019-03-03 20:10:46', 1, 78),
(157, '2015-05-19', 15, 158, 200000, NULL, 5, '2019-03-03 22:45:24', '2019-03-03 22:45:24', 0, 79),
(158, '2015-05-19', 21, 157, NULL, 200000, 5, '2019-03-03 22:45:24', '2019-03-03 22:45:24', 1, 79),
(159, '2015-05-20', 15, 160, 100000, NULL, 5, '2019-03-03 22:59:54', '2019-03-03 22:59:54', 0, 80),
(160, '2015-05-20', 21, 159, NULL, 100000, 5, '2019-03-03 22:59:54', '2019-03-03 22:59:54', 1, 80),
(161, '2015-05-20', 22, 162, 300000, NULL, 5, '2019-03-03 23:01:08', '2019-03-03 23:01:08', 0, 81),
(162, '2015-05-20', 15, 161, NULL, 300000, 5, '2019-03-03 23:01:08', '2019-03-03 23:01:08', 1, 81),
(163, '2015-05-23', 15, 164, 150000, NULL, 5, '2019-03-03 23:02:58', '2019-03-03 23:02:58', 0, 82),
(164, '2015-05-23', 21, 163, NULL, 150000, 5, '2019-03-03 23:02:58', '2019-03-03 23:02:58', 1, 82),
(165, '2015-05-24', 15, 166, 100000, NULL, 5, '2019-03-03 23:04:27', '2019-03-03 23:04:27', 0, 83),
(166, '2015-05-24', 21, 165, NULL, 100000, 5, '2019-03-03 23:04:27', '2019-03-03 23:04:27', 1, 83),
(167, '2015-05-24', 22, 168, 200000, NULL, 5, '2019-03-03 23:06:47', '2019-03-03 23:06:47', 0, 84),
(168, '2015-05-24', 15, 167, NULL, 200000, 5, '2019-03-03 23:06:47', '2019-03-03 23:06:47', 1, 84),
(169, '2015-05-25', 15, 170, 250000, NULL, 5, '2019-03-03 23:08:24', '2019-03-03 23:08:24', 0, 85),
(170, '2015-05-25', 21, 169, NULL, 250000, 5, '2019-03-03 23:08:24', '2019-03-03 23:08:24', 1, 85),
(171, '2015-05-25', 18, 172, 300000, NULL, 5, '2019-03-03 23:09:30', '2019-03-03 23:09:30', 0, 86),
(172, '2015-05-25', 15, 171, NULL, 300000, 5, '2019-03-03 23:09:30', '2019-03-03 23:09:30', 1, 86),
(173, '2015-05-26', 15, 174, 1258000, NULL, 5, '2019-03-03 23:22:34', '2019-03-03 23:22:34', 0, 87),
(174, '2015-05-26', 21, 173, NULL, 1258000, 5, '2019-03-03 23:22:34', '2019-03-03 23:22:34', 1, 87),
(175, '2015-05-26', 18, 176, 1200000, NULL, 5, '2019-03-03 23:27:44', '2019-03-03 23:27:44', 0, 88),
(176, '2015-05-26', 15, 175, NULL, 1200000, 5, '2019-03-03 23:27:44', '2019-03-03 23:27:44', 1, 88),
(177, '2015-05-26', 22, 178, 58000, NULL, 5, '2019-03-03 23:29:10', '2019-03-03 23:29:10', 0, 89),
(178, '2015-05-26', 15, 177, NULL, 58000, 5, '2019-03-03 23:29:10', '2019-03-03 23:29:10', 1, 89);

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `narration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journal_date` date NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `journal_entries`
--

INSERT INTO `journal_entries` (`id`, `narration`, `journal_date`, `company_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Inventory Purchase', '2019-01-12', 6, 1, '2019-02-27 14:39:49', '2019-02-27 14:56:20'),
(2, 'Purchase Inventory with A/C Payable', '2019-01-01', 6, 1, '2019-02-27 14:41:59', '2019-02-27 14:41:59'),
(3, 'Investment', '2019-02-27', 6, 1, '2019-02-27 14:46:42', '2019-02-27 14:46:42'),
(4, 'HR Salary', '2019-02-13', 6, 1, '2019-02-27 14:47:28', '2019-02-27 14:47:28'),
(5, 'Product Sales', '2019-02-27', 6, 1, '2019-02-27 14:50:04', '2019-02-27 14:50:04'),
(6, 'Office Rent', '2019-01-01', 6, 1, '2019-02-27 14:51:18', '2019-02-27 14:51:18'),
(7, 'Inventory', '2019-01-16', 6, 1, '2019-02-27 14:52:11', '2019-02-27 14:52:11'),
(8, 'Office Tour', '2019-01-19', 6, 1, '2019-02-27 14:53:34', '2019-02-27 14:53:49'),
(9, 'Inventory', '2019-01-22', 6, 1, '2019-02-27 14:55:00', '2019-02-27 14:55:15'),
(10, 'Product Sales', '2019-02-06', 6, 1, '2019-02-27 14:57:19', '2019-02-27 14:57:19'),
(11, 'Profit Before-2015', '2014-07-14', 1, 1, '2019-03-02 18:28:20', '2019-03-02 18:28:20'),
(12, 'Isa  For Jakat', '2014-07-19', 1, 1, '2019-03-02 18:39:16', '2019-03-02 18:39:16'),
(13, 'Isa For Jakat', '2014-07-27', 1, 1, '2019-03-02 18:43:00', '2019-03-02 18:43:00'),
(14, 'Isa For (HR)', '2014-10-04', 1, 1, '2019-03-02 18:45:51', '2019-03-02 18:45:51'),
(15, 'Isa For China', '2014-10-21', 1, 1, '2019-03-02 18:47:46', '2019-03-02 18:47:46'),
(16, 'Isa For R.M.B Shopping', '2014-10-24', 1, 1, '2019-03-02 18:50:08', '2019-03-02 18:50:08'),
(17, 'Isa For Captain Raza', '2015-01-18', 1, 1, '2019-03-02 18:51:58', '2019-03-02 18:51:58'),
(18, 'Isa For Land', '2015-03-31', 1, 1, '2019-03-02 18:53:41', '2019-03-02 18:53:41'),
(19, 'Inter Company Transaction', '2019-03-02', 1, 1, '2019-03-02 19:01:44', '2019-03-02 19:07:58'),
(20, 'Inter Company Transaction', '2015-01-01', 5, 1, '2019-03-02 19:07:58', '2019-03-02 19:07:58'),
(22, 'Sahara I.R.C (2014-2015', '2015-01-02', 5, 1, '2019-03-02 21:00:00', '2019-03-02 21:00:00'),
(23, 'L/C-034/035 Insurance', '2015-01-14', 5, 1, '2019-03-02 21:04:25', '2019-03-02 21:04:25'),
(24, 'L/C-034 Marjin', '2015-01-14', 5, 1, '2019-03-02 21:07:09', '2019-03-02 21:17:32'),
(25, 'L/C- 35 Marjin', '2015-01-14', 5, 1, '2019-03-02 21:09:36', '2019-03-02 21:18:25'),
(26, 'L/C-34 Tape  Duty', '2015-03-12', 5, 1, '2019-03-02 21:30:07', '2019-03-02 21:30:07'),
(27, 'L/C-35 G.I XXX Duty', '2015-03-12', 5, 1, '2019-03-02 21:33:10', '2019-03-02 21:33:10'),
(28, '9 Containers loss', '2015-03-30', 5, 1, '2019-03-02 21:47:24', '2019-03-02 21:47:24'),
(29, NULL, '2015-05-11', 5, 1, '2019-03-02 21:49:07', '2019-03-02 21:49:07'),
(38, 'P-748', '2015-04-08', 5, 1, '2019-03-03 15:44:39', '2019-03-03 15:44:39'),
(39, NULL, '2015-04-08', 5, 1, '2019-03-03 15:45:43', '2019-03-03 15:45:43'),
(40, 'P-748', '2015-04-11', 5, 1, '2019-03-03 16:13:18', '2019-03-03 16:13:18'),
(43, 'Sahara lone Return', '2015-04-11', 5, 1, '2019-03-03 16:57:45', '2019-03-03 16:59:09'),
(44, 'Sahara lone Return', '2015-04-11', 1, 1, '2019-03-03 16:59:09', '2019-03-03 16:59:09'),
(45, 'Bank lone', '2015-04-15', 5, 1, '2019-03-03 17:01:44', '2019-03-03 17:01:44'),
(46, 'T.T-$-50000 China L/C.', '2015-04-15', 5, 1, '2019-03-03 17:03:43', '2019-03-03 17:03:43'),
(47, 'P-748', '2015-04-16', 5, 1, '2019-03-03 17:04:57', '2019-03-03 17:04:57'),
(48, 'P-748', '2015-04-16', 5, 1, '2019-03-03 17:06:07', '2019-03-03 17:06:07'),
(49, 'P-748', '2015-04-20', 5, 1, '2019-03-03 17:07:03', '2019-03-03 17:07:03'),
(50, NULL, '2015-04-20', 5, 1, '2019-03-03 17:08:00', '2019-03-03 17:08:00'),
(51, 'P-748', '2015-04-21', 5, 1, '2019-03-03 17:09:10', '2019-03-03 17:09:10'),
(52, NULL, '2015-04-21', 5, 1, '2019-03-03 17:10:12', '2019-03-03 17:10:12'),
(53, 'P-748', '2015-04-23', 5, 1, '2019-03-03 17:13:22', '2019-03-03 17:13:22'),
(54, NULL, '2015-04-23', 5, 1, '2019-03-03 17:16:14', '2019-03-03 17:16:14'),
(55, 'Sahara lone Return', '2015-04-23', 5, 1, '2019-03-03 17:18:33', '2019-03-03 17:19:35'),
(56, 'Sahara lone Return', '2015-04-23', 1, 1, '2019-03-03 17:19:35', '2019-03-03 17:19:35'),
(57, 'p-784', '2015-04-26', 5, 1, '2019-03-03 17:21:03', '2019-03-03 17:21:03'),
(58, NULL, '2015-04-26', 5, 1, '2019-03-03 17:21:48', '2019-03-03 17:21:48'),
(59, 'p-748', '2015-04-27', 5, 1, '2019-03-03 17:23:25', '2019-03-03 17:23:25'),
(60, NULL, '2015-04-27', 5, 1, '2019-03-03 17:24:20', '2019-03-03 17:24:20'),
(61, 'p-748', '2015-04-30', 5, 1, '2019-03-03 17:25:44', '2019-03-03 17:25:44'),
(62, NULL, '2015-04-30', 5, 1, '2019-03-03 17:30:47', '2019-03-03 17:30:47'),
(63, 'Opening Balance', '2019-03-03', 7, 1, '2019-03-03 18:07:20', '2019-03-03 18:07:20'),
(64, 'P-748', '2015-05-04', 5, 1, '2019-03-03 18:30:28', '2019-03-03 18:30:28'),
(65, 'T.T-$-29725', '2015-05-04', 5, 1, '2019-03-03 18:33:31', '2019-03-03 18:33:31'),
(66, 'P-748', '2015-05-06', 5, 1, '2019-03-03 18:41:16', '2019-03-03 18:41:16'),
(67, 'P-748', '2015-05-07', 5, 1, '2019-03-03 18:43:49', '2019-03-03 18:43:49'),
(68, 'T.T-City Bank', '2015-05-07', 5, 1, '2019-03-03 18:59:40', '2019-03-03 18:59:40'),
(69, 'P-748', '2015-05-12', 5, 1, '2019-03-03 19:01:42', '2019-03-03 19:01:42'),
(71, 'T.T-City Bank', '2015-05-12', 5, 1, '2019-03-03 19:20:14', '2019-03-03 19:20:14'),
(72, 'P-748', '2015-05-13', 5, 1, '2019-03-03 19:29:29', '2019-03-03 19:29:29'),
(73, 'olikuujh', '2019-03-03', 7, 1, '2019-03-03 19:33:45', '2019-03-03 19:33:45'),
(74, 'T.T-City bank', '2015-05-13', 5, 1, '2019-03-03 19:38:12', '2019-03-03 19:38:12'),
(75, 'Sahara lone Return', '2015-05-13', 5, 0, '2019-03-03 19:52:53', '2019-03-03 19:52:53'),
(76, 'P-748', '2015-05-14', 5, 1, '2019-03-03 19:57:27', '2019-03-03 19:57:27'),
(77, NULL, '2015-05-14', 5, 1, '2019-03-03 19:58:39', '2019-03-03 19:58:39'),
(78, 'Sahara lone Return', '2015-05-14', 5, 0, '2019-03-03 20:10:46', '2019-03-03 20:10:46'),
(79, 'P-748', '2015-05-19', 5, 1, '2019-03-03 22:45:24', '2019-03-03 22:45:24'),
(80, 'P-748', '2015-05-20', 5, 1, '2019-03-03 22:59:54', '2019-03-03 22:59:54'),
(81, 'T.T-City Bank', '2015-05-20', 5, 1, '2019-03-03 23:01:08', '2019-03-03 23:01:08'),
(82, 'P-748', '2015-05-23', 5, 1, '2019-03-03 23:02:58', '2019-03-03 23:02:58'),
(83, 'P-748', '2015-05-24', 5, 1, '2019-03-03 23:04:27', '2019-03-03 23:04:27'),
(84, 'T.T-City Bank', '2015-05-24', 5, 1, '2019-03-03 23:06:47', '2019-03-03 23:06:47'),
(85, 'P-748', '2015-05-25', 5, 1, '2019-03-03 23:08:24', '2019-03-03 23:08:24'),
(86, NULL, '2015-05-25', 5, 1, '2019-03-03 23:09:30', '2019-03-03 23:09:30'),
(87, 'P-748', '2015-05-26', 5, 1, '2019-03-03 23:22:34', '2019-03-03 23:22:34'),
(88, NULL, '2015-05-26', 5, 1, '2019-03-03 23:27:44', '2019-03-03 23:27:44'),
(89, 'T.T-End cash', '2015-05-26', 5, 1, '2019-03-03 23:29:10', '2019-03-03 23:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leave_type_id` int(10) UNSIGNED NOT NULL,
  `allowed_days` int(11) NOT NULL DEFAULT '0',
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type_id`, `allowed_days`, `from_date`, `to_date`, `company_id`, `created_at`, `updated_at`) VALUES
(19, 1, 1, 10, '2019-03-01', '2019-03-10', 6, '2019-02-26 01:39:23', '2019-02-26 01:39:23'),
(20, 1, 1, 5, '2019-01-10', '2019-01-14', 6, '2019-02-27 08:20:03', '2019-02-27 08:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `name`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Paid Leave', 6, '2019-02-25 01:41:02', '2019-02-25 01:43:56', NULL),
(2, 'sick leave', 5, '2019-03-02 21:59:39', '2019-03-02 21:59:39', NULL),
(3, 'Paid Leave', 7, '2019-03-03 17:53:39', '2019-03-03 17:53:45', '2019-03-03 17:53:45'),
(4, 'Regular Leave', 7, '2019-03-03 17:54:10', '2019-03-03 17:54:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `posting_year` tinyint(4) NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_12_000002_create_companies_table', 1),
(4, '2018_12_02_062834_create_units_table', 1),
(5, '2018_12_02_063617_create_grades_table', 1),
(6, '2018_12_02_064031_create_raw_materials_table', 1),
(7, '2018_12_03_104246_create_vendors_table', 1),
(8, '2018_12_03_104247_create_purchase_orders_table', 1),
(9, '2018_12_03_104955_create_inventory_items_table', 1),
(10, '2018_12_03_104956_create_purchase_order_details_table', 1),
(11, '2018_12_03_105144_create_purchase_order_detail_logs_table', 1),
(12, '2018_12_17_071152_create_productions_table', 1),
(13, '2018_12_17_071222_create_production_materials_table', 1),
(14, '2018_12_18_074822_add_production_id_to_purchase_order_detail_logs_table', 1),
(15, '2018_12_19_065550_create_categories_table', 1),
(16, '2018_12_19_070124_add_category_id_to_grades_table', 1),
(17, '2018_12_25_083948_add_challan_no_to_production_materials_table', 1),
(18, '2018_12_25_084501_add_challan_no_to_purchase_order_details_table', 1),
(19, '2018_12_25_084732_add_challan_no_to_purchase_order_detail_logs_table', 1),
(20, '2018_12_26_080816_create_goods_table', 1),
(21, '2018_12_26_080817_create_produced_goods_table', 1),
(22, '2018_12_26_080852_create_production_goods_table', 1),
(23, '2018_12_26_091920_create_production_products_table', 1),
(24, '2018_12_27_092326_add_production_id_to_produced_goods_table', 1),
(25, '2019_01_07_062847_add_other_field_on_purchase_orders_table', 1),
(26, '2019_01_07_063347_create_payment_types_table', 1),
(27, '2019_01_07_063406_create_purchase_payments_table', 1),
(28, '2019_01_08_184632_create_designations_table', 1),
(29, '2019_01_08_184701_create_employees_table', 1),
(30, '2019_01_08_194443_create_rosters_table', 1),
(31, '2019_01_09_102911_revise_employee_table', 1),
(32, '2019_01_09_103630_add_salary_to_employee_table', 1),
(33, '2019_01_09_163523_create_attendances_table', 1),
(34, '2019_01_09_172816_create_leave_types_table', 1),
(35, '2019_01_09_172817_create_leaves_table', 1),
(36, '2019_01_09_172909_create_employee_leave_types_table', 1),
(37, '2019_01_10_065028_create_employee_annual_leaves_table', 1),
(38, '2019_01_10_111407_create_employee_monthly_leaves_table', 1),
(39, '2019_01_11_055901_add_remaining_qty_to_produced_goods_table', 1),
(40, '2019_01_11_100024_create_sales_orders_table', 1),
(41, '2019_01_11_100124_create_sales_order_details_table', 1),
(42, '2019_01_11_125828_add_sales_date_to_sales_order_table', 1),
(43, '2019_01_11_130648_add_status_to_sales_order_table', 1),
(44, '2019_01_12_095735_create_accounts_table', 1),
(45, '2019_01_12_095841_create_journals_table', 1),
(46, '2019_01_12_100204_create_ledgers_table', 1),
(47, '2019_01_12_100221_create_trial_balances_table', 1),
(48, '2019_01_14_060416_create_sales_chalans_table', 1),
(49, '2019_01_14_060432_create_sales_chalan_details_table', 1),
(50, '2019_01_14_111637_add_type_to_sales_chalan_table', 1),
(51, '2019_01_14_120346_revise_sales_order_table', 1),
(52, '2019_01_14_125314_revise_goods_table', 1),
(53, '2019_01_15_092933_create_expense_heads_table', 1),
(54, '2019_01_15_092948_create_expenses_table', 1),
(55, '2019_01_17_100153_add_account_type_to_journals_table', 1),
(56, '2019_01_17_105626_create_journal_entries_table', 1),
(57, '2019_01_17_105944_add_journal_entry_id_to_journals_table', 1),
(58, '2019_01_19_082527_create_company_transactions_table', 1),
(59, '2019_01_21_092658_create_sales_payments_table', 1),
(60, '2019_01_21_103055_revise_produced_goods_table', 1),
(61, '2019_01_22_074758_create_company_users_table', 1),
(62, '2019_01_26_222752_create_payment_type_fields_table', 1),
(63, '2019_01_26_222905_create_sales_payment_fields_table', 1),
(64, '2019_01_26_230251_create_purchase_payment_fields_table', 1),
(65, '2019_02_01_171857_create_roles_table', 1),
(66, '2019_02_01_171945_create_permissions_table', 1),
(67, '2019_02_01_172022_create_role_permissions_table', 1),
(68, '2019_02_01_172105_create_user_roles_table', 1),
(69, '2019_02_08_204610_create_purchase_sales_details_table', 1),
(70, '2019_02_08_210645_create_purchase_sales_chalan_details_table', 1),
(71, '2019_02_24_194650_create_monthly_leaves_table', 1),
(73, '2019_02_24_201258_create_bonuses_table', 1),
(74, '2019_02_24_201321_create_deduction_types_table', 1),
(75, '2019_02_24_201439_create_vacations_table', 1),
(76, '2019_02_24_201540_create_monthly_vacations_table', 1),
(77, '2019_02_24_201758_add_weekends_to_employees_table', 1),
(79, '2019_02_24_201239_create_employee_salaries_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_leaves`
--

CREATE TABLE `monthly_leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `leave_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `month` tinyint(4) NOT NULL,
  `year` int(10) NOT NULL,
  `days` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_leaves`
--

INSERT INTO `monthly_leaves` (`id`, `leave_id`, `company_id`, `month`, `year`, `days`, `created_at`, `updated_at`) VALUES
(17, 19, 6, 3, 2019, 10, '2019-02-26 01:39:23', '2019-02-26 01:39:23'),
(18, 20, 6, 1, 2019, 5, '2019-02-27 08:20:03', '2019-02-27 08:20:03');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_vacations`
--

CREATE TABLE `monthly_vacations` (
  `id` int(10) UNSIGNED NOT NULL,
  `vacation_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `month` tinyint(4) NOT NULL,
  `year` int(10) NOT NULL,
  `days` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_vacations`
--

INSERT INTO `monthly_vacations` (`id`, `vacation_id`, `company_id`, `month`, `year`, `days`, `created_at`, `updated_at`) VALUES
(6, 4, 6, 2, 2019, 8, '2019-02-25 00:56:03', '2019-02-25 00:56:03'),
(7, 4, 6, 3, 2019, 10, '2019-02-25 00:56:03', '2019-02-25 00:56:03'),
(10, 5, 6, 1, 2019, 5, '2019-02-27 08:18:52', '2019-02-27 08:18:52'),
(11, 6, 5, 3, 2019, 11, '2019-03-02 21:50:19', '2019-03-02 21:50:19'),
(12, 7, 7, 3, 2019, 2, '2019-03-04 15:56:39', '2019-03-04 15:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cash', 7, '2019-03-03 18:07:56', '2019-03-03 18:07:56', NULL),
(2, 'Cheque', 7, '2019-03-03 18:08:08', '2019-03-03 18:08:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type_fields`
--

CREATE TABLE `payment_type_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `date_type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Roles show', 'roles-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(2, 'Role create', 'role-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(3, 'Role edit', 'role-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(4, 'Role delete', 'role-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(5, 'Users show', 'users-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(6, 'User create', 'user-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(7, 'User edit', 'user-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(8, 'User delete', 'user-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(9, 'Units show', 'units-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(10, 'Unit create', 'unit-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(11, 'Unit edit', 'unit-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(12, 'Unit delete', 'unit-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(13, 'Raw materials show', 'raw-materials-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(14, 'Raw material create', 'raw-material-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(15, 'Raw material edit', 'raw-material-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(16, 'Raw material delete', 'raw-material-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(17, 'Inventory raw materials show', 'inventory-raw-materials-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(18, 'Inventory other materials show', 'inventory-other-materials-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(19, 'Inventory logs materials show', 'inventory-logs-materials-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(20, 'Inventory ready for sale goods show', 'inventory-ready-for-sale-goods-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(21, 'Designations show', 'designations-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(22, 'Designation create', 'designation-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(23, 'Designation edit', 'designation-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(24, 'Designation delete', 'designation-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(25, 'Leave types show', 'leave-types-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(26, 'Leave type create', 'leave-type-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(27, 'Leave type edit', 'leave-type-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(28, 'Leave type delete', 'leave-type-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(29, 'Employees show', 'employees-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(30, 'Employee create', 'employee-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(31, 'Employee edit', 'employee-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(32, 'Employee delete', 'employee-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(33, 'Attendances show', 'attendances-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(34, 'Attendance create', 'attendance-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(35, 'Roster create', 'roster-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(36, 'Roster delete', 'roster-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(37, 'Categories show', 'categories-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(38, 'Category create', 'category-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(39, 'Category edit', 'category-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(40, 'Category delete', 'category-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(41, 'Grades show', 'grades-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(42, 'Grade create', 'grade-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(43, 'Grade edit', 'grade-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(44, 'Grade delete', 'grade-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(45, 'Vendors show', 'vendors-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(46, 'Vendor create', 'vendor-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(47, 'Vendor edit', 'vendor-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(48, 'Vendor delete', 'vendor-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(49, 'Purchase orders show', 'purchase-orders-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(50, 'Purchase order show', 'purchase-order-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(51, 'Purchase order create', 'purchase-order-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(52, 'Purchase order edit', 'purchase-order-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(53, 'Purchase order delete', 'purchase-order-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(54, 'Goods show', 'goods-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(55, 'Goods create', 'goods-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(56, 'Goods edit', 'goods-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(57, 'Goods delete', 'goods-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(58, 'Productions show', 'productions-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(59, 'Production create', 'production-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(60, 'Production edit', 'production-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(61, 'Production delete', 'production-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(62, 'Produced goods show', 'produced-goods-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(63, 'Sales orders show', 'sales-orders-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(64, 'Sales order create', 'sales-order-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(65, 'Sales order edit', 'sales-order-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(66, 'Sales order delete', 'sales-order-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(67, 'Sales chalans show', 'sales-chalans-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(68, 'Sales chalan create', 'sales-chalan-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(69, 'Sales chalan edit', 'sales-chalan-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(70, 'Sales chalan delete', 'sales-chalan-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(71, 'Sales chalan download', 'sales-chalan-download', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(72, 'Sales return chalans show', 'sales-return-chalans-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(73, 'Sales return chalan create', 'sales-return-chalan-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(74, 'Sales return chalan edit', 'sales-return-chalan-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(75, 'Sales return chalan delete', 'sales-return-chalan-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(76, 'Purchase sales orders show', 'purchase-sales-orders-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(77, 'Purchase sales order create', 'purchase-sales-order-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(78, 'Purchase sales order edit', 'purchase-sales-order-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(79, 'Purchase sales order delete', 'purchase-sales-order-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(80, 'Purchase sales chalans show', 'purchase-sales-chalans-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(81, 'Purchase sales chalan create', 'purchase-sales-chalan-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(82, 'Purchase sales chalan edit', 'purchase-sales-chalan-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(83, 'Purchase sales chalan delete', 'purchase-sales-chalan-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(84, 'Purchase sales return chalans show', 'purchase-sales-return-chalans-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(85, 'Purchase sales return chalan create', 'purchase-sales-return-chalan-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(86, 'Purchase sales return chalan edit', 'purchase-sales-return-chalan-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(87, 'Purchase sales return chalan delete', 'purchase-sales-return-chalan-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(88, 'Payment types show', 'payment-types-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(89, 'Payment type create', 'payment-type-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(90, 'Payment type edit', 'payment-type-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(91, 'Payment type delete', 'payment-type-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(92, 'View extra fields show', 'view-extra-fields-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(93, 'View extra field create', 'view-extra-field-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(94, 'View extra field edit', 'view-extra-field-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(95, 'View extra field delete', 'view-extra-field-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(96, 'Sales payments show', 'sales-payments-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(97, 'Sales payment create', 'sales-payment-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(98, 'Purchase payments show', 'purchase-payments-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(99, 'Purchase payment create', 'purchase-payment-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(100, 'Expense heads show', 'expense-heads-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(101, 'Expense head create', 'expense-head-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(102, 'Expense head edit', 'expense-head-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(103, 'Expense head delete', 'expense-head-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(104, 'Expenses show', 'expenses-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(105, 'Expense create', 'expense-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(106, 'Expense edit', 'expense-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(107, 'Expense delete', 'expense-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(108, 'Accounts show', 'accounts-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(109, 'Account create', 'account-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(110, 'Account edit', 'account-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(111, 'Account delete', 'account-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(112, 'Journal entries show', 'journal-entries-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(113, 'Journal entry create', 'journal-entry-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(114, 'Journal entry edit', 'journal-entry-edit', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(115, 'Journal entry delete', 'journal-entry-delete', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(116, 'Transactions show', 'transactions-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(117, 'Transaction create', 'transaction-create', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(118, 'Transaction approve', 'transaction-approve', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(119, 'Transaction post approve', 'transaction-post-approve', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(120, 'Trial balance show', 'trial-balance-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(121, 'Trial balance download', 'trial-balance-download', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(122, 'Income statement show', 'income-statement-show', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(123, 'Income statement download', 'income-statement-download', '2019-02-24 22:07:11', '2019-02-24 22:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `produced_goods`
--

CREATE TABLE `produced_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `produced_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `released_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `production_id` int(10) UNSIGNED NOT NULL,
  `remaining_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `produced_goods_value` double NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

CREATE TABLE `productions` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `good_produced` tinyint(1) NOT NULL DEFAULT '1',
  `comment` text COLLATE utf8mb4_unicode_ci,
  `total_labour` int(11) DEFAULT NULL,
  `total_labour_cost` double DEFAULT NULL,
  `utility_cost` double DEFAULT NULL,
  `other_cost` double DEFAULT NULL,
  `total_production_cost` double DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `production_hour` float(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_goods`
--

CREATE TABLE `production_goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `produced_good_id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_materials`
--

CREATE TABLE `production_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `production_id` int(10) UNSIGNED NOT NULL,
  `raw_material_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `inventory_item_id` int(10) UNSIGNED DEFAULT NULL,
  `purchase_order_detail_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `wasted_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `used_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `price_per_unit` double(8,2) NOT NULL,
  `thickness` double(8,2) DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `challan_no_mannual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_products`
--

CREATE TABLE `production_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL,
  `challan_no_mannual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `challan_no_auto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `due_amount` double NOT NULL DEFAULT '0',
  `paid_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_details`
--

CREATE TABLE `purchase_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `raw_material_id` int(10) UNSIGNED NOT NULL,
  `inventory_item_id` int(10) UNSIGNED DEFAULT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `returned_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `used_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `wasted_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `sold_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `remaining_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `price_per_unit` double(8,2) NOT NULL,
  `amount` double NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `material_type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `challan_no_mannual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_detail_logs`
--

CREATE TABLE `purchase_order_detail_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `log_no` int(11) DEFAULT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `height` double(8,2) NOT NULL,
  `radius` double(8,2) NOT NULL,
  `quantity` double(8,2) NOT NULL,
  `grade` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_per_unit` double(8,2) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `new_height` double(8,2) DEFAULT NULL,
  `new_radius` double(8,2) DEFAULT NULL,
  `new_quantity` double(8,2) DEFAULT NULL,
  `wastage_quantity` double(8,2) DEFAULT NULL,
  `wastage_quantity_in_percent` double(8,2) DEFAULT NULL,
  `wastage_total_price` double(8,2) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `production_id` int(10) UNSIGNED DEFAULT NULL,
  `challan_no_mannual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `payment_type_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `payment_date` date NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payment_fields`
--

CREATE TABLE `purchase_payment_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_type_field_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_sales_chalan_details`
--

CREATE TABLE `purchase_sales_chalan_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `chalan_id` int(10) UNSIGNED NOT NULL,
  `purchase_order_detail_id` int(10) UNSIGNED NOT NULL,
  `inventory_item_id` int(10) UNSIGNED NOT NULL,
  `received_qty` int(11) DEFAULT NULL,
  `goods_amount` double(8,2) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_sales_details`
--

CREATE TABLE `purchase_sales_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_order_id` int(10) UNSIGNED NOT NULL,
  `inventory_item_id` int(10) UNSIGNED NOT NULL,
  `po_detail_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `unit_price` double(8,2) NOT NULL DEFAULT '0.00',
  `base_price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `delivered_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `remaining_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `returned_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `sub_total` double(10,2) NOT NULL DEFAULT '0.00',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `raw_materials`
--

CREATE TABLE `raw_materials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `raw_materials`
--

INSERT INTO `raw_materials` (`id`, `name`, `unit_id`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mango', 1, 7, '2019-03-03 17:48:55', '2019-03-03 17:48:55', NULL),
(2, 'Metal', 1, 7, '2019-03-03 17:49:18', '2019-03-03 17:49:18', NULL),
(3, 'Glue', 1, 7, '2019-03-03 17:49:31', '2019-03-03 17:49:31', NULL),
(4, 'Hybrid Apple', 1, 7, '2019-03-03 18:01:27', '2019-03-03 18:01:27', NULL),
(5, 'GI Pipe', 3, 5, '2019-05-28 06:17:02', '2019-05-28 06:17:02', NULL),
(6, 'Rice', 4, 5, '2019-05-28 06:17:11', '2019-05-28 06:17:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Accounts', 5, '2019-03-02 16:26:09', '2019-03-02 16:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(3, 1, 14, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(4, 1, 45, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(5, 1, 46, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(6, 1, 51, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(7, 1, 49, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(8, 1, 50, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(9, 1, 113, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(10, 1, 116, '2019-03-02 16:26:09', '2019-03-02 16:26:09'),
(12, 1, 13, '2019-03-05 05:01:43', '2019-03-05 05:01:43'),
(13, 1, 73, '2019-03-05 05:58:54', '2019-03-05 05:58:54'),
(14, 1, 76, '2019-03-05 05:58:54', '2019-03-05 05:58:54'),
(15, 1, 67, '2019-03-05 05:59:22', '2019-03-05 05:59:22');

-- --------------------------------------------------------

--
-- Table structure for table `rosters`
--

CREATE TABLE `rosters` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `shift` tinyint(1) NOT NULL DEFAULT '0',
  `in_time` time NOT NULL,
  `exit_time` time NOT NULL,
  `minimum_working_hour` tinyint(4) NOT NULL,
  `roster_date` date NOT NULL,
  `job_details` text COLLATE utf8mb4_unicode_ci,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rosters`
--

INSERT INTO `rosters` (`id`, `employee_id`, `shift`, `in_time`, `exit_time`, `minimum_working_hour`, `roster_date`, `job_details`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 0, '08:20:00', '17:58:00', 8, '2019-03-02', 'fgg', NULL, '2019-03-02 21:59:01', '2019-03-02 21:59:01', NULL),
(2, 3, 2, '12:52:00', '23:52:00', 8, '2019-03-05', 'Over time', NULL, '2019-03-03 17:53:04', '2019-03-03 17:53:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_chalans`
--

CREATE TABLE `sales_chalans` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_order_id` int(10) UNSIGNED NOT NULL,
  `chalan_date` date DEFAULT NULL,
  `chalan_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chalan_no_manual` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_chalan_details`
--

CREATE TABLE `sales_chalan_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `chalan_id` int(10) UNSIGNED NOT NULL,
  `sales_order_details_id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `received_qty` int(11) DEFAULT NULL,
  `goods_amount` double(8,2) DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_orders`
--

CREATE TABLE `sales_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sold_out_date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `total_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `payable_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `due_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `return_product_amount` double(12,2) NOT NULL DEFAULT '0.00',
  `other_charge` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_order_details`
--

CREATE TABLE `sales_order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_order_id` int(10) UNSIGNED NOT NULL,
  `good_id` int(10) UNSIGNED NOT NULL,
  `unit_id` int(10) UNSIGNED NOT NULL,
  `unit_price` double(8,2) NOT NULL DEFAULT '0.00',
  `quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `delivered_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `remaining_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `returned_quantity` double(8,2) NOT NULL DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT '0.00',
  `sub_total` double(10,2) NOT NULL DEFAULT '0.00',
  `base_price` double(10,2) NOT NULL DEFAULT '0.00',
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_order_id` int(10) UNSIGNED NOT NULL,
  `payment_type_id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `payment_date` date NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_payment_fields`
--

CREATE TABLE `sales_payment_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `field_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_payment_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_type_field_id` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trial_balances`
--

CREATE TABLE `trial_balances` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'KG', 7, '2019-03-03 17:48:14', '2019-03-03 17:48:14', NULL),
(2, 'Piece', 7, '2019-03-03 17:48:24', '2019-03-03 17:48:24', NULL),
(3, 'Pcs', 5, '2019-05-28 06:16:29', '2019-05-28 06:16:29', NULL),
(4, 'Kg', 5, '2019-05-28 06:16:34', '2019-05-28 06:16:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `super_admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nizam', 'user@royalgroup.com.bd', NULL, '$2y$10$zCqwUgnjv/ZHM1Y0P2jxdubUGzBFbhSuSLHqj/utvBYtOBfEAbEZ6', 0, 1, NULL, '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(2, 'Super Admin', 'nizam@winskit.com', NULL, '$2y$10$fhVZ2tbOc7rFsAuZmcsjtOmPftd36AfxsUQyfT469oy5RMK5XHW/y', 1, 1, 'WkFmvRrVIq5RmuEDsBqff4NGrx4hdBZMaQAoWPbER9uTADLCSLfCVpT9U3qt', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(3, 'Admin', 'admin@royalgroup.com.bd', NULL, '$2y$10$5tw5RFA5Q57SNOEexPmo.efQEVKiKdG03zI.eJsohIsX1jlvmvcRO', 0, 1, 'o14WCHEYnQJH3SkblPXMFEtQuCEU9x2p67ksW7kGRjWdkwmeqLrOo66KfU8M', '2019-02-24 22:07:11', '2019-05-27 04:18:43'),
(4, 'Admin', 'admin@test.com.bd', NULL, '$2y$10$8OEyKlGl0ZB7odNykeBBc.PoUsYt5dWhpdYcWYyIOomLmx/Kb0Uam', 0, 1, 'Gz74VPALmHOTf8pze2rUX7nQ0ZPC0iwRzqoKFbJ4TfJPqi2Nmel9EAQHENYB', '2019-02-24 22:07:11', '2019-02-24 22:07:11'),
(5, 'Tanvir Morshed', 'tmorshed4@gmail.com', NULL, '$2y$10$8OEyKlGl0ZB7odNykeBBc.PoUsYt5dWhpdYcWYyIOomLmx/Kb0Uam', 0, 1, 'KG4B74aQE6yNk3rhCVPkemBw2ftMFdtmjhtqaDvC9Wqbc9nWfzC2m4UMGVWJ', '2019-03-02 16:27:19', '2019-03-02 16:27:19'),
(6, 'Admin', 'winskit2014@gmail.com', NULL, '$2y$10$0uJ2VQEsBu15D44fGSWgy.OHMeK4E.VXg5T.1eguwIeGLDQDtex2m', 0, 1, 'cTWy2D6tVg3G8vK3TpLYpAzubE5qoNjKKKok06IFQwCBl50BAi410hD74XU8', '2019-03-03 17:47:12', '2019-03-03 17:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2019-03-02 16:27:19', '2019-03-02 16:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `vacations`
--

CREATE TABLE `vacations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `allowed_days` int(11) NOT NULL DEFAULT '0',
  `company_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vacations`
--

INSERT INTO `vacations` (`id`, `name`, `from_date`, `to_date`, `allowed_days`, `company_id`, `created_at`, `updated_at`) VALUES
(4, 'International Mother Language Day', '2019-02-21', '2019-03-10', 18, 6, '2019-02-25 00:21:36', '2019-02-25 00:56:03'),
(5, 'Eid Ul Fitr', '2019-01-01', '2019-01-05', 5, 6, '2019-02-27 08:14:11', '2019-02-27 08:18:52'),
(6, 'রবীন্দ্রনাথ প্রামানিক', '2019-03-05', '2019-03-15', 11, 5, '2019-03-02 21:50:19', '2019-03-02 21:50:19'),
(7, 'sick leave', '2019-03-06', '2019-03-07', 2, 7, '2019-03-04 15:56:39', '2019-03-04 15:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `contact_no`, `address`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Badhon', '01857444087', '41/A Green corner,Green road,Dhaka-1209, 41/A Green corner,Green road,Dhaka-1209', 6, '2019-03-03 17:41:24', '2019-03-03 17:41:24', NULL),
(2, 'Badhon', '01857444087', '41/A Green corner,Green road,Dhaka-1209, 41/A Green corner,Green road,Dhaka-1209', 7, '2019-03-03 17:59:26', '2019-03-03 17:59:26', NULL),
(3, 'abc', '012365471', 'abc@gmail.com', 7, '2019-03-03 18:57:46', '2019-03-03 18:57:46', NULL),
(4, 'Nizam', '01791944248', 'Dhaka', 5, '2019-05-28 06:15:53', '2019-05-28 06:15:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_company_id_foreign` (`company_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_company_id_foreign` (`company_id`);

--
-- Indexes for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bonuses_company_id_foreign` (`company_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_slug_unique` (`slug`);

--
-- Indexes for table `company_transactions`
--
ALTER TABLE `company_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_transactions_from_foreign` (`from`),
  ADD KEY `company_transactions_to_foreign` (`to`),
  ADD KEY `company_transactions_journal_entry_id_from_foreign` (`journal_entry_id_from`),
  ADD KEY `company_transactions_journal_entry_id_to_foreign` (`journal_entry_id_to`);

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_users_company_id_foreign` (`company_id`),
  ADD KEY `company_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `deduction_types`
--
ALTER TABLE `deduction_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deduction_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_company_id_foreign` (`company_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_designation_id_foreign` (`designation_id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

--
-- Indexes for table `employee_annual_leaves`
--
ALTER TABLE `employee_annual_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_annual_leaves_company_id_foreign` (`company_id`);

--
-- Indexes for table `employee_leave_types`
--
ALTER TABLE `employee_leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_leave_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `employee_monthly_leaves`
--
ALTER TABLE `employee_monthly_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_monthly_leaves_company_id_foreign` (`company_id`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_salaries_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_salaries_company_id_foreign` (`company_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_head_id_foreign` (`expense_head_id`),
  ADD KEY `expenses_company_id_foreign` (`company_id`);

--
-- Indexes for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expense_heads_name_unique` (`name`),
  ADD KEY `expense_heads_company_id_foreign` (`company_id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goods_unit_id_foreign` (`unit_id`),
  ADD KEY `goods_company_id_foreign` (`company_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_company_id_foreign` (`company_id`),
  ADD KEY `grades_category_id_foreign` (`category_id`);

--
-- Indexes for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_items_raw_material_id_foreign` (`raw_material_id`),
  ADD KEY `inventory_items_unit_id_foreign` (`unit_id`),
  ADD KEY `inventory_items_company_id_foreign` (`company_id`);

--
-- Indexes for table `journals`
--
ALTER TABLE `journals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journals_journal_id_foreign` (`journal_id`),
  ADD KEY `journals_company_id_foreign` (`company_id`),
  ADD KEY `journals_journal_entry_id_foreign` (`journal_entry_id`);

--
-- Indexes for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `journal_entries_company_id_foreign` (`company_id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_company_id_foreign` (`company_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ledgers_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_leaves`
--
ALTER TABLE `monthly_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monthly_leaves_company_id_foreign` (`company_id`),
  ADD KEY `monthly_leaves_leave_id_foreign` (`leave_id`);

--
-- Indexes for table `monthly_vacations`
--
ALTER TABLE `monthly_vacations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monthly_vacations_vacation_id_foreign` (`vacation_id`),
  ADD KEY `monthly_vacations_company_id_foreign` (`company_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `payment_type_fields`
--
ALTER TABLE `payment_type_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_type_fields_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `payment_type_fields_company_id_foreign` (`company_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `produced_goods`
--
ALTER TABLE `produced_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produced_goods_good_id_foreign` (`good_id`),
  ADD KEY `produced_goods_company_id_foreign` (`company_id`),
  ADD KEY `produced_goods_production_id_foreign` (`production_id`);

--
-- Indexes for table `productions`
--
ALTER TABLE `productions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productions_company_id_foreign` (`company_id`);

--
-- Indexes for table `production_goods`
--
ALTER TABLE `production_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_goods_produced_good_id_foreign` (`produced_good_id`),
  ADD KEY `production_goods_good_id_foreign` (`good_id`),
  ADD KEY `production_goods_company_id_foreign` (`company_id`);

--
-- Indexes for table `production_materials`
--
ALTER TABLE `production_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_materials_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `production_materials_raw_material_id_foreign` (`raw_material_id`),
  ADD KEY `production_materials_unit_id_foreign` (`unit_id`),
  ADD KEY `production_materials_inventory_item_id_foreign` (`inventory_item_id`),
  ADD KEY `production_materials_production_id_foreign` (`production_id`),
  ADD KEY `production_materials_company_id_foreign` (`company_id`),
  ADD KEY `production_materials_purchase_order_detail_id_foreign` (`purchase_order_detail_id`);

--
-- Indexes for table `production_products`
--
ALTER TABLE `production_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `production_products_good_id_foreign` (`good_id`),
  ADD KEY `production_products_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders_vendor_id_foreign` (`vendor_id`),
  ADD KEY `purchase_orders_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_details_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_order_details_raw_material_id_foreign` (`raw_material_id`),
  ADD KEY `purchase_order_details_unit_id_foreign` (`unit_id`),
  ADD KEY `purchase_order_details_company_id_foreign` (`company_id`),
  ADD KEY `purchase_order_details_inventory_item_id_foreign` (`inventory_item_id`);

--
-- Indexes for table `purchase_order_detail_logs`
--
ALTER TABLE `purchase_order_detail_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_order_detail_logs_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_order_detail_logs_company_id_foreign` (`company_id`),
  ADD KEY `purchase_order_detail_logs_production_id_foreign` (`production_id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_payments_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchase_payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `purchase_payments_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchase_payment_fields`
--
ALTER TABLE `purchase_payment_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_payment_fields_payment_type_field_id_foreign` (`payment_type_field_id`),
  ADD KEY `purchase_payment_fields_purchase_payment_id_foreign` (`purchase_payment_id`),
  ADD KEY `purchase_payment_fields_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchase_sales_chalan_details`
--
ALTER TABLE `purchase_sales_chalan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_sales_chalan_details_chalan_id_foreign` (`chalan_id`),
  ADD KEY `purchase_sales_chalan_details_purchase_order_detail_id_foreign` (`purchase_order_detail_id`),
  ADD KEY `purchase_sales_chalan_details_inventory_item_id_foreign` (`inventory_item_id`),
  ADD KEY `purchase_sales_chalan_details_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchase_sales_details`
--
ALTER TABLE `purchase_sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_sales_details_sales_order_id_foreign` (`sales_order_id`),
  ADD KEY `purchase_sales_details_inventory_item_id_foreign` (`inventory_item_id`),
  ADD KEY `purchase_sales_details_unit_id_foreign` (`unit_id`),
  ADD KEY `purchase_sales_details_company_id_foreign` (`company_id`),
  ADD KEY `purchase_sales_details_po_detail_id_foreign` (`po_detail_id`);

--
-- Indexes for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raw_materials_unit_id_foreign` (`unit_id`),
  ADD KEY `raw_materials_company_id_foreign` (`company_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_company_id_foreign` (`company_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `rosters`
--
ALTER TABLE `rosters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rosters_company_id_foreign` (`company_id`);

--
-- Indexes for table `sales_chalans`
--
ALTER TABLE `sales_chalans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_chalans_chalan_no_unique` (`chalan_no`),
  ADD UNIQUE KEY `sales_chalans_chalan_no_manual_unique` (`chalan_no_manual`),
  ADD KEY `sales_chalans_sales_order_id_foreign` (`sales_order_id`),
  ADD KEY `sales_chalans_company_id_foreign` (`company_id`);

--
-- Indexes for table `sales_chalan_details`
--
ALTER TABLE `sales_chalan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_chalan_details_chalan_id_foreign` (`chalan_id`),
  ADD KEY `sales_chalan_details_sales_order_details_id_foreign` (`sales_order_details_id`),
  ADD KEY `sales_chalan_details_good_id_foreign` (`good_id`),
  ADD KEY `sales_chalan_details_company_id_foreign` (`company_id`);

--
-- Indexes for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_orders_company_id_foreign` (`company_id`);

--
-- Indexes for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_order_details_sales_order_id_foreign` (`sales_order_id`),
  ADD KEY `sales_order_details_good_id_foreign` (`good_id`),
  ADD KEY `sales_order_details_unit_id_foreign` (`unit_id`),
  ADD KEY `sales_order_details_company_id_foreign` (`company_id`);

--
-- Indexes for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payments_sales_order_id_foreign` (`sales_order_id`),
  ADD KEY `sales_payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `sales_payments_company_id_foreign` (`company_id`);

--
-- Indexes for table `sales_payment_fields`
--
ALTER TABLE `sales_payment_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payment_fields_payment_type_field_id_foreign` (`payment_type_field_id`),
  ADD KEY `sales_payment_fields_sales_payment_id_foreign` (`sales_payment_id`),
  ADD KEY `sales_payment_fields_company_id_foreign` (`company_id`);

--
-- Indexes for table `trial_balances`
--
ALTER TABLE `trial_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trial_balances_company_id_foreign` (`company_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`);

--
-- Indexes for table `vacations`
--
ALTER TABLE `vacations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vacations_company_id_foreign` (`company_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendors_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bonuses`
--
ALTER TABLE `bonuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_transactions`
--
ALTER TABLE `company_transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `deduction_types`
--
ALTER TABLE `deduction_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_annual_leaves`
--
ALTER TABLE `employee_annual_leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee_leave_types`
--
ALTER TABLE `employee_leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_monthly_leaves`
--
ALTER TABLE `employee_monthly_leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_heads`
--
ALTER TABLE `expense_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory_items`
--
ALTER TABLE `inventory_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `journals`
--
ALTER TABLE `journals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `journal_entries`
--
ALTER TABLE `journal_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `monthly_leaves`
--
ALTER TABLE `monthly_leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `monthly_vacations`
--
ALTER TABLE `monthly_vacations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_type_fields`
--
ALTER TABLE `payment_type_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `produced_goods`
--
ALTER TABLE `produced_goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productions`
--
ALTER TABLE `productions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_goods`
--
ALTER TABLE `production_goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_materials`
--
ALTER TABLE `production_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production_products`
--
ALTER TABLE `production_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order_detail_logs`
--
ALTER TABLE `purchase_order_detail_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_payment_fields`
--
ALTER TABLE `purchase_payment_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_sales_chalan_details`
--
ALTER TABLE `purchase_sales_chalan_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_sales_details`
--
ALTER TABLE `purchase_sales_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raw_materials`
--
ALTER TABLE `raw_materials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `rosters`
--
ALTER TABLE `rosters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_chalans`
--
ALTER TABLE `sales_chalans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_chalan_details`
--
ALTER TABLE `sales_chalan_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_orders`
--
ALTER TABLE `sales_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_payment_fields`
--
ALTER TABLE `sales_payment_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trial_balances`
--
ALTER TABLE `trial_balances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vacations`
--
ALTER TABLE `vacations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `bonuses`
--
ALTER TABLE `bonuses`
  ADD CONSTRAINT `bonuses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `company_transactions`
--
ALTER TABLE `company_transactions`
  ADD CONSTRAINT `company_transactions_from_foreign` FOREIGN KEY (`from`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_transactions_journal_entry_id_from_foreign` FOREIGN KEY (`journal_entry_id_from`) REFERENCES `journal_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_transactions_journal_entry_id_to_foreign` FOREIGN KEY (`journal_entry_id_to`) REFERENCES `journal_entries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `company_transactions_to_foreign` FOREIGN KEY (`to`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_users`
--
ALTER TABLE `company_users`
  ADD CONSTRAINT `company_users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `company_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `deduction_types`
--
ALTER TABLE `deduction_types`
  ADD CONSTRAINT `deduction_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`);

--
-- Constraints for table `employee_annual_leaves`
--
ALTER TABLE `employee_annual_leaves`
  ADD CONSTRAINT `employee_annual_leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `employee_leave_types`
--
ALTER TABLE `employee_leave_types`
  ADD CONSTRAINT `employee_leave_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `employee_monthly_leaves`
--
ALTER TABLE `employee_monthly_leaves`
  ADD CONSTRAINT `employee_monthly_leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `employee_salaries_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `expenses_expense_head_id_foreign` FOREIGN KEY (`expense_head_id`) REFERENCES `expense_heads` (`id`);

--
-- Constraints for table `expense_heads`
--
ALTER TABLE `expense_heads`
  ADD CONSTRAINT `expense_heads_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `goods_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grades_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_items`
--
ALTER TABLE `inventory_items`
  ADD CONSTRAINT `inventory_items_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `inventory_items_raw_material_id_foreign` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `inventory_items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `journals`
--
ALTER TABLE `journals`
  ADD CONSTRAINT `journals_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `journals_journal_entry_id_foreign` FOREIGN KEY (`journal_entry_id`) REFERENCES `journal_entries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `journal_entries`
--
ALTER TABLE `journal_entries`
  ADD CONSTRAINT `journal_entries_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD CONSTRAINT `ledgers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `monthly_leaves`
--
ALTER TABLE `monthly_leaves`
  ADD CONSTRAINT `monthly_leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `monthly_leaves_leave_id_foreign` FOREIGN KEY (`leave_id`) REFERENCES `leaves` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `monthly_vacations`
--
ALTER TABLE `monthly_vacations`
  ADD CONSTRAINT `monthly_vacations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `monthly_vacations_vacation_id_foreign` FOREIGN KEY (`vacation_id`) REFERENCES `vacations` (`id`);

--
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `payment_type_fields`
--
ALTER TABLE `payment_type_fields`
  ADD CONSTRAINT `payment_type_fields_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `payment_type_fields_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`);

--
-- Constraints for table `produced_goods`
--
ALTER TABLE `produced_goods`
  ADD CONSTRAINT `produced_goods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `produced_goods_good_id_foreign` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`),
  ADD CONSTRAINT `produced_goods_production_id_foreign` FOREIGN KEY (`production_id`) REFERENCES `productions` (`id`);

--
-- Constraints for table `productions`
--
ALTER TABLE `productions`
  ADD CONSTRAINT `productions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `production_goods`
--
ALTER TABLE `production_goods`
  ADD CONSTRAINT `production_goods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `production_goods_good_id_foreign` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`),
  ADD CONSTRAINT `production_goods_produced_good_id_foreign` FOREIGN KEY (`produced_good_id`) REFERENCES `produced_goods` (`id`);

--
-- Constraints for table `production_materials`
--
ALTER TABLE `production_materials`
  ADD CONSTRAINT `production_materials_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `production_materials_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `production_materials_production_id_foreign` FOREIGN KEY (`production_id`) REFERENCES `productions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `production_materials_purchase_order_detail_id_foreign` FOREIGN KEY (`purchase_order_detail_id`) REFERENCES `purchase_order_details` (`id`),
  ADD CONSTRAINT `production_materials_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `production_materials_raw_material_id_foreign` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `production_materials_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `production_products`
--
ALTER TABLE `production_products`
  ADD CONSTRAINT `production_products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `production_products_good_id_foreign` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_orders_vendor_id_foreign` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `purchase_order_details`
--
ALTER TABLE `purchase_order_details`
  ADD CONSTRAINT `purchase_order_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_order_details_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`),
  ADD CONSTRAINT `purchase_order_details_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_order_details_raw_material_id_foreign` FOREIGN KEY (`raw_material_id`) REFERENCES `raw_materials` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_order_details_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_order_detail_logs`
--
ALTER TABLE `purchase_order_detail_logs`
  ADD CONSTRAINT `purchase_order_detail_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_order_detail_logs_production_id_foreign` FOREIGN KEY (`production_id`) REFERENCES `productions` (`id`),
  ADD CONSTRAINT `purchase_order_detail_logs_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD CONSTRAINT `purchase_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_payments_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_payment_fields`
--
ALTER TABLE `purchase_payment_fields`
  ADD CONSTRAINT `purchase_payment_fields_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_payment_fields_payment_type_field_id_foreign` FOREIGN KEY (`payment_type_field_id`) REFERENCES `payment_type_fields` (`id`),
  ADD CONSTRAINT `purchase_payment_fields_purchase_payment_id_foreign` FOREIGN KEY (`purchase_payment_id`) REFERENCES `purchase_payments` (`id`);

--
-- Constraints for table `purchase_sales_chalan_details`
--
ALTER TABLE `purchase_sales_chalan_details`
  ADD CONSTRAINT `purchase_sales_chalan_details_chalan_id_foreign` FOREIGN KEY (`chalan_id`) REFERENCES `sales_chalans` (`id`),
  ADD CONSTRAINT `purchase_sales_chalan_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_sales_chalan_details_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`),
  ADD CONSTRAINT `purchase_sales_chalan_details_purchase_order_detail_id_foreign` FOREIGN KEY (`purchase_order_detail_id`) REFERENCES `purchase_order_details` (`id`);

--
-- Constraints for table `purchase_sales_details`
--
ALTER TABLE `purchase_sales_details`
  ADD CONSTRAINT `purchase_sales_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `purchase_sales_details_inventory_item_id_foreign` FOREIGN KEY (`inventory_item_id`) REFERENCES `inventory_items` (`id`),
  ADD CONSTRAINT `purchase_sales_details_po_detail_id_foreign` FOREIGN KEY (`po_detail_id`) REFERENCES `purchase_order_details` (`id`),
  ADD CONSTRAINT `purchase_sales_details_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`),
  ADD CONSTRAINT `purchase_sales_details_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `raw_materials`
--
ALTER TABLE `raw_materials`
  ADD CONSTRAINT `raw_materials_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `raw_materials_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rosters`
--
ALTER TABLE `rosters`
  ADD CONSTRAINT `rosters_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `sales_chalans`
--
ALTER TABLE `sales_chalans`
  ADD CONSTRAINT `sales_chalans_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sales_chalans_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`);

--
-- Constraints for table `sales_chalan_details`
--
ALTER TABLE `sales_chalan_details`
  ADD CONSTRAINT `sales_chalan_details_chalan_id_foreign` FOREIGN KEY (`chalan_id`) REFERENCES `sales_chalans` (`id`),
  ADD CONSTRAINT `sales_chalan_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sales_chalan_details_good_id_foreign` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`),
  ADD CONSTRAINT `sales_chalan_details_sales_order_details_id_foreign` FOREIGN KEY (`sales_order_details_id`) REFERENCES `sales_order_details` (`id`);

--
-- Constraints for table `sales_orders`
--
ALTER TABLE `sales_orders`
  ADD CONSTRAINT `sales_orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `sales_order_details`
--
ALTER TABLE `sales_order_details`
  ADD CONSTRAINT `sales_order_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sales_order_details_good_id_foreign` FOREIGN KEY (`good_id`) REFERENCES `goods` (`id`),
  ADD CONSTRAINT `sales_order_details_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_order_details_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD CONSTRAINT `sales_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sales_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_payments_sales_order_id_foreign` FOREIGN KEY (`sales_order_id`) REFERENCES `sales_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payment_fields`
--
ALTER TABLE `sales_payment_fields`
  ADD CONSTRAINT `sales_payment_fields_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `sales_payment_fields_payment_type_field_id_foreign` FOREIGN KEY (`payment_type_field_id`) REFERENCES `payment_type_fields` (`id`),
  ADD CONSTRAINT `sales_payment_fields_sales_payment_id_foreign` FOREIGN KEY (`sales_payment_id`) REFERENCES `sales_payments` (`id`);

--
-- Constraints for table `trial_balances`
--
ALTER TABLE `trial_balances`
  ADD CONSTRAINT `trial_balances_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vacations`
--
ALTER TABLE `vacations`
  ADD CONSTRAINT `vacations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Constraints for table `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
