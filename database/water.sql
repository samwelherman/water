-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2022 at 03:21 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `water`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `activity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loading_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `module_id`, `module`, `date`, `activity`, `notes`, `loading_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '10', 'Cargo', '2022-06-07', 'Confirm Collection', 'in good condition', 1, 57, '2022-06-06 09:41:23', '2022-06-06 09:41:23'),
(2, '1', 'Cargo', '2022-06-06', 'Confirm Collection', 'in good condition', 1, 57, '2022-06-06 16:39:07', '2022-06-06 16:39:07'),
(3, '1', 'Cargo', '2022-06-06', 'Confirm Collection', 'in good condition', 2, 57, '2022-06-06 16:39:53', '2022-06-06 16:39:53'),
(4, '1', 'Cargo', '2022-06-06', 'Confirm Loading', 'ftftu', 1, 57, '2022-06-06 16:41:56', '2022-06-06 16:41:56'),
(5, '1', 'Cargo', '2022-06-06', 'Confirm Loading', 'dhf', 2, 57, '2022-06-06 16:42:26', '2022-06-06 16:42:26'),
(6, '1', 'Cargo', '2022-06-08', 'Confirm Offloading', 'HHJ', 1, 57, '2022-06-06 16:43:38', '2022-06-06 16:43:38'),
(7, '1', 'Cargo', '2022-06-08', 'Confirm Delivery', 'in good condition', 1, 57, '2022-06-06 16:43:55', '2022-06-06 16:43:55'),
(8, '1', 'Cargo', '2022-06-06', 'Confirm Offloading', 'ijup', 2, 57, '2022-06-06 16:44:50', '2022-06-06 16:44:50'),
(9, '1', 'Cargo', '2022-06-08', 'Confirm Delivery', 'ghg', 2, 57, '2022-06-06 16:45:23', '2022-06-06 16:45:23'),
(10, '1', 'Cargo', '2022-06-08', 'Confirm Collection', 'ttt', 3, 57, '2022-06-08 19:00:43', '2022-06-08 19:00:43'),
(11, '1', 'Cargo', '2022-06-08', 'Confirm Collection', 'ttt', 4, 57, '2022-06-08 19:00:43', '2022-06-08 19:00:43'),
(12, '1', 'Cargo', '2022-06-09', 'Confirm Collection', '-', 1, 57, '2022-06-09 17:17:59', '2022-06-09 17:17:59'),
(13, '1', 'Cargo', '2022-06-09', 'Confirm Collection', '-', 2, 57, '2022-06-09 17:20:36', '2022-06-09 17:20:36'),
(14, '1', 'Cargo', '2022-06-09', 'Confirm Loading', '-', 1, 57, '2022-06-09 17:24:11', '2022-06-09 17:24:11'),
(15, '1', 'Cargo', '2022-06-09', 'Confirm Loading', '-', 2, 57, '2022-06-09 17:24:37', '2022-06-09 17:24:37'),
(16, '1', 'Cargo', '2022-06-09', 'Confirm Offloading', '-', 1, 57, '2022-06-09 17:25:32', '2022-06-09 17:25:32'),
(17, '1', 'Cargo', '2022-06-09', 'Confirm Delivery', '-', 1, 57, '2022-06-09 17:25:49', '2022-06-09 17:25:49'),
(18, '1', 'Cargo', '2022-06-09', 'Confirm Offloading', '-', 2, 57, '2022-06-09 17:26:15', '2022-06-09 17:26:15'),
(19, '1', 'Cargo', '2022-06-09', 'Confirm Delivery', '-', 2, 57, '2022-06-09 17:27:56', '2022-06-09 17:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `assign_center`
--

CREATE TABLE `assign_center` (
  `id` int(11) NOT NULL,
  `driver_id` int(100) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `reference` varchar(200) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=pending,1=approved,2=completed',
  `reversed` int(200) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(20) DEFAULT 'Assign Driver',
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assign_driver`
--

CREATE TABLE `assign_driver` (
  `id` int(11) NOT NULL,
  `driver_id` int(100) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `reference` varchar(200) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=pending,1=approved,2=completed',
  `reversed` int(200) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(20) DEFAULT 'Assign Driver',
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `routing_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_reconciliations`
--

CREATE TABLE `bank_reconciliations` (
  `id` int(10) UNSIGNED NOT NULL,
  `transaction_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` decimal(20,2) DEFAULT NULL,
  `credit` decimal(20,2) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `currency_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT '''''''TZS''''''',
  `payment_id` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `basic_details`
--

CREATE TABLE `basic_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` date NOT NULL,
  `birth_date` date NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_of_materials`
--

CREATE TABLE `bill_of_materials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufactured_item` int(11) NOT NULL,
  `work_centre` int(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bill_of_material_inventory`
--

CREATE TABLE `bill_of_material_inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_of_material_id` int(20) NOT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(20) NOT NULL,
  `work_centre` int(20) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `total_cost` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `block1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cargo_collection`
--

CREATE TABLE `cargo_collection` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pacel_id` int(100) NOT NULL,
  `pacel_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pacel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `receiver_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_id` int(100) NOT NULL,
  `start_location` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_location` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_region_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_region_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(20,2) NOT NULL,
  `due_weight` decimal(20,2) NOT NULL,
  `quantity` decimal(20,2) DEFAULT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cargo_collection`
--

INSERT INTO `cargo_collection` (`id`, `pacel_id`, `pacel_number`, `pacel_name`, `owner_id`, `receiver_name`, `route_id`, `start_location`, `end_location`, `from_region_id`, `to_region_id`, `item_id`, `weight`, `due_weight`, `quantity`, `amount`, `status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'PCL-1', 'Cements Transport Dangote', 1, '-', 3, 'Dar es Salaam', 'Mtwara', '2', '15', '1', '60000.00', '30000.00', '1.00', '7451711.80', '4', 57, '2022-06-09 17:07:05', '2022-06-09 17:27:56'),
(2, 1, 'PCL-1', 'Cements Transport Dangote', 1, '-', 2, 'Dodoma', 'Mtwara', '3', '15', '2', '60000.00', '30000.00', '1.00', '7451711.80', '4', 57, '2022-06-09 17:07:05', '2022-06-09 17:27:56'),
(3, 1, 'PCL-1', 'Cements Transport Dangote', 1, '-', 3, 'Dar es Salaam', 'Mtwara', '', '', '1', '60000.00', '60000.00', '1.00', '7451711.80', '2', 57, '2022-06-09 17:31:59', '2022-06-09 17:31:59'),
(4, 1, 'PCL-1', 'Cements Transport Dangote', 1, '-', 2, 'Dodoma', 'Mtwara', '', '', '2', '60000.00', '60000.00', '1.00', '7451711.80', '2', 57, '2022-06-09 17:31:59', '2022-06-09 17:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `cargo_loading`
--

CREATE TABLE `cargo_loading` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pacel_id` int(100) NOT NULL,
  `pacel_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pacel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `receiver_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_location` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_id` int(100) NOT NULL,
  `end_location` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `total_weight` int(100) DEFAULT NULL,
  `amount` decimal(20,2) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_id` int(200) NOT NULL,
  `driver_id` int(200) NOT NULL,
  `collection_date` date NOT NULL,
  `fuel` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cargo_loading`
--

INSERT INTO `cargo_loading` (`id`, `pacel_id`, `pacel_number`, `pacel_name`, `owner_id`, `receiver_name`, `start_location`, `route_id`, `end_location`, `weight`, `total_weight`, `amount`, `status`, `type`, `truck_id`, `driver_id`, `collection_date`, `fuel`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'PCL-1', 'Cements Transport Dangote', 1, '-', 'Dar es Salaam', 3, 'Mtwara', 30000, 60000, '7451711.80', '6', 'owned', 1, 2, '2022-06-09', '1', 57, '2022-06-09 17:17:59', '2022-06-09 17:25:49'),
(2, 1, 'PCL-1', 'Cements Transport Dangote', 1, '-', 'Dodoma', 2, 'Mtwara', 30000, 60000, '7451711.80', '6', 'owned', 2, 3, '2022-06-09', '1', 57, '2022-06-09 17:20:36', '2022-06-09 17:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chart_of_accounts`
--

CREATE TABLE `chart_of_accounts` (
  `chart_id` int(11) NOT NULL,
  `id` int(11) NOT NULL DEFAULT 0,
  `account_codes` int(200) NOT NULL,
  `account_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `gl_code` int(200) NOT NULL,
  `account_type` varchar(500) NOT NULL,
  `allow_manual` tinyint(4) NOT NULL DEFAULT 0,
  `active` varchar(200) NOT NULL,
  `added_by` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chart_of_accounts`
--

INSERT INTO `chart_of_accounts` (`chart_id`, `id`, `account_codes`, `account_name`, `name`, `gl_code`, `account_type`, `allow_manual`, `active`, `added_by`) VALUES
(476, 1, 11101, 'Receivable and Prepayments', 'Receivable and Prepayments', 11101, 'Assets', 0, 'Active', 57),
(477, 2, 11201, 'Petty Cash', 'Petty Cash', 11201, 'Assets', 0, 'Active', 57),
(478, 3, 12101, 'Furniture and Office Equipment', 'Furniture and Office Equipment', 12101, 'Assets', 0, 'Active', 57),
(479, 4, 12102, 'Land and Building', 'Land and Building', 12102, 'Assets', 0, 'Active', 57),
(480, 5, 21101, 'Deffered Tax', 'Deffered Tax', 21101, 'Liability', 0, 'Active', 57),
(481, 6, 31101, 'Retained Surplus/(Deficity)', 'Retained Surplus/(Deficity)', 31101, 'Equity', 0, 'Active', 57),
(482, 7, 31102, 'Annual Surplus/Deficity', 'Annual Surplus/Deficity', 31102, 'Equity', 0, 'Active', 57),
(483, 8, 41301, 'Salaries And Wages', 'Salaries And Wages', 41301, 'Expense', 0, 'Active', 57),
(484, 9, 41302, 'NSSF', 'NSSF', 41302, 'Expense', 0, 'Active', 57),
(485, 10, 41201, 'Medical Insurance', 'Medical Insurance', 41201, 'Expense', 0, 'Active', 57),
(486, 11, 21102, 'Payables', 'Payables', 21102, 'Liability', 0, 'Active', 57),
(487, 12, 51101, 'Parcel', 'Parcel', 51101, 'Income', 0, 'Active', 57),
(488, 13, 41401, 'Fuel', 'Fuel', 41401, 'Expense', 0, 'Active', 57),
(489, 14, 41402, 'Tire', 'Tire', 41402, 'Expense', 0, 'Active', 57),
(490, 15, 41403, 'Inventory', 'Inventory', 41403, 'Expense', 0, 'Active', 57),
(491, 16, 51102, 'VAT IN', 'VAT IN', 51102, 'Income', 0, 'Active', 57),
(492, 17, 51103, 'VAT OUT', 'VAT OUT', 51103, 'Income', 0, 'Active', 57),
(493, 18, 11202, 'Cash Account', 'Cash Account', 11202, 'Assets', 0, 'Active', 57),
(494, 19, 41404, 'Truck Maintenance and Service', 'Truck Maintenance and Service', 41404, 'Expense', 0, 'Active', 57),
(495, 20, 41202, 'Fuel Expenses', 'Fuel Expenses', 41202, 'Expense', 0, 'Active', 57),
(496, 21, 41203, 'Maintenance and Repair', 'Maintenance and Repair', 41203, 'Expense', 0, 'Active', 57),
(497, 22, 41405, 'Licence', 'Licence', 41405, 'Expense', 0, 'Active', 57),
(498, 23, 41406, 'Insurance', 'Insurance', 41406, 'Expense', 0, 'Active', 57),
(499, 24, 41407, 'Mileage', 'Mileage', 41407, 'Expense', 0, 'Active', 57),
(500, 25, 41204, 'Training', 'Training', 41204, 'Expense', 0, 'Active', 57),
(501, 26, 41303, 'PAYE', 'PAYE', 41303, 'Expense', 0, 'Active', 57),
(502, 27, 41304, 'NSSF (Employer Contribution)', 'NSSF (Employer Contribution)', 41304, 'Expense', 0, 'Active', 57),
(503, 28, 41205, 'NSSF (Employer Contribution', 'NSSF (Employer Contribution', 41205, 'Expense', 0, 'Active', 57),
(504, 29, 41206, 'WCF contribution', 'WCF contribution', 41206, 'Expense', 0, 'Active', 57),
(505, 30, 41207, 'NHIF (Heath Insurance Expense)', 'NHIF (Heath Insurance Expense)', 41207, 'Expense', 0, 'Active', 57),
(506, 31, 41305, 'NHIF', 'NHIF', 41305, 'Expense', 0, 'Active', 57),
(507, 32, 41306, 'Advance Salary', 'Advance Salary', 41306, 'Expense', 0, 'Active', 57),
(508, 33, 41307, 'Employee Loan', 'Employee Loan', 41307, 'Expense', 0, 'Active', 57),
(509, 34, 41308, 'Overtime', 'Overtime', 41308, 'Expense', 0, 'Active', 57),
(510, 35, 41309, 'Employee Award', 'Employee Award', 41309, 'Expense', 0, 'Active', 57),
(511, 36, 12103, 'Truck (Horse&Trailer)-DAF', 'Truck (Horse&Trailer)-DAF', 12103, 'Assets', 0, 'Active', 57),
(512, 37, 12104, 'Truck (Horse&Trailer)-FAW', 'Truck (Horse&Trailer)-FAW', 12104, 'Assets', 0, 'Active', 57),
(513, 38, 12105, 'Vehicle', 'Vehicle', 12105, 'Assets', 0, 'Active', 57),
(514, 39, 12106, 'Motor Cycle', 'Motor Cycle', 12106, 'Assets', 0, 'Active', 57);

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `user_id`, `name`, `address`, `phone`, `email`, `TIN`, `created_at`, `updated_at`) VALUES
(1, '57', 'Dangote', 'Mtwara', '-', 'info@dangote.com', '106820805', '2022-06-06 16:08:43', '2022-06-06 16:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `collection_centers`
--

CREATE TABLE `collection_centers` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amcos` varchar(100) DEFAULT NULL,
  `added_by` int(100) NOT NULL,
  `district_id` int(100) DEFAULT NULL,
  `operator_id` int(200) NOT NULL,
  `quantity` decimal(20,2) DEFAULT 0.00,
  `head` varchar(200) NOT NULL,
  `account_codes` varchar(200) DEFAULT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collection_centers`
--

INSERT INTO `collection_centers` (`id`, `name`, `amcos`, `added_by`, `district_id`, `operator_id`, `quantity`, `head`, `account_codes`, `updated_at`, `created_at`) VALUES
(1, 'BULYANG\'OMBE', ' BULYANG\'OMBE AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 18:46:51.000000', '2022-06-03 17:11:19.000000'),
(2, 'CHABUTWA', ' CHABUTWA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(3, 'KALANGARE', ' DOHOLEBALIMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(4, 'GANYAWA', ' GANYAWA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(5, 'HINDISHI', ' HINDISHI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(6, 'IBOLOGERO', ' IBOROGELO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(7, 'IBUTA', ' IBUTABALIMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(8, 'KININGILA', ' IDOSELO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(9, 'IGOGO', ' IGOGO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(10, 'IGUNGA', ' IGUNGABALIMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(11, 'MWAMASHIGA', ' IGUNGUMKILO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(12, 'IYOGELO', ' ILAMBAKUKI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(13, 'IPEMBE', ' ILEMABUHABI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(14, 'IMALILO', ' IMALILO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(15, 'BULENYA', ' IPANDIKILO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(16, 'IBOLE', ' IPEJAUPINA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(17, 'MWABARATURU', ' IPILILO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(18, 'KINUNGU', ' IPONYABUHABI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(19, 'NGWANZUGI', ' IPONYAMAKOYE AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(20, 'MONDU', ' ISABILOBALIMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(21, 'ISAKAMALIWA', ' ISAKAMALIWA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(22, 'ISUGILO', ' ISUGILO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(23, 'MWAMAPULI', ' ITINDIKABASAMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(24, 'MAKOMELO', ' ITOGELO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(25, 'IGURUBI', ' JILABELA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(26, 'MWAMASHIMBA', ' JILELABALIMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(27, 'ITUNDURU', ' JILELAMHINA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(28, 'CHIBISO', ' KARIBUBALIMI CHIBISO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(29, 'CHOMA', ' KARIBUBALIMI CHOMA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(30, 'MWAJILUNGA', ' LIMAGAUSABE AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(31, 'LUNUKILO', ' LINUKILO AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(32, 'MWABAKIMA', ' MWABAKIMA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(33, 'MWAKABUTA', ' MWAKABUTA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(34, 'MWAKWANGU', ' MWADUNDU AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(35, 'MWAGALA', ' MWAGALABALIMI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(36, 'MWANYAGULA', ' MWANYAGULA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(37, 'MWAZIZI', ' MWAZIZI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(38, 'MWISI', ' MWISI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(39, 'NGUVU MOJA', ' NGUVU MOJA AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(40, 'MTUNGURU', ' NGUZUJISE AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(41, 'JOGOHYA', 'N\'GWABALIMI AMCOS', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(42, 'MBUTU', 'N\'GWAJOJABABI (MBUTU)AMCOS', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(43, 'N\'GWASABI', ' N\'GWASABI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(44, 'MIGONGWA', ' NZUGIBALIMI(MIGONGWA) AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(45, 'KAGONGWA', ' SABO IGEMBE AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(46, 'IMALANGUZU', 'SAMAGIJINONI AMCOS', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(47, 'SEGAGIBALIMI', 'SEGAGIBALIMI(IPUMBULYA) AMCOS', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(48, 'MWASHIKU', ' SHOJABALIMI \'\'A\'\' AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(49, 'BUCHENJEGELE', ' SHOJABALIMI \'\'B\'\' AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(50, 'KIDALU', ' SONGAMBELE AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(51, 'SUNGWIZI', ' SUNGWIZI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(52, 'BUKAMA', ' YEGAGIHANGI AMCOS ', 50, 130, 1, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(53, 'BELEDI AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(54, 'BUKWABI AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(55, 'BULEKELA - DODOMA', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(56, 'BULEKELA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(57, 'BULUBA - ISOSO', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(58, 'BULUBA MHUNZE', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:19.000000', '2022-06-03 17:11:19.000000'),
(59, 'BULUBA- MWASIGA ', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(60, 'BUTALIJALALA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(61, 'BUZINZA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(62, 'BUZINZA -MWAJIDALALA', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(63, 'GIMAGI AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(64, 'IDUSHI AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(65, 'IGAGA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(66, 'IGUMILAMAWE AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(67, 'IKOMAGULILO  AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(68, 'IKOMAGULILO -MWATUJU', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(69, 'IMALABUPINA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(70, 'IPANDIKILO - MWANDU', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(71, 'IPANDIKILO AMCOS ', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(72, 'IPEJA AMCOS ', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(73, 'ISABILO AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(74, 'ISAGALA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(75, 'ITOBANILO AMCOS ', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(76, 'IYOGELO AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(77, 'KISHAPU AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(78, 'LUBAGA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(79, 'LWAGALALO AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(80, 'MALWILO AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(81, 'MANGU AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(82, 'MASANGA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(83, 'MIHAMA - LAGANA', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(84, 'MIHAMA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(85, 'ITOBANILO MIGUNGA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(86, 'MWAKIPOYA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(87, 'MWALATA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(88, 'MWAMADULU AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(89, 'MWAMALASA - MWANDOMA', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(90, 'MWAMALASA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(91, 'MWAMANOTA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(92, 'MWAMASHELE AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(93, 'MWAMASHIMBA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(94, 'MWATAGA - MWANULU', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(95, 'MWATAGA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(96, 'NGEME AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(97, 'NGOFILA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(98, 'NG\'WANGALANGA AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(99, 'RAHAYABALIMI AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(100, 'SANJO AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(101, 'WIMATE AMCOS', '', 50, 117, 2, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(102, ' BUBIKI AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(103, ' BUGORO AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(104, ' BULIMA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(105, ' BUNAMBIYU AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(106, ' BUSANGWA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(107, ' BUTUYU AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(108, ' IDUKILO AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(109, ' IHUMUJA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(110, ' ITONGOITALE AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(111, ' IZUNYA BUGANIKA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(112, ' MIDU-MIPA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(113, ' MUGUDA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(114, ' MWAJIGINYA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(115, ' MWAMALA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(116, ' MWAMISHONI AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(117, ' MWANENDELE MWANIMA ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(118, ' NYASAMBA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(119, ' SEKE/IDIDI AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(120, ' SOLAKO-SESEKO AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(121, ' WIKA KABILA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(122, ' MWASUBI ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(123, ' MWASHINOGHELA ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(124, ' NYENZE AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(125, ' NGUNGA AMCOS ', '', 50, 117, 3, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(126, ' BAHEBE (MWAKIDIGA) AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(127, ' BUDEKWA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(128, ' BUGARAMA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(129, ' BUHUNGUKILA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(130, ' BUKANGILIJA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(131, ' BUMALA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(132, ' BUSHITALA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(133, ' DODOMA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(134, ' GULA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(135, ' IGUMANGOBO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(136, ' IGUNYA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(137, ' IKULILO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(138, ' ISABILO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(139, ' ISAPA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(140, ' ISULILO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(141, ' ITOBANILO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(142, ' IWELIMO AMCOS  ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(143, ' JIJA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(144, ' JILAGO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(145, ' KADOTO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(146, ' KIDABU AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(147, ' KIDAGANDA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(148, ' KILOLELI AMCOS  ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(149, ' KIZUNGU AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(150, ' LALAGO AMCOS  ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(151, ' MAKUTANO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(152, ' MANDELA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(153, ' MASANWA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(154, ' MASELA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(155, ' MBARAGANE AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(156, ' MWABADIMI AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(157, ' MWABAGALU AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(158, ' MWABARATURU AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(159, ' MWABOMBA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(160, ' MWAMASHINDIKE AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(161, ' MWANG\'ANDA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(162, ' MWANHEGELE AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(163, ' MWASAYI AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(164, ' MWATUMBE AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(165, ' SENG\'WA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(166, ' SHISHIYU AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(167, ' SOMANDA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(168, ' WIGELEKELO AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(169, ' WITAMHILYA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(170, ' ZEBEYA AMCOS ', '', 50, 122, 4, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(171, 'BUSANGI AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(172, 'BUYUBI AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(173, 'DUGUYA AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(174, 'HINDUKI AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(175, 'ILAMATA /IWELIMO AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(176, 'ISAGENG\'HE AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(177, 'IYOGELO AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(178, 'KIDEMA AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(179, 'KINAMWIGULU AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(180, 'KULIMI AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(181, 'KUMALIJA AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(182, 'MALITA AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(183, 'MWABAYANDA (S)', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(184, 'MWABAYANDA AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(185, 'MWADILA AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(186, 'MWAMANENGE AMCOS', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(187, ' MWAMIHANZA AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(188, ' MWANG\'HOLO AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(189, ' MWANGHONOLI AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(190, ' MWASITA AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(191, ' NG\'HAYA AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(192, ' NG\'OMA (MWASHEGESHA) ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(193, ' NGULINGULI AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(194, ' NYASHIMBA (M) AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(195, ' SOLA AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(196, ' SULU AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(197, ' ZANZUI AMCOS ', '', 50, 122, 5, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(198, ' IKUNGULYANKOMA AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(199, ' ILAMBAMBASA AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(200, ' IPILILO AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(201, ' MWAMITUMAI AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(202, ' S/MWAMPUYA AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(203, ' S/MWANINDO AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(204, ' SENANI AMCOS ', '', 50, 122, 6, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(205, '  BUTULI MING\'ONGWA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(206, '  IGOBE AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(207, '  IKIGIJO AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(208, '  IPONANABOLO AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(209, '  KISESA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(210, '  LONGALONHIGA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(211, '  LUBIGA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(212, '  MABORESHO INONELWA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(213, '  MATALE AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(214, '  MBALAGANE AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(215, '  MKOMBOZI MWALWILO AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(216, '  MUUNGANO MING\'ONGWA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(217, '  Mwabusalu AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(218, '  MWABUSUNGU AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(219, '  MWAGAYI AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(220, '  MWAKALUBA AMCOs  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(221, '  MWAKASUMBI  AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(222, '  MWAKISANDU AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(223, '  MWANDUIKINDILO AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(224, '  MWASENGELA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(225, '  MWASHATA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(226, '  MWASUNGURA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(227, '  MWAUKOLI AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(228, '  NGUGUNU AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(229, '  NYANZA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(230, '  SAKASAKA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(231, '  SEMU ISENGWA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(232, '  Songambele AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(233, '  UMOJA TINDABULIGI AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(234, '  Upendo Mbugayabanghya AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(235, '  MWAFUGUJI AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(236, '  NZANZA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(237, '  MWABUMA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(238, '  ITINJE AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(239, '  LINGEKA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(240, ' MASANGA AMCOS  ', '', 50, 123, 7, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(241, ' AMANI BUGANZA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(242, ' BUHANGIJA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(243, ' BUKUNDI AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(244, ' BULYASHI AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(245, ' CHAPAKAZI AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(246, ' IRAMBANDOGO AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(247, ' ISEBANDA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:20.000000', '2022-06-03 17:11:20.000000'),
(248, ' ITABA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(249, ' KABONDO AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(250, ' LATA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(251, ' MBUSHI AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(252, ' MKOMBOZI IMALASEKO ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(253, ' MWABAGALU AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(254, ' MWABUZO AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(255, ' MWAKIPOPO AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(256, ' MWAMALOLE AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(257, '  MWAMANONGU AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(258, '  MWAMANONI AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(259, '  MWAMANIMBA AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(260, '  MWAMATIGA AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(261, '  MWAMBEGWA AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(262, '  MWAMISHALI AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(263, '  MWANG\'HUMBI AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(264, '  MWANHUZI AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(265, '  MWANJOLO AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(266, '  MWANYAGULA AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(267, '  MWANYAHINA AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(268, '  MWANZUGI AMCOS  ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(269, ' MWIHANDO AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(270, ' NATA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(271, ' NKOMA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(272, ' NKONZE AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(273, ' PAJI AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(274, ' SAPA AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(275, ' MWANGUDO AMCOS ', '', 50, 123, 8, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(276, ' BULAMBILA AMCOS ', '', 50, 156, 9, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(277, ' KWELI- BALIMI MWALUKWA AMCOS ', '', 50, 156, 9, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(278, ' MWAMADILANHA AMCOS ', '', 50, 156, 9, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(279, ' PANDAGICHIZA AMCOS ', '', 50, 156, 9, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(280, ' SAYU AMCOS ', '', 50, 156, 9, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(281, ' SHILABELA AMCOS ', '', 50, 156, 9, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(282, ' MWAMALILI ', '', 50, 118, 10, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(283, ' BUSHOLA ', '', 50, 118, 10, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(284, ' IBADAKULI ', '', 50, 118, 10, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(285, ' UZOGOLE ', '', 50, 118, 10, '0.00', '0', NULL, '2022-06-03 17:11:21.000000', '2022-06-03 17:11:21.000000'),
(286, 'GAKI INVESTIMENT', NULL, 1, 118, 3, '2500.00', '1', NULL, '2022-06-03 18:46:51.000000', '2022-06-03 18:30:27.000000');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chairman` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secretary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_roles`
--

CREATE TABLE `company_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `added_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_roles`
--

INSERT INTO `company_roles` (`id`, `role_id`, `user_id`, `added_by`, `status`, `notes`, `admin_role`, `created_at`, `updated_at`) VALUES
(3, 38, 56, 1, NULL, NULL, 35, '2022-05-31 11:23:24', '2022-05-31 11:26:01'),
(4, 38, 50, 1, NULL, NULL, 35, '2022-05-31 11:25:27', '2022-05-31 11:25:27'),
(5, 37, 57, 1, NULL, NULL, 1, '2022-06-02 10:07:09', '2022-06-02 10:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `contributions`
--

CREATE TABLE `contributions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_clients`
--

CREATE TABLE `cotton_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_history`
--

CREATE TABLE `cotton_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `due_quantity` decimal(20,2) NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `status` int(100) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_invoice`
--

CREATE TABLE `cotton_invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'Bales',
  `reference` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(8,2) NOT NULL,
  `purchase_amount` decimal(20,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `purchase_tax` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL,
  `good_receive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(20,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_invoice_history`
--

CREATE TABLE `cotton_invoice_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `bales` decimal(8,2) NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_invoice_item`
--

CREATE TABLE `cotton_invoice_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bales` decimal(20,2) NOT NULL,
  `gross` decimal(20,2) NOT NULL,
  `tare` decimal(20,2) DEFAULT NULL,
  `net` decimal(20,2) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_list`
--

CREATE TABLE `cotton_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cotton_list`
--

INSERT INTO `cotton_list` (`id`, `serial_no`, `brand_id`, `purchase_id`, `purchase_date`, `location`, `truck_id`, `status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Cotton_1__2022', '1', '1', '2022-06-03', '247', NULL, 0, 1, '2022-06-03 09:35:40', '2022-06-03 09:35:40'),
(2, 'Cotton_2__2022', '1', '2', '2022-06-03', '151', NULL, 0, 1, '2022-06-03 12:37:27', '2022-06-03 12:37:27'),
(3, 'Cotton_3__2022', '1', '3', '2022-06-03', '1', NULL, 0, 1, '2022-06-03 17:51:29', '2022-06-03 17:51:29'),
(4, 'Cotton_4__2022', '1', '4', '2022-06-03', '1', NULL, 0, 1, '2022-06-03 18:45:08', '2022-06-03 18:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `cotton_movement`
--

CREATE TABLE `cotton_movement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `staff` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL,
  `quantity` decimal(20,2) NOT NULL,
  `rate` decimal(20,2) NOT NULL,
  `distance` decimal(20,2) NOT NULL,
  `transport` decimal(8,2) DEFAULT NULL,
  `truck_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(200) DEFAULT 0,
  `status2` int(100) NOT NULL DEFAULT 1,
  `district_id` int(100) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_movement_items`
--

CREATE TABLE `cotton_movement_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movement_id` int(200) NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `quantity` decimal(20,2) NOT NULL,
  `total_cost` decimal(20,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_movement_levy`
--

CREATE TABLE `cotton_movement_levy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movement_id` int(200) DEFAULT NULL,
  `levy_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `levy_cost` decimal(20,2) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `order_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cotton_payments`
--

CREATE TABLE `cotton_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `created_at`, `updated_at`, `name`, `code`) VALUES
(1, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 'Tanzania', 'TZ');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_id` int(100) NOT NULL,
  `status` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phoneNo`, `location`, `created_at`, `updated_at`, `card_id`, `status`) VALUES
(1, 'samwel herman', '0715438485', 'mbezi', '2022-06-20 18:07:24', '2022-06-20 19:09:26', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_units`
--

CREATE TABLE `daily_units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meter` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'HR', '2022-05-03 21:16:52', '2022-05-03 21:16:52'),
(2, 'Finance', '2022-05-03 21:17:08', '2022-05-03 21:17:08'),
(3, 'Marketing', '2022-05-03 21:17:26', '2022-05-03 21:17:26'),
(4, 'IT', '2022-05-03 21:17:37', '2022-05-03 21:17:37'),
(5, 'Operations', '2022-05-03 22:01:48', '2022-05-03 22:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`, `department_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accountant', '2', '1', '2022-05-03 21:52:37', '2022-05-03 21:52:37'),
(2, 'Software Developer', '4', '1', '2022-05-03 21:57:15', '2022-05-03 21:57:15'),
(3, 'Human Resource Officer', '1', '1', '2022-05-03 21:57:52', '2022-05-03 21:57:52'),
(4, 'Digital Marketing', '3', '1', '2022-05-03 21:58:17', '2022-05-03 21:58:17'),
(5, 'Logistic', '5', '1', '2022-05-03 22:02:12', '2022-05-03 22:02:12'),
(6, 'Agronomist', '5', '1', '2022-05-08 19:49:34', '2022-05-08 19:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `region_id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ARUSHA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(2, 1, 'KARATU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(3, 1, 'LONGIDO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(4, 1, 'MERU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(5, 1, 'MONDULI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(6, 1, 'NGORONGORO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(7, 2, 'ILALA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(8, 2, 'KINONDONI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(9, 2, 'TEMEKE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(10, 2, 'KIGAMBONI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(11, 2, 'UBUNGO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(12, 3, 'BAHI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(13, 3, 'CHAMWINO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(14, 3, 'CHEMBA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(15, 3, 'DODOMA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(16, 3, 'KONDOA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(17, 3, 'KONGWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(18, 3, 'MPWAPWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(19, 4, 'BUKOMBE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(20, 4, 'CHATO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(21, 4, 'GEITA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(22, 4, 'MBONGWE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(23, 4, 'NYANG\'HWALE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(24, 5, 'IRINGA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(25, 5, 'KILOLO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(26, 5, 'IRINGA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(27, 5, 'MUFINDI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(28, 6, 'BIHARAMULO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(29, 6, 'BUKOBA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(30, 6, 'KARAGWE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(31, 6, 'KYERWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(32, 6, 'MISSENYI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(33, 6, 'MULEBA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(34, 6, 'NGARA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(35, 7, 'MLELE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(36, 7, 'MPANDA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(37, 8, 'BUHIGWE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(38, 8, 'KAKONKO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(39, 8, 'KASULU MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(40, 8, 'KASULU MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(41, 8, 'KIBONDO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(42, 8, 'KIGOMA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(43, 8, 'UVINZA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(44, 9, 'HAI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(45, 9, 'MOSHI MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(46, 9, 'MWANGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(47, 9, 'ROMBO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(48, 9, 'SAME', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(49, 9, 'SIHA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(50, 10, 'KILWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(51, 10, 'LINDI MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(52, 10, 'LIWALE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(53, 10, 'NACHINGWEA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(54, 10, 'RUANGWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(55, 11, 'BABATI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(56, 11, 'HANANG', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(57, 11, 'KITETO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(58, 11, 'MBULU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(59, 11, 'SIMANJIRO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(60, 12, 'BUNDA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(61, 12, 'BUTIAMA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(62, 12, 'MUSOMA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(63, 12, 'RORYA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(64, 12, 'SERENGETI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(65, 12, 'TARIME', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(66, 13, 'OTHERS', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(67, 13, 'CHUNYA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(68, 13, 'KYELA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(69, 13, 'MBARALI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(70, 13, 'MBEYA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(71, 24, 'MBOZI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(72, 13, 'RUNGWE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(74, 14, 'GAIRO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(75, 14, 'KILOMBERO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(76, 14, 'KILOSA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(77, 14, 'MOROGORO MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(78, 14, 'MVOMERO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(79, 14, 'ULANGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(80, 15, 'MASASI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(81, 15, 'MASASI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(82, 15, 'NEWALA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(83, 15, 'NANYUMBU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(84, 15, 'NEWALA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(85, 15, 'TANDAHIMBA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(86, 16, 'ILEMELA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(87, 16, 'KWIMBA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(88, 16, 'MAGU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(89, 16, 'MISUNGWI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(90, 16, 'NYAMAGANA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(91, 16, 'SENGEREMA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(92, 16, 'UKEREWE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(93, 17, 'LUDEWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(94, 17, 'IRINGA VIJIJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(95, 17, 'MAKETE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(96, 17, 'NJOMBE MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(97, 17, 'WANGING\'OMBE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(98, 29, 'MICHEWENI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(99, 29, 'WETE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(100, 30, 'CHAKE CHAKE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(101, 30, 'MKOANI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(102, 18, 'BAGAMOYO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(103, 18, 'KIBAHA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(104, 18, 'KISARAWE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(105, 18, 'MAFIA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(106, 18, 'MKURANGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(107, 18, 'RUFIJI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(108, 19, 'KALAMBO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(109, 19, 'NKASI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(110, 19, 'SUMBAWANGA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(111, 20, 'MBINGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(112, 20, 'SONGEA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(113, 20, 'TUNDURU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(114, 20, 'NAMTUMBO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(115, 20, 'NYASA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(116, 21, 'KAHAMA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(117, 21, 'KISHAPU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(118, 21, 'SHINYANGA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(119, 22, 'BARIADI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(120, 22, 'BUSEGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(121, 22, 'ITILIMA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(122, 22, 'MASWA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(123, 22, 'MEATU', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(124, 23, 'IKUNGI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(125, 23, 'IRAMBA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(126, 23, 'MANYONI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(127, 23, 'MKALAMA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(128, 23, 'SINGIDA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(129, 24, 'MBEYA VIJIJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(130, 25, 'IGUNGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(131, 25, 'KALIUA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(132, 25, 'NZEGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(133, 25, 'SIKONGE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(134, 25, 'TABORA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(135, 25, 'URAMBO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(136, 25, 'UYUI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(137, 26, 'HANDENI MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(138, 26, 'KILINDI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(139, 26, 'KOROGWE MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(140, 26, 'LUSHOTO', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(141, 26, 'MUHEZA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(142, 26, 'MKINGA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(143, 26, 'PANGANI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(144, 26, 'TANGA MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(145, 31, 'UNGUJA MAGHARIBI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(146, 31, 'MJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(147, 27, 'KASKAZINI A', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(148, 27, 'KASKAZINI B', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(149, 28, 'KATI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(150, 28, 'KUSINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(151, 13, 'MBEYA VIJIJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(152, 15, 'MTWARA VIJIJINI', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(153, 24, 'ILEJE', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(154, 24, 'MOMBA', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(155, 32, 'OTHERS', NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `districts2`
--

CREATE TABLE `districts2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `region_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `levy_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `levy_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts2`
--

INSERT INTO `districts2` (`id`, `region_id`, `name`, `levy_status`, `levy_id`, `added_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(117, 21, 'KISHAPU', '1', '4', 50, NULL, '2022-04-12 01:37:26', '2022-05-25 10:31:15'),
(118, 21, 'SHINYANGA MJINI', NULL, NULL, 50, NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(122, 22, 'MASWA', NULL, NULL, 50, NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(123, 22, 'MEATU', NULL, NULL, 50, NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(130, 25, 'IGUNGA', NULL, NULL, 50, NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(156, 21, 'SHINYANGA VIJIJINI', NULL, NULL, 50, NULL, '2022-04-12 01:37:26', '2022-04-12 01:37:26'),
(157, 21, 'KAHAMA', '1', '4', 50, NULL, '2022-05-25 10:32:55', '2022-05-25 10:32:55');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `available` int(200) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `driver_name`, `address`, `referee`, `experience`, `profile`, `type`, `driver_status`, `added_by`, `available`, `created_at`, `updated_at`) VALUES
(1, 'Said Salum Kulanga', 'dar es salaam', '-', '10', 'logo_1654516228.png', 'owned', 'Permanent Driver', 57, 0, '2022-06-06 15:50:28', '2022-06-08 19:00:43'),
(2, 'Cosmas Samwel Mfalamagoha', 'dar es salaam', '-', '10', 'logo_1654516678.png', 'owned', 'Permanent Driver', 57, 1, '2022-06-06 15:57:58', '2022-06-09 17:25:32'),
(3, 'Hamis Ally Hamis', '62220', 'Jumanne Ally Husen', '5', 'ep_1654780765.jpg', 'owned', 'Permanent Driver', 57, 1, '2022-06-09 17:19:25', '2022-06-09 17:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feed_type`
--

CREATE TABLE `feed_type` (
  `id` int(100) NOT NULL,
  `crop_name` varchar(100) NOT NULL,
  `feed_name` varchar(200) NOT NULL,
  `characteristics` text DEFAULT NULL,
  `added_by` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feed_type`
--

INSERT INTO `feed_type` (`id`, `crop_name`, `feed_name`, `characteristics`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'Seed A', 'test', 1, '2022-04-04 21:55:07', '2022-04-05 13:06:41'),
(2, '4', 'Seed B', 'Need high rainfall or water volume', 20, '2022-04-12 19:51:04', '2022-04-12 19:51:04'),
(3, '1', 'c130', 'hello', 20, '2022-05-08 11:35:25', '2022-05-08 11:35:25'),
(4, '8', 'c130', 'tabia mbegu', 20, '2022-05-09 19:43:42', '2022-05-09 19:43:42'),
(5, '9', 'Karanga nyekundu', 'text', 20, '2022-05-09 20:26:42', '2022-05-09 20:26:42'),
(6, '1', 'g492', 'any content,', 20, '2022-05-11 21:04:20', '2022-05-11 21:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `field_staff`
--

CREATE TABLE `field_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `field_staff`
--

INSERT INTO `field_staff` (`id`, `name`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Said Issaya', 19, '2022-04-06 10:08:29', '2022-04-06 10:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `fuels`
--

CREATE TABLE `fuels` (
  `id` int(200) NOT NULL,
  `truck_id` varchar(200) NOT NULL,
  `driver_id` varchar(191) DEFAULT NULL,
  `route_id` varchar(200) NOT NULL,
  `fuel_rate` decimal(20,2) DEFAULT NULL,
  `fuel_used` decimal(20,2) NOT NULL,
  `due_fuel` decimal(20,2) NOT NULL,
  `fuel_adjustment` decimal(20,2) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status_approve` int(200) NOT NULL,
  `approved_by` int(100) DEFAULT NULL,
  `movement_id` int(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fuels`
--

INSERT INTO `fuels` (`id`, `truck_id`, `driver_id`, `route_id`, `fuel_rate`, `fuel_used`, `due_fuel`, `fuel_adjustment`, `reason`, `status_approve`, `approved_by`, `movement_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, '3', NULL, '168.00', '0.00', NULL, NULL, 0, NULL, NULL, 57, '2022-06-06 16:24:04', '2022-06-06 16:27:17'),
(2, '2', NULL, '3', NULL, '168.00', '0.00', NULL, NULL, 0, NULL, NULL, 57, '2022-06-06 16:24:31', '2022-06-06 16:28:23'),
(3, '1', '1', '3', '2.50', '2.50', '2.50', NULL, NULL, 0, NULL, NULL, 57, '2022-06-06 16:34:40', '2022-06-06 16:34:40'),
(4, '2', '2', '3', '2.50', '2.50', '2.50', NULL, NULL, 0, NULL, NULL, 57, '2022-06-06 16:35:12', '2022-06-06 16:35:12'),
(5, '1', '1', '1', NULL, '400.00', '400.00', NULL, NULL, 0, NULL, 1, 57, '2022-06-06 16:41:20', '2022-06-06 16:41:20'),
(6, '2', '2', '1', NULL, '400.00', '400.00', NULL, NULL, 0, NULL, 2, 57, '2022-06-06 16:41:38', '2022-06-06 16:41:38'),
(7, '1', '1', '6', '200.00', '200.00', '0.00', NULL, NULL, 0, NULL, NULL, 57, '2022-06-09 16:30:15', '2022-06-09 16:36:09'),
(9, '1', '2', '3', NULL, '200.00', '200.00', NULL, NULL, 0, NULL, 1, 57, '2022-06-09 17:21:29', '2022-06-09 17:21:29'),
(10, '2', '3', '2', NULL, '530.00', '0.00', '80.00', 'fjfjfjgh', 1, 57, 2, 57, '2022-06-09 17:23:45', '2022-06-09 17:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `gl_account_class`
--

CREATE TABLE `gl_account_class` (
  `id` int(11) NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `class_name` varchar(500) NOT NULL,
  `class_type` varchar(500) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gl_account_class`
--

INSERT INTO `gl_account_class` (`id`, `class_id`, `class_name`, `class_type`, `order_no`, `added_by`) VALUES
(1, '11000', 'Current Assets', 'Assets', 0, 57),
(2, '12000', 'Non Current Assets', 'Assets', 1, 57),
(3, '21000', 'Current Liabilty', 'Liability', 0, 57),
(4, '22000', 'Non Current Liability', 'Liability', 1, 57),
(5, '31000', 'Capital', 'Equity', 0, 57),
(6, '51000', 'Income', 'Income', 0, 57),
(7, '52000', 'Other Income', 'Income', 1, 57),
(8, '41000', 'Expense', 'Expense', 0, 57);

-- --------------------------------------------------------

--
-- Table structure for table `gl_account_codes`
--

CREATE TABLE `gl_account_codes` (
  `id` int(200) NOT NULL,
  `account_codes` int(200) NOT NULL,
  `account_name` varchar(200) NOT NULL,
  `account_group` varchar(200) NOT NULL,
  `account_type` varchar(500) NOT NULL,
  `account_status` varchar(200) NOT NULL,
  `allow_manual` tinyint(4) NOT NULL DEFAULT 0,
  `account_id` varchar(500) DEFAULT NULL,
  `order_no` int(200) NOT NULL,
  `added_by` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gl_account_codes`
--

INSERT INTO `gl_account_codes` (`id`, `account_codes`, `account_name`, `account_group`, `account_type`, `account_status`, `allow_manual`, `account_id`, `order_no`, `added_by`) VALUES
(1, 11101, 'Receivable and Prepayments', 'Receivables', 'Assets', 'Active', 0, '1', 0, 57),
(2, 11201, 'Petty Cash', 'Cash and Cash Equivalent', 'Assets', 'Active', 0, '2', 0, 57),
(3, 12101, 'Furniture and Office Equipment', 'Fixed Assets', 'Assets', 'Active', 0, '3', 0, 57),
(4, 12102, 'Land and Building', 'Fixed Assets', 'Assets', 'Active', 0, '4', 1, 57),
(5, 21101, 'Deffered Tax', 'Creditors', 'Liability', 'Active', 0, '5', 0, 57),
(6, 31101, 'Retained Surplus/(Deficity)', 'Retained Earnings/Loss', 'Equity', 'Active', 0, '6', 0, 57),
(7, 31102, 'Annual Surplus/Deficity', 'Retained Earnings/Loss', 'Equity', 'Active', 0, '7', 1, 57),
(8, 41301, 'Salaries And Wages', 'Personnel Expenses', 'Expense', 'Active', 0, '8', 0, 57),
(9, 41302, 'NSSF', 'Personnel Expenses', 'Expense', 'Active', 0, '9', 1, 57),
(10, 41201, 'Medical Insurance', 'Administrative Expenses', 'Expense', 'Active', 0, '10', 0, 57),
(11, 21102, 'Payables', 'Creditors', 'Liability', 'Active', 0, '11', 1, 57),
(12, 51101, 'Parcel', 'Income', 'Income', 'Active', 0, '12', 0, 57),
(13, 41401, 'Fuel', 'Logistic Expenses', 'Expense', 'Active', 0, '13', 0, 57),
(14, 41402, 'Tire', 'Logistic Expenses', 'Expense', 'Active', 0, '14', 1, 57),
(15, 41403, 'Inventory', 'Logistic Expenses', 'Expense', 'Active', 0, '15', 2, 57),
(16, 51102, 'VAT IN', '', '', 'Active', 0, '16', 1, 57),
(17, 51103, 'VAT OUT', '', '', 'Active', 0, '17', 2, 57),
(18, 11202, 'Cash Account', 'Cash and Cash Equivalent', 'Assets', 'Active', 0, '18', 1, 57),
(19, 41404, 'Truck Maintenance and Service', 'Logistic Expenses', 'Expense', 'Active', 0, '19', 3, 57),
(20, 41202, 'Fuel Expenses', 'Administrative Expenses', 'Expense', 'Active', 0, '20', 1, 57),
(21, 41203, 'Maintenance and Repair', 'Administrative Expenses', 'Expense', 'Active', 0, '21', 2, 57),
(22, 41405, 'Licence', 'Logistic Expenses', 'Expense', 'Active', 0, '22', 4, 57),
(23, 41406, 'Insurance', 'Logistic Expenses', 'Expense', 'Active', 0, '23', 5, 57),
(24, 41407, 'Mileage', 'Logistic Expenses', 'Expense', 'Active', 0, '24', 6, 57),
(25, 41204, 'Training', 'Administrative Expenses', 'Expense', 'Active', 0, '25', 3, 57),
(26, 41303, 'PAYE', 'Personnel Expenses', 'Expense', 'Active', 0, '26', 2, 57),
(27, 41304, 'NSSF (Employer Contribution)', 'Personnel Expenses', 'Expense', 'Active', 0, '27', 3, 57),
(28, 41205, 'NSSF (Employer Contribution', 'Administrative Expenses', 'Expense', 'Active', 0, '28', 4, 57),
(29, 41206, 'WCF contribution', 'Administrative Expenses', 'Expense', 'Active', 0, '29', 5, 57),
(30, 41207, 'NHIF (Heath Insurance Expense)', 'Administrative Expenses', 'Expense', 'Active', 0, '30', 6, 57),
(31, 41305, 'NHIF', 'Personnel Expenses', 'Expense', 'Active', 0, '31', 4, 57),
(32, 41306, 'Advance Salary', 'Personnel Expenses', 'Expense', 'Active', 0, '32', 5, 57),
(33, 41307, 'Employee Loan', 'Personnel Expenses', 'Expense', 'Active', 0, '33', 6, 57),
(34, 41308, 'Overtime', 'Personnel Expenses', 'Expense', 'Active', 0, '34', 7, 57),
(35, 41309, 'Employee Award', 'Personnel Expenses', 'Expense', 'Active', 0, '35', 8, 57),
(36, 12103, 'Truck (Horse&Trailer)-DAF', 'Fixed Assets', 'Assets', 'Active', 0, '36', 2, 57),
(37, 12104, 'Truck (Horse&Trailer)-FAW', 'Fixed Assets', 'Assets', 'Active', 0, '37', 3, 57),
(38, 12105, 'Vehicle', 'Fixed Assets', 'Assets', 'Active', 0, '38', 4, 57),
(39, 12106, 'Motor Cycle', 'Fixed Assets', 'Assets', 'Active', 0, '39', 5, 57);

-- --------------------------------------------------------

--
-- Table structure for table `gl_account_group`
--

CREATE TABLE `gl_account_group` (
  `id` int(200) NOT NULL,
  `group_id` int(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `class` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `order_no` int(200) NOT NULL,
  `added_by` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gl_account_group`
--

INSERT INTO `gl_account_group` (`id`, `group_id`, `name`, `class`, `type`, `order_no`, `added_by`) VALUES
(1, 11100, 'Receivables', 'Current Assets', 'Assets', 0, 57),
(2, 11200, 'Cash and Cash Equivalent', 'Current Assets', 'Assets', 1, 57),
(3, 12100, 'Fixed Assets', 'Non Current Assets', 'Assets', 0, 57),
(4, 31100, 'Retained Earnings/Loss', 'Capital', 'Equity', 0, 57),
(5, 21100, 'Creditors', 'Current Liabilty', 'Liability', 0, 57),
(6, 51100, 'Income', 'Income', 'Income', 0, 57),
(7, 41100, 'Financial Cost', 'Expense', 'Expense', 0, 57),
(8, 41200, 'Administrative Expenses', 'Expense', 'Expense', 1, 57),
(9, 41300, 'Personnel Expenses', 'Expense', 'Expense', 2, 57),
(10, 41400, 'Logistic Expenses', 'Expense', 'Expense', 3, 57);

-- --------------------------------------------------------

--
-- Table structure for table `gl_account_type`
--

CREATE TABLE `gl_account_type` (
  `account_type_id` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `value` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gl_account_type`
--

INSERT INTO `gl_account_type` (`account_type_id`, `type`, `value`) VALUES
(1, 'Assets', 10000),
(2, 'Liability', 20000),
(3, 'Equity', 30000),
(4, 'Expense', 40000),
(5, 'Income', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `gmembers`
--

CREATE TABLE `gmembers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `good_disposals`
--

CREATE TABLE `good_disposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `staff` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `good_issues`
--

CREATE TABLE `good_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `staff` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `good_issues`
--

INSERT INTO `good_issues` (`id`, `date`, `staff`, `location`, `type`, `type_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '2022-06-08', '1', '1', 'Service', '1', 57, '2022-06-09 11:57:50', '2022-06-09 11:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `good_issue_items`
--

CREATE TABLE `good_issue_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_id` int(11) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `good_issue_items`
--

INSERT INTO `good_issue_items` (`id`, `item_id`, `issue_id`, `quantity`, `added_by`, `order_no`, `created_at`, `updated_at`) VALUES
(1, '6', 1, '1.00', 57, 0, '2022-06-09 11:57:50', '2022-06-09 12:09:11'),
(2, '8', 1, '1.00', 57, 1, '2022-06-09 11:57:50', '2022-06-09 12:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `good_movements`
--

CREATE TABLE `good_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `staff` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `good_reallocations`
--

CREATE TABLE `good_reallocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `staff` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source_truck` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `destination_truck` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `good_reallocations`
--

INSERT INTO `good_reallocations` (`id`, `item_id`, `date`, `staff`, `source_truck`, `destination_truck`, `quantity`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '2022-06-07', '1', '1', '2', '1.00', 57, '2022-06-07 15:26:56', '2022-06-07 15:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `good_returns`
--

CREATE TABLE `good_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `staff` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `good_return_items`
--

CREATE TABLE `good_return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_id` int(11) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `name`, `unit`, `quantity`, `price`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'filter', 'pc', 8, '230000.00', 57, '2022-06-07 12:40:09', '2022-06-09 12:09:11'),
(2, 'Oil 68', 'ltr', 0, '3250.00', 57, '2022-06-07 12:41:38', '2022-06-07 12:41:38'),
(3, 'Break pad', 'pair', 0, '250000.00', 57, '2022-06-07 12:42:33', '2022-06-07 12:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_histories`
--

CREATE TABLE `inventory_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_histories`
--

INSERT INTO `inventory_histories` (`id`, `purchase_id`, `items_id`, `quantity`, `supplier_id`, `purchase_date`, `location`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '10.00', '2', '2022-06-07', '1', 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_list`
--

CREATE TABLE `inventory_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `assign_reference` int(200) NOT NULL DEFAULT 0,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_list`
--

INSERT INTO `inventory_list` (`id`, `serial_no`, `reference`, `brand_id`, `purchase_id`, `purchase_date`, `location`, `truck_id`, `status`, `assign_reference`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'filter_1_1_2022', '789', '1', '1', '2022-06-07', '1', '', 0, 1, 57, '2022-06-07 15:06:56', '2022-06-07 15:07:47'),
(2, 'filter_1_2_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56'),
(3, 'filter_1_3_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56'),
(4, 'filter_1_4_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56'),
(5, 'filter_1_5_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56'),
(6, 'filter_1_6_2022', NULL, '1', '1', '2022-06-07', '1', '1', 1, 0, 57, '2022-06-07 15:06:56', '2022-06-09 11:57:50'),
(7, 'filter_1_7_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56'),
(8, 'filter_1_8_2022', NULL, '1', '1', '2022-06-07', '1', '1', 1, 0, 57, '2022-06-07 15:06:56', '2022-06-09 11:57:50'),
(9, 'filter_1_9_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56'),
(10, 'filter_1_10_2022', NULL, '1', '1', '2022-06-07', '1', '', 0, 0, 57, '2022-06-07 15:06:56', '2022-06-07 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_payments`
--

CREATE TABLE `inventory_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `unit` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `journal_entries`
--

CREATE TABLE `journal_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `transaction_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gl_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_month` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `income_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` decimal(38,2) DEFAULT NULL,
  `credit` decimal(38,2) DEFAULT NULL,
  `currency_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `balance` decimal(65,4) DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `loan_transaction_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `reconcile` int(10) NOT NULL DEFAULT 0,
  `transaction_sub_type` enum('overpayment','repayment_interest','repayment_principal','repayment_fees','repayment_penalty') COLLATE utf8_unicode_ci DEFAULT NULL,
  `reversed` tinyint(4) NOT NULL DEFAULT 0,
  `operator_id` int(200) DEFAULT NULL,
  `center_id` int(200) DEFAULT NULL,
  `client_id` int(200) DEFAULT NULL,
  `added_by` int(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `journal_entries`
--

INSERT INTO `journal_entries` (`id`, `user_id`, `account_id`, `transaction_type`, `name`, `gl_code`, `date`, `month`, `year`, `reference`, `payment_id`, `payment_month`, `income_id`, `debit`, `credit`, `currency_code`, `exchange_rate`, `balance`, `active`, `notes`, `created_at`, `updated_at`, `loan_transaction_id`, `branch_id`, `reconcile`, `transaction_sub_type`, `reversed`, `operator_id`, `center_id`, `client_id`, `added_by`) VALUES
(1, NULL, 12, 'cargo', 'Invoice', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', NULL, '0.00', 'TZS', '1.00', NULL, 1, 'Invoice with reference no 12AB  by Client Dangote', '2022-06-06 16:19:40', '2022-06-06 16:19:40', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(2, NULL, 1, 'cargo', 'Invoice', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', '0.00', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no 12AB  by Client Dangote', '2022-06-06 16:19:40', '2022-06-06 16:19:40', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(3, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', '56700.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage to Driver  Said Salum Kulanga with Truck DAF', '2022-06-06 16:34:40', '2022-06-06 16:34:40', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(4, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', NULL, '56700.00', 'TZS', '1.00', NULL, 1, 'Mileage  to Driver  Said Salum Kulanga with Truck DAF', '2022-06-06 16:34:40', '2022-06-06 16:34:40', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(5, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '2', '56700.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage to Driver  Cosmas Samwel Mfalamagoha with Truck DAF', '2022-06-06 16:35:12', '2022-06-06 16:35:12', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(6, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '2', NULL, '56700.00', 'TZS', '1.00', NULL, 1, 'Mileage  to Driver  Cosmas Samwel Mfalamagoha with Truck DAF', '2022-06-06 16:35:12', '2022-06-06 16:35:12', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(7, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '3', '125000000.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Transportion of cements from Mtwara to Dodoma  to Driver  Said Salum Kulanga with Truck DAF', '2022-06-06 16:41:20', '2022-06-06 16:41:20', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(8, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '3', NULL, '125000000.00', 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Transportion of cements from Mtwara to Dodoma  to Driver  Said Salum Kulanga with Truck DAF', '2022-06-06 16:41:21', '2022-06-06 16:41:21', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(9, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '4', '125000000.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Transportion of cements from Mtwara to Dodoma  to Driver  Cosmas Samwel Mfalamagoha with Truck DAF', '2022-06-06 16:41:38', '2022-06-06 16:41:38', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(10, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '4', NULL, '125000000.00', 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Transportion of cements from Mtwara to Dodoma  to Driver  Cosmas Samwel Mfalamagoha with Truck DAF', '2022-06-06 16:41:38', '2022-06-06 16:41:38', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(11, NULL, 12, 'cargo', 'Invoice', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', NULL, '8059500.00', 'TZS', '1.00', NULL, 1, 'Invoice with reference no PCL-1  by Client Dangote', '2022-06-06 23:46:11', '2022-06-06 23:46:11', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(12, NULL, 17, 'cargo', 'Invoice', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', NULL, '1450710.00', 'TZS', '1.00', NULL, 1, 'Invoice Tax with reference no PCL-1  by Client Dangote', '2022-06-06 23:46:11', '2022-06-06 23:46:11', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(13, NULL, 1, 'cargo', 'Invoice', NULL, '2022-06-06', '06', '2022', NULL, NULL, NULL, '1', '9510210.00', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no PCL-1  by Client Dangote', '2022-06-06 23:46:11', '2022-06-06 23:46:11', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(14, NULL, 15, 'inventory', 'Inventory Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', '2300000.00', NULL, 'TZS', '1.00', NULL, 1, 'Inventory Purchase with reference no PUR_INV-1-2022-06-07 by Supplier Solwa', '2022-06-07 15:06:56', '2022-06-07 15:06:56', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(15, NULL, 16, 'inventory', 'Inventory Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', '414000.00', NULL, 'TZS', '1.00', NULL, 1, 'Inventory Purchase Tax with reference no PUR_INV-1-2022-06-07 by Supplier Solwa', '2022-06-07 15:06:56', '2022-06-07 15:06:56', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(16, NULL, 11, 'inventory', 'Inventory Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', NULL, '2714000.00', 'TZS', '1.00', NULL, 1, 'Credit for Inventory Purchase with reference no PUR_INV-1-2022-06-07 by Supplier Solwa', '2022-06-07 15:06:56', '2022-06-07 15:06:56', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(17, NULL, 14, 'tire', 'Tire Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', '999999.99', NULL, 'TZS', '1.00', NULL, 1, 'Tire Purchase with reference no PUR_TYRE_1_2022-06-07 by Supplier Solwa', '2022-06-07 15:34:22', '2022-06-07 15:34:22', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(18, NULL, 16, 'tire', 'Tire Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', '180000.00', NULL, 'TZS', '1.00', NULL, 1, 'Tire Purchase Tax with reference no PUR_TYRE_1_2022-06-07 by Supplier Solwa', '2022-06-07 15:34:22', '2022-06-07 15:34:22', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(19, NULL, 11, 'tire', 'Tire Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', NULL, '999999.99', 'TZS', '1.00', NULL, 1, 'Credit for Tire Purchase with reference no PUR_TYRE_1_2022-06-07 by Supplier Solwa', '2022-06-07 15:34:22', '2022-06-07 15:34:22', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(20, NULL, 14, 'tire', 'Tire Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '2', '2000000.00', NULL, 'TZS', '1.00', NULL, 1, 'Tire Purchase with reference no PUR_TYRE_2_2022-06-07 by Supplier Olimpic Petrolium', '2022-06-08 22:45:11', '2022-06-08 22:45:11', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(21, NULL, 16, 'tire', 'Tire Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '2', '360000.00', NULL, 'TZS', '1.00', NULL, 1, 'Tire Purchase Tax with reference no PUR_TYRE_2_2022-06-07 by Supplier Olimpic Petrolium', '2022-06-08 22:45:11', '2022-06-08 22:45:11', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(22, NULL, 11, 'tire', 'Tire Purchase', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '2', NULL, '2360000.00', 'TZS', '1.00', NULL, 1, 'Credit for Tire Purchase with reference no PUR_TYRE_2_2022-06-07 by Supplier Olimpic Petrolium', '2022-06-08 22:45:11', '2022-06-08 22:45:11', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(28, NULL, 1, 'cargo', 'Cargo Invoice', NULL, '2022-06-16', '06', '2022', NULL, NULL, NULL, '2', '3436630820.00', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no PCL-2  by Client Dangote', '2022-06-09 14:45:55', '2022-06-09 14:45:55', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(27, NULL, 17, 'cargo', 'Cargo Invoice', NULL, '2022-06-16', '06', '2022', NULL, NULL, NULL, '2', NULL, '524231820.00', 'TZS', '1.00', NULL, 1, 'Invoice Tax with reference no PCL-2  by Client Dangote', '2022-06-09 14:45:55', '2022-06-09 14:45:55', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(26, NULL, 12, 'cargo', 'Cargo Invoice', NULL, '2022-06-16', '06', '2022', NULL, NULL, NULL, '2', NULL, '2912399000.00', 'TZS', '1.00', NULL, 1, 'Invoice with reference no PCL-2  by Client Dangote', '2022-06-09 14:45:55', '2022-06-09 14:45:55', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(29, NULL, 12, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '3', NULL, '8734055.26', 'TZS', '1.00', NULL, 1, 'Invoice with reference no PCL-3  by Client Dangote', '2022-06-09 16:22:48', '2022-06-09 16:22:48', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(30, NULL, 17, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '3', NULL, '1575729.95', 'TZS', '1.00', NULL, 1, 'Invoice Tax with reference no PCL-3  by Client Dangote', '2022-06-09 16:22:48', '2022-06-09 16:22:48', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(31, NULL, 1, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '3', '10309785.21', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no PCL-3  by Client Dangote', '2022-06-09 16:22:48', '2022-06-09 16:22:48', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(32, NULL, 12, 'cargo', 'Cargo Invoice', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', NULL, '13892000000.00', 'TZS', '1.00', NULL, 1, 'Invoice with reference no PCL-1  by Client Dangote', '2022-06-09 16:24:08', '2022-06-09 16:24:08', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(33, NULL, 17, 'cargo', 'Cargo Invoice', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', NULL, '2500560000.00', 'TZS', '1.00', NULL, 1, 'Invoice Tax with reference no PCL-1  by Client Dangote', '2022-06-09 16:24:08', '2022-06-09 16:24:08', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(34, NULL, 1, 'cargo', 'Cargo Invoice', NULL, '2022-06-07', '06', '2022', NULL, NULL, NULL, '1', '16392560000.00', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no PCL-1  by Client Dangote', '2022-06-09 16:24:08', '2022-06-09 16:24:08', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(35, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '5', '58375000.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage to Driver  Said Salum Kulanga with Truck DAF', '2022-06-09 16:30:15', '2022-06-09 16:30:15', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(36, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '5', NULL, '58375000.00', 'TZS', '1.00', NULL, 1, 'Mileage  to Driver  Said Salum Kulanga with Truck DAF', '2022-06-09 16:30:15', '2022-06-09 16:30:15', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(37, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '6', '56040000.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage to Driver  Said Salum Kulanga with Truck DAF', '2022-06-09 16:34:35', '2022-06-09 16:34:35', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(38, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '6', NULL, '56040000.00', 'TZS', '1.00', NULL, 1, 'Mileage  to Driver  Said Salum Kulanga with Truck DAF', '2022-06-09 16:34:35', '2022-06-09 16:34:35', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(39, NULL, 13, 'fuel', 'Fuel Refill', NULL, '2022-06-09', '06', '2022', NULL, 3, NULL, NULL, '620000.00', NULL, 'TZS', '1.00', NULL, 1, 'Fuel Refill for Truck DAF', '2022-06-09 16:36:09', '2022-06-09 16:36:09', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(40, NULL, 2, 'fuel', 'Fuel Refill', NULL, '2022-06-09', '06', '2022', NULL, 3, NULL, NULL, NULL, '620000.00', 'TZS', '1.00', NULL, 1, 'Payment for Fuel Refill for Truck DAF', '2022-06-09 16:36:09', '2022-06-09 16:36:09', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(41, NULL, 12, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '1', NULL, '6315010.00', 'TZS', '1.00', NULL, 1, 'Invoice with reference no PCL-1  by Client Dangote', '2022-06-09 17:07:05', '2022-06-09 17:07:05', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(42, NULL, 17, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '1', NULL, '1136701.80', 'TZS', '1.00', NULL, 1, 'Invoice Tax with reference no PCL-1  by Client Dangote', '2022-06-09 17:07:05', '2022-06-09 17:07:05', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(43, NULL, 1, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '1', '7451711.80', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no PCL-1  by Client Dangote', '2022-06-09 17:07:05', '2022-06-09 17:07:05', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(44, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '7', '70875000.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Cements Transport Dangote  to Driver  Cosmas Samwel Mfalamagoha with Truck DAF', '2022-06-09 17:21:29', '2022-06-09 17:21:29', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(45, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '7', NULL, '70875000.00', 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Cements Transport Dangote  to Driver  Cosmas Samwel Mfalamagoha with Truck DAF', '2022-06-09 17:21:29', '2022-06-09 17:21:29', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(46, NULL, 24, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '8', '125000000.00', NULL, 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Cements Transport Dangote  to Driver  Hamis Ally Hamis with Truck DAF', '2022-06-09 17:23:45', '2022-06-09 17:23:45', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(47, NULL, 11, 'mileage', 'Mileage', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '8', NULL, '125000000.00', 'TZS', '1.00', NULL, 1, 'Mileage of Shipment Cements Transport Dangote  to Driver  Hamis Ally Hamis with Truck DAF', '2022-06-09 17:23:45', '2022-06-09 17:23:45', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(48, NULL, 12, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '1', NULL, '6315010.00', 'TZS', '1.00', NULL, 1, 'Invoice with reference no PCL-1  by Client Dangote', '2022-06-09 17:31:59', '2022-06-09 17:31:59', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(49, NULL, 17, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '1', NULL, '1136701.80', 'TZS', '1.00', NULL, 1, 'Invoice Tax with reference no PCL-1  by Client Dangote', '2022-06-09 17:31:59', '2022-06-09 17:31:59', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(50, NULL, 1, 'cargo', 'Cargo Invoice', NULL, '2022-06-09', '06', '2022', NULL, NULL, NULL, '1', '7451711.80', NULL, 'TZS', '1.00', NULL, 1, 'Debit Receivables for Invoice with reference no PCL-1  by Client Dangote', '2022-06-09 17:31:59', '2022-06-09 17:31:59', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(51, NULL, 13, 'fuel', 'Fuel Refill', NULL, '2022-06-09', '06', '2022', NULL, 5, NULL, NULL, '623000.00', NULL, 'TZS', '1.00', NULL, 1, 'Fuel Refill for Truck DAF', '2022-06-09 17:46:58', '2022-06-09 17:46:58', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(52, NULL, 2, 'fuel', 'Fuel Refill', NULL, '2022-06-09', '06', '2022', NULL, 5, NULL, NULL, NULL, '623000.00', 'TZS', '1.00', NULL, 1, 'Payment for Fuel Refill for Truck DAF', '2022-06-09 17:46:58', '2022-06-09 17:46:58', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(53, NULL, 13, 'fuel', 'Fuel Refill', NULL, '2022-06-06', '06', '2022', NULL, 1, NULL, NULL, '526008.00', NULL, 'TZS', '1.00', NULL, 1, 'Fuel Refill Payment with transaction id TRANS_EXP_TrZq', '2022-06-09 17:50:12', '2022-06-09 17:50:12', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57),
(54, NULL, 11, 'fuel', 'Fuel Refill', NULL, '2022-06-06', '06', '2022', NULL, 1, NULL, NULL, NULL, '526008.00', 'TZS', '1.00', NULL, 1, 'Fuel Refill Payment with transaction id TRANS_EXP_TrZq', '2022-06-09 17:50:12', '2022-06-09 17:50:12', NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, 57);

-- --------------------------------------------------------

--
-- Table structure for table `levy`
--

CREATE TABLE `levy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) DEFAULT NULL COMMENT '0=optional,1=required',
  `value` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levy`
--

INSERT INTO `levy` (`id`, `name`, `account_id`, `type`, `required`, `value`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'District Levy', '23', 'Rate', 1, '3.00', 1, '2022-05-21 20:01:32', '2022-06-01 00:04:38'),
(2, 'Community Levy', '24', 'Fixed', 1, '50.00', 1, '2022-05-21 20:02:15', '2022-06-01 00:04:54'),
(3, 'CDTF Levy', '25', 'Rate', 1, '1.00', 1, '2022-05-21 20:03:28', '2022-05-31 23:52:20'),
(4, 'Union Levy', '26', 'Fixed', 0, '250.00', 1, '2022-05-21 20:04:03', '2022-06-01 00:05:21');

-- --------------------------------------------------------

--
-- Table structure for table `licences`
--

CREATE TABLE `licences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licences`
--

INSERT INTO `licences` (`id`, `class`, `year`, `expire`, `attachment`, `driver_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'D', '2021', '2025', '442060622115338.png', '1', 57, '2022-06-06 15:53:38', '2022-06-06 15:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL COMMENT 'user resposible',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Main Store', 57, '2022-06-07 14:14:48', '2022-06-07 14:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `maintainances`
--

CREATE TABLE `maintainances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_no` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechanical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` int(200) DEFAULT 0,
  `status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintainances`
--

INSERT INTO `maintainances` (`id`, `truck`, `truck_name`, `reg_no`, `driver`, `mechanical`, `date`, `type`, `reason`, `report`, `status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'DAF', 'T 183 DWW', NULL, '1', '2022-06-07', 'Minor', 'notes', 1, 1, 57, '2022-06-07 13:10:19', '2022-06-08 21:23:45'),
(2, '2', 'DAF', 'T187DWW', NULL, '1', '2022-06-07', 'Minor', 'ddd', 0, 1, 57, '2022-06-07 13:38:23', '2022-06-07 13:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance_report`
--

CREATE TABLE `maintainance_report` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maintainance_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_inventories`
--

CREATE TABLE `manufacturing_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` int(11) NOT NULL COMMENT '1.Manufacturing\r\n2.Inventory',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_inventories`
--

INSERT INTO `manufacturing_inventories` (`id`, `name`, `product_type`, `unit`, `quantity`, `price`, `added_by`, `created_at`, `updated_at`) VALUES
(3, 'Boxes', 2, 'pc', 0, '120.00', 1, '2022-05-19 13:39:28', '2022-05-19 13:41:04'),
(4, 'Chupa', 2, 'pc', 0, '130.00', 1, '2022-05-19 13:40:11', '2022-05-19 13:41:23'),
(5, 'Diamond 200 mls', 1, 'pc', 0, '2000.00', 1, '2022-05-19 13:43:45', '2022-05-19 13:43:45'),
(6, 'Diamond 200 mls', 1, 'pc', 0, '2000.00', 1, '2022-05-19 13:43:46', '2022-05-19 13:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_inventory_histories`
--

CREATE TABLE `manufacturing_inventory_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_inventory_histories`
--

INSERT INTO `manufacturing_inventory_histories` (`id`, `purchase_id`, `items_id`, `quantity`, `supplier_id`, `purchase_date`, `location`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 1, '3.00', '1', '2022-04-19', '1', 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31'),
(2, '1', 2, '2.00', '1', '2022-04-19', '1', 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_inventory_list`
--

CREATE TABLE `manufacturing_inventory_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_inventory_list`
--

INSERT INTO `manufacturing_inventory_list` (`id`, `serial_no`, `brand_id`, `purchase_id`, `purchase_date`, `location`, `truck_id`, `status`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'filter_1_1_2022', '1', '1', '2022-04-19', '1', '', 0, 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31'),
(2, 'filter_1_2_2022', '1', '1', '2022-04-19', '1', '', 0, 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31'),
(3, 'filter_1_3_2022', '1', '1', '2022-04-19', '1', '', 0, 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31'),
(4, 'pump_1_1_2022', '2', '1', '2022-04-19', '1', '', 0, 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31'),
(5, 'pump_1_2_2022', '2', '1', '2022-04-19', '1', '', 0, 19, '2022-04-25 15:03:31', '2022-04-25 15:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_inventory_payments`
--

CREATE TABLE `manufacturing_inventory_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_inventory_payments`
--

INSERT INTO `manufacturing_inventory_payments` (`id`, `purchase_id`, `trans_id`, `amount`, `date`, `payment_method`, `notes`, `account_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'TRANS_INV-1-9-28/04/22', '204820.00', '2022-04-28', '3', '21ku', '6', 19, '2022-04-29 00:04:22', '2022-04-29 00:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_locations`
--

CREATE TABLE `manufacturing_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_type` int(11) DEFAULT NULL COMMENT '1-Work Centre\r\n2-Finished Product\r\n3-inventory store',
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_locations`
--

INSERT INTO `manufacturing_locations` (`id`, `name`, `manager`, `store_type`, `added_by`, `created_at`, `updated_at`) VALUES
(5, 'Main Store', NULL, NULL, 57, '2022-06-07 14:05:08', '2022-06-07 14:05:08'),
(6, 'test', NULL, NULL, 57, '2022-06-07 14:11:04', '2022-06-07 14:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_purchase_inventories`
--

CREATE TABLE `manufacturing_purchase_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(8,2) NOT NULL,
  `purchase_amount` decimal(20,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `purchase_tax` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL,
  `good_receive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_purchase_inventories`
--

INSERT INTO `manufacturing_purchase_inventories` (`id`, `reference_no`, `supplier_id`, `purchase_date`, `due_date`, `location`, `exchange_code`, `exchange_rate`, `purchase_amount`, `due_amount`, `purchase_tax`, `status`, `good_receive`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'PUR_INV-1-2022-04-19', '1', '2022-04-19', '2022-04-26', '1', 'TZS', '1.00', '199000.00', '30000.00', '35820.00', 2, '1', 19, '2022-04-25 15:02:21', '2022-04-29 00:04:22'),
(2, 'PUR_INV-2-2022-05-10', '1', '2022-05-10', '2022-05-15', '1', 'TZS', '1.00', '555000.00', '654900.00', '99900.00', 1, '0', 44, '2022-05-10 16:38:17', '2022-05-10 16:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing_purchase_item_inventories`
--

CREATE TABLE `manufacturing_purchase_item_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(8,2) NOT NULL,
  `total_tax` decimal(8,2) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `total_cost` decimal(8,2) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturing_purchase_item_inventories`
--

INSERT INTO `manufacturing_purchase_item_inventories` (`id`, `purchase_id`, `item_name`, `tax_rate`, `total_tax`, `quantity`, `total_cost`, `price`, `unit`, `items_id`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '0.18', '12420.00', '3.00', '69000.00', '23000.00', 'pc', 1, 0, 19, '2022-04-25 15:02:21', '2022-04-25 15:03:31'),
(2, '1', '2', '0.18', '23400.00', '2.00', '130000.00', '65000.00', 'PC', 2, 1, 19, '2022-04-25 15:02:21', '2022-04-25 15:03:31'),
(3, '2', '1', '0.18', '41400.00', '10.00', '230000.00', '23000.00', 'pc', 1, 0, 44, '2022-05-10 16:38:17', '2022-05-10 16:38:17'),
(4, '2', '2', '0.18', '58500.00', '5.00', '325000.00', '65000.00', 'PC', 2, 1, 44, '2022-05-10 16:38:17', '2022-05-10 16:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `mechanical_item`
--

CREATE TABLE `mechanical_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mechanical_item`
--

INSERT INTO `mechanical_item` (`id`, `module`, `module_id`, `item_name`, `date`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'maintainance', '1', '1', '2022-06-08', 0, 57, '2022-06-08 21:23:05', '2022-06-08 21:23:05'),
(2, 'service', '1', '1', '2022-06-08', 0, 57, '2022-06-08 22:12:12', '2022-06-08 22:12:12'),
(3, 'service', '1', '2', '2022-06-08', 1, 57, '2022-06-08 22:12:12', '2022-06-08 22:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `mechanical_recommedation`
--

CREATE TABLE `mechanical_recommedation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recommedation` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mechanical_recommedation`
--

INSERT INTO `mechanical_recommedation` (`id`, `module`, `module_id`, `recommedation`, `date`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'maintainance', '1', 'testa', '2022-06-08', 0, 57, '2022-06-08 21:23:05', '2022-06-08 21:23:05'),
(2, 'maintainance', '1', 'testb', '2022-06-08', 1, 57, '2022-06-08 21:23:05', '2022-06-08 21:23:05'),
(3, 'service', '1', 'test service report', '2022-06-08', 0, 57, '2022-06-08 22:12:12', '2022-06-08 22:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `communityName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `community_id` int(10) UNSIGNED DEFAULT NULL,
  `childNo` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meters`
--

CREATE TABLE `meters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regNo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2019_10_05_104512_create_zones_table', 12),
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2022_01_19_135551_create_posts_table', 1),
(33, '2022_01_26_135448_create_farmers_table', 1),
(34, '2022_01_28_090429_create_groups_table', 1),
(35, '2022_01_28_131303_create_gmembers_table', 1),
(36, '2022_02_01_111711_create_farm_lands_table', 2),
(37, '2022_02_04_093118_create_contacts_table', 3),
(38, '2022_02_04_102442_create_mawasilianos_table', 4),
(39, '2022_02_07_112802_create_supplies_table', 5),
(40, '2022_02_07_150910_create_products_table', 6),
(41, '2022_02_08_081648_create_units_table', 7),
(43, '2022_02_10_115932_create_groceries_table', 8),
(45, '2022_02_15_150412_create_balances_table', 10),
(46, '2022_02_18_084001_create_sales_table', 11),
(47, '2019_10_05_104513_create_regions_table', 13),
(48, '2019_10_05_104514_create_districts_table', 13),
(49, '2019_12_14_000001_create_personal_access_tokens_table', 13),
(50, '2022_01_08_063104_create_countries_table', 13),
(51, '2022_02_14_112453_create_orders_table', 13),
(52, '2022_02_26_092502_create_purchases_table', 13),
(53, '2022_02_26_093337_create_purchase_items_table', 13),
(54, '2022_02_27_054315_create_sales_table', 13),
(55, '2022_02_27_054457_create_sales_items_table', 13),
(56, '2022_02_27_161836_create_invoice_payments_table', 13),
(57, '2022_02_28_145220_create_transport_quotations_table', 13),
(58, '2022_02_28_150818_create_quotation_costs_table', 13),
(59, '2022_02_28_151527_create_cost_functions_table', 13),
(60, '2022_03_04_075256_create_seassons_table', 14),
(61, '2022_03_04_114306_create_preparation_costs_table', 14),
(62, '2022_03_07_083738_create_preparation_details_table', 14),
(63, '2022_03_07_083930_create_preparation_cost_lists_table', 14),
(64, '2022_03_11_105622_create_seeds_types_table', 15),
(65, '2022_03_11_125025_create_sowings_table', 15),
(66, '2022_03_15_100149_create_trucks_table', 15),
(67, '2022_03_15_110512_create_drivers_table', 15),
(68, '2022_03_15_114158_create_user_details_table', 15),
(69, '2022_03_15_185405_create_licences_table', 15),
(70, '2022_03_15_185507_create_performances_table', 15),
(71, '2022_03_15_194201_add_driver_to_licences_table', 15),
(72, '2022_03_15_194328_add_driver_to_performances_table', 15),
(73, '2022_03_16_170425_create_stickers_table', 15),
(74, '2022_03_16_170654_create_truck_insurances_table', 15),
(75, '2022_03_17_093853_create_locations_table', 15),
(76, '2022_03_17_094205_create_inventories_table', 15),
(77, '2022_03_17_094242_create_field_staff_table', 15),
(78, '2022_03_17_094405_create_purchase_inventories_table', 15),
(79, '2022_03_17_094438_create_purchase_item_inventories_table', 15),
(80, '2022_03_17_094750_create_inventory_histories_table', 15),
(81, '2022_03_17_124418_create_fertilers_table', 15),
(82, '2022_03_17_124927_create_inventory_payments_table', 15),
(83, '2022_03_18_190421_create_maintainances_table', 15),
(84, '2022_03_18_191433_create_services_table', 15),
(85, '2022_03_18_191526_create_service_items_table', 15),
(86, '2022_03_19_181447_create_good_issue_items_table', 15),
(87, '2022_03_19_181624_create_good_issues_table', 15),
(88, '2022_03_20_040925_create_good_returns_table', 15),
(89, '2022_03_20_041049_create_good_return_items_table', 15),
(90, '2022_03_20_050647_create_irrigation_settings_table', 15),
(91, '2022_03_20_071343_create_good_movements_table', 15),
(92, '2022_03_20_071446_create_good_reallocations_table', 15),
(93, '2022_03_20_071528_create_good_disposals_table', 15),
(94, '2022_03_21_101055_create_irrigation_systems_table', 15),
(95, '2022_03_21_122145_create_irrigation_processes_table', 15),
(96, '2022_03_21_131947_create_order_payments_table', 15),
(97, '2022_03_21_132440_create_order_movements_table', 15),
(98, '2022_03_21_132728_create_activities_table', 15),
(99, '2022_03_24_150209_create_pestisides_table', 16),
(100, '2022_03_24_155930_create_pre_harvests_table', 17),
(101, '2022_03_24_163417_create_post_harvests_table', 18),
(102, '2022_03_24_170142_create_parking_types_table', 19),
(103, '2022_03_25_075919_create_fuels_table', 20),
(104, '2022_03_25_081003_create_refills_table', 21),
(105, '2022_03_25_081044_create_routes_table', 22),
(106, '2022_03_29_122838_create_tyre_brands_table', 23),
(107, '2022_03_29_163730_create_purchase_tyres_table', 24),
(108, '2022_03_29_164041_create_purchase_item_tyres_table', 25),
(109, '2022_03_29_164434_create_tyre_histories_table', 26),
(110, '2022_03_29_164644_create_tyre_activities_table', 27),
(111, '2022_03_29_181545_create_tyre_payments_table', 28),
(112, '2022_03_30_130131_create_tyre_disposals_table', 28),
(113, '2022_03_31_062131_create_tyres_table', 29),
(114, '2022_03_31_094617_create_tyre_returns_table', 29),
(115, '2022_03_31_124505_create_tyre_reallocations_table', 29),
(116, '2022_03_31_164525_create_pacels_table', 30),
(117, '2022_03_31_175801_create_pacel_items_table', 31),
(118, '2022_03_31_180421_create_pacel_payments_table', 32),
(119, '2022_03_31_181128_create_pacel_lists_table', 33),
(120, '2022_04_15_103020_create_salary_templates_table', 34),
(121, '2022_04_15_104129_create_salary_allowances_table', 34),
(122, '2022_04_15_104435_create_salary_deductions_table', 34),
(125, '2022_04_17_081429_create_departments_table', 35),
(126, '2022_04_23_112045_create_employee_payrolls_table', 35),
(127, '2022_04_25_094322_create_salary_payments_table', 36),
(128, '2022_04_25_095012_create_salary_payment_details_table', 36),
(129, '2022_04_25_113634_create_salary_payment_allowances_table', 37),
(131, '2022_04_25_114455_create_salary_payment_deductions_table', 38),
(132, '2022_04_27_090812_create_advance_salaries_table', 39),
(133, '2022_04_27_102406_create_overtimes_table', 40),
(134, '2022_04_27_103519_create_payment_methodes_table', 41),
(135, '2022_04_27_105215_create_accounts_table', 42),
(136, '2022_05_29_999999_add_active_status_to_users', 43),
(137, '2022_05_29_999999_add_avatar_to_users', 43),
(138, '2022_05_29_999999_add_dark_mode_to_users', 43),
(139, '2022_05_29_999999_add_messenger_color_to_users', 43),
(140, '2022_05_29_999999_create_favorites_table', 43),
(141, '2022_05_29_999999_create_messages_table', 43),
(142, '2022_06_11_135151_create_students_table', 44),
(143, '2022_06_11_142924_create_schools_table', 44),
(144, '2022_06_11_144131_create_school_student_table', 44),
(145, '2022_06_13_110538_create_school_payments_table', 44),
(146, '2022_06_13_113506_create_student_payments_table', 44),
(0, '2022_06_02_074836_create_card_assignments_table', 45),
(0, '2022_06_19_060512_create_cards_table', 46),
(0, '2022_06_17_093813_create_communities_table', 47),
(0, '2022_06_17_093858_create_members_table', 47),
(0, '2022_06_17_094233_create_contributions_table', 47),
(0, '2022_06_17_095621_create_parish_child_table', 47),
(0, '2022_06_18_124529_create_projects_table', 47),
(0, '2022_06_18_131153_create_categories_table', 47),
(0, '2022_06_19_074128_create_water_location_table', 47),
(0, '2022_06_19_074236_create_unit_prices_table', 47),
(0, '2022_06_19_074456_create_meters_table', 47),
(0, '2022_06_19_074524_create_customers_table', 47),
(0, '2022_06_19_074626_create_daily_units_table', 47),
(0, '2022_06_20_075553_create_blocks_table', 48),
(0, '2022_06_20_090059_create_tokens_table', 48),
(0, '2022_06_20_095755_create_test_tokens_table', 48);

-- --------------------------------------------------------

--
-- Table structure for table `mileages`
--

CREATE TABLE `mileages` (
  `id` int(200) NOT NULL,
  `truck_id` varchar(200) NOT NULL,
  `driver_id` varchar(191) NOT NULL,
  `route_id` varchar(200) NOT NULL,
  `fuel_rate` decimal(20,2) NOT NULL,
  `total_mileage` decimal(20,2) NOT NULL,
  `due_mileage` decimal(20,2) NOT NULL,
  `fuel_adjustment` decimal(20,2) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `payment_status` int(200) NOT NULL,
  `status_approve` int(200) NOT NULL,
  `approved_by` int(100) DEFAULT NULL,
  `movement_id` int(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mileages`
--

INSERT INTO `mileages` (`id`, `truck_id`, `driver_id`, `route_id`, `fuel_rate`, `total_mileage`, `due_mileage`, `fuel_adjustment`, `reason`, `payment_status`, `status_approve`, `approved_by`, `movement_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '3', '100.00', '56700.00', '56700.00', NULL, NULL, 0, 0, NULL, NULL, 57, '2022-06-06 16:34:40', '2022-06-06 16:34:40'),
(2, '2', '2', '3', '100.00', '56700.00', '56700.00', NULL, NULL, 0, 0, NULL, NULL, 57, '2022-06-06 16:35:12', '2022-06-06 16:35:12'),
(3, '1', '1', '1', '125000.00', '125000000.00', '125000000.00', NULL, NULL, 0, 0, NULL, 1, 57, '2022-06-06 16:41:20', '2022-06-06 16:41:20'),
(4, '2', '2', '1', '125000.00', '125000000.00', '125000000.00', NULL, NULL, 0, 0, NULL, 2, 57, '2022-06-06 16:41:38', '2022-06-06 16:41:38'),
(5, '1', '1', '6', '125000.00', '58375000.00', '58375000.00', NULL, NULL, 0, 0, NULL, NULL, 57, '2022-06-09 16:30:15', '2022-06-09 16:30:15'),
(6, '1', '1', '6', '120000.00', '56040000.00', '56040000.00', NULL, NULL, 0, 0, NULL, NULL, 57, '2022-06-09 16:34:35', '2022-06-09 16:34:35'),
(7, '1', '2', '3', '125000.00', '70875000.00', '70875000.00', NULL, NULL, 0, 0, NULL, 1, 57, '2022-06-09 17:21:29', '2022-06-09 17:21:29'),
(8, '2', '3', '2', '125000.00', '125000000.00', '125000000.00', NULL, NULL, 0, 0, NULL, 2, 57, '2022-06-09 17:23:45', '2022-06-09 17:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `millage_payments`
--

CREATE TABLE `millage_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mileage_id` int(200) NOT NULL,
  `movement_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operators`
--

CREATE TABLE `operators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_codes` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_movements`
--

CREATE TABLE `order_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` int(11) NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `crop_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `tax` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL,
  `truck` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_date` date DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `fuel` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transport_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pacels`
--

CREATE TABLE `pacels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pacel_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pacel_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `owner_id` int(11) NOT NULL,
  `confirmation_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(20,2) NOT NULL,
  `route_id` int(100) DEFAULT NULL,
  `receiver_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docs` int(100) DEFAULT 0,
  `non_docs` int(100) DEFAULT 0,
  `bags` int(100) DEFAULT 0,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `tax` decimal(38,2) DEFAULT NULL,
  `due_amount` decimal(38,2) DEFAULT NULL,
  `discount` decimal(38,2) DEFAULT 0.00,
  `instructions` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `good_receive` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collected` int(200) DEFAULT 0,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pacels`
--

INSERT INTO `pacels` (`id`, `pacel_name`, `pacel_number`, `date`, `due_date`, `owner_id`, `confirmation_number`, `weight`, `route_id`, `receiver_name`, `docs`, `non_docs`, `bags`, `mobile`, `currency_code`, `exchange_rate`, `amount`, `tax`, `due_amount`, `discount`, `instructions`, `good_receive`, `status`, `collected`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Cements Transport Dangote', 'PCL-1', '2022-06-09', '2022-06-10', 1, 'PCL-cGyV1', '60000.00', NULL, '-', 0, 2, 0, '-', 'TZS', '1.00', '7451711.80', '1136701.80', '7451711.80', '0.00', '-', '1', '0', 1, 57, '2022-06-09 17:06:01', '2022-06-09 17:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `pacel_items`
--

CREATE TABLE `pacel_items` (
  `id` int(11) NOT NULL,
  `pacel_id` int(11) NOT NULL,
  `tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_tax` decimal(38,2) NOT NULL DEFAULT 0.00,
  `quantity` decimal(38,2) DEFAULT 0.00,
  `total_cost` decimal(38,2) NOT NULL DEFAULT 0.00,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(38,2) NOT NULL DEFAULT 0.00,
  `unit` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `charge_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `distance` decimal(20,3) NOT NULL,
  `items_id` int(11) DEFAULT 0,
  `order_no` int(11) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pacel_items`
--

INSERT INTO `pacel_items` (`id`, `pacel_id`, `tax_rate`, `total_tax`, `quantity`, `total_cost`, `item_name`, `price`, `unit`, `charge_type`, `distance`, `items_id`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1, '0.18', '411301.80', '1.00', '2285010.00', '3', '4030.00', 'Ton/km', 'Distance', '567.000', NULL, 0, 57, '2022-06-09 17:06:01', '2022-06-09 17:06:01'),
(2, 1, '0.18', '725400.00', '1.00', '4030000.00', '2', '4030.00', 'Ton/km', 'Distance', '1000.000', NULL, 1, 57, '2022-06-09 17:06:01', '2022-06-09 17:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `pacel_lists`
--

CREATE TABLE `pacel_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `unit` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pacel_payments`
--

CREATE TABLE `pacel_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pacel_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int(200) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parish_child`
--

CREATE TABLE `parish_child` (
  `parish_child_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` int(11) NOT NULL,
  `childName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childAge` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(100) NOT NULL,
  `payment_methode_id` int(100) NOT NULL,
  `trans_id` varchar(100) NOT NULL,
  `supplier_id` int(100) DEFAULT NULL,
  `client_id` int(100) DEFAULT NULL,
  `amount` int(100) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `purchase_id` int(100) NOT NULL,
  `invoice_id` int(100) DEFAULT NULL,
  `date` date NOT NULL,
  `updated_at` date DEFAULT current_timestamp(),
  `created_at` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methodes`
--

CREATE TABLE `payment_methodes` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_methodes`
--

INSERT INTO `payment_methodes` (`id`, `name`, `description`) VALUES
(1, 'Mobile Money', NULL),
(2, 'Cash', NULL),
(3, 'Bank', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `performances`
--

CREATE TABLE `performances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `effect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sys_module_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `sys_module_id`, `created_at`, `updated_at`) VALUES
(1, 'view-dashboard', 1, '2022-05-14 13:05:20', '2022-06-10 17:08:23'),
(2, 'edit-dashboard', 1, '2022-05-14 13:05:20', '2022-06-05 23:33:54'),
(3, 'delete-dashboard', 1, '2022-05-14 13:05:20', '2022-06-05 23:33:54'),
(4, 'add-dashboard', 1, '2022-05-14 13:05:20', '2022-06-05 23:33:54'),
(5, 'view-farmer', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(6, 'edit-farmer', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(7, 'delete-farmer', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(8, 'add-farmer', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(9, 'confirm-farmer', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(10, 'view-group', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(11, 'edit-group', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(12, 'delete-group', 2, '2022-05-14 13:05:20', '2022-05-25 16:06:50'),
(13, 'add-group', 2, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(14, 'confirm-group', 2, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(15, 'view-farmer-assets', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(16, 'edit-farmer-assets', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(17, 'delete-farmer-assets', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(18, 'add-farmer-assets', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(19, 'view-farming-cost', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(20, 'edit-farming-cost', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(21, 'delete-farming-cost', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(22, 'add-farming-cost', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(23, 'view-cost-centre', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(24, 'edit-cost-centre', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(25, 'delete-cost-centre', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(26, 'add-cost-centre', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(27, 'view-farming-process', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(28, 'edit-farming-process', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(29, 'delete-farming-process', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(30, 'add-farming-process', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(31, 'view-crop-monitoring', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(32, 'edit-crop-monitoring', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(33, 'delete-crop-monitoring', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(34, 'add-crop-monitoring', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(35, 'view-manage_seasson', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(36, 'edit-manage_seasson', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(37, 'delete-manage_seasson', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(38, 'add-manage_seasson', 3, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(39, 'view-order_list', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(40, 'edit-order_list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(41, 'delete-order_list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(42, 'add-order_list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(43, 'view-quotation-list', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(44, 'edit-quotation-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(45, 'delete-quotation-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(46, 'add-quotation-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(47, 'view-cargo-list', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(48, 'edit-cargo-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(49, 'delete-cargo-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(50, 'add-cargo-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(51, 'view-cargo-client-list', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(52, 'edit-cargo-client-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(53, 'delete-cargo-client-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(54, 'add-cargo-client-list', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(55, 'view-cargo-quotation', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(56, 'edit-cargo-quotation', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(57, 'delete-cargo-quotation', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(58, 'add-cargo-quotation', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(59, 'view-cargo-invoice', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(60, 'edit-cargo-invoice', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(61, 'delete-cargo-invoice', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(62, 'add-cargo-invoice', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(63, 'view-cargo-mileage', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(64, 'edit-cargo-mileage', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(65, 'delete-cargo-mileage', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(66, 'add-cargo-mileage', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(67, 'view-cargo-collection', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(68, 'edit-cargo-collection', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(69, 'delete-cargo-collection', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(70, 'add-cargo-collection', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(71, 'view-cargo-loading', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(72, 'edit-cargo-loading', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(73, 'delete-cargo-loading', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(74, 'add-cargo-loading', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(75, 'view-cargo-offloading', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(76, 'edit-cargo-offloading', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(77, 'delete-cargo-offloading', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(78, 'add-cargo-offloading', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(79, 'view-cargo-delivering', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(80, 'edit-cargo-delivering', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(81, 'delete-cargo-delivering', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(82, 'add-cargo-delivering', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(83, 'view-cargo-activity', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(84, 'edit-cargo-activity', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(85, 'delete-cargo-activity', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(86, 'add-cargo-activity', 4, '2022-05-14 13:05:21', '2022-06-02 10:05:51'),
(87, 'view-cargo-order_report', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(88, 'edit-cargo-order_report', 4, '2022-05-14 13:05:21', '2022-05-23 22:49:33'),
(89, 'delete-cargo-order_report', 4, '2022-05-14 13:05:21', '2022-05-23 22:49:33'),
(90, 'add-cargo-order_report', 4, '2022-05-14 13:05:21', '2022-05-23 22:49:33'),
(91, 'view-cargo-truck_mileage', 4, '2022-05-14 13:05:21', '2022-06-05 23:33:54'),
(92, 'edit-cargo-truck_mileage', 4, '2022-05-14 13:05:21', '2022-05-23 22:49:33'),
(93, 'delete-cargo-truck_mileage', 4, '2022-05-14 13:05:21', '2022-05-23 22:49:33'),
(94, 'add-cargo-truck_mileage', 4, '2022-05-14 13:05:21', '2022-05-23 22:49:33'),
(95, 'view-warehouse', 5, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(96, 'edit-warehouse', 5, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(97, 'delete-warehouse', 5, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(98, 'add-warehouse', 5, '2022-05-14 13:05:21', '2022-05-25 16:06:50'),
(99, 'view-supplier', 6, '2022-05-14 13:05:21', '2022-06-05 23:30:41'),
(100, 'edit-supplier', 6, '2022-05-14 13:05:21', '2022-05-14 13:05:21'),
(101, 'delete-supplier', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(102, 'add-supplier', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(103, 'view-product', 6, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(104, 'edit-product', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(105, 'delete-product', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(106, 'add-product', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(107, 'view-purchase', 6, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(108, 'edit-purchase', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(109, 'delete-purchase', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(110, 'add-purchase', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(111, 'view-sales', 6, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(112, 'edit-sales', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(113, 'delete-sales', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(114, 'add-sales', 6, '2022-05-14 13:05:22', '2022-05-14 13:05:22'),
(115, 'view-roles', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(116, 'add-roles', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(117, 'edit-roles', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(118, 'delete-roles', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(119, 'view-permission', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(120, 'add-permission', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(121, 'edit-permission', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(122, 'delete-permission', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(123, 'view-user', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(124, 'add-user', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(125, 'edit-user', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(126, 'delete-user', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(127, 'view-dashboard', 7, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(128, 'view-courier_list', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(129, 'add-courier_list', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(130, 'edit-courier_list', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(131, 'delete-courier_list', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(132, 'view-courier_quotation', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(133, 'add-courier_quotation', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(134, 'edit-courier_quotation', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(135, 'delete-courier_quotation', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(136, 'view-courier_invoice', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(137, 'add-courier_invoice', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(138, 'edit-courier_invoice', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(139, 'delete-courier_invoice', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(140, 'view-courier_collection', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(141, 'add-courier_collection', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(142, 'edit-courier_collection', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(143, 'delete-courier_collection', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(144, 'view-courier_loading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(145, 'add-courier_loading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(146, 'edit-courier_loading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(147, 'delete-courier_loading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(148, 'view-courier_offloading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(149, 'add-courier_offloading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(150, 'edit-courier_offloading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(151, 'delete-courier_offloading', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(152, 'view-courier_delivering', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(153, 'add-courier_delivering', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(154, 'edit-courier_delivering', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(155, 'delete-courier_delivering', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(156, 'view-courier_activity', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(157, 'add-courier_activity', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(158, 'edit-courier_activity', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(159, 'delete-courier_activity', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(160, 'view-courier_report', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(161, 'add-courier_report', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(162, 'edit-courier_report', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(163, 'delete-courier_report', 17, '2022-05-14 13:05:22', '2022-06-02 10:05:51'),
(164, 'view-salary_template', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(165, 'add-salary_template', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(166, 'edit-salary_template', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(167, 'delete-salary_template', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(168, 'view-manage_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(169, 'add-manage_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(170, 'edit-manage_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(171, 'delete-manage_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(172, 'view-employee_salary_list', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(173, 'add-employee_salary_list', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(174, 'edit-employee_salary_list', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(175, 'delete-employee_salary_list', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(176, 'view-make_payment', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(177, 'add-make_payment', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(178, 'edit-make_payment', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(179, 'delete-make_payment', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(180, 'view-generate_payslip', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(181, 'add-generate_payslip', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(182, 'edit-generate_payslip', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(183, 'delete-generate_payslip', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(184, 'view-payroll_summary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(185, 'add-payroll_summary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(186, 'edit-payroll_summary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(187, 'delete-payroll_summary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(188, 'view-advance_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(189, 'add-advance_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(190, 'edit-advance_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(191, 'delete-advance_salary', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(192, 'view-employee_loan', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(193, 'add-employee_loan', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(194, 'edit-employee_loan', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(195, 'delete-employee_loan', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(196, 'view-overtime', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(197, 'add-overtime', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(198, 'edit-overtime', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(199, 'delete-overtime', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(200, 'view-nssf', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(201, 'add-nssf', 16, '2022-05-14 13:05:22', '2022-06-10 17:08:23'),
(202, 'edit-nssf', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(203, 'delete-nssf', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(204, 'view-tax', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(205, 'add-tax', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(206, 'edit-tax', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(207, 'delete-tax', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(208, 'view-nhif', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(209, 'add-nhif', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(210, 'edit-nhif', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(211, 'delete-nhif', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(212, 'view-wcf', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(213, 'add-wcf', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(214, 'edit-wcf', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(215, 'delete-wcf', 16, '2022-05-14 13:05:23', '2022-06-10 17:08:23'),
(216, 'view-leave', 12, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(217, 'add-leave', 12, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(218, 'edit-leave', 12, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(219, 'delete-leave', 12, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(220, 'view-training', 13, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(221, 'add-training', 13, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(222, 'edit-training', 13, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(223, 'delete-training', 13, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(224, 'view-truck', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(225, 'add-truck', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(226, 'edit-truck', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(227, 'delete-truck', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(228, 'view-driver', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(229, 'add-driver', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(230, 'edit-driver', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(231, 'delete-driver', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(232, 'view-fuel', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(233, 'add-fuel', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(234, 'edit-fuel', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(235, 'delete-fuel', 15, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(236, 'view-tyre_brand', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(237, 'add-tyre_brand', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(238, 'edit-tyre_brand', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(239, 'delete-tyre_brand', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(240, 'view-purchase_tyre', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(241, 'add-purchase_tyre', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(242, 'edit-purchase_tyre', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(243, 'delete-purchase_tyre', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(244, 'view-tyre_list', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(245, 'add-tyre_list', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(246, 'edit-tyre_list', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(247, 'delete-tyre_list', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(248, 'view-assign_truck', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(249, 'add-assign_truck', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(250, 'edit-assign_truck', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(251, 'delete-assign_truck', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(252, 'view-tyre_return', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(253, 'add-tyre_return', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(254, 'edit-tyre_return', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(255, 'delete-tyre_return', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(256, 'view-tyre_reallocation', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(257, 'add-tyre_reallocation', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(258, 'edit-tyre_reallocation', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(259, 'delete-tyre_reallocation', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(260, 'view-tyre_disposal', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(261, 'add-tyre_disposal', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(262, 'edit-tyre_disposal', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(263, 'delete-tyre_disposal', 14, '2022-05-14 13:05:23', '2022-05-23 22:49:33'),
(264, 'view-location', 14, '2022-05-14 13:05:23', '2022-06-05 23:33:54'),
(265, 'add-location', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(266, 'edit-location', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(267, 'delete-location', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(268, 'view-inventory', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(269, 'add-inventory', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(270, 'edit-inventory', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(271, 'delete-inventory', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(272, 'view-fieldstaff', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(273, 'add-fieldstaff', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(274, 'edit-fieldstaff', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(275, 'delete-fieldstaff', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(276, 'view-purchase_inventory', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(277, 'add-purchase_inventory', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(278, 'edit-purchase_inventory', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(279, 'delete-purchase_inventory', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(280, 'view-inventory_list', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(281, 'add-inventory_list', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(282, 'edit-inventory_list', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(283, 'delete-inventory_list', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(284, 'view-maintainance', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(285, 'add-maintainance', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(286, 'edit-maintainance', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(287, 'delete-maintainance', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(288, 'view-service', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(289, 'add-service', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(290, 'edit-service', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(291, 'delete-service', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(292, 'view-good_issue', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(293, 'add-good_issue', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(294, 'edit-good_issue', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(295, 'delete-good_issue', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(296, 'view-good_return', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(297, 'add-good_return', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(298, 'edit-good_return', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(299, 'delete-good_return', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(300, 'view-good_movement', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(301, 'add-good_movement', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(302, 'edit-good_movement', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(303, 'delete-good_movement', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(304, 'view-good_reallocation', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(305, 'add-good_reallocation', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(306, 'edit-good_reallocation', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(307, 'delete-good_reallocation', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(308, 'view-good_disposal', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(309, 'add-good_disposal', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(310, 'edit-good_disposal', 14, '2022-05-14 13:05:24', '2022-05-23 22:49:33'),
(311, 'delete-good_disposal', 14, '2022-05-14 13:05:24', '2022-06-05 23:33:54'),
(312, 'view-deposit', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(313, 'add-deposit', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(314, 'edit-deposit', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(315, 'delete-deposit', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(316, 'view-expenses', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(317, 'add-expenses', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(318, 'edit-expenses', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(319, 'delete-expenses', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(320, 'view-bank_statement', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(321, 'add-bank_statement', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(322, 'edit-bank_statement', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(323, 'delete-bank_statement', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(324, 'view-bank_reconciliation', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(325, 'add-bank_reconciliation', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(326, 'edit-bank_reconciliation', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(327, 'delete-bank_reconciliation', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(328, 'view-reconciliation_report', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(329, 'add-reconciliation_report', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(330, 'edit-reconciliation_report', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(331, 'delete-reconciliation_report', 11, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(332, 'view-class_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(333, 'add-class_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(334, 'edit-class_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(335, 'delete-class_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(336, 'view-group_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(337, 'add-group_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(338, 'edit-group_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(339, 'delete-group_account', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(340, 'view-account_codes', 10, '2022-05-14 13:05:24', '2022-06-10 17:08:23'),
(341, 'add-account_codes', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(342, 'edit-account_codes', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(343, 'delete-account_codes', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(344, 'view-chart_of_account', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(345, 'add-chart_of_account', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(346, 'edit-chart_of_account', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(347, 'delete-chart_of_account', 10, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(348, 'view-manual_entry', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(349, 'add-manual_entry', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(350, 'edit-manual_entry', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(351, 'delete-manual_entry', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(352, 'view-journal', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(353, 'add-journal', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(354, 'edit-journal', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(355, 'delete-journal', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(356, 'view-ledger', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(357, 'add-ledger', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(358, 'edit-ledger', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(359, 'delete-ledger', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(360, 'view-trial_balance', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(361, 'add-trial_balance', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(362, 'edit-trial_balance', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(363, 'delete-trial_balance', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(364, 'view-income_statement', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(365, 'add-income_statement', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(366, 'edit-income_statement', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(367, 'delete-income_statement', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(368, 'view-balance_sheet', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(369, 'add-balance_sheet', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(370, 'edit-balance_sheet', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(371, 'delete-balance_sheet', 9, '2022-05-14 13:05:25', '2022-06-10 17:08:23'),
(372, 'view-courier_client', 17, '2022-05-14 14:10:51', '2022-06-02 10:05:51'),
(373, 'add-courier_clientn', 17, '2022-05-14 14:10:51', '2022-05-14 14:10:51'),
(374, 'edit-courier_client', 17, '2022-05-14 14:10:51', '2022-05-14 14:10:51'),
(375, 'delete-courier_client', 17, '2022-05-14 14:10:51', '2022-05-14 14:10:51'),
(376, 'approve-payment', 16, '2022-05-15 10:50:09', '2022-06-10 17:08:23'),
(377, 'view-transfer', 11, '2022-05-16 08:23:49', '2022-06-10 17:08:23'),
(378, 'add-transfer', 11, '2022-05-16 08:24:16', '2022-06-10 17:08:23'),
(379, 'edit-transfer', 11, '2022-05-16 08:25:11', '2022-06-10 17:08:23'),
(380, 'delete-transfer', 11, '2022-05-16 08:26:12', '2022-06-10 17:08:23'),
(381, 'view-top-up-operator', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(382, 'add-top-up-operator', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(383, 'edit-top-up-operator', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(384, 'delete-top-up-operator', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(385, 'view-center', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(386, 'add-center', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(387, 'edit-center', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(388, 'delete-center', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(389, 'view-operator', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(390, 'add-operator', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(391, 'edit-operator', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(392, 'delete-operator', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(393, 'view-top-up-center', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(394, 'add-top-up-center', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(395, 'edit-top-up-center', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(396, 'delete-top-up-center', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(397, 'view-reverse-top-up-center', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(398, 'add-reverse-top-up-center', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(399, 'edit-reverse-top-up-center', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(400, 'delete-reverse-top-up-center', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(401, 'view-reverse-top-up-operator', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(402, 'add-reverse-top-up-operator', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(403, 'edit-reverse-top-up-operator', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(404, 'delete-reverse-top-up-operator', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(405, 'view-stock-report', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(406, 'add-stock-report', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(407, 'edit-stock-report', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(408, 'delete-stock-report', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(409, 'view-items', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(410, 'add-items', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(411, 'edit-items', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(412, 'delete-items', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(413, 'view-cotton-purchase', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(414, 'add-cotton-purchase', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(415, 'edit-cotton-purchase', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(416, 'delete-cotton-purchase', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(417, 'view-cotton-movement', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(418, 'add-cotton-movement', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(419, 'edit-cotton-movement', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(420, 'delete-cotton-movement', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(421, 'view-center-report', 18, '2022-05-16 08:57:27', '2022-06-03 11:19:52'),
(422, 'add-center-report', 18, '2022-05-16 08:57:50', '2022-06-03 11:19:52'),
(423, 'edit-center-report', 18, '2022-05-16 08:58:14', '2022-06-03 11:19:52'),
(424, 'delete-center-report', 18, '2022-05-16 08:58:37', '2022-06-03 11:19:52'),
(425, 'view-connect', 15, '2022-05-20 16:36:15', '2022-06-05 23:33:54'),
(426, 'view-cargo-wb', 4, '2022-05-20 23:17:51', '2022-06-05 23:33:54'),
(427, 'view-levy-report', 18, '2022-05-24 23:03:54', '2022-06-03 11:19:52'),
(428, 'view-district', 18, '2022-05-25 10:19:25', '2022-06-03 11:19:52'),
(430, 'add-district', 18, '2022-05-25 10:24:44', '2022-06-03 11:19:52'),
(431, 'edit-district', 18, '2022-05-25 10:25:10', '2022-06-03 11:19:52'),
(432, 'delete-district', 18, '2022-05-25 10:25:33', '2022-06-03 11:19:52'),
(433, 'view-cotton-invoice', 18, '2022-05-25 14:53:49', '2022-06-03 11:19:52'),
(434, 'add-cotton-invoice', 18, '2022-05-25 14:55:54', '2022-06-03 11:19:52'),
(435, 'edit-cotton-invoice', 18, '2022-05-25 14:56:26', '2022-06-03 11:19:52'),
(436, 'delete-cotton-invoice', 18, '2022-05-25 14:56:56', '2022-06-03 11:19:52'),
(437, 'view-seed-invoice', 18, '2022-05-25 14:57:38', '2022-06-03 11:19:52'),
(438, 'add-seed-invoice', 18, '2022-05-25 14:58:19', '2022-06-03 11:19:52'),
(439, 'edit-seed-invoice', 18, '2022-05-25 14:58:41', '2022-06-03 11:19:52'),
(440, 'delete-seed-invoice', 18, '2022-05-25 14:59:02', '2022-06-03 11:19:52'),
(441, 'view-cotton-client', 18, '2022-05-25 14:57:38', '2022-06-03 11:19:52'),
(442, 'add-cotton-client', 18, '2022-05-25 14:58:19', '2022-06-03 11:19:52'),
(443, 'edit-cotton-client', 18, '2022-05-25 14:58:41', '2022-06-03 11:19:52'),
(444, 'delete-cotton-client', 18, '2022-05-25 14:59:02', '2022-06-03 11:19:52'),
(445, 'edit-date', 7, '2022-05-14 13:05:22', '2022-05-31 12:28:36'),
(446, 'view-invoice-report', 18, '2022-06-03 11:16:06', '2022-06-03 11:19:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 19, 'Personal Access Token', 'a0c7f4814a23b4cb7cac974c2dc20776be25968eb60c658e0eff6236a52fd83e', '[\"*\"]', NULL, '2022-05-04 13:07:25', '2022-05-04 13:07:25'),
(2, 'App\\Models\\User', 19, 'Personal Access Token', '886a9f9d5757399b607a5e30c5ef2a8c0905e99cc9f3b7c9326d9fc72ef6b421', '[\"*\"]', '2022-05-04 13:32:17', '2022-05-04 13:08:30', '2022-05-04 13:32:17'),
(3, 'App\\Models\\User', 19, 'Personal Access Token', '53111ba6c07c1c0202a35372db7a36b7312ef658fb3da2337be0af2af78f3576', '[\"*\"]', '2022-05-04 14:51:32', '2022-05-04 14:35:57', '2022-05-04 14:51:32'),
(4, 'App\\Models\\User', 19, 'Personal Access Token', 'a2f235408396dbd71a0e44933416a41e43d8280ef24f1b0146e361731ca1ff31', '[\"*\"]', '2022-05-07 15:43:47', '2022-05-07 15:41:45', '2022-05-07 15:43:47'),
(5, 'App\\Models\\User', 19, 'Personal Access Token', '9a32a3c164040f7386bbad354985de91e64b770170bb94eb82489c17e99699c2', '[\"*\"]', '2022-05-07 15:48:00', '2022-05-07 15:46:34', '2022-05-07 15:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `unit` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buyprice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellprice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `projectNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `billingType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimateHour` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `demoUrl` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subCompany` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_cotton`
--

CREATE TABLE `purchase_cotton` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(100) NOT NULL,
  `item_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(20,2) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `tax_rate` decimal(20,2) DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_amount` decimal(20,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `purchase_tax` decimal(20,2) NOT NULL,
  `exchange_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'TZS',
  `exchange_rate` decimal(8,2) DEFAULT 1.00,
  `status` int(11) NOT NULL,
  `good_receive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_inventories`
--

CREATE TABLE `purchase_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(8,2) NOT NULL,
  `purchase_amount` decimal(20,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `purchase_tax` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL,
  `good_receive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_inventories`
--

INSERT INTO `purchase_inventories` (`id`, `reference_no`, `supplier_id`, `purchase_date`, `due_date`, `location`, `exchange_code`, `exchange_rate`, `purchase_amount`, `due_amount`, `purchase_tax`, `status`, `good_receive`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'PUR_INV-1-2022-06-07', '2', '2022-06-07', '2022-06-11', '1', 'TZS', '1.00', '2300000.00', '2714000.00', '414000.00', 1, '1', 57, '2022-06-07 14:19:55', '2022-06-07 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item_cotton`
--

CREATE TABLE `purchase_item_cotton` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(8,2) NOT NULL,
  `total_tax` decimal(8,2) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `total_cost` decimal(8,2) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item_inventories`
--

CREATE TABLE `purchase_item_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(8,2) NOT NULL,
  `total_tax` decimal(8,2) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `total_cost` decimal(8,2) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_item_inventories`
--

INSERT INTO `purchase_item_inventories` (`id`, `purchase_id`, `item_name`, `tax_rate`, `total_tax`, `quantity`, `total_cost`, `price`, `unit`, `items_id`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '0.18', '414000.00', '10.00', '999999.99', '230000.00', 'pc', 1, 0, 57, '2022-06-07 14:19:55', '2022-06-07 15:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_item_tyres`
--

CREATE TABLE `purchase_item_tyres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(8,2) NOT NULL,
  `total_tax` decimal(38,2) NOT NULL,
  `quantity` decimal(38,2) NOT NULL,
  `total_cost` decimal(38,2) NOT NULL,
  `price` decimal(38,2) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_item_tyres`
--

INSERT INTO `purchase_item_tyres` (`id`, `purchase_id`, `item_name`, `tax_rate`, `total_tax`, `quantity`, `total_cost`, `price`, `unit`, `items_id`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '0.18', '180000.00', '4.00', '1000000.00', '250000.00', 'pc', 1, 0, 57, '2022-06-07 15:33:36', '2022-06-08 22:44:04'),
(2, '2', '1', '0.18', '360000.00', '8.00', '2000000.00', '250000.00', 'pc', 1, 0, 57, '2022-06-08 22:36:24', '2022-06-08 22:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_tyres`
--

CREATE TABLE `purchase_tyres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(8,2) NOT NULL,
  `purchase_amount` decimal(38,2) NOT NULL,
  `due_amount` decimal(38,2) NOT NULL,
  `purchase_tax` decimal(38,2) NOT NULL,
  `status` int(11) NOT NULL,
  `good_receive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_tyres`
--

INSERT INTO `purchase_tyres` (`id`, `reference_no`, `supplier_id`, `purchase_date`, `due_date`, `location`, `exchange_code`, `exchange_rate`, `purchase_amount`, `due_amount`, `purchase_tax`, `status`, `good_receive`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'PUR_TYRE_1_2022-06-07', '2', '2022-06-07', '2022-06-15', '1', 'TZS', '1.00', '1000000.00', '1180000.00', '180000.00', 1, '1', 57, '2022-06-07 15:33:36', '2022-06-08 22:44:04'),
(2, 'PUR_TYRE_2_2022-06-07', '1', '2022-06-07', '2022-06-30', '1', 'TZS', '1.00', '2000000.00', '2360000.00', '360000.00', 1, '1', 57, '2022-06-08 22:36:24', '2022-06-08 22:45:11');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_costs`
--

CREATE TABLE `quotation_costs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refills`
--

CREATE TABLE `refills` (
  `id` int(200) NOT NULL,
  `truck` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `fuel_id` varchar(200) NOT NULL,
  `litres` decimal(20,2) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `account_id` int(200) DEFAULT NULL,
  `payment_type` varchar(200) NOT NULL,
  `total_cost` decimal(20,2) NOT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `refills`
--

INSERT INTO `refills` (`id`, `truck`, `route`, `fuel_id`, `litres`, `price`, `supplier`, `account_id`, `payment_type`, `total_cost`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '1', '168.00', '3131.00', NULL, NULL, 'credit', '526008.00', 57, '2022-06-06 16:27:17', '2022-06-06 16:27:17'),
(2, '2', '3', '2', '168.00', '3131.00', NULL, NULL, 'credit', '526008.00', 57, '2022-06-06 16:28:23', '2022-06-06 16:28:23'),
(3, '1', '6', '7', '200.00', '3100.00', NULL, 2, 'cash', '620000.00', 57, '2022-06-09 16:36:09', '2022-06-09 16:36:09'),
(4, '2', '2', '10', '250.00', '3100.00', NULL, NULL, 'credit', '775000.00', 57, '2022-06-09 17:45:54', '2022-06-09 17:45:54'),
(5, '2', '2', '10', '200.00', '3115.00', NULL, 2, 'cash', '623000.00', 57, '2022-06-09 17:46:58', '2022-06-09 17:46:58'),
(6, '2', '2', '10', '80.00', '3200.00', NULL, NULL, 'credit', '256000.00', 57, '2022-06-09 17:49:05', '2022-06-09 17:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `zone_id`, `name`, `deleted_at`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 0, 'Arusha', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(2, 0, 'Dar es Salaam', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(3, 0, 'Dodoma', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(4, 0, 'Geita', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(5, 0, 'Iringa', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(6, 0, 'Kagera', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(7, 0, 'Katavi', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(8, 0, 'Kigoma', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(9, 0, 'Kilimanjaro', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(10, 0, 'Lindi', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(11, 0, 'Manyara', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(12, 0, 'Mara', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(13, 0, 'Mbeya', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(14, 0, 'Morogoro', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(15, 0, 'Mtwara', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(16, 0, 'Mwanza', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(17, 0, 'Njombe', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(18, 0, 'Pwani', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(19, 0, 'Rukwa', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(20, 0, 'Ruvuma', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(21, 0, 'Shinyanga', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(22, 0, 'Simiyu', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(23, 0, 'Singida', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(24, 0, 'Songwe', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(25, 0, 'Tabora', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(26, 0, 'Tanga', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(27, 0, 'UNG', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(28, 0, 'UNG', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(29, 0, 'PEM', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(30, 0, 'PEM', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(31, 0, 'UNG', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1),
(32, 0, 'Other', NULL, '2022-04-12 01:37:25', '2022-04-12 01:37:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reversed_assign_center`
--

CREATE TABLE `reversed_assign_center` (
  `id` int(11) NOT NULL,
  `driver_id` int(110) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `reference` varchar(200) DEFAULT NULL,
  `assign_id` int(200) NOT NULL,
  `assign_reference` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=pending,1=approved,2=completed',
  `notes` text DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(200) DEFAULT 'Reversed Assign Driver',
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reversed_assign_driver`
--

CREATE TABLE `reversed_assign_driver` (
  `id` int(11) NOT NULL,
  `driver_id` int(110) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `reference` varchar(200) DEFAULT NULL,
  `assign_id` int(200) NOT NULL,
  `assign_reference` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=pending,1=approved,2=completed',
  `notes` text DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(200) DEFAULT 'Reversed Assign Driver',
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reversed_top_up_center`
--

CREATE TABLE `reversed_top_up_center` (
  `id` int(11) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `top_up_id` int(200) NOT NULL,
  `top_up_reference` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=pending,1=approved,2=completed',
  `notes` text DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(20) DEFAULT 'Top Up',
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reversed_top_up_operator`
--

CREATE TABLE `reversed_top_up_operator` (
  `id` int(11) NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT '0' COMMENT '0=pending,1=approved,2=completed',
  `notes` text DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(20) DEFAULT 'Reversed Top Up',
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `top_up_id` int(200) NOT NULL,
  `top_up_reference` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'superAdmin', 1, '2021-12-04 17:17:50', '2021-12-04 17:17:50'),
(13, 'Logistic', 1, '2022-03-15 13:48:14', '2022-03-15 13:48:14'),
(25, 'driver', 24, '2022-03-22 09:42:31', '2022-03-22 09:42:31'),
(26, 'shopkeer', 23, '2022-03-22 09:53:48', '2022-03-22 09:53:48'),
(28, 'accountant', 40, '2022-04-30 16:07:15', '2022-04-30 16:07:15'),
(31, 'HR', 1, '2022-05-07 20:29:52', '2022-05-07 20:29:52'),
(32, 'Test', 19, '2022-05-09 12:33:36', '2022-05-09 12:33:36'),
(33, 'Inventory', 1, '2022-05-10 15:54:55', '2022-05-10 15:54:55'),
(34, 'Courier-Systems', 1, '2022-05-12 15:50:31', '2022-05-12 15:50:31'),
(35, 'Gaki-Investment-Co.-Ltd', 1, '2022-05-16 08:38:59', '2022-05-27 17:28:20'),
(37, 'Gaki-Logistic-Co-Ltd', 1, '2022-05-27 17:34:40', '2022-06-02 10:01:47'),
(38, 'accountant2', 1, '2022-05-30 21:47:18', '2022-05-30 21:47:18'),
(39, 'Accountant', 57, '2022-06-09 16:06:31', '2022-06-09 16:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 115),
(1, 119),
(1, 123),
(1, 127),
(1, 224),
(1, 225),
(1, 226),
(1, 227),
(1, 228),
(1, 229),
(1, 230),
(1, 231),
(1, 232),
(1, 233),
(1, 234),
(1, 235),
(1, 312),
(1, 316),
(1, 320),
(1, 324),
(1, 328),
(1, 332),
(1, 336),
(1, 340),
(1, 344),
(1, 348),
(1, 352),
(1, 356),
(1, 360),
(1, 364),
(1, 368),
(1, 377),
(1, 378),
(1, 379),
(1, 380),
(1, 381),
(1, 382),
(1, 383),
(1, 384),
(1, 385),
(1, 386),
(1, 387),
(1, 388),
(1, 389),
(1, 390),
(1, 391),
(1, 392),
(1, 393),
(1, 394),
(1, 395),
(1, 396),
(1, 397),
(1, 398),
(1, 399),
(1, 400),
(1, 401),
(1, 402),
(1, 403),
(1, 404),
(1, 405),
(1, 406),
(1, 407),
(1, 408),
(1, 409),
(1, 410),
(1, 411),
(1, 412),
(1, 413),
(1, 414),
(1, 415),
(1, 416),
(1, 417),
(1, 418),
(1, 419),
(1, 420),
(1, 421),
(1, 422),
(1, 423),
(1, 424),
(1, 425),
(1, 427),
(1, 428),
(1, 430),
(1, 431),
(1, 432),
(1, 433),
(1, 434),
(1, 435),
(1, 436),
(1, 437),
(1, 438),
(1, 439),
(1, 440),
(1, 441),
(1, 442),
(1, 443),
(1, 444),
(1, 446),
(13, 1),
(13, 115),
(13, 116),
(13, 117),
(13, 118),
(13, 119),
(13, 120),
(13, 121),
(13, 122),
(13, 123),
(13, 124),
(13, 125),
(13, 126),
(13, 127),
(13, 164),
(13, 165),
(13, 166),
(13, 167),
(13, 168),
(13, 169),
(13, 170),
(13, 171),
(13, 172),
(13, 173),
(13, 174),
(13, 175),
(13, 176),
(13, 177),
(13, 178),
(13, 179),
(13, 180),
(13, 181),
(13, 182),
(13, 183),
(13, 184),
(13, 185),
(13, 186),
(13, 187),
(13, 188),
(13, 189),
(13, 190),
(13, 191),
(13, 192),
(13, 193),
(13, 194),
(13, 195),
(13, 196),
(13, 197),
(13, 198),
(13, 199),
(13, 200),
(13, 201),
(13, 202),
(13, 203),
(13, 204),
(13, 205),
(13, 206),
(13, 207),
(13, 208),
(13, 209),
(13, 210),
(13, 211),
(13, 212),
(13, 213),
(13, 214),
(13, 215),
(13, 312),
(13, 313),
(13, 314),
(13, 315),
(13, 316),
(13, 317),
(13, 318),
(13, 319),
(13, 320),
(13, 321),
(13, 322),
(13, 323),
(13, 324),
(13, 325),
(13, 326),
(13, 327),
(13, 328),
(13, 329),
(13, 330),
(13, 331),
(13, 332),
(13, 333),
(13, 334),
(13, 335),
(13, 336),
(13, 337),
(13, 338),
(13, 339),
(13, 340),
(13, 341),
(13, 342),
(13, 343),
(13, 344),
(13, 345),
(13, 346),
(13, 347),
(13, 348),
(13, 349),
(13, 350),
(13, 351),
(13, 352),
(13, 353),
(13, 354),
(13, 355),
(13, 356),
(13, 357),
(13, 358),
(13, 359),
(13, 360),
(13, 361),
(13, 362),
(13, 363),
(13, 364),
(13, 365),
(13, 366),
(13, 367),
(13, 368),
(13, 369),
(13, 370),
(13, 371),
(13, 376),
(13, 377),
(13, 378),
(13, 379),
(13, 380),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(14, 6),
(14, 7),
(14, 8),
(14, 9),
(14, 10),
(14, 11),
(14, 12),
(14, 13),
(14, 14),
(14, 15),
(14, 16),
(14, 17),
(14, 18),
(14, 19),
(14, 20),
(14, 21),
(14, 22),
(14, 23),
(14, 24),
(14, 25),
(14, 26),
(14, 27),
(14, 28),
(14, 29),
(14, 30),
(14, 31),
(14, 32),
(14, 33),
(14, 34),
(14, 35),
(14, 36),
(14, 37),
(14, 38),
(14, 67),
(14, 68),
(14, 69),
(14, 70),
(14, 71),
(14, 72),
(14, 73),
(14, 74),
(14, 75),
(14, 76),
(14, 77),
(14, 78),
(14, 79),
(14, 80),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(15, 6),
(15, 7),
(15, 8),
(15, 9),
(15, 10),
(15, 11),
(15, 12),
(15, 13),
(15, 14),
(15, 15),
(15, 16),
(15, 17),
(15, 18),
(15, 19),
(15, 20),
(15, 21),
(15, 22),
(15, 23),
(15, 24),
(15, 25),
(15, 26),
(15, 27),
(15, 28),
(15, 29),
(15, 30),
(15, 31),
(15, 32),
(15, 33),
(15, 34),
(15, 35),
(15, 36),
(15, 37),
(15, 38),
(15, 83),
(16, 5),
(16, 6),
(16, 7),
(16, 8),
(16, 9),
(16, 10),
(16, 11),
(16, 39),
(16, 40),
(16, 41),
(16, 42),
(16, 43),
(16, 44),
(16, 45),
(16, 46),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(17, 39),
(17, 40),
(17, 41),
(17, 42),
(17, 43),
(17, 44),
(17, 45),
(17, 46),
(17, 47),
(17, 48),
(17, 49),
(17, 50),
(17, 67),
(17, 68),
(17, 69),
(17, 70),
(17, 71),
(17, 72),
(17, 73),
(17, 74),
(17, 75),
(17, 76),
(17, 77),
(17, 78),
(17, 79),
(17, 80),
(17, 83),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(23, 11),
(23, 12),
(23, 13),
(23, 14),
(23, 51),
(23, 52),
(23, 53),
(23, 54),
(23, 55),
(23, 56),
(23, 57),
(23, 58),
(23, 59),
(23, 60),
(23, 61),
(23, 62),
(23, 63),
(23, 64),
(23, 65),
(23, 66),
(23, 67),
(23, 68),
(23, 69),
(23, 70),
(23, 71),
(23, 72),
(23, 73),
(23, 74),
(23, 75),
(23, 76),
(23, 77),
(23, 78),
(23, 79),
(23, 80),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 39),
(24, 40),
(24, 41),
(24, 42),
(24, 43),
(24, 44),
(24, 45),
(24, 46),
(28, 1),
(28, 39),
(28, 40),
(28, 41),
(28, 42),
(28, 43),
(28, 44),
(28, 45),
(28, 46),
(28, 85),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(31, 75),
(31, 76),
(31, 77),
(31, 78),
(31, 84),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(32, 39),
(32, 40),
(32, 41),
(32, 42),
(32, 43),
(32, 44),
(32, 45),
(32, 46),
(32, 47),
(32, 48),
(32, 49),
(32, 50),
(32, 51),
(32, 52),
(32, 53),
(32, 54),
(32, 55),
(32, 56),
(32, 57),
(32, 58),
(32, 59),
(32, 60),
(32, 61),
(32, 62),
(32, 63),
(32, 64),
(32, 65),
(32, 66),
(32, 75),
(32, 76),
(32, 77),
(32, 78),
(32, 79),
(32, 80),
(32, 81),
(32, 82),
(32, 83),
(33, 83),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(34, 84),
(34, 85),
(34, 86),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(35, 115),
(35, 116),
(35, 117),
(35, 118),
(35, 119),
(35, 120),
(35, 123),
(35, 124),
(35, 125),
(35, 126),
(35, 127),
(35, 224),
(35, 225),
(35, 226),
(35, 227),
(35, 228),
(35, 229),
(35, 230),
(35, 231),
(35, 232),
(35, 233),
(35, 234),
(35, 235),
(35, 312),
(35, 313),
(35, 314),
(35, 315),
(35, 316),
(35, 317),
(35, 318),
(35, 319),
(35, 320),
(35, 321),
(35, 322),
(35, 323),
(35, 324),
(35, 325),
(35, 326),
(35, 327),
(35, 328),
(35, 329),
(35, 330),
(35, 331),
(35, 332),
(35, 333),
(35, 334),
(35, 335),
(35, 336),
(35, 337),
(35, 338),
(35, 339),
(35, 340),
(35, 341),
(35, 342),
(35, 343),
(35, 344),
(35, 345),
(35, 346),
(35, 348),
(35, 349),
(35, 350),
(35, 351),
(35, 352),
(35, 353),
(35, 354),
(35, 355),
(35, 356),
(35, 357),
(35, 358),
(35, 359),
(35, 360),
(35, 361),
(35, 362),
(35, 363),
(35, 364),
(35, 365),
(35, 366),
(35, 367),
(35, 368),
(35, 369),
(35, 370),
(35, 371),
(35, 377),
(35, 378),
(35, 379),
(35, 380),
(35, 381),
(35, 382),
(35, 383),
(35, 384),
(35, 385),
(35, 386),
(35, 387),
(35, 388),
(35, 389),
(35, 390),
(35, 391),
(35, 392),
(35, 393),
(35, 394),
(35, 395),
(35, 396),
(35, 397),
(35, 398),
(35, 399),
(35, 400),
(35, 401),
(35, 402),
(35, 403),
(35, 404),
(35, 405),
(35, 406),
(35, 407),
(35, 408),
(35, 409),
(35, 410),
(35, 411),
(35, 412),
(35, 413),
(35, 414),
(35, 415),
(35, 416),
(35, 417),
(35, 418),
(35, 419),
(35, 420),
(35, 421),
(35, 422),
(35, 423),
(35, 424),
(35, 425),
(35, 427),
(35, 428),
(35, 430),
(35, 431),
(35, 432),
(35, 433),
(35, 434),
(35, 435),
(35, 436),
(35, 437),
(35, 438),
(35, 439),
(35, 440),
(35, 441),
(35, 442),
(35, 443),
(35, 444),
(35, 445),
(35, 446),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(37, 39),
(37, 43),
(37, 47),
(37, 51),
(37, 55),
(37, 59),
(37, 63),
(37, 67),
(37, 71),
(37, 75),
(37, 79),
(37, 83),
(37, 87),
(37, 91),
(37, 115),
(37, 119),
(37, 123),
(37, 127),
(37, 164),
(37, 168),
(37, 172),
(37, 176),
(37, 180),
(37, 184),
(37, 188),
(37, 192),
(37, 196),
(37, 200),
(37, 204),
(37, 208),
(37, 212),
(37, 216),
(37, 217),
(37, 218),
(37, 219),
(37, 220),
(37, 221),
(37, 222),
(37, 223),
(37, 224),
(37, 225),
(37, 226),
(37, 227),
(37, 228),
(37, 229),
(37, 230),
(37, 231),
(37, 232),
(37, 233),
(37, 234),
(37, 235),
(37, 236),
(37, 240),
(37, 244),
(37, 248),
(37, 252),
(37, 255),
(37, 256),
(37, 260),
(37, 264),
(37, 268),
(37, 272),
(37, 276),
(37, 280),
(37, 284),
(37, 287),
(37, 288),
(37, 290),
(37, 292),
(37, 293),
(37, 296),
(37, 299),
(37, 300),
(37, 302),
(37, 304),
(37, 305),
(37, 308),
(37, 311),
(37, 312),
(37, 316),
(37, 320),
(37, 324),
(37, 328),
(37, 332),
(37, 336),
(37, 340),
(37, 344),
(37, 348),
(37, 352),
(37, 356),
(37, 360),
(37, 364),
(37, 368),
(37, 376),
(37, 377),
(37, 378),
(37, 379),
(37, 380),
(37, 425),
(37, 426),
(38, 352),
(38, 353),
(38, 354),
(38, 355),
(38, 356),
(38, 357),
(38, 358),
(38, 359),
(38, 360),
(38, 361),
(38, 362),
(38, 363),
(38, 364),
(38, 365),
(38, 366),
(38, 367),
(38, 368),
(38, 369),
(38, 370),
(38, 371);

-- --------------------------------------------------------

--
-- Table structure for table `roles_sys_modules`
--

CREATE TABLE `roles_sys_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `sys_module_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_region_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_district_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_region_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_district_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` decimal(20,3) DEFAULT NULL,
  `added_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `from_region_id`, `from_district_id`, `to_region_id`, `to_district_id`, `from`, `to`, `distance`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '15', '80', '3', '15', 'Mtwara - MASASI', 'Dodoma - DODOMA MJINI', '1038.300', '57', '2022-06-06 16:10:50', '2022-06-09 13:51:07'),
(2, '', '', '', '', 'Dodoma', 'Mtwara', '1000.000', '57', '2022-06-06 16:11:08', '2022-06-06 16:11:08'),
(3, '', '', '', '', 'Dar es Salaam', 'Mtwara', '567.000', '57', '2022-06-06 16:11:37', '2022-06-06 16:11:37'),
(4, '15', '80', '18', '102', 'Mtwara - MASASI', 'Pwani - BAGAMOYO', '661.900', '57', '2022-06-08 18:26:46', '2022-06-09 14:01:38'),
(5, '15', '80', '9', '45', 'Mtwara - MASASI', 'Kilimanjaro - MOSHI MJINI', '1142.000', '57', '2022-06-08 18:27:49', '2022-06-09 13:48:22'),
(6, '', '', '', '', 'Mtwara', 'Dar es Salaam', '467.000', '57', '2022-06-09 16:28:51', '2022-06-09 16:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `farmer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sale` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_items`
--

CREATE TABLE `sales_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feeType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `level`, `feeType`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Nursery or Kindergarten', 'school fee', 2000000, '2022-06-16 11:09:07', '2022-06-16 16:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `school_payments`
--

CREATE TABLE `school_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_payment_id` int(11) NOT NULL,
  `feeType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `paid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `school_student`
--

CREATE TABLE `school_student` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seed_invoice`
--

CREATE TABLE `seed_invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT 'Seed',
  `reference` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(8,2) NOT NULL,
  `purchase_amount` decimal(20,2) NOT NULL,
  `due_amount` decimal(20,2) NOT NULL,
  `purchase_tax` decimal(20,2) NOT NULL,
  `status` int(11) NOT NULL,
  `good_receive` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(20,2) DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seed_invoice`
--

INSERT INTO `seed_invoice` (`id`, `reference_no`, `type`, `reference`, `supplier_id`, `purchase_date`, `due_date`, `location`, `exchange_code`, `exchange_rate`, `purchase_amount`, `due_amount`, `purchase_tax`, `status`, `good_receive`, `unit_price`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'INV_SEED-1-2022-06-03', 'Seed', '888', '70', '2022-06-03', '2022-07-03', NULL, 'USD', '2300.00', '7500.00', '8850.00', '1350.00', 1, '1', NULL, 1, '2022-06-03 22:32:03', '2022-06-03 22:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `seed_invoice_history`
--

CREATE TABLE `seed_invoice_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `supplier_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seed_invoice_history`
--

INSERT INTO `seed_invoice_history` (`id`, `invoice_id`, `items_id`, `quantity`, `supplier_id`, `purchase_date`, `location`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 2, '15.00', '70', '2022-06-03', NULL, 1, '2022-06-03 22:32:03', '2022-06-03 22:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `seed_invoice_item`
--

CREATE TABLE `seed_invoice_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(8,2) NOT NULL,
  `total_tax` decimal(20,2) NOT NULL,
  `quantity` decimal(20,2) NOT NULL,
  `total_cost` decimal(20,2) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seed_invoice_item`
--

INSERT INTO `seed_invoice_item` (`id`, `invoice_id`, `item_name`, `tax_rate`, `total_tax`, `quantity`, `total_cost`, `price`, `unit`, `items_id`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '2', '0.18', '1350.00', '15.00', '7500.00', '500.00', 'kgs', 2, 0, 1, '2022-06-03 22:32:03', '2022-06-03 22:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `seed_lists`
--

CREATE TABLE `seed_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `unit` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seed_lists`
--

INSERT INTO `seed_lists` (`id`, `name`, `price`, `unit`, `quantity`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Seeds', '500.00', 'kgs', NULL, 1, '2022-06-01 10:00:45', '2022-06-01 10:00:45'),
(2, 'Trash', '500.00', 'kgs', NULL, 1, '2022-06-01 10:01:16', '2022-06-01 10:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `seed_payments`
--

CREATE TABLE `seed_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `date` date NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_no` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mechanical` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `reading` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `report` int(200) DEFAULT 0,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `truck`, `truck_name`, `reg_no`, `driver`, `mechanical`, `date`, `reading`, `history`, `major`, `status`, `report`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', 'DAF', 'T 183 DWW', NULL, '1', '2022-06-08', '50006', 'sfsfsff', '9000', 1, 1, 57, '2022-06-07 13:03:26', '2022-06-08 22:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `service_inventory`
--

CREATE TABLE `service_inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_inventory`
--

INSERT INTO `service_inventory` (`id`, `service_id`, `item_name`, `order_no`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 0, 57, '2022-06-07 13:03:26', '2022-06-07 13:03:26'),
(2, '1', '2', 1, 57, '2022-06-07 13:03:26', '2022-06-07 13:03:26'),
(3, '1', '3', 2, 57, '2022-06-07 13:03:26', '2022-06-07 13:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `service_items`
--

CREATE TABLE `service_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `truck` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` int(11) NOT NULL,
  `minor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_items`
--

INSERT INTO `service_items` (`id`, `truck`, `service_id`, `minor`, `added_by`, `order_no`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'wire', 57, 0, '2022-06-07 13:03:26', '2022-06-07 13:03:26'),
(2, '1', 1, 'test', 57, 1, '2022-06-07 13:03:26', '2022-06-07 13:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `id` int(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`id`, `name`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Service a', 57, '2022-06-08 19:20:10', '2022-06-08 19:31:06'),
(2, 'Service b', 57, '2022-06-08 19:30:47', '2022-06-08 19:31:22');

-- --------------------------------------------------------

--
-- Table structure for table `stickers`
--

CREATE TABLE `stickers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `office` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `officer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `truck_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stickers`
--

INSERT INTO `stickers` (`id`, `issue_date`, `expire_date`, `office`, `value`, `officer`, `truck_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, '2022-06-06', '2023-06-06', 'DAR ES SALAAM', '230000.00', '-', '1', 57, '2022-06-06 15:37:24', '2022-06-06 15:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearStudy` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fname`, `mname`, `lname`, `level`, `class`, `yearStudy`, `created_at`, `updated_at`) VALUES
(1, 'juma juma', 'juma', 'ally', 'Nursery or Kindergarten', '1', '2022-06-16 07:08:03', '2022-06-16 11:08:03', '2022-06-16 11:08:03');

-- --------------------------------------------------------

--
-- Table structure for table `student_payments`
--

CREATE TABLE `student_payments` (
  `student_payment_id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yearStudy` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TIN` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `user_id`, `name`, `address`, `phone`, `TIN`, `email`, `created_at`, `updated_at`) VALUES
(1, '57', 'Olimpic Petrolium', '-', '-', '-', 'olm@gmail.com', '2022-06-06 16:26:31', '2022-06-06 16:26:31'),
(2, '57', 'Solwa', '-', '-', '-', 'cotton5@gmail.com', '2022-06-07 14:19:18', '2022-06-07 14:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `system_control`
--

CREATE TABLE `system_control` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `picture` varchar(500) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tin` varchar(100) DEFAULT NULL,
  `vat` varchar(100) DEFAULT NULL,
  `added_by` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_control`
--

INSERT INTO `system_control` (`id`, `name`, `picture`, `address`, `phone`, `email`, `tin`, `vat`, `added_by`) VALUES
(4, 'DALASHO ENTERPRISES LIMITED', '123050622051857.png', 'PO BOX 32164, Dar es Salaam', '+255 715 693 983', 'ukindoz@gmail.com', '132 398 771', '40043351S', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_modules`
--

CREATE TABLE `sys_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sys_modules`
--

INSERT INTO `sys_modules` (`id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'manage-dashboard', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(2, 'manage-farmer', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(3, 'manage-farming', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(4, 'manage-orders', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(5, 'manage-warehouse', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(6, 'manage-shop', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(7, 'manage-access-control', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(8, 'manage-fuel', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(9, 'manage-accounting', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(10, 'manage-gl-setup', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(11, 'manage-transaction', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(12, 'manage-leave', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(13, 'manage-training', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(14, 'manage-inventory', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(15, 'manage-logistic', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(16, 'manage-payroll', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(17, 'manage-courier', '2022-05-14 13:05:20', '2022-05-14 13:05:20', NULL),
(18, 'manage-cotton', '2022-05-16 11:20:26', '2022-05-16 11:20:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_details`
--

CREATE TABLE `tbl_account_details` (
  `id` int(200) NOT NULL,
  `account_id` int(11) NOT NULL,
  `account_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT 0.00,
  `exchange_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'TZS',
  `account_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_account_details`
--

INSERT INTO `tbl_account_details` (`id`, `account_id`, `account_name`, `description`, `balance`, `exchange_code`, `account_number`, `contact_person`, `contact_phone`, `bank_details`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Petty Cash', NULL, '-620000.00', 'TZS', NULL, NULL, NULL, NULL, 57, '2022-06-09 16:36:09', '2022-06-09 16:36:09'),
(3, 11, 'Payables', NULL, '-526008.00', 'TZS', NULL, NULL, NULL, NULL, 57, '2022-06-09 17:50:12', '2022-06-09 17:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_salary`
--

CREATE TABLE `tbl_advance_salary` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `advance_amount` varchar(200) NOT NULL,
  `deduct_month` varchar(30) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `request_date` date DEFAULT current_timestamp(),
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 =pending,1=accpect , 2 = reject and 3 = paid',
  `approve_by` int(11) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_advance_salary`
--

INSERT INTO `tbl_advance_salary` (`id`, `user_id`, `advance_amount`, `deduct_month`, `reason`, `request_date`, `status`, `approve_by`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 19, '100000', '2022-02', 'family emergency', '2022-01-25', 3, 1, 1, '2022-05-08 15:00:45', '2022-05-08 17:20:21'),
(2, 19, '2330', '2022-05', 'Gjjj', '2022-05-08', 1, 1, 19, '2022-05-08 18:52:31', '2022-05-09 17:16:24'),
(3, 20, '250000', '2022-05', 'Sick', '2022-05-08', 1, 1, 1, '2022-05-08 23:22:41', '2022-05-08 23:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cards`
--

CREATE TABLE `tbl_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `owner_id` int(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cards`
--

INSERT INTO `tbl_cards` (`id`, `reference_no`, `status`, `type`, `added_by`, `owner_id`, `created_at`, `updated_at`) VALUES
(5, '29022660004', '2', 2, 1, 1, NULL, NULL),
(6, '29022660006', '1', 2, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card_assignments`
--

CREATE TABLE `tbl_card_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `cards_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_card_assignments`
--

INSERT INTO `tbl_card_assignments` (`id`, `visitor_id`, `member_id`, `added_by`, `cards_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 1, 5, 0, '2022-06-20 19:03:01', '2022-06-20 19:03:01'),
(2, 0, 1, 1, 5, 0, '2022-06-20 19:09:26', '2022-06-20 19:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_corops_monitoring`
--

CREATE TABLE `tbl_corops_monitoring` (
  `id` int(100) NOT NULL,
  `name` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `course` varchar(300) NOT NULL,
  `symptoms` varchar(300) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `status` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_costants`
--

CREATE TABLE `tbl_costants` (
  `id` int(100) NOT NULL,
  `cotton` varchar(100) DEFAULT NULL,
  `seeds` varchar(20) DEFAULT NULL,
  `raw_cotton` varchar(20) DEFAULT NULL,
  `dust` varchar(20) DEFAULT NULL,
  `added_by` int(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cost_centres`
--

CREATE TABLE `tbl_cost_centres` (
  `id` int(100) NOT NULL,
  `code` int(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `costing` int(100) DEFAULT NULL,
  `user_id` int(100) NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp(),
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cost_functions`
--

CREATE TABLE `tbl_cost_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cotton`
--

CREATE TABLE `tbl_cotton` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `added_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cotton`
--

INSERT INTO `tbl_cotton` (`id`, `name`, `unit`, `quantity`, `price`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Cotton', 'kg', NULL, '2000.00', 50, '2022-05-17 15:56:42', '2022-05-17 15:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currencies`
--

CREATE TABLE `tbl_currencies` (
  `code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xrate` decimal(12,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_currencies`
--

INSERT INTO `tbl_currencies` (`code`, `name`, `symbol`, `xrate`) VALUES
('EUR', 'Euro', 'Ã¢â€š', NULL),
('TZS', 'Tanzania Shiling', 'TZS', NULL),
('USD', 'US Dollar', '$', '1.00000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit`
--

CREATE TABLE `tbl_deposit` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(200) NOT NULL,
  `account_id` varchar(500) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `trans_id` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `payment_method` varchar(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposite_withdraw`
--

CREATE TABLE `tbl_deposite_withdraw` (
  `id` int(100) NOT NULL,
  `farm_account_id` int(100) NOT NULL,
  `warehouse_id` int(100) NOT NULL,
  `quantity` decimal(65,0) NOT NULL,
  `cost` int(100) DEFAULT 0,
  `status` int(11) NOT NULL COMMENT 'if 1 withdraw, 2 diposite',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_award`
--

CREATE TABLE `tbl_employee_award` (
  `id` int(11) NOT NULL,
  `award_name` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `gift_item` varchar(300) NOT NULL,
  `award_amount` int(5) NOT NULL,
  `award_date` varchar(10) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT '0' COMMENT '0=pending,1=approved,2=rejected,3=paid',
  `view` tinyint(1) DEFAULT 2 COMMENT '1=Read 2=Unread',
  `given_date` date DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `approve_by` int(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_loan`
--

CREATE TABLE `tbl_employee_loan` (
  `id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `loan_amount` decimal(20,2) NOT NULL,
  `paid_amount` decimal(20,2) NOT NULL,
  `sponsor` varchar(200) DEFAULT NULL,
  `deduct_month` varchar(200) NOT NULL,
  `request_date` date DEFAULT current_timestamp(),
  `reason` text DEFAULT NULL,
  `returns` int(100) NOT NULL,
  `status` int(200) DEFAULT 0 COMMENT '0=pending,1=approved,2=reject,3-partially_paid,4=paid',
  `approve_by` int(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee_loan`
--

INSERT INTO `tbl_employee_loan` (`id`, `user_id`, `loan_amount`, `paid_amount`, `sponsor`, `deduct_month`, `request_date`, `reason`, `returns`, `status`, `approve_by`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 43, '1000000.00', '300000.00', NULL, '2022-04', '2022-05-08', 'Emergency', 4, 3, 1, 1, '2022-05-08 23:28:22', '2022-05-09 12:05:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_loan_returns`
--

CREATE TABLE `tbl_employee_loan_returns` (
  `id` int(11) NOT NULL,
  `loan_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `loan_amount` decimal(20,2) NOT NULL,
  `deduct_month` varchar(200) NOT NULL,
  `request_date` date DEFAULT NULL,
  `status` int(200) DEFAULT 0 COMMENT '0=pending,1=approved,2=reject,3=paid		',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee_loan_returns`
--

INSERT INTO `tbl_employee_loan_returns` (`id`, `loan_id`, `user_id`, `loan_amount`, `deduct_month`, `request_date`, `status`, `created_at`, `updated_at`) VALUES
(9, 1, 43, '300000.00', '2022-04', NULL, 3, '2022-05-08 23:35:49', '2022-05-09 00:17:06'),
(10, 1, 43, '300000.00', '2022-05', NULL, 3, '2022-05-08 23:35:49', '2022-05-09 12:05:41'),
(11, 1, 43, '300000.00', '2022-06', NULL, 1, '2022-05-08 23:35:49', '2022-05-08 23:35:49'),
(12, 1, 43, '100000.00', '2022-07', NULL, 1, '2022-05-08 23:35:49', '2022-05-08 23:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payroll`
--

CREATE TABLE `tbl_employee_payroll` (
  `payroll_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `department_id` varchar(200) NOT NULL,
  `salary_template_id` int(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employee_payroll`
--

INSERT INTO `tbl_employee_payroll` (`payroll_id`, `user_id`, `department_id`, `salary_template_id`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 19, '5', 3, 19, '2022-05-09 14:38:51', '2022-05-09 16:12:53'),
(2, 20, '5', 2, 19, '2022-05-09 14:38:51', '2022-05-09 16:12:53'),
(3, 43, '1', 1, 19, '2022-05-09 14:44:15', '2022-05-09 16:13:20'),
(4, 45, '4', 2, 19, '2022-05-11 15:50:23', '2022-05-11 15:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(200) NOT NULL,
  `account_id` varchar(500) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `trans_id` varchar(200) NOT NULL,
  `type` varchar(500) NOT NULL,
  `status` varchar(200) NOT NULL,
  `exchange_rate` decimal(20,2) DEFAULT 1.00,
  `exchange_code` varchar(200) DEFAULT 'TZS',
  `payment_method` varchar(200) DEFAULT NULL,
  `added_by` int(200) NOT NULL,
  `refill_id` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_expenses`
--

INSERT INTO `tbl_expenses` (`id`, `bank_id`, `account_id`, `name`, `ref`, `date`, `amount`, `notes`, `trans_id`, `type`, `status`, `exchange_rate`, `exchange_code`, `payment_method`, `added_by`, `refill_id`) VALUES
(1, '11', '13', 'Fuel Refill on Credit', NULL, '2022-06-06', '526008.00', 'Fuel Refill  on Credit for Truck DAF', 'TRANS_EXP_TrZq', 'Expenses', '1', '1.00', 'TZS', NULL, 57, 1),
(2, '11', '13', 'Fuel Refill on Credit', NULL, '2022-06-06', '526008.00', 'Fuel Refill  on Credit for Truck DAF', 'TRANS_EXP_X7SV', 'Expenses', '0', '1.00', 'TZS', NULL, 57, 2),
(3, '11', '13', 'Fuel Refill on Credit', NULL, '2022-06-09', '775000.00', 'Fuel Refill  on Credit for Truck DAF', 'TRANS_EXP_qQzj', 'Expenses', '0', '1.00', 'TZS', NULL, 57, 4),
(4, '11', '13', 'Fuel Refill on Credit', NULL, '2022-06-09', '256000.00', 'Fuel Refill  on Credit for Truck DAF', 'TRANS_EXP_Pr38', 'Expenses', '0', '1.00', 'TZS', NULL, 57, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_insurances`
--

CREATE TABLE `tbl_insurances` (
  `id` int(100) NOT NULL,
  `insurance_name` varchar(100) NOT NULL,
  `insurance_type` varchar(100) NOT NULL,
  `asset_value` int(100) NOT NULL,
  `insurance_amount` int(100) NOT NULL,
  `cover_age` int(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `test_tokens`
--

CREATE TABLE `test_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cardNo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `tokenDate` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unit_prices`
--

CREATE TABLE `unit_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `season` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `phone`, `address`, `email`, `email_verified_at`, `password`, `status`, `country`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'superadmin', 'admin', '0765454334', 'po box 12 Dar es salaam', 'admin@gmail.com', '2021-12-04 17:17:45', '$2y$10$mnh0GE0MQ5CxKMgG.WXOhO9sQBhtuPT0qDrO83Gi79ZPI/CcFSyg2', 1, 'Tanzania', 'rjr9SNdtjvShSmfaoRHp8orDaLynxSL35DxW9J1wJNUqSUOOm7LhDZLvXFKt', '2021-12-04 17:17:45', '2021-12-04 17:17:45', NULL),
(2, 'samwel', 'herman', '0712343423', 'Dar es Salaam', 'sam@gmail.com', NULL, '$2y$10$vhwjhfk0FBF3MG0Rt1w23.GZTnMvWOgoAKPiYWuJqXhsyZG0M3j0a', 1, NULL, NULL, '2021-12-04 18:52:12', '2022-01-11 18:11:01', NULL),
(6, 'BLANDINA', 'musani', '0712343423', 'dodoma', 'dr@gmail.com', NULL, '$2y$10$qiYkxBo6UAm0/vt4AZp8OeWwSOWNNZGSMrvMLVDgiE.mUjN3P4hBy', 1, NULL, NULL, '2022-01-08 18:07:28', '2022-01-08 18:07:28', NULL),
(7, 'onasis', 'pazi', '0712343423', 'Dar es Salaam', 'agent@gmail.com', NULL, '$2y$10$kVMQPu7aLLTYgvtFMJCWX.5wUFlOV8QdbqX6/tramVc/5DU1lSG2i', 1, NULL, NULL, '2022-01-11 18:36:47', '2022-01-11 18:36:47', NULL),
(8, 'Juma', 'Amali Hassani', '0620650846', '43', 'proedu2009@gmail.com', NULL, '$2y$10$T7eawaeszKblUr.gStqYlOMNTQkkA6clXUcRwJQe3pXGmHEZ0kKn6', 1, NULL, NULL, '2022-01-14 20:55:40', '2022-01-14 20:55:40', NULL),
(9, 'Haika', 'Hussen', '0712722683', '459 Dodoma', 'haika@gmail.com', NULL, '$2y$10$e74Xgp16vXEjHqi87FZ34.jXwhZPFbPaeS.P7efEw5x1pfWBq/Qx.', 1, NULL, NULL, '2022-01-14 23:11:30', '2022-01-14 23:11:30', NULL),
(10, 'onasis', 'fred', '0712343423', 'p.o.box dodoma', 'gg@gmail.com', NULL, '$2y$10$xMHufZGUgQIYJLHAUnvoN.UazbMEdfU1t6MJ3nlHndQt776h6F4Au', 1, NULL, NULL, '2022-01-15 19:25:27', '2022-01-15 19:25:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(6, 4),
(7, 2),
(8, 4),
(9, 4),
(10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `waterlocation`
--

CREATE TABLE `waterlocation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `waterlocation`
--

INSERT INTO `waterlocation` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'mbezi', '2022-06-19 22:02:39', '2022-06-19 22:02:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contributions`
--
ALTER TABLE `contributions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_units`
--
ALTER TABLE `daily_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `members_community_id_index` (`community_id`);

--
-- Indexes for table `meters`
--
ALTER TABLE `meters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parish_child`
--
ALTER TABLE `parish_child`
  ADD PRIMARY KEY (`parish_child_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cards`
--
ALTER TABLE `tbl_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_card_assignments`
--
ALTER TABLE `tbl_card_assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_tokens`
--
ALTER TABLE `test_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unit_prices`
--
ALTER TABLE `unit_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `users_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `waterlocation`
--
ALTER TABLE `waterlocation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contributions`
--
ALTER TABLE `contributions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `daily_units`
--
ALTER TABLE `daily_units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `member_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meters`
--
ALTER TABLE `meters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parish_child`
--
ALTER TABLE `parish_child`
  MODIFY `parish_child_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cards`
--
ALTER TABLE `tbl_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_card_assignments`
--
ALTER TABLE `tbl_card_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `test_tokens`
--
ALTER TABLE `test_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unit_prices`
--
ALTER TABLE `unit_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `waterlocation`
--
ALTER TABLE `waterlocation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
