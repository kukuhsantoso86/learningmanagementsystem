-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2024 at 04:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'development', 'development', 'upload/category/1787306169464357.jpg', NULL, NULL),
(2, 'business', 'business', 'upload/category/1787306330005243.jpg', NULL, NULL),
(3, 'design', 'design', 'upload/category/1787306357008755.jpg', NULL, NULL),
(4, 'Finance & Accounting', 'finance-&-accounting', 'upload/category/1787306376044546.jpg', NULL, NULL),
(5, 'IT & Software', 'it-&-software', 'upload/category/1787306431269536.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` varchar(255) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'KUPON TAHUN BARU', '20', '2024-06-06', 1, '2024-01-05 19:33:04', NULL),
(2, 'KUPON FLASH SALE', '15', '2024-06-06', 1, '2024-01-05 19:33:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `course_image` varchar(255) DEFAULT NULL,
  `course_title` text DEFAULT NULL,
  `course_name` text DEFAULT NULL,
  `course_name_slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `certificate` varchar(255) DEFAULT NULL,
  `selling_price` int(11) DEFAULT NULL,
  `discount_price` int(11) DEFAULT NULL,
  `prerequisites` text DEFAULT NULL,
  `bestseller` varchar(255) DEFAULT NULL,
  `featured` varchar(255) DEFAULT NULL,
  `highestrated` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `subcategory_id`, `instructor_id`, `course_image`, `course_title`, `course_name`, `course_name_slug`, `description`, `video`, `label`, `duration`, `resources`, `certificate`, `selling_price`, `discount_price`, `prerequisites`, `bestseller`, `featured`, `highestrated`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'upload/course/thumbnail/1787307598084788.png', 'laravel 10 course company profile tutorial', 'laravel 10 course company profile tutorial', 'laravel-10-course-company-profile-tutorial', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!</p>', 'upload/course/video/1704509351.mp4', 'Middle', '40', '10', 'Yes', 200, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!', '1', '1', NULL, 1, '2024-01-05 19:49:11', NULL),
(2, 1, 1, 2, 'upload/course/thumbnail/1787307763996030.png', 'laravel 10 course real estate tutorial', 'laravel 10 course real estate tutorial', 'laravel-10-course-real-estate-tutorial', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!</p>', 'upload/course/video/1704509510.mp4', 'Middle', '40', '10', 'Yes', 180, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!', '1', '1', NULL, 1, '2024-01-05 19:51:50', NULL),
(3, 1, 1, 2, 'upload/course/thumbnail/1787307876568104.webp', 'laravel 10 course landing page tutorial', 'laravel 10 course landing page tutorial', 'laravel-10-course-landing-page-tutorial', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!</p>', 'upload/course/video/1704509617.mp4', 'Middle', '40', '10', 'Yes', 180, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!', '1', NULL, '1', 1, '2024-01-05 19:53:37', NULL),
(4, 1, 2, 2, 'upload/course/thumbnail/1787308016832310.jpg', 'flutter mobile ecommerce tutorial', 'flutter mobile ecommerce tutorial', 'flutter-mobile-ecommerce-tutorial', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!</p>', 'upload/course/video/1704509751.mp4', 'Middle', '40', '10', 'Yes', 200, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!', '1', '1', NULL, 1, '2024-01-05 19:55:51', NULL),
(5, 1, 2, 2, 'upload/course/thumbnail/1787308145915684.jpg', 'flutter mobile real estate tutorial', 'flutter mobile real estate tutorial', 'flutter-mobile-real-estate-tutorial', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!</p>', 'upload/course/video/1704509874.mp4', 'Advance', '40', '10', 'Yes', 200, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!', '1', '1', NULL, 1, '2024-01-05 19:57:54', NULL),
(6, 1, 2, 2, 'upload/course/thumbnail/1787308253016949.jpg', 'flutter mobile travel apps tutorial', 'flutter mobile travel apps tutorial', 'flutter-mobile-travel-apps-tutorial', '<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!</p>', 'upload/course/video/1704509976.mp4', 'Advance', '40', '10', 'Yes', 200, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Maiores architecto esse amet sequi, facilis itaque consequuntur expedita rem exercitationem in fuga iste laboriosam repellendus eos ratione modi veritatis mollitia enim quos? Molestiae quam vero voluptates ipsum perspiciatis, dolor sequi, cupiditate consectetur libero quis eligendi quidem esse facere, enim possimus reiciendis!', '1', '1', NULL, 1, '2024-01-05 19:59:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_goals`
--

CREATE TABLE `course_goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `goal_name` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_goals`
--

INSERT INTO `course_goals` (`id`, `course_id`, `goal_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'laravel company profile', '2024-01-05 19:49:12', '2024-01-05 19:49:12'),
(2, 1, 'multi auth as user agen admin', '2024-01-05 19:49:12', '2024-01-05 19:49:12'),
(3, 1, 'project admin panel setup', '2024-01-05 19:49:12', '2024-01-05 19:49:12'),
(4, 2, 'multi auth as user agen admin', '2024-01-05 19:51:50', '2024-01-05 19:51:50'),
(5, 2, 'project admin panel setup', '2024-01-05 19:51:50', '2024-01-05 19:51:50'),
(6, 3, 'multi auth as user agen admin', '2024-01-05 19:53:37', '2024-01-05 19:53:37'),
(7, 3, 'project admin panel setup', '2024-01-05 19:53:37', '2024-01-05 19:53:37'),
(8, 4, 'flutter auth', '2024-01-05 19:55:51', '2024-01-05 19:55:51'),
(9, 4, 'flutter state management', '2024-01-05 19:55:51', '2024-01-05 19:55:51'),
(10, 4, 'flutter api', '2024-01-05 19:55:51', '2024-01-05 19:55:51'),
(11, 4, NULL, '2024-01-05 19:55:51', '2024-01-05 19:55:51'),
(12, 5, 'flutter auth', '2024-01-05 19:57:54', '2024-01-05 19:57:54'),
(13, 5, 'flutter state management', '2024-01-05 19:57:54', '2024-01-05 19:57:54'),
(14, 5, 'flutter api', '2024-01-05 19:57:54', '2024-01-05 19:57:54'),
(15, 6, 'flutter auth', '2024-01-05 19:59:36', '2024-01-05 19:59:36'),
(16, 6, 'flutter state management', '2024-01-05 19:59:36', '2024-01-05 19:59:36'),
(17, 6, 'flutter api', '2024-01-05 19:59:36', '2024-01-05 19:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `lecture_title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `course_id`, `section_id`, `lecture_title`, `video`, `url`, `content`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'flutter ui', NULL, 'https://vimeo.com//151390908', 'flutter ui', '2024-01-05 20:01:08', '2024-01-05 20:01:08'),
(2, 6, 1, 'flutter auth', NULL, 'https://vimeo.com//151390908', 'flutter auth', '2024-01-05 20:01:35', '2024-01-05 20:01:35'),
(3, 6, 1, 'flutter state management', NULL, 'https://vimeo.com//151390908', 'flutter state management', '2024-01-05 20:01:55', '2024-01-05 20:01:55'),
(4, 6, 1, 'flutter api', NULL, 'https://vimeo.com//151390908', 'flutter api', '2024-01-05 20:02:08', '2024-01-05 20:02:08'),
(5, 5, 2, 'flutter ui', NULL, 'https://vimeo.com//151390908', 'flutter ui', '2024-01-05 20:02:59', '2024-01-05 20:02:59'),
(6, 5, 3, 'flutter auth', NULL, 'https://vimeo.com//151390908', 'flutter auth', '2024-01-05 20:03:42', '2024-01-05 20:03:42'),
(7, 5, 5, 'flutter management', NULL, 'https://vimeo.com//151390908', 'flutter management', '2024-01-05 20:04:43', '2024-01-05 20:04:43'),
(8, 5, 6, 'flutter api', NULL, 'https://vimeo.com//151390908', 'flutter api', '2024-01-05 20:05:19', '2024-01-05 20:05:19'),
(9, 4, 7, 'flutter ui', NULL, 'https://vimeo.com//151390908', 'flutter ui', '2024-01-05 20:06:19', '2024-01-05 20:06:19'),
(10, 4, 8, 'flutter auth', NULL, 'https://vimeo.com//151390908', 'flutter auth', '2024-01-05 20:06:31', '2024-01-05 20:06:31'),
(11, 4, 9, 'flutter state management', NULL, 'https://vimeo.com//151390908', 'flutter state management', '2024-01-05 20:06:43', '2024-01-05 20:06:43'),
(12, 4, 10, 'flutter api', NULL, 'https://vimeo.com//151390908', 'flutter api', '2024-01-05 20:06:57', '2024-01-05 20:06:57'),
(13, 3, 11, 'Multi auth breeze create auth for user', NULL, 'https://vimeo.com//151390908', 'Multi auth breeze create auth for user', '2024-01-05 20:11:03', '2024-01-05 20:11:03'),
(14, 3, 12, 'project admin panel setup', NULL, 'https://vimeo.com//151390908', 'project admin panel setup', '2024-01-05 20:11:13', '2024-01-05 20:11:13'),
(15, 3, 13, 'payment setup', NULL, 'https://vimeo.com//151390908', 'payment setup', '2024-01-05 20:11:23', '2024-01-05 20:11:23'),
(16, 3, 14, 'frontend setup', NULL, 'https://vimeo.com//151390908', 'frontend setup', '2024-01-05 20:11:43', '2024-01-05 20:11:43'),
(17, 2, 15, 'Multi auth breeze create auth for user', NULL, 'https://vimeo.com//151390908', 'Multi auth breeze create auth for user', '2024-01-05 20:12:36', '2024-01-05 20:12:36'),
(18, 2, 16, 'project admin panel setup', NULL, 'https://vimeo.com//151390908', 'project admin panel setup', '2024-01-05 20:12:48', '2024-01-05 20:12:48'),
(19, 2, 17, 'payment setup', NULL, 'https://vimeo.com//151390908', 'payment setup', '2024-01-05 20:13:00', '2024-01-05 20:13:00'),
(20, 2, 18, 'frontend setup', NULL, 'https://vimeo.com//151390908', 'frontend setup', '2024-01-05 20:13:12', '2024-01-05 20:13:12'),
(21, 1, 19, 'Multi auth breeze create auth for user', NULL, 'https://vimeo.com//151390908', 'Multi auth breeze create auth for user', '2024-01-05 20:14:01', '2024-01-05 20:14:01'),
(22, 1, 20, 'project admin panel setup', NULL, 'https://vimeo.com//151390908', 'project admin panel setup', '2024-01-05 20:14:11', '2024-01-05 20:14:11'),
(23, 1, 21, 'payment setup', NULL, 'https://vimeo.com//151390908', 'payment setup', '2024-01-05 20:14:26', '2024-01-05 20:14:26'),
(24, 1, 22, 'frontend setup', NULL, 'https://vimeo.com//151390908', 'frontend setup', '2024-01-05 20:14:37', '2024-01-05 20:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE `course_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` int(11) NOT NULL,
  `section_title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_sections`
--

INSERT INTO `course_sections` (`id`, `course_id`, `section_title`, `created_at`, `updated_at`) VALUES
(1, 6, 'Section 1: flutter ui', NULL, NULL),
(2, 5, 'Section 1: flutter ui', NULL, NULL),
(3, 5, 'Section 2: flutter auth', NULL, NULL),
(5, 5, 'Section 3: flutter state management', NULL, NULL),
(6, 5, 'Section 4: flutter api', NULL, NULL),
(7, 4, 'Section 1: flutter ui', NULL, NULL),
(8, 4, 'Section 2: flutter auth', NULL, NULL),
(9, 4, 'Section 3: flutter state management', NULL, NULL),
(10, 4, 'Section 4: flutter api', NULL, NULL),
(11, 3, 'Section 1: Multi auth breeze create auth for user', NULL, NULL),
(12, 3, 'Section 2: project admin panel setup', NULL, NULL),
(13, 3, 'Section 3: payment setup', NULL, NULL),
(14, 3, 'Section 4: frontend setup', NULL, NULL),
(15, 2, 'Section 1: Multi auth breeze create auth for user', NULL, NULL),
(16, 2, 'Section 2: project admin panel setup', NULL, NULL),
(17, 2, 'Section 3: payment setup', NULL, NULL),
(18, 2, 'Section 4: frontend setup', NULL, NULL),
(19, 1, 'Section 1: Multi auth breeze create auth for user', NULL, NULL),
(20, 1, 'Section 2: project admin panel setup', NULL, NULL),
(21, 1, 'Section 3: payment setup', NULL, NULL),
(22, 1, 'Section 4: frontend setup', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_12_080020_create_categories_table', 1),
(6, '2023_12_14_002659_create_sub_categories_table', 1),
(7, '2023_12_16_080433_create_courses_table', 1),
(8, '2023_12_16_081026_create_course_goals_table', 1),
(9, '2023_12_20_001610_create_course_sections_table', 1),
(10, '2023_12_20_001724_create_course_lectures_table', 1),
(11, '2023_12_28_000356_create_wishlists_table', 1),
(12, '2024_01_04_081724_create_coupons_table', 1),
(13, '2024_01_05_011238_create_payments_table', 1),
(14, '2024_01_05_011333_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `instructor_id` int(11) DEFAULT NULL,
  `course_title` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `payment_id`, `user_id`, `course_id`, `instructor_id`, `course_title`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 4, 2, 'flutter mobile ecommerce tutorial', 200, '2024-01-05 20:16:30', '2024-01-05 20:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `cash_delivery` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `order_month` varchar(255) DEFAULT NULL,
  `order_year` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `email`, `phone`, `address`, `cash_delivery`, `total_amount`, `payment_type`, `invoice_no`, `order_date`, `order_month`, `order_year`, `status`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user47@gmail.com', '084564656456', 'jalan muradi blitar jatim', 'handcash', '160', 'Direct Payment', 'EOS33590844', '06 January 2024', 'January', '2024', 'pending', '2024-01-05 20:16:30', '2024-01-05 20:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `subcategory_slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'web development', 'web-development', NULL, NULL),
(2, 1, 'Mobile Apps', 'mobile-apps', NULL, NULL),
(3, 2, 'Finance', 'finance', NULL, NULL),
(4, 3, 'graphic design', 'graphic-design', NULL, NULL),
(5, 2, 'economic business', 'economic-business', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` enum('admin','instructor','user') NOT NULL DEFAULT 'user',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin47@gmail.com', NULL, '$2y$12$FdjaOqsGgX05mLjIWvkNkO52fOo1ukfoJ4h9FAKBg6ez.p9dAhoUq', '202401060159avatar-6.png', '+62812345678910', 'jalan muradi blitar jatim', 'admin', '1', NULL, '2024-01-06 01:53:01', '2024-01-05 19:00:10'),
(2, 'Instructor', 'instructor', 'instructor@gmail.com', NULL, '$2y$12$0x8HXhSe7f.gqk3k5.Sa..lfpOZonrVl9tv5HjPEe6xYn1S07wR/6', '202401060234avatar-5.png', '+628123456789', 'jalan muradi blitar jatim', 'instructor', '1', NULL, '2024-01-06 01:53:21', '2024-01-05 19:34:55'),
(3, 'User', 'user47', 'user47@gmail.com', NULL, '$2y$12$xL95xGji3DT1e4hDoccpd.NN./tSNBTxp0Tw1SapVTIckmXHJZnfm', '202401060157avatar-2.png', '084564656456', 'jalan muradi blitar jatim', 'user', '1', NULL, '2024-01-06 01:53:32', '2024-01-05 18:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2024-01-05 20:15:50', NULL),
(2, 3, 2, '2024-01-05 20:15:51', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_goals`
--
ALTER TABLE `course_goals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_goals`
--
ALTER TABLE `course_goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
