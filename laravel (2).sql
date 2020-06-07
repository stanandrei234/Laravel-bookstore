-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: iun. 07, 2020 la 12:21 PM
-- Versiune server: 10.1.38-MariaDB
-- Versiune PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `laravel`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Stan Andrei', 'stan.andrei234@gmail.com', '$2y$10$BvkMs7oz98KwOcTU7GEc8eby40OGMIRUr1W1Ju0q/qzFfsX/ySckK', NULL, '2020-03-21 10:15:55', '2020-03-21 10:15:55');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `authors`
--

INSERT INTO `authors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'nume autor 55', NULL, '2020-05-01 04:59:45'),
(2, 'nume autor 2', NULL, NULL),
(3, 'nume autor 3\r\n', NULL, NULL),
(4, 'nume autor 5', '2020-03-16 07:42:17', '2020-03-16 07:42:17'),
(5, 'nume autor 5', '2020-03-16 07:43:14', '2020-03-16 07:43:14'),
(6, 'nume autor 55', '2020-03-16 07:45:11', '2020-03-16 07:45:11'),
(7, 'nume autorrr 1', '2020-03-16 07:48:19', '2020-03-16 07:48:19'),
(8, 'nume autor 55', '2020-03-16 07:48:52', '2020-03-16 07:48:52'),
(9, 'test', '2020-03-16 07:51:07', '2020-03-16 07:51:07'),
(10, 'nume autor 1', '2020-03-16 07:54:24', '2020-03-16 07:54:24'),
(11, 'nume autor 1', '2020-03-16 07:54:25', '2020-03-16 07:54:25'),
(12, 'nume autorrr 1', '2020-03-16 07:55:43', '2020-03-16 07:55:43'),
(13, 'test', '2020-03-16 08:04:15', '2020-03-16 08:04:15'),
(14, 'qw', '2020-03-16 08:07:00', '2020-03-16 08:07:00'),
(15, 'as', '2020-03-16 08:07:43', '2020-03-16 08:07:43'),
(16, 'as', '2020-03-16 08:08:12', '2020-03-16 08:08:12'),
(17, 'as', '2020-03-16 08:09:20', '2020-03-16 08:09:20'),
(18, 'as', '2020-03-16 08:10:25', '2020-03-16 08:10:25'),
(19, 'test', '2020-03-16 08:11:37', '2020-03-16 08:11:37'),
(20, 'kn', '2020-03-16 18:14:13', '2020-03-16 18:14:13'),
(21, 'new author', '2020-04-29 07:38:48', '2020-04-29 07:38:48'),
(22, 'nume autor 1', '2020-05-01 05:00:36', '2020-05-01 05:00:36');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bookwithdetails` int(10) UNSIGNED NOT NULL,
  `id_author` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `books`
--

INSERT INTO `books` (`id`, `id_bookwithdetails`, `id_author`, `created_at`, `updated_at`) VALUES
(1, 9, 1, NULL, NULL),
(2, 7, 8, NULL, NULL),
(3, 10, 2, NULL, NULL),
(4, 11, 7, NULL, NULL),
(5, 3, 16, NULL, NULL),
(6, 7, 6, NULL, NULL),
(7, 12, 22, '2020-05-01 05:00:36', '2020-05-01 05:00:36');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `book_with_details`
--

CREATE TABLE `book_with_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `stock` int(11) NOT NULL DEFAULT '7',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `book_with_details`
--

INSERT INTO `book_with_details` (`id`, `name`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(3, 'numbe book 5', 65, 5, '2020-03-16 07:42:17', '2020-03-16 07:42:17'),
(5, 'numbe book 55', 55, 55, '2020-03-16 07:45:11', '2020-03-16 07:45:11'),
(7, 'numbe book 55', 20, 55, '2020-03-16 07:48:52', '2020-03-16 07:48:52'),
(9, 'numbe book 1111', 43000, 5, '2020-03-16 07:54:24', '2020-05-01 04:59:44'),
(10, 'numbe book 1', 55, 5, '2020-03-16 07:54:25', '2020-03-16 07:54:25'),
(11, 'numbe book 55', 15, 7, '2020-03-16 07:55:44', '2020-04-29 07:39:10'),
(12, 'new book', 999, 10, '2020-05-01 05:00:36', '2020-05-01 05:00:36');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_03_09_132210_create_users_table', 1),
(2, '2020_03_09_132224_create_admins_table', 1),
(3, '2020_03_11_071031_create_book_with_details_table', 2),
(4, '2020_03_11_071456_create_authors_table', 2),
(5, '2020_03_11_095907_create_book_with_details_table', 3),
(6, '2020_03_11_100052_create_authors_table', 3),
(7, '2020_03_11_100203_create_books_table', 4),
(8, '2020_03_11_125605_create_book_with_details_table', 5),
(9, '2020_03_11_125915_create_books_table', 6),
(10, '2020_03_18_162433_order', 7),
(11, '2020_03_11_072045_create_books_table', 8),
(12, '2020_03_18_162851_ordered_product', 9),
(13, '2020_04_28_135019_add_status_to_user', 10);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_order` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `id_book` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `id_order`, `quantity`, `id_book`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, '2020-03-19 04:23:50', '2020-03-19 04:23:50'),
(2, 9, 1, 2, '2020-03-19 04:23:50', '2020-03-19 04:23:50'),
(3, 10, 1, 5, '2020-03-19 05:37:47', '2020-03-19 05:37:47'),
(4, 10, 12, 2, '2020-03-19 05:37:47', '2020-03-19 05:37:47'),
(5, 11, 11, 1, '2020-03-20 05:43:16', '2020-03-20 05:43:16'),
(6, 13, 1, 1, '2020-03-20 05:45:56', '2020-03-20 05:45:56'),
(7, 13, 1, 3, '2020-03-20 05:45:56', '2020-03-20 05:45:56'),
(8, 15, 1, 6, '2020-03-20 05:52:38', '2020-03-20 05:52:38'),
(9, 17, 7, 1, '2020-03-21 05:09:44', '2020-03-21 05:09:44'),
(10, 17, 1, 5, '2020-03-21 05:09:44', '2020-03-21 05:09:44'),
(11, 18, 1, 5, '2020-04-28 10:28:39', '2020-04-28 10:28:39'),
(12, 18, 10, 1, '2020-04-28 10:28:39', '2020-04-28 10:28:39'),
(13, 19, 1, 1, '2020-04-30 09:50:27', '2020-04-30 09:50:27'),
(14, 19, 2, 2, '2020-04-30 09:50:27', '2020-04-30 09:50:27'),
(15, 19, 1, 5, '2020-04-30 09:50:27', '2020-04-30 09:50:27'),
(16, 20, 3, 3, '2020-04-30 09:50:53', '2020-04-30 09:50:53'),
(17, 21, 1, 2, '2020-05-01 04:44:04', '2020-05-01 04:44:04'),
(18, 21, 1, 4, '2020-05-01 04:44:04', '2020-05-01 04:44:04'),
(19, 22, 2, 3, '2020-05-01 04:45:41', '2020-05-01 04:45:41');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `firstname`, `lastname`, `email`, `adress`, `created_at`, `updated_at`) VALUES
(9, 8, 'Andrei', 'Stan', 'stan.andrey@yahoo.com', 'Cluj', '2020-03-19 04:23:50', '2020-03-19 04:23:50'),
(10, 8, 'Andrei', 'Stan', 'ghita@yahoo.com', 'Amsterdam', '2020-03-19 05:37:47', '2020-03-19 05:37:47'),
(11, 12, 'Maria', 'Pop', 'mariapop@yahoo.com', 'Viena', '2020-03-20 05:43:16', '2020-03-20 05:43:16'),
(13, 12, 'Maria', 'Stan', 'stan.andrey@yahoo.com', 'Cluj', '2020-03-20 05:45:56', '2020-03-20 05:45:56'),
(15, 12, 'Maria', 'Muresan', 'stan.andrey@yahoo.com', 'Cluj-Napoca', '2020-03-20 05:52:38', '2020-03-20 05:52:38'),
(17, 13, 'Martin', 'Marty', 'martin@yahoo.com', 'Cluj-Napoca', '2020-03-21 05:09:44', '2020-03-21 05:09:44'),
(18, 12, 'Test name', 'Test Last name', 'stan.andrey@yahoo.com', 'Cluj', '2020-04-28 10:28:39', '2020-04-28 10:28:39'),
(19, 12, 'Andrei', 'Stan', 'stan.andrei234@gmail.com', 'Cluj', '2020-04-30 09:50:27', '2020-04-30 09:50:27'),
(20, 12, 'Andrei', 'Stan', 'stan.andrei234@gmail.com', 'Cluj', '2020-04-30 09:50:53', '2020-04-30 09:50:53'),
(21, 41, 'Aurel', 'Filip', 'aurel.filip@sofetexco.ro', 'Cluj', '2020-05-01 04:44:03', '2020-05-01 04:44:03'),
(22, 41, 'Aurel', 'Filip', 'aurel.filip@sofetexco.ro', 'Cluj', '2020-05-01 04:45:41', '2020-05-01 04:45:41');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('stan.andrey@yahoo.com', '$2y$10$ST0ou0x6kCVWZK7DO6A0y.VLuCeSSrv.DZVe5JBk/QcQC6nZ46f/e', '2020-03-10 11:26:00');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Eliminarea datelor din tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `status`) VALUES
(8, 'ionut', 'stan.andrey@yahoo.com', '123', NULL, '2020-03-10 02:48:42', '2020-03-10 02:48:42', 'Active'),
(12, 'Stan Andreii', 'stan.andrei234@gmail.com', '$2y$10$4uw8P8G51vNYPh8c2c7kLe7ZuPfdQUcy1J8fM8.X04xJzUhyKJoeC', NULL, '2020-03-20 04:31:13', '2020-04-30 09:48:08', 'Active'),
(13, 'Martin', 'martin@yahoo.com', '$2y$10$/CC.3jNMY0kBNNSnH1SB9eEI92pZ2xfWtnDhHXUwS69Ru5TH1uhTe', NULL, '2020-03-21 05:04:20', '2020-04-29 10:26:24', 'Active'),
(40, 'New User', 'stan.andrey291197@gmail.com', '$2y$10$Q1RIrgN82ac1yOAb2d88euuhhb4VabrCubzFmYAnbrH0JEEboo5Au', NULL, '2020-04-29 05:35:34', '2020-04-29 10:27:06', 'Active'),
(41, 'Aurel', 'aurel.filip@sofetexco.ro', '$2y$10$goaz3niMUnIwmhbQQ/FVQORgqs3m94zHdnYpxBlSQ5olJVY3FQ2Ia', NULL, '2020-05-01 04:34:33', '2020-05-01 04:35:52', 'Active'),
(42, 'Ana are mere', 'test@yahoo.com', '$2y$10$ENZFqdvTcRT./Bl6PkTUR.R4hI4pN1m58CUzAPhTqz7m6Z4pjWdOW', NULL, '2020-05-01 04:51:46', '2020-05-01 04:52:02', 'Active'),
(43, 'Miaunica', 'anamariadanila96@gmail.com', '$2y$10$DDpXzFsIOoeHL4E6Ahp8CO0dp3CxiiV1VZCpbszco9qOeVQQtb7pO', NULL, '2020-05-01 07:09:40', '2020-05-01 07:14:09', 'Active');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_id_bookwithdetails_foreign` (`id_bookwithdetails`),
  ADD KEY `books_id_author_foreign` (`id_author`);

--
-- Indexuri pentru tabele `book_with_details`
--
ALTER TABLE `book_with_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_id_order_foreign` (`id_order`),
  ADD KEY `ordered_products_id_book_foreign` (`id_book`);

--
-- Indexuri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_user_foreign` (`id_user`);

--
-- Indexuri pentru tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pentru tabele `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pentru tabele `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pentru tabele `book_with_details`
--
ALTER TABLE `book_with_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pentru tabele `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pentru tabele `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pentru tabele `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pentru tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_id_author_foreign` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_id_bookwithdetails_foreign` FOREIGN KEY (`id_bookwithdetails`) REFERENCES `book_with_details` (`id`);

--
-- Constrângeri pentru tabele `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_id_book_foreign` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `ordered_products_id_order_foreign` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Constrângeri pentru tabele `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
