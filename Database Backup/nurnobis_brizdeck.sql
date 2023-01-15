-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2023 at 11:52 AM
-- Server version: 10.5.18-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nurnobis_brizdeck`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `short_bio` varchar(255) DEFAULT NULL,
  `body` text NOT NULL,
  `version` float NOT NULL,
  `download_url` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `vote_count` int(11) DEFAULT NULL,
  `view_count` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `size` float DEFAULT NULL,
  `developer` varchar(255) DEFAULT NULL,
  `requirement` text DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL,
  `play_store` varchar(255) DEFAULT NULL,
  `apps_store` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '#',
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'partner 1', '#', 'brands\\March2022\\agm6AkKcKpALeRKyedNT.png', '2022-03-15 05:49:38', '2022-03-15 05:49:38'),
(2, 'partner 2', '#', 'brands\\March2022\\FJDfaFoar3UWolwDxKXl.png', '2022-03-15 05:49:50', '2022-03-15 05:49:50'),
(3, 'partner 3', '#', 'brands\\March2022\\wpD5HjheaO85vShWftJu.png', '2022-03-15 05:50:02', '2022-03-15 05:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(3, NULL, 1, 'Advertise', 'advertise', '2022-04-16 01:14:59', '2022-04-16 01:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT '"PENDING"'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 'Hello', '2022-03-18 00:46:37', '2022-03-18 00:46:37', 'PUBLISHED'),
(2, 1, 1, 'fdfg', '2022-03-18 02:35:58', '2022-03-18 02:35:58', '\"PENDING\"'),
(3, 1, 1, 'Hello', '2022-03-18 02:37:31', '2022-03-18 02:37:31', '\"PENDING\"'),
(4, 1, 1, 'This is the body of the lorem ipsum post This is the body of the lorem ipsum post This is the body of the lorem ipsum post', '2022-03-18 02:44:14', '2022-03-18 02:44:14', '\"PENDING\"'),
(5, 2, 1, 'Hello', '2022-03-18 04:25:45', '2022-03-18 04:25:45', '\"PENDING\"'),
(6, 2, 1, 'bum bum', '2022-03-18 04:26:04', '2022-03-18 04:26:04', '\"PENDING\"'),
(7, 2, 5, 'Hi', '2022-03-18 04:33:36', '2022-03-18 04:33:36', '\"PENDING\"');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `type`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(8, 'Web Design & Development Service', 'Md. Nurnobi Hosen', 'mdnurnobihosen1@gmail.com', '01770634816', 'Checking Puspose', 'Hello', '2022-04-16 08:24:42', '2022-04-16 08:24:42'),
(9, 'Web Design &amp; Development Service', 'Ronaldnek', 'no-replyDilky@gmail.com', '88816732325', 'A new method of email distribution.', 'Good day!  brizdeck.com \r\n \r\nWe put up of the sale \r\n \r\nSending your message through the Contact us form which can be found on the sites in the contact section. Contact form are filled in by our software and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This method increases the chances that your message will be read. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis offer is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2022-05-25 16:21:13', '2022-05-25 16:21:13'),
(10, 'Web Design &amp; Development Service', 'Helina Aziz', 'helinaaziz966@gmail.com', '88314689168', 'Subject: Owner of Website:brizdeck.com', 'As-salamu alaykum, \r\n \r\nHow are you? \r\n \r\nMy name is Ms. Helina Aziz. Am reaching you through your website because I might not get you on the phone. \r\n \r\nI am interested in investing in your country through your personal business or services. I will like to keep this brief until I hear from you, you can reach me on  helinaaziz966@gmail.com or helina.aziz@saudiroyalfamily.live and WhatsApp messenger +447418439845. \r\n \r\nHave a nice day, \r\nMs. Helina Aziz', '2022-05-30 09:32:36', '2022-05-30 09:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 10),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 14),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 11),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:tags,slug\"}}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 5),
(61, 7, 'tag_hasone_post_relationship', 'relationship', 'Posts', 0, 0, 1, 0, 0, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"post_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 6),
(62, 5, 'post_belongstomany_tag_relationship', 'relationship', 'Tags', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"post_tag\",\"pivot\":\"1\",\"taggable\":\"0\"}', 17),
(63, 5, 'post_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(65, 5, 'view_count', 'text', 'View Count', 1, 1, 1, 1, 1, 1, '{}', 16),
(66, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(67, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 2),
(68, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(69, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"100\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 4),
(70, 8, 'review', 'text_area', 'Review', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 5),
(71, 8, 'slug', 'text', 'Slug', 1, 0, 0, 1, 1, 0, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"required:unique:testimonials,slug\",\"messages\":{\"required\":\"The field is required.\"}}}', 7),
(72, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(73, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(74, 8, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{\"default\":\"#\"}', 6),
(75, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 2),
(77, 9, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{\"default\":\"#\"}', 3),
(78, 9, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"null\",\"height\":\"150\"},\"quality\":\"70%\",\"upsize\":true,\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 4),
(79, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(80, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(81, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 10, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 2),
(83, 10, 'answer', 'text', 'Answer', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"The field is required.\"}}}', 3),
(84, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(85, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(86, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 11, 'type', 'text', 'Type', 1, 0, 0, 0, 0, 0, '{}', 2),
(88, 11, 'name', 'text', 'Name', 1, 1, 1, 0, 0, 0, '{}', 3),
(89, 11, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 0, '{}', 4),
(90, 11, 'phone', 'text', 'Phone', 1, 1, 1, 0, 0, 0, '{}', 5),
(91, 11, 'subject', 'text', 'Subject', 1, 1, 1, 0, 0, 0, '{}', 6),
(92, 11, 'message', 'text', 'Message', 0, 0, 0, 0, 0, 0, '{}', 7),
(93, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(94, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(95, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 8),
(96, 1, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:users,slug\"}}', 3),
(97, 5, 'post_belongsto_user_relationship', 'relationship', 'User', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(98, 1, 'user_hasmany_post_relationship', 'relationship', 'posts', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"hasMany\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(99, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 12, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:services,slug\"}}', 3),
(102, 12, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 4),
(103, 12, 'icon', 'text', 'Icon', 1, 1, 1, 1, 1, 1, '{\"placeholder\":\"Rimix Icon Class Name\"}', 5),
(104, 12, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(105, 12, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 8),
(106, 12, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 11),
(107, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(108, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(109, 13, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(110, 13, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:projects,slug\"}}', 3),
(111, 13, 'thumbnail', 'image', 'Thumbnail', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 4),
(112, 13, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 5),
(113, 13, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 6),
(114, 13, 'client', 'text', 'Client', 1, 0, 1, 1, 1, 1, '{}', 7),
(115, 13, 'src_name', 'text', 'Src Name', 0, 0, 1, 1, 1, 1, '{}', 8),
(116, 13, 'src_url', 'text', 'Src Url', 0, 0, 1, 1, 1, 1, '{}', 9),
(117, 13, 'category', 'text', 'Category', 0, 0, 1, 1, 1, 1, '{}', 10),
(118, 13, 'date', 'date', 'Date', 0, 0, 1, 1, 1, 1, '{}', 11),
(119, 12, 'quote', 'text_area', 'Quote', 0, 0, 1, 1, 1, 1, '{}', 9),
(120, 12, 'quote_by', 'text', 'Quote By', 0, 0, 1, 1, 1, 1, '{}', 10),
(127, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 14, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(129, 14, 'percent', 'number', 'Percent', 1, 1, 1, 1, 1, 1, '{}', 3),
(130, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(131, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(132, 12, 'service_belongstomany_skill_relationship', 'relationship', 'skills', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Skill\",\"table\":\"skills\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"service_skill\",\"pivot\":\"1\",\"taggable\":\"on\"}', 7),
(133, 13, 'project_belongstomany_skill_relationship', 'relationship', 'skills', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Skill\",\"table\":\"skills\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"project_skill\",\"pivot\":\"1\",\"taggable\":\"on\"}', 12),
(134, 13, 'excerpt', 'text_area', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 12),
(135, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 13),
(136, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(137, 13, 'quote', 'text_area', 'Quote', 0, 1, 1, 1, 1, 1, '{}', 15),
(138, 13, 'quote_by', 'text', 'Quote By', 0, 1, 1, 1, 1, 1, '{}', 16),
(139, 13, 'quote_url', 'text', 'Quote Url', 0, 1, 1, 1, 1, 1, '{}', 17),
(140, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(141, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(142, 15, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:teams,slug\"}}', 3),
(143, 15, 'tagline', 'text', 'Tagline', 1, 1, 1, 1, 1, 1, '{}', 4),
(144, 15, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"800\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 5),
(145, 15, 'short_bio', 'text_area', 'Short Bio', 0, 0, 1, 1, 1, 1, '{}', 6),
(146, 15, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 7),
(147, 15, 'website', 'text', 'Website', 0, 0, 1, 1, 1, 1, '{}', 9),
(148, 15, 'facebook', 'text', 'Facebook', 0, 0, 1, 1, 1, 1, '{}', 10),
(149, 15, 'github', 'text', 'Github', 0, 0, 1, 1, 1, 1, '{}', 11),
(150, 15, 'instagram', 'text', 'Instagram', 0, 0, 1, 1, 1, 1, '{}', 12),
(151, 15, 'youtube', 'text', 'Youtube', 0, 0, 1, 1, 1, 1, '{}', 13),
(152, 15, 'twitter', 'text', 'Twitter', 0, 0, 1, 1, 1, 1, '{}', 14),
(153, 15, 'linkedIn', 'text', 'LinkedIn', 0, 0, 1, 1, 1, 1, '{}', 15),
(154, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 16),
(155, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 17),
(156, 15, 'gallery', 'multiple_images', 'Gallery', 0, 0, 1, 1, 1, 1, '{}', 8),
(157, 15, 'team_belongstomany_skill_relationship', 'relationship', 'Skills', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Skill\",\"table\":\"skills\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"skill_team\",\"pivot\":\"1\",\"taggable\":\"on\"}', 18),
(158, 12, 'quote_url', 'text', 'Quote Url', 0, 1, 1, 1, 1, 1, '{}', 12),
(159, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(160, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(161, 16, 'location', 'text', 'Location', 0, 1, 1, 1, 1, 1, '{}', 3),
(162, 16, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(163, 16, 'gallery', 'multiple_images', 'Gallery', 1, 1, 1, 1, 1, 1, '{}', 5),
(164, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(165, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(166, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(167, 17, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(168, 17, 'post_id', 'text', 'Post Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(169, 17, 'comment', 'text_area', 'Comment', 0, 1, 1, 1, 1, 1, '{}', 4),
(170, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 5),
(171, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(172, 17, 'comment_belongsto_post_relationship', 'relationship', 'posts', 0, 1, 1, 1, 1, 1, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Post\",\"table\":\"posts\",\"type\":\"belongsTo\",\"column\":\"post_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(173, 17, 'comment_belongsto_user_relationship', 'relationship', 'users', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brands\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(174, 17, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"pending\",\"options\":{\"PUBLISHED\":\"published\",\"PENDING\":\"pending\"}}', 7),
(175, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(176, 20, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 0, '{}', 2),
(177, 20, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 0, '{}', 3),
(178, 20, 'heading', 'text_area', 'Heading', 0, 1, 1, 1, 1, 0, '{}', 4),
(179, 20, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 0, '{}', 5),
(180, 20, 'background', 'image', 'Background', 0, 1, 1, 1, 1, 0, '{}', 6),
(181, 20, 'btn_url', 'text', 'Button Url', 0, 0, 1, 1, 1, 1, '{}', 8),
(182, 20, 'image1', 'image', 'Image1 Big', 0, 0, 1, 1, 1, 0, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 9),
(183, 20, 'image2', 'image', 'Image 2 Small', 0, 0, 1, 1, 1, 0, '{\"resize\":{\"width\":\"300\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true}', 10),
(184, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(185, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(186, 20, 'slug', 'text', 'Slug', 1, 0, 1, 0, 1, 0, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:sections,slug\"}}', 14),
(187, 20, 'btn_name', 'text', 'Button Name', 0, 1, 1, 1, 1, 1, '{}', 7),
(188, 20, 'video_url', 'text', 'Video Url', 0, 0, 1, 1, 1, 1, '{}', 11),
(189, 20, 'option1_tiltle', 'text', 'Option1 Tiltle', 0, 0, 1, 1, 1, 1, '{}', 15),
(190, 20, 'option1_icon', 'text', 'Option1 Icon -Rimix Icon Class Name Only https://remixicon.com/', 0, 0, 1, 1, 1, 1, '{}', 16),
(191, 20, 'option1_description', 'text', 'Option1 Description', 0, 0, 1, 1, 1, 1, '{}', 17),
(192, 20, 'option2_tiltle', 'text', 'Option2 Tiltle', 0, 0, 1, 1, 1, 1, '{}', 18),
(193, 20, 'option2_icon', 'text', 'Option2 Icon Rimix Icon Class Name Only https://remixicon.com/', 0, 0, 1, 1, 1, 1, '{}', 19),
(194, 20, 'option2_description', 'text', 'Option2 Description', 0, 0, 1, 1, 1, 1, '{}', 20);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-12 10:50:08', '2022-03-15 05:23:52'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-03-12 10:50:08', '2022-03-12 10:50:08'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-03-12 10:50:08', '2022-03-12 10:50:08'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-12 10:50:16', '2022-03-12 21:51:10'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2022-03-12 10:50:16', '2022-03-15 05:01:19'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(7, 'tags', 'tags', 'Tag', 'Tags', NULL, 'App\\Models\\Tag', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-12 11:03:00', '2022-03-12 20:28:15'),
(8, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-star-two', 'App\\Models\\Testimonial', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-14 20:58:24', '2022-03-15 00:51:16'),
(9, 'brands', 'brands', 'Brand', 'Brands', 'voyager-company', 'App\\Models\\Brand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-15 00:59:12', '2022-03-15 00:59:12'),
(10, 'faqs', 'faqs', 'Faq', 'Faqs', 'voyager-question', 'App\\Models\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-15 01:03:56', '2022-03-15 01:03:56'),
(11, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-mail', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-15 01:30:00', '2022-03-15 03:09:10'),
(12, 'services', 'services', 'Service', 'Services', 'voyager-documentation', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-15 08:08:15', '2022-03-16 09:32:13'),
(13, 'projects', 'projects', 'Project', 'Projects', 'voyager-megaphone', 'App\\Models\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-15 08:48:33', '2022-03-17 01:22:39'),
(14, 'skills', 'skills', 'Skill', 'Skills', 'voyager-bulb', 'App\\Models\\Skill', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-16 00:51:33', '2022-03-16 00:51:33'),
(15, 'teams', 'teams', 'Team', 'Teams', 'voyager-people', 'App\\Models\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-16 03:23:55', '2022-03-16 08:20:54'),
(16, 'galleries', 'galleries', 'Gallery', 'Galleries', 'voyager-images', 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-03-17 02:40:25', '2022-03-17 02:40:25'),
(17, 'comments', 'comments', 'Comment', 'Comments', 'voyager-chat', 'App\\Models\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-03-18 00:10:16', '2022-03-18 00:17:46'),
(20, 'sections', 'sections', 'Section', 'Sections', 'voyager-anchor', 'App\\Models\\Section', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2022-04-12 02:45:59', '2022-04-12 04:41:10');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Company Provides A Full Range of Services?', 'Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat accumsan id imperdiet et porttitor at sem. Nulla porttitor accumsan tincidunt.', '2022-03-15 05:37:44', '2022-03-15 05:37:44'),
(2, 'How Long It Will Take For Web Development?', 'Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat accumsan id imperdiet et porttitor at sem. Nulla porttitor accumsan tincidunt', '2022-03-15 05:39:08', '2022-03-15 05:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `gallery` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `location`, `date`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Images', 'Brizdeck', '2022-03-10', '[\"galleries\\\\March2022\\\\WarpsyNb7luh55iax9oy.jpg\",\"galleries\\\\March2022\\\\I5sCDXMwgqksnGxSUz7g.jpg\",\"galleries\\\\March2022\\\\DpSwMB2Wc3HtRehkE5hu.jpg\"]', '2022-03-17 02:55:00', '2022-04-16 08:47:12');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-03-12 10:50:09', '2022-03-12 10:50:09'),
(2, 'Website', '2022-03-14 07:37:30', '2022-03-14 07:37:30'),
(3, 'footer-services', '2022-03-17 20:42:15', '2022-03-17 20:42:15'),
(4, 'footer-link1', '2022-03-17 21:08:05', '2022-03-17 21:08:05'),
(5, 'footer-link2', '2022-03-17 21:08:18', '2022-03-17 21:08:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-03-12 10:50:09', '2022-03-12 10:50:09', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-03-12 10:50:09', '2022-03-14 02:54:19', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-03-12 10:50:09', '2022-03-12 10:50:09', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-03-12 10:50:09', '2022-03-12 10:50:09', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-03-12 10:50:09', '2022-03-15 08:10:24', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-03-12 10:50:09', '2022-03-14 02:54:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-03-12 10:50:09', '2022-03-14 02:54:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-03-12 10:50:09', '2022-03-14 02:54:19', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-03-12 10:50:09', '2022-03-14 02:54:19', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2022-03-12 10:50:09', '2022-03-15 08:10:24', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, 24, 2, '2022-03-12 10:50:16', '2022-03-15 08:48:47', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, 24, 1, '2022-03-12 10:50:18', '2022-03-15 08:10:22', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2022-03-12 10:50:18', '2022-03-15 08:10:24', 'voyager.pages.index', NULL),
(14, 1, 'Tags', '', '_self', 'voyager-tag', '#000000', 24, 3, '2022-03-12 11:03:01', '2022-03-15 08:48:47', 'voyager.tags.index', 'null'),
(16, 2, 'Home', '', '_self', '<i class=\"ri-home-4-line\"></i>', '#000000', NULL, 1, '2022-03-14 07:38:58', '2022-03-17 21:18:14', 'website', 'null'),
(17, 2, 'Blog', '', '_self', 'voyager-news', '#000000', NULL, 5, '2022-03-14 07:39:31', '2022-03-17 04:37:59', 'website.blog', NULL),
(18, 1, 'Testimonials', '', '_self', 'voyager-star-two', NULL, 19, 4, '2022-03-14 20:58:25', '2022-03-17 02:40:50', 'voyager.testimonials.index', NULL),
(19, 1, 'Additional Info', '#', '_self', 'voyager-wand', '#000000', NULL, 6, '2022-03-15 00:53:27', '2022-03-16 02:20:19', NULL, ''),
(20, 1, 'Brands', '', '_self', 'voyager-company', NULL, 19, 5, '2022-03-15 00:59:13', '2022-03-17 02:40:50', 'voyager.brands.index', NULL),
(21, 1, 'Faqs', '', '_self', 'voyager-question', NULL, 19, 6, '2022-03-15 01:03:56', '2022-03-17 02:40:50', 'voyager.faqs.index', NULL),
(22, 1, 'Contacts', '', '_self', 'voyager-mail', NULL, 19, 9, '2022-03-15 01:30:01', '2022-03-17 02:40:50', 'voyager.contacts.index', NULL),
(23, 1, 'Services', '', '_self', 'voyager-documentation', NULL, 19, 7, '2022-03-15 08:08:15', '2022-03-17 02:40:50', 'voyager.services.index', NULL),
(24, 1, 'Articles', '', '_self', 'voyager-news', '#000000', NULL, 5, '2022-03-15 08:09:56', '2022-03-15 08:10:21', NULL, ''),
(25, 1, 'Projects', '', '_self', 'voyager-megaphone', NULL, 19, 3, '2022-03-15 08:48:33', '2022-03-17 02:40:50', 'voyager.projects.index', NULL),
(26, 1, 'Skills', '', '_self', 'voyager-bulb', NULL, 19, 8, '2022-03-16 00:51:33', '2022-03-17 02:40:50', 'voyager.skills.index', NULL),
(27, 2, 'Services', '', '_self', NULL, '#000000', NULL, 2, '2022-03-16 02:37:16', '2022-03-16 02:42:43', 'website.services', 'null'),
(28, 2, 'Testimonials', '', '_self', NULL, '#000000', 27, 1, '2022-03-16 02:40:11', '2022-03-17 04:37:42', 'website.testimonials', NULL),
(29, 2, 'Faqs', '', '_self', NULL, '#000000', 27, 4, '2022-03-16 02:41:14', '2022-03-17 04:37:58', 'website.faq', 'null'),
(30, 1, 'Teams', '', '_self', 'voyager-people', '#000000', 19, 2, '2022-03-16 03:23:55', '2022-03-17 02:40:50', 'voyager.teams.index', 'null'),
(31, 2, 'Teams', '', '_self', NULL, '#000000', 27, 3, '2022-03-16 09:20:37', '2022-03-17 04:37:54', 'website.teams', NULL),
(32, 2, 'About', '', '_self', NULL, '#000000', NULL, 4, '2022-03-16 23:41:58', '2022-03-17 04:37:59', 'website.about', 'null'),
(33, 2, 'Projects', '', '_self', NULL, '#000000', 27, 2, '2022-03-16 23:43:07', '2022-03-17 04:37:43', 'website.projects', NULL),
(34, 1, 'Galleries', '', '_self', 'voyager-images', NULL, 19, 1, '2022-03-17 02:40:25', '2022-03-17 02:40:50', 'voyager.galleries.index', NULL),
(35, 2, 'Gallery', '', '_self', NULL, '#000000', NULL, 3, '2022-03-17 02:41:31', '2022-03-17 04:37:58', 'website.gallery', NULL),
(36, 3, 'App Development', '', '_self', NULL, '#000000', NULL, 10, '2022-03-17 20:42:40', '2022-03-17 20:42:40', NULL, ''),
(37, 3, 'Web Development', '', '_self', NULL, '#000000', NULL, 11, '2022-03-17 20:42:52', '2022-03-17 20:42:52', NULL, ''),
(38, 3, 'Web Design', '', '_self', NULL, '#000000', NULL, 12, '2022-03-17 20:43:00', '2022-03-17 20:43:00', NULL, ''),
(39, 4, 'Privacy Policy', '', '_self', NULL, '#000000', NULL, 1, '2022-03-17 21:08:45', '2022-04-16 08:55:20', 'website.privacy', 'null'),
(40, 4, 'Terms and Conditions', '', '_self', NULL, '#000000', NULL, 2, '2022-03-17 21:09:05', '2022-04-16 08:55:31', 'website.terms', 'null'),
(41, 5, 'Faq', '', '_self', NULL, '#000000', NULL, 15, '2022-03-17 21:09:30', '2022-03-17 21:09:30', 'website.faq', NULL),
(42, 1, 'Comments', '', '_self', 'voyager-chat', NULL, 24, 4, '2022-03-18 00:10:17', '2022-03-18 00:24:53', 'voyager.comments.index', NULL),
(44, 1, 'Sections', '', '_self', 'voyager-anchor', NULL, NULL, 16, '2022-04-12 02:46:00', '2022-04-12 02:46:00', 'voyager.sections.index', NULL),
(45, 1, 'Business Mail', 'https://webmail.brizdeck.com/', '_blank', 'voyager-mail', '#000000', NULL, 17, '2022-04-17 01:33:54', '2022-04-17 01:33:54', NULL, '');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_01_01_000000_add_voyager_user_fields', 2),
(6, '2016_01_01_000000_create_data_types_table', 2),
(7, '2016_05_19_173453_create_menu_table', 2),
(8, '2016_10_21_190000_create_roles_table', 2),
(9, '2016_10_21_190000_create_settings_table', 2),
(10, '2016_11_30_135954_create_permission_table', 2),
(11, '2016_11_30_141208_create_permission_role_table', 2),
(12, '2016_12_26_201236_data_types__add__server_side', 2),
(13, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(14, '2017_01_14_005015_create_translations_table', 2),
(15, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(16, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(17, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(18, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(19, '2017_08_05_000000_add_group_to_settings_table', 2),
(20, '2017_11_26_013050_add_user_role_relationship', 2),
(21, '2017_11_26_015000_create_user_roles_table', 2),
(22, '2018_03_11_000000_add_user_settings', 2),
(23, '2018_03_14_000000_add_details_to_data_types_table', 2),
(24, '2018_03_16_000000_make_settings_value_nullable', 2),
(25, '2016_01_01_000000_create_pages_table', 3),
(26, '2016_01_01_000000_create_posts_table', 3),
(27, '2016_02_15_204651_create_categories_table', 3),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terms and Condition', '-', NULL, NULL, 'terms-of-condition', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-03-12 10:50:18', '2022-04-16 08:56:33'),
(2, 1, 'Privacy Policy', '.', NULL, NULL, 'privacy-policy', '.', '.', 'INACTIVE', '2022-03-17 20:40:23', '2022-04-16 08:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mdnurnobihosen1@gmail.com', '$2y$10$SyKQtLvEZ4PHwkIb090KeOF7elA66DgDFsVSVNLl/seIqOoZ6r84C', '2022-04-12 01:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-03-12 10:50:10', '2022-03-12 10:50:10'),
(2, 'browse_bread', NULL, '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(3, 'browse_database', NULL, '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(4, 'browse_media', NULL, '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(5, 'browse_compass', NULL, '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(6, 'browse_menus', 'menus', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(7, 'read_menus', 'menus', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(8, 'edit_menus', 'menus', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(9, 'add_menus', 'menus', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(10, 'delete_menus', 'menus', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(11, 'browse_roles', 'roles', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(12, 'read_roles', 'roles', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(13, 'edit_roles', 'roles', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(14, 'add_roles', 'roles', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(15, 'delete_roles', 'roles', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(16, 'browse_users', 'users', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(17, 'read_users', 'users', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(18, 'edit_users', 'users', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(19, 'add_users', 'users', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(20, 'delete_users', 'users', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(21, 'browse_settings', 'settings', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(22, 'read_settings', 'settings', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(23, 'edit_settings', 'settings', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(24, 'add_settings', 'settings', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(25, 'delete_settings', 'settings', '2022-03-12 10:50:11', '2022-03-12 10:50:11'),
(26, 'browse_categories', 'categories', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(27, 'read_categories', 'categories', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(28, 'edit_categories', 'categories', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(29, 'add_categories', 'categories', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(30, 'delete_categories', 'categories', '2022-03-12 10:50:16', '2022-03-12 10:50:16'),
(31, 'browse_posts', 'posts', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(32, 'read_posts', 'posts', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(33, 'edit_posts', 'posts', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(34, 'add_posts', 'posts', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(35, 'delete_posts', 'posts', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(36, 'browse_pages', 'pages', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(37, 'read_pages', 'pages', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(38, 'edit_pages', 'pages', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(39, 'add_pages', 'pages', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(40, 'delete_pages', 'pages', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(41, 'browse_tags', 'tags', '2022-03-12 11:03:01', '2022-03-12 11:03:01'),
(42, 'read_tags', 'tags', '2022-03-12 11:03:01', '2022-03-12 11:03:01'),
(43, 'edit_tags', 'tags', '2022-03-12 11:03:01', '2022-03-12 11:03:01'),
(44, 'add_tags', 'tags', '2022-03-12 11:03:01', '2022-03-12 11:03:01'),
(45, 'delete_tags', 'tags', '2022-03-12 11:03:01', '2022-03-12 11:03:01'),
(46, 'browse_testimonials', 'testimonials', '2022-03-14 20:58:24', '2022-03-14 20:58:24'),
(47, 'read_testimonials', 'testimonials', '2022-03-14 20:58:24', '2022-03-14 20:58:24'),
(48, 'edit_testimonials', 'testimonials', '2022-03-14 20:58:24', '2022-03-14 20:58:24'),
(49, 'add_testimonials', 'testimonials', '2022-03-14 20:58:24', '2022-03-14 20:58:24'),
(50, 'delete_testimonials', 'testimonials', '2022-03-14 20:58:24', '2022-03-14 20:58:24'),
(51, 'browse_brands', 'brands', '2022-03-15 00:59:13', '2022-03-15 00:59:13'),
(52, 'read_brands', 'brands', '2022-03-15 00:59:13', '2022-03-15 00:59:13'),
(53, 'edit_brands', 'brands', '2022-03-15 00:59:13', '2022-03-15 00:59:13'),
(54, 'add_brands', 'brands', '2022-03-15 00:59:13', '2022-03-15 00:59:13'),
(55, 'delete_brands', 'brands', '2022-03-15 00:59:13', '2022-03-15 00:59:13'),
(56, 'browse_faqs', 'faqs', '2022-03-15 01:03:56', '2022-03-15 01:03:56'),
(57, 'read_faqs', 'faqs', '2022-03-15 01:03:56', '2022-03-15 01:03:56'),
(58, 'edit_faqs', 'faqs', '2022-03-15 01:03:56', '2022-03-15 01:03:56'),
(59, 'add_faqs', 'faqs', '2022-03-15 01:03:56', '2022-03-15 01:03:56'),
(60, 'delete_faqs', 'faqs', '2022-03-15 01:03:56', '2022-03-15 01:03:56'),
(61, 'browse_contacts', 'contacts', '2022-03-15 01:30:01', '2022-03-15 01:30:01'),
(62, 'read_contacts', 'contacts', '2022-03-15 01:30:01', '2022-03-15 01:30:01'),
(63, 'edit_contacts', 'contacts', '2022-03-15 01:30:01', '2022-03-15 01:30:01'),
(64, 'add_contacts', 'contacts', '2022-03-15 01:30:01', '2022-03-15 01:30:01'),
(65, 'delete_contacts', 'contacts', '2022-03-15 01:30:01', '2022-03-15 01:30:01'),
(66, 'browse_services', 'services', '2022-03-15 08:08:15', '2022-03-15 08:08:15'),
(67, 'read_services', 'services', '2022-03-15 08:08:15', '2022-03-15 08:08:15'),
(68, 'edit_services', 'services', '2022-03-15 08:08:15', '2022-03-15 08:08:15'),
(69, 'add_services', 'services', '2022-03-15 08:08:15', '2022-03-15 08:08:15'),
(70, 'delete_services', 'services', '2022-03-15 08:08:15', '2022-03-15 08:08:15'),
(71, 'browse_projects', 'projects', '2022-03-15 08:48:33', '2022-03-15 08:48:33'),
(72, 'read_projects', 'projects', '2022-03-15 08:48:33', '2022-03-15 08:48:33'),
(73, 'edit_projects', 'projects', '2022-03-15 08:48:33', '2022-03-15 08:48:33'),
(74, 'add_projects', 'projects', '2022-03-15 08:48:33', '2022-03-15 08:48:33'),
(75, 'delete_projects', 'projects', '2022-03-15 08:48:33', '2022-03-15 08:48:33'),
(76, 'browse_skills', 'skills', '2022-03-16 00:51:33', '2022-03-16 00:51:33'),
(77, 'read_skills', 'skills', '2022-03-16 00:51:33', '2022-03-16 00:51:33'),
(78, 'edit_skills', 'skills', '2022-03-16 00:51:33', '2022-03-16 00:51:33'),
(79, 'add_skills', 'skills', '2022-03-16 00:51:33', '2022-03-16 00:51:33'),
(80, 'delete_skills', 'skills', '2022-03-16 00:51:33', '2022-03-16 00:51:33'),
(81, 'browse_teams', 'teams', '2022-03-16 03:23:55', '2022-03-16 03:23:55'),
(82, 'read_teams', 'teams', '2022-03-16 03:23:55', '2022-03-16 03:23:55'),
(83, 'edit_teams', 'teams', '2022-03-16 03:23:55', '2022-03-16 03:23:55'),
(84, 'add_teams', 'teams', '2022-03-16 03:23:55', '2022-03-16 03:23:55'),
(85, 'delete_teams', 'teams', '2022-03-16 03:23:55', '2022-03-16 03:23:55'),
(86, 'browse_galleries', 'galleries', '2022-03-17 02:40:25', '2022-03-17 02:40:25'),
(87, 'read_galleries', 'galleries', '2022-03-17 02:40:25', '2022-03-17 02:40:25'),
(88, 'edit_galleries', 'galleries', '2022-03-17 02:40:25', '2022-03-17 02:40:25'),
(89, 'add_galleries', 'galleries', '2022-03-17 02:40:25', '2022-03-17 02:40:25'),
(90, 'delete_galleries', 'galleries', '2022-03-17 02:40:25', '2022-03-17 02:40:25'),
(91, 'browse_comments', 'comments', '2022-03-18 00:10:16', '2022-03-18 00:10:16'),
(92, 'read_comments', 'comments', '2022-03-18 00:10:16', '2022-03-18 00:10:16'),
(93, 'edit_comments', 'comments', '2022-03-18 00:10:16', '2022-03-18 00:10:16'),
(94, 'add_comments', 'comments', '2022-03-18 00:10:16', '2022-03-18 00:10:16'),
(95, 'delete_comments', 'comments', '2022-03-18 00:10:16', '2022-03-18 00:10:16'),
(101, 'browse_sections', 'sections', '2022-04-12 02:45:59', '2022-04-12 02:45:59'),
(102, 'read_sections', 'sections', '2022-04-12 02:45:59', '2022-04-12 02:45:59'),
(103, 'edit_sections', 'sections', '2022-04-12 02:45:59', '2022-04-12 02:45:59'),
(104, 'add_sections', 'sections', '2022-04-12 02:45:59', '2022-04-12 02:45:59'),
(105, 'delete_sections', 'sections', '2022-04-12 02:45:59', '2022-04-12 02:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `view_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`, `view_count`) VALUES
(6, 1, 3, 'আপনার প্রতিষ্ঠান টি আরো উন্নত ও আকর্ষণীয় করে তুলতে থাকুন Brizdeck সাথে।', NULL, 'কথায় আছে প্রথমে দর্শনধারী তারপর গুণবিচারী। একটি প্রতিষ্ঠানের সৌন্দর্য্য প্রকাশ পায় তার শিল্পকার্য এর মাধ্যমে। আর সে জন্য প্রয়োজন আকর্ষণীয় চোখ ধাঁধানো ইউনিক সব ডিজাইন। তাই আপনার প্রতিষ্ঠান টি আরো উন্নত ও আকর্ষণীয় করে তুলতে থাকুন Brizdeck সাথে।', '<p>🎉এই রমজান হয়ে উঠুক আরো বরকতময় সাশ্রয়ী মূল্যে ডিজাইন করুন ব্রিজডেক এর সাথে। কথায় আছে প্রথমে দর্শনধারী তারপর গুণবিচারী। একটি প্রতিষ্ঠানের সৌন্দর্য্য প্রকাশ পায় তার শিল্পকার্য এর মাধ্যমে। আর সে জন্য প্রয়োজন আকর্ষণীয় চোখ ধাঁধানো ইউনিক সব ডিজাইন। তাই আপনার প্রতিষ্ঠান টি আরো উন্নত ও আকর্ষণীয় করে তুলতে থাকুন Brizdeck সাথে।</p>\r\n<p>আমাদের সেবা সমূহ হলোঃ-</p>\r\n<ul>\r\n<li>🎯কোম্পানির লোগো ডিজাইন</li>\r\n<li>🎯কভার ডিজাইন</li>\r\n<li>🎯সোশ্যাল মিডিয়া ব্যানার ডিজাইন</li>\r\n<li>🎯বিজনেস কার্ড ডিজাইন</li>\r\n</ul>\r\n<p>আমাদের সার্ভিস সমূহ সম্পর্কে বিস্তারিত জানতে যোগাযোগ করুন ⬇️</p>\r\n<ul>\r\n<li>&copy;️ Brizdeck Corporation</li>\r\n<li>🏢 Dhanmondi 32, Dhaka 1209</li>\r\n<li>📱 Messenger : <a href=\"https://m.me/brizdeck.official\" target=\"_blank\" rel=\"noopener\">m.me/brizdeck.official </a></li>\r\n<li>📧 Mail :brizdeck@gmail.com</li>\r\n<li>📞 Contact : +889696124648, 01796004569</li>\r\n</ul>', 'posts\\April2022\\0k2v3astKMNPkaGHldJx.jpg', 'brizdeck', NULL, NULL, 'PUBLISHED', 0, '2022-04-16 01:17:35', '2023-01-10 08:02:36', 132),
(7, 1, 1, 'What Is SEO / Search Engine Optimization?', NULL, 'SEO stands for “search engine optimization.” In simple terms, it means the process of improving your site to increase its visibility when people search for products or services related to your business in Google, Bing, and other search engines. The better visibility your pages have in search results, the more likely you are to garner attention and attract prospective and existing customers to your business.', '<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">SEO stands for &ldquo;search engine optimization.&rdquo; In simple terms, it means the process of improving your site to increase its visibility when people search for products or services related to your business in Google, Bing, and other search engines. The better visibility your pages have in search results, the more likely you are to garner attention and attract prospective and existing customers to your business.</p>\r\n<h2 style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 0.5rem; font-weight: 400; line-height: 1.3em; font-size: 2.625rem; font-family: Oswald; letter-spacing: -0.01em; background-color: #ffffff;\">How does SEO work?</h2>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">Search engines such as&nbsp;<a style=\"box-sizing: border-box; color: #0093ff;\" href=\"https://searchengineland.com/library/google\">Google</a>&nbsp;and&nbsp;<a style=\"box-sizing: border-box; color: #0093ff;\" href=\"https://searchengineland.com/library/bing\">Bing</a>&nbsp;use bots to crawl pages on the web, going from site to site, collecting information about those pages and putting them in an index. Think of the index like a giant library where a librarian can pull up a book (or a web page) to help you find exactly what you&rsquo;re looking for at the time.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">Next, algorithms analyze pages in the index, taking into account hundreds of ranking factors or signals, to determine the order pages should appear in the search results for a given query. In our library analogy, the librarian has read&nbsp;<em style=\"box-sizing: border-box;\">every single book</em>&nbsp;in the library and can tell you exactly which one will have the answers to your questions.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">Our SEO success factors can be considered proxies for aspects of the&nbsp;<a style=\"box-sizing: border-box; color: #0093ff;\" href=\"https://searchengineland.com/the-google-page-experience-update-user-experience-to-become-a-google-ranking-factor-335252\">user experience</a>. It&rsquo;s how search bots estimate exactly how well a&nbsp; website or web page can give the searcher what they&rsquo;re searching for.&nbsp;</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">Unlike&nbsp;<a style=\"box-sizing: border-box; color: #0093ff;\" href=\"https://searchengineland.com/guide/what-is-paid-search\">paid search ads</a>, you can&rsquo;t pay search engines to get higher organic search rankings, which means SEO experts have to put in the work. That&rsquo;s where we come in.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">Our Periodic Table of SEO Factors organizes the factors into six main categories and weights each based on its overall importance to SEO. For example, content quality and keyword research are key factors of content optimization, and crawlability and speed are important site architecture factors.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">The newly updated SEO Periodic Table also includes a list of Toxins that detract from SEO best practices. These are shortcuts or tricks that may have been sufficient to guarantee a high ranking back in the day when the engines&rsquo; methods were much less sophisticated. And, they might even work for a short time now &mdash; at least until you&rsquo;re caught.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">We&rsquo;ve also got a brand new Niches section that deep-dives into the SEO success factors behind three key niches: Local SEO, News/Publishing, and Ecommerce SEO. While our overall SEO Periodic Table will help you with the best practices, knowing the nuances of SEO for each of these Niches can help you succeed in search results for your small business, recipe blog, and/or online store.</p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-top: 0px; margin-bottom: 1.25rem; font-family: Roboto; font-size: 1.125rem; line-height: 1.4em; background-color: #ffffff;\">The search algorithms are designed to surface relevant, authoritative pages and provide users with an efficient search experience. Optimizing your site and content with these factors in mind can help your pages rank higher in the search results.</p>', NULL, 'what-is-seo-search-engine-optimization', NULL, NULL, 'PUBLISHED', 0, '2022-04-18 04:27:04', '2023-01-14 18:07:41', 156),
(8, 1, 1, 'What is Web Development?', NULL, NULL, '<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-bottom: 15px; margin-top: 0px; color: #003668; font-family: Montserrat, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box;\">Web development&nbsp;is the building and maintenance of websites; it&rsquo;s the work that happens behind the scenes to make a website look great, work fast and perform well with a seamless user experience.</span></p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-bottom: 15px; margin-top: 0px; color: #003668; font-family: Montserrat, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box;\">Web developers, or &lsquo;devs&rsquo;, do this by using a variety of coding languages. The languages they use depends on the types of tasks they are preforming and the platforms on which they are working.</span></p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-bottom: 15px; margin-top: 0px; color: #003668; font-family: Montserrat, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box;\">Web development skills are in high demand worldwide and well paid too &ndash; making development a great career option. It is one of the easiest accessible higher paid fields as you do not need a traditional university degree to become qualified.</span></p>\r\n<p style=\"box-sizing: border-box; overflow-wrap: break-word; margin-bottom: 15px; margin-top: 0px; color: #003668; font-family: Montserrat, sans-serif; font-size: 16px; background-color: #ffffff;\"><span style=\"box-sizing: border-box;\">The field of web development is</span><span style=\"box-sizing: border-box;\">&nbsp;generally broken down into front-end (the user-facing side) and back-end (the server side). Let&rsquo;s delve into the details.</span></p>', NULL, 'what-is-web-development', NULL, NULL, 'PUBLISHED', 0, '2022-04-18 04:28:10', '2023-01-14 18:01:49', 181);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(5, 4),
(6, 1),
(7, 4),
(8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `images` text DEFAULT NULL,
  `client` varchar(255) NOT NULL,
  `src_name` varchar(255) DEFAULT NULL,
  `src_url` varchar(255) DEFAULT '#',
  `category` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `quote_by` varchar(255) DEFAULT NULL,
  `quote_url` varchar(255) DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `thumbnail`, `body`, `images`, `client`, `src_name`, `src_url`, `category`, `date`, `excerpt`, `created_at`, `updated_at`, `quote`, `quote_by`, `quote_url`) VALUES
(1, 'Product Engineering', 'product-engineering', 'projects\\March2022\\kXLuxhnXzN92FF8S4sOh.jpg', '<div class=\"case-study-details-content\" style=\"box-sizing: border-box; margin-top: 30px; padding-bottom: 30px; border-bottom: 1px solid #e8eaee; color: #212529; font-family: \'DM Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.2; font-size: 30px; color: var(--black-color); font-family: var(--main-font-family);\"><span style=\"box-sizing: border-box; color: var(--main-color);\">01.</span>&nbsp;Сhallenge</h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.8; color: var(--paragraph-color); font-family: var(--main-font-family); font-size: var(--font-size);\">Lorem ipsum dolor sit amet consectetur adipiscing elit cursus amet sem venenatis faucibus non maecenas ultricies feugiat amet tellus condimentum eu sed sit ut tempus felis sit sagittis morbi sed ultricies feugiat amet tellu indum eu sed sit ut tempus felis sit sed.</p>\r\n<ul class=\"list\" style=\"box-sizing: border-box; padding: 0px; margin-top: 0px; margin-bottom: 0px;\">\r\n<li style=\"box-sizing: border-box; list-style-type: none; color: var(--paragraph-color); font-size: var(--font-size); margin-bottom: 15px; position: relative; padding-left: 18px;\">Cursus amet sem venenatis faucibus non maecenas</li>\r\n<li style=\"box-sizing: border-box; list-style-type: none; color: var(--paragraph-color); font-size: var(--font-size); margin-bottom: 15px; position: relative; padding-left: 18px;\">Faucibus non maecenas feugiat amet tellus condimentum</li>\r\n<li style=\"box-sizing: border-box; list-style-type: none; color: var(--paragraph-color); font-size: var(--font-size); margin-bottom: 15px; position: relative; padding-left: 18px;\">Venenatis faucibus non maecenas feugiat amet tellus lorem text</li>\r\n<li style=\"box-sizing: border-box; list-style-type: none; color: var(--paragraph-color); font-size: var(--font-size); margin-bottom: 15px; position: relative; padding-left: 18px;\">Inded anythingfeugiat amet tellus condims</li>\r\n<li style=\"box-sizing: border-box; list-style-type: none; color: var(--paragraph-color); font-size: var(--font-size); margin-bottom: 0px; position: relative; padding-left: 18px;\">Tenenatis faucibus non maecenas&nbsp;<span style=\"box-sizing: border-box; color: var(--main-color);\">feugiat</span>&nbsp;amet tellus</li>\r\n</ul>\r\n</div>\r\n<div class=\"case-study-details-content\" style=\"box-sizing: border-box; margin-top: 30px; padding-bottom: 30px; border-bottom: 1px solid #e8eaee; color: #212529; font-family: \'DM Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.2; font-size: 30px; color: var(--black-color); font-family: var(--main-font-family);\"><span style=\"box-sizing: border-box; color: var(--main-color);\">02.</span>&nbsp;Solutions</h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.8; color: var(--paragraph-color); font-family: var(--main-font-family); font-size: var(--font-size);\">Lorem ipsum dolor sit amet consectetur adipiscing elit cursus amet sem venenatis faucibus non maecenas ultricies feugiat amet tellus condimentum eu sed sit ut tempus felis sit sagittis morbi sed ultricies feugiat amet tellu indum eu sed sit ut tempus felis sit sed.</p>\r\n<h3 style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.2; font-size: 30px; color: var(--black-color);\"><span style=\"box-sizing: border-box; color: var(--main-color);\">03.</span>&nbsp;Results</h3>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.8; color: var(--paragraph-color);\">Lorem ipsum dolor sit amet consectetur adipiscing elit cursus amet sem venenatis faucibus non maecenas ultricies feugiat amet tellus condimentum eu sed sit ut tempus felis sit sagittis morbi sed ultricies feugiat amet tellu indum eu sed sit ut tempus felis sit sed.</p>\r\n</div>', '[\"projects\\\\March2022\\\\TwnJvoKvYDRhu6xFoifm.jpg\",\"projects\\\\March2022\\\\j9g8gDFNSJpjXcv2jSGp.jpg\",\"projects\\\\March2022\\\\RL9RItcdrB3vROofUAsy.jpg\",\"projects\\\\March2022\\\\YooIzEeNooT1ZYnA8kob.jpg\",\"projects\\\\March2022\\\\Oq10SQlnDooNX4p3xGzA.jpg\",\"projects\\\\March2022\\\\Uaa7bexbIl5InCpTLOfc.jpg\"]', 'Oleev LTD', 'oleev.com', '#', 'Web Design', '2022-03-17', 'Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2022-03-17 00:03:00', '2022-03-17 01:25:36', 'Lorem ipsum dolor sit amet consectetur adipiscing elit fames fusce venenatis mattis lorem orci neque mi nascetur tristique vitae tincidunt sit aliquam iaculis placerat is mattis consectetur adipiscing elit.', 'Nurnobi Shanto', '#');

-- --------------------------------------------------------

--
-- Table structure for table `project_skill`
--

CREATE TABLE `project_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_skill`
--

INSERT INTO `project_skill` (`id`, `project_id`, `skill_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-03-12 10:50:09', '2022-03-12 10:50:09'),
(2, 'user', 'Normal User', '2022-03-12 10:50:10', '2022-03-12 10:50:10'),
(3, 'Publisher', 'Publisher', '2022-04-16 08:00:03', '2022-04-16 08:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `background` text DEFAULT NULL,
  `btn_url` varchar(255) DEFAULT NULL,
  `image1` text DEFAULT NULL,
  `image2` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `btn_name` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `option1_tiltle` varchar(255) DEFAULT NULL,
  `option1_icon` varchar(255) DEFAULT NULL,
  `option1_description` text DEFAULT NULL,
  `option2_tiltle` varchar(255) DEFAULT NULL,
  `option2_icon` varchar(255) DEFAULT NULL,
  `option2_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `title`, `heading`, `description`, `background`, `btn_url`, `image1`, `image2`, `created_at`, `updated_at`, `slug`, `btn_name`, `video_url`, `option1_tiltle`, `option1_icon`, `option1_description`, `option2_tiltle`, `option2_icon`, `option2_description`) VALUES
(1, 'Hero Section', 'Brizdeck', 'Powerful Websites Development and Digital Marketing Agency', 'Brizdeck is a marketing agency that offers Digital Marketing Services to clients. If you\'re having trouble growing your business Brizdeck can be your right partner to get the best marketing services for expanding your online business. Contact with us', 'sections\\April2022\\p3eDVIOYVsGq5DlIV6Hc.jpg', 'https://brizdeck.com/contact', NULL, NULL, '2022-04-12 02:54:35', '2022-04-16 21:35:05', 'hero-section', 'Contact Us', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'About', 'About Brizdeck', 'Best Award Winning Creative Agency Shape Of Perfect Solution 1', 'Hi, We’re BRIZDECK! A Creative Digital Marketing and Web Development agency based Globally. \r\nFrom strategy to implementation and ongoing technical and marketing support, leveraging our 2 years of proven experience in delivering beautiful results. \r\nWe Provide Digital and Web Development Service Marketing services. Our team is ready to handle any business challenge, powered by innovation and creativity, and backed by cutting-edge technology.', NULL, 'http://127.0.0.1:8000/about', 'sections\\April2022\\C87T8G9a84LT7s0CbmHU.jpg', 'sections\\April2022\\7lfK2IkeoUgvmIec9zX7.jpg', '2022-04-12 03:17:15', '2022-04-16 01:45:42', 'about', 'Learn More', NULL, 'Mission', 'ri-bubble-chart-fill', 'Experience is such a thing that you can’t make with money. Our 2+ years of experience of excellent data-driven results make us different from all other SEO companies.', 'Vision', 'ri-medal-2-fill', 'Every SEO company says that they can deliver you results, but we don’t just say but also show you the proof from our real projects.'),
(3, 'Services', 'Our Services', 'Get Benefit And More With Our Excelent Services', '~', NULL, 'https://brizdeck.com/services', NULL, NULL, '2022-04-12 03:29:28', '2022-04-16 21:35:37', 'services', 'More Services', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Why Choose Us', 'Why Choose Us', 'Our Working Process To Help Your Boost Your Business', 'The answer is simple – Brizdeck helps you achieve more sales and revenue from our Digital Marketing and Web Development services. As we are in the industry for more than 2 years now (from 2020) we have grown high-level expertise in this industry.', 'sections\\April2022\\2gbLBZbWVW8CHJWveMmJ.jpg', NULL, NULL, NULL, '2022-04-12 03:43:24', '2022-04-16 01:35:29', 'why-choose-us', NULL, NULL, 'Experience', 'ri-microscope-line', 'Experience is such a thing that you can’t make with money. Our 2+ years of experience of excellent data-driven results make us different from all other SEO companies.', 'Proof of Results', 'ri-shield-check-line', 'Every SEO company says that they can deliver you results, but we don’t just say but also show you the proof from our real projects.'),
(5, 'Funfact', 'Funfact', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 03:50:43', '2022-04-12 03:50:43', 'funfact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Portfolio', 'Our Portfolio', 'Grow And Experience Endless Possibilites To Your Business', '~', 'sections\\April2022\\nxcqGRtAZhlMhwgEdXG2.jpg', 'http://127.0.0.1:8000/project', NULL, NULL, '2022-04-12 03:53:01', '2022-04-16 01:50:20', 'portfolio', 'More Portfolio', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Expertise', 'Our Expertise', 'Boost your business with our Creative Ideas and Brand Solutions', 'Lorem ipsum dolor sit amet consectetur adipiscing elit et fames maecenas amet est scelerisque lectus tortor sit lorem ipsum dolor sit amet consectetur adipiscing elit et fames maecenas amet est scelerisque lectus tortor sit.', NULL, 'http://127.0.0.1:8000/contact', 'sections\\April2022\\Tsh7oiz6UJSSr7UVtJML.png', NULL, '2022-04-12 04:03:17', '2022-04-16 02:04:57', 'expertise', 'Contact Us', NULL, 'Boost Your Sale', 'ri-line-chart-line', 'Lorem ipsum dolor sit amet consectetur adipiscing elit et fames maecenas', 'Idea & Analysis', 'ri-stack-line', 'Lorem ipsum dolor sit amet consectetur adipiscing elit et fames maecenas amet est scelerisque'),
(8, 'Review', 'Reviews', 'Positive reviews of our clients', '~', NULL, 'https://brizdeck.com/testimonials', NULL, NULL, '2022-04-12 04:11:03', '2022-04-16 21:43:41', 'review', 'More Review', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Team', 'Our Expert Team', 'Talented Member Ready To Start Your Project', '-', NULL, NULL, NULL, NULL, '2022-04-12 04:13:38', '2022-04-16 01:56:38', 'team', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Ask', 'Ask any Question', 'Boost Business With Creative Idea & Brand Solutions With Us', '-', NULL, NULL, NULL, NULL, '2022-04-12 04:16:17', '2022-04-16 01:59:24', 'ask', NULL, NULL, NULL, NULL, NULL, 'Option 2', NULL, NULL),
(11, 'Blog', 'Read Our Latest Articles', 'Latest From Our Blog Post', '-', NULL, 'https://brizdeck.com/blog', NULL, NULL, '2022-04-12 04:20:44', '2022-04-16 21:36:06', 'blog', 'More Articles', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Contact', 'Contact Information', 'Alone We Can Do So Little Together We Can Do So Much', '-', NULL, NULL, NULL, NULL, '2022-04-13 01:12:07', '2022-04-16 01:56:53', 'contact', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `quote` varchar(255) DEFAULT NULL,
  `quote_by` varchar(255) DEFAULT NULL,
  `quote_url` varchar(255) DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `image`, `icon`, `body`, `excerpt`, `created_at`, `updated_at`, `quote`, `quote_by`, `quote_url`) VALUES
(1, 'Social Media Marketing', 'social-media-marketing', 'services\\March2022\\iJ09mSJs7aLFYQTRYwUJ.jpg', 'ri-award-fill', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.8; color: var(--paragraph-color); font-family: \'DM Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">It&rsquo;s a daunting challenge: How do you move forward at speed despite enormous uncertainty? Radar Strategy provides the answer. Our unique &ldquo;Today Forward, Future Back&rdquo; approach enables you to create value now as you move toward your future vision, with the flexibility to adapt as scenarios change. We&rsquo;ll help you make critical choices and choreograph your transformation journey as you bring your core to full potential and build new growth engines.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.8; color: var(--paragraph-color); font-family: \'DM Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">Our team of global experts help you achieve sustainable, organic growth by focusing on three critical building blocks: an outside-in approach that puts customers first, a uniquely great customer experience and internal capabilities that ensure you deliver optimal customer interactions at every touchpoint.</p>', 'Social Media Marketing can help you to increase your online presence. Marketing your business at social media at targeted prospects will bring incredible success for your business', '2022-03-15 22:31:00', '2022-04-16 02:19:16', NULL, NULL, NULL),
(2, 'Web Design & Development Service', 'web-design-and-development-service', 'services\\March2022\\QQ0fiRzXXlMm3vUQCWzH.jpg', 'ri-code-s-slash-line', '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 15px; line-height: 1.8; color: var(--paragraph-color); font-family: \'DM Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">It&rsquo;s a daunting challenge: How do you move forward at speed despite enormous uncertainty? Radar Strategy provides the answer. Our unique &ldquo;Today Forward, Future Back&rdquo; approach enables you to create value now as you move toward your future vision, with the flexibility to adapt as scenarios change. We&rsquo;ll help you make critical choices and choreograph your transformation journey as you bring your core to full potential and build new growth engines.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0px; line-height: 1.8; color: var(--paragraph-color); font-family: \'DM Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">Our team of global experts help you achieve sustainable, organic growth by focusing on three critical building blocks: an outside-in approach that puts customers first, a uniquely great customer experience and internal capabilities that ensure you deliver optimal customer interactions at every touchpoint.</p>', 'We understand the demand for new businesses. A new business needs a nice and informative website at the beginning of their business. We provide custom website design & development service in Bangladesh.', '2022-04-16 08:16:31', '2022-04-16 02:16:31', NULL, NULL, NULL),
(3, 'Graphics Design Services', 'graphics-design-services', 'services\\April2022\\vfGgk4Q9FkzSTtAKLgN2.jpg', 'ri-quill-pen-fill', '<p>-</p>', 'As We Provide Complete Digital Solutions, We also Provide Logo and Web Banner Design services to Our Clients. We Do Motions Graphics Designing Service Also. We are a reputed graphics design services provider in Bangladesh.', '2022-04-16 02:14:43', '2022-04-16 02:14:43', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `service_skill`
--

CREATE TABLE `service_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_skill`
--

INSERT INTO `service_skill` (`id`, `service_id`, `skill_id`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Brizdeck', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Brizdeck is a marketing agency that offers Digital Marketing Services to clients. If you\'re having trouble growing your business Brizdeck can be your right partner to get the best marketing services for expanding your online business. Contact with us', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\April2022\\e2aW4ySVdk1GmdCBu5pJ.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 6, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/April2022/1I4lCIJYd0vNmyY8rmCU.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Brizdeck Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Brizdeck Admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.copyright', 'footer', 'Copyright @ 2017 - 2022  All Rights Reserved by Brizdeck', NULL, 'text', 7, 'Site'),
(13, 'site.footer_logo', 'Site Footer Logo', 'settings\\April2022\\7VrhImYarUvVp4AzOn6l.png', NULL, 'image', 4, 'Site'),
(14, 'site.twitter', 'Twitter', NULL, NULL, 'text', 10, 'Site'),
(15, 'site.instagram', 'Instagram', NULL, NULL, 'text', 11, 'Site'),
(16, 'site.linkedin', 'Linkedin', NULL, NULL, 'text', 12, 'Site'),
(17, 'site.facebook', 'Facebook', NULL, NULL, 'text', 9, 'Site'),
(19, 'site.address', 'Address', '59/6 West Rajabaar, Tejgao, Dhaka 1215', NULL, 'text_area', 13, 'Site'),
(20, 'site.email', 'Email', 'info@brizdeck.com', NULL, 'text', 14, 'Site'),
(21, 'site.phone', 'Phone', '+8801973524648', NULL, 'text', 15, 'Site'),
(23, 'site.happy_client', 'Happy Clients', '50', NULL, 'text', 16, 'Site'),
(24, 'site.total_project', 'Total Projects', '100', NULL, 'text', 17, 'Site'),
(25, 'site.world_partner', 'Worldwide Partner', '50', NULL, 'text', 18, 'Site'),
(26, 'site.positive_review', 'Positive Review', '50', NULL, 'text', 19, 'Site'),
(27, 'site.favicon', 'favicon', 'settings/July2022/TviumWkEydBy6aushfz5.png', NULL, 'image', 20, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL DEFAULT 80,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'Graphics Design', 85, '2022-03-16 02:21:16', '2022-04-16 02:09:47'),
(2, 'Digital Marketing', 90, '2022-03-16 02:21:24', '2022-04-16 02:09:24'),
(3, 'Web Development', 90, '2022-04-16 02:09:38', '2022-04-16 02:09:38'),
(4, 'App Development', 70, '2022-04-16 02:10:00', '2022-04-16 02:10:00'),
(5, 'Web Design', 70, '2022-04-16 02:10:20', '2022-04-16 02:10:20'),
(6, 'Social Media Marketing', 90, '2022-04-16 02:11:36', '2022-04-16 02:11:36'),
(7, 'Link Building', 95, '2022-04-16 02:11:52', '2022-04-16 02:11:52'),
(8, 'Content Marketing', 70, '2022-04-16 02:12:18', '2022-04-16 02:12:18'),
(9, 'SEO Services', 70, '2022-04-16 02:12:24', '2022-04-16 02:12:24'),
(10, 'Paid Search Advertising', 75, '2022-04-16 02:12:41', '2022-04-16 02:12:41');

-- --------------------------------------------------------

--
-- Table structure for table `skill_team`
--

CREATE TABLE `skill_team` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_team`
--

INSERT INTO `skill_team` (`id`, `skill_id`, `team_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 3),
(5, 4, 4),
(6, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Graphics Design', 'graphics-design', '2022-03-12 19:57:19', '2022-03-12 19:57:19'),
(2, 'Ryzon Choice', 'ryzon-choice', '2022-03-12 19:57:23', '2022-03-12 19:57:23'),
(3, 'laravel', 'laravel', '2022-03-12 19:57:39', '2022-03-12 19:57:39'),
(4, 'Blank Tag', 'blank-tag', '2022-03-13 00:28:51', '2022-03-13 00:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `tagline` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_bio` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedIn` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `slug`, `tagline`, `image`, `short_bio`, `body`, `website`, `facebook`, `github`, `instagram`, `youtube`, `twitter`, `linkedIn`, `created_at`, `updated_at`, `gallery`) VALUES
(2, 'NH Tushar', 'nh-tushar', 'Graphics Designer', 'teams\\April2022\\4WW3Bjhi5K6tEgFrLBo2.jpeg', NULL, NULL, NULL, 'https://www.facebook.com/nh.tushar.589', NULL, NULL, NULL, NULL, NULL, '2022-04-16 08:30:00', '2022-04-16 08:34:45', NULL),
(3, 'Sadman Sakib', 'sadman-sakib', 'Digital Marketer', 'teams\\April2022\\YMS0Zqsbq9dCqEGmFoQo.jpg', NULL, NULL, NULL, 'https://www.facebook.com/md.sadmansakib13', NULL, NULL, NULL, NULL, NULL, '2022-04-16 08:34:00', '2022-04-16 08:34:52', NULL),
(4, 'Md. Nurnobi Hosen', 'md-nurnobi-hosen', 'Web Developer', 'teams\\April2022\\nfpolwR2KZ6YUi8oike0.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-16 08:36:44', '2022-04-16 08:36:44', NULL),
(5, 'Jannatul Ferdos Piya', 'jannatul-ferdos-piya', 'Content Writer', 'teams\\April2022\\LVTutCWCqzK6nnAt1tWj.jpeg', NULL, NULL, NULL, 'https://www.facebook.com/profile.php?id=100015859204064', NULL, NULL, NULL, NULL, NULL, '2022-04-16 08:42:05', '2022-04-16 08:42:05', NULL),
(6, 'Musrat Jahan Moon', 'musrat-jahan-moon', 'Content Writer', 'teams\\April2022\\Z57HEzAleOIWKPSx7JEk.jpeg', NULL, NULL, NULL, 'https://www.facebook.com/jannat.jannat.5076798', NULL, NULL, NULL, NULL, NULL, '2022-04-16 08:43:12', '2022-04-16 08:43:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) DEFAULT '#'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `title`, `image`, `review`, `slug`, `created_at`, `updated_at`, `url`) VALUES
(7, 'MuhamadF ahad', 'Client', 'testimonials/April2022/bBLpLBdxVYqamUT0SBg0.webp', 'Excellent developer i have ever found. He actually listen what customer wants and deliver the high quality work on time. Very good experience with him.', 'muhamadf-ahad', '2022-04-16 21:42:19', '2022-04-16 21:42:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-03-12 10:50:18', '2022-03-12 10:50:18'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-03-12 10:50:19', '2022-03-12 10:50:19'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-03-12 10:50:19', '2022-03-12 10:50:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `slug`, `phone`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\March2022\\0kXCBncTGyT3JYvKWjTc.jpg', NULL, '$2y$10$3KCj5AIAw2AqWZK5OiyYWuL6cy7SKp5IstQuKBOzvRuEv0FxaoX/u', 'H3scUj3e2F4vUMiQrjhcXsrseUwzgxmsPHxQbgd1AAYEI88pag6gtfoIcE1D', '{\"locale\":\"en\"}', '2022-03-12 10:50:16', '2022-03-12 10:53:40', '0', NULL),
(2, 1, 'Md. Nurnobi Hosen', 'nurnobishanto1@gmail.com', 'users/April2022/AT1aW7JXiPHWoOpuH3ot.jpg', NULL, '$2y$10$IlbY36qNmUm6JFacSAKCLeGBJkMH.zOM9EWUgdpFGP9dTTVx7i.ha', '9dNagWqz6GbqRuFz0NTTknbu22e0q33n4Z6XtqEBdDLdccG7s0WSxy6EOtkY', '{\"locale\":\"en\"}', '2022-03-18 04:25:28', '2022-07-19 15:22:12', NULL, NULL),
(3, 3, 'brizdeck', 'support@brizdeck.com', 'users/April2022/owXchKh5932gmrPtrtGp.jpg', NULL, '$2y$10$eOOWkRg9vtpybSYW1X2LZuGDYjfSf5KO4dDZhURsTfhAPgBRSaiBG', 'DHwh4F8md9UjWx3sK1HQ4AJuXxXvt0axRCDB48uPrB6IE7FXfUfzseuYPfcX', '{\"locale\":\"en\"}', '2022-04-16 07:55:53', '2022-04-16 21:08:41', NULL, NULL),
(5, 1, 'Brizdeck Official', 'brizdeck@gmail.com', 'users/July2022/6iuwONxsV7OtafCGItLg.png', NULL, '$2y$10$2ZM8Blkbm2jZez4IrXORiugifkX2Oj.k75XLhG4ZJb7Q3uhDLfN4.', NULL, '{\"locale\":\"en\"}', '2022-07-19 15:25:21', '2022-07-19 15:28:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apps_name_unique` (`name`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_index` (`user_id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `post_tag_post_id_index` (`post_id`),
  ADD KEY `post_tag_tag_id_index` (`tag_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_slug_unique` (`slug`);

--
-- Indexes for table `project_skill`
--
ALTER TABLE `project_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_skill_project_id_index` (`project_id`),
  ADD KEY `project_skill_skill_id_index` (`skill_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_slug_unique` (`slug`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `services_slug_unique` (`slug`);

--
-- Indexes for table `service_skill`
--
ALTER TABLE `service_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_skill_service_id_index` (`service_id`),
  ADD KEY `service_skill_skill_id_index` (`skill_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill_team`
--
ALTER TABLE `skill_team`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skill_team_skill_id_index` (`skill_id`),
  ADD KEY `skill_team_team_id_index` (`team_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_slug_unique` (`slug`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_skill`
--
ALTER TABLE `project_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_skill`
--
ALTER TABLE `service_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `skill_team`
--
ALTER TABLE `skill_team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
