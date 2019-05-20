-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 07:38 AM
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
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `language_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kategorija 1', 'slug1', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(2, 'Kategorija 2', 'slug2', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(3, 'Kategorija 3', 'slug3', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(4, 'Kategorija 4', 'slug4', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(5, 'Kategorija 5', 'slug5', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(6, 'Kategorija 6', 'slug6', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(7, 'Aut et ullam aut iure omnis incidunt dicta ipsum.', 'Corporis et consequuntur sed enim unde.', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(8, 'Quod et sint officiis.', 'Voluptatem ut sunt ut nam laboriosam.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(9, 'Sit doloribus commodi et est sit ut.', 'Necessitatibus debitis ut corporis aliquam qui odit.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(10, 'Et qui voluptatem dignissimos cupiditate dolor.', 'Ut repellat tempora ut nobis.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(11, 'Eius aut ex illum voluptates similique.', 'Totam eos ut rerum dolor voluptates.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(12, 'Beatae fuga quisquam aut ipsum quis voluptas.', 'Dolorem voluptatibus quos sapiente.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(13, 'Eligendi architecto sapiente quasi ducimus voluptas quo.', 'Ut quam quas et ipsum ipsam ea dignissimos.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(14, 'Tempore ea et similique expedita totam fugit.', 'Et qui porro reprehenderit aspernatur.', 1, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(15, 'Eaque qui non quia.', 'Est architecto sed est accusantium et recusandae alias.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL),
(16, 'Quasi quasi et sint suscipit incidunt blanditiis similique dolorem.', 'Ut porro deserunt rerum assumenda doloremque.', 2, '2019-05-18 15:00:58', '2019-05-18 15:00:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ingredients`
--

INSERT INTO `ingredients` (`id`, `title`, `slug`, `language_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sastojak 1', 'slug1', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(2, 'Sastojak 2', 'slug2', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(3, 'Sastojak 3', 'slug3', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(4, 'Sastojak 4', 'slug4', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(5, 'Sastojak 5', 'slug5', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(6, 'Sastojak 6', 'slug6', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(7, 'Nobis nesciunt quam et excepturi vitae totam qui.', 'Qui dolor suscipit dolorum quae perspiciatis aut.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(8, 'Molestiae et alias consectetur sed.', 'Animi ea libero eum nesciunt ab.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(9, 'Qui labore rem esse ea voluptatum et fugit.', 'Est eius dolorem et.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(10, 'Veniam aut qui quae ratione est autem ullam.', 'Accusantium accusamus error quidem quibusdam est sit.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(11, 'Sit excepturi autem commodi aut harum.', 'Dolor voluptatem blanditiis qui sequi.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(12, 'Earum consequuntur omnis quaerat fugiat possimus animi amet.', 'Alias sed non adipisci cumque omnis et ut.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(13, 'Ipsum consequatur atque at amet veniam deleniti accusantium.', 'Vero sunt quidem quod deserunt.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(14, 'Sunt voluptatem et voluptatem ipsa.', 'Vel omnis est omnis sequi eos tempore.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(15, 'Laboriosam qui et et dolorem.', 'Expedita dolores veritatis enim explicabo ut ratione.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(16, 'Cum porro modi iusto.', 'Debitis alias in aliquid pariatur perspiciatis natus ut nihil.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(17, 'Atque dolores reprehenderit illo et.', 'Vel fugit rem quo veritatis impedit molestias.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(18, 'Eos dolores consequatur impedit dolores.', 'Soluta perferendis sunt maiores ut sint.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(19, 'Autem perspiciatis natus fugiat qui quos minus aut.', 'Dolor ut ut blanditiis porro repudiandae.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(20, 'Excepturi laborum aut qui voluptas voluptatem voluptates autem.', 'Repellendus rem facere distinctio enim optio rerum deserunt.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(21, 'Ut voluptatem est et magni vitae sequi porro in.', 'Officiis qui eaque numquam odit molestias quidem.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(22, 'Hic atque ut et accusamus.', 'Nobis rerum et enim rerum.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(23, 'Omnis atque perspiciatis est quo eveniet occaecati.', 'Soluta et et impedit et facere itaque eos.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(24, 'Est soluta vel illum explicabo.', 'Quia quis fugiat qui dolor neque.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(25, 'Occaecati temporibus dolorum aut.', 'Nisi possimus corrupti repellat tempora voluptatum magni quia.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(26, 'Laboriosam nam ex consequatur illum voluptatibus ea alias.', 'Hic provident molestiae quia illo consequatur aliquid beatae.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(27, 'Voluptatem molestiae id nihil.', 'Ea ea molestiae dolores voluptatem.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(28, 'Consequuntur sunt rem officiis nobis.', 'Repellat vel et ipsum quia ratione.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(29, 'Corrupti earum in voluptas accusamus quasi nihil.', 'Explicabo et impedit sapiente incidunt omnis a.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(30, 'Itaque delectus fuga fuga sequi.', 'Rerum accusamus reiciendis dicta dolor et officiis eum quo.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(31, 'Qui est tenetur aut est velit nobis.', 'Sed aperiam temporibus adipisci et aperiam eum illo.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(32, 'Error esse sit omnis est quis enim quasi itaque.', 'Sed totam amet labore unde fuga pariatur.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(33, 'Aut rem temporibus nostrum velit quia.', 'Quo ut totam ut quia.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(34, 'Voluptatem aperiam autem ipsa alias.', 'Culpa consequatur animi et excepturi dicta corporis quis.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(35, 'Illo adipisci dolor velit aut.', 'Quasi vero incidunt quos voluptatem ut doloribus.', 1, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL),
(36, 'Aut dignissimos ipsum vitae nesciunt ab sit rerum.', 'Magni recusandae pariatur et quas rerum et hic.', 2, '2019-05-18 15:01:41', '2019-05-18 15:01:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `slug`, `iso_label`, `created_at`, `updated_at`) VALUES
(1, 'Hrvatski jezik', 'hrvatski-jezik', 'hr', '2019-05-18 15:00:48', '2019-05-18 15:00:48'),
(2, 'Engleski jezik', 'engleski-jezik', 'en', '2019-05-18 15:00:48', '2019-05-18 15:00:48');

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
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `title`, `slug`, `description`, `category_id`, `language_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jelo 1', 'jelo1', 'opis1', 1, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(2, 'Jelo 2', 'jelo2', 'opis2', 1, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(3, 'Jelo 3', 'jelo3', 'opis3', 1, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(4, 'Jelo 4', 'jelo4', 'opis4', 2, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(5, 'Jelo 5', 'jelo5', 'opis5', 2, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(6, 'Jelo 6', 'jelo6', 'opis6', 1, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(7, 'Jelo 7', 'jelo7', 'opis7', 1, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(8, 'Jelo 8', 'jelo8', 'opis8', 3, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(9, 'Repellendus qui vitae illum non omnis quis.', 'Qui nesciunt aut voluptatem in quaerat itaque.', 'Aliquid consequatur fugit perferendis et.', 6, 1, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(10, 'Alias molestiae deleniti quisquam tempore possimus voluptatem veniam.', 'Voluptas sint quisquam dignissimos dolorem.', 'Vitae iste dolor quod modi aperiam repudiandae reprehenderit.', 1, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(11, 'Optio iure tempora omnis aliquam omnis sed voluptatem.', 'Eaque et dicta velit quam facilis.', 'Animi et distinctio quos ducimus.', 3, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(12, 'Non inventore soluta odit numquam.', 'Facere libero facere error.', 'Pariatur molestiae sed facilis dolor saepe illo atque.', 5, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(13, 'Eos est quo fugiat placeat aut.', 'Voluptas voluptas totam facilis consequuntur maiores.', 'Mollitia deserunt atque aut.', 3, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(14, 'Nesciunt illum dolorum voluptatem ullam dolores culpa eum.', 'Qui delectus consequatur exercitationem quae labore magnam.', 'Soluta voluptas sunt hic accusamus repudiandae et deserunt.', 3, 1, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(15, 'Minima praesentium ea aut quo dolor.', 'Tenetur ipsam id reiciendis voluptatem molestias dolorum molestias.', 'Unde autem est mollitia placeat alias.', 2, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(16, 'Vel perferendis sequi accusamus dolor.', 'Ab enim quis omnis ut.', 'Hic qui dolorem vel quis eum.', 4, 2, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(17, 'Tempore ut doloribus est ab autem.', 'Et sed est vel vel nulla qui aut quam.', 'Perferendis impedit numquam non magnam ut voluptatibus consequatur.', 4, 1, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL),
(18, 'Ipsa ut laborum qui nesciunt modi molestias.', 'Enim voluptates non libero tenetur sit ullam qui.', 'Natus minus ut tempore sint vel.', 6, 1, '2019-05-18 15:01:52', '2019-05-18 15:01:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `meals_ingredients`
--

CREATE TABLE `meals_ingredients` (
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ingredients_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_ingredients`
--

INSERT INTO `meals_ingredients` (`meal_id`, `ingredients_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(2, 5),
(3, 5),
(4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `meals_tags`
--

CREATE TABLE `meals_tags` (
  `meal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tag_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals_tags`
--

INSERT INTO `meals_tags` (`meal_id`, `tag_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(2, 5),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 8),
(9, 10);

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
(3, '2019_05_16_160042_create_languages_table', 1),
(4, '2019_05_16_162645_create_categories_table', 1),
(5, '2019_05_16_162718_create_meals_table', 1),
(6, '2019_05_16_162753_create_ingredients_table', 1),
(7, '2019_05_16_162823_create_tags_table', 1),
(8, '2019_05_16_162856_create_meals_tags_table', 1),
(9, '2019_05_16_162926_create_meals_ingredients_table', 1);

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
  `language_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `language_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'tag 1', 'tag1', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(2, 'tag 2', 'tag2', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(3, 'tag 3', 'tag3', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(4, 'tag 4', 'tag4', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(5, 'tag 5', 'tag5', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(6, 'Eaque expedita et rerum.', 'Est culpa id dignissimos sed.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(7, 'Velit quis non debitis doloribus harum impedit perferendis.', 'Vitae et pariatur ipsam alias.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(8, 'Earum aut similique laudantium beatae.', 'Quidem hic enim ut velit.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(9, 'Vero dolores omnis deserunt laborum nemo quae.', 'Magnam labore sapiente ad illum dolore nihil.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(10, 'Eius iste qui veniam.', 'Libero odit voluptatem ullam voluptatem mollitia ut.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(11, 'Rem provident harum perferendis a adipisci iure provident rem.', 'Qui ut voluptatem sint quo itaque.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(12, 'Sunt magni cum eius alias sed magnam.', 'Vel omnis quos cumque ut architecto.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(13, 'Consectetur qui perspiciatis deserunt ad soluta non vel.', 'Sit officiis odit consequatur sint sunt ut.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(14, 'Consectetur tempore aut harum vel.', 'Nihil provident at non.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(15, 'Reprehenderit non et voluptas fugit est itaque sapiente.', 'Sit quod expedita illum vel.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(16, 'Est placeat omnis delectus illo.', 'Voluptas molestiae debitis et ipsa ut.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(17, 'Maxime quia in cum sed.', 'Nihil velit laudantium qui.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(18, 'Laudantium eos veritatis aut sint molestiae quia sit.', 'Asperiores voluptas dolor sit omnis.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(19, 'Laboriosam sit voluptate fugit nam voluptatibus.', 'Voluptatem rem vitae et facere.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(20, 'Fugit sed recusandae hic recusandae.', 'Quam qui aliquam enim tenetur eum.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(21, 'Dolores repellat tenetur eum ex et ipsa soluta.', 'Omnis provident ipsam optio culpa autem.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(22, 'Tempora laudantium temporibus reiciendis quisquam quisquam doloribus delectus.', 'Ratione sint voluptas non ut.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(23, 'Et cupiditate quod excepturi itaque in ab porro nihil.', 'Officiis aut quae maiores omnis minima vel delectus.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(24, 'Quo sit in cumque necessitatibus laudantium.', 'Molestiae maxime doloremque ex architecto natus quos nesciunt illum.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(25, 'Excepturi et incidunt totam dolor sunt minus.', 'Occaecati et nesciunt labore.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(26, 'Eius dolor non enim dolores debitis.', 'Omnis quasi consequatur cupiditate vitae.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(27, 'Nobis rerum numquam earum distinctio architecto facilis aliquam.', 'Consequatur dolore esse ut sunt officia.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(28, 'Ut temporibus officiis minima animi.', 'Aliquam quia quia cupiditate ipsam.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(29, 'Ea est dolorem autem explicabo est enim.', 'Quisquam dicta aliquid rem labore et est.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(30, 'Ut ea perspiciatis aut qui fugit.', 'In quia facilis est asperiores.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(31, 'Quos illum eos ut quasi rerum sint.', 'Non mollitia voluptas suscipit ut consequatur numquam.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(32, 'Aut nobis ab et est minima aut qui a.', 'Qui fugiat rerum dolore eveniet.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(33, 'Aut corporis eveniet blanditiis fuga maxime impedit.', 'Porro quasi est temporibus neque sapiente consequatur.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(34, 'Ipsum quo ratione voluptatem aliquam explicabo.', 'Omnis sed distinctio iure aut voluptas sed ratione.', 1, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL),
(35, 'Esse et quod consequatur iure eos officia magnam.', 'Et non harum nam saepe aut pariatur cumque.', 2, '2019-05-18 15:02:23', '2019-05-18 15:02:23', NULL);

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
  ADD KEY `categories_deleted_at_index` (`deleted_at`),
  ADD KEY `categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ingredients_deleted_at_index` (`deleted_at`),
  ADD KEY `ingredients_language_id_foreign` (`language_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_deleted_at_index` (`deleted_at`),
  ADD KEY `meals_category_id_foreign` (`category_id`),
  ADD KEY `meals_language_id_foreign` (`language_id`);

--
-- Indexes for table `meals_ingredients`
--
ALTER TABLE `meals_ingredients`
  ADD KEY `meals_ingredients_meal_id_foreign` (`meal_id`),
  ADD KEY `meals_ingredients_ingredients_id_foreign` (`ingredients_id`);

--
-- Indexes for table `meals_tags`
--
ALTER TABLE `meals_tags`
  ADD KEY `meals_tags_meal_id_foreign` (`meal_id`),
  ADD KEY `meals_tags_tag_id_foreign` (`tag_id`);

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
  ADD KEY `tags_deleted_at_index` (`deleted_at`),
  ADD KEY `tags_language_id_foreign` (`language_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ingredients`
--
ALTER TABLE `ingredients`
  ADD CONSTRAINT `ingredients_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meals_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meals_ingredients`
--
ALTER TABLE `meals_ingredients`
  ADD CONSTRAINT `meals_ingredients_ingredients_id_foreign` FOREIGN KEY (`ingredients_id`) REFERENCES `ingredients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meals_ingredients_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meals_tags`
--
ALTER TABLE `meals_tags`
  ADD CONSTRAINT `meals_tags_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meals_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
