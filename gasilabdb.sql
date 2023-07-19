-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table gasilabdb.activity_logs
CREATE TABLE IF NOT EXISTS `activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `deal_id` int(11) NOT NULL DEFAULT 0,
  `log_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.activity_logs: 0 rows
/*!40000 ALTER TABLE `activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_logs` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.allowances
CREATE TABLE IF NOT EXISTS `allowances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `allowance_option` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.allowances: 2 rows
/*!40000 ALTER TABLE `allowances` DISABLE KEYS */;
INSERT INTO `allowances` (`id`, `employee_id`, `allowance_option`, `title`, `amount`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'elearning', 100, 1, '2021-11-18 13:33:20', '2021-11-18 13:33:20'),
	(2, 2, 1, 'Udemy', 200, 1, '2021-11-18 13:33:59', '2021-11-18 13:33:59');
/*!40000 ALTER TABLE `allowances` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.allowance_options
CREATE TABLE IF NOT EXISTS `allowance_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.allowance_options: 1 rows
/*!40000 ALTER TABLE `allowance_options` DISABLE KEYS */;
INSERT INTO `allowance_options` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Study allowance', 1, '2021-11-18 13:31:06', '2021-11-18 13:31:06');
/*!40000 ALTER TABLE `allowance_options` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.announcements
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.announcements: 0 rows
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.announcement_employees
CREATE TABLE IF NOT EXISTS `announcement_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `announcement_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.announcement_employees: 0 rows
/*!40000 ALTER TABLE `announcement_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement_employees` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.appraisals
CREATE TABLE IF NOT EXISTS `appraisals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL DEFAULT 0,
  `employee` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appraisal_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.appraisals: 0 rows
/*!40000 ALTER TABLE `appraisals` DISABLE KEYS */;
/*!40000 ALTER TABLE `appraisals` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.assets
CREATE TABLE IF NOT EXISTS `assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `supported_date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.assets: 0 rows
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.attendance_employees
CREATE TABLE IF NOT EXISTS `attendance_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  `late` time NOT NULL,
  `early_leaving` time NOT NULL,
  `overtime` time NOT NULL,
  `total_rest` time NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.attendance_employees: 0 rows
/*!40000 ALTER TABLE `attendance_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_employees` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.awards
CREATE TABLE IF NOT EXISTS `awards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `award_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gift` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.awards: 0 rows
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.award_types
CREATE TABLE IF NOT EXISTS `award_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.award_types: 0 rows
/*!40000 ALTER TABLE `award_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `award_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `holder_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opening_balance` double(15,2) NOT NULL DEFAULT 0.00,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bank_accounts: 2 rows
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
INSERT INTO `bank_accounts` (`id`, `holder_name`, `bank_name`, `account_number`, `opening_balance`, `contact_number`, `bank_address`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'cash', '', '-', 0.00, '-', '-', 1, '2021-10-22 17:38:43', '2021-10-22 17:38:43'),
	(2, 'Gasilab design limited', 'HSBC', '293-398397-883', 84500.00, '28382736', '1 Center Road', 1, '2021-11-18 13:40:04', '2021-11-18 13:46:31');
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bank_transfers
CREATE TABLE IF NOT EXISTS `bank_transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_account` int(11) NOT NULL DEFAULT 0,
  `to_account` int(11) NOT NULL DEFAULT 0,
  `amount` double(15,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `payment_method` int(11) NOT NULL DEFAULT 0,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bank_transfers: 0 rows
/*!40000 ALTER TABLE `bank_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfers` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bills
CREATE TABLE IF NOT EXISTS `bills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `vender_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `due_date` date NOT NULL,
  `order_number` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `send_date` date DEFAULT NULL,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bills: 0 rows
/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bill_payments
CREATE TABLE IF NOT EXISTS `bill_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bill_payments: 0 rows
/*!40000 ALTER TABLE `bill_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_payments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bill_products
CREATE TABLE IF NOT EXISTS `bill_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bill_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bill_products: 0 rows
/*!40000 ALTER TABLE `bill_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill_products` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.branches: 0 rows
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bugs
CREATE TABLE IF NOT EXISTS `bugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `assign_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bugs: 0 rows
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bug_comments
CREATE TABLE IF NOT EXISTS `bug_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL DEFAULT 0,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bug_comments: 0 rows
/*!40000 ALTER TABLE `bug_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_comments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bug_files
CREATE TABLE IF NOT EXISTS `bug_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bug_files: 0 rows
/*!40000 ALTER TABLE `bug_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `bug_files` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.bug_statuses
CREATE TABLE IF NOT EXISTS `bug_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.bug_statuses: 5 rows
/*!40000 ALTER TABLE `bug_statuses` DISABLE KEYS */;
INSERT INTO `bug_statuses` (`id`, `title`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Confirmed', 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Resolved', 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Unconfirmed', 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'In Progress', 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Verified', 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `bug_statuses` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.chart_of_accounts
CREATE TABLE IF NOT EXISTS `chart_of_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `sub_type` int(11) NOT NULL DEFAULT 0,
  `is_enabled` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.chart_of_accounts: 32 rows
/*!40000 ALTER TABLE `chart_of_accounts` DISABLE KEYS */;
INSERT INTO `chart_of_accounts` (`id`, `name`, `code`, `type`, `sub_type`, `is_enabled`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Accounts Receivable', 120, 1, 1, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Computer Equipment', 160, 1, 2, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Office Equipment', 150, 1, 2, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Inventory', 140, 1, 3, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Budget - Finance Staff', 857, 1, 6, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(6, 'Accumulated Depreciation', 170, 1, 7, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(7, 'Accounts Payable', 200, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(8, 'Accruals', 205, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(9, 'Office Equipment', 150, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(10, 'Clearing Account', 855, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(11, 'Employee Benefits Payable', 235, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(12, 'Employee Deductions payable', 236, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(13, 'Historical Adjustments', 255, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(14, 'Revenue Received in Advance', 835, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(15, 'Rounding', 260, 2, 8, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(16, 'Costs of Goods Sold', 500, 3, 11, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(17, 'Advertising', 600, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(18, 'Automobile Expenses', 644, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(19, 'Bad Debts', 684, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(20, 'Bank Revaluations', 810, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(21, 'Bank Service Charges', 605, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(22, 'Consulting & Accounting', 615, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(23, 'Depreciation', 700, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(24, 'General Expenses', 628, 3, 12, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(25, 'Interest Income', 460, 4, 13, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(26, 'Other Revenue', 470, 4, 13, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(27, 'Purchase Discount', 475, 4, 13, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(28, 'Sales', 400, 4, 13, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(29, 'Common Stock', 330, 5, 16, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(30, 'Owners Contribution', 300, 5, 16, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(31, 'Owners Draw', 310, 5, 16, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(32, 'Retained Earnings', 320, 5, 16, 1, NULL, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `chart_of_accounts` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.chart_of_account_sub_types
CREATE TABLE IF NOT EXISTS `chart_of_account_sub_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.chart_of_account_sub_types: 16 rows
/*!40000 ALTER TABLE `chart_of_account_sub_types` DISABLE KEYS */;
INSERT INTO `chart_of_account_sub_types` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
	(1, 'Current Asset', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Fixed Asset', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Inventory', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Non-current Asset', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Prepayment', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(6, 'Bank & Cash', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(7, 'Depreciation', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(8, 'Current Liability', 2, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(9, 'Liability', 2, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(10, 'Non-current Liability', 2, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(11, 'Direct Costs', 3, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(12, 'Expense', 3, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(13, 'Revenue', 4, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(14, 'Sales', 4, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(15, 'Other Income', 4, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(16, 'Equity', 5, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `chart_of_account_sub_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.chart_of_account_types
CREATE TABLE IF NOT EXISTS `chart_of_account_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.chart_of_account_types: 5 rows
/*!40000 ALTER TABLE `chart_of_account_types` DISABLE KEYS */;
INSERT INTO `chart_of_account_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Assets', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Liabilities', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Expenses', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Income', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Equity', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `chart_of_account_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.client_deals
CREATE TABLE IF NOT EXISTS `client_deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `deal_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_deals_client_id_foreign` (`client_id`),
  KEY `client_deals_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.client_deals: 1 rows
/*!40000 ALTER TABLE `client_deals` DISABLE KEYS */;
INSERT INTO `client_deals` (`id`, `client_id`, `deal_id`, `created_at`, `updated_at`) VALUES
	(1, 3, 1, '2021-11-18 13:22:01', '2021-11-18 13:22:01');
/*!40000 ALTER TABLE `client_deals` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.commissions
CREATE TABLE IF NOT EXISTS `commissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.commissions: 0 rows
/*!40000 ALTER TABLE `commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `commissions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.company_payment_settings
CREATE TABLE IF NOT EXISTS `company_payment_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `company_payment_settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.company_payment_settings: 0 rows
/*!40000 ALTER TABLE `company_payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_payment_settings` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.company_policies
CREATE TABLE IF NOT EXISTS `company_policies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.company_policies: 0 rows
/*!40000 ALTER TABLE `company_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_policies` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.competencies
CREATE TABLE IF NOT EXISTS `competencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.competencies: 0 rows
/*!40000 ALTER TABLE `competencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `competencies` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.complaints
CREATE TABLE IF NOT EXISTS `complaints` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `complaint_from` int(11) NOT NULL,
  `complaint_against` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complaint_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.complaints: 0 rows
/*!40000 ALTER TABLE `complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `complaints` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.contracts
CREATE TABLE IF NOT EXISTS `contracts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_name` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(8,2) NOT NULL DEFAULT 0.00,
  `type` int(11) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.contracts: 1 rows
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` (`id`, `client_name`, `subject`, `value`, `type`, `start_date`, `end_date`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 3, 'è¨‚é€  6 å‘Žé›»è¦–æ«ƒ', 12000.00, 2, '2021-09-05', '2021-09-26', 'B æ¬¾ï¼Œ293 è‰²ï¼Œç’°ä¿æœ¨ E2', 1, '2021-11-18 13:26:54', '2021-11-18 13:26:54');
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.contract_types
CREATE TABLE IF NOT EXISTS `contract_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.contract_types: 2 rows
/*!40000 ALTER TABLE `contract_types` DISABLE KEYS */;
INSERT INTO `contract_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'è‡¨æ™‚åˆç´„', 1, '2021-11-18 13:25:53', '2021-11-18 13:25:53'),
	(2, 'æœ€çµ‚åˆç´„', 1, '2021-11-18 13:26:03', '2021-11-18 13:26:03');
/*!40000 ALTER TABLE `contract_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.credit_notes
CREATE TABLE IF NOT EXISTS `credit_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` int(11) NOT NULL DEFAULT 0,
  `customer` int(11) NOT NULL DEFAULT 0,
  `amount` double(15,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.credit_notes: 0 rows
/*!40000 ALTER TABLE `credit_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_notes` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.customers: 1 rows
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `customer_id`, `name`, `email`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'é»ƒå¤§ä¸­', 'testwong@gmail.com', '$2y$10$jD56FJCX7yWV9NfREUlR3eloT6.bfZwIiwhBlCC8oJ9JQVZ8aVPdK', '938473932', '', 1, 1, NULL, 'Flat 03, Habour Builing', 'Hong Kong', '', '', '', '', '', 'Flat 03, Habour Builing', 'Hong Kong', '', '', '', '', '', '', 7500.00, NULL, '2021-11-18 13:37:55', '2021-11-18 13:46:31');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.custom_fields
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.custom_fields: 0 rows
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.custom_field_values
CREATE TABLE IF NOT EXISTS `custom_field_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `record_id` bigint(20) unsigned NOT NULL,
  `field_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `custom_field_values_record_id_field_id_unique` (`record_id`,`field_id`),
  KEY `custom_field_values_field_id_foreign` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.custom_field_values: 0 rows
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.custom_questions
CREATE TABLE IF NOT EXISTS `custom_questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.custom_questions: 0 rows
/*!40000 ALTER TABLE `custom_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_questions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deals
CREATE TABLE IF NOT EXISTS `deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deals: 1 rows
/*!40000 ALTER TABLE `deals` DISABLE KEYS */;
INSERT INTO `deals` (`id`, `name`, `price`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `status`, `order`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, 'è¨‚é€ 6å‘Žåˆ°é ‚é›»è¦–æ«ƒ', 8000.00, 1, 1, NULL, NULL, NULL, NULL, 'Active', 0, 1, 1, '2021-11-18 13:22:01', '2021-11-18 13:22:01');
/*!40000 ALTER TABLE `deals` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deal_calls
CREATE TABLE IF NOT EXISTS `deal_calls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint(20) unsigned NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_calls_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deal_calls: 0 rows
/*!40000 ALTER TABLE `deal_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_calls` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deal_discussions
CREATE TABLE IF NOT EXISTS `deal_discussions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint(20) unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_discussions_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deal_discussions: 0 rows
/*!40000 ALTER TABLE `deal_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_discussions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deal_emails
CREATE TABLE IF NOT EXISTS `deal_emails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint(20) unsigned NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_emails_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deal_emails: 0 rows
/*!40000 ALTER TABLE `deal_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_emails` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deal_files
CREATE TABLE IF NOT EXISTS `deal_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint(20) unsigned NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_files_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deal_files: 0 rows
/*!40000 ALTER TABLE `deal_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_files` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deal_tasks
CREATE TABLE IF NOT EXISTS `deal_tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `deal_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deal_tasks_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deal_tasks: 0 rows
/*!40000 ALTER TABLE `deal_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_tasks` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.debit_notes
CREATE TABLE IF NOT EXISTS `debit_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bill` int(11) NOT NULL DEFAULT 0,
  `vendor` int(11) NOT NULL DEFAULT 0,
  `amount` double(15,2) NOT NULL DEFAULT 0.00,
  `date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.debit_notes: 0 rows
/*!40000 ALTER TABLE `debit_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `debit_notes` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.deduction_options
CREATE TABLE IF NOT EXISTS `deduction_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.deduction_options: 0 rows
/*!40000 ALTER TABLE `deduction_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `deduction_options` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.departments: 0 rows
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.designations
CREATE TABLE IF NOT EXISTS `designations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.designations: 0 rows
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.documents
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.documents: 0 rows
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.ducument_uploads
CREATE TABLE IF NOT EXISTS `ducument_uploads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.ducument_uploads: 0 rows
/*!40000 ALTER TABLE `ducument_uploads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ducument_uploads` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.email_templates
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.email_templates: 0 rows
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.email_template_langs
CREATE TABLE IF NOT EXISTS `email_template_langs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.email_template_langs: 0 rows
/*!40000 ALTER TABLE `email_template_langs` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_template_langs` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `company_doj` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_identifier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_payer_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.employees: 2 rows
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `user_id`, `name`, `dob`, `gender`, `phone`, `address`, `email`, `password`, `employee_id`, `branch_id`, `department_id`, `designation_id`, `company_doj`, `documents`, `account_holder_name`, `account_number`, `bank_name`, `bank_identifier_code`, `branch_location`, `tax_payer_id`, `salary_type`, `salary`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 2, 'accountant', NULL, '', NULL, '', 'accountant@gasilab.com', '$2y$10$CKeQHO7kZcKCl3icIYG8ieNuFc4yKO8uujYVU27jKpJgBwXvbjgDK', '1', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12000, 1, 1, '2021-10-22 17:38:44', '2021-11-18 13:33:09'),
	(2, 4, 'Testing Account', NULL, '', NULL, '', 'testing@gasilab.com', '$2y$10$9AXLrvCsI.7I/1flkTLHzehDCNW//edH6RI4W6WtE0iKAoHp8ipTW', '2', 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13000, 1, 1, '2021-11-17 00:29:31', '2021-11-18 13:33:50');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.employee_documents
CREATE TABLE IF NOT EXISTS `employee_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  `document_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.employee_documents: 0 rows
/*!40000 ALTER TABLE `employee_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee_documents` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.estimations
CREATE TABLE IF NOT EXISTS `estimations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `estimation_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_date` date NOT NULL,
  `discount` double(8,2) NOT NULL,
  `tax_id` bigint(20) unsigned NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.estimations: 0 rows
/*!40000 ALTER TABLE `estimations` DISABLE KEYS */;
/*!40000 ALTER TABLE `estimations` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.events
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.events: 0 rows
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.event_employees
CREATE TABLE IF NOT EXISTS `event_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.event_employees: 0 rows
/*!40000 ALTER TABLE `event_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_employees` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.expenses: 0 rows
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.failed_jobs: 0 rows
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.favorites
CREATE TABLE IF NOT EXISTS `favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.favorites: 0 rows
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.form_builders
CREATE TABLE IF NOT EXISTS `form_builders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_lead_active` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_builders_code_unique` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.form_builders: 0 rows
/*!40000 ALTER TABLE `form_builders` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_builders` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.form_fields
CREATE TABLE IF NOT EXISTS `form_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.form_fields: 0 rows
/*!40000 ALTER TABLE `form_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_fields` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.form_field_responses
CREATE TABLE IF NOT EXISTS `form_field_responses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) unsigned NOT NULL,
  `subject_id` int(11) NOT NULL,
  `name_id` int(11) NOT NULL,
  `email_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.form_field_responses: 0 rows
/*!40000 ALTER TABLE `form_field_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_field_responses` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.form_responses
CREATE TABLE IF NOT EXISTS `form_responses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) unsigned NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.form_responses: 0 rows
/*!40000 ALTER TABLE `form_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_responses` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.genrate_payslip_options
CREATE TABLE IF NOT EXISTS `genrate_payslip_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.genrate_payslip_options: 0 rows
/*!40000 ALTER TABLE `genrate_payslip_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `genrate_payslip_options` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.goals
CREATE TABLE IF NOT EXISTS `goals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `is_display` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.goals: 0 rows
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.goal_trackings
CREATE TABLE IF NOT EXISTS `goal_trackings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `goal_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_achievement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `progress` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.goal_trackings: 0 rows
/*!40000 ALTER TABLE `goal_trackings` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_trackings` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.goal_types
CREATE TABLE IF NOT EXISTS `goal_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.goal_types: 0 rows
/*!40000 ALTER TABLE `goal_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `goal_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.holidays
CREATE TABLE IF NOT EXISTS `holidays` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `occasion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.holidays: 0 rows
/*!40000 ALTER TABLE `holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `holidays` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.indicators
CREATE TABLE IF NOT EXISTS `indicators` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL DEFAULT 0,
  `department` int(11) NOT NULL DEFAULT 0,
  `designation` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_experience` int(11) NOT NULL DEFAULT 0,
  `marketing` int(11) NOT NULL DEFAULT 0,
  `administration` int(11) NOT NULL DEFAULT 0,
  `professionalism` int(11) NOT NULL DEFAULT 0,
  `integrity` int(11) NOT NULL DEFAULT 0,
  `attendance` int(11) NOT NULL DEFAULT 0,
  `created_user` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.indicators: 0 rows
/*!40000 ALTER TABLE `indicators` DISABLE KEYS */;
/*!40000 ALTER TABLE `indicators` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.interview_schedules
CREATE TABLE IF NOT EXISTS `interview_schedules` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `candidate` int(11) NOT NULL,
  `employee` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_response` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.interview_schedules: 0 rows
/*!40000 ALTER TABLE `interview_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview_schedules` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `ref_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_display` int(11) NOT NULL DEFAULT 1,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.invoices: 1 rows
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` (`id`, `invoice_id`, `customer_id`, `issue_date`, `due_date`, `send_date`, `category_id`, `ref_number`, `status`, `shipping_display`, `discount_apply`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-11-18', '2021-11-18', NULL, 2, 'Ref002', 0, 1, 0, 1, '2021-11-18 13:43:13', '2021-11-18 13:43:13');
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.invoice_payments
CREATE TABLE IF NOT EXISTS `invoice_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `account_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Manually',
  `txn_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.invoice_payments: 0 rows
/*!40000 ALTER TABLE `invoice_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_payments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.invoice_products
CREATE TABLE IF NOT EXISTS `invoice_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.invoice_products: 1 rows
/*!40000 ALTER TABLE `invoice_products` DISABLE KEYS */;
INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `quantity`, `tax`, `discount`, `price`, `description`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, '1', 500.00, 8000.00, '', '2021-11-18 13:43:13', '2021-11-18 13:43:13');
/*!40000 ALTER TABLE `invoice_products` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `requirement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_question` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.jobs: 0 rows
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.job_applications
CREATE TABLE IF NOT EXISTS `job_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  `skill` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `is_archive` int(11) NOT NULL DEFAULT 0,
  `custom_question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.job_applications: 0 rows
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.job_application_notes
CREATE TABLE IF NOT EXISTS `job_application_notes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `application_id` int(11) NOT NULL DEFAULT 0,
  `note_created` int(11) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.job_application_notes: 0 rows
/*!40000 ALTER TABLE `job_application_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_application_notes` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.job_categories
CREATE TABLE IF NOT EXISTS `job_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.job_categories: 0 rows
/*!40000 ALTER TABLE `job_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_categories` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.job_on_boards
CREATE TABLE IF NOT EXISTS `job_on_boards` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `application` int(11) NOT NULL,
  `joining_date` date DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `convert_to_employee` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.job_on_boards: 0 rows
/*!40000 ALTER TABLE `job_on_boards` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_on_boards` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.job_stages
CREATE TABLE IF NOT EXISTS `job_stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.job_stages: 5 rows
/*!40000 ALTER TABLE `job_stages` DISABLE KEYS */;
INSERT INTO `job_stages` (`id`, `title`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Applied', 0, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Phone Screen', 0, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Interview', 0, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Hired', 0, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Rejected', 0, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `job_stages` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.journal_entries
CREATE TABLE IF NOT EXISTS `journal_entries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `journal_id` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.journal_entries: 0 rows
/*!40000 ALTER TABLE `journal_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal_entries` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.journal_items
CREATE TABLE IF NOT EXISTS `journal_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `journal` int(11) NOT NULL DEFAULT 0,
  `account` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` double(8,2) NOT NULL DEFAULT 0.00,
  `credit` double(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.journal_items: 0 rows
/*!40000 ALTER TABLE `journal_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `journal_items` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.labels
CREATE TABLE IF NOT EXISTS `labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.labels: 5 rows
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
INSERT INTO `labels` (`id`, `name`, `color`, `pipeline_id`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'On Hold', 'primary', 1, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'New', 'info', 1, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Pending', 'warning', 1, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Loss', 'danger', 1, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Win', 'success', 1, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.landing_page_sections
CREATE TABLE IF NOT EXISTS `landing_page_sections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `section_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_order` int(11) NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_type` enum('section-1','section-2','section-3','section-4','section-5','section-6','section-7','section-8','section-9','section-10','section-plan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_demo_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_blade_file_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.landing_page_sections: 9 rows
/*!40000 ALTER TABLE `landing_page_sections` DISABLE KEYS */;
INSERT INTO `landing_page_sections` (`id`, `section_name`, `section_order`, `content`, `section_type`, `default_content`, `section_demo_image`, `section_blade_file_name`, `created_at`, `updated_at`) VALUES
	(1, 'section-1', 1, '{"logo":"landing_logo.png","image":"image_1637160988499637323.png","button":{"text":"Login ERP"},"menu":[{"menu":"Features","href":"#"},{"menu":"Tutorial","href":"#"}],"text":{"text-1":"Ahhpicnic Limited ERP system","text-2":"All In One Business ERP With Project, Account, HRM, CRM","text-3":"","text-4":"Let\'s make everything digital","text-5":"Gasilab limited"},"custom_class_name":""}', 'section-1', '{"logo":"landing_logo.png","image":"top-banner.png","button":{"text":"Login"},"menu":[{"menu":"Features","href":"#"},{"menu":"Pricing","href":"#"}],"text":{"text-1":"ERPGo Saas","text-2":"All In One Business ERP With Project, Account, HRM, CRM","text-3":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.","text-4":"get started - its free","text-5":"no creadit card reqired "},"custom_class_name":""}', 'top-header-section.png', 'custome-top-header-section', '2021-10-22 17:38:44', '2021-11-17 13:56:28'),
	(2, 'section-2', 2, '', 'section-2', '{"image":"cal-sec.png","button":{"text":"try our system","href":"#"},"text":{"text-1":"Features","text-2":"Lorem Ipsum is simply dummy","text-3":"text of the printing","text-4":"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"},"image_array":[{"id":1,"image":"nexo.png"},{"id":2,"image":"edge.png"},{"id":3,"image":"atomic.png"},{"id":4,"image":"brd.png"},{"id":5,"image":"trust.png"},{"id":6,"image":"keep-key.png"},{"id":7,"image":"atomic.png"},{"id":8,"image":"edge.png"}],"custom_class_name":""}', 'logo-part-main-back-part.png', 'custome-logo-part-main-back-part', '2021-10-22 17:38:44', '2021-11-17 00:25:46'),
	(3, 'section-3', 3, NULL, 'section-3', '{"image": "sec-2.png","button": {"text": "try our system","href": "#"},"text": {"text-1": "Features","text-2": "Lorem Ipsum is simply dummy","text-3": "text of the printing","text-4": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"},"custom_class_name":""}', 'simple-sec-even.png', 'custome-simple-sec-even', '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'section-4', 4, NULL, 'section-4', '{"image": "sec-3.png","button": {"text": "try our system","href": "#"},"text": {"text-1": "Features","text-2": "Lorem Ipsum is simply dummy","text-3": "text of the printing","text-4": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting"},"custom_class_name":""}', 'simple-sec-odd.png', 'custome-simple-sec-odd', '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'section-5', 5, NULL, 'section-5', '{"button": {"text": "TRY OUR SYSTEM","href": "#"},"text": {"text-1": "See more features","text-2": "All Features","text-3": "in one place","text-4": "Attractive Dashboard Customer & Vendor Login Multi Languages","text-5":"Invoice, Billing & Transaction Multi User & Permission Paypal & Stripe for Invoice User Friendly Invoice Theme Make your own setting","text-6":"Multi User & Permission Paypal & Stripe for Invoice User Friendly Invoice Theme Make your own setting","text-7":"Multi User & Permission Paypal & Stripe for Invoice User Friendly Invoice Theme Make your own setting User Friendly Invoice Theme Make your own setting","text-8":"Multi User & Permission Paypal & Stripe for Invoice"},"custom_class_name":""}', 'features-inner-part.png', 'custome-features-inner-part', '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(6, 'section-6', 6, '', 'section-6', '{"system":[{"id":1,"name":"Dashboard","data":[{"data_id":1,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"},{"data_id":2,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-2.png"},{"data_id":3,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-3.png"},{"data_id":4,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"},{"data_id":5,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-2.png"}]},{"id":2,"name":"Functions","data":[{"data_id":1,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"},{"data_id":2,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-2.png"},{"data_id":3,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-3.png"}]},{"id":3,"name":"Reports","data":[{"data_id":1,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"},{"data_id":2,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-2.png"}]},{"id":4,"name":"Tables","data":[{"data_id":1,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"},{"data_id":2,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-2.png"},{"data_id":3,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-3.png"},{"data_id":4,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"}]},{"id":5,"name":"Settings","data":[{"data_id":1,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"},{"data_id":2,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-2.png"}]},{"id":6,"name":"Contact","data":[{"data_id":1,"text":{"text_1":"Dashboard","text_2":"Main Page"},"button":{"text":"LIVE DEMO","href":"#"},"image":"tab-1.png"}]}],"custom_class_name":""}', 'container-our-system-div.png', 'custome-container-our-system-div', '2021-10-22 17:38:44', '2021-11-17 00:25:42'),
	(7, 'section-7', 7, NULL, 'section-7', '{"testimonials":[{"id":1,"text":{"text_1":"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.","text_2":"Lorem Ipsum","text_3":"Founder and CEO at Rajodiya Infotech"},"image":"testimonials-img.png"},{"id":2,"text":{"text_1":"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.","text_2":"Lorem Ipsum","text_3":"Founder and CEO at Rajodiya Infotech"},"image":"testimonials-img.png"},{"id":3,"text":{"text_1":"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.","text_2":"Lorem Ipsum","text_3":"Founder and CEO at Rajodiya Infotech"},"image":"testimonials-img.png"},{"id":4,"text":{"text_1":"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.","text_2":"Lorem Ipsum","text_3":"Founder and CEO at Rajodiya Infotech"},"image":"testimonials-img.png"},{"id":5,"text":{"text_1":"We have been building AI projects for a long time and we decided it was time to build a platform that can streamline the broken process that we had to put up with. Here are some of the key things we wish we had when we were building projects before.","text_2":"Lorem Ipsum","text_3":"Founder and CEO at Rajodiya Infotech"},"image":"testimonials-img.png"}],"custom_class_name":""}', 'testimonials-section.png', 'custome-testimonials-section', '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(8, 'section-9', 10, '', 'section-9', '{"menu":[{"menu":"Facebook","href":"#"},{"menu":"LinkedIn","href":"#"},{"menu":"Twitter","href":"#"},{"menu":"Discord","href":"#"}],"custom_class_name":""}', 'social-links.png', 'custome-social-links', '2021-10-22 17:38:44', '2021-11-17 00:25:50'),
	(9, 'section-10', 11, '', 'section-10', '{"footer":{"logo":{"logo":"landing_logo.png"},"footer_menu":[{"id":1,"menu":"FIO Protocol","data":[{"menu_name":"Feature","menu_href":"#"},{"menu_name":"Download","menu_href":"#"},{"menu_name":"Integration","menu_href":"#"},{"menu_name":"Extras","menu_href":"#"}]},{"id":2,"menu":"Learn","data":[{"menu_name":"Feature","menu_href":"#"},{"menu_name":"Download","menu_href":"#"},{"menu_name":"Integration","menu_href":"#"},{"menu_name":"Extras","menu_href":"#"}]},{"id":3,"menu":"Foundation","data":[{"menu_name":"About Us","menu_href":"#"},{"menu_name":"Customers","menu_href":"#"},{"menu_name":"Resources","menu_href":"#"},{"menu_name":"Blog","menu_href":"#"}]}],"contact_app":[{"menu":"Contact","data":[{"id":1,"image":"app-store.png","image_href":"#"},{"id":2,"image":"google-pay.png","image_href":"#"}]}],"bottom_menu":{"text":"All rights reserved.","data":[{"menu_name":"Privacy Policy","menu_href":"#"},{"menu_name":"Github","menu_href":"#"},{"menu_name":"Press Kit","menu_href":"#"},{"menu_name":"Contact","menu_href":"#"}]}},"custom_class_name":""}', 'footer-section.png', 'custome-footer-section', '2021-10-22 17:38:44', '2021-11-17 13:56:38');
/*!40000 ALTER TABLE `landing_page_sections` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.leads
CREATE TABLE IF NOT EXISTS `leads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `stage_id` int(11) NOT NULL,
  `sources` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `labels` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_converted` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leads_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.leads: 1 rows
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` (`id`, `name`, `email`, `subject`, `user_id`, `pipeline_id`, `stage_id`, `sources`, `products`, `notes`, `labels`, `order`, `created_by`, `is_active`, `is_converted`, `date`, `created_at`, `updated_at`) VALUES
	(1, 'é™³å°å§', 'mrschan@gmail.com', 'æŸ¥è©¢è¨‚é€ ç¡æˆ¿å‚¢ä¿¬', 4, 1, 1, NULL, NULL, NULL, NULL, 0, 1, 1, 0, '2021-11-18', '2021-11-18 13:20:06', '2021-11-18 13:20:06');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.lead_activity_logs
CREATE TABLE IF NOT EXISTS `lead_activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `lead_id` bigint(20) unsigned NOT NULL,
  `log_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.lead_activity_logs: 0 rows
/*!40000 ALTER TABLE `lead_activity_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_activity_logs` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.lead_calls
CREATE TABLE IF NOT EXISTS `lead_calls` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) unsigned NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `call_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_calls_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.lead_calls: 0 rows
/*!40000 ALTER TABLE `lead_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_calls` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.lead_discussions
CREATE TABLE IF NOT EXISTS `lead_discussions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_discussions_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.lead_discussions: 0 rows
/*!40000 ALTER TABLE `lead_discussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_discussions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.lead_emails
CREATE TABLE IF NOT EXISTS `lead_emails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) unsigned NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_emails_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.lead_emails: 0 rows
/*!40000 ALTER TABLE `lead_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_emails` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.lead_files
CREATE TABLE IF NOT EXISTS `lead_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` bigint(20) unsigned NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lead_files_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.lead_files: 0 rows
/*!40000 ALTER TABLE `lead_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `lead_files` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.lead_stages
CREATE TABLE IF NOT EXISTS `lead_stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.lead_stages: 5 rows
/*!40000 ALTER TABLE `lead_stages` DISABLE KEYS */;
INSERT INTO `lead_stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Draft', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Sent', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Open', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Revised', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Declined', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `lead_stages` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.leaves
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `applied_on` date NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_leave_days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `leave_reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.leaves: 1 rows
/*!40000 ALTER TABLE `leaves` DISABLE KEYS */;
INSERT INTO `leaves` (`id`, `employee_id`, `leave_type_id`, `applied_on`, `start_date`, `end_date`, `total_leave_days`, `leave_reason`, `remark`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, '2021-11-18', '2021-09-09', '2021-09-09', '0', 'Flu', 'Sick', 'Pending', 1, '2021-11-18 13:36:19', '2021-11-18 13:36:19');
/*!40000 ALTER TABLE `leaves` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.leave_types
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.leave_types: 1 rows
/*!40000 ALTER TABLE `leave_types` DISABLE KEYS */;
INSERT INTO `leave_types` (`id`, `title`, `days`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Sick leave', 10, 1, '2021-11-18 13:35:24', '2021-11-18 13:35:24');
/*!40000 ALTER TABLE `leave_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.loans
CREATE TABLE IF NOT EXISTS `loans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `loan_option` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.loans: 0 rows
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.loan_options
CREATE TABLE IF NOT EXISTS `loan_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.loan_options: 0 rows
/*!40000 ALTER TABLE `loan_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `loan_options` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.log_activities
CREATE TABLE IF NOT EXISTS `log_activities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.log_activities: 0 rows
/*!40000 ALTER TABLE `log_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_activities` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.meetings
CREATE TABLE IF NOT EXISTS `meetings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) NOT NULL,
  `department_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.meetings: 0 rows
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.meeting_employees
CREATE TABLE IF NOT EXISTS `meeting_employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meeting_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.meeting_employees: 0 rows
/*!40000 ALTER TABLE `meeting_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `meeting_employees` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.messages
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.messages: 0 rows
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.migrations: 166 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_09_22_192348_create_messages_table', 1),
	(5, '2019_09_28_102009_create_settings_table', 1),
	(6, '2019_09_30_050856_create_pipelines_table', 1),
	(7, '2019_09_30_052036_create_sources_table', 1),
	(8, '2019_09_30_061801_create_stages_table', 1),
	(9, '2019_09_30_092218_create_labels_table', 1),
	(10, '2019_10_03_052618_create_deals_table', 1),
	(11, '2019_10_05_045358_create_user_deals_table', 1),
	(12, '2019_10_05_045359_create_client_deals_table', 1),
	(13, '2019_10_07_054657_create_deal_files_table', 1),
	(14, '2019_10_07_091153_create_deal_tasks_table', 1),
	(15, '2019_10_14_055151_create_deal_discussions_table', 1),
	(16, '2019_10_16_211433_create_favorites_table', 1),
	(17, '2019_10_18_223259_add_avatar_to_users', 1),
	(18, '2019_10_20_211056_add_messenger_color_to_users', 1),
	(19, '2019_10_22_000539_add_dark_mode_to_users', 1),
	(20, '2019_10_24_060326_create_projectstages_table', 1),
	(21, '2019_10_25_214038_add_active_status_to_users', 1),
	(22, '2019_11_12_073012_create_bug_comments_table', 1),
	(23, '2019_11_12_100007_create_bug_files_table', 1),
	(24, '2019_11_13_051828_create_taxes_table', 1),
	(25, '2019_11_13_055026_create_invoices_table', 1),
	(26, '2019_12_18_110230_create_bugs_table', 1),
	(27, '2019_12_18_112007_create_bug_statuses_table', 1),
	(28, '2019_12_26_101754_create_departments_table', 1),
	(29, '2019_12_26_101814_create_designations_table', 1),
	(30, '2019_12_26_105721_create_documents_table', 1),
	(31, '2019_12_27_083751_create_branches_table', 1),
	(32, '2019_12_27_090831_create_employees_table', 1),
	(33, '2019_12_27_112922_create_employee_documents_table', 1),
	(34, '2019_12_28_050508_create_awards_table', 1),
	(35, '2019_12_28_050919_create_award_types_table', 1),
	(36, '2019_12_31_060916_create_termination_types_table', 1),
	(37, '2019_12_31_062259_create_terminations_table', 1),
	(38, '2019_12_31_070521_create_resignations_table', 1),
	(39, '2019_12_31_072252_create_travels_table', 1),
	(40, '2019_12_31_090637_create_promotions_table', 1),
	(41, '2019_12_31_092838_create_transfers_table', 1),
	(42, '2019_12_31_100319_create_warnings_table', 1),
	(43, '2019_12_31_103019_create_complaints_table', 1),
	(44, '2020_01_02_090837_create_payslip_types_table', 1),
	(45, '2020_01_02_093331_create_allowance_options_table', 1),
	(46, '2020_01_02_102558_create_loan_options_table', 1),
	(47, '2020_01_02_103822_create_deduction_options_table', 1),
	(48, '2020_01_02_110828_create_genrate_payslip_options_table', 1),
	(49, '2020_01_02_111807_create_set_salaries_table', 1),
	(50, '2020_01_03_084302_create_allowances_table', 1),
	(51, '2020_01_03_101735_create_commissions_table', 1),
	(52, '2020_01_03_105019_create_loans_table', 1),
	(53, '2020_01_03_105046_create_saturation_deductions_table', 1),
	(54, '2020_01_03_105100_create_other_payments_table', 1),
	(55, '2020_01_03_105111_create_overtimes_table', 1),
	(56, '2020_01_04_060343_create_contract_types_table', 1),
	(57, '2020_01_04_072527_create_pay_slips_table', 1),
	(58, '2020_01_08_063207_create_product_services_table', 1),
	(59, '2020_01_08_084029_create_product_service_categories_table', 1),
	(60, '2020_01_08_092717_create_product_service_units_table', 1),
	(61, '2020_01_08_121541_create_customers_table', 1),
	(62, '2020_01_09_104945_create_venders_table', 1),
	(63, '2020_01_09_113852_create_bank_accounts_table', 1),
	(64, '2020_01_09_124222_create_bank_transfers_table', 1),
	(65, '2020_01_10_064723_create_transactions_table', 1),
	(66, '2020_01_13_072608_create_invoice_products_table', 1),
	(67, '2020_01_13_084720_create_events_table', 1),
	(68, '2020_01_15_034438_create_revenues_table', 1),
	(69, '2020_01_15_051228_create_bills_table', 1),
	(70, '2020_01_15_060859_create_bill_products_table', 1),
	(71, '2020_01_15_073237_create_payments_table', 1),
	(72, '2020_01_16_041720_create_announcements_table', 1),
	(73, '2020_01_16_090747_create_leave_types_table', 1),
	(74, '2020_01_16_093256_create_leaves_table', 1),
	(75, '2020_01_16_110357_create_meetings_table', 1),
	(76, '2020_01_18_051650_create_invoice_payments_table', 1),
	(77, '2020_01_20_091035_create_bill_payments_table', 1),
	(78, '2020_01_23_101613_create_meeting_employees_table', 1),
	(79, '2020_01_23_123844_create_event_employees_table', 1),
	(80, '2020_01_24_062752_create_announcement_employees_table', 1),
	(81, '2020_01_27_052503_create_attendance_employees_table', 1),
	(82, '2020_02_25_052356_create_credit_notes_table', 1),
	(83, '2020_02_26_033827_create_debit_notes_table', 1),
	(84, '2020_03_04_122711_create_leads_table', 1),
	(85, '2020_03_04_122801_create_lead_stages_table', 1),
	(86, '2020_03_05_042105_create_lead_activity_logs_table', 1),
	(87, '2020_03_05_042308_create_lead_discussions_table', 1),
	(88, '2020_03_05_042318_create_user_leads_table', 1),
	(89, '2020_03_05_042549_create_lead_files_table', 1),
	(90, '2020_03_05_042636_create_lead_emails_table', 1),
	(91, '2020_03_05_042710_create_lead_calls_table', 1),
	(92, '2020_03_05_044157_create_deal_emails_table', 1),
	(93, '2020_03_05_044322_create_deal_calls_table', 1),
	(94, '2020_03_17_104345_create_estimations_table', 1),
	(95, '2020_03_18_104909_create_notifications_table', 1),
	(96, '2020_04_02_045834_create_proposals_table', 1),
	(97, '2020_04_02_055706_create_proposal_products_table', 1),
	(98, '2020_04_18_035141_create_goals_table', 1),
	(99, '2020_04_21_115823_create_assets_table', 1),
	(100, '2020_04_24_023732_create_custom_fields_table', 1),
	(101, '2020_04_24_024217_create_custom_field_values_table', 1),
	(102, '2020_05_01_122144_create_ducument_uploads_table', 1),
	(103, '2020_05_02_075614_create_email_templates_table', 1),
	(104, '2020_05_02_075630_create_email_template_langs_table', 1),
	(105, '2020_05_02_075647_create_user_email_templates_table', 1),
	(106, '2020_05_04_070452_create_indicators_table', 1),
	(107, '2020_05_05_023742_create_appraisals_table', 1),
	(108, '2020_05_05_061241_create_goal_types_table', 1),
	(109, '2020_05_05_095926_create_goal_trackings_table', 1),
	(110, '2020_05_07_093520_create_company_policies_table', 1),
	(111, '2020_05_07_131311_create_training_types_table', 1),
	(112, '2020_05_08_023838_create_trainers_table', 1),
	(113, '2020_05_08_043039_create_trainings_table', 1),
	(114, '2020_05_21_065337_create_permission_tables', 1),
	(115, '2020_06_02_085538_create_task_stages_table', 1),
	(116, '2020_06_30_043627_create_user_to_dos_table', 1),
	(117, '2020_06_30_120854_add_balance_to_customers_table', 1),
	(118, '2020_06_30_121531_add_balance_to_vender_table', 1),
	(119, '2020_07_01_033457_change_product_services_tax_id_column_type', 1),
	(120, '2020_07_01_063255_change_tax_column_type', 1),
	(121, '2020_07_03_054342_add_convert_in_proposal_table', 1),
	(122, '2020_07_04_041452_create_project_email_templates_table', 1),
	(123, '2020_07_06_110501_create_user_contacts_table', 1),
	(124, '2020_07_07_052211_add_field_in_invoice_payments_table', 1),
	(125, '2020_07_18_054159_create_contracts_table', 1),
	(126, '2020_07_22_131715_change_amount_type_size', 1),
	(127, '2020_08_04_034206_change_settings_value_type', 1),
	(128, '2020_08_10_073242_create_project_invoices_table', 1),
	(129, '2020_09_16_040822_change_user_type_size_in_users_table', 1),
	(130, '2020_09_17_053350_change_shipping_default_val', 1),
	(131, '2020_09_17_070031_add_description_field', 1),
	(132, '2020_10_07_034726_create_holidays_table', 1),
	(133, '2021_01_11_062508_create_chart_of_accounts_table', 1),
	(134, '2021_01_11_070441_create_chart_of_account_types_table', 1),
	(135, '2021_01_12_032834_create_journal_entries_table', 1),
	(136, '2021_01_12_033815_create_journal_items_table', 1),
	(137, '2021_01_20_072219_create_chart_of_account_sub_types_table', 1),
	(138, '2021_01_20_113044_create_log_activities_table', 1),
	(139, '2021_03_13_114832_create_job_categories_table', 1),
	(140, '2021_03_13_123125_create_job_stages_table', 1),
	(141, '2021_03_15_094707_create_jobs_table', 1),
	(142, '2021_03_15_153745_create_job_applications_table', 1),
	(143, '2021_03_16_115140_create_job_application_notes_table', 1),
	(144, '2021_03_17_100224_create_projects_table', 1),
	(145, '2021_03_17_163107_create_custom_questions_table', 1),
	(146, '2021_03_18_060536_create_project_tasks_table', 1),
	(147, '2021_03_18_070146_create_milestones_table', 1),
	(148, '2021_03_18_091547_create_task_checklists_table', 1),
	(149, '2021_03_18_092113_create_task_files_table', 1),
	(150, '2021_03_18_092400_create_task_comments_table', 1),
	(151, '2021_03_18_102517_create_activity_logs_table', 1),
	(152, '2021_03_18_140630_create_interview_schedules_table', 1),
	(153, '2021_03_19_053350_create_project_users_table', 1),
	(154, '2021_03_22_100636_create_expenses_table', 1),
	(155, '2021_03_22_122532_create_job_on_boards_table', 1),
	(156, '2021_03_23_032633_create_timesheets_table', 1),
	(157, '2021_06_15_071245_create_landing_page_sections_table', 1),
	(158, '2021_08_03_093459_create_form_builders_table', 1),
	(159, '2021_08_03_094508_create_form_fields_table', 1),
	(160, '2021_08_03_094534_create_form_field_responses_table', 1),
	(161, '2021_08_03_094548_create_form_responses_table', 1),
	(162, '2021_08_04_090539_company_payment_settings', 1),
	(163, '2021_08_05_114738_create_supports_table', 1),
	(164, '2021_08_05_115212_create_support_replies_table', 1),
	(165, '2021_08_20_084119_create_competencies_table', 1),
	(166, '2021_08_21_044211_add_rating_in_competencies', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.milestones
CREATE TABLE IF NOT EXISTS `milestones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.milestones: 0 rows
/*!40000 ALTER TABLE `milestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `milestones` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.model_has_permissions: 0 rows
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.model_has_roles: 5 rows
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\User', 1),
	(2, 'App\\User', 2),
	(2, 'App\\User', 4),
	(3, 'App\\User', 3),
	(3, 'App\\User', 5);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.notifications: 0 rows
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.other_payments
CREATE TABLE IF NOT EXISTS `other_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.other_payments: 0 rows
/*!40000 ALTER TABLE `other_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_payments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.overtimes
CREATE TABLE IF NOT EXISTS `overtimes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_days` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.overtimes: 0 rows
/*!40000 ALTER TABLE `overtimes` DISABLE KEYS */;
/*!40000 ALTER TABLE `overtimes` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL,
  `vender_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `recurring` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.payments: 1 rows
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`id`, `date`, `amount`, `account_id`, `vender_id`, `description`, `category_id`, `recurring`, `payment_method`, `reference`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, '2021-11-18', 3000, 2, 1, 'è¨‚é€ æˆæœ¬', 3, NULL, 0, '', 1, '2021-11-18 13:44:00', '2021-11-18 13:44:00');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.payslip_types
CREATE TABLE IF NOT EXISTS `payslip_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.payslip_types: 1 rows
/*!40000 ALTER TABLE `payslip_types` DISABLE KEYS */;
INSERT INTO `payslip_types` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Basic Salary', 1, '2021-11-18 13:30:38', '2021-11-18 13:30:38');
/*!40000 ALTER TABLE `payslip_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.pay_slips
CREATE TABLE IF NOT EXISTS `pay_slips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `net_payble` int(11) NOT NULL,
  `salary_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `allowance` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saturation_deduction` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.pay_slips: 0 rows
/*!40000 ALTER TABLE `pay_slips` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay_slips` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.permissions: 451 rows
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'show hrm dashboard', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(2, 'copy invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(3, 'show project dashboard', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(4, 'show account dashboard', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(5, 'manage user', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(6, 'create user', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(7, 'edit user', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(8, 'delete user', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(9, 'create language', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(10, 'manage role', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(11, 'create role', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(12, 'edit role', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(13, 'delete role', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(14, 'manage permission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(15, 'create permission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(16, 'edit permission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(17, 'delete permission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(18, 'manage company settings', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(19, 'manage print settings', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(20, 'manage business settings', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(21, 'manage stripe settings', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(22, 'manage expense', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(23, 'create expense', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(24, 'edit expense', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(25, 'delete expense', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(26, 'manage invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(27, 'create invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(28, 'edit invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(29, 'delete invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(30, 'show invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(31, 'create payment invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(32, 'delete payment invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(33, 'send invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(34, 'delete invoice product', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(35, 'convert invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(36, 'manage constant unit', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(37, 'create constant unit', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(38, 'edit constant unit', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(39, 'delete constant unit', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(40, 'manage constant tax', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(41, 'create constant tax', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(42, 'edit constant tax', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(43, 'delete constant tax', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(44, 'manage constant category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(45, 'create constant category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(46, 'edit constant category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(47, 'delete constant category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(48, 'manage product & service', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(49, 'create product & service', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(50, 'edit product & service', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(51, 'delete product & service', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(52, 'manage customer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(53, 'create customer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(54, 'edit customer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(55, 'delete customer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(56, 'show customer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(57, 'manage vender', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(58, 'create vender', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(59, 'edit vender', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(60, 'delete vender', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(61, 'show vender', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(62, 'manage bank account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(63, 'create bank account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(64, 'edit bank account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(65, 'delete bank account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(66, 'manage bank transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(67, 'create bank transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(68, 'edit bank transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(69, 'delete bank transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(70, 'manage transaction', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(71, 'manage revenue', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(72, 'create revenue', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(73, 'edit revenue', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(74, 'delete revenue', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(75, 'manage bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(76, 'create bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(77, 'edit bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(78, 'delete bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(79, 'show bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(80, 'manage payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(81, 'create payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(82, 'edit payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(83, 'delete payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(84, 'delete bill product', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(85, 'send bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(86, 'create payment bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(87, 'delete payment bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(88, 'manage order', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(89, 'income report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(90, 'expense report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(91, 'income vs expense report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(92, 'invoice report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(93, 'bill report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(94, 'tax report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(95, 'loss & profit report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(96, 'manage customer payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(97, 'manage customer transaction', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(98, 'manage customer invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(99, 'vender manage bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(100, 'manage vender bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(101, 'manage vender payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(102, 'manage vender transaction', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(103, 'manage credit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(104, 'create credit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(105, 'edit credit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(106, 'delete credit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(107, 'manage debit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(108, 'create debit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(109, 'edit debit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(110, 'delete debit note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(111, 'duplicate invoice', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(112, 'duplicate bill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(113, 'manage proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(114, 'create proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(115, 'edit proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(116, 'delete proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(117, 'duplicate proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(118, 'show proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(119, 'send proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(120, 'delete proposal product', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(121, 'manage customer proposal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(122, 'manage goal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(123, 'create goal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(124, 'edit goal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(125, 'delete goal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(126, 'manage assets', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(127, 'create assets', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(128, 'edit assets', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(129, 'delete assets', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(130, 'statement report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(131, 'manage constant custom field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(132, 'create constant custom field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(133, 'edit constant custom field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(134, 'delete constant custom field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(135, 'manage chart of account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(136, 'create chart of account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(137, 'edit chart of account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(138, 'delete chart of account', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(139, 'manage journal entry', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(140, 'create journal entry', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(141, 'edit journal entry', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(142, 'delete journal entry', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(143, 'show journal entry', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(144, 'balance sheet report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(145, 'ledger report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(146, 'trial balance report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(147, 'manage client', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(148, 'create client', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(149, 'edit client', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(150, 'delete client', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(151, 'manage lead', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(152, 'create lead', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(153, 'view lead', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(154, 'edit lead', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(155, 'delete lead', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(156, 'move lead', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(157, 'create lead call', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(158, 'edit lead call', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(159, 'delete lead call', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(160, 'create lead email', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(161, 'manage pipeline', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(162, 'create pipeline', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(163, 'edit pipeline', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(164, 'delete pipeline', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(165, 'manage lead stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(166, 'create lead stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(167, 'edit lead stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(168, 'delete lead stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(169, 'convert lead to deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(170, 'manage source', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(171, 'create source', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(172, 'edit source', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(173, 'delete source', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(174, 'manage label', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(175, 'create label', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(176, 'edit label', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(177, 'delete label', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(178, 'manage deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(179, 'create deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(180, 'view task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(181, 'create task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(182, 'edit task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(183, 'delete task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(184, 'edit deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(185, 'view deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(186, 'delete deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(187, 'move deal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(188, 'create deal call', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(189, 'edit deal call', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(190, 'delete deal call', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(191, 'create deal email', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(192, 'manage stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(193, 'create stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(194, 'edit stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(195, 'delete stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(196, 'manage employee', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(197, 'create employee', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(198, 'view employee', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(199, 'edit employee', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(200, 'delete employee', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(201, 'manage employee profile', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(202, 'show employee profile', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(203, 'manage department', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(204, 'create department', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(205, 'view department', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(206, 'edit department', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(207, 'delete department', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(208, 'manage designation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(209, 'create designation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(210, 'view designation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(211, 'edit designation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(212, 'delete designation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(213, 'manage branch', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(214, 'create branch', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(215, 'edit branch', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(216, 'delete branch', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(217, 'manage document type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(218, 'create document type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(219, 'edit document type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(220, 'delete document type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(221, 'manage document', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(222, 'create document', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(223, 'edit document', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(224, 'delete document', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(225, 'manage payslip type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(226, 'create payslip type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(227, 'edit payslip type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(228, 'delete payslip type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(229, 'create allowance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(230, 'edit allowance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(231, 'delete allowance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(232, 'create commission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(233, 'edit commission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(234, 'delete commission', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(235, 'manage allowance option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(236, 'create allowance option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(237, 'edit allowance option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(238, 'delete allowance option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(239, 'manage loan option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(240, 'create loan option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(241, 'edit loan option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(242, 'delete loan option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(243, 'manage deduction option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(244, 'create deduction option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(245, 'edit deduction option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(246, 'delete deduction option', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(247, 'create loan', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(248, 'edit loan', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(249, 'delete loan', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(250, 'create saturation deduction', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(251, 'edit saturation deduction', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(252, 'delete saturation deduction', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(253, 'create other payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(254, 'edit other payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(255, 'delete other payment', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(256, 'create overtime', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(257, 'edit overtime', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(258, 'delete overtime', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(259, 'manage set salary', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(260, 'edit set salary', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(261, 'manage pay slip', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(262, 'create set salary', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(263, 'create pay slip', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(264, 'manage company policy', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(265, 'create company policy', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(266, 'edit company policy', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(267, 'manage appraisal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(268, 'create appraisal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(269, 'edit appraisal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(270, 'show appraisal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(271, 'delete appraisal', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(272, 'manage goal tracking', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(273, 'create goal tracking', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(274, 'edit goal tracking', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(275, 'delete goal tracking', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(276, 'manage goal type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(277, 'create goal type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(278, 'edit goal type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(279, 'delete goal type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(280, 'manage indicator', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(281, 'create indicator', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(282, 'edit indicator', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(283, 'show indicator', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(284, 'delete indicator', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(285, 'manage training', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(286, 'create training', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(287, 'edit training', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(288, 'delete training', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(289, 'show training', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(290, 'manage trainer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(291, 'create trainer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(292, 'edit trainer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(293, 'delete trainer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(294, 'manage training type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(295, 'create training type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(296, 'edit training type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(297, 'delete training type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(298, 'manage award', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(299, 'create award', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(300, 'edit award', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(301, 'delete award', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(302, 'manage award type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(303, 'create award type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(304, 'edit award type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(305, 'delete award type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(306, 'manage resignation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(307, 'create resignation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(308, 'edit resignation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(309, 'delete resignation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(310, 'manage travel', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(311, 'create travel', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(312, 'edit travel', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(313, 'delete travel', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(314, 'manage promotion', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(315, 'create promotion', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(316, 'edit promotion', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(317, 'delete promotion', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(318, 'manage complaint', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(319, 'create complaint', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(320, 'edit complaint', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(321, 'delete complaint', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(322, 'manage warning', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(323, 'create warning', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(324, 'edit warning', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(325, 'delete warning', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(326, 'manage termination', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(327, 'create termination', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(328, 'edit termination', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(329, 'delete termination', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(330, 'manage termination type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(331, 'create termination type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(332, 'edit termination type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(333, 'delete termination type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(334, 'manage job application', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(335, 'create job application', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(336, 'show job application', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(337, 'delete job application', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(338, 'move job application', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(339, 'add job application skill', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(340, 'add job application note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(341, 'delete job application note', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(342, 'manage job onBoard', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(343, 'manage job category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(344, 'create job category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(345, 'edit job category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(346, 'delete job category', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(347, 'manage job', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(348, 'create job', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(349, 'edit job', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(350, 'show job', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(351, 'delete job', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(352, 'manage job stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(353, 'create job stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(354, 'edit job stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(355, 'delete job stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(356, 'manage custom question', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(357, 'create custom question', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(358, 'edit custom question', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(359, 'delete custom question', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(360, 'create interview schedule', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(361, 'edit interview schedule', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(362, 'delete interview schedule', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(363, 'show interview schedule', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(364, 'create estimation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(365, 'view estimation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(366, 'edit estimation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(367, 'delete estimation', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(368, 'edit holiday', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(369, 'create holiday', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(370, 'delete holiday', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(371, 'manage holiday', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(372, 'show career', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(373, 'manage meeting', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(374, 'create meeting', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(375, 'edit meeting', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(376, 'delete meeting', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(377, 'manage event', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(378, 'create event', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(379, 'edit event', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(380, 'delete event', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(381, 'manage transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(382, 'create transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(383, 'edit transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(384, 'delete transfer', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(385, 'manage announcement', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(386, 'create announcement', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(387, 'edit announcement', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(388, 'delete announcement', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(389, 'manage leave', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(390, 'create leave', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(391, 'edit leave', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(392, 'delete leave', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(393, 'manage leave type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(394, 'create leave type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(395, 'edit leave type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(396, 'delete leave type', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(397, 'manage attendance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(398, 'create attendance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(399, 'edit attendance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(400, 'delete attendance', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(401, 'manage report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(402, 'manage project', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(403, 'create project', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(404, 'view project', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(405, 'edit project', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(406, 'delete project', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(407, 'create milestone', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(408, 'edit milestone', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(409, 'delete milestone', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(410, 'view milestone', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(411, 'view grant chart', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(412, 'manage project stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(413, 'create project stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(414, 'edit project stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(415, 'delete project stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(416, 'view timesheet', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(417, 'view expense', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(418, 'manage project task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(419, 'create project task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(420, 'edit project task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(421, 'view project task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(422, 'delete project task', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(423, 'view activity', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(424, 'view CRM activity', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(425, 'manage project task stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(426, 'edit project task stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(427, 'create project task stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(428, 'delete project task stage', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(429, 'manage timesheet', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(430, 'create timesheet', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(431, 'edit timesheet', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(432, 'delete timesheet', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(433, 'manage bug report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(434, 'create bug report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(435, 'edit bug report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(436, 'delete bug report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(437, 'move bug report', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(438, 'manage bug status', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(439, 'create bug status', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(440, 'edit bug status', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(441, 'delete bug status', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(442, 'manage client dashboard', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(443, 'manage form builder', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(444, 'create form builder', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(445, 'edit form builder', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(446, 'delete form builder', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(447, 'manage form field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(448, 'create form field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(449, 'edit form field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(450, 'delete form field', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(451, 'view form response', 'web', '2021-10-22 17:38:42', '2021-10-22 17:38:42');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.pipelines
CREATE TABLE IF NOT EXISTS `pipelines` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.pipelines: 1 rows
/*!40000 ALTER TABLE `pipelines` DISABLE KEYS */;
INSERT INTO `pipelines` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Sales', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `pipelines` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.product_services
CREATE TABLE IF NOT EXISTS `product_services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` double(20,2) NOT NULL DEFAULT 0.00,
  `purchase_price` double(20,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `tax_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT 0,
  `unit_id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.product_services: 1 rows
/*!40000 ALTER TABLE `product_services` DISABLE KEYS */;
INSERT INTO `product_services` (`id`, `name`, `sku`, `sale_price`, `purchase_price`, `quantity`, `tax_id`, `category_id`, `unit_id`, `type`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'è¨‚åº¦6å‘ŽåºŠ(Aæ¬¾ï¼‰', '001', 8000.00, 7500.00, 0, '1', 1, 1, 'product', 'è¨‚åº¦6å‘ŽåºŠï¼ŒAæ¬¾ï¼Œç’°ä¿æœ¨E2', 1, '2021-11-18 13:15:43', '2021-11-18 13:15:43');
/*!40000 ALTER TABLE `product_services` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.product_service_categories
CREATE TABLE IF NOT EXISTS `product_service_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#fc544b',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.product_service_categories: 3 rows
/*!40000 ALTER TABLE `product_service_categories` DISABLE KEYS */;
INSERT INTO `product_service_categories` (`id`, `name`, `type`, `color`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Furniture', '0', '22B9FF', 1, '2021-11-18 13:10:26', '2021-11-18 13:10:26'),
	(2, 'è¨‚é€ æ”¶å…¥', '1', '81FFD7', 1, '2021-11-18 13:42:15', '2021-11-18 13:42:15'),
	(3, 'å·¥å» é–‹æ”¯', '2', 'FF93CB', 1, '2021-11-18 13:42:37', '2021-11-18 13:42:37');
/*!40000 ALTER TABLE `product_service_categories` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.product_service_units
CREATE TABLE IF NOT EXISTS `product_service_units` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.product_service_units: 1 rows
/*!40000 ALTER TABLE `product_service_units` DISABLE KEYS */;
INSERT INTO `product_service_units` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'pcs', 1, '2021-11-18 13:10:47', '2021-11-18 13:10:47');
/*!40000 ALTER TABLE `product_service_units` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `project_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.projects: 0 rows
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.projectstages
CREATE TABLE IF NOT EXISTS `projectstages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.projectstages: 0 rows
/*!40000 ALTER TABLE `projectstages` DISABLE KEYS */;
/*!40000 ALTER TABLE `projectstages` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.project_email_templates
CREATE TABLE IF NOT EXISTS `project_email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.project_email_templates: 0 rows
/*!40000 ALTER TABLE `project_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_email_templates` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.project_invoices
CREATE TABLE IF NOT EXISTS `project_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint(20) unsigned NOT NULL,
  `project_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `tax_id` bigint(20) unsigned NOT NULL,
  `due_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.project_invoices: 0 rows
/*!40000 ALTER TABLE `project_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_invoices` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.project_tasks
CREATE TABLE IF NOT EXISTS `project_tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_hrs` int(11) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `priority` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'medium',
  `priority_color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_to` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `milestone_id` int(11) NOT NULL DEFAULT 0,
  `stage_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `is_favourite` int(11) NOT NULL DEFAULT 0,
  `is_complete` int(11) NOT NULL DEFAULT 0,
  `marked_at` date DEFAULT NULL,
  `progress` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.project_tasks: 0 rows
/*!40000 ALTER TABLE `project_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_tasks` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.project_users
CREATE TABLE IF NOT EXISTS `project_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invited_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.project_users: 0 rows
/*!40000 ALTER TABLE `project_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.promotions
CREATE TABLE IF NOT EXISTS `promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `promotion_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.promotions: 0 rows
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.proposals
CREATE TABLE IF NOT EXISTS `proposals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `issue_date` date NOT NULL,
  `send_date` date DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `discount_apply` int(11) NOT NULL DEFAULT 0,
  `converted_invoice_id` int(11) NOT NULL DEFAULT 0,
  `is_convert` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.proposals: 0 rows
/*!40000 ALTER TABLE `proposals` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposals` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.proposal_products
CREATE TABLE IF NOT EXISTS `proposal_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `proposal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tax` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.proposal_products: 0 rows
/*!40000 ALTER TABLE `proposal_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `proposal_products` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.resignations
CREATE TABLE IF NOT EXISTS `resignations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `resignation_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.resignations: 0 rows
/*!40000 ALTER TABLE `resignations` DISABLE KEYS */;
/*!40000 ALTER TABLE `resignations` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.revenues
CREATE TABLE IF NOT EXISTS `revenues` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `account_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.revenues: 1 rows
/*!40000 ALTER TABLE `revenues` DISABLE KEYS */;
INSERT INTO `revenues` (`id`, `date`, `amount`, `account_id`, `customer_id`, `category_id`, `payment_method`, `reference`, `description`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, '2021-11-18', 7500, 2, 1, 2, 0, '', 'tailor-made furniture', 1, '2021-11-18 13:46:31', '2021-11-18 13:46:31');
/*!40000 ALTER TABLE `revenues` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.roles: 3 rows
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'company', 'web', 0, '2021-10-22 17:38:42', '2021-10-22 17:38:42'),
	(2, 'accountant', 'web', 1, '2021-10-22 17:38:43', '2021-10-22 17:38:43'),
	(3, 'client', 'web', 1, '2021-10-22 17:38:43', '2021-10-22 17:38:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.role_has_permissions: 582 rows
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(4, 2),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(19, 2),
	(20, 1),
	(22, 1),
	(22, 2),
	(23, 1),
	(23, 2),
	(24, 1),
	(24, 2),
	(25, 1),
	(25, 2),
	(26, 1),
	(26, 2),
	(27, 1),
	(27, 2),
	(28, 1),
	(28, 2),
	(29, 1),
	(29, 2),
	(30, 1),
	(30, 2),
	(31, 1),
	(31, 2),
	(32, 1),
	(32, 2),
	(33, 1),
	(33, 2),
	(34, 1),
	(34, 2),
	(35, 1),
	(35, 2),
	(36, 1),
	(36, 2),
	(37, 1),
	(37, 2),
	(38, 1),
	(38, 2),
	(39, 1),
	(39, 2),
	(40, 1),
	(40, 2),
	(41, 1),
	(41, 2),
	(42, 1),
	(42, 2),
	(43, 1),
	(43, 2),
	(44, 1),
	(44, 2),
	(45, 1),
	(45, 2),
	(46, 1),
	(46, 2),
	(47, 1),
	(47, 2),
	(48, 1),
	(48, 2),
	(49, 1),
	(49, 2),
	(50, 1),
	(50, 2),
	(51, 1),
	(51, 2),
	(52, 1),
	(52, 2),
	(53, 1),
	(53, 2),
	(54, 1),
	(54, 2),
	(55, 1),
	(55, 2),
	(56, 1),
	(56, 2),
	(57, 1),
	(57, 2),
	(58, 1),
	(58, 2),
	(59, 1),
	(59, 2),
	(60, 1),
	(60, 2),
	(61, 1),
	(61, 2),
	(62, 1),
	(62, 2),
	(63, 1),
	(63, 2),
	(64, 1),
	(64, 2),
	(65, 1),
	(65, 2),
	(66, 1),
	(66, 2),
	(67, 1),
	(67, 2),
	(68, 1),
	(68, 2),
	(69, 1),
	(69, 2),
	(70, 1),
	(70, 2),
	(71, 1),
	(71, 2),
	(72, 1),
	(72, 2),
	(73, 1),
	(73, 2),
	(74, 1),
	(74, 2),
	(75, 1),
	(75, 2),
	(76, 1),
	(76, 2),
	(77, 1),
	(77, 2),
	(78, 1),
	(78, 2),
	(79, 1),
	(79, 2),
	(80, 1),
	(80, 2),
	(81, 1),
	(81, 2),
	(82, 1),
	(82, 2),
	(83, 1),
	(83, 2),
	(84, 1),
	(84, 2),
	(85, 1),
	(85, 2),
	(86, 1),
	(86, 2),
	(87, 1),
	(87, 2),
	(88, 1),
	(89, 1),
	(89, 2),
	(90, 1),
	(90, 2),
	(91, 1),
	(91, 2),
	(92, 1),
	(92, 2),
	(93, 1),
	(93, 2),
	(94, 1),
	(94, 2),
	(95, 1),
	(95, 2),
	(103, 1),
	(103, 2),
	(104, 1),
	(104, 2),
	(105, 1),
	(105, 2),
	(106, 1),
	(106, 2),
	(107, 1),
	(107, 2),
	(108, 1),
	(108, 2),
	(109, 1),
	(109, 2),
	(110, 1),
	(110, 2),
	(111, 1),
	(112, 1),
	(113, 1),
	(113, 2),
	(114, 1),
	(114, 2),
	(115, 1),
	(115, 2),
	(116, 1),
	(116, 2),
	(117, 1),
	(117, 2),
	(118, 1),
	(118, 2),
	(119, 1),
	(119, 2),
	(120, 1),
	(120, 2),
	(122, 1),
	(122, 2),
	(123, 1),
	(123, 2),
	(124, 1),
	(124, 2),
	(125, 1),
	(125, 2),
	(126, 1),
	(126, 2),
	(127, 1),
	(127, 2),
	(128, 1),
	(128, 2),
	(129, 1),
	(129, 2),
	(130, 1),
	(130, 2),
	(131, 1),
	(131, 2),
	(132, 1),
	(132, 2),
	(133, 1),
	(133, 2),
	(134, 1),
	(134, 2),
	(135, 1),
	(135, 2),
	(136, 1),
	(136, 2),
	(137, 1),
	(137, 2),
	(138, 1),
	(138, 2),
	(139, 1),
	(139, 2),
	(140, 1),
	(140, 2),
	(141, 1),
	(141, 2),
	(142, 1),
	(142, 2),
	(143, 1),
	(143, 2),
	(144, 1),
	(144, 2),
	(145, 1),
	(145, 2),
	(146, 1),
	(146, 2),
	(147, 1),
	(148, 1),
	(149, 1),
	(150, 1),
	(151, 1),
	(152, 1),
	(153, 1),
	(154, 1),
	(155, 1),
	(156, 1),
	(157, 1),
	(158, 1),
	(159, 1),
	(160, 1),
	(161, 1),
	(161, 3),
	(162, 1),
	(163, 1),
	(164, 1),
	(165, 1),
	(165, 3),
	(166, 1),
	(167, 1),
	(168, 1),
	(169, 1),
	(170, 1),
	(170, 3),
	(171, 1),
	(172, 1),
	(173, 1),
	(174, 1),
	(174, 3),
	(175, 1),
	(176, 1),
	(177, 1),
	(178, 1),
	(178, 3),
	(179, 1),
	(180, 1),
	(180, 3),
	(181, 1),
	(182, 1),
	(183, 1),
	(184, 1),
	(185, 1),
	(185, 3),
	(186, 1),
	(187, 1),
	(187, 3),
	(188, 1),
	(189, 1),
	(190, 1),
	(191, 1),
	(192, 1),
	(192, 3),
	(193, 1),
	(194, 1),
	(195, 1),
	(196, 1),
	(197, 1),
	(198, 1),
	(199, 1),
	(200, 1),
	(201, 1),
	(202, 1),
	(203, 1),
	(204, 1),
	(205, 1),
	(206, 1),
	(207, 1),
	(208, 1),
	(209, 1),
	(210, 1),
	(211, 1),
	(212, 1),
	(213, 1),
	(214, 1),
	(215, 1),
	(216, 1),
	(217, 1),
	(218, 1),
	(219, 1),
	(220, 1),
	(221, 1),
	(222, 1),
	(223, 1),
	(224, 1),
	(225, 1),
	(226, 1),
	(227, 1),
	(228, 1),
	(229, 1),
	(230, 1),
	(231, 1),
	(232, 1),
	(233, 1),
	(234, 1),
	(235, 1),
	(236, 1),
	(237, 1),
	(238, 1),
	(239, 1),
	(240, 1),
	(241, 1),
	(242, 1),
	(243, 1),
	(244, 1),
	(245, 1),
	(246, 1),
	(247, 1),
	(248, 1),
	(249, 1),
	(250, 1),
	(251, 1),
	(252, 1),
	(253, 1),
	(254, 1),
	(255, 1),
	(256, 1),
	(257, 1),
	(258, 1),
	(259, 1),
	(260, 1),
	(261, 1),
	(262, 1),
	(263, 1),
	(264, 1),
	(265, 1),
	(266, 1),
	(267, 1),
	(268, 1),
	(269, 1),
	(270, 1),
	(271, 1),
	(272, 1),
	(273, 1),
	(274, 1),
	(275, 1),
	(276, 1),
	(277, 1),
	(278, 1),
	(279, 1),
	(280, 1),
	(281, 1),
	(282, 1),
	(283, 1),
	(284, 1),
	(285, 1),
	(286, 1),
	(287, 1),
	(288, 1),
	(289, 1),
	(290, 1),
	(291, 1),
	(292, 1),
	(293, 1),
	(294, 1),
	(295, 1),
	(296, 1),
	(297, 1),
	(298, 1),
	(299, 1),
	(300, 1),
	(301, 1),
	(302, 1),
	(303, 1),
	(304, 1),
	(305, 1),
	(306, 1),
	(307, 1),
	(308, 1),
	(309, 1),
	(310, 1),
	(311, 1),
	(312, 1),
	(313, 1),
	(314, 1),
	(315, 1),
	(316, 1),
	(317, 1),
	(318, 1),
	(319, 1),
	(320, 1),
	(321, 1),
	(322, 1),
	(323, 1),
	(324, 1),
	(325, 1),
	(326, 1),
	(327, 1),
	(328, 1),
	(329, 1),
	(330, 1),
	(331, 1),
	(332, 1),
	(333, 1),
	(334, 1),
	(335, 1),
	(336, 1),
	(337, 1),
	(338, 1),
	(339, 1),
	(340, 1),
	(341, 1),
	(342, 1),
	(343, 1),
	(344, 1),
	(345, 1),
	(346, 1),
	(347, 1),
	(348, 1),
	(349, 1),
	(350, 1),
	(351, 1),
	(352, 1),
	(353, 1),
	(354, 1),
	(355, 1),
	(356, 1),
	(357, 1),
	(358, 1),
	(359, 1),
	(360, 1),
	(361, 1),
	(362, 1),
	(363, 1),
	(364, 1),
	(365, 1),
	(366, 1),
	(367, 1),
	(368, 1),
	(369, 1),
	(370, 1),
	(371, 1),
	(372, 1),
	(373, 1),
	(374, 1),
	(375, 1),
	(376, 1),
	(377, 1),
	(378, 1),
	(379, 1),
	(380, 1),
	(381, 1),
	(382, 1),
	(383, 1),
	(384, 1),
	(385, 1),
	(386, 1),
	(387, 1),
	(388, 1),
	(389, 1),
	(390, 1),
	(391, 1),
	(392, 1),
	(393, 1),
	(394, 1),
	(395, 1),
	(396, 1),
	(397, 1),
	(398, 1),
	(399, 1),
	(400, 1),
	(401, 1),
	(402, 1),
	(402, 3),
	(403, 1),
	(404, 1),
	(404, 3),
	(405, 1),
	(406, 1),
	(407, 1),
	(408, 1),
	(409, 1),
	(410, 1),
	(411, 1),
	(411, 3),
	(412, 1),
	(413, 1),
	(414, 1),
	(415, 1),
	(416, 1),
	(416, 3),
	(417, 1),
	(418, 1),
	(418, 3),
	(419, 1),
	(419, 3),
	(420, 1),
	(420, 3),
	(421, 1),
	(421, 3),
	(422, 1),
	(422, 3),
	(423, 1),
	(423, 3),
	(424, 1),
	(425, 1),
	(426, 1),
	(427, 1),
	(428, 1),
	(429, 1),
	(429, 3),
	(430, 1),
	(431, 1),
	(432, 1),
	(433, 1),
	(433, 3),
	(434, 1),
	(434, 3),
	(435, 1),
	(435, 3),
	(436, 1),
	(436, 3),
	(437, 1),
	(437, 3),
	(438, 1),
	(439, 1),
	(440, 1),
	(441, 1),
	(442, 3),
	(443, 1),
	(444, 1),
	(445, 1),
	(446, 1),
	(447, 1),
	(448, 1),
	(449, 1),
	(450, 1),
	(451, 1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.saturation_deductions
CREATE TABLE IF NOT EXISTS `saturation_deductions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `deduction_option` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.saturation_deductions: 0 rows
/*!40000 ALTER TABLE `saturation_deductions` DISABLE KEYS */;
/*!40000 ALTER TABLE `saturation_deductions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_name_created_by_unique` (`name`,`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.settings: 29 rows
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `name`, `value`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'site_currency', 'HKD', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(2, 'site_currency_symbol', '$', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(3, 'site_currency_symbol_position', 'pre', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(4, 'site_date_format', 'M j, Y', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(5, 'site_time_format', 'g:i A', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(6, 'invoice_prefix', '#INVO', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(7, 'proposal_prefix', '#PROP', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(8, 'bill_prefix', '#BILL', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(9, 'customer_prefix', '#CUST', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(10, 'vender_prefix', '#VEND', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(11, 'footer_title', '', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(12, 'decimal_number', '2', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(13, 'journal_prefix', '#JUR', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(14, 'shipping_display', 'on', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(15, 'footer_notes', '', 1, '2021-11-11 13:28:38', '2021-11-11 13:28:38'),
	(16, 'company_name', 'Gasilab Design Limited', 1, NULL, NULL),
	(17, 'company_address', '', 1, NULL, NULL),
	(18, 'company_city', '', 1, NULL, NULL),
	(19, 'company_state', '', 1, NULL, NULL),
	(20, 'company_zipcode', '', 1, NULL, NULL),
	(21, 'company_country', '', 1, NULL, NULL),
	(22, 'company_telephone', '', 1, NULL, NULL),
	(24, 'company_email_from_name', 'team@gasilab.com', 1, NULL, NULL),
	(23, 'company_email', 'team@gasilab.com', 1, NULL, NULL),
	(25, 'registration_number', '000000', 1, NULL, NULL),
	(26, 'vat_number', '', 1, NULL, NULL),
	(27, 'timezone', '', 1, NULL, NULL),
	(28, 'company_start_time', '09:00', 1, NULL, NULL),
	(29, 'company_end_time', '18:00', 1, NULL, NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.set_salaries
CREATE TABLE IF NOT EXISTS `set_salaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.set_salaries: 0 rows
/*!40000 ALTER TABLE `set_salaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `set_salaries` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.sources
CREATE TABLE IF NOT EXISTS `sources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.sources: 5 rows
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
INSERT INTO `sources` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Websites', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Facebook', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Naukari.com', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Phone', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'LinkedIn', 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.stages
CREATE TABLE IF NOT EXISTS `stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pipeline_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.stages: 5 rows
/*!40000 ALTER TABLE `stages` DISABLE KEYS */;
INSERT INTO `stages` (`id`, `name`, `pipeline_id`, `created_by`, `order`, `created_at`, `updated_at`) VALUES
	(1, 'Draft', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'Sent', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Open', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Revised', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(5, 'Declined', 1, 1, 0, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `stages` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.supports
CREATE TABLE IF NOT EXISTS `supports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_created` int(11) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL DEFAULT 0,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` date NOT NULL,
  `ticket_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.supports: 0 rows
/*!40000 ALTER TABLE `supports` DISABLE KEYS */;
/*!40000 ALTER TABLE `supports` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.support_replies
CREATE TABLE IF NOT EXISTS `support_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `support_id` int(11) NOT NULL,
  `user` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.support_replies: 0 rows
/*!40000 ALTER TABLE `support_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_replies` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.task_checklists
CREATE TABLE IF NOT EXISTS `task_checklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.task_checklists: 0 rows
/*!40000 ALTER TABLE `task_checklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_checklists` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.task_comments
CREATE TABLE IF NOT EXISTS `task_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.task_comments: 0 rows
/*!40000 ALTER TABLE `task_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_comments` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.task_files
CREATE TABLE IF NOT EXISTS `task_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.task_files: 0 rows
/*!40000 ALTER TABLE `task_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_files` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.task_stages
CREATE TABLE IF NOT EXISTS `task_stages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `project_id` bigint(20) unsigned NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.task_stages: 4 rows
/*!40000 ALTER TABLE `task_stages` DISABLE KEYS */;
INSERT INTO `task_stages` (`id`, `name`, `complete`, `project_id`, `color`, `order`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'To Do', 0, 0, NULL, 0, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(2, 'In Progress', 0, 0, NULL, 1, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(3, 'Review', 0, 0, NULL, 2, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44'),
	(4, 'Done', 0, 0, NULL, 3, 1, '2021-10-22 17:38:44', '2021-10-22 17:38:44');
/*!40000 ALTER TABLE `task_stages` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.taxes
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.taxes: 1 rows
/*!40000 ALTER TABLE `taxes` DISABLE KEYS */;
INSERT INTO `taxes` (`id`, `name`, `rate`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'No Tax', '0', 1, '2021-11-18 13:09:40', '2021-11-18 13:09:40');
/*!40000 ALTER TABLE `taxes` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.terminations
CREATE TABLE IF NOT EXISTS `terminations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `notice_date` date NOT NULL,
  `termination_date` date NOT NULL,
  `termination_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.terminations: 0 rows
/*!40000 ALTER TABLE `terminations` DISABLE KEYS */;
/*!40000 ALTER TABLE `terminations` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.termination_types
CREATE TABLE IF NOT EXISTS `termination_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.termination_types: 0 rows
/*!40000 ALTER TABLE `termination_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `termination_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.timesheets
CREATE TABLE IF NOT EXISTS `timesheets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.timesheets: 0 rows
/*!40000 ALTER TABLE `timesheets` DISABLE KEYS */;
/*!40000 ALTER TABLE `timesheets` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.trainers
CREATE TABLE IF NOT EXISTS `trainers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.trainers: 0 rows
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.trainings
CREATE TABLE IF NOT EXISTS `trainings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `branch` int(11) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `training_type` int(11) NOT NULL,
  `trainer` int(11) NOT NULL,
  `training_cost` double(8,2) NOT NULL DEFAULT 0.00,
  `employee` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `performance` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.trainings: 0 rows
/*!40000 ALTER TABLE `trainings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainings` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.training_types
CREATE TABLE IF NOT EXISTS `training_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.training_types: 0 rows
/*!40000 ALTER TABLE `training_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `training_types` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT 0.00,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `payment_id` int(11) NOT NULL DEFAULT 0,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.transactions: 2 rows
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` (`id`, `user_id`, `user_type`, `account`, `type`, `amount`, `description`, `date`, `created_by`, `payment_id`, `category`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Vender', 2, 'Payment', 3000.00, 'è¨‚é€ æˆæœ¬', '2021-11-18', 1, 1, 'å·¥å» é–‹æ”¯', '2021-11-18 13:44:00', '2021-11-18 13:44:00'),
	(3, 1, 'Customer', 2, 'Revenue', 7500.00, 'tailor-made furniture', '2021-11-18', 1, 1, 'è¨‚é€ æ”¶å…¥', '2021-11-18 13:46:31', '2021-11-18 13:46:31');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.transfers
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `transfer_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.transfers: 0 rows
/*!40000 ALTER TABLE `transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfers` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.travels
CREATE TABLE IF NOT EXISTS `travels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_visit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.travels: 0 rows
/*!40000 ALTER TABLE `travels` DISABLE KEYS */;
/*!40000 ALTER TABLE `travels` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `default_pipeline` int(11) DEFAULT NULL,
  `delete_status` int(11) NOT NULL DEFAULT 1,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.users: 5 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `active_status`, `dark_mode`, `messenger_color`, `email_verified_at`, `password`, `type`, `avatar`, `lang`, `created_by`, `default_pipeline`, `delete_status`, `is_active`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Testing User', 'company@example.com', 0, 0, '#2180f3', NULL, '$2y$10$CpgBdg2/tw07rHoSV4Cfzek2421PqSkPv.vcaNXvZvk/wec1JYQry', 'company', '', 'en', 0, 1, 1, 1, NULL, '2021-10-22 17:38:43', '2021-11-18 13:09:13'),
	(2, 'accountant', 'accountant@gasilab.com', 0, 0, '#2180f3', NULL, '$2y$10$CpgBdg2/tw07rHoSV4Cfzek2421PqSkPv.vcaNXvZvk/wec1JYQry', 'accountant', '', 'en', 1, 1, 1, 1, NULL, '2021-10-22 17:38:43', '2021-11-18 13:18:16'),
	(3, 'é™³å¤§æ–‡', 'client@example.com', 0, 0, '#2180f3', NULL, '$2y$10$CpgBdg2/tw07rHoSV4Cfzek2421PqSkPv.vcaNXvZvk/wec1JYQry', 'client', '', 'en', 1, 1, 1, 1, NULL, '2021-10-22 17:38:44', '2021-11-18 13:22:54'),
	(4, 'Testing Account', 'testing@gasilab.com', 0, 0, '#2180f3', NULL, '$2y$10$9AXLrvCsI.7I/1flkTLHzehDCNW//edH6RI4W6WtE0iKAoHp8ipTW', 'accountant', NULL, 'en', 1, NULL, 1, 1, NULL, '2021-11-17 00:29:31', '2021-11-17 00:29:31'),
	(5, 'è˜‡å®¶ä¿Š', 'test2@gmail.com', 0, 0, '#2180f3', NULL, '$2y$10$CpgBdg2/tw07rHoSV4Cfzek2421PqSkPv.vcaNXvZvk/wec1JYQry', 'client', NULL, 'en', 1, NULL, 1, 1, NULL, '2021-11-18 13:23:21', '2021-11-18 13:23:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.user_contacts
CREATE TABLE IF NOT EXISTS `user_contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.user_contacts: 0 rows
/*!40000 ALTER TABLE `user_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_contacts` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.user_deals
CREATE TABLE IF NOT EXISTS `user_deals` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `deal_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_deals_user_id_foreign` (`user_id`),
  KEY `user_deals_deal_id_foreign` (`deal_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.user_deals: 1 rows
/*!40000 ALTER TABLE `user_deals` DISABLE KEYS */;
INSERT INTO `user_deals` (`id`, `user_id`, `deal_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-11-18 13:22:01', '2021-11-18 13:22:01');
/*!40000 ALTER TABLE `user_deals` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.user_email_templates
CREATE TABLE IF NOT EXISTS `user_email_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `template_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.user_email_templates: 0 rows
/*!40000 ALTER TABLE `user_email_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_email_templates` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.user_leads
CREATE TABLE IF NOT EXISTS `user_leads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `lead_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_leads_user_id_foreign` (`user_id`),
  KEY `user_leads_lead_id_foreign` (`lead_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.user_leads: 2 rows
/*!40000 ALTER TABLE `user_leads` DISABLE KEYS */;
INSERT INTO `user_leads` (`id`, `user_id`, `lead_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, '2021-11-18 13:20:06', '2021-11-18 13:20:06'),
	(2, 4, 1, '2021-11-18 13:20:06', '2021-11-18 13:20:06');
/*!40000 ALTER TABLE `user_leads` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.user_to_dos
CREATE TABLE IF NOT EXISTS `user_to_dos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.user_to_dos: 0 rows
/*!40000 ALTER TABLE `user_to_dos` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_to_dos` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.venders
CREATE TABLE IF NOT EXISTS `venders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vender_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `balance` double(8,2) NOT NULL DEFAULT 0.00,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `venders_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.venders: 1 rows
/*!40000 ALTER TABLE `venders` DISABLE KEYS */;
INSERT INTO `venders` (`id`, `vender_id`, `name`, `email`, `password`, `contact`, `avatar`, `created_by`, `is_active`, `email_verified_at`, `billing_name`, `billing_country`, `billing_state`, `billing_city`, `billing_phone`, `billing_zip`, `billing_address`, `shipping_name`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_phone`, `shipping_zip`, `shipping_address`, `lang`, `balance`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 1, 'å¤§ç™¼å‚¢ä¿¬å» ', 'wood@gmail.com', '$2y$10$clOkwVRuKSB8k9vvL3liE.LduGCRW0RSTAQM1LIo5ww0fK3gzuZoW', '838772982', '', 1, 1, NULL, 'å…ƒæœ—å·¥æ¥­é‚¨', 'Hong Kong', '', '', '', '', '', '', '', '', '', '', '', '', '', -3000.00, NULL, '2021-11-18 13:39:00', '2021-11-18 13:44:13');
/*!40000 ALTER TABLE `venders` ENABLE KEYS */;

-- Dumping structure for table gasilabdb.warnings
CREATE TABLE IF NOT EXISTS `warnings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `warning_to` int(11) NOT NULL,
  `warning_by` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warning_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table gasilabdb.warnings: 0 rows
/*!40000 ALTER TABLE `warnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `warnings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
