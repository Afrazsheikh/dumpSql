-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2024 at 08:56 AM
-- Server version: 10.6.16-MariaDB-cll-lve
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toprankers`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(8) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `name`, `mobile`, `email`, `email_verified_at`, `password`, `remember_token`, `del`, `created_at`, `updated_at`) VALUES
(1, 0, 'Admin', '9999999999', 'admin@gmail.com', NULL, '$2y$10$eNVLLJMuTCryFD8giWKbvuRqbhPod4IqN163Z8lZWNiyb5Y.1z14K', 'A8SQFPuKUVqG7BeCc9GGk8pNzqEFvVG2dVzmBl2oYrBQ2pwus9ImRXebFEZD', 0, '2022-11-18 05:50:54', '2023-01-11 14:03:31'),
(2, 1, 'pradeep halder', '8784510259', 'pradeep@gmail.com', NULL, '$2y$10$wJj9mLidhpnSts3y.kIZt.v/EisVfjccJcDdfJ9VvOrwuzcyDXUba', NULL, 0, '2023-07-16 09:41:46', '2023-07-16 09:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `assign_subjects`
--

CREATE TABLE `assign_subjects` (
  `id` int(11) NOT NULL,
  `course_id` int(8) NOT NULL,
  `subject_id` int(8) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assign_users`
--

CREATE TABLE `assign_users` (
  `id` int(11) NOT NULL,
  `course_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(8) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `image` text DEFAULT NULL,
  `description_two` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `author`, `name`, `image`, `description_two`, `description`, `del`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LegalEdge', 'RSM', NULL, NULL, NULL, 0, 0, '2024-03-18 17:52:10', '2024-03-18 05:22:10');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `description`, `del`, `created_at`, `updated_at`) VALUES
(1, 'math science subject', '<p>math science description subject</p>', 1, '2024-02-13 12:04:51', '2024-02-14 07:59:46'),
(2, 'new subjects', '<p>hgffcfgcdrtfcfgcfg</p>', 1, '2024-02-13 14:59:37', '2024-02-14 07:59:42'),
(3, 'mathematics', '<p>Mathematics</p>', 1, '2024-02-14 13:31:36', '2024-03-08 13:48:56'),
(4, 'english Language', '<p>English Language</p>', 1, '2024-02-14 13:37:02', '2024-03-08 13:48:53'),
(5, 'Accounts', '', 1, '2024-02-23 10:09:33', '2024-03-08 13:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_pdfs`
--

CREATE TABLE `subjects_pdfs` (
  `id` int(11) NOT NULL,
  `order_by` int(8) DEFAULT NULL,
  `subject_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `pdfs` text DEFAULT NULL,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects_pdfs`
--

INSERT INTO `subjects_pdfs` (`id`, `order_by`, `subject_id`, `title`, `pdfs`, `del`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'test one pdf', '17078119748078.pdf', 1, '2024-02-13 13:55:44', '2024-02-14 07:59:46'),
(2, 5, 1, 'test two pdf', '17078119743447.pdf', 1, '2024-02-13 13:55:44', '2024-02-14 07:59:46'),
(3, 2, 1, 'test three pdf', '17078119753679.pdf', 1, '2024-02-13 13:55:44', '2024-02-14 07:59:46'),
(4, 1, 1, 'test four pdf', '17078126856155.pdf', 1, '2024-02-13 13:55:44', '2024-02-14 07:59:46'),
(5, 3, 1, 'test five pdfs', '17078127449035.pdf', 1, '2024-02-13 13:55:44', '2024-02-14 07:59:46'),
(6, 5, 1, 'test six pdfs', '17078127445726.pdf', 1, '2024-02-13 13:55:44', '2024-02-14 07:59:46'),
(7, 2, 2, 'test seven pdfs', '17078165779889.pdf', 1, '2024-02-13 21:33:03', '2024-02-14 07:59:42'),
(8, 2, 2, 'test eight pdfs', '17078165779709.pdf', 1, '2024-02-13 21:33:03', '2024-02-14 07:59:42'),
(9, NULL, 3, 'eng', '17095832621867.pdf', 1, '2024-03-05 01:44:22', '2024-03-08 13:48:56'),
(10, 2, 4, 'english', '17095832524883.pdf', 1, '2024-03-05 01:44:12', '2024-03-08 13:48:53'),
(11, 2, 4, 'test', '17095832526898.pdf', 1, '2024-03-05 01:44:12', '2024-03-08 13:48:53'),
(12, NULL, 5, 'Accounts 01', '17095832392329.pdf', 1, '2024-03-05 01:43:59', '2024-03-08 13:48:50'),
(13, NULL, 5, 'Accounts 02', '17095832394441.pdf', 1, '2024-03-05 01:43:59', '2024-03-08 13:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(11) NOT NULL,
  `cat_id` int(8) NOT NULL,
  `name` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `father_name` varchar(50) NOT NULL,
  `mother_name` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL,
  `age` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `del` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `father_name`, `mother_name`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `mobile`, `age`, `gender`, `location`, `address`, `status`, `del`, `created_at`, `updated_at`) VALUES
(1, 'test jjn', 'test jnjnj', 'test', 'test@gmail.com', '17082370388690.jpg', NULL, '$2y$10$MzsKfIY5zhx3R/fy479pqu7Eslay76mMIlScfueBk4b/10MC5lnM.', '8JjRo9wCBCtbmHMU7rMzAkT2KmltfIkLvf5PsaI5bae1cDTtTZPSOx8gV19X', '8784554874', '2024-02-01', 'Male', 'hghbhb', 'jbhjvjhvg', 0, 1, '2024-02-10 18:08:06', '2024-03-09 02:18:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_users`
--
ALTER TABLE `assign_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_pdfs`
--
ALTER TABLE `subjects_pdfs`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_subjects`
--
ALTER TABLE `assign_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assign_users`
--
ALTER TABLE `assign_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subjects_pdfs`
--
ALTER TABLE `subjects_pdfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
