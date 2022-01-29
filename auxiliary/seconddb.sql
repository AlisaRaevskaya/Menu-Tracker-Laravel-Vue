
-- --------------------------------------------------------
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

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `title`, `title2`, `subitle`, `subtitle2`, `menu_price`, `footer_local`, `footer_notice`, `footer_notice2`, `watermark`, `user_id`, `menu_type_id`, `created_at`, `updated_at`) VALUES
(2, 'Second Default', '', '', '', '', NULL, '', 'There may be a risk associated with consuming raw shellfish as is the case with other raw protein products. Please consume at your own risk**', 'The products with an indicated price are not included in the all-inclusive package and are priced in mexican pesos, inclusing iva**', '', 1, 2, '2021-10-28 07:17:36', '2021-10-29 07:17:36'),
(1, 'Mobile', '', '', '', '', NULL, '', 'There may be a risk associated with consuming raw shellfish as is the case with other raw protein products. Please consume at your own risk**', 'The products with an indicated price are not included in the all-inclusive package and are priced in mexican pesos, inclusing iva**', '', 1, 1, '2021-10-28 07:17:36', '2021-10-29 07:17:36');

-- --------------------------------------------------------
INSERT INTO `menu_sections` (`id`, `id_parent_section`, `subtitle`, `title`, `price`, `style`, `side`, `field_order`, `ordering`, `menu_type_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 0, '', 'Bread & Pastry', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 0, 1, 1, '2021-10-28 07:17:36', NULL),
(2, 0, '', 'SALADS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 1, 1, 1, '2021-10-28 07:17:36', NULL),
(3, 0, '', 'KIDS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 2, 1, 1, '2021-10-28 07:17:36', NULL),
(4, 0, '', 'SIDES', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 3, 1, 1, '2021-10-28 07:17:36', NULL),
(5, 0, '', 'LAND &amp; SEA', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 5, 1, 1, '2021-10-28 07:17:36', NULL),
(6, 0, '', 'CHOPS &amp; STEAKS', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 4, 1, 1, '2021-10-28 07:17:36', NULL),
(7, 0, '', 'SWEETS', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 6, 1, 1, '2021-10-28 07:17:36', NULL),
(8, 0, '', 'Drinks', NULL, 'No_Style', 'right', 'title,price,icons,subtitle,modifier,mod_text', 7, 1, 1, '2021-10-28 07:17:36', NULL);
(9, 0, '', 'Starters', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 0, 2, '2021-10-28 10:17:36', NULL),
(10, 0, '', 'SALADS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 1, 2, '2021-10-28 10:17:36', NULL),
(11, 0, '', 'KIDS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 2, 2, '2021-10-28 10:17:36', NULL),
(12, 0, '', 'SIDES', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 3, 2, '2021-10-28 10:17:36', NULL),
(13, 0, '', 'LAND &amp; SEA', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 5, 2, '2021-10-28 10:17:36', NULL),
(14, 0, '', 'CHOPS &amp; STEAKS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 4, 1, '2021-10-28 10:17:36', NULL),
(15, 0, '', 'SWEETS', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 6, 2, '2021-10-28 10:17:36', NULL),
(16, 0, '', 'SAUCES', NULL, 'No_Style', 'left', 'title,price,icons,subtitle,modifier,mod_text', 7, 2, '2021-10-28 10:17:36', NULL);
-- --------------------------------------------------------

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
