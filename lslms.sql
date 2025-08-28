-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2025 at 06:39 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test22`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_generals`
--

CREATE TABLE `about_us_generals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_area_title` varchar(255) DEFAULT NULL,
  `gallery_area_subtitle` text DEFAULT NULL,
  `gallery_third_image` varchar(255) DEFAULT NULL,
  `gallery_second_image` varchar(255) DEFAULT NULL,
  `gallery_first_image` varchar(255) DEFAULT NULL,
  `our_history_title` varchar(255) DEFAULT NULL,
  `our_history_subtitle` text DEFAULT NULL,
  `upgrade_skill_logo` varchar(255) DEFAULT NULL,
  `upgrade_skill_title` varchar(255) DEFAULT NULL,
  `upgrade_skill_subtitle` text DEFAULT NULL,
  `upgrade_skill_button_name` varchar(255) DEFAULT NULL,
  `team_member_logo` varchar(255) DEFAULT NULL,
  `team_member_title` varchar(255) DEFAULT NULL,
  `team_member_subtitle` text DEFAULT NULL,
  `instructor_support_title` varchar(255) DEFAULT NULL,
  `instructor_support_subtitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_generals`
--

INSERT INTO `about_us_generals` (`id`, `gallery_area_title`, `gallery_area_subtitle`, `gallery_third_image`, `gallery_second_image`, `gallery_first_image`, `our_history_title`, `our_history_subtitle`, `upgrade_skill_logo`, `upgrade_skill_title`, `upgrade_skill_subtitle`, `upgrade_skill_button_name`, `team_member_logo`, `team_member_title`, `team_member_subtitle`, `instructor_support_title`, `instructor_support_subtitle`, `created_at`, `updated_at`) VALUES
(1, 'Mere Tranquil Existence, That I Neglect My Talents Should', 'Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot, Which Was Created For The Bliss Of Souls Like Mine. I Am So Happy, My Dear Friend, So Absorbed In The Exquisite Sense Of Mere Tranquil Existence', 'uploads_demo/gallery/3.jpg', 'uploads_demo/gallery/2.jpg', 'uploads_demo/gallery/1.jpg', 'Our History', 'Possession Of My Entire Soul, Like These Sweet Mornings Of Spring Which I Enjoy With My Whole Heart. I Am Alone, And Charm Of Existence In This Spot Which', 'uploads_demo/about_us_general/upgrade.jpg', 'Upgrade Your Skills Today For Upgrading Your Life.', 'Noticed by me when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence stalks, and grow familiar with the countless', 'Find Your Course', 'uploads_demo/about_us_general/team-members-heading-img.png', 'Our Passionate Team Members', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', 'Quality Course, Instructor And Support', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_history`
--

CREATE TABLE `affiliate_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) DEFAULT NULL,
  `actual_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=due,1=paid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_request`
--

CREATE TABLE `affiliate_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `comments` varchar(191) DEFAULT NULL,
  `letter` varchar(191) DEFAULT NULL,
  `affiliate_code` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) NOT NULL,
  `take_exam_id` bigint(20) NOT NULL,
  `multiple_choice_answer` mediumtext DEFAULT NULL,
  `is_correct` varchar(10) NOT NULL COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `exam_id`, `question_id`, `question_option_id`, `take_exam_id`, `multiple_choice_answer`, `is_correct`, `created_at`, `updated_at`) VALUES
(6, 70, 13, 23, 63, 9, NULL, 'yes', '2025-07-08 01:31:37', '2025-07-08 01:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_files`
--

CREATE TABLE `assignment_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submits`
--

CREATE TABLE `assignment_submits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assignment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `marks` double(8,2) DEFAULT NULL,
  `notes` mediumtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active,0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiaries`
--

CREATE TABLE `beneficiaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `beneficiary_name` varchar(191) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `card_number` varchar(191) DEFAULT NULL,
  `card_holder_name` varchar(191) DEFAULT NULL,
  `expire_month` varchar(191) DEFAULT NULL,
  `expire_year` varchar(191) DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL,
  `bank_account_number` varchar(191) DEFAULT NULL,
  `bank_account_name` varchar(191) DEFAULT NULL,
  `bank_routing_number` varchar(191) DEFAULT NULL,
  `paypal_email` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` mediumtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=published, 0=unpublished',
  `blog_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `uuid`, `user_id`, `title`, `slug`, `details`, `image`, `status`, `blog_category_id`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `created_at`, `updated_at`) VALUES
(1, '40a5dc67-3cd9-4139-8edb-1ba47bd798db', 1, '60 Common C# Interview Questions in 2022: Ace Your Next Interview', '60-common-c-interview-questions-in-2022-ace-your-next-interview', 'Getting hired as a programmer can be a challenge. There’s a lot of talent out there, and there’s a lot of competition. Many employers are wary of “paper programmers”; people who have no programming experience but just a degree. Because of this, they often ask in-depth programming questions during their interview. These questions can be hard to answer if you haven’t properly prepared. In this article, I’ll help you prepare to ace your next interview with these questions related to the C# programming language. At the same time, you might want to practice with some C# projects. These 50 essential C# questions and answers will help you understand the technical concepts of the language. You’ll walk into a meeting with the hiring manager with confidence. As a developer myself, I use these concepts daily.', 'uploads_demo/blog/1.jpg', 1, 1, NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'a869eb40-1962-48bd-aa8b-6fe69e2a750e', 1, 'PostgreSQL vs. MySQL: Which SQL Platform Should You Use?', 'postgresql-vs-mysql-which-sql-platform-should-you-use', 'MySQL and PostgreSQL are both leading database technologies built on a foundation of SQL: Structured Query Language. SQL forms the basis of how to create, access, update, and otherwise interact with data stored in a relational database. While MySQL has been the most popular platform for many years, PostgreSQL is another major contender. Many database administrators and developers will know both technologies, which are much more similar than they are different. You can learn more about the history of SQL and how the various “flavors” came to be by watching this brief video: Depending on what you’re trying to create, the data you’re trying to manage, and your own background as a programmer or analyst, you may find one language preferable over the other. But in terms of popularity and marketability, both are widely used, with MySQL maintaining the advantage here. Compared to PostgreSQL, MySQL has the largest market share and, therefore, the most job opportunities. Here’s what you need to know about MySQL vs. PostgreSQL — the differences, benefits, and disadvantages — as well as some basic information about SQL and database platforms.', 'uploads_demo/blog/2.jpg', 1, 2, NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, '78eb086d-192e-4f77-9b3e-25cf9e4d50be', 1, 'Java vs. Python: Which Is the Best Programming Language for You?', 'java-vs-python-which-is-the-best-programming-language-for-you', 'Java and Python are both excellent choices for a beginning programmer. You really can’t go wrong by choosing either one. Here are some things these languages have in common. Both are popular and in high demand.Both are open source and don’t require a paid license to use for developers.  In the case of Java, if you use the official Oracle Java version, there may be a fee for commercial use payable by your customer/employer when deploying your Java application.  However, there are free runtime versions available from multiple vendors as well. You can get started coding in either language today as long as you have an internet connection to download the installation files and a computer that runs Windows, OS X, or Linux.The two languages do have their differences, and developers sometimes prefer one or the other for various reasons. Below is a discussion of those reasons, with hopefully enough information to help you decide which language is the one for you.', 'uploads_demo/blog/3.jpg', 1, 1, NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'ba833949-5b33-4fab-b72b-dcd78e2dd340', 1, 'Learn Coding in Scratch with a Cool Game Idea', 'learn-coding-in-scratch-with-a-cool-game-idea', '<p>A few years ago, the creation of programs and applications was aimed at only a few people with specialized knowledge. Lately, though, programming for beginners has been possible, thanks to software that has been developed, such as Scratch. In this article, you will see how to create your own game in an easy and fun way.\r\nWhy start Scratch Coding?\r\nThe rate at which jobs in the IT sector are growing is almost twice as high as in other industries, and this is only an indication of work in future new technologies. Researchers estimate that “the digital economy is worth $11.5 trillion globally, equivalent to 15.5 percent of global GDP and has grown two and a half times faster than global GDP over the past 15 years.”\r\nIn a few years, programming knowledge will be fully integrated into educational programs for every age. Using coding concepts, it’s possible to design projects that utilize very similar guidelines and rubrics for a digital project, thereby giving students the opportunity to learn about their topic and sharpen their coding skills at the same time. Future human resources, generations Y and Z, will have at their core the digital skills needed to program.<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALsAAAA1CAYAAAAZKprCAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAiRSURBVHgB7Z3LbhtHFoZPVTe75dmYAmbWbkK8KNmYnlUwG1E772y/wFh6gTH9AmMqLzDSE4h6AlGzGGQV0sAsBhggolcjkhqwtU4CU0CAyBS7Kv/pi0TJdsJIoSOp6oObfa3qauuvU6erTncLstwaisXiKyFkgwThnyCtNS/gJ/7VJISgeCX7ATqb6fOMkpWjwaBfIINwyXJrEMLbI0cdOViOMDmpopPljyV6b4GU0k9QUR6SxXLXKZfLjVK5PCTDkGQxEU0GYsVuICrz8Q3D+uwz8PbxF0FEskZzwJGn3cV//bdLnxC2cFpMOfGGYMU+AxOiAP9R2zQHlMptYPZJxR5joCNj3RgDUYq7Kck4rNhNJPZjyDis2E1EsV3Xxsndit1ApDSz79GK3VDQGWOc127FbjEGK3YDUfGveY6MFbuBxJ0xBo6gWrEbiEJHuzBwBNWK3UxsIJjFGAwcP7ViNxZ2ZUzDBoIZiBCihdk+GYYVu4EMBgOOsvz0kZa/M9aNsRiDFbvFGKzYLcZgxW4xBit2izFYsVuMwYrdYgy2n30G3IWFLp1MVmkOSJqEZLFYLL8lRgYE/Vp+aP+pmnPUC5oHEe35q9+3vn38Rc0l+ZzmgtpY/Oo/IRnOJ3NjgiDICyHuD4fDI7plOKTzmuQazQEtNf9/tATJAPM1mgvuDn5CMhyXReh5Xr3f7zdojnjewqbW0VssvqRrUCqV1kiIFTRJR+PxuBkCslhmAPdeC/koUq+w3Li8s1AoPMjlcnlUhDcf28aV5TzFApZPRtPrYXgQ8tJ4fFKfzoMtfLlcfgjBHkGvZ2mybVjMXxZyKvS/O1J+GSlVQ9kDbA5RBp6PUK7g9PQ0zPJLK/KDy+dIypyUNduOvKvTaS13j6Tr8QNvVSiVKv/I5bw97GsVy2WuDFQsLtfcnNfSQmyVypUhi8Z13SqOG/q+33U8tYL1h1hve/49TGIfaRucFqJ74WLiZcd1m6VKpU1C7nHarMIUS6U2CtPJeUjv+e1UxOeFlTJPWhy9e/euPej31w4ODjpJ3n4H076Qcjfn+d9k+XE+Qsgtz/eHcUUBS0vl5zh26PnU8dLyYN83KMu25y/sF4uVOlnuJLHYtVYXHtOKxSJ0XanohYqojqoQC+Dw8KAzOR0/1VHUwGqeLSmlj3j1er3g//0++4b8dGO+3/vfI9LRuiQR33Sp5GTpF1AkPz2w0+8dBPDjQyeXe8qWVQoZ9Pu9xdPxH1ZRoe5fLuy7e/eaQugRKlxYKpe3g2A5SHdpKcV6v9crCNJvcr4fn/N0PF7FNdS1oibOusLbHEc0cL2rfG60ThvFYnGFX3yolagrrZrCoadkuZPEYr/8whx2bVixsKTrUupnkDMH+/M3fequm2th+xq/31s7Tp4SAb+9kCusL8+UUm8/9BC7hvQdxwnjY7SK3QatcROodZxPGHbjbagIFxKH3e4IAn3mSFHAOQI3FyU9JCjsyclJmORDI6H14vLycsCtBnbyMdXssUucg12dM1cFLVFBClqUUq3jQgKk7ZDlTpL2xmj2lWNrGEXRMdyDFiznSCvVhTjCTHSYV7HewbSH5b9OfcnnQmWR5+Oy4uyVgkqRynZg02RynpCn08mkC3EWluBuuHBXUAkWLxd2aWmJre59iPWYXRopxHGcHUAr8wL7XwspatjwEteRT8u8qUg3UKuyT2l1IPC/oeL+k1dwXBc7ULmpE1c2IW5db5FlNiQs4ggWuIk/dA3TKkSUNPdSPsJyDRO7MNV4m+M00AbE23HslyKKRhBOCM20sgx5HQJqZ8s6bRVw/BsIPn4UDHm0hIgy69rCviHfGCpBbF2fs5WXHxGdEM4zCLjOFQ43nptTu0KcDy6L2oT1b/HTOLiuHbhPG7DWezj+dXoN60i/iKkBV6nAx4mkh2iNWzKkqZLlTnKjBpVgbWuU+BvcJ78JIc706UK0SiGs/cq8+vB/bP+xJhzRpjmASrhxb+W7xneP/7LmzOmDB7Bpq4tf/btDhnPTYmOeYKrCwh5DBM9mTQRrvIvjj8li+RlulNgPDw+vNOB01XQWs7AhvhZjsGK3GIPRYr8Y6mC561zbZ69UltEPT2dD978Ef0ocN5P3uZ5hNHMrUmqIoX+B7U3sHvKo5s+mr1RCFYk1Hs2la1CsfIaRYcU3xHN5KMNy83hP7BykxT0bswZE8UDq9NuPOZAL6UX61qn3QE9LczKZPHDdtB/9bIhVYlz1/fcPTlvfuEzInNyr95jyyGqk9TaEPhoLsT51Hg5d0LcxBNkyGxfcmFKp1HY9byfneftYnulhhSzUoPT559Vy5bN9qPmllM5uqVT5YHq0ACEGdppYDLIMPliYpDxVN5f7emFh4anv+7tnOyZ0ZXjQCOPBgYp0NzxIIjJRQb/O+X4To7AdDokgy50k1hdHBOIPvgvd5ge9Xg2C3cA0Yz93MgwvJhNY9IhtcxNrWzCSH3UP9NRgFg/1J3Olp18syxb91HFGh4PBn3ldXTjb1eHRVSnFqpDE1/ycB7KU1o/4ulER6hihtYFgd5TUmIptpcRrqDBgN8b5FRlkwoWIdqDWulS6rXQcoPVqlvTnQWhaSHleCWDRd92JfnjhUMqika9h2ilpXXC6TbgzNbguI86SrxuzESqskS/qN4GzQLDJZNx0XS/PUY2wcIsQoYblG55F5bJNZacWSMyVTn11+NxYbpbLFT5uHxs2OHoQitnBtnzs0wNK7TelwWGRgt/M3zpJY2DSiMez6EkpZCES+rwFUCrNQR8hzTZaowsXIqYCN1F+PmVy3iSNjouQXEJWuTQugiPcOB6IH/x4rROMe7utKcRiZ8FxbPpgED+a16DfgcujoHBrOmh2VuDOcEDXE1jiDm/HjW+NLJYrkD68oTs3LdqPIywx45YGLpbqouXZIovlGvwE4Pizs81FRgcAAAAASUVORK5CYII=\" data-filename=\"logo.png\" style=\"width: 187px;\"></p>', 'uploads_demo/blog/2.jpg', 1, 7, NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2025-07-09 22:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `uuid`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, '28828707-9415-4068-adef-12641516486a', 'Development', 'development', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'ebe375f1-0a4a-4b3a-bf56-028824c9507f', 'IT & Software', 'it-software', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, '61efe125-6f32-4c7a-b6fe-061a3df3dbd2', 'Data Science', 'data-science', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, '890e77d8-0b8a-4073-9e91-c24d675e1d39', 'Soft Skills', 'soft-skills', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '911dcac5-1200-4fc4-94f2-2caea6251453', 'Business', 'business', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'ad757f0e-a7db-4a60-8efb-0858880690c8', 'Marketing', 'marketing', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'e0637550-8560-4e2d-b4c4-fddc8b7bf1a6', 'Design', 'design', 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_histories`
--

CREATE TABLE `booking_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_user_id` bigint(20) UNSIGNED NOT NULL,
  `student_user_id` bigint(20) UNSIGNED NOT NULL,
  `consultation_slot_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(191) NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) NOT NULL,
  `duration` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=Pending,1=Approve,2=Cancel,3=Completed',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=In-person,2=Online',
  `start_url` mediumtext DEFAULT NULL,
  `join_url` mediumtext DEFAULT NULL,
  `meeting_id` varchar(191) DEFAULT NULL,
  `meeting_password` varchar(191) DEFAULT NULL,
  `meeting_host_name` varchar(191) DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(191) DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(191) DEFAULT NULL COMMENT 'use only for bbb',
  `cancel_reason` mediumtext DEFAULT NULL,
  `send_back_money_status` tinyint(4) DEFAULT 0 COMMENT '1=Yes, 0=No',
  `back_admin_commission` varchar(191) DEFAULT NULL COMMENT 'Admin Commission',
  `back_owner_balance` varchar(191) DEFAULT NULL COMMENT 'Instructor Commission',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `overview` longtext DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active,0=disable',
  `is_subscription_enable` tinyint(4) NOT NULL DEFAULT 1,
  `access_period` int(11) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_courses`
--

CREATE TABLE `bundle_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_management`
--

CREATE TABLE `cart_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_info` text DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shipping_charge` decimal(12,2) NOT NULL DEFAULT 0.00,
  `consultation_slot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_details` text DEFAULT NULL,
  `consultation_date` varchar(191) DEFAULT NULL,
  `consultation_available_type` varchar(191) DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bundle_course_ids` text DEFAULT NULL,
  `promotion_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_subscription_enable` bigint(20) UNSIGNED NOT NULL,
  `main_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart_management`
--

INSERT INTO `cart_management` (`id`, `user_id`, `receiver_info`, `course_id`, `product_id`, `quantity`, `shipping_charge`, `consultation_slot_id`, `consultation_details`, `consultation_date`, `consultation_available_type`, `bundle_id`, `bundle_course_ids`, `promotion_id`, `coupon_id`, `is_subscription_enable`, `main_price`, `price`, `discount`, `created_at`, `updated_at`, `reference`) VALUES
(366, 70, '[]', 39, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 55.00, 47.00, 8.25, '2025-07-09 17:50:51', '2025-07-09 17:53:06', NULL),
(367, 73, '[]', 39, NULL, 0, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 55.00, 55.00, 0.00, '2025-07-17 07:59:24', '2025-07-25 14:33:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_feature` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `uuid`, `name`, `image`, `is_feature`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '31c77dbb-0271-406e-afdd-da92e4a37f92', 'Development', 'uploads_demo/category/1.png', 'yes', 'development', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'ac42d76f-65cc-463a-8428-733c305215e4', 'IT & Software', 'uploads_demo/category/2.png', 'yes', 'it-software', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'd8cde16c-e98b-4991-adf9-f2b150789c90', 'Office Productivity', 'uploads_demo/category/3.png', 'yes', 'office-productivity', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, '07e99f6a-c5b7-4fe1-9503-f180bb8484f9', 'Personal Development', 'uploads_demo/category/4.png', 'yes', 'personal-development', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '44b94434-0327-4e77-b3b7-ad2523809bce', 'Business', NULL, 'yes', 'Business', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2025-07-07 00:51:39'),
(6, '57e18cf4-0050-4baf-8e10-3d9a65eaf8ed', 'Marketing', NULL, 'no', 'marketing', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, '90cd37ac-b804-4095-a471-3651ec40718a', 'Design', NULL, 'no', 'design', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, '4441d186-fab2-4e8e-a4ed-ab7fc24f6e71', 'Health & Fitness', NULL, 'no', 'health-fitness', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'a1d1c370-5ce4-4bbc-9b27-5e8645282259', 'Finance & Accounting', NULL, 'no', 'finance-accounting', NULL, NULL, NULL, NULL, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `certificate_number` varchar(50) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `show_number` varchar(10) DEFAULT 'yes' COMMENT 'yes, no',
  `number_x_position` int(11) DEFAULT 0,
  `number_y_position` int(11) DEFAULT 0,
  `number_font_size` int(11) DEFAULT 18,
  `number_font_color` varchar(25) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `title_x_position` int(11) DEFAULT 0,
  `title_y_position` int(11) DEFAULT 0,
  `title_font_size` int(11) DEFAULT 20,
  `title_font_color` varchar(25) DEFAULT NULL,
  `show_date` varchar(10) NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `date_x_position` int(11) DEFAULT 0,
  `date_y_position` int(11) DEFAULT 16,
  `date_font_size` int(11) DEFAULT 30,
  `date_font_color` varchar(25) DEFAULT NULL,
  `show_student_name` varchar(10) NOT NULL DEFAULT 'yes' COMMENT 'yes, no',
  `student_name_x_position` int(11) DEFAULT 0,
  `student_name_y_position` int(11) DEFAULT 16,
  `student_name_font_size` int(11) DEFAULT 32,
  `student_name_font_color` varchar(25) DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `body_max_length` int(11) DEFAULT 80,
  `body_x_position` int(11) DEFAULT 0,
  `body_y_position` int(11) DEFAULT 16,
  `body_font_size` int(11) DEFAULT 20,
  `body_font_color` varchar(25) DEFAULT NULL,
  `role_1_show` varchar(10) DEFAULT NULL COMMENT 'yes, no',
  `role_1_title` varchar(191) DEFAULT NULL,
  `role_1_signature` varchar(191) DEFAULT NULL,
  `role_1_x_position` int(11) DEFAULT 16,
  `role_1_y_position` int(11) DEFAULT 16,
  `role_1_font_size` int(11) DEFAULT 18,
  `role_1_font_color` varchar(25) DEFAULT NULL,
  `role_2_show` varchar(10) DEFAULT NULL COMMENT 'yes, no',
  `role_2_title` varchar(191) DEFAULT NULL,
  `role_2_x_position` int(11) DEFAULT 0,
  `role_2_y_position` int(11) DEFAULT 0,
  `role_2_font_size` int(11) DEFAULT 18,
  `role_2_font_color` varchar(25) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `uuid`, `certificate_number`, `image`, `show_number`, `number_x_position`, `number_y_position`, `number_font_size`, `number_font_color`, `title`, `title_x_position`, `title_y_position`, `title_font_size`, `title_font_color`, `show_date`, `date_x_position`, `date_y_position`, `date_font_size`, `date_font_color`, `show_student_name`, `student_name_x_position`, `student_name_y_position`, `student_name_font_size`, `student_name_font_color`, `body`, `body_max_length`, `body_x_position`, `body_y_position`, `body_font_size`, `body_font_color`, `role_1_show`, `role_1_title`, `role_1_signature`, `role_1_x_position`, `role_1_y_position`, `role_1_font_size`, `role_1_font_color`, `role_2_show`, `role_2_title`, `role_2_x_position`, `role_2_y_position`, `role_2_font_size`, `role_2_font_color`, `path`, `status`, `created_at`, `updated_at`) VALUES
(8, '0212f124-5831-4d4d-98b2-808175898dd1', '6507210', NULL, 'yes', NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, '#000000', 'yes', NULL, NULL, NULL, '#363234', 'yes', NULL, NULL, NULL, '#363234', NULL, 80, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, '#000000', NULL, 1, '2025-07-08 00:55:35', '2025-07-08 00:55:35'),
(9, '87b94734-c41c-4449-b5da-3a5467dfd315', '5614514', NULL, 'yes', NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, '#000000', 'yes', NULL, NULL, NULL, '#363234', 'yes', NULL, NULL, NULL, '#363234', NULL, 80, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, NULL, '#363234', NULL, NULL, NULL, NULL, NULL, '#000000', NULL, 1, '2025-07-08 00:55:37', '2025-07-08 00:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `certificate_by_instructors`
--

CREATE TABLE `certificate_by_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `certificate_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_x_position` int(11) NOT NULL DEFAULT 0,
  `title_y_position` int(11) NOT NULL DEFAULT 0,
  `title_font_size` int(11) NOT NULL DEFAULT 20,
  `title_font_color` varchar(25) DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `body_max_length` int(11) NOT NULL DEFAULT 80,
  `body_x_position` int(11) NOT NULL DEFAULT 0,
  `body_y_position` int(11) NOT NULL DEFAULT 16,
  `body_font_size` int(11) NOT NULL DEFAULT 20,
  `body_font_color` varchar(25) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `role_2_x_position` int(11) NOT NULL DEFAULT 0,
  `role_2_y_position` int(11) NOT NULL DEFAULT 10,
  `path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `incoming_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `outgoing_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `view` tinyint(4) DEFAULT 2 COMMENT '1=seen,2=not seen',
  `created_user_type` tinyint(4) DEFAULT NULL COMMENT '1=student,2=instructor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhanmondi', NULL, NULL),
(2, 1, 'Bannai', NULL, NULL),
(3, 2, 'Nirala', NULL, NULL),
(4, 2, 'Zero Point', NULL, NULL),
(5, 3, 'Tomchombridge', NULL, NULL),
(6, 3, 'Cantonment', NULL, NULL),
(7, 4, 'Acton', NULL, NULL),
(8, 4, 'Alamo', NULL, NULL),
(9, 5, 'Albin', NULL, NULL),
(10, 6, 'Bartow', NULL, NULL),
(11, 7, 'Oban', NULL, NULL),
(12, 8, 'Holywood', NULL, NULL),
(13, 9, 'Ely', NULL, NULL),
(14, 2, 'Banglore', '2025-07-09 22:41:41', '2025-07-09 22:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `client_logos`
--

CREATE TABLE `client_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_logos`
--

INSERT INTO `client_logos` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Ovita', 'uploads_demo/client-logo/1.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'Vigon', 'uploads_demo/client-logo/2.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'Betribe', 'uploads_demo/client-logo/3.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'Parsit', 'uploads_demo/client-logo/4.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'Karika', 'uploads_demo/client-logo/5.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_slots`
--

CREATE TABLE `consultation_slots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `time` varchar(191) NOT NULL,
  `duration` varchar(191) NOT NULL,
  `hour_duration` varchar(191) NOT NULL,
  `minute_duration` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultation_slots`
--

INSERT INTO `consultation_slots` (`id`, `user_id`, `day`, `time`, `duration`, `hour_duration`, `minute_duration`, `created_at`, `updated_at`) VALUES
(31, 71, 1, '01:01 PM - 04:01 PM', '3 Hours 0 Minute', '3', '0', '2025-07-08 01:36:47', '2025-07-08 01:36:47'),
(32, 71, 2, '01:01 PM - 04:40 PM', '3 Hours 39 Minutes', '3', '39', '2025-07-08 01:40:56', '2025-07-08 01:40:56'),
(33, 71, 3, '01:41 PM - 04:41 PM', '3 Hours 0 Minute', '3', '0', '2025-07-08 01:41:14', '2025-07-08 01:41:14'),
(34, 71, 5, '01:43 PM - 03:43 PM', '2 Hours 0 Minute', '2', '0', '2025-07-08 01:43:20', '2025-07-08 01:43:20'),
(35, 71, 5, '05:43 PM - 06:43 PM', '1 Hour 0 Minute', '1', '0', '2025-07-08 01:43:20', '2025-07-08 01:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_us_issue_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `contact_us_issue_id`, `message`, `created_at`, `updated_at`) VALUES
(3, 'test', 'mailme@mail.com', 3, 'fuewbijnk', '2025-06-30 03:45:28', '2025-06-30 03:45:28'),
(4, 'jj', 'check@mail.com', NULL, 'testing', '2025-07-19 07:14:04', '2025-07-19 07:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_issues`
--

CREATE TABLE `contact_us_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=active, 0=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us_issues`
--

INSERT INTO `contact_us_issues` (`id`, `uuid`, `name`, `status`, `created_at`, `updated_at`) VALUES
(3, '679c2e92-5768-4f93-a4d9-7eaa1c59cd8b', 'j', 1, '2025-06-30 03:35:19', '2025-06-30 03:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `phonecode` varchar(255) NOT NULL,
  `continent` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `short_name`, `country_name`, `flag`, `slug`, `phonecode`, `continent`, `created_at`, `updated_at`) VALUES
(1, 'IN', 'India', 'IN', '', '+91', 'Asia', NULL, '2025-07-04 09:57:36'),
(2, 'USA', 'United States', '', 'united-states', '+1', 'North America', NULL, NULL),
(3, 'UK', 'United Kingdom', '', 'united-kingdom', '+44', 'Europe', NULL, NULL),
(4, 'KSA', 'Saudi Arabia', 'KSA', '', '+966', 'Asia', '2025-07-04 09:57:02', '2025-07-04 09:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `coupon_code_name` varchar(255) NOT NULL,
  `coupon_type` tinyint(4) NOT NULL COMMENT '1=Global,2=Instructor, 3=Course',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=activate, 0=deactivated',
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'creator_id=user_id',
  `percentage` decimal(8,2) DEFAULT 0.00,
  `minimum_amount` int(11) DEFAULT NULL,
  `maximum_use_limit` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `uuid`, `coupon_code_name`, `coupon_type`, `status`, `creator_id`, `percentage`, `minimum_amount`, `maximum_use_limit`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(3, '0844fdc6-a3b7-4ccf-bb0e-1b9ed5b6d0b6', 'get20', 3, 1, 1, 15.00, 20, NULL, '2025-07-09', '2025-07-16', '2025-07-09 17:52:43', '2025-07-09 17:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_courses`
--

CREATE TABLE `coupon_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupon_courses`
--

INSERT INTO `coupon_courses` (`id`, `coupon_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 3, 39, '2025-07-09 17:52:43', '2025-07-09 17:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_instructors`
--

CREATE TABLE `coupon_instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=general, 2=scorm',
  `instructor_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) DEFAULT NULL,
  `course_language_id` bigint(20) DEFAULT NULL,
  `difficulty_level_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` text DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `feature_details` mediumtext DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(8,2) DEFAULT 0.00,
  `learner_accessibility` varchar(50) DEFAULT NULL COMMENT 'paid,free',
  `image` varchar(255) DEFAULT NULL,
  `intro_video_check` tinyint(4) DEFAULT NULL COMMENT '1=normal video, 2=youtube_video',
  `video` varchar(255) DEFAULT NULL,
  `youtube_video_id` varchar(255) DEFAULT NULL,
  `is_subscription_enable` tinyint(4) NOT NULL DEFAULT 1,
  `private_mode` tinyint(4) NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=published, 2=waiting_for_review, 3=hold, 4=draft',
  `average_rating` decimal(8,2) DEFAULT 0.00,
  `drip_content` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Show All, 2=sequence, 3=unlock after x day, 4=unlock by date, 5=unlock after finish pre-requisite',
  `access_period` int(11) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `uuid`, `user_id`, `course_type`, `instructor_id`, `category_id`, `subcategory_id`, `course_language_id`, `difficulty_level_id`, `title`, `subtitle`, `description`, `feature_details`, `price`, `old_price`, `learner_accessibility`, `image`, `intro_video_check`, `video`, `youtube_video_id`, `is_subscription_enable`, `private_mode`, `slug`, `is_featured`, `status`, `average_rating`, `drip_content`, `access_period`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `created_at`, `updated_at`, `organization_id`) VALUES
(38, 'fa43c94c-4bf9-45b4-a23f-40088ee82f0b', 71, 1, 8, 5, 16, 1, 2, 'Dev project', 'Developer insights', 'Insights fill', NULL, 0.00, NULL, 'free', 'uploads/course/1751868061-hfPQqd6p5G.png', NULL, NULL, NULL, 0, 0, 'dev-project', 1, 3, 0.00, 1, NULL, NULL, NULL, NULL, NULL, '2025-07-07 00:25:16', '2025-07-09 17:50:12', NULL),
(39, '822ffe8d-5fd2-474e-b47a-96f46a0d51c1', 71, 1, 8, 1, 1, 1, 2, 'TEStin', 'testing', 'lwich tesinf', NULL, 55.00, 60.00, 'paid', 'uploads/course/1751960661-7gs8JVO9vl.png', 1, 'uploads/course/1751960662XsLdwapt70.mp4', NULL, 0, 0, 'testin', 0, 1, 0.00, 2, 90, NULL, NULL, NULL, NULL, '2025-07-08 01:59:12', '2025-07-09 17:49:31', NULL),
(40, '8311d540-0720-4a0b-a711-dea2c71536fc', 71, 1, 8, 1, 1, 1, 2, 'TESTING 22', 'testin Subtitle', 'ts=eting testing testing  testing  testing  testing  testing  testing  testing  testing', NULL, 0.00, NULL, 'free', 'uploads/course/1752072499-iHiMBFEaB5.png', 2, NULL, 'https://youtu.be/MCgnGm1cE8Q?si=qfeVo9twD2n5Ebeh', 0, 0, 'testing-22', 0, 4, 0.00, 1, NULL, NULL, NULL, NULL, NULL, '2025-07-09 14:45:40', '2025-07-09 14:51:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_form_settings`
--

CREATE TABLE `course_form_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_form_settings`
--

INSERT INTO `course_form_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'contact_heading', 'We’d love to hear from you!', '2025-07-20 07:19:05', '2025-07-20 07:19:05'),
(2, 'contact_email', 'customer.support@learningspace.com', '2025-07-20 07:19:05', '2025-07-20 07:19:05'),
(3, 'contact_location', 'Riyadh King Abdul Aziz Branch Rd, Alyasmin, Riyadh 13322, KSA', '2025-07-20 07:19:05', '2025-07-20 07:19:05'),
(4, 'contact_phone', '198421', '2025-07-20 07:19:05', '2025-07-20 07:19:05'),
(5, 'course_title', 'dwibbb ggui', '2025-07-20 08:01:14', '2025-07-20 08:01:14'),
(6, 'course_description', 'dywvq7yuq vyv', '2025-07-20 08:01:14', '2025-07-20 08:01:14'),
(7, 'course_duration', 'cwcqw', '2025-07-20 08:01:14', '2025-07-20 08:01:14'),
(8, 'course_instructor', 'dwwdwc', '2025-07-20 08:01:14', '2025-07-20 08:01:14'),
(9, 'contact_subheading', 'We’d love to hear from you! Sub Heading', '2025-07-20 08:48:02', '2025-07-20 08:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `course_instructor`
--

CREATE TABLE `course_instructor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `share` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_instructor`
--

INSERT INTO `course_instructor` (`id`, `course_id`, `instructor_id`, `share`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(29, 38, 71, 100, 1, NULL, '2025-07-07 00:33:32', '2025-07-07 00:33:32'),
(30, 39, 71, 100, 1, NULL, '2025-07-08 02:18:17', '2025-07-08 02:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `course_languages`
--

CREATE TABLE `course_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_languages`
--

INSERT INTO `course_languages` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fec398b5-c9e5-45ee-94b4-1495ddbd75db', 'English', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, '17e8849b-9587-4a90-ab45-0fba2e81c148', 'Bangla', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, '2eaa0efb-99e0-419b-a51c-0ed08210f2b7', 'Hindi', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, '2fffcb3e-bea5-43a6-840d-f3b2a435ce24', 'Spanish', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'c22c508d-1ce1-4f26-98e5-ef4fc4fdb660', 'Arabic', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_lectures`
--

CREATE TABLE `course_lectures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `lesson_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lecture_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=free, 2=paid',
  `file_path` varchar(255) DEFAULT NULL,
  `url_path` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_duration` varchar(255) DEFAULT NULL,
  `file_duration_second` double DEFAULT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'uploaded_video' COMMENT 'video, youtube, vimeo, resource',
  `vimeo_upload_type` tinyint(4) DEFAULT 1 COMMENT '1=video file upload, 2=vimeo uploaded video id',
  `text` longtext DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `pdf` varchar(191) DEFAULT NULL,
  `slide_document` varchar(191) DEFAULT NULL,
  `audio` varchar(191) DEFAULT NULL,
  `after_day` int(11) DEFAULT NULL,
  `unlock_date` date DEFAULT NULL,
  `pre_ids` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lectures`
--

INSERT INTO `course_lectures` (`id`, `uuid`, `course_id`, `lesson_id`, `title`, `lecture_type`, `file_path`, `url_path`, `file_size`, `file_duration`, `file_duration_second`, `type`, `vimeo_upload_type`, `text`, `image`, `pdf`, `slide_document`, `audio`, `after_day`, `unlock_date`, `pre_ids`, `created_at`, `updated_at`) VALUES
(268, 'f1fa044c-be50-4fb4-aff4-004308837e47', 38, 148, 'common', 2, NULL, 'https://youtu.be/L9qCRED--go?si=Ytgx9ftQN6E7UYkf', NULL, '30:00', 1800, 'youtube', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-07 00:32:58', '2025-07-07 00:32:58'),
(269, '4f3c5369-d20b-46a1-8a40-dad3fe8d9e31', 39, 149, 'first', 1, NULL, NULL, NULL, NULL, NULL, 'text', 1, '<p>testing</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-08 02:16:11', '2025-07-08 02:16:11'),
(270, '824c218b-0cb6-4058-a0f9-a30a141aa89d', 39, 150, 'ygh', 2, NULL, NULL, NULL, NULL, NULL, 'image', 1, NULL, 'uploads/lecture/1751960872-GdZft2edtp.png', NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-08 02:17:52', '2025-07-08 02:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `course_lecture_views`
--

CREATE TABLE `course_lecture_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `course_lecture_id` bigint(20) NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_lessons`
--

CREATE TABLE `course_lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_lessons`
--

INSERT INTO `course_lessons` (`id`, `uuid`, `course_id`, `name`, `short_description`, `created_at`, `updated_at`) VALUES
(148, '7086775e-c99b-4eae-98f9-91ca497d7089', 38, 'I\'m a professional Dev', NULL, '2025-07-07 00:31:19', '2025-07-07 00:31:19'),
(149, '739fc3c3-3859-4b89-9787-8eb6b56722a5', 39, 'Events Arena', NULL, '2025-07-08 02:15:05', '2025-07-08 02:15:05'),
(150, '06baafe4-7a42-45b2-97ec-dd7ebdb4e60c', 39, 'tesying', NULL, '2025-07-08 02:16:35', '2025-07-08 02:16:35'),
(151, '2ce16d65-4bc4-4012-a1fb-eed77916bfcb', 40, 'Introduction to the testing22', NULL, '2025-07-09 14:49:24', '2025-07-09 14:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `course_resources`
--

CREATE TABLE `course_resources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_settings`
--

CREATE TABLE `course_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_settings`
--

INSERT INTO `course_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'course_title', 'Introduction to Laravel', NULL, NULL),
(2, 'course_description', 'A beginner-friendly course on Laravel framework', NULL, NULL),
(3, 'course_duration', '6 weeks', NULL, NULL),
(4, 'course_instructor', 'John Doe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_tags`
--

CREATE TABLE `course_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_tags`
--

INSERT INTO `course_tags` (`id`, `course_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(90, 38, 8, NULL, NULL),
(91, 39, 3, NULL, NULL),
(92, 39, 4, NULL, NULL),
(93, 40, 3, NULL, NULL),
(94, 40, 4, NULL, NULL),
(95, 40, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_upload_rules`
--

CREATE TABLE `course_upload_rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `currency_placement` varchar(255) NOT NULL DEFAULT 'before' COMMENT 'before, after',
  `current_currency` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'on, off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_code`, `symbol`, `currency_placement`, `current_currency`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 'before', 'off', NULL, '2025-07-25 14:22:27'),
(2, 'BDT', '৳', 'before', 'off', NULL, '2025-07-25 14:22:27'),
(3, 'INR', '₹', 'before', 'off', NULL, '2025-07-25 14:22:27'),
(4, 'GBP', '£', 'after', 'off', NULL, '2025-07-25 14:22:27'),
(5, 'MXN', '$', 'before', 'off', NULL, '2025-07-25 14:22:27'),
(6, 'SAR', 'SR', 'before', 'on', NULL, '2025-07-25 14:22:27'),
(7, 'TRY', '₺', 'after', 'off', NULL, '2025-07-25 14:22:27'),
(8, 'ARS', '$', 'before', 'off', NULL, '2025-07-25 14:22:27'),
(9, 'EUR', '€', 'before', 'off', NULL, '2025-07-25 14:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `device_uuid` varchar(191) NOT NULL,
  `device_type` varchar(191) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device_hijacked_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `device_user`
--

CREATE TABLE `device_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `difficulty_levels`
--

CREATE TABLE `difficulty_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `difficulty_levels`
--

INSERT INTO `difficulty_levels` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, 'fc89a122-5918-4a2c-88c3-1c21f1967fbd', 'Higher', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'c4cf5296-ad64-462c-9be7-c072ce09a833', 'Medium', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 2=deactivate',
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment_as` tinyint(4) NOT NULL COMMENT '1=Instructor, 2=Student',
  `view` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=seen,2=not seen',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `course_id`, `user_id`, `comment`, `status`, `parent_id`, `comment_as`, `view`, `created_at`, `updated_at`) VALUES
(18, 38, 70, 'uyvv', 1, NULL, 2, 2, '2025-07-08 01:28:56', '2025-07-08 01:28:56');

-- --------------------------------------------------------

--
-- Table structure for table `email_notification_settings`
--

CREATE TABLE `email_notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `updates_from_classes` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `updates_from_teacher_discussion` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_project` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `activity_on_your_discussion_comment` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `reply_comment` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_follower` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_class_by_someone_you_follow` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `new_live_session` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=inactive, 1-active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `uuid`, `name`, `subject`, `body`, `status`, `created_at`, `updated_at`) VALUES
(2, '45f9471d-d41c-4ff9-82b6-b43f535459c3', 'Athar', 'Inviting you to the Instructor', 'Inviting you to the Instructor', 1, '2025-07-09 18:12:58', '2025-07-09 18:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `consultation_slot_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) DEFAULT NULL,
  `user_package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `completed_time` double DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `order_id`, `user_id`, `owner_user_id`, `course_id`, `consultation_slot_id`, `bundle_id`, `user_package_id`, `completed_time`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(18, 82, 70, 71, 38, NULL, NULL, NULL, NULL, '2025-07-08 06:57:50', '2037-12-31 23:59:59', 1, '2025-07-08 01:27:50', '2025-07-08 01:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `marks_per_question` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) NOT NULL COMMENT 'multiple_choice, true_false',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=unpublish, 1=published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `uuid`, `user_id`, `course_id`, `name`, `short_description`, `marks_per_question`, `duration`, `type`, `status`, `created_at`, `updated_at`) VALUES
(13, 'c121c15f-9fe7-4259-802b-825aad100960', 71, 38, 'enter', NULL, 1, 1, 'true_false', 1, '2025-07-08 01:27:08', '2025-07-08 01:30:42');

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
-- Table structure for table `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_questions`
--

INSERT INTO `faq_questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'which I enjoy with my whole heart am alone feel?', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'which I enjoy with my whole heart am alone feel?', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'which I enjoy with my whole heart am alone feel?', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a  greater artist than now. When, while the lovely valley with vapour around me, and the meridian.', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `title` varchar(191) NOT NULL,
  `subtitle` varchar(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text NOT NULL,
  `forum_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `total_seen` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_post_comments`
--

CREATE TABLE `forum_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `forum_post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` longtext NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generate_contents`
--

CREATE TABLE `generate_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `service` tinyint(4) NOT NULL,
  `keywords` text NOT NULL,
  `prompt` text NOT NULL,
  `creativity` tinyint(4) NOT NULL,
  `variation` tinyint(4) NOT NULL,
  `language` varchar(191) NOT NULL,
  `output` longtext NOT NULL,
  `token` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gmeet_settings`
--

CREATE TABLE `gmeet_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `calender_id` varchar(191) NOT NULL,
  `timezone` varchar(191) NOT NULL,
  `token` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_mini_words_title` text DEFAULT NULL,
  `banner_first_line_title` varchar(255) DEFAULT NULL,
  `banner_second_line_title` varchar(255) DEFAULT NULL,
  `banner_second_line_changeable_words` text DEFAULT NULL,
  `banner_third_line_title` varchar(255) DEFAULT NULL,
  `banner_fourth_line_title` varchar(255) DEFAULT NULL,
  `banner_video` varchar(255) DEFAULT NULL,
  `banner_subtitle` text DEFAULT NULL,
  `banner_first_button_name` varchar(255) DEFAULT NULL,
  `banner_first_button_link` text DEFAULT NULL,
  `banner_second_button_name` varchar(255) DEFAULT NULL,
  `banner_second_button_link` text DEFAULT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `special_feature_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `courses_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `product_area` tinyint(4) NOT NULL DEFAULT 0,
  `bundle_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `top_category_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `consultation_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `instructor_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `video_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `customer_says_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `achievement_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `faq_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `instructor_support_area` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 2=disable',
  `category_courses_area` tinyint(4) NOT NULL DEFAULT 0,
  `upcoming_courses_area` tinyint(4) NOT NULL DEFAULT 0,
  `subscription_show` tinyint(4) NOT NULL DEFAULT 1,
  `saas_show` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bridge_gap_title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bridge_gap_title`)),
  `bridge_gap_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bridge_gap_description`)),
  `bridge_gap_button_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`bridge_gap_button_name`)),
  `bridge_gap_button_link` varchar(191) DEFAULT NULL,
  `bridge_gap_image` varchar(191) DEFAULT NULL,
  `bridge_gap_show` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `banner_mini_words_title`, `banner_first_line_title`, `banner_second_line_title`, `banner_second_line_changeable_words`, `banner_third_line_title`, `banner_fourth_line_title`, `banner_video`, `banner_subtitle`, `banner_first_button_name`, `banner_first_button_link`, `banner_second_button_name`, `banner_second_button_link`, `banner_image`, `special_feature_area`, `courses_area`, `product_area`, `bundle_area`, `top_category_area`, `consultation_area`, `instructor_area`, `video_area`, `customer_says_area`, `achievement_area`, `faq_area`, `instructor_support_area`, `category_courses_area`, `upcoming_courses_area`, `subscription_show`, `saas_show`, `created_at`, `updated_at`, `bridge_gap_title`, `bridge_gap_description`, `bridge_gap_button_name`, `bridge_gap_button_link`, `bridge_gap_image`, `bridge_gap_show`) VALUES
(1, '[\"Come\",\"for\",\"learn\"]', 'Transform Skills', '.', NULL, 'Transform Future', NULL, NULL, 'Learning Space helps in ramp your company’s performance and maximize your productivity and profits.', 'Take A Tour', '#', 'Popular Courses', '#', 'uploads/home/1751631660-QkBtDgtJJM.png', 0, 1, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, '2022-12-04 17:05:33', '2025-08-28 14:59:25', '\"Bridge the Gap in the Digital Market\"', '\"Empower your workforce or yourself with future-ready skills designed to close the gap between market demands and current capabilities. Our expert-led programs equip professionals and businesses with the tools to innovate, adapt, and excel in today\\u2019s competitive landscape.\"', '\"Find Out More\"', 'http://localhost:7000/adm/settings', 'uploads/home/1752787795-yTVucoU35b.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_special_features`
--

CREATE TABLE `home_special_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `professional_title` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `consultancy_area` tinyint(4) NOT NULL DEFAULT 3,
  `about_me` mediumtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `social_link` mediumtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `is_private` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `auto_content_approval` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=approved, 0=pending',
  `is_subscription_enable` tinyint(4) DEFAULT 0,
  `is_offline` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'offline status',
  `offline_message` varchar(191) DEFAULT NULL COMMENT 'offline message',
  `consultation_available` tinyint(4) DEFAULT 0 COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT 0,
  `hourly_old_rate` decimal(10,2) DEFAULT NULL,
  `available_type` tinyint(4) DEFAULT 3 COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(255) DEFAULT NULL,
  `cv_filename` varchar(255) DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `uuid`, `user_id`, `organization_id`, `country_id`, `province_id`, `state_id`, `city_id`, `first_name`, `last_name`, `professional_title`, `phone_number`, `postal_code`, `address`, `consultancy_area`, `about_me`, `gender`, `social_link`, `slug`, `is_private`, `remove_from_web_search`, `auto_content_approval`, `status`, `is_subscription_enable`, `is_offline`, `offline_message`, `consultation_available`, `hourly_rate`, `hourly_old_rate`, `available_type`, `cv_file`, `cv_filename`, `level_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'b439f374-7b7d-465c-adb7-d54188da5d37', 71, NULL, NULL, NULL, NULL, NULL, 'Instructor11', '11', 'Developer', '9874566633', NULL, NULL, 3, 'Instructors Bio', NULL, NULL, 'Instructor11-11', 'no', 'no', 0, 1, 0, 0, NULL, 1, 2, 5.00, 2, 'uploads/user/1751867533V2OuuiUrdx.pdf', 'setup-boxes.pdf', NULL, '2025-07-07 00:22:13', '2025-07-08 01:42:51', NULL),
(9, 'a3aadebc-f4a9-4841-a3d2-6ae07dd52da1', 72, NULL, 4, NULL, NULL, NULL, 'Manic', 'M', 'Business Tycoon', '855522525', '855665', 'biueb', 3, 'well Established Business men', 'Male', '{\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"pinterest\":null}', 'Manic-M', 'no', 'no', 0, 1, 0, 0, NULL, 0, 0, NULL, 3, NULL, NULL, NULL, '2025-07-09 18:08:45', '2025-07-09 18:08:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_awards`
--

CREATE TABLE `instructor_awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `winning_year` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_certificates`
--

CREATE TABLE `instructor_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `passing_year` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_consultation_day_statuses`
--

CREATE TABLE `instructor_consultation_day_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `day` tinyint(4) NOT NULL COMMENT '0=sunday,1=monday,2=tuesday,3=wednesday,4=thursday,5=friday,6=saturday',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_features`
--

CREATE TABLE `instructor_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_features`
--

INSERT INTO `instructor_features` (`id`, `logo`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_feature/build-brand.png', 'Build your Bran', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/instructor_feature/instructor-support-2.png', 'Inspire learners', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/instructor_feature/top-instructor-heading-img.png', 'Get rewarded', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_procedures`
--

CREATE TABLE `instructor_procedures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_procedures`
--

INSERT INTO `instructor_procedures` (`id`, `image`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_procedure/become-instructor-1.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/instructor_procedure/become-instructor-2.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/instructor_procedure/become-instructor-3.jpg', 'Plan Your Curriculum', 'Serenity has taken possession of my entire soul, like these sweet mornings spring which I enjoy with my whole heart. I am alone, and feel the charm existence in this spot, which was created for the bliss of souls like mine so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_skill`
--

CREATE TABLE `instructor_skill` (
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_supports`
--

CREATE TABLE `instructor_supports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `button_name` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_supports`
--

INSERT INTO `instructor_supports` (`id`, `logo`, `title`, `subtitle`, `button_name`, `button_link`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/instructor_support/instructor-support-1.png', 'Courses', 'Single stroke at the present moment and yet I feel that was', 'Popular Courses', '/courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/instructor_support/instructor-support-2.png', 'Expert instructor', 'Single stroke at the present moment and yet I feel that was', 'Explore Instructor', '/all-instructor', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/instructor_support/instructor-support-3.png', '27/4 online support', 'Single stroke at the present moment and yet I feel that was', 'Support Center', '/support-ticket-faq', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) NOT NULL,
  `iso_code` varchar(255) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active,2=inactive',
  `default_language` varchar(255) DEFAULT NULL COMMENT 'on,off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `iso_code`, `flag`, `rtl`, `status`, `default_language`, `created_at`, `updated_at`) VALUES
(1, 'EN ( English )', 'en', 'uploads_demo/default/en.png', 0, 1, 'on', NULL, '2025-07-25 14:22:27'),
(2, 'AR ( Arabic )', 'ar', 'uploads_demo/default/sa.png', 1, 1, 'off', NULL, '2025-07-25 14:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `learn_key_points`
--

CREATE TABLE `learn_key_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `learn_key_points`
--

INSERT INTO `learn_key_points` (`id`, `course_id`, `name`, `created_at`, `updated_at`) VALUES
(144, 38, 'insights', '2025-07-07 00:25:16', '2025-07-07 00:25:16'),
(145, 39, 'hdy', '2025-07-08 01:59:12', '2025-07-08 01:59:12'),
(146, 40, 'tesing courses', '2025-07-09 14:45:40', '2025-07-09 14:45:40'),
(147, 40, 'cececeec', '2025-07-09 14:45:40', '2025-07-09 14:45:40');

-- --------------------------------------------------------

--
-- Table structure for table `live_classes`
--

CREATE TABLE `live_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_topic` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` varchar(255) NOT NULL COMMENT 'duration must be minutes',
  `start_url` mediumtext DEFAULT NULL,
  `join_url` mediumtext DEFAULT NULL,
  `meeting_id` varchar(255) DEFAULT NULL,
  `meeting_password` varchar(255) DEFAULT NULL,
  `meeting_host_name` varchar(255) DEFAULT NULL COMMENT 'zoom,bbb,jitsi',
  `moderator_pw` varchar(255) DEFAULT NULL COMMENT 'use only for bbb',
  `attendee_pw` varchar(255) DEFAULT NULL COMMENT 'use only for bbb',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_classes`
--

INSERT INTO `live_classes` (`id`, `uuid`, `user_id`, `course_id`, `class_topic`, `date`, `time`, `duration`, `start_url`, `join_url`, `meeting_id`, `meeting_password`, `meeting_host_name`, `moderator_pw`, `attendee_pw`, `created_at`, `updated_at`) VALUES
(16, '00249f15-d6af-46b9-a97c-c94f3148a2ef', 71, 38, 'helo', '2025-07-08', '12:44:00', '30', 'jbj', NULL, '692010644', NULL, 'zoom', NULL, NULL, '2025-07-08 01:44:32', '2025-07-08 01:44:32'),
(17, '046d2b96-34e8-4a1f-bffb-d61502d8e865', 71, 38, 'heloy', '2025-07-08', '13:46:00', '10', 'fygubhijnkmoin', NULL, '1744574873', NULL, 'zoom', NULL, NULL, '2025-07-08 01:47:16', '2025-07-08 01:47:16'),
(18, '4417c72d-b4b2-4354-a6c7-37b2ec948993', 71, 38, 'helo', '2025-07-08', '12:49:00', '10', 'yuvhjboiniubiub', NULL, '1295030156', NULL, 'zoom', NULL, NULL, '2025-07-08 01:48:25', '2025-07-08 01:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` varchar(191) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1=static, 2=dynamic',
  `status` tinyint(4) DEFAULT NULL COMMENT '1=active, 2=deactivated',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `url`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Blogs', 'blogs', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'About', 'about', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'Contact', 'contact', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'Support', 'support-ticket-faq', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'Privacy Policy', 'privacy-policy', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'Cookie Policy', 'cookie-policy', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'Terms & Conditions', 'terms-conditions', NULL, 1, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'About', 'about', NULL, 3, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'FQA', 'faq', NULL, 3, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(10, 'Blogs', 'blogs', NULL, 3, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(11, 'Contact', 'contact-us', NULL, 4, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(12, 'Support', 'support-ticket-faq', NULL, 4, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(13, 'Courses', 'courses', NULL, 4, 1, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, 'Refund Policy', 'refund-policy', NULL, 1, 1, '2022-12-04 23:05:33', '2022-12-04 23:05:33'),
(16, 'Test', NULL, '3', 2, 1, '2025-07-09 22:37:50', '2025-07-09 22:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `metas`
--

CREATE TABLE `metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `meta_title` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `meta_keyword` mediumtext DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metas`
--

INSERT INTO `metas` (`id`, `uuid`, `slug`, `page_name`, `meta_title`, `meta_description`, `meta_keyword`, `og_image`, `created_at`, `updated_at`) VALUES
(1, '4bcd0b6f-5692-4966-8a4e-8884d72edaa4', 'home', 'Home', 'Home', 'LEARNING SPACE Learning management system', 'LEARNING SPACE, Lms, Learning, Course', NULL, NULL, '2025-07-25 06:32:18'),
(2, '3c3ef58d-d459-441b-9b90-370f840b2da1', 'course', 'Course List', 'Courses', 'LEARNING SPACE Course List', 'LEARNING SPACE, Lms, Learning, Course', NULL, NULL, '2025-07-25 06:31:32'),
(5, '62892323-3220-408d-81ea-8875dc1065f4', 'blog', 'Blog List', 'Blog', 'LEARNING SPACE Blog', 'blog, course', NULL, NULL, '2025-07-25 06:30:30'),
(7, '4869c7e6-9635-4203-850a-09a41f4954cc', 'about_us', 'About Us', 'About Us', 'LEARNING SPACE About Us', 'about us', NULL, NULL, '2025-07-25 06:30:11'),
(8, 'b7b70870-0248-4781-a9a3-a76cffefb534', 'contact_us', 'Contact Us', 'Contact Us', 'LEARNING SPACE contact us', 'LEARNING SPACE, contact us', NULL, NULL, '2025-07-25 06:30:56'),
(9, '07d0a702-7a57-428f-8003-c172679ecbd2', 'support_faq', 'Support Page', 'Support', 'LEARNING SPACE support ticket', 'LEARNING SPACE, support, ticket', NULL, NULL, '2025-07-25 06:33:25'),
(10, 'f00f9d36-6b9c-47ee-8649-8f50a2f9fe7a', 'privacy_policy', 'Privacy Policy', 'Privacy Policy', 'LEARNING SPACE Privacy Policy', 'LEARNING SPACE, privacy, policy', NULL, NULL, '2025-07-25 06:33:05'),
(11, 'f74400a5-415f-4604-849e-a03e4896ff99', 'cookie_policy', 'Cookie Policy', 'Cookie Policy', 'LEARNING SPACE Cookie Policy', 'LEARNING SPACE, cookie, policy', NULL, NULL, '2025-07-25 06:29:10'),
(12, '2e0f0a6e-c573-475c-8913-95e241504c1a', 'faq', 'FAQ', 'FAQ', 'LEARNING SPACE FAQ', 'LEARNING SPACE, faq', NULL, NULL, '2025-07-25 06:31:54'),
(13, '2e0f0a6e-c573-479c-8913-95e241504c1a', 'terms_and_condition', 'Terms & Conditions', 'Terms & Conditions', 'LEARNING SPACE Terms & Conditions Policy', 'Terms,Conditions', NULL, NULL, '2025-07-25 06:33:49'),
(14, '2e0f0a6e-c573-479c-8913-95e24150000a', 'refund_policy', 'Refund Policy', 'Refund Policy', 'LMS Refund Policy', 'Refund Policies', NULL, NULL, '2023-07-18 07:44:59'),
(51, 'd538d469-265f-44fc-95b9-dc57d10f8c81', 'default', 'Default', 'Demo Title', 'Demo Description', 'Demo Keywords', '', NULL, NULL),
(52, 'a241f1cb-3711-4609-90b2-976cb1ab53f7', 'auth', 'Auth Page', 'Auth Page', 'Auth Page Meta Description', 'Auth Page Meta Keywords', '', NULL, NULL),
(53, '26092a11-6aea-44ce-8880-41b47c692324', 'bundle', 'Bundle List', 'Bundle List', 'Bundle List Page Meta Description', 'Bundle List Page Meta Keywords', '', NULL, NULL),
(54, '42c68cfa-028f-4ffd-b4a0-b8da50978854', 'consultation', 'Consultation List', 'Consultation List', 'Consultation List Page Meta Description', 'Consultation List Page Meta Keywords', '', NULL, NULL),
(55, '857e3c5c-8430-4c5d-b009-e8f7e33dceb0', 'instructor', 'Instructor List', 'Instructor List', 'Instructor List Page Meta Description', 'Instructor List Page Meta Keywords', '', NULL, NULL),
(56, '2f9557c3-c10e-4b47-bf1c-040b6f0182e3', 'saas', 'Saas List', 'Saas List', 'Saas List Page Meta Description', 'Saas List Page Meta Keywords', '', NULL, NULL),
(57, 'b945d05c-d72b-4d1e-838d-f552c769d28f', 'subscription', 'Subscription List', 'Subscription List', 'Subscription List Page Meta Description', 'Subscription List Page Meta Keywords', '', NULL, NULL),
(58, 'a26d5ab1-1fd5-4eeb-9b32-04469f751cbf', 'verify_certificate', 'Verify certificate List', 'Verify certificate List', 'Verify certificate List Page Meta Description', 'Verify certificate List Page Meta Keywords', '', NULL, NULL),
(59, 'e5089c78-bca2-4d57-9cd4-2f3792d09810', 'forum', 'Forum', 'Forum', 'Forum Page Meta Description', 'Forum Page Meta Keywords', '', NULL, NULL);

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
(5, '2020_10_13_140209_create_devices_table', 1),
(6, '2020_10_13_150113_create_device_user_table', 1),
(7, '2022_03_08_120002_create_categories_table', 1),
(8, '2022_03_08_124911_create_blogs_table', 1),
(9, '2022_03_10_113530_create_subcategories_table', 1),
(10, '2022_03_10_114913_create_tags_table', 1),
(11, '2022_03_10_120141_create_difficulty_levels_table', 1),
(12, '2022_03_10_120351_create_course_languages_table', 1),
(13, '2022_03_12_120608_create_currencies_table', 1),
(14, '2022_03_13_084533_create_instructors_table', 1),
(15, '2022_03_13_084819_create_settings_table', 1),
(16, '2022_03_13_100229_create_instructor_certificates_table', 1),
(17, '2022_03_14_052503_create_instructor_awards_table', 1),
(18, '2022_03_14_123059_create_metas_table', 1),
(19, '2022_03_15_092420_create_languages_table', 1),
(20, '2022_03_21_105943_create_countries_table', 1),
(21, '2022_03_21_110018_create_states_table', 1),
(22, '2022_03_21_110027_create_cities_table', 1),
(23, '2022_03_22_123520_create_user_cards_table', 1),
(24, '2022_03_23_061124_create_email_notification_settings_table', 1),
(25, '2022_03_23_104316_create_courses_table', 1),
(26, '2022_03_23_104847_create_course_tags_table', 1),
(27, '2022_03_29_130632_create_course_lessons_table', 1),
(28, '2022_03_29_130734_create_course_lectures_table', 1),
(29, '2022_04_02_104955_create_exams_table', 1),
(30, '2022_04_02_111930_create_questions_table', 1),
(31, '2022_04_02_112024_create_question_options_table', 1),
(32, '2022_04_02_124631_create_take_exams_table', 1),
(33, '2022_04_02_131147_create_answers_table', 1),
(34, '2022_04_02_132217_create_course_lecture_views_table', 1),
(35, '2022_04_03_093413_create_products_table', 1),
(36, '2022_04_07_105025_create_cart_management_table', 1),
(37, '2022_04_08_081131_create_wishlists_table', 1),
(38, '2022_04_09_060811_create_contact_us_issues_table', 1),
(39, '2022_04_09_060926_create_contact_us_table', 1),
(40, '2022_04_11_041217_create_about_us_generals_table', 1),
(41, '2022_04_11_041343_create_our_histories_table', 1),
(42, '2022_04_11_041419_create_team_members_table', 1),
(43, '2022_04_11_043000_create_instructor_supports_table', 1),
(44, '2022_04_11_043147_create_client_logos_table', 1),
(45, '2022_04_14_094216_create_instructor_features_table', 1),
(46, '2022_04_14_094313_create_instructor_procedures_table', 1),
(47, '2022_04_15_051038_create_faq_questions_table', 1),
(48, '2022_04_15_075433_create_home_special_features_table', 1),
(49, '2022_04_15_093248_create_homes_table', 1),
(50, '2022_04_16_085648_create_blog_categories_table', 1),
(51, '2022_04_16_111415_create_blog_tags_table', 1),
(52, '2022_04_18_071259_create_blog_comments_table', 1),
(53, '2022_04_18_103636_create_students_table', 1),
(54, '2022_04_20_090721_create_assignments_table', 1),
(55, '2022_04_21_063711_create_assignment_submits_table', 1),
(56, '2022_04_21_072930_create_assignment_files_table', 1),
(57, '2022_04_22_084931_create_course_resources_table', 1),
(58, '2022_04_22_101227_create_notice_boards_table', 1),
(59, '2022_04_23_044138_create_live_classes_table', 1),
(60, '2022_04_24_121452_create_orders_table', 1),
(61, '2022_04_24_121712_create_order_items_table', 1),
(62, '2022_04_24_122152_create_order_billing_addresses_table', 1),
(63, '2022_04_26_143537_create_coupons_table', 1),
(64, '2022_04_26_145556_create_coupon_instructors_table', 1),
(65, '2022_04_26_145742_create_coupon_courses_table', 1),
(66, '2022_04_27_124958_create_withdraws_table', 1),
(67, '2022_04_29_140534_create_reviews_table', 1),
(68, '2022_04_30_140200_create_discussions_table', 1),
(69, '2022_05_01_015615_create_learn_key_points_table', 1),
(70, '2022_05_01_015853_add_average_rating_to_courses_table', 1),
(71, '2022_05_08_183053_create_certificates_table', 1),
(72, '2022_05_09_122033_create_ranking_levels_table', 1),
(73, '2022_05_10_130657_add_video_to_courses_table', 1),
(74, '2022_05_11_113029_add_original_name_and_size_to_assignments_table', 1),
(75, '2022_05_11_122523_add_original_name_and_size_to_assignment_submits_table', 1),
(76, '2022_05_11_182134_add_view_to_discussions_table', 1),
(77, '2022_05_11_192633_create_support_ticket_questions_table', 1),
(78, '2022_05_12_121255_create_tickets_table', 1),
(79, '2022_05_12_121306_create_ticket_messages_table', 1),
(80, '2022_05_12_121540_create_ticket_departments_table', 1),
(81, '2022_05_12_121557_create_ticket_related_services_table', 1),
(82, '2022_05_12_121621_create_ticket_priorities_table', 1),
(83, '2022_05_12_175640_create_certificate_by_instructors_table', 1),
(84, '2022_05_13_165207_create_chat_messages_table', 1),
(85, '2022_05_15_112035_create_permission_tables', 1),
(86, '2022_05_16_125530_add_provider_id_and_avatar_to_users_table', 1),
(87, '2022_05_18_125922_create_pages_table', 1),
(88, '2022_05_18_152824_create_notifications_table', 1),
(89, '2022_05_18_161357_create_menus_table', 1),
(90, '2022_05_19_192216_create_email_templates_table', 1),
(91, '2022_05_22_165419_create_user_paypals_table', 1),
(92, '2022_05_25_131858_add_images_to_about_us_generals_table', 1),
(93, '2022_05_25_220619_create_student_certificates_table', 1),
(94, '2022_05_26_171757_create_promotions_table', 1),
(95, '2022_05_26_172008_create_promotion_courses_table', 1),
(96, '2022_05_27_154633_create_special_promotion_tags_table', 1),
(97, '2022_05_27_154757_create_special_promotion_tag_courses_table', 1),
(98, '2022_05_28_185325_add_subtitle_to_courses', 1),
(99, '2022_05_28_191647_create_course_upload_rules_table', 1),
(100, '2022_05_31_131109_add_forgot_token_to_users', 1),
(101, '2022_06_01_114750_add_cv_file_and_filename_to_instructors', 1),
(102, '2022_06_13_132354_create_policies_table', 1),
(103, '2022_06_14_180425_add_conversion_rate_and_current_currency_and_currency_amount_to_orders', 1),
(104, '2022_06_15_181443_add_default_language_to_languages', 1),
(105, '2022_07_05_171632_create_banks_table', 1),
(106, '2022_07_06_171634_add_field_to_orders_table', 1),
(107, '2022_07_20_114546_add_meeting_host_name_and_moderator_pw_and_attendee_pw_to_live_classes_table', 1),
(108, '2022_07_22_123555_add_paystack_refrence_number_to_orders_table', 1),
(109, '2022_07_25_151244_add_intro_video_check_and_into_youtube_video_id_to_courses_table', 1),
(110, '2022_08_04_160730_add_city_id_to_instructors', 1),
(111, '2022_08_06_140811_create_bundles_table', 1),
(112, '2022_08_06_140834_create_bundle_courses_table', 1),
(113, '2022_08_08_134556_add_bundle_id_to_wishlists', 1),
(114, '2022_08_08_181304_add_bundle_id_and_bundle_course_ids_to_cart_management', 1),
(115, '2022_08_08_193241_add_bundle_id_to_order_items', 1),
(116, '2022_08_11_180251_create_forum_categories_table', 1),
(117, '2022_08_11_183543_create_forum_posts_table', 1),
(118, '2022_08_12_113405_create_forum_post_comments_table', 1),
(119, '2022_08_13_170419_add_available_and_hourly_rate_to_instructors_table', 1),
(120, '2022_08_13_175625_create_consultation_slots_table', 1),
(121, '2022_08_16_152302_create_instructor_consultation_day_statuses_table', 1),
(122, '2022_08_16_180220_create_booking_histories_table', 1),
(123, '2022_08_18_160213_add_consultation_slot_id_and_consultation_details_and_consultation_date_to_cart_management_table', 1),
(124, '2022_08_19_114213_add_consultation_slot_id_and_consultation_date_to_order_items_table', 1),
(125, '2022_08_22_160209_add_some_new_fields_to_course_lectures_table', 1),
(126, '2022_08_30_115403_add_new_attributes_to_homes_table', 1),
(127, '2022_09_07_185945_add_start_url_to_live_classes_table', 1),
(128, '2022_09_07_193347_add_start_url_to_booking_histories_table', 1),
(129, '2022_09_08_124610_add_is_affiliator_in_user_table', 1),
(130, '2022_09_08_124610_add_is_reference_in_cart_management_table', 1),
(131, '2022_09_08_124610_create_affiliate_request_table', 1),
(132, '2022_09_08_124610_create_zoom_settings_table', 1),
(133, '2022_09_24_121452_create_affiliate_history_table', 1),
(134, '2022_09_24_121452_create_transaction_table', 1),
(135, '2022_10_10_151609_create_scorm_tables', 1),
(136, '2022_10_10_163101_add_scorm_related_column_in_tables', 1),
(137, '2022_10_10_163914_add_vimeo_upload_type_to_course_lectures', 1),
(138, '2022_10_13_163940_add_two_columns_in_scorm_table', 1),
(139, '2022_10_13_172655_add_completed_time_in_order_items_table', 1),
(140, '2022_10_15_122521_add_drip_content_in_courses_table', 1),
(141, '2022_10_15_122738_add_columns_in_course_lessons_table', 1),
(142, '2022_10_17_124610_add_error_msg_in_order_table', 1),
(143, '2022_10_18_154121_create_enrollments_table', 1),
(144, '2022_10_18_200250_add_ranking_level_column_in_instructures_table', 1),
(145, '2022_10_19_120829_add_access_period_in_bundles_table', 1),
(146, '2022_10_19_182826_add_enrollment_id_in_course_lecture_views_table', 1),
(147, '2022_10_23_161315_add_status_column_in_certificates_table', 1),
(148, '2022_10_24_171913_add_column_in_certificate_by_instructors_table', 1),
(149, '2022_10_25_155804_add_certificate_number_in_student_certificates_table', 1),
(150, '2022_10_25_184424_add_mobile_number_filed_in_users_table', 1),
(151, '2022_10_26_113449_create_gmeet_seetings_table', 1),
(152, '2022_10_28_121109_create_course_instructors_table', 1),
(153, '2022_11_01_135508_create_packages_table', 1),
(154, '2022_11_01_171131_create_user_packages_table', 1),
(155, '2022_11_01_183602_add_is_subscription_enable_in_courses_table', 1),
(156, '2022_11_03_132149_add_column_in_homes_table', 1),
(157, '2022_11_03_170747_create_payments_table', 1),
(158, '2022_11_05_171546_add_consultancy_area_to_instructors_table', 1),
(159, '2022_11_05_171546_add_lat_long_to_users_table', 1),
(160, '2022_11_07_155848_add_level_column_in_packages_table', 1),
(161, '2022_11_08_154156_add_user_package_id_in_enrollments_table', 1),
(162, '2022_11_08_185200_add_column_in_cart_management_table', 1),
(163, '2022_11_10_164850_create_monthly_distribution_histories_table', 1),
(164, '2022_11_11_121955_add_field_to_ranking_levels_table', 1),
(165, '2022_11_11_160210_create_subscription_commission_histories_table', 1),
(166, '2022_11_11_175319_create_skills_table', 1),
(167, '2022_11_11_195218_create_instructor_skills_table', 1),
(168, '2022_11_12_151558_add_old_price_to_courses_table', 1),
(169, '2022_11_12_160731_create_follow_user_table', 1),
(170, '2022_11_12_170058_add_hourly_old_rate_to_instructors_table', 1),
(171, '2022_11_14_084533_create_organizations_table', 1),
(172, '2022_11_15_120508_add_organigation_id_to_courses_table', 1),
(173, '2022_11_15_122138_add_organigation_id_to_instructor_certificates_table', 1),
(174, '2022_11_15_122314_add_organigation_id_to_instructor_awards_table', 1),
(175, '2022_11_16_122011_add_organigation_id_to_instructors_table', 1),
(176, '2022_11_16_184045_change_column_in_user_packages_table', 1),
(177, '2022_11_16_194601_add_organigation_id_to_students_table', 1),
(178, '2022_11_19_150640_create_organization_skill_table', 1),
(179, '2022_11_19_151659_change_column_in_tables', 1),
(180, '2022_11_21_154849_create_user_badges_table', 1),
(181, '2022_11_24_150320_add_soft_delete_in_users_table', 1),
(182, '2022_11_24_195705_add_private_mode_column_in_courses_table', 1),
(183, '2022_11_25_162623_change_column_in_instructors_table', 1),
(184, '2022_11_28_193527_add_is_subscription_enable_to_instructors_table', 1),
(185, '2022_11_29_184848_change_column_in_user_packages_table', 1),
(186, '2022_11_29_190107_add_is_default_column_in_packages_table', 1),
(187, '2022_12_09_153943_create_table_beneficiaries_table', 1),
(188, '2022_12_09_154915_add_benificiary_id_column_in_withdraws_table', 1),
(189, '2023_01_14_192049_update_menus_table', 1),
(190, '2023_05_07_154147_add_column_in_instructors_table', 1),
(191, '2023_05_08_115352_is_featured_in_courses_table', 1),
(192, '2023_05_08_122911_add_filed_in_homes_table', 1),
(193, '2023_05_14_072415_create_chats_table', 1),
(194, '2023_05_14_115545_create_refunds_table', 1),
(195, '2023_05_15_155921_add_column_in_transactions_table', 1),
(196, '2023_05_17_113730_add_receiver_id_in_cart_management_table', 1),
(197, '2023_05_17_113928_add_receiver_id_in_order_items_table', 1),
(198, '2023_05_24_115218_create_wallet_recharges_table', 1),
(199, '2023_05_24_115534_add_column_in_payments_table', 1),
(200, '2023_05_29_130753_create_generate_contents_table', 1),
(201, '2023_05_29_153039_create_open_a_i_prompts_table', 1),
(202, '2023_06_07_114213_change_special_promotion_tags_table', 1),
(203, '2023_07_17_152902_change_meta_tables', 2),
(215, '2023_08_13_131615_create_product_categories_table', 3),
(216, '2023_08_13_131620_change_products_table', 3),
(217, '2023_08_13_131630_create_product_tags_table', 3),
(218, '2023_08_13_131759_create_product_images_table', 3),
(219, '2023_08_13_132308_create_product_reviews_table', 3),
(220, '2023_08_13_134843_create_tag_products_table', 3),
(221, '2023_08_20_114637_add_column_in_homes_table', 4),
(222, '2023_08_20_180919_add_quantity_in_cart_managements', 5),
(223, '2023_08_21_163729_add_quantity_to_order_items', 6),
(224, '2023_08_22_131208_add_column_in_order_items_table', 7),
(225, '2023_08_23_164733_add_shipping_charge_to_cart_management_table', 8),
(227, '2023_09_03_190525_add_column_in_live_classes_table', 9),
(228, '2016_06_01_000001_create_oauth_auth_codes_table', 10),
(229, '2016_06_01_000002_create_oauth_access_tokens_table', 10),
(230, '2016_06_01_000003_create_oauth_refresh_tokens_table', 10),
(231, '2016_06_01_000004_create_oauth_clients_table', 10),
(232, '2016_06_01_000005_create_oauth_personal_access_clients_table', 10),
(233, '2024_04_01_094240_create_email_templates_table', 11),
(234, '2024_09_29_125310_add_column_in_homes_table', 12),
(235, '2025_07_17_152503_add_bridge_gap_fields_to_homes_table', 13),
(242, '2023_09_15_000001_create_user_columns', 14),
(243, '2025_07_20_121739_create_course_settings_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `monthly_distribution_histories`
--

CREATE TABLE `monthly_distribution_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(191) NOT NULL DEFAULT '0',
  `total_subscription` int(11) NOT NULL DEFAULT 0,
  `total_enroll_course` int(11) NOT NULL DEFAULT 0,
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(12,2) NOT NULL DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_boards`
--

CREATE TABLE `notice_boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `topic` text NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_boards`
--

INSERT INTO `notice_boards` (`id`, `uuid`, `user_id`, `course_id`, `topic`, `details`, `created_at`, `updated_at`) VALUES
(1, 'eca01a69-cb5b-4a9b-9b1f-f0a363247fad', 2, 1, 'Topic for Notice Board', 'This is a description', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'cbbd0c18-b70d-4023-92eb-9adcf4ad42d4', 71, 38, 'cHECKING', 'Checking the notice', '2025-07-08 01:16:35', '2025-07-08 01:16:35'),
(6, '2b7e515c-fadb-4b00-9e3f-8c52413b5f58', 71, 38, 'cHECKING', 'Checking the notice', '2025-07-08 01:18:06', '2025-07-08 01:18:06'),
(9, '352885c3-23eb-4f98-b198-18f5ae3d6345', 71, 38, 'yh', 'ujju', '2025-07-08 01:32:49', '2025-07-08 01:32:49');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `sender_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `text` varchar(255) NOT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `is_seen` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `user_type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=instructor, 3=student',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `uuid`, `sender_id`, `user_id`, `text`, `target_url`, `is_seen`, `user_type`, `created_at`, `updated_at`) VALUES
(1466, '66c3cf90-a947-4bbd-9571-3b47dd57873b', 71, NULL, 'New organization request', 'http://localhost:7000/adm/organizations/pending', 'no', 1, '2025-07-07 00:22:13', '2025-07-07 00:22:13'),
(1467, 'b47a820a-eccf-46a2-a172-f984e2096e04', 71, NULL, 'Course category has been updated', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-07 00:31:01', '2025-07-07 00:31:01'),
(1468, 'b331ddc3-7fb2-4a47-b3f0-951ec4a4b26d', 71, NULL, 'New lesson has been added', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-07 00:32:58', '2025-07-07 00:32:58'),
(1469, 'de8d87db-c8db-4cec-939b-91ae2b70434c', 1, 71, 'Course has been approved', 'http://localhost:7000/course-details/dev-project', 'no', 2, '2025-07-07 00:38:29', '2025-07-07 00:38:29'),
(1470, '6855d79a-f03a-450f-b5c9-cb1f287cddbd', 1, 70, 'New course has been published', 'http://localhost:7000/course-details/dev-project', 'no', 3, '2025-07-07 00:38:29', '2025-07-07 00:38:29'),
(1471, 'f8e3df5a-1c67-43f2-bc05-931a57d0a1e8', 71, 70, 'New notice has been added', 'http://localhost:7000/student/my-course/dev-project', 'no', 3, '2025-07-08 01:32:49', '2025-07-08 01:32:49'),
(1472, '854e303f-2e1e-4a2f-8901-250c3b981443', 71, 70, 'New Live Class Added', 'http://localhost:7000/student/my-course/dev-project', 'yes', 3, '2025-07-08 01:44:32', '2025-07-08 01:45:32'),
(1473, 'a648e619-c7e1-4eed-83f5-56945175dd02', 71, 70, 'New Live Class Added', 'http://localhost:7000/student/my-course/dev-project', 'no', 3, '2025-07-08 01:47:16', '2025-07-08 01:47:16'),
(1474, '4edc881c-84cc-4af3-84ca-053bfb62c2c8', 71, 70, 'New Live Class Added', 'http://localhost:7000/student/my-course/dev-project', 'no', 3, '2025-07-08 01:48:25', '2025-07-08 01:48:25'),
(1475, '7fa2212e-5bb7-4005-b6d4-b68d1414a33a', 71, NULL, 'Course category has been updated', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-08 02:13:21', '2025-07-08 02:13:21'),
(1476, '0d34cda5-a0f7-4b67-be36-e60d33df5e8f', 71, NULL, 'Course category has been updated', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-08 02:14:22', '2025-07-08 02:14:22'),
(1477, 'e555cf09-f8f0-4901-827f-9a522228b37e', 71, NULL, 'New lesson has been added', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-08 02:16:12', '2025-07-08 02:16:12'),
(1478, '4596abed-d065-4647-9080-9fe9b520e58f', 71, NULL, 'New lesson has been added', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-08 02:17:52', '2025-07-08 02:17:52'),
(1479, 'ce06d7b0-9467-4033-bfc8-e19d2fed1659', 1, 71, 'Course has been approved', 'http://localhost:7000/course-details/testin', 'no', 2, '2025-07-09 17:49:36', '2025-07-09 17:49:36'),
(1480, '2eaaf6fd-bb64-4da7-941c-aaea595459bc', 1, 70, 'New course has been published', 'http://localhost:7000/course-details/testin', 'no', 3, '2025-07-09 17:49:36', '2025-07-09 17:49:36'),
(1481, '2da18155-c0a8-46aa-b693-321bbeb09b98', 1, 71, 'Course has been hold', 'http://localhost:7000/instructor/course', 'no', 2, '2025-07-09 17:50:12', '2025-07-09 17:50:12'),
(1482, '697d0b75-41cc-4a5f-9a60-a1dd624171c8', 71, NULL, 'Course category has been updated', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-09 14:48:19', '2025-07-09 14:48:19'),
(1483, '1f24e2e7-fae2-4e48-bfa6-fada9e28f7c0', 71, NULL, 'Course category has been updated', 'http://localhost:7000/adm/course', 'no', 1, '2025-07-09 14:51:21', '2025-07-09 14:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `notification_email_templates`
--

CREATE TABLE `notification_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `body` longtext NOT NULL,
  `variables` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_email_templates`
--

INSERT INTO `notification_email_templates` (`id`, `category`, `slug`, `subject`, `body`, `variables`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Verify Email ', 'verify-email', 'Verify Your Email', '<div style=\"padding:20px;\">\r\n    <p>Hi ,<br>Thank you for creating a new account. Please verify your account</p><p><a href=\"{{LINK}}\" style=\"\">Click here and verify your account</a></p>\r\n    <p>{{USER_NAME}}</p>\r\n\r\n    \r\n    \r\n    \r\n    <p>\r\n        <b>The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{LINK}},{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:26:22'),
(2, 'Forget Password', 'forget-password', 'Forget Password', '<div>\r\n    <h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">For a reset password, your verification code is {{VERIFICATION_CODE}}.</p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{VERIFICATION_CODE}},{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-01 22:39:55'),
(3, 'Instructor Request (Admin)', 'instructor-request-to-admin', 'Instructor Request', '<div>\r\n    <h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new instructor has been requested to your site. Please review and approve that.<br><br>The checking URL is <a href=\"http://{{URL}}\" target=\"_blank\">Link</a>&nbsp;</p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{URL}},{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:28:57'),
(4, 'Organization Request (Admin)', 'organization-request-to-admin', 'Instructor Request', '<div>\r\n    <h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new organization has been requested for your site. Please review and approve that.<br><br>The checking URL is <a href=\"http://{{URL}}\" target=\"_blank\">Link</a>&nbsp;</p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{URL}},{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:30:51'),
(5, 'New student enroll (Instructor)', 'new-student-enroll-to-instructor', 'New student enroll', '<div>\r\n    <h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new student has been enrolled to your course {{COURSE_TITLE}}<br>The checking URL is <a href=\"http://{{URL}}\" target=\"_blank\">Link</a>&nbsp;</p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{URL}},{{USER_NAME}},{{COURSE_TITLE}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:31:55'),
(6, 'New student enroll (Admin)', 'new-student-enroll-to-admin', 'New student enroll', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new student has been enrolled to course {{COURSE_TITLE}}<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{COURSE_TITLE}}', 1, '2024-04-02 02:26:22', '2024-04-01 23:44:10'),
(7, 'Student enroll (Student)', 'new-student-enroll-to-student', 'You new enrolled in new course {{COURSE_TITLE}}', '<div>\r\n    <h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have enrolled in new course named {{COURSE_TITLE}}<br>The checking URL is <a href=\"http://{{URL}}\" target=\"_blank\">Link</a> and enjoy your learning</p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{URL}},{{USER_NAME}},{{COURSE_TITLE}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:25:22'),
(8, 'Order Pending (Admin)', 'course-buy-pending-admin', 'Bank order has been pending #{{ORDER_NUMBER}}', '<div>\r\n    <h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">One student has placed an order using a bank payment.<br>Order Number: {{ORDER_NUMBER}}<br>Please verify and approve.&nbsp;<br><br>Checking link\'s <a href=\"http://{{URL}}\" target=\"_blank\">URL</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>\r\n</div>', '{{URL}},{{USER_NAME}},{{ORDER_NUMBER}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:59:30'),
(9, 'Order Pending (Student)', 'course-buy-pending-student', 'You order has been place as pending #{{ORDER_NUMBER}}', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your bank order has been pending. An admin will verify the payment and approve it.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{ORDER_NUMBER}}', 1, '2024-04-02 02:26:22', '2024-04-02 02:58:40'),
(10, 'Refund Request (Instructor/Organization)', 'instructor-refund-request', 'You have one refund request', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have one refund request; please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 03:42:53'),
(11, 'Subscription Purchase Pending (Admin)', 'subscription-purchase-pending-admin', 'Subscription Order Pending', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have one subscription order pending; please check and approved the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 03:53:45'),
(12, 'Subscription Purchase Complete (Admin)', 'subscription-purchase-complete-admin', 'Subscription Order Complete', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have got one subscription order; please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 03:56:45'),
(13, 'Subscription Purchase Complete (Student)', 'subscription-purchase-complete-student', 'Subscription Order Complete', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your subscription order has been completed.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 03:56:08'),
(14, 'Multi instructor request rejected (Instructor/Organization)', 'multi-instructor-request-rejected', 'Multi instructor request has been rejected by {{INSTRUCTOR_NAME}}', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">{{INSTRUCTOR_NAME}} has been rejected for your multi-instructor request.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{INSTRUCTOR_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:03:10'),
(15, 'Multi instructor request approved (Instructor/Organization)', 'multi-instructor-request-approved', 'Multi instructor request has been approved by {{INSTRUCTOR_NAME}}', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">{{INSTRUCTOR_NAME}} has been approved for your multi-instructor request.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{INSTRUCTOR_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:03:10'),
(16, 'Withdrawal Request (User)', 'withdrawal-request-to-user', 'You withdrawal request has been send to admin', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your withdrawal request has been pending. An admin will review and approve shortly. Please check the below link for latest status.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:17:07'),
(17, 'Withdrawal Request (Admin)', 'withdrawal-request-to-admin', 'You have one withdrawal request pending', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">One user has requested a withdrawal. Please review and approve the below link<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:15:51'),
(18, 'Wallet Recharge Completed (Admin)', 'wallet-recharge-complete-admin', 'Someone Recharge there wallet successfully', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Someone Recharge there wallet successfully. Please check the below link<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:28:25'),
(19, 'Wallet Recharge Pending for review (Admin)', 'wallet-recharge-pending-admin', 'Wallet recharge pending for approval', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">One user has requested a wallet recharge via bank. Please review and approved it from below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:27:41'),
(20, 'Wallet Recharge Completed (User)', 'wallet-recharge-complete-user', 'Wallet recharge has been completed', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your wallet recharge has been completed. Please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">LINK</a></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 21:29:12'),
(21, 'Refund Request Rejected (Student)', 'refund-request-rejected-student', 'Your refund request has been rejected', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your refund request has been rejected. Please check the feedback.<br><br>Feedback : {{FEEDBACK}}<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{FEEDBACK}}', 1, '2024-04-02 02:26:22', '2024-04-02 22:18:54'),
(22, 'Refund Request Approved (Student)', 'refund-request-accepted-student', 'Your refund request has been accpeted', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your refund request has been approved.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 22:15:38'),
(23, 'New notice created (Student)', 'new-notice-created-student', 'New notice has been published', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new notice has been created. Please check that<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 22:34:11'),
(24, 'Consultation booking cancel (Student)', 'consultation-booking-cancel-student', 'Your consultation booking has been cancelled', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your consultation booking has been cancelled. Please check the below link.<br>Reason for canceling the booking : {{FEEDBACK}}<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}},{{FEEDBACK}}', 1, '2024-04-02 02:26:22', '2024-04-02 22:40:20'),
(25, 'Live Class Added (Student)', 'live-class-added-student', 'New Live Class Added', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"></p><p style=\"\">A new live class has been added; please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 22:47:06'),
(26, 'Product Order Status Change (Student)', 'product-order-status-change-student', 'Product order status has been changed', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your product order status has been changed. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:12:09'),
(27, 'Product Approved  (Instructor)', 'product-approved-instructor', 'Your product approved', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your product has been approved. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:16:55'),
(28, 'Product Order Aprpoved (Student)', 'product-order-approved-student', 'Your product order via bank has been approved', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your product order via bank has been approved. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:45:42'),
(29, 'Product Order Aprpoved (Instructor)', 'product-order-approved-instrcutor', 'You have got new product order', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have got new product order. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:45:03'),
(30, 'Product Order Cancelled (Student)', 'product-order-cancelled-student', 'Your product order has been cancelled', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your product order via bank status has been cancelled. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:46:17'),
(31, 'Course Order Approved (Student)', 'course-order-approved-student', 'Your course order has been approved', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your course order via bank has been approved. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:48:33'),
(32, 'Course Order Approved (Instructor)', 'course-order-approved-instructor', 'You have got new course order', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have got a new product order. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:46:59'),
(33, 'Course Order Cancelled (Student)', 'course-order-cancelled-student', 'Your course order has been cancelled', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your course order via bank has been cancelled. Please check the below link.<br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:48:10'),
(34, 'Affiliate request approved (Student)', 'affiliate-request-approved', 'Your affiliate request has been approved', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your affiliate request has been&nbsp; approved.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:58:41'),
(35, 'Affiliate request rejected (Student)', 'affiliate-request-rejected', 'Your affiliate request has been rejected', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your affiliate request has been rejected.<br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}}', 1, '2024-04-02 02:26:22', '2024-04-02 23:57:53'),
(36, 'Subscription Payout Distributed (Student)', 'subscription-payout-deposited', 'Monthly Subscription payout deposited', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A monthly subscription payout has been distributed. Please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-03 01:30:03'),
(37, 'New course published (Student)', 'new-course-approved-student', 'New course published', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new course has been published. Please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-03 01:42:57'),
(38, 'New course approved (Instructor/Organization)', 'new-course-approved-instructor', 'New course approved', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Your new course has been published. Please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-03 01:41:07'),
(39, 'New lesson added (Student)', 'new-lesson-added-student', 'New lesson added', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">A new lesson has been added. Please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-03 01:48:49'),
(40, 'Course lesson updated (Student)', 'new-lesson-updated-student', 'Course lesson updated', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">Course lesson has been updated. Please check the below link.<br><br><a href=\"http://{{LINK}}\" target=\"_blank\">Link</a><br></p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-03 01:49:27'),
(41, 'Multi instructor request', 'multi-instructor-request', 'You have request for become instructor', '<h4 style=\"\"><p style=\"\"><b style=\"\">Hi ,<br></b></p><p style=\"\"><b>{{USER_NAME}}</b></p><p style=\"\">You have request for become instructor. Check the below link and accept the request.</p><p></p></h4><p>\r\n        <b style=\"\">The Learninng Space Team</b>\r\n    </p>', '{{USER_NAME}},{{LINK}}', 1, '2024-04-02 02:26:22', '2024-04-03 02:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `open_a_i_prompts`
--

CREATE TABLE `open_a_i_prompts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_image` tinyint(4) NOT NULL DEFAULT 0,
  `category` varchar(191) NOT NULL,
  `prompt` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_number` varchar(50) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `platform_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `current_currency` varchar(255) DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_currency` varchar(255) DEFAULT NULL,
  `conversion_rate` decimal(28,8) DEFAULT 0.00000000,
  `grand_total_with_conversation_rate` decimal(28,8) DEFAULT 0.00000000,
  `payment_method` varchar(100) DEFAULT NULL,
  `paystack_reference_number` varchar(255) DEFAULT NULL,
  `deposit_by` varchar(255) DEFAULT NULL,
  `deposit_slip` varchar(255) DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_comment` mediumtext DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'due' COMMENT 'paid, due, free',
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=complete',
  `created_by_type` tinyint(4) DEFAULT 1 COMMENT '1=student, 2=admin',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `error_msg` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uuid`, `user_id`, `order_number`, `sub_total`, `discount`, `shipping_cost`, `tax`, `platform_charge`, `current_currency`, `grand_total`, `payment_currency`, `conversion_rate`, `grand_total_with_conversation_rate`, `payment_method`, `paystack_reference_number`, `deposit_by`, `deposit_slip`, `bank_id`, `customer_comment`, `payment_status`, `delivery_status`, `created_by_type`, `created_by`, `created_at`, `updated_at`, `error_msg`, `payment_id`) VALUES
(82, '7026e577-6cb6-4e3a-9c9b-c55926a6f65e', 70, '392379', 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, 0.00000000, 0.00000000, NULL, NULL, NULL, NULL, NULL, NULL, 'free', 0, 1, 70, '2025-07-08 01:27:50', '2025-07-08 01:27:50', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_billing_addresses`
--

CREATE TABLE `order_billing_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `set_as_shipping_address` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `receiver_info` text DEFAULT NULL,
  `owner_user_id` bigint(20) DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `consultation_slot_id` bigint(20) UNSIGNED DEFAULT NULL,
  `consultation_date` varchar(191) DEFAULT NULL,
  `unit` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT 0.00,
  `owner_balance` decimal(8,2) NOT NULL DEFAULT 0.00,
  `sell_commission` int(11) NOT NULL DEFAULT 0 COMMENT 'How much percentage get admin and calculate in admin_commission',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=course, 2=product',
  `delivery_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `user_id`, `receiver_info`, `owner_user_id`, `bundle_id`, `course_id`, `product_id`, `quantity`, `consultation_slot_id`, `consultation_date`, `unit`, `unit_price`, `admin_commission`, `owner_balance`, `sell_commission`, `type`, `delivery_status`, `created_at`, `updated_at`) VALUES
(94, 82, 70, NULL, 71, NULL, 38, NULL, 0, NULL, NULL, 1, 0.00, 0.00, 0.00, 0, 1, 0, '2025-07-08 01:27:50', '2025-07-08 01:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `province_id` bigint(20) UNSIGNED DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `professional_title` varchar(191) DEFAULT NULL,
  `phone_number` varchar(191) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `consultancy_area` tinyint(4) NOT NULL DEFAULT 3,
  `about_me` mediumtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `social_link` mediumtext DEFAULT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `is_private` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `remove_from_web_search` varchar(10) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `auto_content_approval` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=approved, 2=blocked',
  `is_subscription_enable` tinyint(4) DEFAULT 0,
  `is_offline` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'offline status',
  `offline_message` varchar(191) NOT NULL DEFAULT '0' COMMENT 'offline message',
  `consultation_available` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=yes, 0=no',
  `hourly_rate` int(11) DEFAULT 0,
  `hourly_old_rate` decimal(8,2) DEFAULT NULL,
  `available_type` tinyint(4) NOT NULL DEFAULT 3 COMMENT '1=In-person, 0=Online, 3=Both',
  `cv_file` varchar(191) DEFAULT NULL,
  `cv_filename` varchar(191) DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `organization_skill`
--

CREATE TABLE `organization_skill` (
  `organization_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `our_histories`
--

CREATE TABLE `our_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `year` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_histories`
--

INSERT INTO `our_histories` (`id`, `year`, `title`, `subtitle`, `created_at`, `updated_at`) VALUES
(1, '1998', 'Mere tranquil existence', 'Possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart am alone', NULL, NULL),
(2, '1998', 'Incapable of drawing', 'Exquisite sense of mere tranquil existence that I neglect my talents add should be incapable of drawing', NULL, NULL),
(3, '1998', 'Foliage access trees', 'Serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my', NULL, NULL),
(4, '1998', 'Among grass trickling', 'Should be incapable of drawing a single stroke at the present moment; and yet I feel that I never', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `package_type` enum('1','2','3') NOT NULL COMMENT '1=subscription, 2=instructor saas, 3=organization saas',
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext DEFAULT NULL,
  `discounted_monthly_price` decimal(12,2) NOT NULL,
  `monthly_price` decimal(12,2) NOT NULL,
  `discounted_yearly_price` decimal(12,2) NOT NULL,
  `yearly_price` decimal(12,2) NOT NULL,
  `icon` varchar(191) NOT NULL,
  `student` int(11) NOT NULL DEFAULT 0,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `course` int(11) NOT NULL DEFAULT 0,
  `consultancy` int(11) NOT NULL DEFAULT 0,
  `subscription_course` int(11) NOT NULL DEFAULT 0,
  `bundle_course` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `device` int(11) NOT NULL DEFAULT 0,
  `admin_commission` int(11) NOT NULL DEFAULT 0,
  `in_home` tinyint(4) NOT NULL DEFAULT 1,
  `recommended` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `uuid`, `package_type`, `title`, `slug`, `description`, `discounted_monthly_price`, `monthly_price`, `discounted_yearly_price`, `yearly_price`, `icon`, `student`, `instructor`, `course`, `consultancy`, `subscription_course`, `bundle_course`, `product`, `device`, `admin_commission`, `in_home`, `recommended`, `status`, `is_default`, `order`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '4ec8c672-7d46-43e8-9a3b-dded2a43d721', '1', 'Starter', 'starter-966323', NULL, 0.00, 0.00, 0.00, 0.00, 'frontend/assets/img/package_icon.png', 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(2, '48539274-e5ef-423c-bbc1-626816ac2616', '2', 'Starter', 'starter-696394', NULL, 0.00, 0.00, 0.00, 0.00, 'frontend/assets/img/package_icon.png', 0, 0, 5, 10, 1, 1, 0, 1, 20, 1, 0, 1, 1, 1, 1, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(3, 'b367e4bf-b519-40fb-8e2b-f9fa1c19089b', '3', 'Starter', 'starter-813043', NULL, 0.00, 0.00, 0.00, 0.00, 'frontend/assets/img/package_icon.png', 5, 2, 5, 10, 1, 1, 0, 1, 20, 1, 0, 1, 1, 1, 1, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `en_title` text DEFAULT NULL,
  `en_description` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keywords` longtext DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `uuid` char(36) NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `order_number` varchar(50) NOT NULL,
  `sub_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_currency` varchar(191) DEFAULT NULL,
  `platform_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `conversion_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `grand_total_with_conversation_rate` decimal(28,8) NOT NULL DEFAULT 0.00000000,
  `deposit_by` varchar(191) DEFAULT NULL,
  `deposit_slip` varchar(191) DEFAULT NULL,
  `bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grand_total` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_details` longtext DEFAULT NULL,
  `payment_status` varchar(15) NOT NULL DEFAULT 'due' COMMENT 'paid, due, free, pending, cancelled',
  `created_by_type` tinyint(4) DEFAULT 1 COMMENT '1=student, 2=instructor',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'pending_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'hold_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'approved_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'all_course', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'manage_course_reference', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'manage_course_category', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'manage_course_subcategory', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'manage_course_tag', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(10, 'manage_course_language', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(11, 'manage_course_difficulty_level', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(12, 'manage_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(13, 'pending_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, 'approved_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(15, 'all_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(16, 'add_instructor', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(17, 'manage_student', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(18, 'manage_coupon', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(19, 'manage_promotion', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(20, 'manage_blog', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(21, 'payout', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(22, 'finance', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(23, 'manage_certificate', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(24, 'ranking_level', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(25, 'manage_language', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(26, 'account_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(27, 'support_ticket', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(28, 'manage_contact', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(29, 'application_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(30, 'global_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(31, 'home_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(32, 'mail_configuration', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(33, 'payment_option', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(34, 'content_setting', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(35, 'user_management', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(36, 'manage_affiliate', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(37, 'manage_subscriptions', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(38, 'manage_saas', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(39, 'manage_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(40, 'pending_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(41, 'approved_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(42, 'all_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(43, 'add_organization', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(44, 'skill', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(45, 'distribute_subscription', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(46, 'manage_version_update', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(47, 'manage_wallet_recharge', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(48, 'page_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(49, 'menu_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(50, 'policy_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(51, 'forum_management', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(52, 'email_notification_template', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(53, 'product_module_product', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(54, 'product_module_tag', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19'),
(55, 'product_module_category', 'web', '2022-11-30 21:18:19', '2022-11-30 21:18:19');

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
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT '1=privacy, 2=cookie',
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(4, 3, '<h3 data-start=\"102\" data-end=\"132\">About This Site – Policies</h3><p data-start=\"134\" data-end=\"554\">The Learning Space (\"this website\") is owned and operated by Learning Space Corner (Pvt Ltd) or \"Learning Space\"). This platform offers tuition, learning material and exclusive Elite Support (Saudi Arabia) and provides a variety of options for learners, tutors, learning institutions, and organizations seeking professional development. These offerings are for personal education, individual growth, and skills mastery.</p><p data-start=\"556\" data-end=\"932\">Learning Space provides these to serve and contribute to clarity the legal practices and procedures governing this platform and all services associated with it. Please read these terms and conditions carefully before using this website. By using this site, you are providing your express, unconditional, and irrevocable acceptance of these terms and agree to comply with them.</p><hr data-start=\"934\" data-end=\"937\"><h3 data-start=\"939\" data-end=\"964\">Intellectual Property</h3><ul data-start=\"966\" data-end=\"1813\">\r\n<li data-start=\"966\" data-end=\"1356\">\r\n<p data-start=\"968\" data-end=\"1356\">By accepting these terms and conditions, you acknowledge that this website, including but not limited to content, graphics, user interfaces, audio, video, designs, files, and software (here in after \"Content\"), contains proprietary information and material owned by Learning Space and/or its legal representatives. These are protected by applicable intellectual property and copyright laws.</p>\r\n</li>\r\n<li data-start=\"1358\" data-end=\"1529\">\r\n<p data-start=\"1360\" data-end=\"1529\">You agree not to copy such proprietary information or materials in any way except for personal, non-commercial use as explicitly permitted by these terms and conditions.</p>\r\n</li>\r\n<li data-start=\"1531\" data-end=\"1682\">\r\n<p data-start=\"1533\" data-end=\"1682\">You are not permitted to copy, modify, republish, post, or distribute any training content provided, nor upload any services in any unauthorised way.</p>\r\n</li>\r\n<li data-start=\"1684\" data-end=\"1813\">\r\n<p data-start=\"1686\" data-end=\"1813\">No rights or licenses are granted to you regarding any trademarks or service marks belonging to Learning Space or its partners.</p>\r\n</li>\r\n</ul><hr data-start=\"1815\" data-end=\"1818\"><h3 data-start=\"1820\" data-end=\"1839\">Customer Rights</h3><ol data-start=\"1841\" data-end=\"2742\">\r\n<li data-start=\"1841\" data-end=\"1996\">\r\n<p data-start=\"1844\" data-end=\"1996\">Please ensure that your data (including your email and details) may be considered unauthorised, unaccepted and may be banned if usage violates policies.</p>\r\n</li>\r\n<li data-start=\"1998\" data-end=\"2186\">\r\n<p data-start=\"2001\" data-end=\"2186\">Learning Space is committed and strives for high-level transparency for connecting multiple or devices. However, credit card information is never requested during offline communication.</p>\r\n</li>\r\n<li data-start=\"2188\" data-end=\"2391\">\r\n<p data-start=\"2191\" data-end=\"2391\">You agree to provide us with correct, accurate, and complete information about yourself and your account whenever you wish to book. These may be of use and/or required by the software you have chosen.</p>\r\n</li>\r\n<li data-start=\"2393\" data-end=\"2643\">\r\n<p data-start=\"2396\" data-end=\"2643\">You also agree to promptly update your account and other relevant information in case of any changes, including your email, address, credit card numbers, and expiration dates, so that we can complete your transactions and contact you as necessary.</p>\r\n</li>\r\n<li data-start=\"2645\" data-end=\"2742\">\r\n<p data-start=\"2648\" data-end=\"2742\">Your confirmation that your personal information is accurate is subject to our Privacy Policy.</p>\r\n</li>\r\n</ol><hr data-start=\"2744\" data-end=\"2747\"><h3 data-start=\"2749\" data-end=\"2769\">Terms of Service</h3><ul data-start=\"2771\" data-end=\"3940\">\r\n<li data-start=\"2771\" data-end=\"2841\">\r\n<p data-start=\"2773\" data-end=\"2841\">Our services and support are always accessible through this website.</p>\r\n</li>\r\n<li data-start=\"2843\" data-end=\"3072\">\r\n<p data-start=\"2845\" data-end=\"3072\">Making your purchase and/or purchasing from the Learning Store you are considered to have \"checked out\" and accepted to abide by these terms and conditions (listed, including any updates and/or changes throughout this website).</p>\r\n</li>\r\n<li data-start=\"3074\" data-end=\"3379\">\r\n<p data-start=\"3076\" data-end=\"3379\">You reserve the right to subscribe, try, register and remove parts of these terms by providing changes or updates on our website. You are not permitted to duplicate the syllabus plans for any group/company. Doing so may result in the website or other legal platforms enforcing suspension of the account.</p>\r\n</li>\r\n<li data-start=\"3381\" data-end=\"3473\">\r\n<p data-start=\"3383\" data-end=\"3473\">These terms of service also apply to any new features or tools added to existing services.</p>\r\n</li>\r\n<li data-start=\"3475\" data-end=\"3807\">\r\n<p data-start=\"3477\" data-end=\"3807\">You may not use any of our products for any illegal or unauthorised purposes. During each of the services, you must not violate any laws applicable in your jurisdiction (including but not limited to intellectual property laws), and any violation of these terms shall result in the immediate termination of your access or services.</p>\r\n</li>\r\n<li data-start=\"3809\" data-end=\"3940\">\r\n<p data-start=\"3811\" data-end=\"3940\">If you do not agree with all of the terms and conditions herein, be aware that we may not be able to provide our services to you.</p>\r\n</li>\r\n</ul><hr data-start=\"3942\" data-end=\"3945\"><h3 data-start=\"3947\" data-end=\"3964\">Payment Terms</h3><ul data-start=\"3966\" data-end=\"5590\">\r\n<li data-start=\"3966\" data-end=\"4228\">\r\n<p data-start=\"3968\" data-end=\"4228\">Clients purchasing through this website require verification using a password reset to be considered; please monitor registered emails (the used buyer) to prevent fraud/incorrect transactions. We are not liable for any negligence on the part of the cardholder.</p>\r\n</li>\r\n<li data-start=\"4230\" data-end=\"4360\">\r\n<p data-start=\"4232\" data-end=\"4360\">All charges (registrations) made to their bank(s) account(s) are considered a proper payment, made without their responsibility.</p>\r\n</li>\r\n<li data-start=\"4362\" data-end=\"4596\">\r\n<p data-start=\"4364\" data-end=\"4596\">Any payments made through our website using a credit card or other electronic payment method is not refundable in cash. Instead, refunds are issued using the same payment method and are subject to our cancellation and refund policy.</p>\r\n</li>\r\n<li data-start=\"4598\" data-end=\"4764\">\r\n<p data-start=\"4600\" data-end=\"4764\">We are not liable for errors by the client in submitting or handling refunds during a bank transfer that results in incorrect payee use to satisfy payment reversal.</p>\r\n</li>\r\n<li data-start=\"4766\" data-end=\"4837\">\r\n<p data-start=\"4768\" data-end=\"4837\">Payments through payment means must be paid within 5 days of receipt.</p>\r\n</li>\r\n<li data-start=\"4839\" data-end=\"5025\">\r\n<p data-start=\"4841\" data-end=\"5025\">Payments must be made in cash, via credit/debit card, cheques, or bank payments. We accept online payments through VISA or Mastercard in South Africa (or any other available currency).</p>\r\n</li>\r\n<li data-start=\"5027\" data-end=\"5189\">\r\n<p data-start=\"5029\" data-end=\"5189\">If you make payment(s) for our services/products via the website, your payment details will be sent directly to our payment provider across a secure connection.</p>\r\n</li>\r\n<li data-start=\"5191\" data-end=\"5405\">\r\n<p data-start=\"5193\" data-end=\"5405\">The displayed prices does not include VAT, withholding fees, or any additional levies, taxes, or forward-related costs unless you have clarified responsibility and this will be noted in the final receipt example.</p>\r\n</li>\r\n<li data-start=\"5407\" data-end=\"5516\">\r\n<p data-start=\"5409\" data-end=\"5516\">Minors under the age of 18 are not permitted to register or use this website or engage in any transactions.</p>\r\n</li>\r\n<li data-start=\"5518\" data-end=\"5590\">\r\n<p data-start=\"5520\" data-end=\"5590\">The cardholder must retain a copy of transaction records and policies.</p>\r\n</li>\r\n</ul><hr data-start=\"5592\" data-end=\"5595\"><h3 data-start=\"5597\" data-end=\"5639\">Service Interruptions &amp; Policy Changes</h3><ul data-start=\"5641\" data-end=\"6185\">\r\n<li data-start=\"5641\" data-end=\"5906\">\r\n<p data-start=\"5643\" data-end=\"5906\">We reserve the right to change the prices of our services and products at any time without prior notice. This does not apply to confirmed service orders. (Note: this affects the client’s invoicing and completion payments. This price for that order remains fixed.)</p>\r\n</li>\r\n<li data-start=\"5908\" data-end=\"6029\">\r\n<p data-start=\"5910\" data-end=\"6029\">We reserve the right to immediately suspend the service under time-technical repair periods and at our sole discretion.</p>\r\n</li>\r\n<li data-start=\"6031\" data-end=\"6185\">\r\n<p data-start=\"6033\" data-end=\"6185\">We reserve the right to cancel any purchase order at our discretion if deemed necessary, and the client will be informed of the reason for cancellation.</p>\r\n</li>\r\n</ul><hr data-start=\"6187\" data-end=\"6190\"><h3 data-start=\"6192\" data-end=\"6232\">Cancellation and Postponement Policy</h3><h4 data-start=\"6234\" data-end=\"6261\">● Client Cancellations</h4><ul data-start=\"6262\" data-end=\"6494\">\r\n<li data-start=\"6262\" data-end=\"6343\">\r\n<p data-start=\"6264\" data-end=\"6343\">0% cancellation fees if cancelled at least 5 days before the course start date.</p>\r\n</li>\r\n<li data-start=\"6344\" data-end=\"6420\">\r\n<p data-start=\"6346\" data-end=\"6420\">50% cancellation fees if cancelled between 2 and 5 days before the course.</p>\r\n</li>\r\n<li data-start=\"6421\" data-end=\"6494\">\r\n<p data-start=\"6423\" data-end=\"6494\">100% cancellation fees if cancelled less than 2 days before the course.</p>\r\n</li>\r\n</ul><h4 data-start=\"6496\" data-end=\"6523\">● Client Postponements</h4><ul data-start=\"6524\" data-end=\"6801\">\r\n<li data-start=\"6524\" data-end=\"6686\">\r\n<p data-start=\"6526\" data-end=\"6686\">Learning Space allows a 1-week notice window that prior coursework can be used to attend any of our courses scheduled within 12 months from the reschedule date.</p>\r\n</li>\r\n<li data-start=\"6688\" data-end=\"6801\">\r\n<p data-start=\"6690\" data-end=\"6801\">If 20% missing lessons (from the postponement request) is submitted less than 10 days before the course starts.</p>\r\n</li>\r\n</ul><h4 data-start=\"6803\" data-end=\"6838\">● Learning Space Cancellations</h4><ul data-start=\"6839\" data-end=\"7181\">\r\n<li data-start=\"6839\" data-end=\"7005\">\r\n<p data-start=\"6841\" data-end=\"7005\">A full refund (100%) will be issued if Learning Space cancels the course. Alternatively, the client may opt for a credit note valid for any course within 12 months.</p>\r\n</li>\r\n<li data-start=\"7007\" data-end=\"7181\">\r\n<p data-start=\"7009\" data-end=\"7181\">If Learning Space postpones the course, the client may choose to attend the same course on a later date or receive a credit note valid for 12 months from the date of issue.</p>\r\n</li>\r\n</ul><hr data-start=\"7183\" data-end=\"7186\"><h3 data-start=\"7188\" data-end=\"7229\">Indemnity and Legal Rights Resolution</h3><p data-start=\"7231\" data-end=\"7625\">You agree to indemnify and hold harmless Learning Space, its parent, and subsidiary companies, affiliates, partners, employees, directors, agents, licensors, service providers, subcontractors, suppliers, and trainers from any legal action—including attorney fees—arising from your site activity intended to cause violation of these terms of service, or any breach of user or third-party rights.</p><hr data-start=\"7627\" data-end=\"7630\"><h3 data-start=\"7632\" data-end=\"7670\">Governing Law &amp; Dispute Resolution</h3><p data-start=\"7672\" data-end=\"8096\">All intellectual offerings from or related to Learning Space, whether with clients, service providers, or any other party, are governed by the laws and regulations of the Republic of South Africa. Any dispute that is not resolved amicably, if taken to court proceedings, must be resolved by the competent juridical authority in the Republic of South Africa. No other jurisdiction may be applied unless otherwise agreed upon.</p><hr data-start=\"8098\" data-end=\"8101\"><h3 data-start=\"8103\" data-end=\"8118\">Your Rights</h3><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><ul data-start=\"8120\" data-end=\"9622\">\r\n<li data-start=\"8120\" data-end=\"8419\">\r\n<p data-start=\"8122\" data-end=\"8419\"><strong data-start=\"8122\" data-end=\"8142\">Right to Erasure</strong>: You have the right to know how your personal data is collected, the legal basis for collection and processing, how it is used, shared, and transferred, and confirm its removal. Full details are available in our Privacy Policy or upon request via the standard email procedure.</p>\r\n</li>\r\n<li data-start=\"8421\" data-end=\"8638\">\r\n<p data-start=\"8423\" data-end=\"8638\"><strong data-start=\"8423\" data-end=\"8456\">Right to Access Personal Data</strong>: You have the right to request a copy of your personal data at any time by contacting us via line [support email]. This will be provided free of charge within [seven business days].</p>\r\n</li>\r\n<li data-start=\"8640\" data-end=\"8938\">\r\n<p data-start=\"8642\" data-end=\"8938\"><strong data-start=\"8642\" data-end=\"8676\">Right to Correct Personal Data</strong>: You have the right to request corrections to your personal data if you believe it is incomplete, inaccurate, or improperly processed by using the service’s contact form. We will respond and update the data within [seven business days] and inform you via email.</p>\r\n</li>\r\n<li data-start=\"8940\" data-end=\"9218\">\r\n<p data-start=\"8942\" data-end=\"9218\"><strong data-start=\"8942\" data-end=\"8974\">Right to Remove Minors’ Data</strong>: You have the right to remove the children’s (if present) data under certain conditions. Learning Space reserves the right to securely or destroy this request in line/comply with applicable subscription requirements or contractual obligations.</p>\r\n</li>\r\n<li data-start=\"9220\" data-end=\"9379\">\r\n<p data-start=\"9222\" data-end=\"9379\"><strong data-start=\"9222\" data-end=\"9251\">Right to Withdraw Consent</strong>: You may withdraw your consent to the processing of personal data at any time, unless legitimate processing requires otherwise.</p>\r\n</li>\r\n<li data-start=\"9381\" data-end=\"9622\">\r\n<p data-start=\"9383\" data-end=\"9622\"><strong data-start=\"9383\" data-end=\"9412\">Right to Data Portability</strong>: You have the right to the confidentiality and privacy of your personal data. We do not share your data with third parties except as outlined in our Privacy Policy and use as consented to participate in fully.</p></li></ul>', '2025-08-28 15:48:31', '2025-08-28 16:39:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `product_category_id` bigint(20) UNSIGNED NOT NULL,
  `old_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount_percentage` decimal(12,2) NOT NULL DEFAULT 0.00,
  `current_price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `shipping_charge` decimal(12,2) NOT NULL DEFAULT 0.00,
  `average_review` decimal(8,2) NOT NULL DEFAULT 0.00,
  `thumbnail` varchar(191) NOT NULL,
  `main_file` varchar(191) DEFAULT NULL,
  `image_1` varchar(191) NOT NULL,
  `image_2` varchar(191) NOT NULL,
  `image_3` varchar(191) NOT NULL,
  `image_4` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `shipping_return` text DEFAULT NULL,
  `additional_information` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_feature` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `is_feature` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(191) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=deactivated',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_courses`
--

CREATE TABLE `promotion_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `uuid`, `user_id`, `exam_id`, `name`, `created_at`, `updated_at`) VALUES
(23, '8a78890f-4551-4253-91bd-60f002192fa8', 71, 13, 'make it true', '2025-07-08 01:27:24', '2025-07-08 01:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_option_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `is_correct_answer` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'yes, no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `uuid`, `user_id`, `question_id`, `question_option_id`, `name`, `is_correct_answer`, `created_at`, `updated_at`) VALUES
(63, 'c2a63305-e4ce-4881-9c9e-6abf70328837', 71, 23, NULL, 'True', 'yes', '2025-07-08 01:27:24', '2025-07-08 01:27:24'),
(64, 'd2e18073-c8f2-40fa-b650-67561de546d4', 71, 23, NULL, 'False', 'no', '2025-07-08 01:27:24', '2025-07-08 01:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `ranking_levels`
--

CREATE TABLE `ranking_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `from` decimal(10,2) DEFAULT 0.00,
  `to` decimal(10,2) DEFAULT 0.00,
  `description` varchar(191) DEFAULT NULL,
  `badge_image` varchar(191) DEFAULT NULL,
  `earning` int(11) DEFAULT NULL,
  `student` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranking_levels`
--

INSERT INTO `ranking_levels` (`id`, `uuid`, `name`, `type`, `from`, `to`, `description`, `badge_image`, `earning`, `student`, `serial_no`, `created_at`, `updated_at`) VALUES
(1, '9a7537f0-581a-4227-9ff6-d641fec2e44a', '1 Years of Membership', 1, 0.00, 365.00, '1 Years of Membership', 'frontend/assets/img/ranking_badges/membership_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(2, 'b3152dec-79d6-49e8-b9ea-7d86d9a21f11', 'Author Level 1', 2, 0.00, 365.00, 'Author Level 1', 'frontend/assets/img/ranking_badges/rank_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(3, 'c90ca6ff-54c8-40ef-9fc3-4d93a85df344', '0 to 5 Course', 3, 0.00, 5.00, '0 to 5 Course', 'frontend/assets/img/ranking_badges/course_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(4, 'c28eea7b-2f8f-43d8-9434-07b7cd475d59', '0 to 10 Student', 4, 0.00, 10.00, '0 to 10 Student', 'frontend/assets/img/ranking_badges/student_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(5, '3a5f47a4-8dcc-479d-9f69-67d9231fee27', '0 to 10 Sold', 5, 0.00, 10.00, '0 to 10 Sold', 'frontend/assets/img/ranking_badges/sale_1.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(6, '0297f8b2-ef42-44ca-b459-698005154046', '2 Years of Membership', 1, 366.00, 731.00, '2 Years of Membership', 'frontend/assets/img/ranking_badges/membership_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(7, '12c02b42-e33a-4deb-a99d-3a4d5b3bdeb6', 'Author Level 2', 2, 366.00, 1096.00, 'Author Level 2', 'frontend/assets/img/ranking_badges/rank_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(8, 'bc720110-2d17-436e-8988-cb629fa9c5ab', '6 to 16 Course', 3, 6.00, 16.00, '6 to 16 Course', 'frontend/assets/img/ranking_badges/course_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(9, 'a1ff60d7-1f79-4f89-bad3-908368038283', '11 to 31 Student', 4, 11.00, 31.00, '11 to 31 Student', 'frontend/assets/img/ranking_badges/student_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(10, '578a889c-0dca-4960-8378-c8eebab75e97', '11 to 31 Sold', 5, 11.00, 31.00, '11 to 31 Sold', 'frontend/assets/img/ranking_badges/sale_2.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(11, '99786c82-1557-456f-abe6-fe6fae6cf5b7', '3 Years of Membership', 1, 732.00, 1097.00, '3 Years of Membership', 'frontend/assets/img/ranking_badges/membership_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(12, '2e925e84-4039-419c-be8e-8c8cca77de78', 'Author Level 3', 2, 1097.00, 2192.00, 'Author Level 3', 'frontend/assets/img/ranking_badges/rank_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(13, '0e39ae42-d219-4a7e-af3d-9cb652591ba0', '17 to 32 Course', 3, 17.00, 32.00, '17 to 32 Course', 'frontend/assets/img/ranking_badges/course_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(14, '54bc597b-5555-41f0-9795-f11b130666c6', '32 to 62 Student', 4, 32.00, 62.00, '32 to 62 Student', 'frontend/assets/img/ranking_badges/student_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(15, '467a09ba-3efc-4de8-a4b1-42ccdaf245fa', '32 to 62 Sold', 5, 32.00, 62.00, '32 to 62 Sold', 'frontend/assets/img/ranking_badges/sale_3.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(16, 'bc4d0595-ae9d-456c-b45e-19b4d94d835d', '4 Years of Membership', 1, 1098.00, 1463.00, '4 Years of Membership', 'frontend/assets/img/ranking_badges/membership_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(17, 'd6b95157-61a9-4676-ad78-311491ba7968', 'Author Level 4', 2, 2193.00, 3653.00, 'Author Level 4', 'frontend/assets/img/ranking_badges/rank_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(18, '9113cc9f-1e30-4af8-8621-67313f8c0b15', '33 to 53 Course', 3, 33.00, 53.00, '33 to 53 Course', 'frontend/assets/img/ranking_badges/course_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(19, '1379b683-63ad-4ddc-93b6-67d8679ec535', '63 to 103 Student', 4, 63.00, 103.00, '63 to 103 Student', 'frontend/assets/img/ranking_badges/student_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(20, '452d0645-4baf-482f-8211-84e35dfce809', '63 to 103 Sold', 5, 63.00, 103.00, '63 to 103 Sold', 'frontend/assets/img/ranking_badges/sale_4.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(21, '3bc3bf00-5042-4997-9807-45ab475a4c6c', '5 Years of Membership', 1, 1464.00, 5114.00, '5 Years of Membership', 'frontend/assets/img/ranking_badges/membership_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(22, '2bc790fc-498e-4c0e-a459-27faaa5f157c', 'Author Level 5', 2, 3654.00, 5479.00, 'Author Level 5', 'frontend/assets/img/ranking_badges/rank_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(23, '4f44e662-ff69-4b44-81d3-bc0ae337163d', '54 to 79 Course', 3, 54.00, 79.00, '54 to 79 Course', 'frontend/assets/img/ranking_badges/course_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(24, '07da9daa-cacb-4d6b-a760-dc8fd47b26fe', '104 to 154 Student', 4, 104.00, 154.00, '104 to 154 Student', 'frontend/assets/img/ranking_badges/student_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34'),
(25, 'f88eb0be-aab3-47d7-9505-ba0e5ab8c8d1', '104 to 154 Sold', 5, 104.00, 154.00, '104 to 154 Sold', 'frontend/assets/img/ranking_badges/sale_5.png', NULL, NULL, NULL, '2022-12-04 17:05:34', '2022-12-04 17:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `enrollment_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_user_id` bigint(20) UNSIGNED NOT NULL,
  `reason` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'courseAdmin', 'web', '2025-06-30 04:23:57', '2025-06-30 04:23:57');

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
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
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
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `scorm`
--

CREATE TABLE `scorm` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resource_type` varchar(191) NOT NULL,
  `resource_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `origin_file` varchar(191) DEFAULT NULL,
  `version` varchar(191) NOT NULL,
  `duration` varchar(191) DEFAULT NULL,
  `duration_in_second` double NOT NULL DEFAULT 0,
  `ratio` double DEFAULT NULL,
  `uuid` varchar(191) NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `entry_url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scorm_sco`
--

CREATE TABLE `scorm_sco` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `scorm_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `sco_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `entry_url` varchar(191) DEFAULT NULL,
  `identifier` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `visible` tinyint(4) NOT NULL,
  `sco_parameters` longtext DEFAULT NULL,
  `launch_data` longtext DEFAULT NULL,
  `max_time_allowed` varchar(191) DEFAULT NULL,
  `time_limit_action` varchar(191) DEFAULT NULL,
  `block` tinyint(4) NOT NULL,
  `score_int` int(11) DEFAULT NULL,
  `score_decimal` decimal(10,7) DEFAULT NULL,
  `completion_threshold` decimal(10,7) DEFAULT NULL,
  `prerequisites` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `scorm_sco_tracking`
--

CREATE TABLE `scorm_sco_tracking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sco_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `progression` double NOT NULL,
  `score_raw` int(11) DEFAULT NULL,
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `score_scaled` decimal(10,7) DEFAULT NULL,
  `lesson_status` varchar(191) DEFAULT NULL,
  `completion_status` varchar(191) DEFAULT NULL,
  `session_time` int(11) DEFAULT NULL,
  `total_time_int` int(11) DEFAULT NULL,
  `total_time_string` varchar(191) DEFAULT NULL,
  `entry` varchar(191) DEFAULT NULL,
  `suspend_data` longtext DEFAULT NULL,
  `credit` varchar(191) DEFAULT NULL,
  `exit_mode` varchar(191) DEFAULT NULL,
  `lesson_location` varchar(191) DEFAULT NULL,
  `lesson_mode` varchar(191) DEFAULT NULL,
  `is_locked` tinyint(4) DEFAULT NULL,
  `details` longtext DEFAULT NULL COMMENT 'json_array',
  `latest_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_key` varchar(255) NOT NULL,
  `option_value` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `option_key`, `option_value`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Learning Space', '2022-12-04 17:05:33', '2025-06-30 02:41:56'),
(2, 'app_email', 'support@lerningspace.com', '2022-12-04 17:05:33', '2025-07-04 07:51:51'),
(3, 'app_contact_number', '(123-458-987254824185)', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'app_location', 'Riyadh King Abdul Aziz Branch Rd, Alyasmin, Riyadh 13322, KSA', '2022-12-04 17:05:33', '2025-07-04 07:51:51'),
(5, 'app_date_format', 'd/m/Y', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'app_timezone', 'Asia/Dhaka', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'allow_preloader', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'app_preloader', 'uploads_demo/setting/preloader.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'app_logo', 'uploads/setting/1751271117-hmwBtQVinp.png', '2022-12-04 17:05:33', '2025-06-30 02:41:57'),
(10, 'app_fav_icon', 'uploads/setting/1751865431-yeatEfW5KW.png', '2022-12-04 17:05:33', '2025-07-06 23:47:11'),
(11, 'app_copyright', '© 2025 Learning Space . All Rights Reserved.', '2022-12-04 17:05:33', '2025-07-04 07:50:12'),
(12, 'app_developed', 'AM Tech IT Solutions', '2022-12-04 17:05:33', '2025-07-09 22:52:21'),
(13, 'og_title', 'LMS - Learning Management System', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, 'og_description', 'Learning Management System', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(15, 'zoom_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(16, 'bbb_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(17, 'jitsi_status', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(18, 'jitsi_server_base_url', 'https://meet.jit.si/', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(19, 'registration_email_verification', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(20, 'footer_quote', NULL, '2022-12-04 17:05:33', '2025-07-09 02:30:52'),
(21, 'paystack_currency', 'SAR', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(22, 'paystack_conversion_rate', '420', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(23, 'paystack_status', '0', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(24, 'PAYSTACK_PUBLIC_KEY', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(25, 'PAYSTACK_SECRET_KEY', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(26, 'paypal_currency', 'USD', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(27, 'paypal_conversion_rate', '0.98', '2022-12-04 17:05:33', '2025-07-17 08:07:14'),
(28, 'paypal_status', '1', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(29, 'PAYPAL_MODE', 'sandbox', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(30, 'PAYPAL_CLIENT_ID', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(31, 'PAYPAL_SECRET', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(32, 'stripe_currency', 'SAR', '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(33, 'stripe_conversion_rate', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(34, 'stripe_status', '1', '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(35, 'STRIPE_MODE', 'sandbox', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(36, 'STRIPE_SECRET_KEY', '', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(37, 'STRIPE_PUBLIC_KEY', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(38, 'razorpay_currency', 'SAR', '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(39, 'razorpay_conversion_rate', '78.04', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(40, 'razorpay_status', '0', '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(41, 'RAZORPAY_KEY', 'rzp_test_jI4LNxngs3tF4n', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(42, 'RAZORPAY_SECRET', 'lZo8JpuK897uLRrnMB9imhIy', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(43, 'mollie_currency', 'SAR', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(44, 'mollie_conversion_rate', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(45, 'mollie_status', '0', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(46, 'MOLLIE_KEY', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(47, 'im_currency', 'SAR', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(48, 'im_conversion_rate', '79.84', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(49, 'im_status', '0', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(50, 'IM_API_KEY', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(51, 'IM_AUTH_TOKEN', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(52, 'IM_URL', 'https://test.instamojo.com/api/1.1/payment-requests/', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(53, 'sslcommerz_currency', 'SAR', '2022-12-04 17:05:33', '2025-07-17 08:05:37'),
(54, 'sslcommerz_conversion_rate', '92', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(55, 'sslcommerz_status', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(56, 'sslcommerz_mode', 'sandbox', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(57, 'SSLCZ_STORE_ID', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(58, 'SSLCZ_STORE_PASSWD', NULL, '2022-12-04 17:05:33', '2025-07-08 01:00:28'),
(59, 'MAIL_DRIVER', 'smtp', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(60, 'MAIL_HOST', 'mailhog', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(61, 'MAIL_PORT', '1025', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(62, 'MAIL_USERNAME', '', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(63, 'MAIL_PASSWORD', '', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(64, 'MAIL_ENCRYPTION', '', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(65, 'MAIL_FROM_ADDRESS', 'hello@example.com', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(66, 'MAIL_FROM_NAME', '${APP_NAME}', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(67, 'MAIL_MAILER', 'smtp', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(68, 'update', 'Update', '2022-12-04 17:05:33', '2025-07-04 05:46:41'),
(69, 'sign_up_left_text', '.', '2022-12-04 17:05:33', '2025-07-25 14:22:26'),
(70, 'sign_up_left_image', '', '2022-12-04 17:05:33', '2025-07-09 02:30:53'),
(71, 'forgot_title', 'Forgot Password?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(72, 'forgot_subtitle', 'Enter the email address you used when you joined and we’ll send you instructions to reset your password.            For security reasons, we do NOT store your password. So rest assured that we will never send your password via email.', '2022-12-04 17:05:33', '2025-06-30 02:41:56'),
(73, 'forgot_btn_name', 'Send Reset Instructions', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(74, 'facebook_url', '#', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(75, 'twitter_url', '#', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(76, 'linkedin_url', '#', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(77, 'pinterest_url', '#', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(78, 'app_instructor_footer_title', 'Join One Of The World’s Largest Learning Marketplaces.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(79, 'app_instructor_footer_subtitle', 'Donald valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my tree', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(80, 'get_in_touch_title', 'Get in Touch', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(81, 'send_us_msg_title', 'We’d love to hear from you!', '2022-12-04 17:05:33', '2025-07-25 12:54:13'),
(82, 'contact_us_location', 'Riyadh King Abdul Aziz Branch Rd, Alyasmin, Riyadh 13322, KSA.', '2022-12-04 17:05:33', '2025-07-19 07:21:43'),
(83, 'contact_us_email_one', 'customer.support@learningspace.com', '2022-12-04 17:05:33', '2025-07-19 07:21:43'),
(84, 'contact_us_email_two', 'career.support@learningspace.com', '2022-12-04 17:05:33', '2025-07-19 07:21:43'),
(85, 'contact_us_phone_one', '+966 11 242 8558', '2022-12-04 17:05:33', '2025-07-25 12:53:42'),
(86, 'contact_us_phone_two', '+966 11 242 8558', '2022-12-04 17:05:33', '2025-07-25 12:53:42'),
(87, 'contact_us_map_link', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d115948.1870496836!2d46.55563345173968!3d24.748128022671537!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e2f1d1873c9783b%3A0x9f354666666ca992!2zTGVhcm5pbmcgU3BhY2Ug4oCP2YXZg9in2YYg2KfZhNiq2LnZhNmF!5e0!3m2!1sen!2sin!4v1752909581343!5m2!1sen!2sin', '2022-12-04 17:05:33', '2025-07-19 07:21:43'),
(88, 'contact_us_description', 'Our team is here to assist you with any questions, feedback, or support you need. Select your preferred way to connect, and we’ll be happy to help!', '2022-12-04 17:05:33', '2025-07-25 12:49:46'),
(89, 'faq_title', 'Frequently Ask Questions.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(90, 'faq_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(91, 'faq_image_title', 'Still no luck?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(92, 'faq_image', 'uploads_demo/setting\\faq-img.jpg', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(93, 'faq_tab_first_title', 'Item Support', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(94, 'faq_tab_first_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(95, 'faq_tab_sec_title', 'Licensing', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(96, 'faq_tab_sec_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(97, 'faq_tab_third_title', 'Your Account', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(98, 'faq_tab_third_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(99, 'faq_tab_four_title', 'Tax & Complications', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(100, 'faq_tab_four_subtitle', 'Ranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that was a greater artist than now. When, while the lovely valley with vapour around me, and the meridian', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(101, 'home_special_feature_first_logo', 'uploads_demo/setting\\feature-icon1.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(102, 'home_special_feature_first_title', 'Learn From Experts', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(103, 'home_special_feature_first_subtitle', 'Mornings of spring which I enjoy with my whole heart about the gen', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(104, 'home_special_feature_second_logo', 'uploads_demo/setting/feature-icon2.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(105, 'home_special_feature_second_title', 'Earn a Certificate', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(106, 'home_special_feature_second_subtitle', 'Mornings of spring which I enjoy with my whole heart about the gen', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(107, 'home_special_feature_third_logo', 'uploads_demo/setting\\feature-icon3.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(108, 'home_special_feature_third_title', '5000+ Courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(109, 'home_special_feature_third_subtitle', 'Serenity has taken possession of my entire soul, like these sweet spring', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(110, 'course_logo', 'uploads_demo/setting/courses-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(111, 'course_title', 'A Broad Selection Of Courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(112, 'course_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(113, 'bundle_course_logo', 'uploads_demo/setting/bundle-courses-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(114, 'bundle_course_title', 'Latest Bundle Courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(115, 'bundle_course_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(116, 'top_category_logo', 'uploads_demo/setting/categories-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(117, 'top_category_title', 'Our Top Categories', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(118, 'top_category_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(119, 'top_instructor_logo', 'uploads_demo/setting\\top-instructor-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(120, 'top_instructor_title', 'Our Top Instructor.', '2022-12-04 17:05:33', '2025-07-19 22:27:49'),
(121, 'top_instructor_subtitle', '.', '2022-12-04 17:05:33', '2025-07-19 22:27:49'),
(122, 'become_instructor_video', 'uploads_demo/setting/test.mp4', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(123, 'become_instructor_video_preview_image', 'uploads_demo/setting/video-poster.jpg', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(124, 'become_instructor_video_logo', 'uploads_demo/setting/top-instructor-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(125, 'become_instructor_video_title', 'We Only Accept Professional Courses Form Professional Instructors', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(126, 'become_instructor_video_subtitle', 'Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(127, 'customer_say_logo', 'uploads_demo/setting/customers-say-heading-img.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(128, 'customer_say_title', 'What Our Valuable Customers Say.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(129, 'customer_say_first_name', 'DANIEL JHON', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(130, 'customer_say_first_position', 'UI/UX DESIGNER', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(131, 'customer_say_first_comment_title', 'Great instructor, great course', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(132, 'customer_say_first_comment_description', 'Wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(133, 'customer_say_first_comment_rating_star', '5', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(134, 'customer_say_second_name', 'NORTH', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(135, 'customer_say_second_position', 'DEVELOPER', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(136, 'customer_say_second_comment_title', 'Awesome course & good response', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(137, 'customer_say_second_comment_description', 'Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(138, 'customer_say_second_comment_rating_star', '4.5', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(139, 'customer_say_third_name', 'HIBRUPATH', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(140, 'customer_say_third_position', 'MARKETER', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(141, 'customer_say_third_comment_title', 'Fantastic course', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(142, 'customer_say_third_comment_description', 'Noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(143, 'customer_say_third_comment_rating_star', '5', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(144, 'achievement_first_logo', 'uploads_demo/setting\\1.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(145, 'achievement_first_title', 'Successfully trained', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(146, 'achievement_first_subtitle', '2000+ students', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(147, 'achievement_second_logo', 'uploads_demo/setting\\2.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(148, 'achievement_second_title', 'Video courses', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(149, 'achievement_second_subtitle', '2000+ students', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(150, 'achievement_third_logo', 'uploads_demo/setting\\3.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(151, 'achievement_third_title', 'Expert instructor', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(152, 'achievement_third_subtitle', '2000+ students', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(153, 'achievement_four_logo', 'uploads_demo/setting\\4.png', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(154, 'achievement_four_title', 'Proudly Received', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(155, 'achievement_four_title', 'Proudly Received', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(156, 'achievement_four_subtitle', '2000+ students', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(157, 'support_faq_title', 'Frequently Ask Questions. 2', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(158, 'support_faq_subtitle', 'CHOOSE FROM 5,000 ONLINE VIDEO COURSES WITH NEW ADDITIONS 3', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(159, 'ticket_title', 'Is That Helpful?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(160, 'ticket_subtitle', 'Are You Still Confusion?', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(161, 'cookie_button_name', 'Allow cookies', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(162, 'cookie_msg', 'Your experience on this site will be improved by allowing cookies', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(163, 'COOKIE_CONSENT_STATUS', '1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(164, 'platform_charge', '2', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(165, 'sell_commission', '0', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(166, 'app_version', '27', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(167, 'current_version', '7.1', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(288, 'leck', '2025-08-28 17:51:50', '2025-06-30 01:11:30', '2025-08-28 12:21:50'),
(289, 'vldl', '1', '2025-06-30 01:11:30', '2025-06-30 01:11:30'),
(290, 'iel', '1', '2025-06-30 01:11:30', '2025-08-28 12:21:50'),
(291, 'currency_id', '6', '2025-06-30 02:41:56', '2025-07-09 22:52:21'),
(292, 'FORCE_HTTPS', 'false', '2025-06-30 02:41:56', '2025-07-09 22:52:21'),
(293, 'language_id', '1', '2025-06-30 02:41:56', '2025-06-30 02:41:56'),
(294, 'TIMEZONE', 'Asia/Kolkata', '2025-06-30 02:41:56', '2025-07-09 22:52:21'),
(295, 'pwa_enable', '0', '2025-06-30 02:41:56', '2025-06-30 02:41:56'),
(296, 'enable_email_notification', '0', '2025-06-30 02:41:56', '2025-06-30 02:41:56'),
(297, 'instagram_url', NULL, '2025-06-30 02:41:56', '2025-06-30 02:41:56'),
(298, 'tiktok_url', NULL, '2025-06-30 02:41:56', '2025-06-30 02:41:56'),
(299, 'maintenance_mode', '2', '2025-06-30 03:20:59', '2025-06-30 03:23:51'),
(300, 'maintenance_secret_key', NULL, '2025-06-30 03:20:59', '2025-06-30 03:23:51'),
(301, 'theme', '1', '2025-07-04 05:46:41', '2025-07-04 07:47:11'),
(302, 'category_course_title', 'Course Category', '2025-07-04 05:51:07', '2025-07-04 05:51:07'),
(303, 'category_course_subtitle', 'Course Category Subtitle', '2025-07-04 05:51:07', '2025-07-04 05:51:07'),
(304, 'category_course_logo', 'uploads/setting/1751868820-sKcazKJz6L.png', '2025-07-04 05:51:07', '2025-07-07 00:43:40'),
(305, 'banner_left_card_title', NULL, '2025-07-04 06:49:06', '2025-07-04 06:49:06'),
(306, 'banner_left_card_description', NULL, '2025-07-04 06:49:06', '2025-07-04 06:49:06'),
(307, 'banner_right_card_title', NULL, '2025-07-04 06:49:06', '2025-07-04 06:49:06'),
(308, 'banner_right_card_description', NULL, '2025-07-04 06:49:06', '2025-07-04 06:49:06'),
(309, 'app_color_design_type', '2', '2025-07-04 10:01:26', '2025-07-04 10:03:30'),
(310, 'app_theme_color', '#ebb207', '2025-07-04 10:01:26', '2025-07-04 10:06:11'),
(311, 'app_navbar_background_color', '#ffffff', '2025-07-04 10:01:26', '2025-07-07 01:20:44'),
(312, 'app_body_font_color', '#000000', '2025-07-04 10:01:26', '2025-07-07 01:25:41'),
(313, 'app_heading_color', '#000000', '2025-07-04 10:01:26', '2025-07-07 01:19:46'),
(314, 'app_gradiant_banner_color1', '#000000', '2025-07-04 10:01:26', '2025-07-04 10:01:26'),
(315, 'app_gradiant_banner_color2', '#000000', '2025-07-04 10:01:26', '2025-07-04 10:01:26'),
(316, 'app_gradiant_banner_color', 'linear-gradient(to right, #000000, #000000)', '2025-07-04 10:01:26', '2025-07-04 10:01:26'),
(317, 'app_gradiant_footer_color1', '#f2f3f5', '2025-07-04 10:01:26', '2025-07-09 02:15:20'),
(318, 'app_gradiant_footer_color2', '#f2f3f5', '2025-07-04 10:01:26', '2025-07-09 02:15:20'),
(319, 'app_gradiant_footer_color', 'linear-gradient(180deg, #f2f3f5, #f2f3f5)', '2025-07-04 10:01:26', '2025-07-09 02:15:20'),
(320, 'app_gradiant_overlay_background_color_opacity', '0', '2025-07-04 10:01:26', '2025-07-09 02:18:36'),
(321, 'app_black_logo', 'uploads/setting/1751865431-1VoPGm7zHn.png', '2025-07-06 23:47:11', '2025-07-06 23:47:11'),
(322, 'upcoming_course_title', 'Upcoming Courses', '2025-07-07 00:54:53', '2025-07-07 00:54:53'),
(323, 'upcoming_course_subtitle', 'Coming Soon', '2025-07-07 00:54:53', '2025-07-07 00:54:53'),
(324, 'upcoming_course_logo', 'uploads/setting/1751869493-d7MX5DI53E.png', '2025-07-07 00:54:53', '2025-07-07 00:54:53'),
(325, 'mercadopago_currency', 'SAR', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(326, 'mercadopago_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(327, 'mercadopago_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(328, 'MERCADO_PAGO_CLIENT_ID', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(329, 'MERCADO_PAGO_CLIENT_SECRET', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(330, 'flutterwave_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(331, 'flutterwave_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(332, 'flutterwave_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(333, 'FLW_PUBLIC_KEY', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(334, 'FLW_SECRET_KEY', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(335, 'FLW_SECRET_HASH', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(336, 'coinbase_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(337, 'coinbase_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(338, 'coinbase_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(339, 'coinbase_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(340, 'coinbase_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(341, 'zitopay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(342, 'zitopay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(343, 'zitopay_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(344, 'zitopay_username', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(345, 'iyzipay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(346, 'iyzipay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(347, 'iyzipay_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(348, 'iyzipay_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(349, 'iyzipay_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(350, 'iyzipay_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(351, 'bitpay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(352, 'bitpay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(353, 'bitpay_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(354, 'bitpay_mode', 'testnet', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(355, 'bitpay_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(356, 'braintree_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(357, 'braintree_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(358, 'braintree_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(359, 'braintree_test_mode', '0', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(360, 'braintree_merchant_id', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(361, 'braintree_public_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(362, 'braintree_private_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(363, 'binance_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(364, 'binance_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(365, 'binance_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(366, 'binance_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(367, 'binance_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(368, 'binance_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(369, 'alipay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(370, 'alipay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(371, 'alipay_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(372, 'alipay_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(373, 'alipay_url', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(374, 'alipay_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(375, 'alipay_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(376, 'paytm_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(377, 'paytm_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(378, 'paytm_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(379, 'paytm_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(380, 'paytm_url', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(381, 'paytm_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(382, 'paytm_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(383, 'maxicash_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(384, 'maxicash_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(385, 'maxicash_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(386, 'maxicash_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(387, 'maxicash_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(388, 'maxicash_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(389, 'payhere_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(390, 'payhere_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(391, 'payhere_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(392, 'payhere_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(393, 'payhere_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(394, 'payhere_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(395, 'cinetpay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(396, 'cinetpay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(397, 'cinetpay_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(398, 'cinetpay_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(399, 'cinetpay_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(400, 'cinetpay_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(401, 'voguepay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(402, 'voguepay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(403, 'voguepay_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(404, 'voguepay_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(405, 'voguepay_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(406, 'toyyibpay_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(407, 'toyyibpay_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(408, 'toyyibpay_status', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(409, 'toyyibpay_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(410, 'toyyibpay_key', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(411, 'toyyibpay_secret', NULL, '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(412, 'paymob_currency', 'AFA', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(413, 'paymob_conversion_rate', '1', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(414, 'paymob_status', '0', '2025-07-08 01:00:28', '2025-07-17 08:05:37'),
(415, 'paymob_mode', 'sandbox', '2025-07-08 01:00:28', '2025-07-08 01:00:28'),
(416, 'paymob_key', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(417, 'paymob_secret', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(418, 'authorize_currency', 'AFA', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(419, 'authorize_conversion_rate', '1', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(420, 'authorize_status', '0', '2025-07-08 01:00:29', '2025-07-17 08:05:37'),
(421, 'authorize_mode', 'sandbox', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(422, 'authorize_key', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(423, 'authorize_secret', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(424, 'xendit_currency', 'AFA', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(425, 'xendit_conversion_rate', '1', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(426, 'xendit_status', '0', '2025-07-08 01:00:29', '2025-07-17 08:05:37'),
(427, 'xendit_mode', 'sandbox', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(428, 'xendit_key', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(429, 'paddle_currency', 'AFA', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(430, 'paddle_conversion_rate', '1', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(431, 'paddle_status', '0', '2025-07-08 01:00:29', '2025-07-17 08:05:37'),
(432, 'paddle_mode', 'sandbox', '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(433, 'paddle_url', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29'),
(434, 'paddle_key', NULL, '2025-07-08 01:00:29', '2025-07-08 01:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=active, 0=deactivated',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `title`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Management', 'Management', 1, NULL, NULL, NULL),
(2, 'Web Development', 'Web Development', 1, NULL, NULL, NULL),
(3, 'Mobile Development', 'Mobile Development', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_promotion_tags`
--

CREATE TABLE `special_promotion_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `special_promotion_tag_courses`
--

CREATE TABLE `special_promotion_tag_courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `special_promotion_tag_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dhaka', NULL, NULL),
(2, 1, 'Karnataka', NULL, '2025-07-09 22:40:47'),
(3, 1, 'Comilla', NULL, NULL),
(4, 2, 'California', NULL, NULL),
(5, 2, 'Texas', NULL, NULL),
(6, 2, 'Florida', NULL, NULL),
(7, 3, 'Argyll', NULL, NULL),
(8, 3, 'Belfast', NULL, NULL),
(9, 3, 'Cambridge', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `organization_id` bigint(20) UNSIGNED DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `state_id` bigint(20) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `about_me` mediumtext DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=approved, 0=pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `uuid`, `user_id`, `organization_id`, `country_id`, `province_id`, `state_id`, `city_id`, `first_name`, `last_name`, `phone_number`, `postal_code`, `address`, `about_me`, `gender`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(69, 'b7fa7f00-296d-44c5-b869-085e04e4d7b7', 70, NULL, 3, NULL, NULL, NULL, 'Manic', 'MM', '9164873328', '525888', 'ybuvewbib', 'cwubiub', 'Male', 1, '2025-06-30 04:26:37', '2025-06-30 04:26:37', NULL),
(70, 'cb10110b-89af-4f87-9f47-57f6b89d8ee5', 71, NULL, NULL, NULL, NULL, NULL, 'Instructor11', '11', '9874566633', NULL, NULL, NULL, NULL, 1, '2025-07-07 00:20:49', '2025-07-07 00:20:49', NULL),
(71, '82dba424-a08f-4e80-85bb-b2da52f89fb5', 72, NULL, 4, NULL, NULL, NULL, 'Manic', 'M', '855522525', '855665', 'biueb', 'well Established Business men', 'Male', 1, '2025-07-09 18:08:45', '2025-07-09 18:08:45', NULL),
(72, '055910e8-69c4-432e-a46d-f8b8687bfcb4', 73, NULL, NULL, NULL, NULL, NULL, 'MeStudent', 'Student', '9765441123', NULL, NULL, NULL, NULL, 1, '2025-07-17 07:58:52', '2025-07-17 07:58:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_certificates`
--

CREATE TABLE `student_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `certificate_number` varchar(191) DEFAULT NULL,
  `course_id` bigint(20) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `uuid`, `category_id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `created_at`, `updated_at`) VALUES
(1, '9f2e9f01-4b48-40a3-9d11-d1badce66abe', 1, 'Web Development', 'web-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'ee7dbc19-7ad1-4567-9c4f-12b1d5447e2d', 1, 'Data Science', 'data-science', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, '7cc4d2f8-529f-4e89-b28a-ed3a9a243883', 1, 'Mobile Development', 'mobile-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, '50017599-5bf8-401e-b8e8-ac74a5483ec4', 1, 'Programming Language', 'programming-language', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '2d9561f5-abb6-49a9-8f01-b9871e0e377f', 1, 'Game Development', 'game-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'e5bd8dee-2b3d-4b4c-bc1f-5717b4049a00', 2, 'IT Certifications', 'it-certifications', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'aee6a731-0f3d-4abf-87d4-59636ce657f2', 2, 'Network & Security', 'network-security', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, '04ec60ec-ee72-4bbf-a58e-bce7fe2e8cbb', 2, 'Hardware', 'hardware', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, 'b74c0ee8-81ac-4c87-bace-dbbfd17b1be3', 2, 'Operating System & Servers', 'operating-system-servers', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(10, 'ef6c46a4-e09c-4af6-96e2-1995eeeee9ae', 3, 'Microsoft', 'microsoft', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(11, 'c966ea96-e96f-44a6-9b5a-ef9ae56844d4', 3, 'Apple', 'apple', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(12, 'f02d2d08-4acb-4cb8-8ce7-8d1bdaa6ca7c', 3, 'Google', 'google', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(13, '3b377226-0b6e-4896-a679-e12e329d6ffd', 4, 'Career Development', 'career-development', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(14, '57c46b26-520f-4286-bfc5-6372a9cd924a', 4, 'Creativity', 'creativity', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(15, 'bad12e18-78bb-46c1-8e2b-e428bda8eb5d', 5, 'Communication', 'communication', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(16, 'e593cfab-7cdd-40d9-a0f2-27f18bf02b89', 5, 'Management', 'management', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(17, '37f7ed7e-d3da-470b-9be6-7655342457af', 5, 'Sales', 'sales', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(18, '9377e664-e92f-4839-ba85-829629ad296d', 7, 'Web Design', 'web-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(19, '0e3195ef-68c2-4044-8ee3-727cd504e586', 7, 'Graphic Design', 'graphic-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(20, '41c9906d-1a92-4529-93f3-75ee342dbdb3', 7, 'Game Design', 'game-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(21, '051ab930-2a76-4e6c-a1a6-2d6681427e4b', 7, 'Fashion Design', 'fashion-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(22, '5cafa706-4015-49e6-babf-0a7f0495012f', 7, 'User Experience Design', 'user-experience-design', NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_commission_histories`
--

CREATE TABLE `subscription_commission_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `monthly_distribution_history_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sub_amount` decimal(12,2) NOT NULL,
  `commission_percentage` decimal(2,2) NOT NULL,
  `admin_commission` decimal(12,2) NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `paid_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_questions`
--

CREATE TABLE `support_ticket_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_questions`
--

INSERT INTO `support_ticket_questions` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'Where can I see the status of my refund?', ' In the Refund Status column you can see the date your refund request was submitted or when it was processed.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'When will I receive my refund?', ' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'Why was my refund request denied?', ' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'What is a “credit refund”?', ' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMS Credit', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, 'Where can I see the status of my refund?', ' In the Refund Status column you can see the date your refund request was submitted or when it was processed.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, 'When will I receive my refund?', ' Refund requests are submitted immediately to your payment processor or financial institution after Udemy has received and processed your request. It may take  5 to 10 business days or longer to post the funds in your account, depending on your financial institution or location.', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, 'Why was my refund request denied?', ' All eligible courses purchased on Udemy can be refunded within 30 days, provided the request meets the guidelines in our refund policy. ', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'What is a “credit refund”?', ' In cases where a transaction is not eligible for a refund to your original payment method, the refund will be granted using LMS Credit', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `uuid`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'd45fd1e7-a1e0-4d3f-954d-bd56dc95e48f', 'Design', 'design', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, '90bfec22-452f-42f4-b9aa-03c053aecc24', 'Development', 'development', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'b375ca10-66e9-43c1-8593-a6bdcc8ab3d9', 'IT', 'it', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'eecd9f5d-f023-4fe2-afcb-23b9ccc558b9', 'Programming', 'programming', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(5, '8f9fbd32-7878-443a-a531-faf1c4428b31', 'Travel', 'travel', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(6, '235b8c44-a340-4929-a48c-6238314d6af4', 'Music', 'music', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(7, '36ec1ef2-5bca-4d06-9446-a5d8ab6abdab', 'Digital marketing', 'digital-marketing', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(8, 'd8dc6caa-b578-49f6-aaca-e25783afe34b', 'Science', 'science', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(9, '346c01be-ab53-406f-acc4-73c5fddc0b6f', 'Math', 'math', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `tag_products`
--

CREATE TABLE `tag_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `take_exams`
--

CREATE TABLE `take_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `exam_id` bigint(20) NOT NULL,
  `number_of_correct_answer` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `take_exams`
--

INSERT INTO `take_exams` (`id`, `user_id`, `exam_id`, `number_of_correct_answer`, `created_at`, `updated_at`) VALUES
(9, 70, 13, 1, '2025-07-08 01:31:30', '2025-07-08 01:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `image`, `name`, `designation`, `created_at`, `updated_at`) VALUES
(1, 'uploads_demo/team_member/1.jpg', 'Arnold keens', 'CREATIVE DIRECTOR', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(2, 'uploads_demo/team_member/2.jpg', 'James Bond', 'Designer', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(3, 'uploads_demo/team_member/3.jpg', 'Ketty Perry', 'Customer Support', '2022-12-04 17:05:33', '2022-12-04 17:05:33'),
(4, 'uploads_demo/team_member/4.jpg', 'Scarlett Johansson', 'CREATIVE DIRECTOR', '2022-12-04 17:05:33', '2022-12-04 17:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `ticket_number` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=Open, 2=Closed',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `related_service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `priority_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `uuid`, `ticket_number`, `name`, `email`, `subject`, `status`, `user_id`, `department_id`, `related_service_id`, `priority_id`, `created_at`, `updated_at`) VALUES
(2, 'c3440e26-ea49-40da-a46c-9d597f1f5000', '102', 'Manic MM', 'manic.blogg+098@gmail.com', 'viuwbeiu hiwui', 1, 70, NULL, NULL, NULL, '2025-06-30 04:31:41', '2025-06-30 04:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_departments`
--

CREATE TABLE `ticket_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_departments`
--

INSERT INTO `ticket_departments` (`id`, `uuid`, `name`, `created_at`, `updated_at`) VALUES
(1, '1a1ff352-749e-42da-a127-316f5f52ed3c', 'feild Teams', '2025-06-30 04:47:13', '2025-06-30 04:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply_admin_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `sender_user_id`, `reply_admin_user_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(3, 2, 70, NULL, 'cwkq cl l kl', NULL, '2025-06-30 04:31:41', '2025-06-30 04:31:41'),
(4, 2, NULL, 1, 'cuvuw usqvuayv', NULL, '2025-06-30 04:32:43', '2025-06-30 04:32:43');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_priorities`
--

CREATE TABLE `ticket_priorities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_related_services`
--

CREATE TABLE `ticket_related_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hash` varchar(191) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `order_item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(12,3) NOT NULL DEFAULT 0.000,
  `narration` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `area_code` varchar(10) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1=admin, 2=instructor, 3=student',
  `phone_number` varchar(50) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `lat` decimal(12,8) DEFAULT NULL,
  `long` decimal(12,8) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `forgot_token` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `og_image` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_affiliator` tinyint(4) NOT NULL DEFAULT 0,
  `balance` int(11) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sub` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `area_code`, `mobile_number`, `email_verified_at`, `password`, `role`, `phone_number`, `address`, `lat`, `long`, `image`, `avatar`, `forgot_token`, `provider_id`, `meta_title`, `meta_description`, `meta_keywords`, `og_image`, `remember_token`, `created_at`, `updated_at`, `is_affiliator`, `balance`, `deleted_at`, `sub`) VALUES
(1, 'Administration', 'admin@gmail.com', NULL, NULL, '2022-12-04 17:05:33', '$2y$10$EgTgia.sBwaQ3Y.Sj2PXY.KajFK0XyXA2WrOV2Ghva99sTzzm/vc2', 1, '+8801999999999', 'Dhaka, Bangladesh', NULL, NULL, 'uploads_demo/user/admin-avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-04 17:05:33', '2022-12-04 17:05:33', 0, 0, NULL, NULL),
(70, 'Manic MM', 'manic.blogg+098@gmail.com', '44', '9164873328', '2025-06-30 04:26:37', '$2y$10$51zkC8NPWiPp1ThVRGX1O.DLMJFjJCtyIUt/b0coJ7lbxrgA0WSJm', 3, '9164873328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-30 04:26:37', '2025-07-08 00:48:21', 0, 0, NULL, NULL),
(71, 'Instructor11 11', 'instructor@gmail.com', '966', '9874566633', '2025-07-07 00:20:47', '$2y$10$/MBRgN13PLEgI8cQIXJfweMmSRDKg5R9EsXxRVh0s/0e27kLY3.n6', 2, '9874566633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OS3IRIvKNW1N1JPYZUbxyLH0rJJCEZuYlbXoin9q', '2025-07-07 00:20:47', '2025-07-07 00:22:53', 0, 0, NULL, NULL),
(72, 'Manic M', 'manic.blogg+Ins@gmail.com', '966', '855522525', '2025-07-09 18:08:45', '$2y$10$WNrgNbV2UNz8al9HXobel.O0X1AbfP4azLhqDZM.kcIFDPwC8JLkG', 2, '855522525', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-07-09 18:08:45', '2025-07-09 18:08:45', 0, 0, NULL, NULL),
(73, 'MeStudent Student', 'student@gmail.com', '91', '9765441123', '2025-07-17 07:58:50', '$2y$10$QDOIPOEwd46XDcpWRrOdDemT4lcrD2GQEpUFpKEdlM5JMEKwgZOoC', 3, '9765441123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ejtihIE02Uqhzp1GlAKMkz6QvsgJZZIUliBxbVRR', '2025-07-17 07:58:50', '2025-07-17 07:58:50', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ranking_level_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_badges`
--

INSERT INTO `user_badges` (`user_id`, `ranking_level_id`) VALUES
(71, 1),
(71, 2),
(71, 3),
(71, 4),
(71, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_cards`
--

CREATE TABLE `user_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_holder_name` varchar(255) NOT NULL,
  `month` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_follower`
--

CREATE TABLE `user_follower` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `follower_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_packages`
--

CREATE TABLE `user_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription_type` tinyint(4) NOT NULL DEFAULT 1,
  `enroll_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL,
  `student` int(11) NOT NULL DEFAULT 0,
  `instructor` int(11) NOT NULL DEFAULT 0,
  `course` int(11) NOT NULL DEFAULT 0,
  `consultancy` int(11) NOT NULL DEFAULT 0,
  `subscription_course` int(11) NOT NULL DEFAULT 0,
  `bundle_course` int(11) NOT NULL DEFAULT 0,
  `product` int(11) NOT NULL DEFAULT 0,
  `device` int(11) NOT NULL DEFAULT 0,
  `admin_commission` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_paypals`
--

CREATE TABLE `user_paypals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_recharges`
--

CREATE TABLE `wallet_recharges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bundle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `beneficiary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transection_id` varchar(80) NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(100) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=complete, 2=rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoom_settings`
--

CREATE TABLE `zoom_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `api_key` varchar(191) NOT NULL,
  `api_secret` varchar(191) NOT NULL,
  `timezone` varchar(191) NOT NULL,
  `host_video` varchar(191) NOT NULL DEFAULT '0' COMMENT 'true, false',
  `participant_video` varchar(191) NOT NULL DEFAULT '0' COMMENT 'true, false',
  `waiting_room` varchar(191) NOT NULL DEFAULT '0' COMMENT 'true, false',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=disable, 1=active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zoom_settings`
--

INSERT INTO `zoom_settings` (`id`, `account_id`, `user_id`, `api_key`, `api_secret`, `timezone`, `host_video`, `participant_video`, `waiting_room`, `status`, `created_at`, `updated_at`) VALUES
(3, 'vybhu', 71, 'ctfvyg', 'rdftg yh', 'Asia/Kolkata', '1', '1', '1', 1, '2025-07-08 01:24:47', '2025-07-08 01:24:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_generals`
--
ALTER TABLE `about_us_generals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliate_history`
--
ALTER TABLE `affiliate_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `affiliate_history_hash_unique` (`hash`);

--
-- Indexes for table `affiliate_request`
--
ALTER TABLE `affiliate_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignments_uuid_unique` (`uuid`);

--
-- Indexes for table `assignment_files`
--
ALTER TABLE `assignment_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `assignment_submits_uuid_unique` (`uuid`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beneficiaries_uuid_unique` (`uuid`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_uuid_unique` (`uuid`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_uuid_unique` (`uuid`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_histories`
--
ALTER TABLE `booking_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_histories_uuid_unique` (`uuid`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundles_uuid_unique` (`uuid`);

--
-- Indexes for table `bundle_courses`
--
ALTER TABLE `bundle_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_management`
--
ALTER TABLE `cart_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_uuid_unique` (`uuid`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_uuid_unique` (`uuid`);

--
-- Indexes for table `certificate_by_instructors`
--
ALTER TABLE `certificate_by_instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_by_instructors_uuid_unique` (`uuid`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_logos`
--
ALTER TABLE `client_logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultation_slots`
--
ALTER TABLE `consultation_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_issues`
--
ALTER TABLE `contact_us_issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_us_issues_uuid_unique` (`uuid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_uuid_unique` (`uuid`);

--
-- Indexes for table `coupon_courses`
--
ALTER TABLE `coupon_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_instructors`
--
ALTER TABLE `coupon_instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_uuid_unique` (`uuid`);

--
-- Indexes for table `course_form_settings`
--
ALTER TABLE `course_form_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_instructor`
--
ALTER TABLE `course_instructor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_languages`
--
ALTER TABLE `course_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_languages_uuid_unique` (`uuid`);

--
-- Indexes for table `course_lectures`
--
ALTER TABLE `course_lectures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lectures_uuid_unique` (`uuid`);

--
-- Indexes for table `course_lecture_views`
--
ALTER TABLE `course_lecture_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_lessons`
--
ALTER TABLE `course_lessons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_lessons_uuid_unique` (`uuid`);

--
-- Indexes for table `course_resources`
--
ALTER TABLE `course_resources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `course_resources_uuid_unique` (`uuid`);

--
-- Indexes for table `course_settings`
--
ALTER TABLE `course_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_tags`
--
ALTER TABLE `course_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_upload_rules`
--
ALTER TABLE `course_upload_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `devices_device_uuid_unique` (`device_uuid`),
  ADD KEY `devices_device_type_index` (`device_type`),
  ADD KEY `devices_ip_index` (`ip`);

--
-- Indexes for table `device_user`
--
ALTER TABLE `device_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_user_user_id_device_id_index` (`user_id`,`device_id`),
  ADD KEY `device_user_user_id_index` (`user_id`),
  ADD KEY `device_user_device_id_index` (`device_id`);

--
-- Indexes for table `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `difficulty_levels_uuid_unique` (`uuid`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_notification_settings`
--
ALTER TABLE `email_notification_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_notification_settings_uuid_unique` (`uuid`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_uuid_unique` (`uuid`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exams_uuid_unique` (`uuid`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_categories_uuid_unique` (`uuid`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_posts_uuid_unique` (`uuid`);

--
-- Indexes for table `forum_post_comments`
--
ALTER TABLE `forum_post_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `forum_post_comments_uuid_unique` (`uuid`);

--
-- Indexes for table `generate_contents`
--
ALTER TABLE `generate_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gmeet_settings`
--
ALTER TABLE `gmeet_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_special_features`
--
ALTER TABLE `home_special_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_uuid_unique` (`uuid`);

--
-- Indexes for table `instructor_awards`
--
ALTER TABLE `instructor_awards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructor_awards_uuid_unique` (`uuid`);

--
-- Indexes for table `instructor_certificates`
--
ALTER TABLE `instructor_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructor_certificates_uuid_unique` (`uuid`);

--
-- Indexes for table `instructor_consultation_day_statuses`
--
ALTER TABLE `instructor_consultation_day_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_features`
--
ALTER TABLE `instructor_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_procedures`
--
ALTER TABLE `instructor_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_supports`
--
ALTER TABLE `instructor_supports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_language_unique` (`language`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indexes for table `learn_key_points`
--
ALTER TABLE `learn_key_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `live_classes_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metas`
--
ALTER TABLE `metas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `metas_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `monthly_distribution_histories`
--
ALTER TABLE `monthly_distribution_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_boards`
--
ALTER TABLE `notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notice_boards_uuid_unique` (`uuid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notifications_uuid_unique` (`uuid`);

--
-- Indexes for table `notification_email_templates`
--
ALTER TABLE `notification_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `open_a_i_prompts`
--
ALTER TABLE `open_a_i_prompts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_uuid_unique` (`uuid`);

--
-- Indexes for table `order_billing_addresses`
--
ALTER TABLE `order_billing_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `organizations_uuid_unique` (`uuid`);

--
-- Indexes for table `our_histories`
--
ALTER TABLE `our_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `packages_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `packages_slug_unique` (`slug`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_uuid_unique` (`uuid`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_uuid_unique` (`uuid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promotions_uuid_unique` (`uuid`);

--
-- Indexes for table `promotion_courses`
--
ALTER TABLE `promotion_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `questions_uuid_unique` (`uuid`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `question_options_uuid_unique` (`uuid`);

--
-- Indexes for table `ranking_levels`
--
ALTER TABLE `ranking_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ranking_levels_uuid_unique` (`uuid`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `scorm`
--
ALTER TABLE `scorm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_resource_type_resource_id_index` (`resource_type`,`resource_id`);

--
-- Indexes for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_scorm_id_foreign` (`scorm_id`);

--
-- Indexes for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scorm_sco_tracking_user_id_foreign` (`user_id`),
  ADD KEY `scorm_sco_tracking_sco_id_foreign` (`sco_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_promotion_tags`
--
ALTER TABLE `special_promotion_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `special_promotion_tags_uuid_unique` (`uuid`);

--
-- Indexes for table `special_promotion_tag_courses`
--
ALTER TABLE `special_promotion_tag_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_uuid_unique` (`uuid`);

--
-- Indexes for table `student_certificates`
--
ALTER TABLE `student_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_certificates_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `student_certificates_certificate_number_unique` (`certificate_number`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subcategories_uuid_unique` (`uuid`);

--
-- Indexes for table `subscription_commission_histories`
--
ALTER TABLE `subscription_commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_questions`
--
ALTER TABLE `support_ticket_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_uuid_unique` (`uuid`);

--
-- Indexes for table `tag_products`
--
ALTER TABLE `tag_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `take_exams`
--
ALTER TABLE `take_exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tickets_uuid_unique` (`uuid`);

--
-- Indexes for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_departments_uuid_unique` (`uuid`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_priorities_uuid_unique` (`uuid`);

--
-- Indexes for table `ticket_related_services`
--
ALTER TABLE `ticket_related_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_related_services_uuid_unique` (`uuid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_hash_unique` (`hash`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_number_unique` (`mobile_number`),
  ADD KEY `users_sub_index` (`sub`);

--
-- Indexes for table `user_cards`
--
ALTER TABLE `user_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_cards_uuid_unique` (`uuid`);

--
-- Indexes for table `user_packages`
--
ALTER TABLE `user_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_paypals`
--
ALTER TABLE `user_paypals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_recharges`
--
ALTER TABLE `wallet_recharges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_recharges_uuid_unique` (`uuid`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `withdraws_uuid_unique` (`uuid`);

--
-- Indexes for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_generals`
--
ALTER TABLE `about_us_generals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_history`
--
ALTER TABLE `affiliate_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `affiliate_request`
--
ALTER TABLE `affiliate_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignment_files`
--
ALTER TABLE `assignment_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment_submits`
--
ALTER TABLE `assignment_submits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiaries`
--
ALTER TABLE `beneficiaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_histories`
--
ALTER TABLE `booking_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bundle_courses`
--
ALTER TABLE `bundle_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart_management`
--
ALTER TABLE `cart_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `certificate_by_instructors`
--
ALTER TABLE `certificate_by_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `client_logos`
--
ALTER TABLE `client_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `consultation_slots`
--
ALTER TABLE `consultation_slots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_us_issues`
--
ALTER TABLE `contact_us_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_courses`
--
ALTER TABLE `coupon_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_instructors`
--
ALTER TABLE `coupon_instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `course_form_settings`
--
ALTER TABLE `course_form_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course_instructor`
--
ALTER TABLE `course_instructor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course_languages`
--
ALTER TABLE `course_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `course_lectures`
--
ALTER TABLE `course_lectures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `course_lecture_views`
--
ALTER TABLE `course_lecture_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `course_lessons`
--
ALTER TABLE `course_lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `course_resources`
--
ALTER TABLE `course_resources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course_settings`
--
ALTER TABLE `course_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_tags`
--
ALTER TABLE `course_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `course_upload_rules`
--
ALTER TABLE `course_upload_rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `device_user`
--
ALTER TABLE `device_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `difficulty_levels`
--
ALTER TABLE `difficulty_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `email_notification_settings`
--
ALTER TABLE `email_notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `forum_post_comments`
--
ALTER TABLE `forum_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `generate_contents`
--
ALTER TABLE `generate_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `gmeet_settings`
--
ALTER TABLE `gmeet_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_special_features`
--
ALTER TABLE `home_special_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `instructor_awards`
--
ALTER TABLE `instructor_awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_certificates`
--
ALTER TABLE `instructor_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructor_consultation_day_statuses`
--
ALTER TABLE `instructor_consultation_day_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `instructor_features`
--
ALTER TABLE `instructor_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor_procedures`
--
ALTER TABLE `instructor_procedures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructor_supports`
--
ALTER TABLE `instructor_supports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `learn_key_points`
--
ALTER TABLE `learn_key_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `metas`
--
ALTER TABLE `metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `monthly_distribution_histories`
--
ALTER TABLE `monthly_distribution_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_boards`
--
ALTER TABLE `notice_boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1484;

--
-- AUTO_INCREMENT for table `notification_email_templates`
--
ALTER TABLE `notification_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `open_a_i_prompts`
--
ALTER TABLE `open_a_i_prompts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `order_billing_addresses`
--
ALTER TABLE `order_billing_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_histories`
--
ALTER TABLE `our_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `promotion_courses`
--
ALTER TABLE `promotion_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ranking_levels`
--
ALTER TABLE `ranking_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scorm`
--
ALTER TABLE `scorm`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_promotion_tags`
--
ALTER TABLE `special_promotion_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `special_promotion_tag_courses`
--
ALTER TABLE `special_promotion_tag_courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `student_certificates`
--
ALTER TABLE `student_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subscription_commission_histories`
--
ALTER TABLE `subscription_commission_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_questions`
--
ALTER TABLE `support_ticket_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag_products`
--
ALTER TABLE `tag_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `take_exams`
--
ALTER TABLE `take_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_departments`
--
ALTER TABLE `ticket_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_priorities`
--
ALTER TABLE `ticket_priorities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_related_services`
--
ALTER TABLE `ticket_related_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `user_cards`
--
ALTER TABLE `user_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_packages`
--
ALTER TABLE `user_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_paypals`
--
ALTER TABLE `user_paypals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_recharges`
--
ALTER TABLE `wallet_recharges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zoom_settings`
--
ALTER TABLE `zoom_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `scorm_sco`
--
ALTER TABLE `scorm_sco`
  ADD CONSTRAINT `scorm_sco_scorm_id_foreign` FOREIGN KEY (`scorm_id`) REFERENCES `scorm` (`id`);

--
-- Constraints for table `scorm_sco_tracking`
--
ALTER TABLE `scorm_sco_tracking`
  ADD CONSTRAINT `scorm_sco_tracking_sco_id_foreign` FOREIGN KEY (`sco_id`) REFERENCES `scorm_sco` (`id`),
  ADD CONSTRAINT `scorm_sco_tracking_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
