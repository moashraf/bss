-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 11, 2018 at 04:04 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ashraf`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-02-05 11:21:42', '2018-02-05 11:21:42'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-02-05 11:21:42', '2018-02-05 11:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(68, 20, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(69, 20, 'sadfasf', 'number', 'Sadfasf', 0, 1, 1, 1, 1, 1, NULL, 2),
(80, 26, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(81, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 2),
(82, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(83, 26, 'service_tit', 'text', 'Service Tit', 0, 1, 1, 1, 1, 1, NULL, 4),
(85, 27, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(86, 27, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 2),
(87, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(88, 27, 'doctor_name', 'text', 'Doctor Name', 0, 1, 1, 1, 1, 1, NULL, 4),
(89, 27, 'doctor_img', 'image', 'Doctor Img', 0, 1, 1, 1, 1, 1, NULL, 5),
(90, 27, 'doctor_description', 'text', 'Doctor Description', 0, 1, 1, 1, 1, 1, NULL, 6),
(91, 27, 'doctor_seo', 'text', 'Doctor Seo', 0, 1, 1, 1, 1, 1, NULL, 7),
(92, 27, 'doctor_facebook', 'text', 'Doctor Facebook', 0, 1, 1, 1, 1, 1, NULL, 8),
(93, 27, 'doctor_twitter', 'text', 'Doctor Twitter', 0, 1, 1, 1, 1, 1, NULL, 9),
(94, 27, 'doctor_instagram', 'text', 'Doctor Instagram', 0, 1, 1, 1, 1, 1, NULL, 10),
(95, 26, 'services_description', 'text', 'Services Description', 0, 1, 1, 1, 1, 1, NULL, 5),
(112, 32, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(113, 32, 'Customer_name', 'text', 'Customer Name', 0, 1, 1, 1, 1, 1, NULL, 2),
(114, 32, 'Reviews_text', 'text', 'Reviews Text', 0, 1, 1, 1, 1, 1, NULL, 3),
(115, 32, 'Customer_img', 'image', 'Customer Img', 0, 1, 1, 1, 1, 1, NULL, 4),
(116, 32, 'Customer_position', 'text', 'Customer Position', 0, 1, 1, 1, 1, 1, NULL, 5),
(117, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(118, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(119, 26, 'services_img', 'image', 'Services Img', 0, 1, 1, 1, 1, 1, NULL, 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-02-05 11:21:38', '2018-02-05 11:21:38'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-02-05 11:21:38', '2018-02-05 11:21:38'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-02-05 11:21:38', '2018-02-05 11:21:38'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-02-05 11:21:38', '2018-02-05 11:21:38'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-02-05 11:21:38', '2018-02-05 11:21:38'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-02-05 11:21:38', '2018-02-05 11:21:38'),
(20, 'dsfgsdg', 'dsfgsdg', 'Dsfgsdg', 'Dsfgsdgs', NULL, 'App\\Dsfgsdg', 'TCG\\Voyager\\Policies\\BasePolicy', NULL, NULL, 1, 0, '2018-02-11 07:36:07', '2018-02-11 07:37:30'),
(26, 'services', 'services', 'Service', 'Services', NULL, 'App\\Service', NULL, NULL, NULL, 1, 0, '2018-02-11 08:04:48', '2018-02-11 08:04:48'),
(27, 'doctors', 'doctors', 'Doctor', 'Doctors', NULL, 'App\\Doctor', NULL, NULL, NULL, 1, 0, '2018-02-11 08:10:36', '2018-02-11 08:10:36'),
(32, 'reviews', 'reviews', 'Review', 'Reviews', NULL, 'App\\Review', NULL, NULL, NULL, 1, 0, '2018-02-11 10:05:08', '2018-02-11 10:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
CREATE TABLE IF NOT EXISTS `doctors` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `doctor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `created_at`, `updated_at`, `doctor_name`, `doctor_img`, `doctor_description`, `doctor_seo`, `doctor_facebook`, `doctor_twitter`, `doctor_instagram`) VALUES
(2, '2018-02-11 08:15:00', '2018-02-11 08:30:55', 'اسم الدكتور', 'doctors/February2018/M2AzKzHW82xEAdDXKpR9.jpg', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/'),
(3, '2018-02-11 08:24:00', '2018-02-11 08:30:16', 'اسم الدكتور', 'doctors/February2018/5kJ2swfqVC49Wvfi5xdq.jpg', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/'),
(4, '2018-02-11 08:30:00', '2018-02-11 08:30:46', 'اسم الدكتور', 'doctors/February2018/tFiPM9n0WCwuQj89JUpI.jpg', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-02-05 11:21:39', '2018-02-05 11:21:39'),
(2, 'home', '2018-02-11 13:22:07', '2018-02-11 13:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-02-05 11:21:39', '2018-02-05 11:21:39', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-02-05 11:21:39', '2018-02-11 13:16:11', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2018-02-05 11:21:39', '2018-02-11 13:16:11', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-02-05 11:21:39', '2018-02-05 11:21:39', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2018-02-05 11:21:39', '2018-02-11 13:16:11', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2018-02-05 11:21:39', '2018-02-11 13:16:11', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-02-05 11:21:39', '2018-02-05 11:21:39', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 11, '2018-02-05 11:21:39', '2018-02-11 13:16:46', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-02-05 11:21:40', '2018-02-11 13:16:11', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-02-05 11:21:40', '2018-02-11 13:16:11', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-02-05 11:21:40', '2018-02-11 13:16:11', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 12, '2018-02-05 11:21:40', '2018-02-11 13:16:46', 'voyager.settings.index', NULL),
(20, 1, 'Services', '/admin/services', '_self', 'voyager-categories', '#000000', NULL, 8, '2018-02-11 08:04:48', '2018-02-11 13:17:30', NULL, ''),
(21, 1, 'Doctors', '/admin/doctors', '_self', 'voyager-categories', '#000000', NULL, 10, '2018-02-11 08:10:36', '2018-02-11 13:17:12', NULL, ''),
(25, 1, 'Reviews', '/admin/reviews', '_self', 'voyager-categories', '#000000', NULL, 9, '2018-02-11 10:05:08', '2018-02-11 13:17:22', NULL, ''),
(26, 2, 'الرئيسية', '/', '_self', NULL, '#000000', NULL, 13, '2018-02-11 13:22:19', '2018-02-11 13:27:08', NULL, ''),
(27, 2, 'من نحن', 'aboutus', '_self', NULL, '#000000', NULL, 14, '2018-02-11 13:22:52', '2018-02-11 13:27:00', NULL, ''),
(28, 2, 'الخدمات', 'Service', '_self', NULL, '#000000', NULL, 15, '2018-02-11 13:27:50', '2018-02-11 13:27:50', NULL, ''),
(29, 2, 'المدونة', 'blog', '_self', NULL, '#000000', NULL, 16, '2018-02-11 13:28:10', '2018-02-11 13:28:10', NULL, ''),
(30, 2, 'اتصل بنا', 'contact', '_self', NULL, '#000000', NULL, 17, '2018-02-11 13:28:25', '2018-02-11 13:28:25', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2017_01_14_005015_create_translations_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-02-05 11:21:43', '2018-02-05 11:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(2, 'browse_database', NULL, '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(3, 'browse_media', NULL, '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(4, 'browse_compass', NULL, '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(5, 'browse_menus', 'menus', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(6, 'read_menus', 'menus', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(7, 'edit_menus', 'menus', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(8, 'add_menus', 'menus', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(9, 'delete_menus', 'menus', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(10, 'browse_pages', 'pages', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(11, 'read_pages', 'pages', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(12, 'edit_pages', 'pages', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(13, 'add_pages', 'pages', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(14, 'delete_pages', 'pages', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(15, 'browse_roles', 'roles', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(16, 'read_roles', 'roles', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(17, 'edit_roles', 'roles', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(18, 'add_roles', 'roles', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(19, 'delete_roles', 'roles', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(20, 'browse_users', 'users', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(21, 'read_users', 'users', '2018-02-05 11:21:40', '2018-02-05 11:21:40', NULL),
(22, 'edit_users', 'users', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(23, 'add_users', 'users', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(24, 'delete_users', 'users', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(25, 'browse_posts', 'posts', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(26, 'read_posts', 'posts', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(27, 'edit_posts', 'posts', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(28, 'add_posts', 'posts', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(29, 'delete_posts', 'posts', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(30, 'browse_categories', 'categories', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(31, 'read_categories', 'categories', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(32, 'edit_categories', 'categories', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(33, 'add_categories', 'categories', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(34, 'delete_categories', 'categories', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(35, 'browse_settings', 'settings', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(36, 'read_settings', 'settings', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(37, 'edit_settings', 'settings', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(38, 'add_settings', 'settings', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(39, 'delete_settings', 'settings', '2018-02-05 11:21:41', '2018-02-05 11:21:41', NULL),
(40, 'browse_hooks', NULL, '2018-02-05 11:21:44', '2018-02-05 11:21:44', NULL),
(56, 'browse_dsfgsdg', 'dsfgsdg', '2018-02-11 07:37:30', '2018-02-11 07:37:30', NULL),
(57, 'read_dsfgsdg', 'dsfgsdg', '2018-02-11 07:37:30', '2018-02-11 07:37:30', NULL),
(58, 'edit_dsfgsdg', 'dsfgsdg', '2018-02-11 07:37:30', '2018-02-11 07:37:30', NULL),
(59, 'add_dsfgsdg', 'dsfgsdg', '2018-02-11 07:37:30', '2018-02-11 07:37:30', NULL),
(60, 'delete_dsfgsdg', 'dsfgsdg', '2018-02-11 07:37:30', '2018-02-11 07:37:30', NULL),
(66, 'browse_services', 'services', '2018-02-11 08:04:48', '2018-02-11 08:04:48', NULL),
(67, 'read_services', 'services', '2018-02-11 08:04:48', '2018-02-11 08:04:48', NULL),
(68, 'edit_services', 'services', '2018-02-11 08:04:48', '2018-02-11 08:04:48', NULL),
(69, 'add_services', 'services', '2018-02-11 08:04:48', '2018-02-11 08:04:48', NULL),
(70, 'delete_services', 'services', '2018-02-11 08:04:48', '2018-02-11 08:04:48', NULL),
(71, 'browse_doctors', 'doctors', '2018-02-11 08:10:36', '2018-02-11 08:10:36', NULL),
(72, 'read_doctors', 'doctors', '2018-02-11 08:10:36', '2018-02-11 08:10:36', NULL),
(73, 'edit_doctors', 'doctors', '2018-02-11 08:10:36', '2018-02-11 08:10:36', NULL),
(74, 'add_doctors', 'doctors', '2018-02-11 08:10:36', '2018-02-11 08:10:36', NULL),
(75, 'delete_doctors', 'doctors', '2018-02-11 08:10:36', '2018-02-11 08:10:36', NULL),
(91, 'browse_reviews', 'reviews', '2018-02-11 10:06:24', '2018-02-11 10:06:24', NULL),
(92, 'read_reviews', 'reviews', '2018-02-11 10:06:24', '2018-02-11 10:06:24', NULL),
(93, 'edit_reviews', 'reviews', '2018-02-11 10:06:24', '2018-02-11 10:06:24', NULL),
(94, 'add_reviews', 'reviews', '2018-02-11 10:06:24', '2018-02-11 10:06:24', NULL),
(95, 'delete_reviews', 'reviews', '2018-02-11 10:06:24', '2018-02-11 10:06:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 5),
(2, 1),
(2, 5),
(3, 1),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 5),
(6, 1),
(6, 5),
(7, 1),
(7, 5),
(8, 1),
(8, 5),
(9, 1),
(9, 5),
(10, 1),
(10, 5),
(11, 1),
(11, 5),
(12, 1),
(12, 5),
(13, 1),
(13, 5),
(14, 1),
(14, 5),
(15, 1),
(15, 5),
(16, 1),
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(19, 1),
(19, 5),
(20, 1),
(20, 5),
(21, 1),
(21, 5),
(22, 1),
(22, 5),
(23, 1),
(23, 5),
(24, 1),
(24, 5),
(25, 1),
(25, 5),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5),
(29, 1),
(29, 5),
(30, 1),
(30, 5),
(31, 1),
(31, 5),
(32, 1),
(32, 5),
(33, 1),
(33, 5),
(34, 1),
(34, 5),
(35, 1),
(35, 5),
(36, 1),
(36, 5),
(37, 1),
(37, 5),
(38, 1),
(38, 5),
(39, 1),
(39, 5),
(40, 1),
(40, 5),
(56, 1),
(56, 5),
(57, 1),
(57, 5),
(58, 1),
(58, 5),
(59, 1),
(59, 5),
(60, 1),
(60, 5),
(66, 1),
(66, 5),
(67, 1),
(67, 5),
(68, 1),
(68, 5),
(69, 1),
(69, 5),
(70, 1),
(70, 5),
(71, 1),
(71, 5),
(72, 1),
(72, 5),
(73, 1),
(73, 5),
(74, 1),
(74, 5),
(75, 1),
(75, 5),
(91, 5),
(92, 5),
(93, 5),
(94, 5),
(95, 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum 2', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p><strong>This is the body of the lorem ipsum post</strong></p>', 'posts/post1.jpg', 'lorem-ipsum-2', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-05 11:21:43', '2018-02-06 12:47:56'),
(2, 1, 1, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n<p>And include a bunch of other stuff.This is the body for the sample post, which includes the body.</p>\r\n<p>And include a bunch of other stuff.This is the body for the sample post, which includes the body.</p>\r\n<p>And include a bunch of other stuff.This is the body for the sample post, which includes the body.</p>\r\n<p>And include a bunch of other stuff.This is the body for the sample post, which includes the body.</p>\r\n<p>And include a bunch of other stuff.This is the body for the sample post, which includes the body.</p>\r\n<p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-05 11:21:43', '2018-02-11 05:26:01'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-05 11:21:43', '2018-02-05 11:21:43'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-05 11:21:43', '2018-02-05 11:21:43'),
(8, 1, 1, 'العلاج بالاشعاع وما هو', 'hhhhhhhhhh', 'hhhhhhhhhhhhhhh', '<p style=\"text-align: right;\"><span style=\"color: #6f6f6f; font-family: Lato, sans-serif; font-size: 15.6px; text-align: justify;\">العلاج بالاشعاع هو استخدام اشعة عالية الطاقة لتدمير الحمض النووي</span><strong style=\"box-sizing: border-box; border: 0px; outline: 0px; font-size: 15.6px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; color: #6f6f6f; font-family: Lato, sans-serif; text-align: justify;\">&nbsp;<a style=\"box-sizing: border-box; border: 0px; outline: 0px; font-size: 15.6px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; text-decoration-line: none; color: #ff7bc5;\" href=\"http://www.bcc.be4em.com/%D8%B9%D9%84%D8%A7%D8%AC-%D8%A7%D9%84%D8%B3%D8%B1%D8%B7%D8%A7%D9%86-%D8%A8%D8%A7%D9%84%D8%A7%D8%B4%D8%B9%D8%A7%D8%B9\">للخلايا السرطانية</a>&nbsp;</strong><span style=\"color: #6f6f6f; font-family: Lato, sans-serif; font-size: 15.6px; text-align: justify;\">وتدمير قدرتها على الانقسام والنمو.</span><br style=\"box-sizing: border-box; color: #6f6f6f; font-family: Lato, sans-serif; font-size: 15.6px; text-align: justify;\" /><span style=\"color: #6f6f6f; font-family: Lato, sans-serif; font-size: 15.6px; text-align: justify;\">ويمكن أن يتم تسليمها باستخدام آلات تسرع أو عن طريق مصادر مشعة وضعت داخل المريض على أساس مؤقت أو دائم.</span></p>', 'posts/February2018/9Shbi0CCu5o32StWgzDM.png', 'العلاج-بالاشعاع-وما-هو', 'hhhhhhhhhhhh', 'hhhhhhhhh', 'PUBLISHED', 0, '2018-02-08 14:42:33', '2018-02-11 12:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Customer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Reviews_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Customer_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Customer_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `Customer_name`, `Reviews_text`, `Customer_img`, `Customer_position`, `created_at`, `updated_at`) VALUES
(1, 'اراء العملاء', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت .', 'reviews/February2018/ZJ7LVxj2AcpeAUEMbBQq.jpg', 'الموقع الوظيفى', '2018-02-11 10:08:26', '2018-02-11 10:08:26'),
(2, 'اراء العملاء2', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت .22', 'reviews/February2018/rUCwo1AWb7WiP1JX86VD.jpg', 'الموقع الوظيفى2', '2018-02-11 10:42:11', '2018-02-11 10:42:11'),
(3, '3اراء العملاء', '333لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت .', 'reviews/February2018/YLaNF9JAAwucMvN8pERp.jpg', 'الموقع الوظيفى3', '2018-02-11 10:42:00', '2018-02-11 10:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-02-05 11:21:40', '2018-02-05 11:21:40'),
(5, 'rrr', 'rrr', '2018-02-11 09:54:46', '2018-02-11 09:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service_tit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `created_at`, `updated_at`, `service_tit`, `services_description`, `services_img`) VALUES
(1, '2018-02-11 08:47:00', '2018-02-11 10:59:54', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/zqDGOoa6NiiMEYfNxL9p.png'),
(2, '2018-02-11 08:47:00', '2018-02-11 10:59:47', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/tTF8vjLiFwsT4eeA9Vno.png'),
(3, '2018-02-11 08:47:00', '2018-02-11 10:59:40', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/WIBRgwQIHvdvMsthljFe.png'),
(4, '2018-02-11 08:47:00', '2018-02-11 10:59:26', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/97SUHO7x3KbW1DGOwpDv.png'),
(5, '2018-02-11 08:47:00', '2018-02-11 10:59:33', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/UI0CO6F6CLUZmjcB2vWH.png'),
(6, '2018-02-11 08:47:00', '2018-02-11 10:59:17', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/0B8VicWmzdzDkCjHLlO9.png'),
(7, '2018-02-11 08:48:00', '2018-02-11 10:59:08', 'العلاج مابعد العلاج', 'لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه . او نماذج مواقع انترنت .', 'services/February2018/tpm1Iu9eLhP3jDoAqbhV.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'المركز المصرى لاورام الثدي - Bcc | المركز المصرى لعلاج اورام الثدي', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'ينقسم علاج السرطان الى 3 مراحل (علاج جراحي ،وعلاج اشعاعي ،وعلاج كيماوي) .. يتوفر في المركز المصري لعلاج الاورام – سرطان الثدي جميع تلك المراحل المتخصصة لعلاج مرض السرطان ،تحت اشراف مجموعة متخصصة من الاطباء ذوي الخبرة والكفاءة', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/February2018/rRDZyrL2LEmFMkizrolY.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.phone_phone', 'phone', '01095874584 - 2158424411', NULL, 'text', 6, 'Site'),
(12, 'site.email_email', 'email', 'bcc16812@gmail.com', NULL, 'text', 7, 'Site'),
(13, 'site.location_location', 'location', 'توين تاورز, المحور الرئيسى مبنى C, الدور الأول, عيادة G', NULL, 'text', 8, 'Site'),
(14, 'site.facebook', 'facebook', 'https://www.facebook.com/breastcancereg/', NULL, 'text', 9, 'Site'),
(15, 'site.linkedin', 'linkedin', 'https://www.linkedin.com/company/bccegy?trk=biz-companies-cym', NULL, 'text', 10, 'Site'),
(16, 'site.youtube', 'youtube', 'https://www.youtube.com/channel/UC3CeDUqGSf3Z0w3ol2d1hrg', NULL, 'text', 11, 'Site'),
(17, 'site.getmap', 'get map', 'https://www.google.com/maps?ll=30.095919,31.362747&z=16&t=m&hl=en&gl=EG&mapclient=embed&cid=17762471254050835334', NULL, 'text', 12, 'Site'),
(18, 'site.work', 'work', '<ul class=\"list-unstyled\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; padding-left: initial; list-style: none; padding-right: 0px; color: #333333; font-family: Cairo, sans-serif;\">\r\n<li style=\"box-sizing: border-box; color: #ffffff; line-height: 2;\"><span style=\"color: #ffffff;\"><strong>الاحد-الجمعه&nbsp;<span style=\"box-sizing: border-box;\">8.00 - 8.00</span></strong></span></li>\r\n<li style=\"box-sizing: border-box; color: #ffffff; line-height: 2;\"><span style=\"color: #ffffff;\"><strong>السبت&nbsp;<span style=\"box-sizing: border-box;\">8.00 - 8.00</span></strong></span></li>\r\n<li style=\"box-sizing: border-box; color: #ffffff; line-height: 2;\"><span style=\"color: #ffffff;\"><strong>الاحد&nbsp;<span style=\"box-sizing: border-box;\">8.00 - 8.00</span></strong></span></li>\r\n<li style=\"box-sizing: border-box; color: #ffffff; line-height: 2;\"><strong><span style=\"box-sizing: border-box;\">الاثنين 8.00 - 8.00</span></strong></li>\r\n<li style=\"box-sizing: border-box; color: #ffffff; line-height: 2;\"><strong><span style=\"box-sizing: border-box;\">الثلاثاء8.00&nbsp; &nbsp;- 8.00</span></strong></li>\r\n</ul>', NULL, 'rich_text_box', 13, 'Site'),
(19, 'site.24service', '24 hours service', 'ينقسم علاج السرطان الى 3 مراحل (علاج جراحي ،وعلاج اشعاعي ،وعلاج كيماوي) .. يتوفر في المركز المصري لعلاج الاورام – سرطان الثدي جميع تلك المراحل المتخصصة لعلاج', NULL, 'text', 14, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `200` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/February2018/csnkWmOAZ1xUKrfhyLhM.png', '$2y$10$clonIYsVLL/alp7FKWNThOg/UY5f6cgKxibSli.AXTfh5OqAMT9WO', 'aCZSIkgghqyJ2huGfIEcnIWkSrRSxM2yszw9B7mlrWvRqbYlc6cEiNfxbi2g', '2018-02-05 11:21:43', '2018-02-08 13:51:53'),
(2, 5, 'ashraf', 'ashraf@ashraf.ashraf', 'users/default.png', '$2y$10$Pp3WXA2hfhEmElDqLCv33uag5qu5sLvEA0Ae8BOUohbOLGFL2H1iK', NULL, '2018-02-11 07:33:21', '2018-02-11 09:55:02');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
