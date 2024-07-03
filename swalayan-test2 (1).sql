-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2024 pada 07.03
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swalayan-test2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(100) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: active, 1: in active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kahf', 'kahf', 'Kahf', '', '', 0, 1, '2024-06-30 01:06:18', '2024-06-30 01:06:18', NULL),
(2, 'ABC', 'abc', 'ABC', 'ABC', 'ABC', 0, 1, '2024-06-30 01:08:25', '2024-06-30 01:21:14', '2024-06-30 01:21:14'),
(3, 'indomie', 'mie-instan', 'mie-instan', 'mie-instan', '', 0, 1, '2024-07-02 20:10:28', '2024-07-02 20:10:28', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'test', 'care-home', 'test title', 'tes desc', 'tes key', 1, 0, 0, '2024-06-22 09:27:41', '2024-06-22 09:27:41'),
(2, 'test2', 'care-home-1-edit', 'test2', 'test2', 'test2', 1, 0, 1, '2024-06-22 09:32:07', '2024-06-22 11:27:16'),
(3, 'lifestyle', 'lifestyle', 'lifestyle', 'lifestyle', 'lifestyle,care,self', 1, 0, 0, '2024-06-22 11:32:59', '2024-06-22 11:32:59'),
(4, 'Drink', 'drink', 'Drink', '', 'drink', 1, 0, 0, '2024-06-30 15:55:55', '2024-06-30 15:56:37'),
(5, 'makanan', 'makanan', 'mekanan', 'list makanan di swalayan', 'makanan', 1, 0, 0, '2024-07-03 03:08:55', '2024-07-03 03:08:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: active, 1: in active',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `status`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Red', '#ff0000', 0, 1, '2024-07-02 03:24:30', '2024-07-02 03:24:30', NULL),
(2, 'Green', '#00d60e', 0, 1, '2024-07-02 03:24:56', '2024-07-02 03:24:56', NULL),
(3, 'Blue', '#2417d9', 0, 1, '2024-07-02 03:25:15', '2024-07-02 03:25:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(15, '2024_06_24_151442_create_products_table', 3),
(18, '2024_06_30_013628_create_brands_table', 4),
(21, '2024_06_30_105817_add_column_sku_to_products_table', 6),
(23, '2024_06_30_093426_create_colors_table', 7),
(26, '2024_07_02_093204_create_products_table', 8),
(27, '2024_07_02_103017_create_productcolors_tables', 9),
(30, '2024_07_02_175824_create_productcolors_table', 10),
(31, '2024_07_02_184810_create_product_sizes_table', 11),
(32, '2024_07_02_202243_create_product_images_table', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `productcolors`
--

CREATE TABLE `productcolors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `color_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 2, 3, '2024-07-02 13:35:50', '2024-07-02 13:35:50', NULL),
(15, 3, 3, '2024-07-02 20:12:56', '2024-07-02 20:12:56', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `old_price` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `additional_description` text DEFAULT NULL,
  `shipping_returns` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: active, 1: inactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not deleted, 1: deleted',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `sku`, `category_id`, `sub_category_id`, `brand_id`, `old_price`, `price`, `short_description`, `description`, `additional_description`, `shipping_returns`, `status`, `is_deleted`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Dark yellow lace cut out swing dress', 'dark-yellow-lace-cut-out-swing-dress', 'FDAS', 3, 4, 1, 70000, 100000, 'Dark yellow lace cut out swing dress', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '<p><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', 0, 0, 1, '2024-07-02 02:42:56', '2024-07-02 02:44:48'),
(2, 'Brown paperbag waist pencil skirt', 'brown-paperbag-waist-pencil-skirt', 'fadfa', 3, 4, 1, 150000, 200000, 'Brown paperbag waist pencil skirt', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', '<strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>', 0, 0, 1, '2024-07-02 11:10:26', '2024-07-02 11:17:59'),
(3, 'Indomie Goreng Mie Instan [85g ]', 'indomie-goreng-mie-instan-85g', 'test', 5, 7, 3, 4100, 4500, 'IndoMie Mi Instan Terbaik di Indonesia Indomie merupakan makanan instan yang sudah diminati oleh masyarakat sejak dulu. Kepopuleran Indomie Mie ...', '<div class=\"aMcZzf\" style=\"-webkit-tap-highlight-color: transparent; display: flex; color: rgba(0, 0, 0, 0.87); font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small;\"><div class=\"\" jsname=\"bN97Pc\" style=\"-webkit-tap-highlight-color: transparent;\"><div class=\"cS4Vcb-pGL6qe-ysgGef\" style=\"-webkit-tap-highlight-color: transparent; font-family: Arial, sans-serif; font-size: 14px; line-height: 22px;\"><div class=\"YsKaW btTgYb\" style=\"-webkit-tap-highlight-color: transparent; color: var(--uv-styles-color-text-default); overflow-wrap: break-word; padding-top: 8px;\"><div style=\"-webkit-tap-highlight-color: transparent;\"><div style=\"-webkit-tap-highlight-color: transparent;\">IndoMie Mi Instan Terbaik di Indonesia Indomie merupakan makanan instan yang sudah diminati oleh masyarakat sejak dulu. Kepopuleran Indomie Mie ...</div></div></div></div></div><div class=\"cS4Vcb-pGL6qe-ysgGef\" style=\"-webkit-tap-highlight-color: transparent; font-family: Arial, sans-serif; font-size: 14px; line-height: 22px;\"><div class=\"Kq3PC\" style=\"-webkit-tap-highlight-color: transparent; margin: 8px 0px 0px 4px;\"></div></div></div><div class=\"zZdD3d\" style=\"-webkit-tap-highlight-color: transparent; display: flex; justify-content: right; color: rgba(0, 0, 0, 0.87); font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small;\"></div>', '<div class=\"aMcZzf\" style=\"-webkit-tap-highlight-color: transparent; display: flex; color: rgba(0, 0, 0, 0.87); font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small;\"><div class=\"\" jsname=\"bN97Pc\" style=\"-webkit-tap-highlight-color: transparent;\"><div class=\"cS4Vcb-pGL6qe-ysgGef\" style=\"-webkit-tap-highlight-color: transparent; font-family: Arial, sans-serif; font-size: 14px; line-height: 22px;\"><div class=\"YsKaW btTgYb\" style=\"-webkit-tap-highlight-color: transparent; color: var(--uv-styles-color-text-default); overflow-wrap: break-word; padding-top: 8px;\"><div style=\"-webkit-tap-highlight-color: transparent;\"><div style=\"-webkit-tap-highlight-color: transparent;\">IndoMie Mi Instan Terbaik di Indonesia Indomie merupakan makanan instan yang sudah diminati oleh masyarakat sejak dulu. Kepopuleran Indomie Mie ...</div></div></div></div></div><div class=\"cS4Vcb-pGL6qe-ysgGef\" style=\"-webkit-tap-highlight-color: transparent; font-family: Arial, sans-serif; font-size: 14px; line-height: 22px;\"><div class=\"Kq3PC\" style=\"-webkit-tap-highlight-color: transparent; margin: 8px 0px 0px 4px;\"></div></div></div><div class=\"zZdD3d\" style=\"-webkit-tap-highlight-color: transparent; display: flex; justify-content: right; color: rgba(0, 0, 0, 0.87); font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small;\"></div>', '<div class=\"aMcZzf\" style=\"-webkit-tap-highlight-color: transparent; display: flex; color: rgba(0, 0, 0, 0.87); font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small;\"><div class=\"\" jsname=\"bN97Pc\" style=\"-webkit-tap-highlight-color: transparent;\"><div class=\"cS4Vcb-pGL6qe-ysgGef\" style=\"-webkit-tap-highlight-color: transparent; font-family: Arial, sans-serif; font-size: 14px; line-height: 22px;\"><div class=\"YsKaW btTgYb\" style=\"-webkit-tap-highlight-color: transparent; color: var(--uv-styles-color-text-default); overflow-wrap: break-word; padding-top: 8px;\"><div style=\"-webkit-tap-highlight-color: transparent;\"><div style=\"-webkit-tap-highlight-color: transparent;\">IndoMie Mi Instan Terbaik di Indonesia Indomie merupakan makanan instan yang sudah diminati oleh masyarakat sejak dulu. Kepopuleran Indomie Mie ...</div></div></div></div></div><div class=\"cS4Vcb-pGL6qe-ysgGef\" style=\"-webkit-tap-highlight-color: transparent; font-family: Arial, sans-serif; font-size: 14px; line-height: 22px;\"><div class=\"Kq3PC\" style=\"-webkit-tap-highlight-color: transparent; margin: 8px 0px 0px 4px;\"></div></div></div><div class=\"zZdD3d\" style=\"-webkit-tap-highlight-color: transparent; display: flex; justify-content: right; color: rgba(0, 0, 0, 0.87); font-family: Roboto, HelveticaNeue, Arial, sans-serif; font-size: small;\"></div>', 0, 0, 1, '2024-07-02 20:11:16', '2024-07-02 20:12:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_extension` varchar(255) DEFAULT NULL,
  `order_by` int(11) NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_name`, `image_extension`, `order_by`, `created_at`, `updated_at`) VALUES
(1, 2, '20240702083550ywkhp5gsdn-2.jpg', 'jpg', 100, '2024-07-02 13:35:50', '2024-07-02 13:35:50'),
(3, 3, '20240703031256ccmolbzb9x-3.jpeg', 'jpeg', 100, '2024-07-02 20:12:56', '2024-07-02 20:12:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `name`, `price`, `created_at`, `updated_at`) VALUES
(21, 2, 'XXL', 10000, '2024-07-02 13:35:50', '2024-07-02 13:35:50'),
(22, 2, 'L', 0, '2024-07-02 13:35:50', '2024-07-02 13:35:50'),
(23, 2, 'XL', 0, '2024-07-02 13:35:50', '2024-07-02 13:35:50'),
(24, 3, '85g', 0, '2024-07-02 20:12:56', '2024-07-02 20:12:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_categorys`
--

CREATE TABLE `sub_categorys` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sub_categorys`
--

INSERT INTO `sub_categorys` (`id`, `category_id`, `name`, `slug`, `meta_title`, `meta_description`, `meta_keywords`, `created_by`, `status`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'care-home', 'test title', 'tes desc', 'tes key', 1, 0, 0, '2024-06-22 09:27:41', '2024-06-22 09:27:41'),
(2, 1, 'test2', 'care-home-1-edit', 'test2', 'test2', 'test2', 1, 0, 0, '2024-06-22 09:32:07', '2024-06-22 11:27:16'),
(3, 2, 'lifestyle', 'lifestyle', 'lifestyle', 'lifestyle', 'lifestyle,care,self', 1, 0, 0, '2024-06-22 11:32:59', '2024-06-23 09:44:40'),
(4, 3, 'abc-edit', 'abcd', 'abc', 'abc', 'abc', 1, 0, 0, '2024-06-23 09:01:54', '2024-06-23 09:42:21'),
(5, 4, 'Susu', 'susu', 'Susu', '', 'susu', 1, 0, 0, '2024-06-30 15:57:37', '2024-06-30 15:57:37'),
(6, 4, 'Kopi', 'kopi', 'Kopi', '', 'kopi', 1, 0, 0, '2024-06-30 15:58:19', '2024-06-30 15:58:19'),
(7, 5, 'mie instan', 'mie-instan', 'mie-instan', 'mie-instan', 'mie-instan', 1, 0, 0, '2024-07-03 03:09:50', '2024-07-03 03:09:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: active, 1: inactive',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: undeleted, 1: deleted',
  `remember_token` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not admin, 1: is admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `is_deleted`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '2024-06-24 16:08:38', '$2y$10$OqNUWvM8vcqdnCRNBDWjOeP/a1GwatB/nKWjHSx.2Axd/MphsGK9S', 0, 0, NULL, 1, '2024-06-24 16:08:38', '2024-06-24 16:08:38'),
(2, 'admin2', 'admin2@admin.com', NULL, '$2y$10$8Mwmzbz3Erhtwrs0XWDJg.zQTnpMV00sLvtnZjs/UDsfBtoQcbq/W', 0, 0, NULL, 1, '2024-06-29 16:37:24', '2024-06-29 16:37:24'),
(3, 'test', 'test@admin.com', NULL, '$2y$10$eKdorkew4vUgcfeeoB7GjOnL7yOamzjZ0gZ/MLjWRIt3T3wb3N4/y', 1, 1, NULL, 1, '2024-06-29 16:47:23', '2024-06-29 16:47:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sub_categorys`
--
ALTER TABLE `sub_categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `sub_categorys`
--
ALTER TABLE `sub_categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
