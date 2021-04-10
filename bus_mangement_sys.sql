-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 11:30 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_mangement_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `seat_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` bigint(20) NOT NULL,
  `dist` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `trip_id`, `bus_id`, `seat_id`, `name`, `phone`, `origin`, `dist`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 3, 'Bellal', '01550883320', 1, 3, '2021-04-10 12:04:37', '2021-04-10 12:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `model`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', '2021-04-09 21:06:37', '2021-04-09 21:06:37'),
(3, 'Dayoo', '2021-04-09 21:10:00', '2021-04-09 21:10:00'),
(5, 'Chevorlet', '2021-04-09 21:29:53', '2021-04-09 21:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_ar`, `name_en`, `created_at`, `updated_at`) VALUES
(1, 'القاهرة', 'Cairo', '2021-04-09 15:03:35', '2021-04-09 16:35:28'),
(2, 'الاسكندرية', 'Alexandria', '2021-04-09 15:04:08', '2021-04-09 15:04:08'),
(3, 'طنطا', 'tanta', '2021-04-09 16:35:58', '2021-04-09 16:35:58'),
(4, 'دمنهور', 'daminhour', '2021-04-09 16:36:18', '2021-04-09 16:36:18'),
(5, 'بنها', 'benha', '2021-04-09 19:30:16', '2021-04-09 19:30:16'),
(9, 'دمياط', 'Dummieta', '2021-04-10 08:27:30', '2021-04-10 08:27:30');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(8, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(10, '2016_06_01_000004_create_oauth_clients_table', 1),
(11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2021_04_09_143852_create_cities_table', 2),
(14, '2021_04_09_184214_create_buses_table', 3),
(17, '2021_04_09_184320_create_seats_table', 4),
(18, '2021_04_10_080445_create_trips_table', 5),
(19, '2021_04_10_083821_create_stations_table', 6),
(20, '2021_04_10_084340_create_trip_station_table', 6),
(21, '2021_04_10_111131_create_bookings_table', 7),
(22, '2021_04_10_183436_add_to_trips_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('101eebf4686cd289aa4824f14cb066733e03e1767901f7939046734ba9853efb2ca53225ebf125a1', 1, 1, 'authToken', '[]', 0, '2021-04-09 13:00:51', '2021-04-09 13:00:51', '2022-04-09 15:00:51'),
('3e55ab824467cd6edda0d3b899340e3ba2d28c6d9bf5edd4113e4db30f3e0f0d26ede7bcf8701ae9', 1, 1, 'authToken', '[]', 0, '2021-04-09 13:03:58', '2021-04-09 13:03:58', '2022-04-09 15:03:58'),
('6c7d97dd9e17c2798dad7cbd4a6e1092dc313ead40f0e5da8c38bf043836c10a77c65fac140802fb', 1, 1, 'authToken', '[]', 0, '2021-04-09 15:00:12', '2021-04-09 15:00:12', '2022-04-09 17:00:12'),
('75e364503897a90477e4ba2f2bc179f51fc9903f3eb2879186342b0c46abe9d53fbeab5a4be9504a', 1, 1, 'authToken', '[]', 0, '2021-04-09 13:05:06', '2021-04-09 13:05:06', '2022-04-09 15:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'fXzYudFUWBWwzaBkYbBOhBUc5X2c9DroicFz0ZMv', NULL, 'http://localhost', 1, 0, 0, '2021-04-09 12:29:29', '2021-04-09 12:29:29'),
(2, NULL, 'Laravel Password Grant Client', 'cUbGGuQYsngbpZLebnq1UcS9UMDzLjPmNOPmp3C0', 'users', 'http://localhost', 0, 1, 0, '2021-04-09 12:29:29', '2021-04-09 12:29:29');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-04-09 12:29:29', '2021-04-09 12:29:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pnr` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `bus_id`, `booking_id`, `pnr`, `booked`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'A1', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(2, 1, NULL, 'A2', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(3, 1, 1, 'B1', 1, '2021-04-09 21:24:04', '2021-04-10 12:04:38'),
(4, 1, NULL, 'B2', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(5, 1, NULL, 'C1', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(6, 1, NULL, 'C2', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(7, 1, NULL, 'C3', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(8, 1, NULL, 'C4', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(9, 1, NULL, 'D1', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(10, 1, NULL, 'D2', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(11, 1, NULL, 'D3', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(12, 1, NULL, 'D4', 0, '2021-04-09 21:24:04', '2021-04-09 21:24:04'),
(13, 3, NULL, 'A1', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(14, 3, NULL, 'A2', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(15, 3, NULL, 'B1', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(16, 3, NULL, 'B2', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(17, 3, NULL, 'C1', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(18, 3, NULL, 'C2', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(19, 3, NULL, 'C3', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(20, 3, NULL, 'C4', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(21, 3, NULL, 'D1', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(22, 3, NULL, 'D2', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(23, 3, NULL, 'D3', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(24, 3, NULL, 'D4', 0, '2021-04-09 21:27:44', '2021-04-09 21:27:44'),
(25, 5, NULL, 'A1', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(26, 5, NULL, 'A2', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(27, 5, NULL, 'B1', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(28, 5, NULL, 'B2', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(29, 5, NULL, 'C1', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(30, 5, NULL, 'C2', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(31, 5, NULL, 'C3', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(32, 5, NULL, 'C4', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(33, 5, NULL, 'D1', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(34, 5, NULL, 'D2', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(35, 5, NULL, 'D3', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53'),
(36, 5, NULL, 'D4', 0, '2021-04-09 21:29:53', '2021-04-09 21:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(3, 3, NULL, NULL),
(4, 4, NULL, NULL),
(5, 5, NULL, NULL),
(11, 9, '2021-04-10 08:27:30', '2021-04-10 08:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bus_id` bigint(20) UNSIGNED NOT NULL,
  `origin` int(11) NOT NULL,
  `dist` int(11) NOT NULL,
  `date` date NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`id`, `bus_id`, `origin`, `dist`, `date`, `arrival_time`, `departure_time`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 3, '2020-04-10', '07:10:00', '05:15:00', '2021-04-10 09:06:37', '2021-04-10 09:06:37'),
(3, 1, 1, 3, '2020-04-10', '07:10:00', '05:15:00', '2021-04-10 11:14:59', '2021-04-10 11:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `trip_station`
--

CREATE TABLE `trip_station` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trip_id` bigint(20) UNSIGNED NOT NULL,
  `station_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trip_station`
--

INSERT INTO `trip_station` (`id`, `trip_id`, `station_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, NULL, NULL),
(2, 2, 2, 1, NULL, NULL),
(3, 2, 3, 2, NULL, NULL),
(4, 3, 1, 0, NULL, NULL),
(5, 3, 2, 1, NULL, NULL),
(6, 3, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bellal', 'bellal@gmail.com', NULL, '$2y$10$b0HqhrC0ZpySTY9Evqyr1u9P/WqIzD.5jrHddfuh46DzHWUVD3U1C', NULL, '2021-04-09 13:00:51', '2021-04-09 13:00:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_trip_id_foreign` (`trip_id`),
  ADD KEY `bookings_bus_id_foreign` (`bus_id`),
  ADD KEY `bookings_seat_id_foreign` (`seat_id`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `buses_model_unique` (`model`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_name_ar_unique` (`name_ar`),
  ADD UNIQUE KEY `cities_name_en_unique` (`name_en`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seats_bus_id_foreign` (`bus_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stations_city_id_foreign` (`city_id`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trips_bus_id_foreign` (`bus_id`);

--
-- Indexes for table `trip_station`
--
ALTER TABLE `trip_station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trip_station_trip_id_foreign` (`trip_id`),
  ADD KEY `trip_station_station_id_foreign` (`station_id`);

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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trip_station`
--
ALTER TABLE `trip_station`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`),
  ADD CONSTRAINT `bookings_seat_id_foreign` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`id`),
  ADD CONSTRAINT `bookings_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_booking_id_foreign` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`),
  ADD CONSTRAINT `seats_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`);

--
-- Constraints for table `stations`
--
ALTER TABLE `stations`
  ADD CONSTRAINT `stations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `trips`
--
ALTER TABLE `trips`
  ADD CONSTRAINT `trips_bus_id_foreign` FOREIGN KEY (`bus_id`) REFERENCES `buses` (`id`);

--
-- Constraints for table `trip_station`
--
ALTER TABLE `trip_station`
  ADD CONSTRAINT `trip_station_station_id_foreign` FOREIGN KEY (`station_id`) REFERENCES `stations` (`id`),
  ADD CONSTRAINT `trip_station_trip_id_foreign` FOREIGN KEY (`trip_id`) REFERENCES `trips` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
