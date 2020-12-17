-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Ara 2020, 17:54:04
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `qasim_news`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `author`
--

CREATE TABLE `author` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `author`
--

INSERT INTO `author` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Ibad Asadov', 'ibad-asadov', '2020-11-23 12:02:36', '2020-11-23 12:03:10'),
(2, 'Qasim', 'qasim', '2020-11-25 14:54:57', '2020-11-25 14:54:57');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `h_view` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `h_view`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 0, 'World', 'world', '2020-11-23 12:31:35', '2020-12-08 16:31:16'),
(3, 1, 'War', 'war', '2020-11-23 12:31:51', '2020-12-03 19:31:14'),
(5, 0, 'sd', 'sd', '2020-12-08 16:30:55', '2020-12-08 16:30:55');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `commment`
--

CREATE TABLE `commment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `report_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `commment`
--

INSERT INTO `commment` (`id`, `news_id`, `username`, `email`, `comment`, `report_count`, `created_at`, `updated_at`) VALUES
(2, 21, 'sdfvjsdfv dvsd', 's@gmail.com', 'dfmnv smnd fvmnsd fvns df', 0, '2020-11-27 21:49:30', '2020-11-27 21:49:30'),
(3, 15, 'Ibad', 'asadov.ibad@gmail.com', 'Hello,my name is Ibad. Hello,my name is Ibad. Hello,my name is Ibad. Hello,my name is Ibad. Hello,my name is Ibad.', 0, '2020-11-29 09:23:17', '2020-11-29 09:23:17'),
(6, 21, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'news web site', 0, '2020-12-04 10:43:27', '2020-12-04 10:43:27'),
(7, 31, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'kj f v dfv sdfv', 0, '2020-12-04 10:49:26', '2020-12-04 10:49:26'),
(9, 10, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dsfnjfsd sdv dfsvnsdf', 0, '2020-12-05 12:08:55', '2020-12-05 12:08:55'),
(10, 10, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jknjkn', 0, '2020-12-05 12:12:46', '2020-12-05 12:12:46'),
(11, 22, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfnvdjkfvdkjf', 0, '2020-12-05 14:40:38', '2020-12-05 14:40:38'),
(12, 22, 'Ibad Esedov', 'ibadmuradog@gmail.com', 'fgfg', 0, '2020-12-05 14:41:14', '2020-12-05 14:41:14'),
(13, 22, 'dflkmvdfv dvm dfmvn dfnv', 'dfvd@gmail.com', 'jkdfvjvvdf', 0, '2020-12-05 14:49:23', '2020-12-05 14:49:23'),
(14, 22, 'dflkmvdfv dvm dfmvn dfnv', 'dfvffdd@gmail.com', 'jkdfvjvvdf', 0, '2020-12-05 14:49:43', '2020-12-05 14:49:43'),
(15, 31, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'lkmlk', 0, '2020-12-05 14:51:04', '2020-12-05 14:51:04'),
(16, 31, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfvdfjvdfjvjkdj', 0, '2020-12-05 14:51:55', '2020-12-05 14:51:55'),
(17, 34, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jkgnsjdfjksdf', 0, '2020-12-05 16:38:17', '2020-12-05 16:38:17'),
(18, 34, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfjkvnds', 0, '2020-12-05 16:39:20', '2020-12-05 16:39:20'),
(19, 34, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'hbhjjh', 0, '2020-12-05 16:43:51', '2020-12-05 16:43:51'),
(20, 34, 'fvj dfvd', 'dfkvjsd@gmail.com', 'sdkjfvdjfv', 0, '2020-12-05 16:45:16', '2020-12-05 16:45:16'),
(21, 34, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'fskjdfvdskjvsd', 0, '2020-12-05 16:49:00', '2020-12-05 16:49:00'),
(22, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jngjfsdjsdf', 0, '2020-12-05 16:55:25', '2020-12-05 16:55:25'),
(23, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jngjfsdjsdf', 0, '2020-12-05 16:55:31', '2020-12-05 16:55:31'),
(24, 17, 'jkdfnjksdf', 'dkfjdsjkfnvksdjf@gmail.com', 'jgdjkdskjjndf', 0, '2020-12-05 16:56:35', '2020-12-05 16:56:35'),
(25, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'sdkjfnjjkdf', 0, '2020-12-05 16:58:18', '2020-12-05 16:58:18'),
(26, 17, 'fdkvkldv', 'ldfkvlkdf@gmail.com', 'dfvjdfnjvsd', 0, '2020-12-05 16:59:50', '2020-12-05 16:59:50'),
(27, 17, 'djkfnvjkdsnv', 'dfjknvjdsfnv@gmail.com', 'jnsdjfnjkfdv', 0, '2020-12-05 17:01:15', '2020-12-05 17:01:15'),
(28, 17, 'dkfvkd', 'ibadmuradoglu@gmail.com', 'fm vdfvdfvd', 0, '2020-12-05 17:06:01', '2020-12-05 17:06:01'),
(29, 17, 'dfnvd', 'dfvkjdfvjkds@gmail.com', 'fdvjkdfvjnsd', 0, '2020-12-05 17:06:37', '2020-12-05 17:06:37'),
(30, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'fdjnvdsnfjkvsdfvjndskjfvn', 0, '2020-12-05 17:07:09', '2020-12-05 17:07:09'),
(31, 17, 'murad', 'ibadmuradoglu@gmail.com', 'sdjkjsd', 0, '2020-12-05 17:08:32', '2020-12-05 17:08:32'),
(32, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'son te', 0, '2020-12-05 17:10:15', '2020-12-05 17:10:15'),
(33, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfvdj', 0, '2020-12-05 17:10:26', '2020-12-05 17:10:26'),
(34, 34, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'lnk', 0, '2020-12-05 17:11:20', '2020-12-05 17:11:20'),
(35, 34, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'my', 0, '2020-12-05 17:31:23', '2020-12-05 17:31:23'),
(36, 10, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jkngjsdfjkndf', 0, '2020-12-05 17:40:02', '2020-12-05 17:40:02'),
(37, 21, 'dflvdjkf', 'vdjfvjkdf@gmail.com', 'djkfnvdjf', 0, '2020-12-05 17:57:03', '2020-12-05 17:57:03'),
(38, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jfnjdfnvjsdkf', 0, '2020-12-05 21:27:49', '2020-12-05 21:27:49'),
(39, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jnjkkn', 0, '2020-12-05 21:28:58', '2020-12-05 21:28:58'),
(40, 17, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jnkjkjnkjnk', 0, '2020-12-05 21:31:40', '2020-12-05 21:31:40'),
(41, 18, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'hujk', 0, '2020-12-07 15:39:08', '2020-12-07 15:39:08'),
(42, 18, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'hujk', 0, '2020-12-07 15:39:10', '2020-12-07 15:39:10'),
(43, 18, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkjdsf', 0, '2020-12-07 15:39:20', '2020-12-07 15:39:20'),
(44, 17, 'jnvfdjkfvdf', 'df@ds.sdcsd', 'hjbjhbahjvd', 0, '2020-12-07 16:19:03', '2020-12-07 16:19:03'),
(45, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'fkdfv', 0, '2020-12-07 19:28:30', '2020-12-07 19:28:30'),
(46, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkvsdkfj', 0, '2020-12-07 19:28:41', '2020-12-07 19:28:41'),
(47, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkvsdkfj', 0, '2020-12-07 19:28:42', '2020-12-07 19:28:42'),
(48, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkvsdkfj', 0, '2020-12-07 19:28:42', '2020-12-07 19:28:42'),
(49, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkvsdkfj', 0, '2020-12-07 19:28:43', '2020-12-07 19:28:43'),
(50, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkvsdkfj', 0, '2020-12-07 19:28:44', '2020-12-07 19:28:44'),
(51, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfvkjdf', 0, '2020-12-07 19:28:57', '2020-12-07 19:28:57'),
(52, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfvdfkj', 0, '2020-12-07 19:31:14', '2020-12-07 19:31:14'),
(53, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'jnknk', 0, '2020-12-07 19:33:10', '2020-12-07 19:33:10'),
(54, 19, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfkjvdjfvjdfk', 0, '2020-12-07 19:33:57', '2020-12-07 19:33:57'),
(55, 21, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'kkjnjkjn', 0, '2020-12-08 12:57:54', '2020-12-08 12:57:54'),
(56, 35, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'kjngbnskjgbkjfdg', 0, '2020-12-08 15:59:31', '2020-12-08 15:59:31'),
(59, 10, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'Musfiq Manafli', 0, '2020-12-08 17:43:16', '2020-12-08 17:43:16'),
(60, 30, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'nsjdc', 0, '2020-12-13 14:18:08', '2020-12-13 14:18:08'),
(61, 38, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', 'dfsdfsd', 0, '2020-12-15 12:40:58', '2020-12-15 12:40:58');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_10_28_122156_create_category_table', 1),
(4, '2020_10_28_122224_create_author_table', 1),
(5, '2020_10_28_122250_create_news_table', 1),
(6, '2020_10_28_122318_create_comment_table', 1),
(7, '2020_10_31_180620_create_setting_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `h_view` int(11) NOT NULL,
  `c_view` int(11) NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reading_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `category_id`, `author_id`, `caption`, `h_view`, `c_view`, `text`, `min_text`, `image`, `slug`, `reading_count`, `created_at`, `updated_at`) VALUES
(10, 2, 2, 'my jbjhjh name ssdcs dscsdcsdc scsd csdcdc smn s', 1, 1, '<p>name kjg sdfsm dvds vsd nvsdnv msdn vmsdn vmsndf</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>\r\n<p>dfvkjdfvjkdsfvjdkjfvndkjf</p>\r\n\r\n<p>fgbfjgbfjg<strong>fgjjfgbjfgjkfjgnfkjgnb</strong></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n</blockquote>', 'name gsj fvd fvd vmsdn vmnsd vm dsmvn sdmnv sdmnv', 'my-jbjhjh-name-sdsdcs-dscsdcsdc-scsd-csdcdc-smn-s-2020-11-29-192608.jpg', 'my-jbjhjh-name-ssdcs-dscsdcsdc-scsd-csdcdc-smn-s', 20, '2020-11-25 14:56:22', '2020-12-08 17:42:48'),
(15, 3, 1, 'gorbagor oldu', 1, 0, '<p>sdfds</p>', 'sdfvsdfv', 'gorbagor-oldu-2020-11-28-005518.png', 'gorbagor-oldu', 4, '2020-11-27 20:55:18', '2020-12-07 16:16:02'),
(16, 3, 2, 'test mail skjd csdcsd', 1, 0, '<p>asdcasdcasdcadscSD</p>', 'sadca', 'test-mail-skjd-csdcsd-2020-11-28-005714.jpg', 'test-mail-skjd-csdcsd', 2, '2020-11-27 20:57:14', '2020-12-01 09:31:52'),
(17, 2, 1, 'sdhbchasdc asd c asdc asdc nb asnd cansdb c', 1, 1, '<p>asdcasxd nvsdfv sdfv dfv d fv sdfv sdf vdcasdcs adscSD</p>', 'sasdfvsfd dca', 'sdhbchasdc-asd-c-asdc-asdc-nb-asnd-cansdb-c-2020-11-29-193210.jpg', 'sdhbchasdc-asd-c-asdc-asdc-nb-asnd-cansdb-c', 35, '2020-11-27 20:58:32', '2020-12-07 16:32:17'),
(18, 3, 1, '1.bchasdc asd c asdc asdc nb asnd cansdb c', 1, 0, '<p>1 nvsdfv sdfv dfv d fv sdfv sdf vdcasdcs adscSD</p>', '1 sdfvsfd dca', '1bchasdc-asd-c-asdc-asdc-nb-asnd-cansdb-c-2020-11-28-010102.png', '1bchasdc-asd-c-asdc-asdc-nb-asnd-cansdb-c', 3, '2020-11-27 21:01:02', '2020-12-07 15:38:45'),
(19, 2, 1, 'nvsdjfvkfgrv df vdf v dfv sd', 1, 0, '<p>dfvsdfvsdf</p>', 'sdvsdfv', 'nvsdjfvkfgrv-df-vdf-v-dfv-sd-2020-11-29-193041.png', 'nvsdjfvkfgrv-df-vdf-v-dfv-sd', 14, '2020-11-27 21:05:10', '2020-12-07 19:33:43'),
(20, 3, 1, 'ibadf   fdg dfgbdf gb dfg', 1, 0, '<p>,dmf vdfvsd fv sdfnv dsmvn sdmnv smdnfv</p>', 'sdfvndfvd v dsfv sd v', 'ibadf-fdg-dfgbdf-gb-dfg-2020-11-28-010700.jpg', 'ibadf-fdg-dfgbdf-gb-dfg', 0, '2020-11-27 21:07:00', '2020-11-27 21:07:00'),
(21, 3, 1, 'nvsdjfvksdfvdf dfvd @a.a', 1, 0, '<p>db sfg fg sfg s</p>', 'fvdfv sdfv sd fvsdf', 'nvsdjfvksdfvdf-dfvd-at-aa-2020-11-29-193022.jpg', 'nvsdjfvksdfvdf-dfvd-at-aa', 69, '2020-11-27 21:09:51', '2020-12-08 12:57:29'),
(22, 3, 1, 'Russian  vil Corp targets US workers at home', 1, 0, '<p>lknkjj</p>', 'lkmlk', 'russian-vil-corp-targets-us-workers-at-home-2020-11-29-192703.jpg', 'russian-vil-corp-targets-us-workers-at-home', 75, '2020-11-27 21:11:17', '2020-12-05 14:49:44'),
(23, 2, 1, 'l Corp targets US workers at home', 1, 0, '<p>n kj.kjnkjn</p>', 'lnkjk', 'l-corp-targets-us-workers-at-home-2020-11-29-193454.png', 'l-corp-targets-us-workers-at-home', 0, '2020-11-27 21:16:13', '2020-11-29 15:34:54'),
(24, 3, 1, 'Coca ends social media advertising despite Facebook changes', 1, 0, '<p>kj jkrussian</p>', 'lkmk', 'coca-ends-social-media-advertising-despite-facebook-changes-2020-11-29-193511.png', 'coca-ends-social-media-advertising-despite-facebook-changes', 1, '2020-11-27 21:29:23', '2020-12-03 18:16:31'),
(25, 2, 1, 'Fortnite Movie  lan\'s hit films screen in-game 1', 1, 0, '<p>sd,fmv smdf vsd fv sdmf,v sd,fmv sd,mf</p>', 'ds,mf vsdmfvdf mvdf v sdfv', 'fortnite-movie-lans-hit-films-screen-in-game-1-2020-11-29-193426.jpg', 'fortnite-movie-lans-hit-films-screen-in-game-1', 1, '2020-11-27 21:34:48', '2020-12-03 16:16:51'),
(28, 3, 2, 'Coca-Cola suspends so advertising despite Facebook changesac ebook changes', 1, 1, '<p>dvsd fvdsfvd fv dfmv nsdmfnv msdnfv</p>', 'Lorem ipsum dol Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis aspernatur ut at quae omnis pariatur obcaecati possimus nisi ea iste!', 'coca-cola-suspends-so-advertising-despite-facebook-changes-2020-11-30-233530.png', 'coca-cola-suspends-so-advertising-despite-facebook-changesac-ebook-changes', 10, '2020-11-30 19:35:47', '2020-12-05 12:27:52'),
(30, 3, 1, 'dhdshjdfv d  v namexcjnc sdjcjdscj dcn dnc', 0, 1, '<p>dkfjkjvfvkj&nbsp; v dfvk dfvmn dmfnv mdnf vmndfv mdnf vmdnf vmndf v</p>', 'dnfvndf v dfvn dfnv f fdm vd', 'dhdshjdfv-d-v-namexcjnc-sdjcjdscj-dcn-dnc-2020-12-03-220241.png', 'dhdshjdfv-d-v-namexcjnc-sdjcjdscj-dcn-dnc', 2, '2020-12-03 18:02:41', '2020-12-13 14:17:54'),
(31, 2, 1, 'dfvfdv dfv  fdf fdvdfvfortnitesdjdf', 1, 1, '<p>dfjnvdfv dnfv dmnf vdn fvnd fvnb dvb sdffornite</p>', 'vdfvdfv  fn vnmf vmnd fvndmnfv', 'dfvfdv-dfv-fdf-fdvdfvfortnitesdjdf-2020-12-03-220350.png', 'dfvfdv-dfv-fdf-fdvdfvfortnitesdjdf', 27, '2020-12-03 18:04:00', '2020-12-07 16:56:54'),
(34, 3, 1, 'nvsdjfvkser fefjerf dn fnmdf ndfmn', 1, 1, '<p>sdnmfv ndfv f v dfnv mdnf vndf v ndfvnsdf vmnsdf vmnds vmndsf vmn dvmnsd vmnsd fvmnsd fvmns dfn sdf,mv nmnsd fvmsndf vmnsdf v,msnd v,msdn v,mnsdf vmnd vmnd mnd fvmnd v,msdnf v</p>', 'dmfnv dfvfv dvmn dfvmn dvmnd vn fsn v', 'nvsdjfvkser-fefjerf-dn-fnmdf-ndfmn-2020-12-04-163947.jpg', 'nvsdjfvkser-fefjerf-dn-fnmdf-ndfmn', 36, '2020-12-04 12:39:52', '2020-12-08 13:25:37'),
(35, 2, 1, 'Fvie Nite: Christopher Nolan\'s hit films screen in-game', 1, 1, '<p>rflkererf fer fmer fmern fmenr fmewrn&nbsp;</p>', 'vdfnv dmnfv mdnf v dfv  v nfdssndf', 'fvie-nite-christopher-nolans-hit-films-screen-in-game-2020-12-08-195838.jpg', 'fvie-nite-christopher-nolans-hit-films-screen-in-game', 2, '2020-12-08 15:58:44', '2020-12-08 15:59:18'),
(36, 2, 2, 'vie Nite: Christopher Nolan\'s hit films screen in-game', 1, 1, '<p>wkgjrgkjngdfn vndsf vnds fv dfv dfv dnv dnf vdnm vdmfnvdnmfvnd</p>', 'dnf vdmnf vmsndf v', 'vie-nite-christopher-nolans-hit-films-screen-in-game-2020-12-08-202815.jpg', 'vie-nite-christopher-nolans-hit-films-screen-in-game', 2, '2020-12-08 16:28:18', '2020-12-08 16:28:56'),
(37, 2, 1, 'Fortnite Me Nite: Christopher Nolan\'s hit films screen in-game', 1, 1, '<p>lkmlkmlkl;lk</p>', 'lkmlkm', 'fortnite-me-nite-christopher-nolans-hit-films-screen-in-game-2020-12-14-131929.png', 'fortnite-me-nite-christopher-nolans-hit-films-screen-in-game', 1, '2020-12-14 09:19:34', '2020-12-15 12:40:06'),
(38, 2, 1, 'Russian hacker group Evil Corp targets US workers at home', 1, 0, '<p>fdvdfv</p>', 'dfsdfsd', 'russian-hacker-group-evil-corp-targets-us-workers-at-home-2020-12-15-163919.jpg', 'russian-hacker-group-evil-corp-targets-us-workers-at-home', 1, '2020-12-15 12:39:23', '2020-12-15 12:40:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ibadmuradoglu@gmail.com', '$2y$10$Ieivz6RjOM5Iy/46Y57NdOlwSNhkNwfktunNF96DKvswtKK/pkdDm', '2020-12-14 09:13:05');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `name`, `subtext`, `copyright`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '3dXəbər', 'lorem sdfhvjhsdfvjh dsfv sdfv sdh vsd vjsd vjhsd 3', 'copyright 3', 'https://www.facebook.com/ibad.esedov.9659/', 'https://www.instagram.com/ibad.asadov/', 'https://www.twitter.com/3', '2020-11-23 12:48:09', '2020-12-08 16:37:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `active_code` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `is_active`, `active_code`, `created_at`, `updated_at`) VALUES
(27, 'asadov.ibad@gmail.com', 1, 30596, '2020-12-14 09:17:19', '2020-12-14 09:17:52'),
(28, 'ibadmuradoglu@gmail.com', 1, 80771, '2020-12-15 12:37:39', '2020-12-15 12:38:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
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
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ibad Esedov', 'ibadmuradoglu@gmail.com', NULL, '$2y$10$iJ7.nKAv86l3SVxcFr4VguB2jNAcpZoZGcFizKAyBL8qWd1Pa.wRa', NULL, '2020-11-23 11:57:36', '2020-11-23 11:57:36');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `commment`
--
ALTER TABLE `commment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commment_news_id_foreign` (`news_id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_category_id_foreign` (`category_id`),
  ADD KEY `news_author_id_foreign` (`author_id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `author`
--
ALTER TABLE `author`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `commment`
--
ALTER TABLE `commment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `commment`
--
ALTER TABLE `commment`
  ADD CONSTRAINT `commment_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
