-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 08:36 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `svijetjela`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kategorija 1', 'slug 1', '2019-05-12 07:02:37', '2019-05-12 16:04:35', NULL),
(2, 'Kategorija 2', 'slug 2', '2019-05-12 07:04:35', '2019-05-12 07:04:35', NULL),
(3, 'Kategorija 3', 'slug 3', '2019-05-12 07:04:52', '2019-05-12 16:17:46', NULL),
(15, 'srtjrtj', 'srtjsrtj', '2019-05-12 16:49:32', '2019-05-12 16:49:35', '2019-05-12 16:49:35'),
(16, 'Kategorija 12', 'slug 12', '2019-05-12 18:07:43', '2019-05-12 18:07:43', NULL),
(17, 'Reprehenderit tenetur quasi quibusdam tempora dolores quis molestias.', 'Et ex eaque eum ex id expedita consequuntur voluptatem.', '2019-05-13 15:12:02', '2019-05-13 15:12:26', '2019-05-13 15:12:26'),
(18, 'Corporis est aut aut harum nostrum.', 'Assumenda esse inventore omnis nobis.', '2019-05-13 15:12:02', '2019-05-13 15:12:29', '2019-05-13 15:12:29'),
(19, 'Velit sit quaerat error et.', 'Et aut saepe et quis delectus.', '2019-05-13 15:12:02', '2019-05-13 15:12:31', '2019-05-13 15:12:31'),
(20, 'Est occaecati vitae laborum ut assumenda incidunt.', 'Modi voluptate fugiat laudantium optio tenetur.', '2019-05-13 15:12:02', '2019-05-13 15:12:02', NULL),
(21, 'Nisi neque ut aut corrupti aut occaecati.', 'Eveniet et error voluptatem sint aperiam quisquam non.', '2019-05-13 15:12:02', '2019-05-13 15:12:33', '2019-05-13 15:12:33'),
(22, 'Minus ut sunt aperiam et sed blanditiis incidunt.', 'Eum nisi ipsa vel repudiandae alias esse sequi.', '2019-05-13 15:12:02', '2019-05-13 15:12:02', NULL),
(23, 'Quo earum eos pariatur doloribus.', 'Ut optio itaque culpa eos veniam quo.', '2019-05-13 15:12:02', '2019-05-13 15:12:02', NULL),
(24, 'Voluptatem consectetur in ipsa aliquam repudiandae in.', 'Dolores eos velit labore qui accusantium.', '2019-05-13 15:12:02', '2019-05-13 15:12:02', NULL),
(25, 'Sint veniam expedita aut minus numquam.', 'Sunt tempore itaque beatae ut id nam.', '2019-05-13 15:12:02', '2019-05-13 15:12:02', NULL),
(26, 'Quia optio dignissimos nobis at fugiat ut voluptatem.', 'Id assumenda quas ex minus.', '2019-05-13 15:12:02', '2019-05-13 16:00:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sastojak 1', 'slug 1', '2019-05-13 15:00:07', '2019-05-13 15:00:14', NULL),
(2, 'Inventore odio deleniti consequatur.', 'Dicta pariatur eum sapiente nostrum nulla animi aut.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(3, 'Eum harum nisi officia nulla dignissimos.', 'Necessitatibus dolor et quia aut.', '2019-05-13 15:18:49', '2019-05-13 16:03:04', NULL),
(4, 'Est autem modi et ducimus quia est omnis vitae.', 'Sit assumenda sed iste fugit.', '2019-05-13 15:18:49', '2019-05-13 15:20:55', '2019-05-13 15:20:55'),
(5, 'Sed voluptas deleniti ea iusto.', 'Modi reprehenderit eius maxime.', '2019-05-13 15:18:49', '2019-05-13 16:03:05', NULL),
(6, 'Totam ipsum doloribus quas nulla excepturi.', 'Excepturi fugit sunt ut perferendis corporis.', '2019-05-13 15:18:49', '2019-05-13 16:03:01', NULL),
(7, 'Perspiciatis neque modi quis velit qui ut.', 'Quos explicabo voluptas libero ratione molestiae.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(8, 'Nulla sed nemo laboriosam rerum quo placeat.', 'Magni laudantium harum eum nihil iste.', '2019-05-13 15:18:49', '2019-05-13 16:02:59', NULL),
(9, 'Labore excepturi praesentium dolor eum praesentium eaque incidunt.', 'Sequi voluptas et possimus et molestiae soluta totam cum.', '2019-05-13 15:18:49', '2019-05-13 16:03:02', NULL),
(10, 'Odit incidunt error est temporibus iusto doloremque asperiores.', 'Ipsa consequatur voluptatem tempora dolorem et consequatur omnis.', '2019-05-13 15:18:49', '2019-05-13 15:20:41', '2019-05-13 15:20:41'),
(11, 'Voluptatem rerum fugit necessitatibus et.', 'Qui enim architecto veritatis ut architecto vel.', '2019-05-13 15:18:49', '2019-05-13 15:20:43', '2019-05-13 15:20:43'),
(12, 'Quidem nihil culpa possimus corrupti.', 'Ea id neque eum fugiat pariatur voluptatibus porro quisquam.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(13, 'Dolores optio culpa accusantium voluptatem.', 'Molestias optio aut accusamus numquam libero.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(14, 'Minima sit odit ducimus qui.', 'Eos dicta ea iure odit doloribus ut.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(15, 'Et similique autem sit delectus ullam magnam reprehenderit.', 'Minima velit velit eos a.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(16, 'Inventore quaerat illum voluptatem dolores vero at laborum.', 'Nam rem illum vel ducimus et omnis.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(17, 'Sed explicabo iusto rerum dignissimos.', 'Laudantium dolores cumque est est ratione perferendis occaecati eligendi.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(18, 'Architecto et aut nobis.', 'Dolore et et ea enim repellendus.', '2019-05-13 15:18:49', '2019-05-13 15:20:53', '2019-05-13 15:20:53'),
(19, 'Velit voluptas voluptas aliquam est maiores deserunt nihil.', 'Molestiae adipisci qui earum eligendi.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(20, 'Sint amet quis exercitationem sit libero magnam.', 'Quia est accusamus aspernatur alias recusandae asperiores.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(21, 'Laborum sunt omnis odio quo.', 'Eius ut recusandae excepturi sit.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(22, 'Recusandae nisi et rerum.', 'Hic illo nisi consequatur ut pariatur ut natus.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(23, 'Sit expedita aperiam praesentium odio.', 'Occaecati iure quis illum.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(24, 'Ut est voluptatem facere earum.', 'Labore cupiditate aut quae atque dolor.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(25, 'A aut quo animi voluptas ea aliquam.', 'Quam ex dolorem ut.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(26, 'Quia molestiae voluptate accusamus et est dolore ullam.', 'Voluptas aperiam ratione voluptas.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(27, 'Nostrum praesentium fugit dolorem libero.', 'Quibusdam molestias quia maxime molestiae unde culpa.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(28, 'Magni dolor animi nihil sint odio non.', 'Quo voluptatem qui facere dignissimos porro voluptas dolorem.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(29, 'Voluptates repellat nesciunt sapiente autem.', 'Modi qui odit quae aut voluptatum placeat neque.', '2019-05-13 15:18:49', '2019-05-13 16:02:58', NULL),
(30, 'Voluptatum accusantium in consequatur consequatur eum.', 'Dolorum quia est libero qui qui incidunt culpa.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL),
(31, 'Odit qui dolor saepe eos modi eligendi dignissimos ea.', 'Consequatur incidunt aut tenetur et.', '2019-05-13 15:18:49', '2019-05-13 15:18:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `title`, `slug`, `description`, `category_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Jelo 3', 'slug 3', 'opis 3', 3, '2019-05-12 14:54:12', '2019-05-12 16:58:53', NULL),
(6, 'Jelo 1', 'slug 1', 'opis 1', 3, '2019-05-12 17:22:56', '2019-05-13 16:33:58', NULL),
(7, 'aahr5', 'slug 12', 'opis4', 1, '2019-05-12 17:52:57', '2019-05-12 19:12:05', NULL),
(16, 'JELO 4', 'slug 4', 'opis 4', NULL, '2019-05-12 19:08:37', '2019-05-12 19:12:03', NULL),
(17, 'ahejtr', 'eajej', 'aejaej', NULL, '2019-05-12 19:12:11', '2019-05-12 19:12:26', '2019-05-12 19:12:26'),
(18, 'Doloribus repudiandae voluptatem sunt ut cumque qui accusantium.', 'Accusamus consequatur commodi temporibus deserunt veniam enim.', 'Dolores ratione saepe esse molestiae architecto blanditiis.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:20:29', '2019-05-13 15:20:29'),
(19, 'Ut consequatur labore ut est.', 'Blanditiis qui vero id vel consequatur quia.', 'Quis ut et quae porro est similique nihil.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:20:18', '2019-05-13 15:20:18'),
(20, 'Ratione aliquid deserunt rerum ipsam odit illo quae.', 'Fugit accusamus omnis nam esse quia.', 'Qui eius rerum non.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:17:03', NULL),
(21, 'Incidunt consectetur porro atque magni.', 'Exercitationem omnis quia vel commodi qui tenetur quod.', 'Soluta ut rerum ipsa sit ut quod.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:20:20', '2019-05-13 15:20:20'),
(22, 'Accusantium quisquam consectetur et enim.', 'Ut recusandae iusto consequatur ad quia in.', 'Similique consequatur rem eos delectus.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:20:27', '2019-05-13 15:20:27'),
(23, 'Autem eaque quo consequatur adipisci unde inventore.', 'Optio provident est mollitia non eos.', 'Ut magnam dolor soluta ut assumenda.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:20:22', '2019-05-13 15:20:22'),
(24, 'Sunt fuga omnis alias et architecto.', 'Et qui impedit hic voluptate.', 'Vel dolorem qui nemo est illo et ut.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:17:03', NULL),
(25, 'Nulla omnis adipisci vel eligendi quidem.', 'Quia et dignissimos cumque est nisi sit.', 'Et nobis quia laudantium.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:20:16', '2019-05-13 15:20:16'),
(26, 'Nemo et dicta quia ipsam possimus.', 'Corrupti ut quam illum ut neque.', 'Autem vitae commodi quo.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:17:03', NULL),
(27, 'Placeat omnis cupiditate mollitia quasi sit.', 'Sit sit rerum accusamus et incidunt.', 'Aliquam in occaecati voluptatem iste quod aliquam quis.', NULL, '2019-05-13 15:17:03', '2019-05-13 15:17:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals_ingredients`
--

CREATE TABLE `meals_ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` int(10) UNSIGNED DEFAULT NULL,
  `ingredients_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_ingredients`
--

INSERT INTO `meals_ingredients` (`id`, `meal_id`, `ingredients_id`) VALUES
(1, 4, 3),
(2, 7, 2),
(3, 5, 3),
(4, 9, 7),
(5, 2, 2),
(6, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `meals_tags`
--

CREATE TABLE `meals_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_tags`
--

INSERT INTO `meals_tags` (`id`, `meal_id`, `tag_id`) VALUES
(1, 4, 3),
(2, 6, 2),
(3, 3, 2),
(4, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_12_084558_create_categories_table', 1),
(5, '2019_05_12_163636_create_meals_table', 2),
(6, '2019_05_13_161850_create_ingredients_table', 3),
(7, '2019_05_13_161913_create_tags_table', 3),
(8, '2019_05_13_161944_create_meals_tags_table', 3),
(9, '2019_05_13_162006_create_meals_ingredients_table', 3);

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
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tag 1', 'slug 1', '2019-05-13 15:05:44', '2019-05-13 16:35:25', NULL),
(2, 'tag 2', 'slug 2', '2019-05-13 15:05:57', '2019-05-13 15:05:57', NULL),
(3, 'Autem molestiae modi laudantium rerum labore.', 'Nemo dolores eum commodi sit minima et officiis.', '2019-05-13 15:19:51', '2019-05-13 15:21:03', '2019-05-13 15:21:03'),
(4, 'Tag 3', 'slug 3', '2019-05-13 15:19:51', '2019-05-13 15:21:35', NULL),
(5, 'Consequatur ullam sed nemo asperiores odit non.', 'Laborum laborum odio optio nulla qui velit excepturi.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(6, 'Iure rem ea aperiam neque consectetur omnis voluptatem.', 'Et quos architecto quo harum eos.', '2019-05-13 15:19:51', '2019-05-13 15:21:05', '2019-05-13 15:21:05'),
(7, 'Rerum nemo pariatur dicta qui voluptatibus excepturi rerum.', 'Nostrum aperiam suscipit omnis eaque.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(8, 'Hic sapiente molestiae iusto omnis.', 'Qui ad quae eveniet pariatur aut velit deserunt deserunt.', '2019-05-13 15:19:51', '2019-05-13 15:21:17', '2019-05-13 15:21:17'),
(9, 'Sed expedita architecto pariatur.', 'Saepe et tempora laboriosam occaecati molestias.', '2019-05-13 15:19:51', '2019-05-13 15:21:07', '2019-05-13 15:21:07'),
(10, 'Aliquam ea in quod rerum.', 'Voluptatem enim sed mollitia.', '2019-05-13 15:19:51', '2019-05-13 15:21:11', '2019-05-13 15:21:11'),
(11, 'Voluptatem numquam quia at assumenda quia aut earum impedit.', 'Reiciendis reprehenderit voluptates est reiciendis qui quasi et ea.', '2019-05-13 15:19:51', '2019-05-13 15:21:09', '2019-05-13 15:21:09'),
(12, 'Ipsam et voluptatem officia quam quia.', 'Eum quasi praesentium recusandae sed.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(13, 'Eligendi praesentium qui similique iste fugiat tempora ut temporibus.', 'Perferendis officiis tempore sapiente nihil.', '2019-05-13 15:19:51', '2019-05-13 15:21:19', '2019-05-13 15:21:19'),
(14, 'Vel in et velit expedita sunt voluptas aut unde.', 'Tenetur vitae quis nemo voluptatibus placeat sed sit.', '2019-05-13 15:19:51', '2019-05-13 15:21:13', '2019-05-13 15:21:13'),
(15, 'Rem nam omnis voluptates dignissimos nulla quos.', 'Animi perferendis eaque expedita id et ut assumenda.', '2019-05-13 15:19:51', '2019-05-13 15:21:15', '2019-05-13 15:21:15'),
(16, 'Autem aspernatur commodi aut sint officia voluptatum laboriosam.', 'Explicabo quo iusto molestiae hic iste alias.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(17, 'Veniam et modi minus.', 'Impedit magnam sed repellat earum vel et occaecati.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(18, 'Maxime architecto nisi consequatur eius repudiandae alias.', 'Modi consequatur quos soluta et ea facere odit sit.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(19, 'Quia velit autem laborum fuga et non.', 'Aliquam nulla officia dolor fugiat quo.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(20, 'Aut harum assumenda aut officia nihil sit.', 'Vel molestiae non fuga pariatur rem.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(21, 'Vel quo voluptatibus id perspiciatis.', 'Vel eius tempora ea.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(22, 'Ullam culpa ut est in necessitatibus quae voluptatibus.', 'Architecto et cum nisi sit sunt repellat.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(23, 'Nam quos unde voluptatem.', 'Reprehenderit et mollitia odit saepe saepe vero.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(24, 'Asperiores odio voluptatem inventore voluptatibus totam libero.', 'Esse non soluta sed vel et.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(25, 'Eum ut ab ea necessitatibus et molestiae unde.', 'Sed quas magnam quia fugiat debitis minima.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(26, 'Deserunt earum quo aut iusto omnis nam necessitatibus.', 'Deleniti incidunt temporibus incidunt molestiae eos aut.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(27, 'Quidem accusamus amet ut soluta architecto.', 'Esse aut quisquam debitis sequi architecto voluptatem et.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(28, 'Ducimus saepe culpa distinctio officiis labore.', 'Ea magnam earum veritatis.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(29, 'Et minus vel id officia.', 'Et et sequi tempora possimus soluta voluptas quia nam.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(30, 'Facere et modi accusantium nam voluptate aut quaerat.', 'Ut fugiat doloribus id a.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(31, 'Eum quia distinctio quos quisquam.', 'Fuga deleniti in animi exercitationem.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL),
(32, 'Dolorum beatae eveniet beatae et culpa distinctio.', 'Molestiae accusamus vero minima iure.', '2019-05-13 15:19:51', '2019-05-13 15:19:51', NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `meals_ingredients`
--
ALTER TABLE `meals_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals_tags`
--
ALTER TABLE `meals_tags`
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
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_deleted_at_index` (`deleted_at`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `meals_ingredients`
--
ALTER TABLE `meals_ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `meals_tags`
--
ALTER TABLE `meals_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
