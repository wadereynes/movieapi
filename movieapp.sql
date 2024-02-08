-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2024 at 08:51 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movieapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Horror', NULL, NULL),
(2, 'Western', NULL, NULL),
(3, 'Hostirical', NULL, NULL),
(4, 'Action', NULL, NULL),
(5, 'Drama', NULL, NULL),
(6, 'Adventure', NULL, NULL);

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `movie_id`, `uri`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://m.media-amazon.com/images/M/MV5BODdjMjM3NGQtZDA5OC00NGE4LWIyZDQtZjYwOGZlMTM5ZTQ1XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY209_CR1,0,140,209_AL_.jpg', NULL, NULL),
(2, 2, 'https://m.media-amazon.com/images/M/MV5BZGM1NzUwODYtZDA0Yy00YWYxLTg4MTQtNDE1N2I2ZmRiNDFjXkEyXkFqcGdeQXVyMTMyNzYyNzU5._V1_UY209_CR14,0,140,209_AL_.jpg', NULL, NULL),
(3, 3, 'https://m.media-amazon.com/images/M/MV5BNDZhYjM1NDctOGY1My00ZWE4LWI5NDktNDVlMDAxZjcwOTEwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UX140_CR0,0,140,209_AL_.jpg', NULL, NULL),
(4, 4, 'https://m.media-amazon.com/images/M/MV5BNjYxZjY3ZDAtNDc1Mi00YzMxLWI4MWEtNzQwZGExYmMzODFhXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_UY209_CR0,0,140,209_AL_.jpg', NULL, NULL),
(5, 5, 'https://m.media-amazon.com/images/M/MV5BNWU1NjZiODktMjc4Ni00Yjg4LWEzMzUtNTJiMzM0ZDQ5NWYzXkEyXkFqcGdeQXVyMTMzNTYwMjAz._V1_UY209_CR87,0,140,209_AL_.jpg', NULL, NULL),
(6, 6, 'https://m.media-amazon.com/images/M/MV5BMGI0ZDg3Y2EtYzIyYi00MGYwLThlOGItNWQ5MjMxNDU2ODUzXkEyXkFqcGdeQXVyMTEwMTcxOTAx._V1_UY209_CR15,0,140,209_AL_.jpg', NULL, NULL),
(7, 7, 'https://m.media-amazon.com/images/M/MV5BYTBjYTY3NWYtMjM2MS00ZDQ5LWFlZmMtYThhNjg2Mjk0Y2YzXkEyXkFqcGdeQXVyMTU5Njc1OTUw._V1_UY209_CR35,0,140,209_AL_.jpg', NULL, NULL),
(8, 8, 'https://m.media-amazon.com/images/M/MV5BNjhiMDUwZTItNDBkYi00ZjI2LWIxNDYtZGE4MGEzZWQ4ZTgwXkEyXkFqcGdeQXVyMTY2NDU0NzMw._V1_UX140_CR0,0,140,209_AL_.jpg', NULL, NULL),
(9, 9, 'https://m.media-amazon.com/images/M/MV5BYWJlNThmNWMtZWE5Zi00YWJiLWJiOTQtZWY1Y2I3ZmNhMDYwXkEyXkFqcGdeQXVyMTk2OTAzNTI@._V1_UY209_CR1,0,140,209_AL_.jpg', NULL, NULL),
(10, 10, 'https://m.media-amazon.com/images/M/MV5BZDM3YTg4MGUtZmUxNi00YmEyLTllNTctNjYyNjZlZGViNmFhXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_UX140_CR0,0,140,209_AL_.jpg', NULL, NULL),
(11, 11, 'https://m.media-amazon.com/images/M/MV5BNWVhYjkyYWUtYWI5Yi00MDQzLWIwMmQtOWNiMWZiOThmMDY0XkEyXkFqcGdeQXVyNjExNjM2NzQ@._V1_UY209_CR13,0,140,209_AL_.jpg', NULL, NULL);

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
(5, '2024_02_07_090758_create_categories_table', 1),
(6, '2024_02_07_091146_create_images_table', 1),
(7, '2024_02_07_091206_create_casts_table', 1),
(8, '2024_02_07_091250_create_movies_table', 1),
(9, '2024_02_07_091504_create_movie_casts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryIds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` double NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1 COMMENT '1: active, 0: passive',
  `isHome` int(11) NOT NULL DEFAULT 0 COMMENT '0 if home, 1 if nonhome',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `categoryIds`, `time`, `year`, `star`, `title`, `video`, `director`, `active`, `isHome`, `created_at`, `updated_at`) VALUES
(1, 'Dune: Part Two', '1', '166 min', '2024', 4, 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', NULL, 'Denis Villeneuve', 1, 0, NULL, NULL),
(2, 'Joker: Folie à Deux ', '2', '166 min', '2024', 4, 'Sequel to the film \"Joker\" from 2019.', NULL, 'Todd Phillips', 1, 0, NULL, NULL),
(3, 'A Quiet Place: Day One', '3', '166 min', '2024', 4, 'Experience the day the world went quiet.', NULL, 'Michael Sarnoski', 1, 0, NULL, NULL),
(4, 'Furiosa: A Mad Max Saga', '4', '120 min', '2024', 4, 'The origin story of renegade warrior Furiosa before her encounter and teamup with Mad Max.', NULL, 'George Miller', 1, 0, NULL, NULL),
(5, 'The Lord of the Rings: The War of the Rohirrim', '5', '127 min', '2024', 4, 'The untold story behind Helm\'s Deep, hundreds of years before the fateful war, telling the life and bloodsoaked times of its founder, Helm Hammerhand, the King of Rohan.', NULL, 'Kenji Kamiyama', 1, 0, NULL, NULL),
(6, 'Deadpool 3', '6', '150 min', '2024', 4, 'The irresponsible hero Deadpool will change the history of the MCU with Wolverine!?', NULL, 'Shawn Levy', 1, 0, NULL, NULL),
(7, 'Mickey 17', '1', '167 min', '2024', 4, 'Plot under wraps.', NULL, 'Bong Joon Ho', 1, 0, NULL, NULL),
(8, 'Despicable Me 4', '2', '144 min', '2024', 4, 'Gru, Lucy, Margo, Edith, and Agnes welcome a new member to the family, Gru Jr., who is intent on tormenting his dad. Gru faces a new nemesis in Maxime Le Mal and his girlfriend Valentina, and the family is forced to go on the run.', NULL, 'Matthew Vaughn', 1, 0, NULL, NULL),
(9, 'Spider-Man: Beyond the Spider-Verse ', '3', '155 min', '2024', 4, 'After leaving off from Spider-Man: Across the Spider-Verse, the story continues.', NULL, 'Joaquim Dos Santos', 1, 0, NULL, NULL),
(10, 'Argylle', '4', '170 min', '2024', 4, 'A reclusive author who writes espionage novels about a secret agent and a global spy syndicate realizes the plot of the new book she\'s writing starts to mirror real-world events, in real time.', NULL, 'Matthew Vaughn', 1, 0, NULL, NULL),
(11, 'Beetlejuice Beetlejuice', '5', '120 min ', '2024', 4, 'This is a follow-up to the comedy Beetlejuice (1988), about a ghost who\'s recruited to help haunt a house.', NULL, 'Tim Burton', 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movie_casts`
--

CREATE TABLE `movie_casts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` int(11) NOT NULL,
  `cast_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_casts`
--
ALTER TABLE `movie_casts`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movie_casts`
--
ALTER TABLE `movie_casts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
