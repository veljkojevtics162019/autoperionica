-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2021 at 03:13 PM
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
-- Database: `autoperionica`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `subject`, `message`, `phone_number`, `created_at`, `updated_at`) VALUES
(10, 'Miomir', 'Pitanje', 'Da li perete i tepihe?', '0611225544', '2021-06-22 19:58:43', '2021-06-22 19:58:43'),
(9, 'Goran', 'Pitanje', 'Da li je potrebno zakazati pranje?', '0632225557', '2021-06-22 18:48:14', '2021-06-22 18:48:14'),
(8, 'Zoran Tadic', 'Pitanje', 'Dobar dan. Da li radite i nedeljom?', '0612223334', '2021-06-22 18:47:43', '2021-06-22 18:47:43'),
(11, 'Dragica', 'Zakazivanje', 'Htela bih da pitam da li je moguće zakazati pranje spolja za sredu u 8 ujutru?', '0695552221', '2021-06-22 19:59:41', '2021-06-22 19:59:41'),
(12, 'Jovan', 'Pitanje', 'Da li radite i za vreme praznika?', '0632225554', '2021-06-22 20:07:12', '2021-06-22 20:07:12'),
(13, 'Stefan', 'Obaveštenje', 'Dobar dan, zaboravio sam dokumenta u perionici, da li bih mogao da dodjem po njih?', '0645558732', '2021-06-22 20:22:46', '2021-06-22 20:22:46'),
(14, 'Procar detailing', 'Poziv', 'Pozivamo vas da dodjete i pogledate nas asortiman proizvoda, Nadamo se saradnji', '0645231465', '2021-06-22 20:23:33', '2021-06-22 20:23:33'),
(15, 'Mladen', 'pitanje', 'Koliko obično traje pranje vozila kod vas?', '0632525252', '2021-06-22 20:33:56', '2021-06-22 20:33:56'),
(16, 'Dragan', 'pitanje u vezi usisavanja', 'Koliko bi trajalo samo usisavanje?', '06235551554', '2021-06-22 20:36:48', '2021-06-22 20:36:48'),
(17, 'Milica', 'pomoc', 'Dete mi je povratilo na sedistu auta, mogu li doci da odradimo pranje odmah? Hvala...', '0622222222', '2021-06-22 20:42:39', '2021-06-22 20:42:39');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `date_of_birth`, `city`, `street`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Goran Avramović', '1998-04-24', 'Smederevo', 'Kneza Lazara 21', 'Sredjivanje vozila', '2021-06-22 16:41:49', '2021-06-22 18:40:10'),
(4, 'Milan Rokvić', '1997-06-24', 'Smederevo', 'Kneza Mihaila 4', 'Sredjivanje vozila', '2021-06-22 17:38:19', '2021-06-22 18:38:45'),
(3, 'Milan Stevanović', '2000-12-26', 'Smederevo', 'Milana Radica 33', 'Sredjivanje vozila', '2021-06-22 16:43:30', '2021-06-22 18:39:28'),
(5, 'Milica Stančić', '1992-09-23', 'Petrijevo', 'Petrijevski put 52', 'Knjigovodja', '2021-06-22 18:42:07', '2021-06-22 18:42:07'),
(6, 'Dragan Zorić', '1988-08-25', 'Smederevo', 'Steve Popovića 53', 'Poliranje vozila', '2021-06-22 18:42:51', '2021-06-22 18:42:51'),
(7, 'Jovan Jevtić', '1997-07-23', 'Skobalj', 'Cetinjska 43', 'Detailing', '2021-06-22 19:51:01', '2021-06-22 19:51:01'),
(8, 'Goran Bregović', '1986-12-22', 'Radinac', 'Maršala Tita 22', 'Detailing', '2021-06-22 19:51:39', '2021-06-22 19:51:39'),
(9, 'Jelena Jevtić', '1995-05-30', 'Beograd', 'Ustanička 44', 'Knjigovodstvo', '2021-06-22 19:52:42', '2021-06-22 19:52:42'),
(10, 'Stefan', '2000-05-22', 'Seone', 'Seone bb', 'Čistač', '2021-06-22 20:25:24', '2021-06-22 20:25:42');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('veljko2000jevtic@gmail.com', '$2y$10$26C6KWK.GllCJxiGzKMLRulHTK1hTZBBeC2ESe9nQHKHAKh2KE392', '2021-06-22 18:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(2, 'Kompletno pranje vozila', 'Pranje eksterijera i enterijera vozila, usisavanje, brisanje plastika od prašine.', 750, '2021-06-18 21:04:41', '2021-06-22 18:21:39'),
(3, 'Dubinsko pranje sedišta', 'Dubinsko pranje sedišta samponima koji uklanjaju sve vidljive i nevidljive nečistoće i prljavštine.', 2000, '2021-06-18 21:05:10', '2021-06-18 21:05:11'),
(4, 'Poliranje stakla', 'Uklanjanje površinskih ogrebotina sa stakala, uklanjamo lepak koji ostaje nakon odlepljivanja folija za zatamnjivanje stakala.', 3000, '2021-06-18 21:15:44', '2021-06-18 21:15:44'),
(5, 'Poliranje farova', 'Vraćamo fabrički izgled farovima uz zaštitu od ponovnog matiranja.', 15000, '2021-06-20 14:07:43', '2021-06-21 21:29:23'),
(6, 'Pranje felni', 'Felne vremenom izgube sjaj i zadobiju povrsinska oštećenja koja se ne mogu ukloniti običnim pranjem. Mi možemo vratiti stari sjaj svakoj felni.', 2500, '2021-06-20 14:15:23', '2021-06-20 14:15:24'),
(7, 'Poliranje vozila', 'Kompletno poliranje vozila, dvoslojno, koje uklanja sva površinska oštećenja na farbi i vraća sjaj i dubinu boji. ', 5000, '2021-06-20 14:17:11', '2021-06-20 14:17:12'),
(10, 'Pranje spolja', 'Pranje vozila spolja i brisanje.', 450, '2021-06-22 17:29:07', '2021-06-22 18:21:18'),
(9, 'Pranje motornog prostora', 'Otklanjanje masnoća i nečistoća s motora. Pranje pod pritiskom. Nanošenje sredstva za sjaj plastike i creva ispod haube.', 2000, '2021-06-20 14:31:58', '2021-06-20 14:32:00'),
(11, 'Detailing tretman', 'Kompletno pranje vozila spolja i iznutra.\r\nDubinsko pranje enterijera.Dvoslojno poliranje.Pranje felni, potkrila.\r\nPremazivanje plastika sredstvom za visok sjaj. Pranje motornog prostora.', 18000, '2021-06-22 18:27:40', '2021-06-22 18:27:40'),
(12, 'Pranje tepiha', 'Peremo vaše tepihe brzo, dubinski.', 2000, '2021-06-22 20:03:27', '2021-06-22 20:03:27'),
(13, 'Poliranje plastika', 'Vraćamo fabrički sjaj svakoj plastici na vozilu.', 1800, '2021-06-22 20:06:23', '2021-06-22 20:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `comment`, `star`, `created_at`, `updated_at`) VALUES
(16, 8, 'Odlicna usluga!', 9, '2021-06-22 19:49:33', '2021-06-22 19:49:33'),
(15, 5, 'Danas sam bio ponovo, ovaj put je bilo odlicno!', 10, '2021-06-22 19:47:47', '2021-06-22 19:47:47'),
(14, 5, 'Moze mnogo bolje ali je okej', 6, '2021-06-22 19:47:18', '2021-06-22 19:47:18'),
(13, 7, 'Malo sam duze cekao u redu ali je sve ostalo bilo super!', 8, '2021-06-22 18:50:01', '2021-06-22 18:50:01'),
(12, 6, 'Sve pohvale za perionicu, VRH', 10, '2021-06-22 18:49:15', '2021-06-22 18:49:15'),
(7, 2, 'Sigurno ponovo dolazim, odlična usluga!', 10, '2021-06-20 12:01:28', '2021-06-20 12:01:28'),
(8, 2, 'Svaka čast radnicima, kao da sam dobio nov auto!', 10, '2021-06-20 12:03:48', '2021-06-20 12:03:48'),
(9, 2, 'Sve je bilo korektno.', 8, '2021-06-20 13:08:23', '2021-06-20 13:08:23'),
(17, 9, 'Bravo za vas!', 10, '2021-06-22 20:01:57', '2021-06-22 20:01:57'),
(18, 7, 'Fali vam muzika u cekaonici', 8, '2021-06-22 20:18:25', '2021-06-22 20:18:25'),
(19, 11, 'Onako', 5, '2021-06-22 20:20:57', '2021-06-22 20:20:57'),
(20, 12, 'Topppp', 10, '2021-06-22 20:21:43', '2021-06-22 20:21:43'),
(21, 7, 'Odusevljen sam!', 10, '2021-06-22 20:31:17', '2021-06-22 20:31:17'),
(22, 9, 'Jos jednom sam bio i stvarno nemam reci... Svaka cast momci!', 10, '2021-06-22 20:38:23', '2021-06-22 20:38:23'),
(23, 9, 'Top top top', 10, '2021-06-22 20:39:03', '2021-06-22 20:39:03'),
(24, 13, 'Bas sam zadovoljna :)', 9, '2021-06-22 20:41:58', '2021-06-22 20:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_product` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `city`, `street`, `type_of_product`, `created_at`, `updated_at`) VALUES
(1, 'Sonax', 'Smederevo', 'Cetinjska 4', 'Masine za pranje', '2021-06-22 16:28:03', '2021-06-22 18:34:01'),
(3, 'Polcar', 'Beograd', 'Zrenjaninski put 34', 'Paste i krpe za poliranje', '2021-06-22 16:29:01', '2021-06-22 18:32:36'),
(4, 'Silux', 'Beograd', 'Milana Bojica 2', 'Samponi i sundjeri za pranje', '2021-06-22 17:41:57', '2021-06-22 18:31:47'),
(5, 'Alpine', 'Smederevo', 'Kneza Mihaila 85', 'Usisivaci', '2021-06-22 18:34:47', '2021-06-22 18:34:47'),
(6, 'Auto Dragstor', 'Velika Plana', 'Kralja Petra 55', 'Zastitna odela za radnike', '2021-06-22 18:36:26', '2021-06-22 18:36:26'),
(7, 'CarShop', 'Smederevo', 'Mihajla Pupina 54a', 'Oprema za ciscenje perionice', '2021-06-22 18:37:36', '2021-06-22 18:37:36'),
(8, 'LuxAuto', 'Sombor', 'Cetinjska bb', 'Sredstva za negu vozila', '2021-06-22 19:56:14', '2021-06-22 19:56:14'),
(9, 'Odigledolokomotive', 'Beograd', 'Partizanska 55', 'Oprema za knjigovodstvo', '2021-06-22 19:57:07', '2021-06-22 19:57:07'),
(10, 'Proline', 'Kragujevac', 'Milana Radojevića 2', 'Šamponi i hemija', '2021-06-22 20:26:32', '2021-06-22 20:26:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 1, 'Goran Avramović', 'Goran@gmail.com', NULL, '$2y$10$RlWlADVn3797hdQTrUOZAO6eLP0Y9Jly7IVMwufbh6/4VIDb0Bqni', NULL, NULL, NULL, '2021-06-22 18:43:41', '2021-06-22 18:43:41'),
(2, 3, 'Veljko', 'veljko2000jevtic@gmail.com', NULL, '$2y$10$xCg8hxrDTSzepPvyxYD.DuhdkqDEny0FKbd69IVlF7uqWJ0ZVeVVK', NULL, NULL, NULL, '2021-06-20 13:07:26', '2021-06-22 18:29:27'),
(5, 1, 'Milan Rokvić', 'Milan@gmail.com', NULL, '$2y$10$ovtF8IG36.iN8G4.s661l.sOWQMWzlJ8W5MEH4NOeuqosuGYTC/vq', NULL, NULL, NULL, '2021-06-22 18:44:06', '2021-06-22 18:44:06'),
(6, 1, 'Dragan Zorić', 'Dragan@gmail.com', NULL, '$2y$10$KROEG6geNovwBOriovHGiOWUuDu7OXkGefbRBnpRsdZ8wxCK0CKzi', NULL, NULL, NULL, '2021-06-22 18:44:33', '2021-06-22 18:44:33'),
(7, 2, 'Petar Mitic', 'Petar@gmail.com', NULL, '$2y$10$duNhDBaYiSd/5GOKEOok4eKX30SxYDL2RAca4ztVircgL5Sm0n5nS', NULL, NULL, NULL, '2021-06-22 18:44:58', '2021-06-22 18:45:42'),
(8, 3, 'Nemanja', 'nemanja@gmail.com', NULL, '$2y$10$Luyhp13uocctlHWckb9ibeLZ22F/kj7pwfeOhKIoLdMiIu9m6XOiO', NULL, NULL, NULL, '2021-06-22 19:49:18', '2021-06-22 20:24:26'),
(9, 1, 'Mitar', 'Mitar@gmail.com', NULL, '$2y$10$PeA6N9Xlby7zM8UYGRNCOO5VJZPATn85BLtyBQYuaEMtemsbansu2', NULL, NULL, NULL, '2021-06-22 20:01:34', '2021-06-22 20:01:34'),
(11, 2, 'Dusko', 'dusko@gmail.com', NULL, '$2y$10$naWtfA0EikE.n4/.bVgPdegeG/WC/65t4rSjKNkUjQOPGDlgOs9s2', NULL, NULL, NULL, '2021-06-22 20:18:59', '2021-06-22 20:24:06'),
(12, 1, 'Nedeljko', 'nedeljko@gmail.com', NULL, '$2y$10$RXU6yXYwPj0QN.SDwAc60uSMN.8W5lEDELAhh0OzH.iYBq7owgNEy', NULL, NULL, NULL, '2021-06-22 20:21:32', '2021-06-22 20:21:32'),
(13, 1, 'Milica', 'Milica@gmail.com', NULL, '$2y$10$pt6OH3WCjUaPiamqsJC5qefRvnmFbt79qQ1Skc2rP9RXeqFYOogXK', NULL, NULL, NULL, '2021-06-22 20:40:02', '2021-06-22 20:40:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
