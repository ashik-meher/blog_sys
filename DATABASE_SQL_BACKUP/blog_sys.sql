-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 09:25 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `deleted_at`, `user_id`) VALUES
(1, '2025-01-20 03:49:27', '2025-01-20 03:49:27', 'Science', NULL, 1),
(2, '2025-01-20 04:11:02', '2025-01-20 04:11:02', 'Technology', NULL, 1),
(3, '2025-01-20 04:11:12', '2025-01-20 04:11:12', 'Social', NULL, 1),
(4, '2025-01-20 04:11:26', '2025-01-20 04:11:26', 'Entertainment', NULL, 1),
(5, '2025-01-20 04:11:35', '2025-01-20 04:11:35', 'News', NULL, 1),
(6, '2025-01-20 04:20:11', '2025-01-20 04:20:11', 'Politics', NULL, 1),
(7, '2025-01-20 05:28:08', '2025-01-20 05:28:08', 'International', NULL, 1),
(8, '2025-01-21 03:18:37', '2025-01-21 03:18:37', 'Sports', NULL, 1),
(9, '2025-01-22 01:40:54', '2025-01-22 01:40:54', 'Life & Living', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `created_at`, `updated_at`, `content`, `post_id`, `deleted_at`, `user_id`) VALUES
(1, '2025-01-20 23:45:35', '2025-01-20 23:45:35', 'Great Work BGB!', 2, NULL, 1),
(2, '2025-01-20 23:47:47', '2025-01-20 23:47:47', 'What is the outcome of these meetings?', 2, NULL, 1),
(3, '2025-01-21 00:34:52', '2025-01-21 00:34:52', 'appreciate it!', 1, NULL, 1),
(4, '2025-01-21 00:36:49', '2025-01-21 00:36:49', 'appreciate it!', 1, NULL, 1),
(5, '2025-01-21 00:41:19', '2025-01-21 00:41:19', 'They should work in Gaza rather than south asia!', 1, NULL, 1),
(6, '2025-01-21 00:42:34', '2025-01-21 00:42:34', 'We can not expect mush from them', 1, NULL, 1),
(7, '2025-01-21 02:50:07', '2025-01-21 02:50:07', 'Biden, you are fired!', 3, NULL, 1),
(8, '2025-01-21 02:54:52', '2025-01-21 02:54:52', 'Saviour of chistianity@DolanTrumph', 3, NULL, 1),
(9, '2025-01-21 04:21:16', '2025-01-21 04:21:16', 'greate news!', 4, NULL, 1),
(10, '2025-01-21 04:22:37', '2025-01-21 04:22:37', 'Great work taskin', 7, NULL, 1),
(11, '2025-01-21 04:27:21', '2025-01-21 04:27:21', 'Greate work!', 3, NULL, 1),
(12, '2025-01-21 04:37:45', '2025-01-21 23:36:48', 'Hope bangladesh pacers will grow faster than ever. kudos!', 7, NULL, 1),
(13, '2025-01-21 04:38:57', '2025-01-21 04:38:57', 'please save our brothers and sisters in palestine', 6, NULL, 1),
(14, '2025-01-21 04:39:17', '2025-01-21 04:39:17', 'we can not expect much from him.', 6, NULL, 1),
(15, '2025-01-21 04:40:39', '2025-01-21 04:40:39', 'we demand justice for our sister', 5, NULL, 1),
(16, '2025-01-21 04:41:32', '2025-01-21 04:41:32', 'nice and attractive!', 4, NULL, 1),
(17, '2025-01-21 04:48:46', '2025-01-22 00:50:58', 'lets hope for the best! best of luck!', 7, NULL, 2),
(18, '2025-01-21 04:49:59', '2025-01-21 05:39:10', 'Russia is increasing their nuclear arsenal, is it true', 8, NULL, 1),
(19, '2025-01-21 22:38:41', '2025-01-21 22:38:41', 'Is it a threat to internation peace and security?', 8, NULL, 3),
(20, '2025-01-21 22:46:15', '2025-01-21 22:46:15', 'Good work so far!', 9, NULL, 1),
(21, '2025-01-21 23:53:47', '2025-01-22 00:01:48', 'People should focus on blockchain rather than crypto, decentralized fintech', 9, NULL, 3),
(22, '2025-01-22 00:14:38', '2025-01-22 00:14:38', 'USA should do the same', 9, NULL, 3),
(23, '2025-01-22 00:17:32', '2025-01-22 00:17:32', 'Iran should focus on ballistic missle programs', 9, NULL, 3),
(25, '2025-01-22 01:45:19', '2025-01-22 01:45:19', 'he should buy facebook too', 13, NULL, 2),
(26, '2025-01-22 01:46:44', '2025-01-22 01:46:44', 'Which airlines goes into the island?', 12, NULL, 3),
(27, '2025-01-22 01:47:34', '2025-01-22 01:47:34', 'great news!', 11, NULL, 3),
(28, '2025-01-22 01:58:28', '2025-01-22 01:58:28', 'Why he resigns!', 11, NULL, 3),
(29, '2025-01-22 01:59:58', '2025-01-22 01:59:58', 'great insights!', 7, NULL, 3),
(30, '2025-01-22 02:21:40', '2025-01-22 02:21:40', 'great news!', 10, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_20_090133_create_posts_table', 2),
(6, '2025_01_20_090212_create_comments_table', 2),
(7, '2025_01_20_090239_create_categories_table', 2),
(8, '2025_01_20_101539_add_user_id_to_posts_table', 3),
(9, '2025_01_20_101634_add_user_id_to_categories_table', 3),
(10, '2025_01_20_101714_add_user_id_to_comments_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(510) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `created_at`, `updated_at`, `title`, `description`, `category_id`, `deleted_at`, `user_id`) VALUES
(1, '2025-01-20 05:15:53', '2025-01-20 05:15:53', 'Save the children announces new food program across south asia', 'The spokesperson says, Save the children announces new food program across south asia. This program will help children across the region get a significant portion of nutrition throughout massive scale social awaremess and distribution of food items.', 3, NULL, 1),
(2, '2025-01-20 05:30:02', '2025-01-20 05:30:02', 'BGB BSF Holds meeting to deescalate the border situation of Bangladesh India', 'Colonel Golam Kibria says, \"BGB BSF Holds meeting to deescalate the border situation of Bangladesh India \". \"Now the situation is completely under control, we will keep peace by any means\", He added.', 7, NULL, 1),
(3, '2025-01-21 01:57:27', '2025-01-21 01:57:27', 'World gets an early taste of Trump tariffs', 'US President Donald Trump kicked off his second term with a whirlwind of mixed messages about his trade policies, sending global financial markets on a daylong rollercoaster ride and offering an early taste of what could be a bumpy road ahead for the corporate world', 7, NULL, 1),
(4, '2025-01-21 01:58:03', '2025-01-21 01:58:03', 'Dhaka-Jashore rail route: Dreams and disappointment', 'After a significant delay, Bangladesh Railway finally introduced new trains on the Dhaka-Jashore rail route via the Padma Bridge in the last week of December. The new route reduces the travel time to only three and four hours for Khulna to Dhaka and Jashore to Dhaka, respectively. However, the launch of the new trains has received mixed reactions from the locals, particularly in the Jashore area. Protesters gathered at the Jashore railway station on the inauguration day, chanted slogans, and showed black flags, demanding more trains and passenger-friendly timing.', 5, NULL, 1),
(5, '2025-01-21 02:57:19', '2025-01-21 02:57:19', 'R G Kar rape-murder: West Bengal govt challenges Sanjay’s life sentence', 'A Kolkata High Court today granted permission to the West Bengal government to file an appeal challenging the trial court order that sentenced former civic assistant of Kolkata Police Sanjay Roy to life imprisonment in the R G Kar hospital doctor\'s rape and murder case.', 7, NULL, 1),
(6, '2025-01-21 02:58:49', '2025-01-21 02:58:49', 'Trump \'not confident\' Gaza deal will hold', 'US President Donald Trump said Monday he was not confident a ceasefire deal in Gaza would hold, despite trumpeting his diplomacy to secure it ahead of his inauguration.\r\n\r\nAsked by a reporter as he returned to the White House whether the two sides would maintain the truce and move on in the agreement, Trump said, \"I\'m not confident.\"', 7, NULL, 1),
(7, '2025-01-21 03:19:57', '2025-01-21 03:19:57', 'If I do well, there will be opportunities: Taskin on PSL snub', 'Bangladesh paceman Taskin Ahmed had been reportedly approached by IPL franchises multiple times in the past but could not avail those opportunities due to not getting an NOC from the BCB. Having remained unpicked in the recent PSL draft, the speedster was asked if he was disappointed with the development after his side Durbar Rajshahi\'s match against Chittagong Kings yesterday.', 8, NULL, 1),
(8, '2025-01-21 04:48:13', '2025-01-21 04:48:13', 'What nuclear weapons experts will watch for under Trump', 'It’s a pivotal moment for nuclear weapons. \r\n\r\nTensions between the United States and Russia, the two major nuclear powers, are high. Longstanding nuclear pacts have crumbled. China, which trails well behind the United States and Russia in nuclear arms, is beefing up its arsenal. North Korea is a nuclear threat, and Iran is on the threshold.', 1, NULL, 2),
(9, '2025-01-21 22:41:12', '2025-01-21 22:41:12', 'Malaysia allows crypto in zakat payments', 'Malaysia has become the first country in the world to permit the use of digital assets for zakat payments, according to a report by New Straits Times (NST), a Malaysian news outlet.\r\n\r\nThe initiative is led by the Malaysian Federal Territories Islamic Religious Council\'s Zakat Collection Centre (PPZ-MAIWP), with CEO Datuk Abdul Hakim Amir Osman emphasising the importance of educating Muslims on fulfilling their zakat obligations in the context of blockchain technology and digital currencies.', 2, NULL, 3),
(10, '2025-01-22 01:04:43', '2025-01-22 01:04:43', 'Sabina Yasmin set to return to music', 'Towards the end of 2023, Sabina Yasmin performed in several stage shows in Sydney, Melbourne, and Brisbane, Australia. After that, she was not seen on stage again. As rumours about her health began to spread, the renowned artist felt compelled to release an audio statement. \r\n\r\nYesterday, Sabina Yasmin revealed to Prothom Alo that she had undergone surgery on February 7 of the previous year, followed by 30 sessions of radiotherapy over a span of four months. Only her closest circle knew about these events. In her own words, \"It was a challenging fight, but I stayed determined.\"', 4, NULL, 2),
(11, '2025-01-22 01:36:48', '2025-01-22 01:36:48', 'Sarjis resigns as general secretary of July Shaheed Smriti Foundation', 'Sarjis Alam, a coordinator of the Students Against Discrimination, has resigned as general secretary of the July Shaheed Smriti Foundation.\r\n\r\nHe shared this information in a post on his verified Facebook profile this morning.\r\n\r\n\"I am no longer the general secretary of the July Shaheed Smriti Foundation. Changes have been made to the foundation\'s constitution, structure, and working process to accelerate its progress,\" he wrote.\r\n\r\nHe further said that the executive committee will now oversee the foundation\'s operations, with the chief executive officer (CEO) leading the office.', 6, NULL, 2),
(12, '2025-01-22 01:41:28', '2025-01-22 01:41:28', 'Turks and Caicos Islands: Postcards from paradise, voices from the shadows', 'Located in the British West Indies, Turks and Caicos Islands\' white sand beaches, turquoise waters, and year-round pleasant weather make them an ideal destination for those who love tropical getaways. As the islands boast some of the world\'s most beautiful beaches, they attract the rich and famous, including Hollywood A-listers. Stunning waterfront villas, many with luxurious yachts docked outside, are a common sight.\r\n\r\nIt was a 3.5-hour flight from Philadelphia to Providenciales, locally known as Provo, the main island. As our plane approached TCI, I looked out the window and could not help but whisper, \"Wow!\"\r\n\r\nThe first sight of the turquoise waters captivated my heart; I could not stop gazing at the pristine beauty of the Caribbean waters. It was our winter getaway to a tropical destination and our first time staying at an all-inclusive resort. We booked a one-bedroom ocean-front suite for four nights at the Blue Haven. And I must say that I felt pampered every day during our five-day stay.', 9, NULL, 2),
(13, '2025-01-22 01:43:20', '2025-01-22 01:43:20', 'Musk can buy TikTok if he wants to, says Trump', 'US President Donald Trump has said he would support Elon Musk, the billionaire CEO of Tesla, if he decided to purchase the social media app TikTok. Trump\'s remarks came as the platform, used by 170 million Americans, faces a potential ban unless its Chinese parent company, ByteDance, sells its US operations due to national security concerns.\r\n\r\nWhen asked about Musk\'s involvement, Trump said, \"If he wanted to buy it, I\'d be open to it\", as per a Reuters report. Trump also revealed discussions with TikTok\'s major stakeholders and floated the idea that any sale should benefit the US financially, suggesting, \"Buy it and give half to the United States of America.\"', 2, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashik Meher Mobin', 'ashikmeherpial@gmail.com', NULL, '$2y$10$juWqM7l7Yg1taLX6CLpQEeztK.3IOKJ26Rl6J2s3yfVpGygHQ2hIe', NULL, '2025-01-20 02:24:16', '2025-01-20 02:24:16'),
(2, 'Mahmudur Rahman', 'mahmud@gmail.com', NULL, '$2y$10$zHGxG8MMvyl/pZm9W1YAvOGhy369blhff5pa6zpRprX0qHclZZVR2', NULL, '2025-01-21 04:47:08', '2025-01-21 04:47:08'),
(3, 'News Editor', 'editor@gmail.com', NULL, '$2y$10$uiT4BFB/pIZnkxdWrmrcFu9ZK4q4he3UlC6L5r0vfJTt9VCm/wzvW', NULL, '2025-01-21 22:38:10', '2025-01-21 22:38:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
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
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
