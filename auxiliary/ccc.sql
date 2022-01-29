-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2022 at 10:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `menu_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `slug`, `title`, `active`, `created_at`, `updated_at`) VALUES
(1, 'azulinda', 'Azulinda', 1, NULL, NULL),
(2, 'laluce', 'LaLuce', 1, NULL, NULL),
(3, 'sunan', 'Sunan', 1, NULL, NULL),
(4, 'auma', 'Auma', 1, NULL, NULL),
(5, 'maxal', 'Maxal', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branch_user`
--

CREATE TABLE `branch_user` (
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_price` int(11) DEFAULT NULL,
  `footer_local` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_notice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_notice2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `watermark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `menu_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `title`, `title2`, `subitle`, `subtitle2`, `menu_price`, `footer_local`, `footer_notice`, `footer_notice2`, `watermark`, `user_id`, `menu_type_id`, `created_at`, `updated_at`) VALUES
(2, 'Second Default', '', '', '', '', NULL, '', 'There may be a risk associated with consuming raw shellfish as is the case with other raw protein products. Please consume at your own risk**', 'The products with an indicated price are not included in the all-inclusive package and are priced in mexican pesos, inclusing iva**', '', 1, 2, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(3, 'Mobile', '', '', '', '', NULL, '', 'There may be a risk associated with consuming raw shellfish as is the case with other raw protein products. Please consume at your own risk**', 'The products with an indicated price are not included in the all-inclusive package and are priced in mexican pesos, inclusing iva**', '', 1, 1, '2021-10-28 07:17:36', '2021-10-29 07:17:36');

-- --------------------------------------------------------

--
-- Table structure for table `menu_files`
--

CREATE TABLE `menu_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No_Style',
  `price` int(11) DEFAULT NULL,
  `modifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mod_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `subtitle`, `style`, `price`, `modifier`, `mod_text`, `notice`, `ordering`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'CHARRED BEET CARPACCIO', 'Coal-Roasted Beets, Goat Cheese Ash,<br>Yucatan Orange, Sea Salt', 'No_Style', NULL, '', '', '', 0, 1, '2021-10-28 07:17:36', NULL),
(2, 'PROVOLETA ASADO', 'Fire-Charred Piquillo Peppers,<br>Pistachio Chimichurri', 'No_Style', NULL, '', '', '', 1, 1, '2021-10-28 07:17:36', NULL),
(3, 'GRILLED MUSSELS & SOURDOUGH', 'Grilled Pacific Mussels, Garlic Butter,<br>White Wine, Charred Torn Bread', 'No_Style', NULL, '', '', '', 2, 1, '2021-10-28 07:17:36', NULL),
(4, 'CRISP WEDGE SALAD', 'Classic Wedge, Roasted Pancetta,<br> Blue Cheese Dressing', 'No_Style', NULL, '', '', '', 0, 2, '2021-10-28 07:17:36', NULL),
(5, 'SMOKED CAESAR SALAD', 'Grilled Romaine, Parmesan Crisp,<br>White Anchovy, Grissini', 'No_Style', NULL, '', '', '', 1, 2, '2021-10-28 07:17:36', NULL),
(6, 'BEEF SLIDERS', '', 'No_Style', NULL, '', '', '', 0, 3, '2021-10-28 07:17:36', NULL),
(7, 'GRILLED QUESADILLA ', '', 'No_Style', NULL, '', '', '', 1, 3, '2021-10-28 07:17:36', NULL),
(8, 'MAC & CHEESE', '', 'No_Style', NULL, '', '', '', 2, 3, '2021-10-28 07:17:36', NULL),
(9, 'FISH & CHIPS', '', 'No_Style', NULL, '', '', '', 3, 3, '2021-10-28 07:17:36', NULL),
(10, 'ROASTED BAKED POTATO', 'Sour cream & Chive', 'No_Style', NULL, '', '', '', 0, 4, '2021-10-28 07:17:36', NULL),
(11, 'SEASONAL VEGETABLES', 'Grilled | Olive Oil', 'No_Style', NULL, '', '', '', 1, 4, '2021-10-28 07:17:36', NULL),
(12, 'GRILLED ASPARAGUS', 'Charred hollandais', 'No_Style', NULL, '', '', '', 2, 4, '2021-10-28 07:17:36', NULL),
(13, 'TRUFFLE PARMESAN FRIES', 'Rosemary Sea Salt', 'No_Style', NULL, '', '', '', 3, 4, '2021-10-28 07:17:36', NULL),
(14, 'SWEET POTATO WEDGES', 'Romesco & lemon aioli ', 'No_Style', NULL, '', '', '', 4, 4, '2021-10-28 07:17:36', NULL),
(15, 'CHARRED CORN COB', 'Garlic & lime', 'No_Style', NULL, '', '', '', 5, 4, '2021-10-28 07:17:36', NULL),
(16, 'GRILLED ROCK SHRIMP', 'Fresh Thyme Butter', 'No_Style', NULL, '', '', '', 0, 5, '2021-10-28 07:17:36', NULL),
(17, 'GRILLED AHI TUNA', 'Cracked Pepper, Lemon, Rosemary Olive Oil', 'No_Style', NULL, '', '', '', 1, 5, '2021-10-28 07:17:36', NULL),
(18, 'PLANT BASED BURGER ', 'Plant Based Cheese Fondue,<br>Vegan Mayonnaise, Roasted Red Onions', 'No_Style', NULL, '', '', '', 2, 5, '2021-10-28 07:17:36', NULL),
(19, 'WOOD-FIRED HALF CHICKEN', 'Half Chicken, Smoked Paprika,<br>Garlic Yogurt Sauce & Lime', 'No_Style', NULL, '', '', '', 3, 5, '2021-10-28 07:17:36', NULL),
(20, 'PORK CHOP', 'Mesquite Smoked, Dijon Mustard', 'No_Style', NULL, '', '', '', 0, 6, '2021-10-28 07:17:36', NULL),
(21, 'BEEF TENDERLOIN 7OZ ', 'Semi-boneless, natural pan jus, whipped potatoes', 'No_Style', NULL, '', '', '', 1, 6, '2021-10-28 07:17:36', NULL),
(22, 'OVER EMBERS NY STRIP STEAK 12OZ', 'Seared & Roasted, Merlot Glazed Onions', 'No_Style', NULL, '', '', '', 2, 6, '2021-10-28 07:17:36', NULL),
(23, 'GRILLED TOMAHAWAK FOR TWO', 'Coarse Salt & Black Pepper', 'No_Style', NULL, '', '', '', 3, 6, '2021-10-28 07:17:36', NULL),
(24, 'CHARRED LEMON PIE', '', 'No_Style', NULL, '', '', '', 0, 7, '2021-10-28 07:17:36', NULL),
(25, 'SEA SALT CARAMEL CHEESECAKE ', '', 'No_Style', NULL, '', '', '', 1, 7, '2021-10-28 07:17:36', NULL),
(26, 'CHOCOLATE TRUFFLE TART', '', 'No_Style', NULL, '', '', '', 2, 7, '2021-10-28 07:17:36', NULL),
(27, 'RED WINE DEMI GLACE', '', 'No_Style', NULL, '', '', '', 0, 8, '2021-10-28 07:17:36', NULL),
(28, 'GARLIC MUSHROOM', '', 'No_Style', NULL, '', '', '', 1, 8, '2021-10-28 07:17:36', NULL),
(29, 'SMOKED BERNAISE', '', 'No_Style', NULL, '', '', '', 2, 8, '2021-10-28 07:17:36', NULL),
(30, 'GARLIC & BUTTER', '', 'No_Style', NULL, '', '', '', 3, 8, '2021-10-28 07:17:36', NULL),
(31, 'GREEN PEPPERCORN SAUCE', '', 'No_Style', NULL, '', '', '', 4, 8, '2021-10-28 07:17:36', NULL),
(32, 'CHIMICHURRI', '', 'No_Style', NULL, '', '', '', 5, 8, '2021-10-28 07:17:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_sections`
--

CREATE TABLE `menu_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_parent_section` int(11) NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `style` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No_Style',
  `side` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `field_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'title,price,icons,subtitle,modifier,mod_text',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `menu_type_id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_sections`
--

INSERT INTO `menu_sections` (`id`, `id_parent_section`, `subtitle`, `title`, `price`, `style`, `side`, `field_order`, `ordering`, `menu_type_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 0, '', 'Bread & Pastry', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 0, 1, 3, '2021-10-28 07:17:36', NULL),
(2, 0, '', 'SALADS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 1, 1, 3, '2021-10-28 07:17:36', NULL),
(3, 0, '', 'KIDS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 2, 1, 3, '2021-10-28 07:17:36', NULL),
(4, 0, '', 'SIDES', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 3, 1, 3, '2021-10-28 07:17:36', NULL),
(5, 0, '', 'LAND &amp; SEA', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 5, 1, 3, '2021-10-28 07:17:36', NULL),
(6, 0, '', 'CHOPS &amp; STEAKS', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 4, 1, 3, '2021-10-28 07:17:36', NULL),
(7, 0, '', 'SWEETS', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 6, 1, 3, '2021-10-28 07:17:36', NULL),
(8, 0, '', 'Drinks', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 7, 1, 3, '2021-10-28 07:17:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_types`
--

CREATE TABLE `menu_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'print',
  `width` int(11) NOT NULL DEFAULT '216',
  `height` int(11) NOT NULL DEFAULT '279',
  `paper` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Letter',
  `orientation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Portrait',
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'short',
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_types`
--

INSERT INTO `menu_types` (`id`, `name`, `shortname`, `template`, `media`, `width`, `height`, `paper`, `orientation`, `size`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 'Azulinda | Snacks & Shared (US Letter / Half)', 'azulinda_snacks_shared', 'azulindaHalf', 'print', 216, 279, 'Letter', 'Portrait', 'short', 1, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(2, 'Azulinda | Drinks (US Letter)', 'azulinda_drinks', 'azulindaFull', 'print', 216, 279, 'Letter', 'Portrait', 'short', 1, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(3, 'Azulinda | Mobile Menu', 'azulinda_mobile', 'azulindaMbile', 'mobile', 0, 0, 'Mobile', 'Mobile', 'short', 1, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(4, 'La Luce | Dinner (US Letter)', 'laluce_dinner', 'laluceDinner', 'print', 216, 356, 'Letter', 'Portrait', 'long', 2, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(5, 'La Luce | Drinks (US Letter)', 'laluce_drinks', 'laluceDrinks', 'print', 216, 356, 'Letter', 'Portrait', 'short', 2, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(6, 'La Luce | Mobile Menu', 'laluce_mobile', 'laluceMobile', 'mobile', 0, 0, 'Mobile', 'Mobile', 'short', 2, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(7, 'Sunan | Food (US Letter)', 'sunan_food', 'sunanFood', 'print', 216, 279, 'Letter', 'Portrait', 'short', 3, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(8, 'Sunan | Drinks (US Letter)', 'sunan_drinks', 'sunanDrinks', 'print', 216, 279, 'Letter', 'Portrait', 'short', 3, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(9, 'Sunan | Mobile Menu', 'sunan_mobile', 'sunanMobile', 'mobile', 0, 0, 'Mobile', 'Mobile', 'short', 3, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(10, 'Auma | Food', 'auma_food', 'aumaFood', 'print', 216, 279, 'Letter', 'Portrait', 'short', 4, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(11, 'Auma | Mobile Menu', 'auma_mobile', 'aumaMobile', 'mobile', 0, 0, 'Mobile', 'Mobile', 'short', 4, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(12, 'Maxal | Breakfast/Lunch (US Letter)', 'maxal_breakfast_lunch', 'maxalBreakfastLunch', 'print', 216, 279, 'Letter', 'Portrait', 'short', 5, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(13, 'Maxal | Dinner (US Letter)', 'maxal_dinner', 'maxalDinner', 'print', 216, 279, 'Letter', 'Portrait', 'short', 5, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(14, 'Maxal | Drinks (US Letter)', 'maxal_drinks', 'maxalDrinks', 'print', 216, 279, 'Letter', 'Portrait', 'short', 5, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(15, 'Maxal | Mobile Menu', 'maxal_mobile', 'maxalMobile', 'mobile', 0, 0, 'Mobile', 'Mobile', 'short', 5, '2021-10-28 07:17:36', '2021-10-29 07:17:36');

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
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2021_12_27_095950_create_branches_table', 1),
(19, '2021_12_27_100302_create_menu_types_table', 1),
(20, '2021_12_27_125740_create_menus_table', 1),
(21, '2021_12_27_125741_create_menu_sections_table', 1),
(22, '2021_12_27_131804_create_menu_items_table', 1),
(23, '2021_12_27_163724_create_menu_files_table', 1),
(24, '2021_12_28_095053_create_roles_table', 1),
(25, '2021_12_28_095324_create_role_user_table', 1),
(26, '2021_12_28_180730_create_branch_user_table', 1),
(27, '2022_01_29_191959_make_menu_watermark_nullable', 2);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `email`, `password`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'login', 'email@mail.ru', 'asdf1234', 1, '', '2021-11-21 01:02:22', '2021-11-23 01:02:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `branches_slug_unique` (`slug`);

--
-- Indexes for table `branch_user`
--
ALTER TABLE `branch_user`
  ADD PRIMARY KEY (`user_id`,`branch_id`),
  ADD KEY `branch_user_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_user_id_foreign` (`user_id`),
  ADD KEY `menus_menu_type_id_foreign` (`menu_type_id`);

--
-- Indexes for table `menu_files`
--
ALTER TABLE `menu_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_files_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_section_id_foreign` (`section_id`);

--
-- Indexes for table `menu_sections`
--
ALTER TABLE `menu_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_sections_menu_type_id_foreign` (`menu_type_id`),
  ADD KEY `menu_sections_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menu_types`
--
ALTER TABLE `menu_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_types_branch_id_foreign` (`branch_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_login_unique` (`login`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_files`
--
ALTER TABLE `menu_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `menu_sections`
--
ALTER TABLE `menu_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu_types`
--
ALTER TABLE `menu_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `branch_user`
--
ALTER TABLE `branch_user`
  ADD CONSTRAINT `branch_user_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `branch_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_menu_type_id_foreign` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menus_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_files`
--
ALTER TABLE `menu_files`
  ADD CONSTRAINT `menu_files_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `menu_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_sections`
--
ALTER TABLE `menu_sections`
  ADD CONSTRAINT `menu_sections_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_sections_menu_type_id_foreign` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_types`
--
ALTER TABLE `menu_types`
  ADD CONSTRAINT `menu_types_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;