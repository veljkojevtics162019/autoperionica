-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 22, 2021 at 05:55 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autoperionica_prod`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `subject`, `message`, `phone_number`, `created_at`, `updated_at`) VALUES
(2, 'Nemanja Kovačević', 'Subject test', 'Poruka moja', '066444555', '2021-06-18 20:03:03', '2021-06-18 20:03:03'),
(3, 'Nemanja Kova', 'TEST SUB', 'PORUKA TEST', '055444555', '2021-06-18 20:03:49', '2021-06-18 20:03:49'),
(4, 'Nemanja Kova', 'TEST SUB', 'PORUKA TEST', '055444555', '2021-06-18 20:04:44', '2021-06-18 20:04:44'),
(5, 'NOVO IME', 'NOVI SUB', 'NOVA PORUKA', '04444444444', '2021-06-18 20:05:07', '2021-06-18 20:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `date_of_birth`, `city`, `street`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Itachi Uchiha', '1998-04-24', 'Konoha', 'Konoha b.b', 'Genjutsu Senior Expert', '2021-06-22 16:41:49', '2021-06-22 16:52:39'),
(4, 'Jovan Jevtić', '1997-06-24', 'Smederevo', 'Skobalj b.b', 'Nervozan još', '2021-06-22 17:38:19', '2021-06-22 17:39:55'),
(3, 'Deidara', '2000-06-23', 'Kamen', 'Kamen b.b', 'Umetnik za bombe', '2021-06-22 16:43:30', '2021-06-22 16:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `image_src`, `created_at`, `updated_at`) VALUES
(1, 'Audi A7', 'https://silverservis.rs/wp-content/uploads/2020/11/20200909_130805-1-scaled.jpg', '2021-06-18 21:18:16', '2021-06-18 21:18:17'),
(2, 'Audi A7', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20200817_203347_886.jpg', '2021-06-18 21:22:22', '2021-06-18 21:22:25'),
(3, 'Mercedes Benz GLC', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20200914_194944_299.jpg', '2021-06-18 21:22:23', '2021-06-18 21:22:25'),
(4, 'Tesla Model S', 'https://silverservis.rs/wp-content/uploads/2021/01/IMG_20201128_102132_455-min.jpg', '2021-06-18 21:22:23', '2021-06-18 21:22:26'),
(5, 'Tesla Model S', 'https://silverservis.rs/wp-content/uploads/2021/01/IMG_20201128_102136_719-min.jpg', '2021-06-18 21:22:24', '2021-06-18 21:22:27'),
(6, 'BMW serije 5 i Skoda Superb', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201112_202329.jpg', NULL, NULL),
(7, 'Audi S3 i BMW serije 3', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201112_201649.jpg', NULL, NULL),
(8, 'Land Rover Discovery i Mercedes Benz GLC', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201112_203714.jpg', NULL, NULL),
(9, 'Pre i posle poliranja', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20200822_224316.jpg', NULL, NULL),
(10, 'Pranje motora ', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201105_181746.jpg', NULL, NULL),
(11, 'Poliranje završetka auspuha', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201101_211123.jpg', NULL, NULL),
(12, 'Pre i posle poliranja', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201031_212556.jpg', NULL, NULL),
(13, 'Pre i posle poliranja', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20200823_112705.jpg', NULL, NULL),
(14, 'Pranje felni', 'https://www.ramyautomotive.com/pub/media/catalog/product/cache/29c5c467c07200102a09e9b6ca3837a0/2/3/230-500-bi-2.1715.jpg', NULL, NULL),
(15, 'Pre i posle pranja potkrila', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20201102_111630.jpg', NULL, NULL),
(16, 'Pranje felni i kocionih klješta', 'https://silverservis.rs/wp-content/uploads/2020/11/MG_0894.jpg', NULL, NULL),
(17, 'Pranje vozila spolja', 'https://silverservis.rs/wp-content/uploads/2021/01/IMG_20201216_181151_043-min-scaled.jpg', NULL, NULL),
(18, 'Enterijer nakon tretmana', 'https://silverservis.rs/wp-content/uploads/2020/11/MG_0879.jpg', NULL, NULL),
(19, 'Enterijer nakon tretmana', 'https://silverservis.rs/wp-content/uploads/2020/11/20200909_142923-scaled.jpg', NULL, NULL),
(20, 'Gepek nakon usisavanja', 'https://silverservis.rs/wp-content/uploads/2020/11/IMG_20200905_190602_730.jpg', NULL, NULL),
(21, 'Pranje vozila spolja', 'https://silverservis.rs/wp-content/uploads/2021/01/IMG_20201227_143209_851-min.jpg', NULL, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_06_18_205155_create_products_table', 2),
(6, '2021_06_18_205214_create_employees_table', 2),
(7, '2021_06_18_205234_create_contacts_table', 2),
(8, '2021_06_18_205307_create_galleries_table', 2),
(9, '2021_06_18_205340_create_suppliers_table', 2),
(10, '2021_06_20_105649_create_reviews_table', 3),
(11, '2021_06_20_230917_create_abouts_table', 4),
(12, '2021_06_21_221030_create_roles_table', 4),
(13, '2021_06_21_221542_add_role_id_column_to_users_table', 5);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(2, 'Kompletno pranje VOZILA UPDATED', 'Pranje eksterijera i enterijera vozila, usisavanje, brisanje plastika od prašine.', 750, '2021-06-18 21:04:41', '2021-06-21 21:29:06'),
(3, 'Dubinsko pranje sedišta', 'Dubinsko pranje sedišta samponima koji uklanjaju sve vidljive i nevidljive nečistoće i prljavštine.', 2000, '2021-06-18 21:05:10', '2021-06-18 21:05:11'),
(4, 'Poliranje stakla', 'Uklanjanje površinskih ogrebotina sa stakala, uklanjamo lepak koji ostaje nakon odlepljivanja folija za zatamnjivanje stakala.', 3000, '2021-06-18 21:15:44', '2021-06-18 21:15:44'),
(5, 'Poliranje farova', 'Vraćamo fabrički izgled farovima uz zaštitu od ponovnog matiranja.', 15000, '2021-06-20 14:07:43', '2021-06-21 21:29:23'),
(6, 'Pranje felni', 'Felne vremenom izgube sjaj i zadobiju povrsinska oštećenja koja se ne mogu ukloniti običnim pranjem. Mi možemo vratiti stari sjaj svakoj felni.', 2500, '2021-06-20 14:15:23', '2021-06-20 14:15:24'),
(7, 'Poliranje vozila', 'Kompletno poliranje vozila, dvoslojno, koje uklanja sva površinska oštećenja na farbi i vraća sjaj i dubinu boji. ', 5000, '2021-06-20 14:17:11', '2021-06-20 14:17:12'),
(10, 'NOVA USLUGA', 'opis nove uslug', 1333, '2021-06-22 17:29:07', '2021-06-22 17:30:36'),
(9, 'Pranje motornog prostora', 'Otklanjanje masnoća i nečistoća s motora. Pranje pod pritiskom. Nanošenje sredstva za sjaj plastike i creva ispod haube.', 2000, '2021-06-20 14:31:58', '2021-06-20 14:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `comment`, `star`, `created_at`, `updated_at`) VALUES
(1, 1, 'Svaka preporuka za perionicu', 8, '2021-06-20 11:00:52', '2021-06-20 11:00:54'),
(2, 1, 'Svaka čast osoblju, odlična usluga', 10, '2021-06-20 11:01:15', '2021-06-20 11:01:15'),
(3, 1, 'Oduševljen sam uslugom', 10, '2021-06-20 11:39:10', '2021-06-20 11:39:10'),
(4, 1, 'Dugo sam čekao u redu za pranje ali je na kraju vredelo', 7, '2021-06-20 11:41:05', '2021-06-20 11:41:05'),
(5, 1, 'Prijatna atmosfera, ali nisam toliko zadovoljan uslugom', 5, '2021-06-20 11:42:40', '2021-06-20 11:42:40'),
(6, 1, 'Dugo traje sredjivanje vozila, inace je sve bilo ekstra', 6, '2021-06-20 11:45:01', '2021-06-20 11:45:01'),
(7, 2, 'Sigurno ponovo dolazim, odlična usluga!', 10, '2021-06-20 12:01:28', '2021-06-20 12:01:28'),
(8, 2, 'Svaka čast radnicima, kao da sam dobio nov auto!', 10, '2021-06-20 12:03:48', '2021-06-20 12:03:48'),
(9, 2, 'Sve je bilo korektno.', 8, '2021-06-20 13:08:23', '2021-06-20 13:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Guest', 'guest', '2021-06-21 20:13:37', '2021-06-21 20:13:40'),
(2, 'Editor', 'editor', '2021-06-21 20:13:46', '2021-06-21 20:13:48'),
(3, 'Admin', 'admin', '2021-06-21 20:13:54', '2021-06-21 20:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `city`, `street`, `type_of_product`, `created_at`, `updated_at`) VALUES
(1, 'Boban AŽURIRAN', 'Beograd', 'Resnik ulica', 'Droga NA KILO', '2021-06-22 16:28:03', '2021-06-22 16:37:17'),
(3, 'Tsusikage', 'Sremska Kamenica', 'Kameni put', 'Kamenje', '2021-06-22 16:29:01', '2021-06-22 16:29:01'),
(4, 'Raikage', 'Munja', 'Munja b.b', 'Pesničarenje', '2021-06-22 17:41:57', '2021-06-22 17:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 'Nemanja', 'nemanja.udeveloper@gmail.com', NULL, '$2y$10$J88KnKS6eJzhIGC6831crOSvbojYOkgYR9ozaevR0ypDAHMVeKR7.', NULL, NULL, NULL, '2021-06-18 18:43:58', '2021-06-18 18:43:58'),
(2, 2, 'Veljko EDITOR', 'veljko2000jevtic@gmail.com', NULL, '$2y$10$xCg8hxrDTSzepPvyxYD.DuhdkqDEny0FKbd69IVlF7uqWJ0ZVeVVK', NULL, NULL, NULL, '2021-06-20 13:07:26', '2021-06-22 17:14:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
