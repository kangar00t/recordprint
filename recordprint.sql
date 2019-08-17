-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 17 2019 г., 23:06
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `recordprint`
--

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_address`
--

CREATE TABLE `oclt_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_advertise_google_target`
--

CREATE TABLE `oclt_advertise_google_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_api`
--

CREATE TABLE `oclt_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_api`
--

INSERT INTO `oclt_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', '8VvuieDRU8AFdc2iTBGlda5IO91YOvzOTunyYMUunzCzKckx0YuEFBKHvzy2OI2MEFrtTNxBPojwzj7kOGYcrltDGrz6k7NyBPBmaB4WehjkV40xjpVlb0xa6tjTF2VTPKy59KA3b3CQ0A4RxbcXgxZV3yDzPj5LbwKUvP2vQhgwUgkQF1m7jbOW2KgewC5vVoVoPsShiVyxapEC6VKFvsu4wB1ik6SgHArT4gDCCyTUAd57Ks5AZoH7KPYMHGzb', 1, '2019-04-04 15:44:54', '2019-04-04 15:44:54');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_api_ip`
--

CREATE TABLE `oclt_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_api_session`
--

CREATE TABLE `oclt_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_attribute`
--

CREATE TABLE `oclt_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_attribute_description`
--

CREATE TABLE `oclt_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_attribute_group`
--

CREATE TABLE `oclt_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_attribute_group_description`
--

CREATE TABLE `oclt_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_banner`
--

CREATE TABLE `oclt_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_banner`
--

INSERT INTO `oclt_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1),
(9, 'Популярные категории', 1),
(10, 'тестестест', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_banner_image`
--

CREATE TABLE `oclt_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_banner_image`
--

INSERT INTO `oclt_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(99, 7, 2, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(100, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(101, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(102, 8, 2, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(103, 8, 2, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(104, 8, 2, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(105, 8, 2, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(106, 8, 2, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(107, 8, 2, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(108, 8, 2, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(109, 8, 2, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(110, 7, 2, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(111, 8, 2, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(112, 8, 2, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(113, 9, 2, 'Категория', '', 'catalog/banners/ban_01.jpg', 0),
(114, 9, 2, 'Категория', '', 'catalog/banners/ban_02.jpg', 0),
(115, 9, 2, 'Категория', '', 'catalog/banners/ban_03.jpg', 0),
(116, 9, 2, 'Категория', '', 'catalog/banners/ban_04.jpg', 0),
(117, 9, 2, 'Категория', '', 'catalog/banners/ban_05.jpg', 0),
(118, 9, 2, 'Категория', '', 'catalog/banners/ban_06.jpg', 0),
(119, 9, 2, 'Категория', '', 'catalog/banners/ban_07.jpg', 0),
(120, 9, 2, 'Категория', '', 'catalog/banners/ban_08.jpg', 0),
(121, 9, 2, 'Категория', '', 'catalog/banners/ban_09.jpg', 0),
(122, 9, 2, 'Категория', '', 'catalog/banners/ban_10.jpg', 0),
(123, 9, 2, 'Категория', '', 'catalog/banners/ban_11.jpg', 0),
(124, 10, 2, 'Категория', '', 'catalog/banners/ban_01.jpg', 0),
(125, 10, 2, 'Категория', '', 'catalog/banners/ban_02.jpg', 0),
(126, 10, 2, 'Категория', '', 'catalog/banners/ban_03.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_cart`
--

CREATE TABLE `oclt_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category`
--

CREATE TABLE `oclt_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image2` varchar(255) DEFAULT NULL,
  `category_icontype` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `category_icon` varchar(50) NOT NULL DEFAULT 'fa none',
  `category_image` varchar(255) DEFAULT NULL,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_category`
--

INSERT INTO `oclt_category` (`category_id`, `image`, `parent_id`, `image2`, `category_icontype`, `category_icon`, `category_image`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(60, 'catalog/cat_02.jpg', 0, '', 0, 'fa none', 'no_image.png', 1, 1, 1, 1, '2019-08-16 18:56:53', '2019-08-16 18:56:53'),
(61, 'catalog/cat_03.jpg', 0, '', 0, 'fa none', 'no_image.png', 1, 1, 2, 1, '2019-08-16 18:57:23', '2019-08-16 18:57:23'),
(62, 'catalog/cat_05.jpg', 0, '', 0, 'fa none', 'no_image.png', 1, 1, 3, 1, '2019-08-16 18:57:51', '2019-08-16 18:57:51'),
(63, 'catalog/cat_04.jpg', 0, '', 0, 'fa none', 'no_image.png', 1, 1, 4, 1, '2019-08-16 18:58:32', '2019-08-16 18:58:32'),
(59, 'catalog/cat_01.jpg', 0, '', 0, 'fa none', 'no_image.png', 1, 1, 0, 1, '2019-08-16 18:56:33', '2019-08-16 18:56:33');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category_description`
--

CREATE TABLE `oclt_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_category_description`
--

INSERT INTO `oclt_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(60, 2, 'Полиграфия', '', 'Полиграфия', '', ''),
(61, 2, 'Сувенирная продукция', '', 'Сувенирная продукция', '', ''),
(62, 2, 'Текстиль', '', 'Текстиль', '', ''),
(63, 2, 'Нанесение', '', 'Нанесение', '', ''),
(59, 2, 'Наградная атрибутика', '', 'Наградная атрибутика', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category_filter`
--

CREATE TABLE `oclt_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category_path`
--

CREATE TABLE `oclt_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_category_path`
--

INSERT INTO `oclt_category_path` (`category_id`, `path_id`, `level`) VALUES
(61, 61, 0),
(60, 60, 0),
(63, 63, 0),
(62, 62, 0),
(59, 59, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category_to_google_product_category`
--

CREATE TABLE `oclt_category_to_google_product_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category_to_layout`
--

CREATE TABLE `oclt_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_category_to_layout`
--

INSERT INTO `oclt_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_category_to_store`
--

CREATE TABLE `oclt_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_category_to_store`
--

INSERT INTO `oclt_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_country`
--

CREATE TABLE `oclt_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_country`
--

INSERT INTO `oclt_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_coupon`
--

CREATE TABLE `oclt_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_coupon`
--

INSERT INTO `oclt_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_coupon_category`
--

CREATE TABLE `oclt_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_coupon_history`
--

CREATE TABLE `oclt_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_coupon_product`
--

CREATE TABLE `oclt_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_currency`
--

CREATE TABLE `oclt_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_currency`
--

INSERT INTO `oclt_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2019-08-16 20:12:31'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer`
--

CREATE TABLE `oclt_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_customer`
--

INSERT INTO `oclt_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'Maxileshela', 'MaxileshelaKO', 'maryanaluy66a@bigmir.net', '82726958463', '', 'b6fbe5ffd646cc069e39cb1545ff4ce35ed3dbda', '6PtBvOzOI', NULL, NULL, 0, 0, '', '134.249.178.23', 1, 0, '', '', '2019-05-15 16:33:19'),
(2, 1, 0, 1, 'MichaelUW', 'MichaelUWAI', 'lindabutler9710@gmail.com', '82421128668', '', '87426046103659802a056bddf2a3d0adbbeb141e', 'H1UlsPsRH', NULL, NULL, 0, 0, '', '77.83.174.184', 1, 0, '', '', '2019-06-26 11:27:01'),
(3, 1, 0, 1, 'irinkahobNY', 'irinkahobNYVL', 'irinka_denisova_90@mail.ru', '83751237181', '', '7ff0486ef7b7540b6dbb76e8513a9f29a42828cc', '3z3N6FowE', NULL, NULL, 0, 0, '', '185.233.80.234', 1, 0, '', '', '2019-07-11 09:16:33'),
(4, 1, 0, 1, 'viktoriyamok', 'viktoriyamokJP', 'viktoriya_medvedeva_1973@mail.ru', '85853897145', '', '00918caf7e88b1af2f1c59d3279dc836a1b64b97', 'OYBXDPebF', NULL, NULL, 0, 0, '', '185.233.201.27', 1, 0, '', '', '2019-07-16 08:27:15'),
(5, 1, 0, 1, 'renahob', 'renahobZN', 'rena.sokolova.1991@mail.ru', '86235228114', '', 'd6dc282b9244a5f2b8d4db18f04efa9c601cbd85', 'ImJJQ5r83', NULL, NULL, 0, 0, '', '185.233.81.153', 1, 0, '', '', '2019-07-28 08:34:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_activity`
--

CREATE TABLE `oclt_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_affiliate`
--

CREATE TABLE `oclt_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_approval`
--

CREATE TABLE `oclt_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_group`
--

CREATE TABLE `oclt_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_customer_group`
--

INSERT INTO `oclt_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_group_description`
--

CREATE TABLE `oclt_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_customer_group_description`
--

INSERT INTO `oclt_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'Default', 'test');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_history`
--

CREATE TABLE `oclt_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_ip`
--

CREATE TABLE `oclt_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_customer_ip`
--

INSERT INTO `oclt_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '134.249.178.23', '2019-05-15 16:33:19'),
(2, 2, '77.83.174.184', '2019-06-26 11:27:01'),
(3, 3, '185.233.80.234', '2019-07-11 09:16:35'),
(4, 4, '185.233.201.27', '2019-07-16 08:27:15'),
(5, 5, '185.233.81.153', '2019-07-28 08:34:06');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_login`
--

CREATE TABLE `oclt_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_online`
--

CREATE TABLE `oclt_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_reward`
--

CREATE TABLE `oclt_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_search`
--

CREATE TABLE `oclt_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_transaction`
--

CREATE TABLE `oclt_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_customer_wishlist`
--

CREATE TABLE `oclt_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_custom_field`
--

CREATE TABLE `oclt_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_custom_field_customer_group`
--

CREATE TABLE `oclt_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_custom_field_description`
--

CREATE TABLE `oclt_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_custom_field_value`
--

CREATE TABLE `oclt_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_custom_field_value_description`
--

CREATE TABLE `oclt_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_download`
--

CREATE TABLE `oclt_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_download_description`
--

CREATE TABLE `oclt_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_event`
--

CREATE TABLE `oclt_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_event`
--

INSERT INTO `oclt_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_extension`
--

CREATE TABLE `oclt_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_extension`
--

INSERT INTO `oclt_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'theme', 'revolution'),
(44, 'module', 'html');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_extension_install`
--

CREATE TABLE `oclt_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_extension_install`
--

INSERT INTO `oclt_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'russian_oc3.ocmod.zip', '2019-08-14 19:40:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_extension_path`
--

CREATE TABLE `oclt_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_extension_path`
--

INSERT INTO `oclt_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/language/ru-ru', '2019-08-14 19:40:31'),
(2, 1, 'catalog/language/ru-ru', '2019-08-14 19:40:31'),
(3, 1, 'admin/language/ru-ru/catalog', '2019-08-14 19:40:31'),
(4, 1, 'admin/language/ru-ru/common', '2019-08-14 19:40:31'),
(5, 1, 'admin/language/ru-ru/customer', '2019-08-14 19:40:31'),
(6, 1, 'admin/language/ru-ru/design', '2019-08-14 19:40:31'),
(7, 1, 'admin/language/ru-ru/error', '2019-08-14 19:40:31'),
(8, 1, 'admin/language/ru-ru/extension', '2019-08-14 19:40:31'),
(9, 1, 'admin/language/ru-ru/localisation', '2019-08-14 19:40:31'),
(10, 1, 'admin/language/ru-ru/mail', '2019-08-14 19:40:31'),
(11, 1, 'admin/language/ru-ru/marketing', '2019-08-14 19:40:31'),
(12, 1, 'admin/language/ru-ru/marketplace', '2019-08-14 19:40:31'),
(13, 1, 'admin/language/ru-ru/report', '2019-08-14 19:40:31'),
(14, 1, 'admin/language/ru-ru/ru-ru.php', '2019-08-14 19:40:31'),
(15, 1, 'admin/language/ru-ru/ru-ru.png', '2019-08-14 19:40:31'),
(16, 1, 'admin/language/ru-ru/sale', '2019-08-14 19:40:31'),
(17, 1, 'admin/language/ru-ru/setting', '2019-08-14 19:40:31'),
(18, 1, 'admin/language/ru-ru/tool', '2019-08-14 19:40:31'),
(19, 1, 'admin/language/ru-ru/user', '2019-08-14 19:40:31'),
(20, 1, 'catalog/language/ru-ru/account', '2019-08-14 19:40:31'),
(21, 1, 'catalog/language/ru-ru/affiliate', '2019-08-14 19:40:31'),
(22, 1, 'catalog/language/ru-ru/api', '2019-08-14 19:40:31'),
(23, 1, 'catalog/language/ru-ru/checkout', '2019-08-14 19:40:31'),
(24, 1, 'catalog/language/ru-ru/common', '2019-08-14 19:40:31'),
(25, 1, 'catalog/language/ru-ru/error', '2019-08-14 19:40:31'),
(26, 1, 'catalog/language/ru-ru/extension', '2019-08-14 19:40:31'),
(27, 1, 'catalog/language/ru-ru/information', '2019-08-14 19:40:31'),
(28, 1, 'catalog/language/ru-ru/mail', '2019-08-14 19:40:31'),
(29, 1, 'catalog/language/ru-ru/product', '2019-08-14 19:40:31'),
(30, 1, 'catalog/language/ru-ru/ru-ru.php', '2019-08-14 19:40:31'),
(31, 1, 'catalog/language/ru-ru/ru-ru.png', '2019-08-14 19:40:31'),
(32, 1, 'catalog/language/ru-ru/tool', '2019-08-14 19:40:31'),
(33, 1, 'admin/language/ru-ru/catalog/attribute.php', '2019-08-14 19:40:31'),
(34, 1, 'admin/language/ru-ru/catalog/attribute_group.php', '2019-08-14 19:40:31'),
(35, 1, 'admin/language/ru-ru/catalog/category.php', '2019-08-14 19:40:31'),
(36, 1, 'admin/language/ru-ru/catalog/download.php', '2019-08-14 19:40:31'),
(37, 1, 'admin/language/ru-ru/catalog/filter.php', '2019-08-14 19:40:31'),
(38, 1, 'admin/language/ru-ru/catalog/information.php', '2019-08-14 19:40:31'),
(39, 1, 'admin/language/ru-ru/catalog/manufacturer.php', '2019-08-14 19:40:31'),
(40, 1, 'admin/language/ru-ru/catalog/option.php', '2019-08-14 19:40:31'),
(41, 1, 'admin/language/ru-ru/catalog/product.php', '2019-08-14 19:40:31'),
(42, 1, 'admin/language/ru-ru/catalog/recurring.php', '2019-08-14 19:40:31'),
(43, 1, 'admin/language/ru-ru/catalog/review.php', '2019-08-14 19:40:31'),
(44, 1, 'admin/language/ru-ru/common/column_left.php', '2019-08-14 19:40:31'),
(45, 1, 'admin/language/ru-ru/common/dashboard.php', '2019-08-14 19:40:31'),
(46, 1, 'admin/language/ru-ru/common/filemanager.php', '2019-08-14 19:40:31'),
(47, 1, 'admin/language/ru-ru/common/footer.php', '2019-08-14 19:40:31'),
(48, 1, 'admin/language/ru-ru/common/forgotten.php', '2019-08-14 19:40:31'),
(49, 1, 'admin/language/ru-ru/common/header.php', '2019-08-14 19:40:31'),
(50, 1, 'admin/language/ru-ru/common/login.php', '2019-08-14 19:40:31'),
(51, 1, 'admin/language/ru-ru/common/reset.php', '2019-08-14 19:40:31'),
(52, 1, 'admin/language/ru-ru/customer/custom_field.php', '2019-08-14 19:40:31'),
(53, 1, 'admin/language/ru-ru/customer/customer.php', '2019-08-14 19:40:31'),
(54, 1, 'admin/language/ru-ru/customer/customer_approval.php', '2019-08-14 19:40:31'),
(55, 1, 'admin/language/ru-ru/customer/customer_group.php', '2019-08-14 19:40:31'),
(56, 1, 'admin/language/ru-ru/design/banner.php', '2019-08-14 19:40:31'),
(57, 1, 'admin/language/ru-ru/design/language.php', '2019-08-14 19:40:31'),
(58, 1, 'admin/language/ru-ru/design/layout.php', '2019-08-14 19:40:31'),
(59, 1, 'admin/language/ru-ru/design/menu.php', '2019-08-14 19:40:31'),
(60, 1, 'admin/language/ru-ru/design/theme.php', '2019-08-14 19:40:31'),
(61, 1, 'admin/language/ru-ru/design/translation.php', '2019-08-14 19:40:31'),
(62, 1, 'admin/language/ru-ru/error/not_found.php', '2019-08-14 19:40:31'),
(63, 1, 'admin/language/ru-ru/error/permission.php', '2019-08-14 19:40:31'),
(64, 1, 'admin/language/ru-ru/extension/analytics', '2019-08-14 19:40:31'),
(65, 1, 'admin/language/ru-ru/extension/captcha', '2019-08-14 19:40:31'),
(66, 1, 'admin/language/ru-ru/extension/dashboard', '2019-08-14 19:40:31'),
(67, 1, 'admin/language/ru-ru/extension/extension', '2019-08-14 19:40:31'),
(68, 1, 'admin/language/ru-ru/extension/feed', '2019-08-14 19:40:31'),
(69, 1, 'admin/language/ru-ru/extension/fraud', '2019-08-14 19:40:31'),
(70, 1, 'admin/language/ru-ru/extension/module', '2019-08-14 19:40:31'),
(71, 1, 'admin/language/ru-ru/extension/openbay', '2019-08-14 19:40:31'),
(72, 1, 'admin/language/ru-ru/extension/payment', '2019-08-14 19:40:31'),
(73, 1, 'admin/language/ru-ru/extension/shipping', '2019-08-14 19:40:31'),
(74, 1, 'admin/language/ru-ru/extension/store.php', '2019-08-14 19:40:31'),
(75, 1, 'admin/language/ru-ru/extension/theme', '2019-08-14 19:40:31'),
(76, 1, 'admin/language/ru-ru/extension/total', '2019-08-14 19:40:31'),
(77, 1, 'admin/language/ru-ru/localisation/country.php', '2019-08-14 19:40:31'),
(78, 1, 'admin/language/ru-ru/localisation/currency.php', '2019-08-14 19:40:31'),
(79, 1, 'admin/language/ru-ru/localisation/geo_zone.php', '2019-08-14 19:40:31'),
(80, 1, 'admin/language/ru-ru/localisation/language.php', '2019-08-14 19:40:31'),
(81, 1, 'admin/language/ru-ru/localisation/length_class.php', '2019-08-14 19:40:31'),
(82, 1, 'admin/language/ru-ru/localisation/location.php', '2019-08-14 19:40:31'),
(83, 1, 'admin/language/ru-ru/localisation/order_status.php', '2019-08-14 19:40:31'),
(84, 1, 'admin/language/ru-ru/localisation/return_action.php', '2019-08-14 19:40:31'),
(85, 1, 'admin/language/ru-ru/localisation/return_reason.php', '2019-08-14 19:40:31'),
(86, 1, 'admin/language/ru-ru/localisation/return_status.php', '2019-08-14 19:40:31'),
(87, 1, 'admin/language/ru-ru/localisation/stock_status.php', '2019-08-14 19:40:31'),
(88, 1, 'admin/language/ru-ru/localisation/tax_class.php', '2019-08-14 19:40:31'),
(89, 1, 'admin/language/ru-ru/localisation/tax_rate.php', '2019-08-14 19:40:31'),
(90, 1, 'admin/language/ru-ru/localisation/weight_class.php', '2019-08-14 19:40:31'),
(91, 1, 'admin/language/ru-ru/localisation/zone.php', '2019-08-14 19:40:31'),
(92, 1, 'admin/language/ru-ru/mail/affiliate.php', '2019-08-14 19:40:31'),
(93, 1, 'admin/language/ru-ru/mail/customer.php', '2019-08-14 19:40:31'),
(94, 1, 'admin/language/ru-ru/mail/forgotten.php', '2019-08-14 19:40:31'),
(95, 1, 'admin/language/ru-ru/mail/return.php', '2019-08-14 19:40:31'),
(96, 1, 'admin/language/ru-ru/mail/voucher.php', '2019-08-14 19:40:31'),
(97, 1, 'admin/language/ru-ru/marketing/affiliate.php', '2019-08-14 19:40:31'),
(98, 1, 'admin/language/ru-ru/marketing/contact.php', '2019-08-14 19:40:31'),
(99, 1, 'admin/language/ru-ru/marketing/coupon.php', '2019-08-14 19:40:31'),
(100, 1, 'admin/language/ru-ru/marketing/marketing.php', '2019-08-14 19:40:31'),
(101, 1, 'admin/language/ru-ru/marketplace/api.php', '2019-08-14 19:40:31'),
(102, 1, 'admin/language/ru-ru/marketplace/event.php', '2019-08-14 19:40:31'),
(103, 1, 'admin/language/ru-ru/marketplace/extension.php', '2019-08-14 19:40:31'),
(104, 1, 'admin/language/ru-ru/marketplace/install.php', '2019-08-14 19:40:31'),
(105, 1, 'admin/language/ru-ru/marketplace/installer.php', '2019-08-14 19:40:31'),
(106, 1, 'admin/language/ru-ru/marketplace/marketplace.php', '2019-08-14 19:40:31'),
(107, 1, 'admin/language/ru-ru/marketplace/modification.php', '2019-08-14 19:40:31'),
(108, 1, 'admin/language/ru-ru/marketplace/openbay.php', '2019-08-14 19:40:31'),
(109, 1, 'admin/language/ru-ru/report/online.php', '2019-08-14 19:40:31'),
(110, 1, 'admin/language/ru-ru/report/report.php', '2019-08-14 19:40:31'),
(111, 1, 'admin/language/ru-ru/report/statistics.php', '2019-08-14 19:40:31'),
(112, 1, 'admin/language/ru-ru/sale/order.php', '2019-08-14 19:40:31'),
(113, 1, 'admin/language/ru-ru/sale/recurring.php', '2019-08-14 19:40:31'),
(114, 1, 'admin/language/ru-ru/sale/return.php', '2019-08-14 19:40:31'),
(115, 1, 'admin/language/ru-ru/sale/voucher.php', '2019-08-14 19:40:31'),
(116, 1, 'admin/language/ru-ru/sale/voucher_theme.php', '2019-08-14 19:40:31'),
(117, 1, 'admin/language/ru-ru/setting/setting.php', '2019-08-14 19:40:31'),
(118, 1, 'admin/language/ru-ru/setting/store.php', '2019-08-14 19:40:31'),
(119, 1, 'admin/language/ru-ru/tool/backup.php', '2019-08-14 19:40:31'),
(120, 1, 'admin/language/ru-ru/tool/log.php', '2019-08-14 19:40:31'),
(121, 1, 'admin/language/ru-ru/tool/upload.php', '2019-08-14 19:40:31'),
(122, 1, 'admin/language/ru-ru/user/api.php', '2019-08-14 19:40:31'),
(123, 1, 'admin/language/ru-ru/user/user.php', '2019-08-14 19:40:31'),
(124, 1, 'admin/language/ru-ru/user/user_group.php', '2019-08-14 19:40:31'),
(125, 1, 'catalog/language/ru-ru/account/account.php', '2019-08-14 19:40:31'),
(126, 1, 'catalog/language/ru-ru/account/address.php', '2019-08-14 19:40:31'),
(127, 1, 'catalog/language/ru-ru/account/download.php', '2019-08-14 19:40:31'),
(128, 1, 'catalog/language/ru-ru/account/edit.php', '2019-08-14 19:40:31'),
(129, 1, 'catalog/language/ru-ru/account/forgotten.php', '2019-08-14 19:40:31'),
(130, 1, 'catalog/language/ru-ru/account/login.php', '2019-08-14 19:40:31'),
(131, 1, 'catalog/language/ru-ru/account/logout.php', '2019-08-14 19:40:31'),
(132, 1, 'catalog/language/ru-ru/account/newsletter.php', '2019-08-14 19:40:31'),
(133, 1, 'catalog/language/ru-ru/account/order.php', '2019-08-14 19:40:31'),
(134, 1, 'catalog/language/ru-ru/account/password.php', '2019-08-14 19:40:31'),
(135, 1, 'catalog/language/ru-ru/account/recurring.php', '2019-08-14 19:40:31'),
(136, 1, 'catalog/language/ru-ru/account/register.php', '2019-08-14 19:40:31'),
(137, 1, 'catalog/language/ru-ru/account/reset.php', '2019-08-14 19:40:31'),
(138, 1, 'catalog/language/ru-ru/account/return.php', '2019-08-14 19:40:31'),
(139, 1, 'catalog/language/ru-ru/account/reward.php', '2019-08-14 19:40:31'),
(140, 1, 'catalog/language/ru-ru/account/success.php', '2019-08-14 19:40:31'),
(141, 1, 'catalog/language/ru-ru/account/transaction.php', '2019-08-14 19:40:31'),
(142, 1, 'catalog/language/ru-ru/account/voucher.php', '2019-08-14 19:40:31'),
(143, 1, 'catalog/language/ru-ru/account/wishlist.php', '2019-08-14 19:40:31'),
(144, 1, 'catalog/language/ru-ru/affiliate/account.php', '2019-08-14 19:40:31'),
(145, 1, 'catalog/language/ru-ru/affiliate/edit.php', '2019-08-14 19:40:31'),
(146, 1, 'catalog/language/ru-ru/affiliate/forgotten.php', '2019-08-14 19:40:31'),
(147, 1, 'catalog/language/ru-ru/affiliate/login.php', '2019-08-14 19:40:31'),
(148, 1, 'catalog/language/ru-ru/affiliate/logout.php', '2019-08-14 19:40:31'),
(149, 1, 'catalog/language/ru-ru/affiliate/password.php', '2019-08-14 19:40:31'),
(150, 1, 'catalog/language/ru-ru/affiliate/payment.php', '2019-08-14 19:40:31'),
(151, 1, 'catalog/language/ru-ru/affiliate/register.php', '2019-08-14 19:40:31'),
(152, 1, 'catalog/language/ru-ru/affiliate/success.php', '2019-08-14 19:40:31'),
(153, 1, 'catalog/language/ru-ru/affiliate/tracking.php', '2019-08-14 19:40:31'),
(154, 1, 'catalog/language/ru-ru/affiliate/transaction.php', '2019-08-14 19:40:31'),
(155, 1, 'catalog/language/ru-ru/api/cart.php', '2019-08-14 19:40:31'),
(156, 1, 'catalog/language/ru-ru/api/coupon.php', '2019-08-14 19:40:31'),
(157, 1, 'catalog/language/ru-ru/api/customer.php', '2019-08-14 19:40:31'),
(158, 1, 'catalog/language/ru-ru/api/login.php', '2019-08-14 19:40:31'),
(159, 1, 'catalog/language/ru-ru/api/order.php', '2019-08-14 19:40:31'),
(160, 1, 'catalog/language/ru-ru/api/payment.php', '2019-08-14 19:40:31'),
(161, 1, 'catalog/language/ru-ru/api/reward.php', '2019-08-14 19:40:31'),
(162, 1, 'catalog/language/ru-ru/api/shipping.php', '2019-08-14 19:40:31'),
(163, 1, 'catalog/language/ru-ru/api/voucher.php', '2019-08-14 19:40:31'),
(164, 1, 'catalog/language/ru-ru/checkout/cart.php', '2019-08-14 19:40:31'),
(165, 1, 'catalog/language/ru-ru/checkout/checkout.php', '2019-08-14 19:40:31'),
(166, 1, 'catalog/language/ru-ru/checkout/failure.php', '2019-08-14 19:40:31'),
(167, 1, 'catalog/language/ru-ru/checkout/success.php', '2019-08-14 19:40:31'),
(168, 1, 'catalog/language/ru-ru/common/cart.php', '2019-08-14 19:40:31'),
(169, 1, 'catalog/language/ru-ru/common/currency.php', '2019-08-14 19:40:31'),
(170, 1, 'catalog/language/ru-ru/common/footer.php', '2019-08-14 19:40:31'),
(171, 1, 'catalog/language/ru-ru/common/header.php', '2019-08-14 19:40:31'),
(172, 1, 'catalog/language/ru-ru/common/language.php', '2019-08-14 19:40:31'),
(173, 1, 'catalog/language/ru-ru/common/maintenance.php', '2019-08-14 19:40:31'),
(174, 1, 'catalog/language/ru-ru/common/search.php', '2019-08-14 19:40:31'),
(175, 1, 'catalog/language/ru-ru/error/not_found.php', '2019-08-14 19:40:31'),
(176, 1, 'catalog/language/ru-ru/extension/captcha', '2019-08-14 19:40:31'),
(177, 1, 'catalog/language/ru-ru/extension/module', '2019-08-14 19:40:31'),
(178, 1, 'catalog/language/ru-ru/extension/openbay', '2019-08-14 19:40:31'),
(179, 1, 'catalog/language/ru-ru/extension/payment', '2019-08-14 19:40:31'),
(180, 1, 'catalog/language/ru-ru/extension/recurring', '2019-08-14 19:40:31'),
(181, 1, 'catalog/language/ru-ru/extension/shipping', '2019-08-14 19:40:31'),
(182, 1, 'catalog/language/ru-ru/extension/total', '2019-08-14 19:40:31'),
(183, 1, 'catalog/language/ru-ru/information/contact.php', '2019-08-14 19:40:31'),
(184, 1, 'catalog/language/ru-ru/information/information.php', '2019-08-14 19:40:31'),
(185, 1, 'catalog/language/ru-ru/information/sitemap.php', '2019-08-14 19:40:31'),
(186, 1, 'catalog/language/ru-ru/mail/affiliate.php', '2019-08-14 19:40:31'),
(187, 1, 'catalog/language/ru-ru/mail/customer.php', '2019-08-14 19:40:31'),
(188, 1, 'catalog/language/ru-ru/mail/forgotten.php', '2019-08-14 19:40:31'),
(189, 1, 'catalog/language/ru-ru/mail/order.php', '2019-08-14 19:40:31'),
(190, 1, 'catalog/language/ru-ru/mail/review.php', '2019-08-14 19:40:31'),
(191, 1, 'catalog/language/ru-ru/mail/voucher.php', '2019-08-14 19:40:31'),
(192, 1, 'catalog/language/ru-ru/product/category.php', '2019-08-14 19:40:31'),
(193, 1, 'catalog/language/ru-ru/product/compare.php', '2019-08-14 19:40:31'),
(194, 1, 'catalog/language/ru-ru/product/manufacturer.php', '2019-08-14 19:40:31'),
(195, 1, 'catalog/language/ru-ru/product/product.php', '2019-08-14 19:40:31'),
(196, 1, 'catalog/language/ru-ru/product/search.php', '2019-08-14 19:40:31'),
(197, 1, 'catalog/language/ru-ru/product/special.php', '2019-08-14 19:40:31'),
(198, 1, 'catalog/language/ru-ru/tool/upload.php', '2019-08-14 19:40:31'),
(199, 1, 'admin/language/ru-ru/extension/analytics/google_analytics.php', '2019-08-14 19:40:31'),
(200, 1, 'admin/language/ru-ru/extension/captcha/basic_captcha.php', '2019-08-14 19:40:31'),
(201, 1, 'admin/language/ru-ru/extension/captcha/google_captcha.php', '2019-08-14 19:40:31'),
(202, 1, 'admin/language/ru-ru/extension/dashboard/activity.php', '2019-08-14 19:40:31'),
(203, 1, 'admin/language/ru-ru/extension/dashboard/chart.php', '2019-08-14 19:40:31'),
(204, 1, 'admin/language/ru-ru/extension/dashboard/customer.php', '2019-08-14 19:40:31'),
(205, 1, 'admin/language/ru-ru/extension/dashboard/map.php', '2019-08-14 19:40:31'),
(206, 1, 'admin/language/ru-ru/extension/dashboard/online.php', '2019-08-14 19:40:31'),
(207, 1, 'admin/language/ru-ru/extension/dashboard/order.php', '2019-08-14 19:40:31'),
(208, 1, 'admin/language/ru-ru/extension/dashboard/recent.php', '2019-08-14 19:40:31'),
(209, 1, 'admin/language/ru-ru/extension/dashboard/sale.php', '2019-08-14 19:40:31'),
(210, 1, 'admin/language/ru-ru/extension/extension/analytics.php', '2019-08-14 19:40:31'),
(211, 1, 'admin/language/ru-ru/extension/extension/captcha.php', '2019-08-14 19:40:31'),
(212, 1, 'admin/language/ru-ru/extension/extension/dashboard.php', '2019-08-14 19:40:31'),
(213, 1, 'admin/language/ru-ru/extension/extension/feed.php', '2019-08-14 19:40:31'),
(214, 1, 'admin/language/ru-ru/extension/extension/fraud.php', '2019-08-14 19:40:31'),
(215, 1, 'admin/language/ru-ru/extension/extension/module.php', '2019-08-14 19:40:31'),
(216, 1, 'admin/language/ru-ru/extension/extension/payment.php', '2019-08-14 19:40:31'),
(217, 1, 'admin/language/ru-ru/extension/extension/shipping.php', '2019-08-14 19:40:31'),
(218, 1, 'admin/language/ru-ru/extension/extension/theme.php', '2019-08-14 19:40:31'),
(219, 1, 'admin/language/ru-ru/extension/extension/total.php', '2019-08-14 19:40:31'),
(220, 1, 'admin/language/ru-ru/extension/feed/google_base.php', '2019-08-14 19:40:31'),
(221, 1, 'admin/language/ru-ru/extension/feed/google_sitemap.php', '2019-08-14 19:40:31'),
(222, 1, 'admin/language/ru-ru/extension/fraud/ip.php', '2019-08-14 19:40:31'),
(223, 1, 'admin/language/ru-ru/extension/module/account.php', '2019-08-14 19:40:31'),
(224, 1, 'admin/language/ru-ru/extension/module/affiliate.php', '2019-08-14 19:40:31'),
(225, 1, 'admin/language/ru-ru/extension/module/banner.php', '2019-08-14 19:40:31'),
(226, 1, 'admin/language/ru-ru/extension/module/bestseller.php', '2019-08-14 19:40:31'),
(227, 1, 'admin/language/ru-ru/extension/module/carousel.php', '2019-08-14 19:40:31'),
(228, 1, 'admin/language/ru-ru/extension/module/category.php', '2019-08-14 19:40:31'),
(229, 1, 'admin/language/ru-ru/extension/module/featured.php', '2019-08-14 19:40:31'),
(230, 1, 'admin/language/ru-ru/extension/module/filter.php', '2019-08-14 19:40:31'),
(231, 1, 'admin/language/ru-ru/extension/module/google_hangouts.php', '2019-08-14 19:40:31'),
(232, 1, 'admin/language/ru-ru/extension/module/html.php', '2019-08-14 19:40:31'),
(233, 1, 'admin/language/ru-ru/extension/module/information.php', '2019-08-14 19:40:31'),
(234, 1, 'admin/language/ru-ru/extension/module/latest.php', '2019-08-14 19:40:31'),
(235, 1, 'admin/language/ru-ru/extension/module/pp_button.php', '2019-08-14 19:40:31'),
(236, 1, 'admin/language/ru-ru/extension/module/slideshow.php', '2019-08-14 19:40:31'),
(237, 1, 'admin/language/ru-ru/extension/module/special.php', '2019-08-14 19:40:31'),
(238, 1, 'admin/language/ru-ru/extension/module/store.php', '2019-08-14 19:40:31'),
(239, 1, 'admin/language/ru-ru/extension/payment/bank_transfer.php', '2019-08-14 19:40:31'),
(240, 1, 'admin/language/ru-ru/extension/payment/cheque.php', '2019-08-14 19:40:31'),
(241, 1, 'admin/language/ru-ru/extension/payment/cod.php', '2019-08-14 19:40:31'),
(242, 1, 'admin/language/ru-ru/extension/payment/free_checkout.php', '2019-08-14 19:40:31'),
(243, 1, 'admin/language/ru-ru/extension/payment/liqpay.php', '2019-08-14 19:40:31'),
(244, 1, 'admin/language/ru-ru/extension/payment/pp_express.php', '2019-08-14 19:40:31'),
(245, 1, 'admin/language/ru-ru/extension/payment/pp_express_order.php', '2019-08-14 19:40:31'),
(246, 1, 'admin/language/ru-ru/extension/payment/pp_express_refund.php', '2019-08-14 19:40:31'),
(247, 1, 'admin/language/ru-ru/extension/payment/pp_express_search.php', '2019-08-14 19:40:31'),
(248, 1, 'admin/language/ru-ru/extension/payment/pp_express_view.php', '2019-08-14 19:40:31'),
(249, 1, 'admin/language/ru-ru/extension/payment/pp_pro.php', '2019-08-14 19:40:31'),
(250, 1, 'admin/language/ru-ru/extension/payment/pp_standard.php', '2019-08-14 19:40:31'),
(251, 1, 'admin/language/ru-ru/extension/shipping/citylink.php', '2019-08-14 19:40:31'),
(252, 1, 'admin/language/ru-ru/extension/shipping/flat.php', '2019-08-14 19:40:31'),
(253, 1, 'admin/language/ru-ru/extension/shipping/free.php', '2019-08-14 19:40:31'),
(254, 1, 'admin/language/ru-ru/extension/shipping/item.php', '2019-08-14 19:40:31'),
(255, 1, 'admin/language/ru-ru/extension/shipping/pickup.php', '2019-08-14 19:40:31'),
(256, 1, 'admin/language/ru-ru/extension/shipping/weight.php', '2019-08-14 19:40:31'),
(257, 1, 'admin/language/ru-ru/extension/theme/theme_default.php', '2019-08-14 19:40:31'),
(258, 1, 'admin/language/ru-ru/extension/total/coupon.php', '2019-08-14 19:40:31'),
(259, 1, 'admin/language/ru-ru/extension/total/credit.php', '2019-08-14 19:40:31'),
(260, 1, 'admin/language/ru-ru/extension/total/handling.php', '2019-08-14 19:40:31'),
(261, 1, 'admin/language/ru-ru/extension/total/low_order_fee.php', '2019-08-14 19:40:31'),
(262, 1, 'admin/language/ru-ru/extension/total/reward.php', '2019-08-14 19:40:31'),
(263, 1, 'admin/language/ru-ru/extension/total/shipping.php', '2019-08-14 19:40:31'),
(264, 1, 'admin/language/ru-ru/extension/total/sub_total.php', '2019-08-14 19:40:31'),
(265, 1, 'admin/language/ru-ru/extension/total/tax.php', '2019-08-14 19:40:31'),
(266, 1, 'admin/language/ru-ru/extension/total/total.php', '2019-08-14 19:40:31'),
(267, 1, 'admin/language/ru-ru/extension/total/voucher.php', '2019-08-14 19:40:31'),
(268, 1, 'catalog/language/ru-ru/extension/captcha/basic_captcha.php', '2019-08-14 19:40:31'),
(269, 1, 'catalog/language/ru-ru/extension/captcha/google_captcha.php', '2019-08-14 19:40:31'),
(270, 1, 'catalog/language/ru-ru/extension/module/account.php', '2019-08-14 19:40:31'),
(271, 1, 'catalog/language/ru-ru/extension/module/affiliate.php', '2019-08-14 19:40:31'),
(272, 1, 'catalog/language/ru-ru/extension/module/bestseller.php', '2019-08-14 19:40:31'),
(273, 1, 'catalog/language/ru-ru/extension/module/category.php', '2019-08-14 19:40:31'),
(274, 1, 'catalog/language/ru-ru/extension/module/featured.php', '2019-08-14 19:40:31'),
(275, 1, 'catalog/language/ru-ru/extension/module/filter.php', '2019-08-14 19:40:31'),
(276, 1, 'catalog/language/ru-ru/extension/module/google_hangouts.php', '2019-08-14 19:40:32'),
(277, 1, 'catalog/language/ru-ru/extension/module/information.php', '2019-08-14 19:40:32'),
(278, 1, 'catalog/language/ru-ru/extension/module/latest.php', '2019-08-14 19:40:32'),
(279, 1, 'catalog/language/ru-ru/extension/module/special.php', '2019-08-14 19:40:32'),
(280, 1, 'catalog/language/ru-ru/extension/module/store.php', '2019-08-14 19:40:32'),
(281, 1, 'catalog/language/ru-ru/extension/payment/bank_transfer.php', '2019-08-14 19:40:32'),
(282, 1, 'catalog/language/ru-ru/extension/payment/cheque.php', '2019-08-14 19:40:32'),
(283, 1, 'catalog/language/ru-ru/extension/payment/cod.php', '2019-08-14 19:40:32'),
(284, 1, 'catalog/language/ru-ru/extension/payment/free_checkout.php', '2019-08-14 19:40:32'),
(285, 1, 'catalog/language/ru-ru/extension/payment/liqpay.php', '2019-08-14 19:40:32'),
(286, 1, 'catalog/language/ru-ru/extension/payment/moneybookers.php', '2019-08-14 19:40:32'),
(287, 1, 'catalog/language/ru-ru/extension/payment/pp_express.php', '2019-08-14 19:40:32'),
(288, 1, 'catalog/language/ru-ru/extension/payment/pp_pro.php', '2019-08-14 19:40:32'),
(289, 1, 'catalog/language/ru-ru/extension/payment/pp_standard.php', '2019-08-14 19:40:32'),
(290, 1, 'catalog/language/ru-ru/extension/recurring/pp_express.php', '2019-08-14 19:40:32'),
(291, 1, 'catalog/language/ru-ru/extension/shipping/citylink.php', '2019-08-14 19:40:32'),
(292, 1, 'catalog/language/ru-ru/extension/shipping/flat.php', '2019-08-14 19:40:32'),
(293, 1, 'catalog/language/ru-ru/extension/shipping/free.php', '2019-08-14 19:40:32'),
(294, 1, 'catalog/language/ru-ru/extension/shipping/item.php', '2019-08-14 19:40:32'),
(295, 1, 'catalog/language/ru-ru/extension/shipping/pickup.php', '2019-08-14 19:40:32'),
(296, 1, 'catalog/language/ru-ru/extension/shipping/weight.php', '2019-08-14 19:40:32'),
(297, 1, 'catalog/language/ru-ru/extension/total/coupon.php', '2019-08-14 19:40:32'),
(298, 1, 'catalog/language/ru-ru/extension/total/credit.php', '2019-08-14 19:40:32'),
(299, 1, 'catalog/language/ru-ru/extension/total/handling.php', '2019-08-14 19:40:32'),
(300, 1, 'catalog/language/ru-ru/extension/total/low_order_fee.php', '2019-08-14 19:40:32'),
(301, 1, 'catalog/language/ru-ru/extension/total/reward.php', '2019-08-14 19:40:32'),
(302, 1, 'catalog/language/ru-ru/extension/total/shipping.php', '2019-08-14 19:40:32'),
(303, 1, 'catalog/language/ru-ru/extension/total/sub_total.php', '2019-08-14 19:40:32'),
(304, 1, 'catalog/language/ru-ru/extension/total/total.php', '2019-08-14 19:40:32'),
(305, 1, 'catalog/language/ru-ru/extension/total/voucher.php', '2019-08-14 19:40:32');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_filter`
--

CREATE TABLE `oclt_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_filter_description`
--

CREATE TABLE `oclt_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_filter_group`
--

CREATE TABLE `oclt_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_filter_group_description`
--

CREATE TABLE `oclt_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_geo_zone`
--

CREATE TABLE `oclt_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_geo_zone`
--

INSERT INTO `oclt_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_information`
--

CREATE TABLE `oclt_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `top2` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_information`
--

INSERT INTO `oclt_information` (`information_id`, `bottom`, `top`, `top2`, `sort_order`, `status`) VALUES
(3, 1, 0, 0, 3, 1),
(4, 1, 0, 0, 1, 1),
(5, 1, 0, 0, 4, 1),
(6, 1, 0, 0, 2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_information_description`
--

CREATE TABLE `oclt_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_information_description`
--

INSERT INTO `oclt_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_information_to_layout`
--

CREATE TABLE `oclt_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_information_to_store`
--

CREATE TABLE `oclt_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_information_to_store`
--

INSERT INTO `oclt_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_language`
--

CREATE TABLE `oclt_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_language`
--

INSERT INTO `oclt_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(2, 'Русский', 'ru-ru', 'ru-RU,ru_RU.UTF-8,ru_RU,ru-ru,russian', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_layout`
--

CREATE TABLE `oclt_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_layout`
--

INSERT INTO `oclt_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_layout_module`
--

CREATE TABLE `oclt_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_layout_module`
--

INSERT INTO `oclt_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(81, 1, 'html.32', 'content_top', 3),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_layout_route`
--

CREATE TABLE `oclt_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_layout_route`
--

INSERT INTO `oclt_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(57, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(54, 6, 0, 'revolution/account/%');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_length_class`
--

CREATE TABLE `oclt_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_length_class`
--

INSERT INTO `oclt_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_length_class_description`
--

CREATE TABLE `oclt_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_length_class_description`
--

INSERT INTO `oclt_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_location`
--

CREATE TABLE `oclt_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_manufacturer`
--

CREATE TABLE `oclt_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_manufacturer`
--

INSERT INTO `oclt_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_manufacturer_to_store`
--

CREATE TABLE `oclt_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_manufacturer_to_store`
--

INSERT INTO `oclt_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_marketing`
--

CREATE TABLE `oclt_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_modification`
--

CREATE TABLE `oclt_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_module`
--

CREATE TABLE `oclt_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_module`
--

INSERT INTO `oclt_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"9\",\"width\":\"380\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(32, 'Текст на главной', 'html', '{\"name\":\"\\u0422\\u0435\\u043a\\u0441\\u0442 \\u043d\\u0430 \\u0433\\u043b\\u0430\\u0432\\u043d\\u043e\\u0439\",\"module_description\":{\"2\":{\"title\":\"\\u041a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044f \\u00ab\\u0420\\u0435\\u043a\\u043e\\u0440\\u0434\\u00bb \\u043f\\u0440\\u0435\\u0434\\u043b\\u0430\\u0433\\u0430\\u0435\\u0442\",\"description\":\"&lt;p&gt;&lt;font face=&quot;Arial&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;\\u043f\\u043e\\u043b\\u043d\\u044b\\u0439 \\u043a\\u043e\\u043c\\u043f\\u043b\\u0435\\u043a\\u0441 \\u043f\\u043e\\u043b\\u0438\\u0433\\u0440\\u0430\\u0444\\u0438\\u0447\\u0435\\u0441\\u043a\\u0438\\u0445 \\u0443\\u0441\\u043b\\u0443\\u0433, \\u0430 \\u0442\\u0430\\u043a\\u0436\\u0435 \\u0438\\u0437\\u0433\\u043e\\u0442\\u043e\\u0432\\u043b\\u0435\\u043d\\u0438\\u0435 \\u043d\\u0430\\u0433\\u0440\\u0430\\u0434\\u043d\\u043e\\u0439 \\u0430\\u0442\\u0440\\u0438\\u0431\\u0443\\u0442\\u0438\\u043a\\u0438 \\u0434\\u043b\\u044f \\u043b\\u044e\\u0431\\u043e\\u0433\\u043e \\u0442\\u0438\\u043f\\u0430 \\u0441\\u043e\\u0431\\u044b\\u0442\\u0438\\u0439. \\u0413\\u0430\\u0440\\u0430\\u043d\\u0442\\u0438\\u0440\\u0443\\u0435\\u043c \\u0432\\u044b\\u0441\\u043e\\u043a\\u0438\\u0439 \\u0443\\u0440\\u043e\\u0432\\u0435\\u043d\\u044c \\u043e\\u0431\\u0441\\u043b\\u0443\\u0436\\u0438\\u0432\\u0430\\u043d\\u0438\\u044f, \\u0434\\u0435\\u043c\\u043e\\u043a\\u0440\\u0430\\u0442\\u0438\\u0447\\u043d\\u044b\\u0435 \\u0446\\u0435\\u043d\\u044b \\u0438 \\u0438\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043f\\u043e\\u0434\\u0445\\u043e\\u0434 \\u043a \\u043a\\u0430\\u0436\\u0434\\u043e\\u043c\\u0443 \\u0437\\u0430\\u043a\\u0430\\u0437\\u0443!&lt;\\/span&gt;&lt;\\/font&gt;&lt;br&gt;&lt;\\/p&gt;\"}},\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_option`
--

CREATE TABLE `oclt_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `opt_image` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_option`
--

INSERT INTO `oclt_option` (`option_id`, `type`, `sort_order`, `opt_image`) VALUES
(1, 'radio', 1, 0),
(2, 'checkbox', 2, 0),
(4, 'text', 3, 0),
(5, 'select', 4, 0),
(6, 'textarea', 5, 0),
(7, 'file', 6, 0),
(8, 'date', 7, 0),
(9, 'time', 8, 0),
(10, 'datetime', 9, 0),
(11, 'select', 10, 0),
(12, 'date', 11, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_option_description`
--

CREATE TABLE `oclt_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_option_description`
--

INSERT INTO `oclt_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_option_value`
--

CREATE TABLE `oclt_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_option_value`
--

INSERT INTO `oclt_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_option_value_description`
--

CREATE TABLE `oclt_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_option_value_description`
--

INSERT INTO `oclt_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order`
--

CREATE TABLE `oclt_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_history`
--

CREATE TABLE `oclt_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_option`
--

CREATE TABLE `oclt_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_product`
--

CREATE TABLE `oclt_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_recurring`
--

CREATE TABLE `oclt_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_recurring_transaction`
--

CREATE TABLE `oclt_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_shipment`
--

CREATE TABLE `oclt_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_status`
--

CREATE TABLE `oclt_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_order_status`
--

INSERT INTO `oclt_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_total`
--

CREATE TABLE `oclt_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_order_voucher`
--

CREATE TABLE `oclt_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product`
--

CREATE TABLE `oclt_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `options_buy` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_product`
--

INSERT INTO `oclt_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `options_buy`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(55, 'Кружка с нанесением', '', '', '', '', '', '', '', 100, 6, 'catalog/catalog/item_01.jpg', 0, 1, 0, '15.0000', 0, 0, '2019-08-16', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 6, '2019-08-16 19:11:23', '2019-08-16 19:59:30');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_advertise_google`
--

CREATE TABLE `oclt_product_advertise_google` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `conversions` int(11) NOT NULL DEFAULT '0',
  `cost` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `conversion_value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_product_advertise_google`
--

INSERT INTO `oclt_product_advertise_google` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(0, 55, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_advertise_google_status`
--

CREATE TABLE `oclt_product_advertise_google_status` (
  `product_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_advertise_google_target`
--

CREATE TABLE `oclt_product_advertise_google_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_attribute`
--

CREATE TABLE `oclt_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_description`
--

CREATE TABLE `oclt_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `short_description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_product_description`
--

INSERT INTO `oclt_product_description` (`product_id`, `language_id`, `name`, `description`, `short_description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(55, 2, 'Кружка с нанесением', '', '', '', 'Кружка с нанесением', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_discount`
--

CREATE TABLE `oclt_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_filter`
--

CREATE TABLE `oclt_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_image`
--

CREATE TABLE `oclt_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `video` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_option`
--

CREATE TABLE `oclt_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_option_value`
--

CREATE TABLE `oclt_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  `opt_image` varchar(255) DEFAULT NULL,
  `model` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_recurring`
--

CREATE TABLE `oclt_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_related`
--

CREATE TABLE `oclt_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_reward`
--

CREATE TABLE `oclt_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_special`
--

CREATE TABLE `oclt_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_tab`
--

CREATE TABLE `oclt_product_tab` (
  `product_tab_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sort_order` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_tab_desc`
--

CREATE TABLE `oclt_product_tab_desc` (
  `product_tab_id` int(11) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_to_category`
--

CREATE TABLE `oclt_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_product_to_category`
--

INSERT INTO `oclt_product_to_category` (`product_id`, `category_id`) VALUES
(55, 61);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_to_download`
--

CREATE TABLE `oclt_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_to_layout`
--

CREATE TABLE `oclt_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_product_to_layout`
--

INSERT INTO `oclt_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(55, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_product_to_store`
--

CREATE TABLE `oclt_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_product_to_store`
--

INSERT INTO `oclt_product_to_store` (`product_id`, `store_id`) VALUES
(55, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_recurring`
--

CREATE TABLE `oclt_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_recurring_description`
--

CREATE TABLE `oclt_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_return`
--

CREATE TABLE `oclt_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_return_action`
--

CREATE TABLE `oclt_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_return_action`
--

INSERT INTO `oclt_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_return_history`
--

CREATE TABLE `oclt_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_return_reason`
--

CREATE TABLE `oclt_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_return_reason`
--

INSERT INTO `oclt_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_return_status`
--

CREATE TABLE `oclt_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_return_status`
--

INSERT INTO `oclt_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revanswers`
--

CREATE TABLE `oclt_revanswers` (
  `answer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `answer` text NOT NULL,
  `answer_from` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog`
--

CREATE TABLE `oclt_revblog` (
  `revblog_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_category`
--

CREATE TABLE `oclt_revblog_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_category_description`
--

CREATE TABLE `oclt_revblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_category_path`
--

CREATE TABLE `oclt_revblog_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_category_to_layout`
--

CREATE TABLE `oclt_revblog_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_category_to_store`
--

CREATE TABLE `oclt_revblog_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_description`
--

CREATE TABLE `oclt_revblog_description` (
  `revblog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `title_pr` varchar(128) NOT NULL,
  `title_products` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_images`
--

CREATE TABLE `oclt_revblog_images` (
  `image_id` int(11) NOT NULL,
  `revblog_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_product`
--

CREATE TABLE `oclt_revblog_product` (
  `revblog_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_related`
--

CREATE TABLE `oclt_revblog_related` (
  `revblog_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_review`
--

CREATE TABLE `oclt_revblog_review` (
  `review_id` int(11) NOT NULL,
  `revblog_id` int(11) NOT NULL,
  `parent_review_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_to_category`
--

CREATE TABLE `oclt_revblog_to_category` (
  `revblog_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_to_layout`
--

CREATE TABLE `oclt_revblog_to_layout` (
  `revblog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revblog_to_store`
--

CREATE TABLE `oclt_revblog_to_store` (
  `revblog_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revcheckoutcustomfield`
--

CREATE TABLE `oclt_revcheckoutcustomfield` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `mask` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revcheckoutcustomfield_customer_group`
--

CREATE TABLE `oclt_revcheckoutcustomfield_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revcheckoutcustomfield_description`
--

CREATE TABLE `oclt_revcheckoutcustomfield_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revcheckoutcustomfield_shipping_code`
--

CREATE TABLE `oclt_revcheckoutcustomfield_shipping_code` (
  `custom_field_id` int(11) NOT NULL,
  `shipping_code` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revcheckoutcustomfield_value`
--

CREATE TABLE `oclt_revcheckoutcustomfield_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revcheckoutcustomfield_value_description`
--

CREATE TABLE `oclt_revcheckoutcustomfield_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_review`
--

CREATE TABLE `oclt_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `answer` text NOT NULL,
  `answer_from` varchar(64) NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revpopupphones`
--

CREATE TABLE `oclt_revpopupphones` (
  `pphone_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `telephone` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revproductnotify`
--

CREATE TABLE `oclt_revproductnotify` (
  `notify_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `product_name` varchar(128) NOT NULL,
  `telephone` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `comment` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_revsubscribe`
--

CREATE TABLE `oclt_revsubscribe` (
  `subscribe_id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language_id` varchar(100) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_seo_url`
--

CREATE TABLE `oclt_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_seo_url`
--

INSERT INTO `oclt_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(844, 0, 1, 'revolution/revpbest', 'best'),
(845, 0, 1, 'revolution/revplast', 'latest'),
(846, 0, 1, 'revolution/revstorereview', 'otzivy'),
(847, 0, 1, 'revolution/revcheckout', 'make_order'),
(848, 0, 1, 'revolution/account/revaccount', 'my_account'),
(849, 0, 1, 'revolution/account/revedit', 'edit_account'),
(850, 0, 1, 'revolution/account/revregister', 'register_account');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_session`
--

CREATE TABLE `oclt_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_session`
--

INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('00103bce2b588a97c4568e0ea9', 'false', '2019-07-01 02:24:58'),
('003d17105762ffd708aab3b47c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 22:10:01'),
('00625085a9a357ee6823a1e1f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:35'),
('006bac1ae6a0d6d310576149a3', 'false', '2019-06-30 22:54:02'),
('007965670844ecd21e392fa84d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:48'),
('008565795e0a5e4eab5c444d3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:02:49'),
('00857b1b38bf90c1e6e0e3ad40', 'false', '2019-07-01 00:34:44'),
('00b05355e577da9adabbfb58b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 02:56:46'),
('00da2ea78a2a588b1b475670fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:31'),
('00f3411904d5458928cdbe2c5c', 'false', '2019-07-01 03:29:38'),
('00f4888c6f4ee8ebacb4a302da', 'false', '2019-06-30 19:09:15'),
('00fe7f7044eba3d521e9ef6a72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 18:18:44'),
('0125d605b253fc01adac8ceb01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:25'),
('012b446c41c905bb082e9ae2de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 07:26:16'),
('0140c2b6d5924bee5eae179042', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 18:57:07'),
('01539147d45fdc3c36fb5d9739', 'false', '2019-07-01 02:21:48'),
('0170876fa226cfa712a061af33', 'false', '2019-06-30 17:36:39'),
('017a9422a14ef3aa33d718113d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:42'),
('01990620f2c76aef1df0328350', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:06:01'),
('01a4fe59117907c901f1b4eeb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:58:19'),
('01c89b7e209d63a42e02d7372d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 15:59:09'),
('01c8d3755fc4bc8a2b1b3a8d3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:58'),
('01d2fe70331d1b684986c0f033', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 05:54:30'),
('01db40763bde229337f07e096a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:03'),
('01df4f0dfc61ac78e61a5ecf34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 06:02:06'),
('01e73de4e8e79d05fb8a152da2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 18:46:37'),
('02188f22ffedc3a4bbab88a834', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 11:00:50'),
('0233e78dfe0e8837b88649d39f', 'false', '2019-07-05 17:37:56'),
('02486d7355575a19c320a458e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 05:17:30'),
('0248bbc7d4f86b9b733d3542ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 10:31:00'),
('024ef57a1d55de9415d1dda86a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:55:41'),
('026cb06f50745ca585309c8b98', 'false', '2019-06-30 20:15:45'),
('028b32ccbe9584d7dcc42372b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:57:11'),
('029ba7efe643333bc698d04947', 'false', '2019-07-01 03:51:47'),
('02b7ef1dfdb92d1db5101194f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:26:47'),
('02ded1bafd0f944f905a993d3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:52:46'),
('02e7bb4832c24708dc036ab7a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 12:25:42'),
('02ec037d912eb3ca30066be7fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 16:04:04'),
('02f096a2e733f30598a51eb23c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 10:18:52'),
('0314b014c7538e0ae45c85e569', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 10:11:45'),
('0334484f59f54cadd467205a63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:48:01'),
('0349568c14ae9d7f764ea87f4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:22:27'),
('034cd32928e58255743408b5dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:14:14'),
('0353b1d017362fb16e7b05898e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:41'),
('0364fd63251adb75a0b77f69fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:06'),
('0399c2e5883b7cfc5cbb168b84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:44:12'),
('0399fa8f030995d2b46bb76cfb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 01:55:47'),
('039f1c6b7e3a50c1626c9ca5dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:49:57'),
('03e40035d8532c047d8e20a2a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:56:19'),
('03e4eaafb87df6f52c3401c28b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 07:01:29'),
('03e77ba6b6fb1bc931b1e71682', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:07'),
('03ecb61cf2c4dc4cf4d6f18458', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 06:10:02'),
('03ef9d8546159cb969563eaa14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 02:43:43'),
('040703aa93db09f883d9605783', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 22:06:33'),
('041849aecb349c070abb660bfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 10:38:04'),
('041bb13eaf09be473954a018ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 22:27:54'),
('041d7ecac1942b0b939842d6e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:57'),
('042a52ff4c7ef2d362fb5fb135', 'false', '2019-07-01 03:25:01'),
('04330f7824cb645bd61178ea6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 15:51:49'),
('043bf11bd89cffefbfccb11464', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 07:37:00'),
('0449acc7968b2501be39a38959', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 08:01:29'),
('0478eb6365f420a4f236ac2e6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:22:48'),
('047df17432708c6d5fad8cea50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:04:02'),
('04a1b1d88db717410640a0fa6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 16:16:13'),
('04b5d683e0eaafff1cea9e6e26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 22:22:46'),
('04e73e572a98799a57ab87184e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:25:59'),
('04eda0edfb07dc1bcc1440fdbd', 'false', '2019-07-01 04:53:24'),
('04f5d609425c8b3d2ce554430c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:34'),
('04ff951d1b2ce82fe1a9b9e605', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:34'),
('05095d70eaae46afb177f2027b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:46:14'),
('0517f94ecd8f0d7ea91254d7a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 15:31:19'),
('052a10b008ea61b0ad94547b27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:09:53'),
('0549e4410f61ebc3f1f816e4ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:38:55'),
('0559bacb530c7d7c22b9ecf7aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 12:15:53'),
('05618303e8adf9798479fad67f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 05:14:23'),
('056addf59e157ea2bf5cf4cdcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 07:39:40'),
('058bd64677717b47a9694d1950', 'false', '2019-06-30 19:38:14'),
('05a1a3a1a6cf26a95e881d6f96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 05:40:49'),
('05a34bc22196490af0932f9f32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 19:56:48'),
('05a6a573593e6184b0ab583a94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 02:43:52'),
('05b1e771fd9dfb31992be0399b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:07:57'),
('05c30de2f2a1799e844dc13448', 'false', '2019-06-30 22:29:07'),
('05c56d2ddc061a38f17324bf5f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:07:49'),
('05d351dfb2b88f3bfdea1473c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 18:36:43'),
('05d93cca8ecf3547a24ef6b508', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:13:48'),
('05d9d40522b8b5fc25245c3698', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 14:48:13'),
('05e28499977762da283d0c895b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:27'),
('05f117ca554de70260b470512b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 09:01:10'),
('061b53a9c27622be9e1d14988c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 21:00:32'),
('061f3fe24b9274409f1c7393bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:59'),
('06325a0b8295dba247c3dec7a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 02:17:42'),
('0657e0ea202919c447fedf99e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 14:25:28'),
('06622ed58e20be9e3b8b43b436', 'false', '2019-07-01 04:03:54'),
('066b0eedb0307473f3dabf63f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:11'),
('0673fc636e7a34b4b454955e27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 10:22:47'),
('067753a12ae8bfd2b25682b190', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 08:36:08'),
('0682e81907e2e672c0abd2c323', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/transaction\"}', '2019-04-18 22:51:16'),
('06c0f68a9d46b2efc1b0094888', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:10:22'),
('06c364d716e79ac87b940441c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 23:16:07'),
('070077200fe4903ca800d3e568', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:34'),
('071cedf7576eef0fb836662bfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:57:53'),
('07213f9a88d9e24a5d9860d3fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 20:14:56'),
('0730a7510ea64172931ff590dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 04:19:14'),
('0732adaff9f191471365afc479', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 11:21:43'),
('0749b2fe4da0a36eeac22c7542', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 15:52:52'),
('076f41f8013c7576d85369488b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 05:32:47'),
('077186d89388a214eb3d05b552', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 00:07:39'),
('07b378a3dc0d2b89fd3154dafe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:28'),
('07b646506d86506a41cddf46b4', 'false', '2019-06-30 15:53:18'),
('07cd23c0d0b5ca2c6060ae6d9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 16:23:24'),
('07d5daab645f00713d20449f90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 14:35:05'),
('07d99ad02fc700488554305d55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 23:21:06'),
('080cdda2512057fbdee06ae5f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:16'),
('080e6d5e04f6335f487fd516af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 12:27:57'),
('0831e80b2658efc3696650b559', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:44'),
('0832cec23f7212745a393f3184', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:30'),
('0835463049dbfb0eda67e10d05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:35:05'),
('084f64dd1e41c0d338d98bfc28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 12:26:15'),
('0857838c5fa50807ca3013b80d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/transaction\"}', '2019-06-13 18:07:40'),
('085bfa6499e307327d64c7d79c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:03'),
('08624012f1fec530570fb6f21a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 07:17:12'),
('08676a3566789fc97de938cdb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:56'),
('0867e244007fe5328613891dbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 03:20:05'),
('088c2946720374e6385086bff2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 14:57:40'),
('08923563789480740a2b49c7cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:23'),
('0895f5651ef0e64803bddd5564', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 14:10:15'),
('089ae4003c33a102b8859029c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:35'),
('089c3dbc3be6f3b6b5de1805a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 03:10:28'),
('08cd7b57652f0085c26da85ac2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 11:49:10'),
('08de2be6f5b7dc4775c92b2721', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:21:31'),
('090ae869ce3cd5739118ab2b95', 'false', '2019-06-30 22:56:35'),
('091eb7f0b19a43a0969b6d8b8c', 'false', '2019-07-01 02:26:40'),
('092aabda9d5b7b205c5dddda88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:19'),
('09350583ce5991211dc0a04a51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:05'),
('0936edb58b50cb3042a9292f77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 10:12:16'),
('0939e7754ac02d638bc8d1d605', 'false', '2019-06-30 18:45:54'),
('094f7e11cb86e5062179372809', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:39:58'),
('095881f3ff1bc5a6729fd06457', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 08:47:28'),
('095f17557f08827032e7529561', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 11:19:57'),
('096200c382f37ce8bbeeb4ae6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 14:42:59'),
('09650bb175cae9bf719e11fc24', 'false', '2019-07-01 05:43:06'),
('0988c54e6530250279fb563230', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 01:57:16'),
('09ad6cc4e1917e22a35c6356ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 02:19:57'),
('09bfebb215326118406152a8d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 08:00:16'),
('09d2e3a67aacc195a4773ace97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:02'),
('09e51c3943739a441778365f8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 19:34:38'),
('09f45971833436188866d6bddb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 21:00:07'),
('0a0047e7914e3870b281ee2a52', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:41'),
('0a04fe5ef9c47a985e318bdb23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 03:21:49'),
('0a11dbb53fda7f93b5573ab5dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 03:14:27'),
('0a1d2d3e809e87acb26da7fbe2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-06-11 05:25:02'),
('0a22f2b8a97bf0a8765a5eb458', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"3\"}', '2019-07-11 06:40:36'),
('0a28ee1c8cb77359af46b5ddaa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 06:37:25'),
('0a43b9ea83f1ff68ca179bb33a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 18:40:12'),
('0a765aeb37b7bbc9b8359bbe54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 08:43:55'),
('0a9956a10effd18248f7be3bb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 11:55:15'),
('0aabcdb258e825aaf116c43403', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 12:34:26'),
('0ab6510be4c1e7abefa2c7bf6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:55:45'),
('0acfea9f74132a47240354c4f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 22:01:16'),
('0ad9ae72450d07c988d854afeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:05'),
('0adffafd0bfe8c46b15103dac3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 08:45:55'),
('0ae6f9e00a1530b39bb4459be1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:58'),
('0aed7d40f20f6aabdcf76fd5b6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-05-18 00:01:44'),
('0af177368e65906e7a28172550', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:52'),
('0b26641879c8ec08cdbbe11c79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 01:45:51'),
('0b3223149a4699ea988094b620', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-06-13 18:07:10'),
('0b32f25d72e9829bc46b0c7f5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 05:14:57'),
('0b3a42fd5be1acab7e751e0a21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 01:47:54'),
('0b433cc2dc824375172979037c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 20:01:08'),
('0b4b264dda2947b63910b7cf21', 'false', '2019-07-05 18:05:46'),
('0b7124d917acd5e883dbd5f476', 'false', '2019-07-01 01:10:58'),
('0b9eb1a7da69707759590cd888', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:58'),
('0ba072ecb64c8df4705ce0595a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 07:55:23'),
('0bc08a1a6196b770eceadb922b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 08:32:08'),
('0bebc8a00dc54e7ba799a29e2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 09:35:58'),
('0bfd7e75ad789e71f5534cc8ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 06:48:50'),
('0c026dcb5299dfb7775ded172a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 11:49:26'),
('0c3c097eb3826ea6aad77e95fb', 'false', '2019-07-01 05:05:49'),
('0c3d9b2f55c2407e4764948d5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:20:35'),
('0c609b47f909294f5b3ea60ce5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:45'),
('0c63557c866e4f950a342a2564', 'false', '2019-06-30 16:38:20'),
('0cbe74dfa9825360316b8e152b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 12:25:12'),
('0cc56458009d24bd07b5b6dce6', 'false', '2019-07-05 17:50:45'),
('0cc7ecc631ef18defff8a8cb2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 14:22:31'),
('0ccbbf6f908c84f4891021335e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 16:42:53'),
('0ccdb5ff24400e0a85fff97f6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 21:52:20'),
('0ccf0c9c8f15a31ba3c1891e2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:56:31'),
('0cd9c1276f741004fe79297bcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 16:58:35'),
('0cdce9363b0f9fa1612e4a2f3b', 'false', '2019-07-01 02:35:05'),
('0cf70a15b4533278c0b8ef41cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 07:33:08'),
('0d3ba4fb0b567ee88bc2db9149', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:18:06'),
('0d43060533f0ea162628b55a01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 00:11:01'),
('0d58ce60f9033009d2c8ee0c6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 09:44:14'),
('0d5981c17ad20f470985b5f290', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:48'),
('0d6f693009a668c38ab24fb6bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 12:18:27'),
('0d865496276dea6bbf32d10a20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 08:47:09'),
('0d883939f08a24200b3c8cbf3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 15:51:33'),
('0d913f688bc3df53c139aa1a9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 20:12:37'),
('0d91cd1c94811e2b72fead521f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 14:03:51'),
('0d929407ec0c8cd9cdb218787e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-05-18 00:01:36'),
('0d9b548bdc3a8f345c027cc13b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 15:56:58'),
('0da46ede836632a7ad21e71e7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:12'),
('0db80cdb51fb73ec3368f4f805', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:55'),
('0dbdae9be3d4242ad076aa344e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 04:23:26'),
('0dc744f292438aae1ca63eacd5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-23 20:08:08'),
('0dc82921e72bb2c9c4c7709fcc', 'false', '2019-06-30 15:50:49'),
('0ddaf93927780d8746eee49eb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:58:13'),
('0de1eebf4eef446cca74182197', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 23:19:31'),
('0df494fd893804fccd0d584d75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 21:19:50'),
('0e0492a17ea0d0b270af4c6449', 'false', '2019-07-01 01:30:59'),
('0e0f95b84c8e71da03588a87c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 11:47:11'),
('0e1aa2f9d63ed705868f563ccf', 'false', '2019-06-30 17:49:54'),
('0e35d498fd639a1c5f8b9d802d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 10:06:24'),
('0e3fc93f5d5b6ae95ae2e028b3', 'false', '2019-07-01 04:11:37'),
('0e443a673edc502560928e0d21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 13:57:14'),
('0e4903b6cbecf1bbacea215840', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 10:35:45'),
('0e7d96715381e574c1aa55980e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 09:45:24'),
('0e8259b15caabe7d2af9d67d44', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 07:19:25'),
('0e832a9e6ff93fbd7078fdb903', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 10:48:38'),
('0e8d725eb80dccdb45f3db289d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:26'),
('0ea202fad8e1523c48a1f5cfcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 00:22:38'),
('0eb6b6fd6853bff453e6089df9', 'false', '2019-07-05 15:12:51'),
('0eccf5dab8514d56f03c456a20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 09:26:03'),
('0ece828f502033881ee09a0a73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:30'),
('0ed77b006e43990949e16e9914', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 11:55:13'),
('0ef7382269277fc498dfb3238d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 10:39:29'),
('0f2ae823e74822b5b1b280d3a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:29:56'),
('0f66398d8d601260927e0415b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 14:20:02'),
('0f6ecca42e52762ee6219b656f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 11:36:49'),
('0f6fb482c1cfffc29053a9d06b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:03:00'),
('0f76d7d5f1bb480a126a89c8c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:53'),
('0f7da6a3ac1d6f8f7c293ce923', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 18:21:38'),
('0f82e8d1c60809774881f7f7c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 18:57:05'),
('0f8a3c7f5b44421860a7ae760e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 15:40:14'),
('0f95df66bfa66a4316000e3df1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:11:08'),
('0fa83b9715561b638de6f3e0b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 02:35:47'),
('0fad9920ba4fdeb8ffa3f98726', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 13:48:28'),
('0fbce51247d86d0d7968a3c514', 'false', '2019-06-30 17:40:52'),
('0fbf1d91e021b58badf8c2902e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:01'),
('0fe4eee6cb24a43a8ae4d548e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 07:37:27'),
('0fed2248a4dcecf1fb60d01b0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 07:55:17'),
('0ff5354e4b205c0d63d7cc3477', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:52'),
('100daf7492515472a6efdd5fb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:35'),
('102509e08da529abb5bb991bce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:49:10'),
('1037dddd791bcbfb39f1ad3475', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:42'),
('103b47f5d958d817585b6f605a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:22:06'),
('10447cdc8b13901d3b7feb86c4', 'false', '2019-06-30 19:56:52'),
('1045b9d54de91a5e3a42e88354', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:51:53'),
('10535da57eef67b65897c51333', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 04:18:13'),
('10765c6eff7d134868cb0056c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 22:52:12'),
('1083e74da8163a400b55dac143', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 02:57:11'),
('108d861d1279c64f2f31d01438', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:31'),
('10b16fe6ddbcee408cc11fb952', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:25:38'),
('10b36889606f2d28374dfa9e24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:01'),
('10c3a4d7e9037d135c40b44c10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:58:10'),
('10dde10367fd398bbdada59bc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 00:06:41'),
('10de34f658012c91d4fb398a3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 11:21:02'),
('10e12ea844a3af0b7dae7945ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:21'),
('10e2d38642d3185a9dd146ab80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 02:21:14'),
('1121d4a67605c056946410fb7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 12:15:44'),
('1139bcc65cf061ab109a039946', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:38'),
('114b2f36a013fb87bba75ac54a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:27:22'),
('1155728d8cf41933c6cc22ddf0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:12'),
('115fd4880266a9a58692ebe9c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:30:58'),
('11694873940aae60806898ca2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 22:42:19'),
('117ef3911f2521f7673a18f4a8', 'false', '2019-07-01 04:18:49'),
('11a47f721bf19bdaa3200f2cf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 09:03:52'),
('11b2b0d02b10e2a61f50760919', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 18:12:09'),
('1204d8830efd514c1408f9dff6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:20:22'),
('120fbe961b2f0f1177b9dadc79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 14:49:10'),
('12148a5387fcd8a4dff5333d4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:40:33'),
('125741d6be610227ade54bf68f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 11:00:00'),
('125d06d150d50a7f0fbdd8ca7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 13:55:41'),
('12648ca2b1f300c848fad4ee4a', 'false', '2019-06-30 21:27:47'),
('1292e3ff8883f2a7822aa29214', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:15'),
('12944bdaf59595f35ff782c8d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 14:08:27'),
('12bf2113d17a362added5eb299', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:29:27'),
('12c49ef35e38ee3baf383e1637', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 10:53:02'),
('12c4fb4313f9cedf1238d2c457', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-05-04 03:23:11'),
('12c66717fe9aff2601190d4f38', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-06-04 01:01:03'),
('12e3136b8fcaf948fe9ba6bed2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:35'),
('12e5210bfe926461b22d4342ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:10'),
('12e63e1d6110c6891571ed1817', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 21:41:41'),
('12f696a353bc819e3d21f793f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 09:25:49'),
('1322006bb86d76e1a98dc6bdb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 20:53:52'),
('1326c28b8775bf335287a85a10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 12:32:48'),
('1329fa0b8d5566950e12b81e1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 06:47:17'),
('132d55bfeccfddd6ca14b542f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 21:59:13'),
('134d19de541724c5c34168eadd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:17:48'),
('134edc92dbff03be426a77909a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 03:00:48'),
('135e1a02a444560366b4d28cc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 07:31:52'),
('136334b533fe222dd18bef64e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 03:15:57'),
('1378a886edff255e6c7b3d0a32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 17:05:15'),
('137b7fb20199df5a7dff12fed9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 01:45:39'),
('13a3937a75f4aecba802bfe961', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 02:24:13'),
('13a88d5531156c0b18eb830ef6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-07-02 12:47:48'),
('13babdb0219d5b8c450e86f474', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 04:44:00'),
('13d5d4c52d92ab549c435868e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 01:27:45'),
('13d6812322125d84cc8b4aa1a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 11:11:28'),
('13f41cb371e7af493ef8c734fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:52'),
('14039c6539a2fa235495dc6bb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 00:19:45'),
('14045a98d19f9145e93432224d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 19:27:46'),
('1407b6690b617bb5c8aa3e6e1c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/return\"}', '2019-06-13 18:07:39'),
('140b971da9af47ed1a280e41e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:59:14'),
('1410cd02fc533c71bfef5c0672', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 01:57:17'),
('14266b6ad8073727c530bd5697', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 09:22:32'),
('14411235af2a30567b9886cf2f', 'false', '2019-07-01 04:29:11'),
('14437f637dda8146b78ab91424', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:18:56'),
('14528c1f74943ddcdda8f87c21', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[],\"compare\":[]}', '2019-05-05 17:21:03'),
('145cec55b840781e3f911c3561', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 07:49:08'),
('1461581014ab39e4a109719c9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 18:43:21'),
('14719c62a5ad39b2555ebaeb4a', 'false', '2019-06-30 20:22:30'),
('14cebb5b3831156421f8687c12', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:24:14'),
('14f7000de7b625f9558a53f659', 'false', '2019-07-05 15:40:33'),
('150d7cb266efcabf980b6662cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 12:57:15'),
('1522d58f1a0df8fb0c7f190750', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:45:36'),
('152cce9f2b8108ea3e3d5efeec', 'false', '2019-06-30 18:49:23'),
('15333f626c19e95d76935064ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:35:42'),
('153cb17c9772539d8753a2fa34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 05:09:26'),
('1562c9da6f620f74b002ed4d9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:17:14'),
('1579a659047d99c80fcd68e7b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 00:02:57'),
('15968154a92163b12ee5d613db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 14:48:26'),
('159b4896ca97c96263f7e4ed73', 'false', '2019-06-30 20:12:37'),
('159bb9cd726bad4934032f5791', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:03:28'),
('159bff3022a8d890baedfea150', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 00:11:11'),
('15b52533b83671399e2fbe5d55', 'false', '2019-07-05 15:22:03'),
('15b62556525abe33c39725bee7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 19:42:10'),
('15baaeb1f19e123f2047c39ee6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 01:30:43'),
('15d13bda91ad258ea0ac030d93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 22:44:52'),
('15d439115dc348b8a65e1ad9f9', 'false', '2019-07-01 03:14:22'),
('15df2dd7e4629f49a4fb215080', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 20:53:38'),
('15e93472e07714cb57eaf82012', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 17:05:29'),
('15f1c7320b1cd861e621b26c54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 12:43:04'),
('15fdbc124d65f79a23acec24d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 23:48:35'),
('161e00f17c1e6321855a24f2ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 15:30:55'),
('1623915d810ff01097f6503723', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 11:03:06'),
('166843452bd918b23c1afc31d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:13:38'),
('16733769f8cca022af06b73f88', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 14:37:11'),
('1687ee4f0ac644a9b46aa4e797', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:04'),
('16a5fe8c5989fde73c4125da79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:14'),
('16d3ed2e30f90e85eb767c4b30', 'false', '2019-07-01 02:03:09'),
('17367d32bf37f1cb010d02bfdf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 00:34:08'),
('17454917b0cb467cc8038c057d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:52'),
('17469ffef8fa9410c2fe2533a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:59'),
('174e5872f339d91fa9013080f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:15:11'),
('17536953b510365ef9aaa3efb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 01:57:07'),
('176c958bde151ff84f90db7e1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 20:25:28'),
('17a6e85ddef7375a012befb084', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 06:11:39'),
('17be06526c14f348284a5b87f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 04:52:20'),
('17c80c3200c18e214fe959ace3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 18:33:42'),
('17f1f307e9cd474f4dc93a85f8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-05-11 14:38:52'),
('17fc381353db3a8e107665af97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 23:37:19'),
('182256fa416848dce44693ebaa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:24:54'),
('183b36a78e8e3223eb5e1553ad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/reward\"}', '2019-07-26 09:00:50'),
('187af04360b5062ebf5a72588a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-06-04 01:00:51'),
('188653bc8b073e10ef6d48a969', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:36'),
('188c3530c937e56ebf79db2834', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:38:30'),
('188e15e91faf0c6c42c9257381', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 17:05:33'),
('189cac636f56a9c911b1810bcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 05:48:44'),
('18aac5b91796909fa786eb3fce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:49:42'),
('18d3f8a586c109d86d8fefb676', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 23:41:01'),
('18d7df5675cc5f37fa4abf7884', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 07:05:44'),
('18d92dd11ded79ee67d4fd08d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 22:21:56'),
('18e7fccc9dfbd4a2d4a98a5987', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 03:53:56'),
('18f93b22dc36224fdaa0b7681d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 05:02:37'),
('1917a63bb25ba872a288c32374', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:17:23'),
('19208e05fc6178a180ab81f883', 'false', '2019-06-30 19:46:51'),
('1927ced50af6358cbb950974d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 20:14:16'),
('192d5fe0abefb206b829e4f102', 'false', '2019-07-05 20:26:06'),
('194971266202625823e16b4034', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-04-26 23:13:14'),
('196bde833ee19f610500dd868e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 17:57:15'),
('19aa12b8669b3f6d103c14c6fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:24:06'),
('19ae00d9df505f55dacf123167', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 12:58:36'),
('19af46c99e189dc366c156cda1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 15:38:13'),
('19b483e0ded9dfd1f0cb8de1f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 14:39:39'),
('19bbc11aae2968efc43603851a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:06'),
('19e1a04296cdf4f6b3cc775426', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 13:44:22'),
('19e32bbd638c0ad60b6eeca7d9', 'false', '2019-07-05 19:11:14'),
('19e7ed62b2aa283916c591ebbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:56:48'),
('19edd0b4d491c8051b45695656', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 06:04:00'),
('19ee3d7aa94097b9414396d442', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:05:59'),
('19ef70341945abf59692701d58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 04:50:10'),
('19fd0d577bc942ae76dcf36875', 'false', '2019-06-30 19:16:58'),
('1a0a894cc0dcbbe9450dbbac15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 17:15:10'),
('1a0ca5cf59f23c2f881e0c6bd7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 10:35:08'),
('1a0d428c325711dbfd1cae903c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 14:00:37'),
('1a30d72974fa55f7441848a826', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 22:32:14'),
('1a31623f89528c847c7a5e8772', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 10:31:00'),
('1a4ab5ec382ca48be1674dd882', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:20:15'),
('1a63684c6debff9e371f53d111', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 01:07:54'),
('1a6914244aa8bedc673c48da96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 10:27:45'),
('1a86026c335db9a3bc3e61de4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 09:24:38'),
('1a93869e815fe724ec978df313', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 09:12:42'),
('1a95f55a9855c75469226e7f5d', 'false', '2019-07-01 03:08:57'),
('1aa481987e4ba97cd3e8ac9d00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:15:27'),
('1aa9069ebaf625c1e59750b095', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 10:44:24'),
('1aaa234e73a2e782622c362e08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 20:00:41'),
('1abcfbb0718ce94dca27f31601', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:13'),
('1ac35a82bcd49d3d046904b87b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 19:56:10'),
('1acc4670b3f18120cf24e7b26e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 10:22:34'),
('1aef00390a3b21ff48aa3e44c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 03:06:44'),
('1afe28423ca38b440a2df79f77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 02:58:50'),
('1b0579eb304e2180eaf9f2eb49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 09:41:25'),
('1b12aaae0878775f7ac6bb3fac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 01:23:34'),
('1b1faa592e0fd3aab92a50f658', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:51:07'),
('1b2e61c9fc4003c3174ad8202b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:24'),
('1b7aad62f3c4ca82b3fe4801ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 02:09:32'),
('1b876fe48021b3ec76e4999efc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 07:11:46'),
('1baa62e9e2bb67b8bb6f362555', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:48'),
('1bf33968e73e499e7f2e8008fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 02:47:41'),
('1c027a69bd1268863bf8b8e42a', 'false', '2019-06-30 21:30:59'),
('1c02bff5bee2cc5cf9f3d3f845', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 18:20:14'),
('1c04a915b4fc55337d2822a682', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:54:19'),
('1c0d8c6b0a7beb6cdd3b39f1a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 09:14:47'),
('1c2a4b5f9d6ae452b01abee173', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:08'),
('1c334828b39b997bd755601ed0', 'false', '2019-06-30 21:51:59'),
('1c60e8483e56dfae0a685b5337', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:15:07'),
('1c7649d92fefb882270b462386', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-04-27 07:48:12'),
('1c77420b6bf715b464a1d8d1a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 07:09:42'),
('1c81ed639381965d470c67790c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:31'),
('1cc7a7bd40c7ca6140ef038b95', 'false', '2019-06-30 21:56:18'),
('1cccfbbcdaea4f4ae3f12ae207', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 00:11:14'),
('1ce6142d498fb9174d6a973374', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 08:30:16'),
('1ce92dff4ce43e405369ac93e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 11:19:58'),
('1cf1b01ef16f770f44b3f898c7', 'false', '2019-06-30 20:10:09'),
('1cf86401ce76b55e7aec1f2b9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 02:34:21'),
('1cf88b9a97eff5c773acf0ceda', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:12:58'),
('1cf9419a01877e8cd31f30f50c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 00:46:25'),
('1d119630684604dfc8524b69f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 06:46:23'),
('1d1a63696fd956fa712344146b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 19:20:48'),
('1d222c53fad13bb3156732376b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 10:20:06'),
('1d316daab733463e92280368c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 21:02:26'),
('1d3af68c50c8af7f7659a8c9b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:01'),
('1d5b6c787a35ae368b15b39948', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 02:23:48'),
('1d61f758c0073b2cfc03498f23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 04:18:09'),
('1d67b954a60a43d37ef10a3685', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 06:05:45'),
('1d6c5aa43e3be7cea6473374f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:17:38'),
('1d94a7294edf8c460b3d7081c4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-05-04 03:23:33'),
('1dacb1986e16c015df18a31d16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 21:01:51'),
('1db34dff8405f0640890876682', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 19:19:04'),
('1db89cdd392e599ddf85ee01f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:24'),
('1dbca16b3088975f506a3cb159', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 05:10:40'),
('1de7eaafd5a142cf03162327fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:16:47'),
('1debcf7392fb90d2e2bdbb14f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 04:57:00'),
('1ded17d6152604e1800b4dcf6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:59:50'),
('1e0ba351341dd882e23c19b458', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:12'),
('1e0e5b6da896aa3fb90e268f42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 04:40:20'),
('1e115997e9fda0fd21038698ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 12:31:16'),
('1e3329b2ae7973cc24e8ba498a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:20:56'),
('1ea5e8199d1a416317eab2871e', 'false', '2019-07-05 20:37:38'),
('1ed40a0582e8ff90a3049f9c92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 11:04:38'),
('1ef14ea6ff35f7a0a58ac6b979', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 18:46:42'),
('1efe43f08c655fd46d44beffd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 22:02:34'),
('1f14b0d7c19426ab65dd0ae5a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 05:05:55'),
('1f269f6aabdc32639d7d3ceb19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 21:34:53'),
('1f3d307bbb6709d3e52f3bebd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 07:18:31'),
('1f49a06b755f63d19043cb6651', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:30'),
('1f4a2a7b1e9f7165ef9d395161', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 14:02:24'),
('1f4a3adc2d01b405308724bf74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 17:53:53'),
('1f763c6d70e68461e72f7f44bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 14:09:53'),
('1f7d07a72e0a685b1201dcc9a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 08:47:53'),
('1f810009c92f600ce800752caf', 'false', '2019-07-05 18:53:50'),
('1fb1970b79468af5a6d6f051e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 09:58:05'),
('1fbe65644a44b34923301ddff0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:18'),
('1fbeebc4b9566d547425c6ec2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 20:06:27'),
('1fc71814d89fbfcd15aac5c97f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 18:26:24'),
('1fdcd1d69f800a0494a26b2adc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 10:58:52'),
('1fe4903eecf2ebab472afc25f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 23:40:17'),
('1feb7e20148c6207ba254acfa6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 09:40:28'),
('1ffc0928a908fdc9ce1cb390fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 03:57:19'),
('2000db779489129982bfce6a70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 14:30:28'),
('200e2b7b9052d8b24a71f17e4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 15:47:22'),
('201ca78010e247559b438d2299', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 15:28:58'),
('2021dbb6ce1ae3f2160198aa47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 14:31:08'),
('20223290347b2fd700d32d6027', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 23:27:35'),
('2033f833c4a4f852cec7d5753c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:57:30'),
('2076eb7078199c6f4577e1ad7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:29:32'),
('208400afccd154167204453556', 'false', '2019-06-30 20:25:29'),
('20966cdbb6fe0a89a991fd4f8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 14:37:03'),
('209bc63fe539d4d839c11cb975', 'false', '2019-06-30 22:29:59'),
('20b6a969c7575fa3987d45f8ff', 'false', '2019-06-30 22:15:22'),
('20bdef0f3ca7176c9858dad062', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 08:23:31'),
('20c81102d13f5aa0b3190875a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 15:28:40'),
('20ce2d01e18348442c86fe48da', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:43:37'),
('20e01740c1921ae3a2cece864d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 06:55:54'),
('2104c1e848e5e9637fb9b546f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:41'),
('2110a453f4dd3d09b99e978e9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:38'),
('211319002e31847d901fe975d2', 'false', '2019-07-05 15:21:28'),
('2113a99edb24f1df70b7864af5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:32'),
('212ce6d2fdfd07ac7fa2d2f614', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:10:59'),
('216f1b51eb6d5458c5896a9bbf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:56'),
('218c3f3cb0c6b09847869c7e41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 14:12:42'),
('218ea9a682f1b5bb23eabea57b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/download\"}', '2019-07-26 10:44:31'),
('21942299e115665448c1f2e5ac', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-07-02 10:53:40'),
('219a656b5d36e47f9c9862adf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:44'),
('21a5e7ee6fe16ddbfcf0631fba', 'false', '2019-07-01 02:19:50'),
('21b379d6ff4ea91b749a65377f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 21:59:57'),
('21cf90501f36d40b1eb60f4356', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 03:31:20'),
('21dc51352676e2b18df569f405', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:24:32');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('21f5800b46d232829a7cc2377b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:31:56'),
('21fcfef89712dc3bd91c1704d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 02:54:04'),
('22085cd880c808ce41af8297d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 14:10:09'),
('220f74ee296b6a2e89f254e19b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-06-07 10:34:43'),
('2224c71484a1e98903025d9349', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:17:16'),
('2226ee3e9f461a701c7e9ddcbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:41'),
('222848193e3a7d7c0e2ea2932b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:23'),
('223ce0332e56757102353c2180', 'false', '2019-07-05 21:09:11'),
('224b0f626a7d6689d08c1b2d7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 12:25:33'),
('224e2797433621c0dd9ab881c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:04:16'),
('225470e06a2282ada7d921aa8a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:45'),
('22710845c05ea0a0a86477ee88', 'false', '2019-06-30 16:30:07'),
('22a55fe20d9b8c9ddeafdadd5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:43:34'),
('22b5e3cdf716c12357037cde9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 21:41:56'),
('22c17912adeb16222b475400b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:49:20'),
('22c4f2c5b2de5d72076edb67d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:51:41'),
('22d9caf0255aeaa6f84a694341', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 03:40:36'),
('22efd58065138ee2221d3cfde8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 13:47:37'),
('2306dbe5020917935fdc3bfb8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 06:47:56'),
('23159f3a558ad1759c919d6eb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 13:29:38'),
('235491180e78521f22d210886b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 19:30:05'),
('235a786a9e1f8eb5f862ecc08c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:57:46'),
('235b675067cd9bf888f726586d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:04'),
('236221c838a6aebc7c3c8b6b56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 21:07:41'),
('2364a30da909a8dfe307c7ebb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 02:18:12'),
('236a6250a4a3fd250c1d1b47c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 06:40:42'),
('2373b96d80be6482a00d56bb00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 12:13:21'),
('2386076b38fb899b3161d6afc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 21:49:34'),
('23b13fb854ded5ea4c9bac16de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 22:02:13'),
('23b96af690d0e19f80a2eb6b23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 04:03:52'),
('23be2009757428ffcfd58c7bdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 13:14:42'),
('23c154a219a19a40fcaa80765d', 'false', '2019-06-30 18:51:20'),
('23c3597ef5251712ec9cce89f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 19:47:54'),
('23c3eadaa62997491f619a3f63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:34'),
('23c9ca8160d9a6480ae5896599', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 20:18:51'),
('23cc876d8518eac002e0d6b06f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 04:22:46'),
('23d41d76ecf429ad16ebd3af4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:44:02'),
('23d569380f2b246abe6558380a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 08:59:31'),
('23ffd483d76579b3708a8e1d23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 11:28:00'),
('2414773026618daeda1937255c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:58:53'),
('24310d6e61fdfed304d0746793', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 11:38:38'),
('244d53c084cc86f1aedc1c438f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 17:45:23'),
('244f626f95d207778e0937c348', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-05-08 17:04:53'),
('2457632bfce615ac197841afae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 04:55:40'),
('245ed96090690041c15a2cc2e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:01'),
('246605e30e1c74714b76fd72cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:25'),
('247afa34da44179f9e2ade7867', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 10:57:31'),
('24b563270022f1d356cb6a0783', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-19 17:25:41'),
('24c2f53865e509509b4ca3157c', 'false', '2019-06-30 19:07:32'),
('24c4339f223bca50ea4f9326fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:29'),
('24eb1942a53f11aa92d9b6a5f5', 'false', '2019-06-30 21:50:27'),
('24ec9309b0fc231a7b671d00a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 22:26:53'),
('24f0ad9276aae73876c5e724ea', 'false', '2019-07-01 00:48:49'),
('24f9bd7129ba5b443894ff57e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 20:01:50'),
('2525bcb6c15817565de38d0e8a', 'false', '2019-07-05 15:10:53'),
('2530b1ba119aea4b5f840cc512', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 19:46:36'),
('253170821a229de90955ba23b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:36:56'),
('25338530889ec1dbd1c5562428', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 07:46:09'),
('254ef98fa7a7b649a06a57b80b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 02:55:19'),
('2555c7ab0af3b595a4fd8171c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-19 16:29:19'),
('256b898fa94c6e1547173f11b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 04:18:19'),
('256c12d359637c5053d9a8ee56', 'false', '2019-07-05 17:49:32'),
('2571323c4a91c13232617bb931', 'false', '2019-06-30 19:25:32'),
('257aadf300d1abfa56a07e7f4f', 'false', '2019-07-01 01:16:12'),
('25be789c25095a55c917739758', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:59'),
('25c3d5cad5b14ee5aafc1687f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 17:33:25'),
('25e317141a12a10de51e8452e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 20:21:41'),
('25e36eb5c8fc6f1822795ca00e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 07:28:27'),
('25e8f51ff89b9ba8b4700ad1f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 03:27:57'),
('25faa8e6b8d64bca2a8a69e115', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 08:47:41'),
('26016d4c6a9eb95be91b286eb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 00:51:54'),
('2611ee4ecc49e7502fadc95af4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 17:05:37'),
('262111deedacdb0440ab280e92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:50:21'),
('262ecfc279fba248fe40b0b74c', 'false', '2019-06-30 17:28:15'),
('265558dc79f3dfee360499aec6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:07:42'),
('2657abfa72a4ed9900e0fdf273', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 11:37:49'),
('265f5ebebb4e7ffc52a355d758', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:45'),
('267a53a7f0125b11ca89cbf39a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:19'),
('2683286f459c3ac608f817c7c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 21:47:44'),
('2688a215a290d9f5c27e8e1eba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:53:25'),
('26950e1f5dfdf1c0323096a572', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:25:44'),
('2698d54ca530bbfe1e4f4d3b98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 04:41:28'),
('26a02ab4e472d958889590cc0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 23:45:41'),
('26a5d3af0d9da80c9664b4a00c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:50:33'),
('26e10e9ce785d726386b4476c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 00:40:01'),
('26f0be53329ca639acff4ba2f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:50'),
('26f29db27a1cbc4ab63a364c02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 16:03:03'),
('26f8cdfc2fc5546b39d5121b73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:57'),
('27009408f2512f36b3d923c0db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:07'),
('271d03ea8db93c9ed3f4e1e4f6', 'false', '2019-07-01 01:07:13'),
('272487a6b654ec44d84bde28ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 07:01:51'),
('272600020345d10c9d3041ea3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:30'),
('273cda25f3b431f04e01e14106', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 12:53:39'),
('273e45cf3d46aab238ef757bdb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 13:02:10'),
('276e198e71570fc0ac57eb40e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:03'),
('2771ad3d113b3b06154da57237', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 01:11:40'),
('278c6a9ff8a47d13b3ddbb1956', 'false', '2019-06-30 17:21:42'),
('27bd7838dd57764563d48c502f', 'false', '2019-06-30 20:44:27'),
('27e61e62b67538839e2c30a364', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:06:05'),
('27ef296aa4fb1bd19ac644db31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:01:39'),
('27efe60c34d026c921eaaf846c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:32'),
('280480bcd87c5408c3bfebc11a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 16:44:30'),
('280e957fb4c1a63f445744210f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 22:40:36'),
('2815b4c3980569a8dc1324818b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 06:05:07'),
('28204f3c4698063f3e26680a11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 02:20:02'),
('285b157c59c38cf3c29367fbfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 12:43:00'),
('2863dac7082f7ddb5dbfc1ad60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:50:49'),
('2893820e9cb6259a4c72f6b094', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:46:59'),
('28a6077f2320d7e4c9d965ff54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 06:53:36'),
('28b4822a21af088c1c2ee065a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 06:47:13'),
('28b538f42f3fd70ab16e87de23', 'false', '2019-06-30 22:58:45'),
('28dd1627f1de5c3b13c71ab5cc', 'false', '2019-07-01 01:32:51'),
('2912af647d50c7d505b1f9fa3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:45:56'),
('2941faa523649e0802f175268f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 02:43:46'),
('2950cf0f4948938285b4d06817', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:23'),
('29540d52a5a0f2748c5aec8723', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:24'),
('2961c486eb1a48e4e2c09e3de6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-07-05 05:54:00'),
('296deb0e1f5cef304b1b89ebcf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 23:42:19'),
('2970a984be5c859252d90867fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:41:38'),
('297c7c7729596737f0e1d78bfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 11:26:49'),
('297d91081a2d128622dcaa8bad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:45:21'),
('29b896b10e137d873a5cfb3d13', 'false', '2019-07-01 05:25:24'),
('29c84533a90678462adb01b647', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:23'),
('29cfaeac83ba7a7a9e71ce5c19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 19:56:00'),
('29e7b0466db13ddebecb2d2f79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:20:41'),
('29f2ffbfbcd886da4a8290bac9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 15:33:04'),
('2a1b3a1649916f75593608ad92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 18:57:09'),
('2a1d6950ea719e07e2149ca4d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 20:47:02'),
('2a309d9d30e5eb4ac192cb3db4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 19:40:03'),
('2a3c99b9fb011dbd3ec3208679', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:41'),
('2a3e12d08b3fb305a51e7d56db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 12:20:56'),
('2a3ff291c6c73cae1659ec9c07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 10:55:11'),
('2a401bb5397008b9766bc49f59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 10:47:57'),
('2a4041f0782cc3a9e2d3c740ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:03'),
('2a4096e436c364b92d982f10f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 00:49:19'),
('2a5fb19cfd6c91518cc3bbd3ad', 'false', '2019-06-30 19:52:04'),
('2a8f8ced9a6f44c8c89b575509', 'false', '2019-07-05 19:35:20'),
('2aaf6479ee4f87b2d404e9957a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 23:18:44'),
('2ac6fae8a98d34c6a93433149f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 14:42:23'),
('2ad9cb9858f30e41656e9ecdca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 06:00:42'),
('2adc5b54c600d75a3788803326', 'false', '2019-07-05 18:58:11'),
('2ae724d48665689f5bcdf21dcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:23:25'),
('2aeed9c07a7697b63c642ecbaa', 'false', '2019-06-30 18:24:58'),
('2af5cb34408ed569157c87ae4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 00:09:52'),
('2af8b7341fcd94baa57158d29a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:06'),
('2b02353102a1bda82bf886d4c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:30'),
('2b2cc0d0bed7eb22b458d4ba83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:12'),
('2b3085227f409fd2db097047bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 11:36:46'),
('2b464cc58a3ca83dc166214879', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 11:00:02'),
('2b46a99c703801ff3e0b4b14af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 09:05:20'),
('2b481f25a42e62719dce0aa617', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 10:34:55'),
('2b5a98819f7019f640bc46a6e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:08'),
('2b872b57467b40b9e297a11a6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 20:51:47'),
('2b8a8efdf307d5e616655a2f0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 11:56:00'),
('2b9d435285653050e5e795a22e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-06-27 11:07:49'),
('2bb28b8d7f0531b0834170e816', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 14:55:19'),
('2be8eaaf21e229f8b90b4bb53d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:59'),
('2c24dd48aa0b80044b5e8d8a8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:27:13'),
('2c28fb845de56cfe53f7e19581', 'false', '2019-06-30 20:38:36'),
('2c41118bf996d4294018755ca2', 'false', '2019-07-01 04:56:51'),
('2c4698d09fc3947eff47a4312b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:25'),
('2c4c39abaaad1ee048eb30b37d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:59:14'),
('2c4d5d176a8d4443b5f75c57cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:46'),
('2c54757003a16aa93ea87420f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 07:37:25'),
('2c817e71f5dc874b1d325c7c3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 20:10:56'),
('2c8996b45a492e54e91e6613b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:39:33'),
('2caa86bcb8f50dfe96511f1bcf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:55:36'),
('2cba40aef16d842212a5fa3acd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:29'),
('2ce16e17a80f489f976753c90e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:26:27'),
('2ce3c9610cc88a53dce69a141e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 09:01:58'),
('2ce68dd612e3bb8fbd621bd987', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:55:27'),
('2cf5b458abd8a088d0fe01efeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 14:54:18'),
('2cf6c4d8ea894467d1b7bb4a5c', 'false', '2019-06-30 15:43:43'),
('2d109f12e079e7a39bb29f997f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:26:43'),
('2d495c7ba0bbeb77855af48691', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 15:45:11'),
('2d4df812d94ac581e4ecee981f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 08:03:40'),
('2d4ee513f05df60400e1af1e2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 03:12:23'),
('2d53a9a7e338d6e3b8ed4725d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 14:11:06'),
('2d7ea27342a7b4b5703d7a0bf8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 02:35:50'),
('2d9d9e3966aa7c652294f4dea1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:07'),
('2da4d7c830f4c178b5b651fc14', 'false', '2019-07-05 20:15:37'),
('2dcd9b19e209152f208820e464', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:58'),
('2de8361cbd820414f5cc33da8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:51:06'),
('2df19ba9d81f104b96f38aa8e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:50:22'),
('2dfc40059e74db1567d4220c44', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:07:44'),
('2e0957c35c0d40125ce8471874', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:53:35'),
('2e35c0edb36a647627cfec5def', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:58'),
('2e3b851b89f48db0a786496e91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:39:50'),
('2e3ba095ba5b94b277fc711fca', 'false', '2019-07-05 19:19:39'),
('2e3d2b4871e8fca44d2bdbd78d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 02:54:05'),
('2e54ddc18c8fa816c9bb91d67e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 05:56:54'),
('2eb3faf39fd594513afb1d4c4f', 'false', '2019-07-01 03:54:16'),
('2eb413b967e0b6cfc4bbfdd2bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 16:21:38'),
('2ecdc026064a504c2514f846fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 14:57:38'),
('2ee089b8a13be8ceefb3931d7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 22:02:21'),
('2f00c32c5e9e851cd4ba147796', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 21:09:18'),
('2f0cf6df036bcf46cb93da6810', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:28'),
('2f173c44bd3fd137f135e31071', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 09:21:33'),
('2f19ec700c7bc01085d6d9d5ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:51:09'),
('2f2d3eb0959a4f2d1646bd5b08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:22'),
('2f2e5809d0d84c6fd0c1adbd33', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-06-30 13:55:43'),
('2f389c02d21bd012fa07702f43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 19:45:09'),
('2f4857d629bfa780e8101b7b44', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 05:11:15'),
('2f65528aa9940643ab820a17dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 04:45:44'),
('2f74f3c415bf8dece69cf2a31a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 10:42:58'),
('2f7a17fc11a9ae942cd0e48e7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 21:38:10'),
('2f82649894cb43ba88d62b5a41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 05:12:53'),
('2f8270dcf3e5e13cdcc64c01c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 13:49:06'),
('2fc567c406bb5c0aac2165b79b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 23:42:23'),
('2fcee031e9a0b59626604e81a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 07:44:43'),
('3019e3205973bd6dfb26bd1a06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 10:58:54'),
('301d257909ee3a0fc52dea287b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:12:27'),
('303ad9c9a846ea2aae0ef5e4f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:40'),
('3054d52324ea3244b0fdf45f67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 15:05:25'),
('306afe10c43f5ecdcf0fd970d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 13:52:38'),
('306cf9419ccb15e5b16e57ff41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 05:01:14'),
('3098a41e3f66eea4f98cbba67f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 05:24:40'),
('30a450995da56d3f5618ee1825', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[],\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/password\",\"compare\":[]}', '2019-06-16 15:00:35'),
('30a8c5a2a26e15754374af888d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:47'),
('30aaf8f761fa1612bf28559020', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 19:16:01'),
('30bf42f40a9aab17f75ed5a660', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 01:49:21'),
('30cb2498270130a8de48559833', 'false', '2019-07-01 03:46:22'),
('30f72b7df08a5738614606cc46', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:52'),
('3100a3b4f1c7d3b69a76ac6994', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 10:59:13'),
('31038f3086c7045576a720e279', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:15:49'),
('3109cdd349fdea047492b115a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:46'),
('3110e8195d23e07bf93119752f', 'false', '2019-06-30 19:22:51'),
('312be7c5c5ba33178d3fe265ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 06:53:35'),
('312ce307bf9eb3e77e017d95e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 16:27:56'),
('312ed2626b7437d2be66d60c7d', 'false', '2019-07-01 00:28:08'),
('31320aecddaf711b252c1c4d9f', 'false', '2019-07-05 18:39:22'),
('313a098de185afb8927a4620a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 04:59:33'),
('313ec7a475ae71b6d7e94c75c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 13:41:56'),
('3142798719bb99f33826be7db9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 04:27:44'),
('315fe3bb393b0e6c74334058f5', 'false', '2019-07-01 01:15:00'),
('317329c10482b06b24cff9eac8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-07-11 07:51:45'),
('317d004808c7c6fe593015d3ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:01:23'),
('31a4fddb2a391b5682d2f63989', 'false', '2019-07-01 00:09:51'),
('31cc84df8dc4ed3c93989f5edc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:04'),
('31ce7f10df3298786dc1d55998', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 17:43:15'),
('31e0660a119e3e91eed0c07acc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 23:05:53'),
('31e67c67184611a507d4fa77f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:54'),
('31e95693a0c0f821cf5d512e4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:50'),
('31fff645a6a6a0c79839c77f3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:02'),
('3218193d58f2fab7b8c3d54d4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 20:18:39'),
('321aa9633643c17ef092f6ede1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 00:34:54'),
('324de1f2ba40fa87689334b9be', 'false', '2019-07-05 20:35:25'),
('325996f8d3044297e757e3debc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 04:13:00'),
('325f1a3a2f449db6a801b38e78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 03:21:42'),
('326265984efd34e9096c0f8a73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 06:52:32'),
('327278b6ca38645784af410fa8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 15:01:35'),
('3277b79a09f08d9b527277dbd7', 'false', '2019-06-30 20:08:27'),
('327f2438cde218050fdf210cf8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:55:02'),
('32823d7fbcc4623fefddff1887', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 08:53:21'),
('328940ad127f62d2dffd213c20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 17:51:02'),
('32c77aca8dc0d53d7c91554de0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 19:08:59'),
('32dd0bcdff9f84d24081bddddc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:40'),
('32de32954257fce5d9a04bf064', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 16:25:45'),
('32f901bbc5af82895b96ba52a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 03:08:27'),
('33043b67427076de69e849b09b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 19:19:59'),
('3318d6177aba0fff6574d18300', 'false', '2019-06-30 17:08:37'),
('3319e9a74c9a602b0c17782e8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:53:58'),
('33485b9f6f5f46e2bda2cebbba', 'false', '2019-07-01 04:52:03'),
('335ad85689ff8371a9a0345692', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 06:26:17'),
('336111a9fa46292707cedaf9f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 21:15:20'),
('337a02319e7c5c761c258465a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 02:52:49'),
('33a5f03a9ebcd1613800be1375', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 21:23:41'),
('33ae01f71c09652f14e0a59962', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 13:00:32'),
('33cb39933d8c4360253866c302', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 10:28:29'),
('33e4c80ff0b98229bfe42d23d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:57'),
('33e8994550f52c78979da6728b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 10:41:51'),
('33ec634ae6e00fd70837d8b513', 'false', '2019-06-30 21:08:51'),
('33f5b35759f2188d26d21957b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:51:07'),
('3407337529564b443dd8b09a0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 07:33:54'),
('340def2acfaf5bc711a7e6492a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 02:21:08'),
('341b2985473937aa02dd3d0344', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 21:38:10'),
('34256551977d5f4ac65436fdd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:59'),
('3428d4af40015f89153b0f627f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 23:25:46'),
('342ec0184937fc7a63c50212b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 16:55:56'),
('343dc7a5241517ee397fa38b54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:33:46'),
('343f2552281356bf0af753f690', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 01:52:19'),
('34434b72ec1365055fd32b8555', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 09:21:04'),
('344567dab884e7848aa298f3b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 07:07:57'),
('3449836d0d7e5964ce32caf8ed', 'false', '2019-06-30 23:09:26'),
('345927e89572dd930da25a222c', 'false', '2019-06-30 22:09:53'),
('348484b77d57b6abc155a1a7a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 01:50:40'),
('348c62c0cafaa0a63d80a10c0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 09:13:25'),
('349d4f01f83d851afb397fabd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 02:40:06'),
('34af8cc4efcc9ee4e0a19e78b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:36:18'),
('34d5834d4ee7f8ec62abcecd02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 11:55:14'),
('34d7f0067671f6ac23ed261caf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 14:15:08'),
('34dd53fad642b41ee78e524a74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:08:49'),
('3504947cff78aa98e63fec2e1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:13'),
('350927e7b25cc50d6a4f1bb642', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 04:12:53'),
('3523cd123b3c460f84b8e0a7dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 21:32:25'),
('3540fa1486ff4ce5fb55f566b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 11:27:39'),
('356afccd0ceb2ac4cc3a240af1', 'false', '2019-06-30 20:17:21'),
('357f92d3f0e06884645d7fba75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-19 04:16:38'),
('3584716969ba51fbcc6d6f951b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:21'),
('35a4e0674354929d686e7cf304', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:54'),
('35a6568766a23e601be90da31d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 07:40:11'),
('35b5e15814b33a07554b703f32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:25:35'),
('35c5619eb458ce36677b6f07eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 13:47:28'),
('35c6583246cceefcbcd2e985a0', 'false', '2019-07-01 00:19:16'),
('35ce3139d039c91055e538e7e0', 'false', '2019-07-01 00:42:10'),
('35d3f169fb0f1b48ef6e867d24', 'false', '2019-07-05 15:13:54'),
('35f14f1a249dc8e405d3ef6b03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 14:24:20'),
('35f31e306d3499f03f54bf6416', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-08-02 13:30:00'),
('360b222afeba5b5378f9bd7ced', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 21:16:41'),
('3620cb7d9e1c0c891ed17aa807', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 18:07:58'),
('36307a6b49bde7a0f018698974', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 03:04:13'),
('363129e208ac6d2ae7b18389c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 23:08:43'),
('36378a33b467dc9c7407b5f81e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-08-04 05:44:37'),
('3643a120bede07ff27a31457df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:22'),
('3652a7080bb32a978b351230bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:30:51'),
('3661e28b59acd0ae6957adbf16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:26:35'),
('368c998763f2d9d064ecde06e2', 'false', '2019-07-01 01:49:49'),
('369047261213f0946245e3a75d', 'false', '2019-07-05 16:20:44'),
('36a9b16c02efec2651c64045e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 15:25:09'),
('36bc7d431e8a819f77dea0984c', 'false', '2019-06-30 21:17:51'),
('36c3a157fb0ccf416a184ec16a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:14'),
('36cc1d06e2c483774d0bcc5409', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:23'),
('36e100f682f15df5403387e4fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 02:02:50'),
('36e95c1636278ed85d03aafd14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 01:35:57'),
('36e994a2597f854502e63cc5a7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/transaction\"}', '2019-07-25 22:52:37'),
('36f88c4366a13c8b094768a322', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 15:45:05'),
('3705fc6bedece2b3ff211055e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:12'),
('37180ac87510a0090c7d17e5ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 00:06:26'),
('3729f20643387d80afa689f85c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 14:25:04'),
('375d17a754a7701f1ed444f543', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:53:05'),
('376d4d8e7495db10e11e524dbe', 'false', '2019-06-30 23:21:49'),
('3788fd33f250f4a3d4579566f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 04:19:08'),
('37a8246a88689cae424cad52a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 00:22:54'),
('37b9d032957017affc238c9e60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 19:10:14'),
('37c6b72bbdadcf24d9b2590e61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:16'),
('37d81c1a1128797df6783372d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-07-04 05:05:24'),
('37ddaad73b3323d3200193389c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 06:45:54'),
('37e68c5e4f953f6ff29f307449', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:48:50'),
('37e68c78e0d81d78de0a8a1ed9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:33:23'),
('37fb87f834eb45889559df611d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 22:27:22'),
('37ff8b784d59954a6f4f63d865', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 02:03:51'),
('381053f5e97c5bfb2ee035bb48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 19:52:09'),
('38499f5a26f09e307b2073a15e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 07:40:29'),
('38616abed51913029d61305001', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 13:37:10'),
('387c33a3c1d9e211c51958d5ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 10:20:53'),
('3882774385dd90b06c91a3253d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:04:46'),
('388e6eb924167ff3c8a4902041', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:04'),
('3893ed422584d28d20086913cc', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-06-13 18:07:15'),
('38a955c3fc56e7dcf3232ead1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:24'),
('38c1d2d0769a619fa078758649', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:24:53'),
('38c90ff796d03f06611327b8c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:18'),
('38d3fdfe7c9ba8d78a04cf1c6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:49'),
('38d58d0664cad4b597f0920a0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:50'),
('38e3180f6bd42697436cb1e216', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 00:12:47'),
('38ee50872bfb487717214067e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 23:45:59'),
('38f824c83807b638884b2dd758', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-19 11:51:46'),
('390677b32108563a191671f660', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:36'),
('390e6cde61394662b4876f646d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:00'),
('39238251e8cd5cf0ccdab0d2d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 23:28:11'),
('3961a9fc6a57da1b3ab772be25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 13:13:09'),
('39702a564a378a18a7253dac9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 05:08:59'),
('39775050873c499f3b0a131bc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:11'),
('3991f253e613c976dca112d303', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 20:26:58'),
('39a030801ba48af2e5e75fb0c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 04:39:35'),
('39a0bf00d13a23e09c05d4401c', 'false', '2019-06-30 16:54:50'),
('39a40b4a2438b4bd52f6a9b3e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 15:18:04'),
('39bc2fe167e7837220832a04a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 15:07:42'),
('3a0723ef6703ace74eda1e5f49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 05:04:24'),
('3a31bc9ec31ceb5f1e3f6441aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:44'),
('3a38cb8023a3844d7027f4b061', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:59'),
('3a41058fbf42d001d26f58c59b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:34'),
('3a5fc441c00b830d62475fe9ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:50'),
('3a6dbacb7bb7e5001e17664c67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 20:14:15'),
('3a6e0dd4e28588eb34de5c9ce9', 'false', '2019-06-30 22:03:47'),
('3a715120baa52b5fc0bb7d3d28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 23:08:24'),
('3a83218a1eaa16386888d9d6c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 03:53:30'),
('3aab6a4840fcfb6e8ced3d73be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:13:49'),
('3aae809d8adc4ef58ad2205af4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:13:12'),
('3ae108b197c95f06d9aba168ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:16:19'),
('3af775122ecc69c75afde981ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 16:03:13'),
('3b2a66f9c9576c49241623c779', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:47:38'),
('3b2e27f1eec39d7d657dd04c01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 09:08:08'),
('3b348816565d09ab68bd29eb47', 'false', '2019-07-01 00:37:41'),
('3b3cb67be550584419f4d69f40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 03:49:41'),
('3b544f77ca1b3427c7d5ee506b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:28:20'),
('3b6a2f46fad68a7be29dc9248f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 04:18:22'),
('3b730939375de14a7e28407a46', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 14:14:52'),
('3b81d0e03d767f333f37b76f53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 15:09:54'),
('3b911ad1314f7500afd3d8e94d', 'false', '2019-06-30 17:05:42'),
('3ba69a8b3b48a0aaa78f2d8754', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 01:38:14'),
('3bb2b634bbfe90d7d37dc78f8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:49'),
('3bbed945ae88618256761a08dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 02:57:09'),
('3bc0882e400ea9cbda5a04ba40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:28'),
('3bc97f4fbe2175fdf002177320', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:22'),
('3bd056d87ffde697d9af300f62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 18:01:19'),
('3c1046b02b416605205fd4ccee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:01'),
('3c18159f4dcd0fb731d2c41884', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 01:47:39'),
('3c20b46a6e04be12582b526f9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 13:49:23'),
('3c2a80824a2d850171d697b01f', 'false', '2019-07-05 18:23:08'),
('3c2e8d4edf95e9aeedb1d7bc80', 'false', '2019-07-01 02:29:53'),
('3c3073e7f0788db2d7873fe6ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 19:38:24'),
('3c3f2ca5d4fb7b939771281e13', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:57'),
('3c48e311b9036d061362453796', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:38'),
('3c4d5444659d9c9bddbc3d0083', 'false', '2019-06-30 17:24:30'),
('3c53216cbff356775003989f33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 01:43:00'),
('3c58f40fef8d3194be85d94919', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 05:51:52'),
('3c5efdee9142b561ecc957e6c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:03:07'),
('3c6e2db4375e5645f55d7d305e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 04:36:35'),
('3c897a4fadfeacb83368d5bc6f', 'false', '2019-06-30 17:51:31'),
('3c8a78ef6b49f906d200c4529d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:30:36'),
('3cb79ccb2701d40bc67bd2185f', 'false', '2019-06-30 21:10:39'),
('3cbee27a57c88121ee4b43deb2', 'false', '2019-06-30 17:48:49'),
('3cc96c8e6aba5e7945a74bc021', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 01:19:36'),
('3cdd06217f5b57732af1b8011b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:29:50'),
('3ce0b124832a8c22d77b3d6c20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 23:53:24'),
('3cf1de0fad2b9aef6ee5cd8e85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 23:00:35'),
('3d242ed3a72673a950a472f0cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 01:51:26'),
('3d7bdc169a10c8d37296fe55fc', 'false', '2019-06-30 20:18:24'),
('3d7dc1c56a5af4ff8f0589052e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:52'),
('3da13951875bde8c2891005c1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 17:18:46'),
('3dafabf3e41ad6abce793441de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:29:11'),
('3db3b9ce15302bd56e752d429c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 00:04:20'),
('3db3daca3ba99a3020f0c300d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 22:32:20'),
('3e1f2f3d4d99571a2c9900e145', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:59'),
('3e1f87fa772b40185cc81b0325', 'false', '2019-06-30 19:18:48'),
('3e22c87199617fc431d2a64f89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:13:51'),
('3e39060145da990dd6333403ab', 'false', '2019-06-30 20:05:39'),
('3e6b3d25f295f79ce41a5555e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 13:31:36'),
('3e7b5a1fa98fb0d1d67c647b73', 'false', '2019-07-05 15:18:45'),
('3e8f3ddbbbecbe2cca649a20ed', 'false', '2019-07-01 02:05:49'),
('3e9cf32db82769cd03954950f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:16'),
('3e9facb5bba49a2b7010e0f559', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 10:13:14'),
('3ea29c185975d166ce0cfe90d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 06:56:08'),
('3eb9e6f905a375c391f63e6716', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:22:31'),
('3ebccc234a0ab3c29eb69d2378', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 01:29:10'),
('3eed7da5e8caa6eda959dbe628', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:22:59'),
('3ef1d6ea33a53727a8949ac26c', 'false', '2019-06-30 19:58:35'),
('3f1efb564c2fd88e6bcda68067', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 22:29:59'),
('3f240122a868f3e866f7cce957', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 12:49:17'),
('3f3061e92ff2a5c93be04690fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 08:26:32'),
('3f3bcd334cd655b224d62d6ef1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:19:42'),
('3f43c9dc56277ad92bffaf9b90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 23:07:03'),
('3f6840877c4ee6f40f1bb04411', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:11'),
('3f71a860733c7eea779b2c93c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:54:41'),
('3f7220d208946e249e1f42b514', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 16:16:05'),
('3f7285555a2fe9f0267440490a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 12:10:09'),
('3f86edf69ea5264036586d1a23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 13:34:26'),
('3f9feb9f313d4b007d2ad53d95', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:10'),
('3fa73382424ca012e80703f7d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:43:28'),
('3fb4a986274c1677cc1291d5e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:30'),
('3fc3ef6a841461dda4d69ec1ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:43:26'),
('3fe149aa79e6127b66d14f5e59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 06:08:09'),
('400dbcea0ac72e4f79c0da68d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 14:20:53'),
('4017bfe4d48aa07014308ca362', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 10:14:17'),
('401e8e5c65a8bca410c6d9a008', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:54:21'),
('4020f434fefd4ae9c5faa81b74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 02:57:08'),
('40287213bd7cc2566c5edf62cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:36:40'),
('40a4c3f9297098f29cf328a44a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 11:30:58'),
('40ac51e100920cf45ffb09b9f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:00:34'),
('40c4c3d5d9a957c2c46272d5e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 21:27:11'),
('40cba030f1c317aeeb2e6d70e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:46:53'),
('40cf95bb1e317c67a838f91f0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 16:06:22'),
('4107d64508767e8aae2d7277fb', 'false', '2019-07-01 05:34:30'),
('413075654fea1c560c209f8925', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 05:10:47'),
('414e5cbfc255965b3764a77dc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:55'),
('4151a23882b9c8ea1797c0ccce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:59:57'),
('416d1623173833829c473c43df', 'false', '2019-07-05 18:51:41'),
('419137cc18bef2728aebbb418b', 'false', '2019-07-01 03:47:59'),
('41ba621dc886457466bbb4746c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:05:48'),
('41d7d0f7a1b2ecefa30e0e64af', 'false', '2019-07-01 05:51:27'),
('41d86fe7c9f2778cc662bbbaf4', 'false', '2019-06-30 20:19:44'),
('41d9b237de5cc4c305686404da', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 04:51:52'),
('4201740a65520c8765744c56ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:51:20'),
('423a81ee602f335f3f17a119ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 08:29:01'),
('42402c0af0672cb1429f6b2dde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 00:37:12'),
('424817b6b244f593a6ca7a1e6d', 'false', '2019-06-30 18:35:40'),
('424c7cd0c6532ba165aac609d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 17:33:28'),
('42534d205fe9c61058a867e9cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 13:02:43'),
('4258cf70b24db0ba0d79e5a2dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 22:23:44'),
('42810771c5e16330a403e7b491', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 11:39:42'),
('42831d4a2bcc34cda2ae683927', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 10:17:48'),
('42a67616d1ef2c9178e1812a8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 13:49:39'),
('42a7de0c437a1eb2bfe8cc2f9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 07:12:18'),
('42c231947c2642ccbf7256430a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 10:07:54'),
('42d94b3c1b83c1241e9fe9a541', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 04:32:30'),
('42f061d5771d798ef7d69f02c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 22:33:52'),
('42ff215759d07985ab736ce9ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 18:39:01'),
('4300de4b8677fc0d23f114c270', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 14:37:05'),
('430eb9837fdc9457111273881c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:44:49'),
('431f69c35109f4b724bf01f349', 'false', '2019-07-05 15:36:28'),
('43254805be519b7d24b7debfd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 15:22:15'),
('432aa893162ef93ec2382e0c2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:17'),
('434a31159fcf5bd8c68e85c381', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 08:35:01'),
('4373ffc508052c7b74e55524b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 02:40:48'),
('43a0c294aba843e6d171b8c20a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 04:49:57'),
('43a1d75af912b5ebe5bd792bad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:26'),
('43aaf041cdad0bdbf93b2904c9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-06-11 05:26:32'),
('43b5384423aefd95f4192ffe59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:59:00'),
('43bd4974d88584041bc3069a5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 00:31:51'),
('43cfa5ad8868a60f7479b94920', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 11:32:25'),
('43d1b4149e6e55525a6a18bfd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 17:41:54'),
('43f8a892ac4ad80e5fa05624c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:12:55'),
('4405ed5b4852b172e295f44699', 'false', '2019-07-01 02:13:05'),
('4443c4aa8b60bd970e3a60226e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:37'),
('445f8e810b0acbfb972df7c5fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:32:03'),
('4473e5e648edb89123d620bf38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 02:09:58'),
('4490c7a39c5b12d3e73536948b', 'false', '2019-06-30 16:35:41'),
('4491bbdc754b32a5a8077dd083', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 06:21:42'),
('4492bbdfca7f007a12c12c2347', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 05:27:44'),
('449534a961e5f7ad91c2af2a2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 19:49:29');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('449ed513a9968e6926a029c787', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 04:13:26'),
('44a173c0ea0a8cff7640f301c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:33'),
('44addc16c881e3f112defe6db5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:18'),
('44ce67d401d1e841a7bd9f90f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:36:22'),
('44d0475cdcbe6e915a0d93d369', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 07:33:12'),
('44d18a1cff28cb024a25be13db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 19:58:08'),
('44d9217b7c9ab6c071ca14b3ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 19:20:12'),
('44dd90f4dd6b91ad5f69152090', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 13:29:55'),
('44e93361df57d98f8541933c35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:25:32'),
('44f5f19f6e8179696885f5901d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 07:52:11'),
('4503b5081067452ffb4a523d4f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\",\"shipping_address\":false}', '2019-05-16 14:24:51'),
('4514e5039171cfa668cc153ae5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 05:10:36'),
('451b6a9fb00eaa2c24a539e649', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 02:44:31'),
('45223808f0bd210fc40e34f2d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 16:44:49'),
('4537f3fabc9c164c2ec13bdb10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:21:35'),
('456c3245494053bbcf6f3e42a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 05:14:17'),
('4570c774c7e2d0b298188fbf54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 19:01:06'),
('45737d22c0a45c987d87196379', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 23:42:15'),
('457fad911c36aaba83b196fb64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:49:57'),
('45930387f9111ad7b3aeece767', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 01:22:03'),
('45a0c755f4479231a94681803d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:21'),
('45a758da65e04a7e745ab40daf', 'false', '2019-06-30 18:37:09'),
('45ab75717643f1d5d98b34dc44', 'false', '2019-06-30 18:22:07'),
('45d06ef16483fa59c4053da6a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 01:35:48'),
('45d6fe0091f9b96ae549f5458c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 14:06:57'),
('45e060c4ee4f30854878b5ad43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 03:55:11'),
('46002195ecad88605e7ff8e72c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:10'),
('463663f4807137de1660abea99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:05:23'),
('46451483a66859c2e4f7a43cbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:32:37'),
('4653d04205b8c04a4b9d71df9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 01:28:57'),
('466f6dac3e23fd293c717c627e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:19:07'),
('468bb45f9f7d1c935012453914', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 11:21:22'),
('469c9e11232ea9f1a388ac5e38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 12:46:26'),
('46ab07f7b1665abe047168c259', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 11:26:07'),
('46b185ea8ee9057991434055dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:06'),
('46b2f5fa67185ba822fec0a70b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 13:55:39'),
('46bc310734744b4b4159a8557b', 'false', '2019-07-05 18:11:48'),
('46d181d67090bfbc070ac7c2bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:41'),
('46d24dbaee3a906233de05dbe1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:52:26'),
('4705b137c2c6290d99335aafba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:04'),
('47074fcf6482028d15133a3468', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:08:14'),
('4709c30073f04e93fe959a1733', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:23:34'),
('470c62b630a4bb4c4df1da234d', 'false', '2019-07-01 00:23:11'),
('47192884a885388dbda3cadff1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 02:57:09'),
('471ca853f7e01d8eb592003bbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:06:10'),
('471f417da4ff9d715fa142f3b9', 'false', '2019-07-05 19:27:17'),
('4726f5df0a50c6f9cc67499b1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:29:10'),
('474a13d0f766c10f3d2489263a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:28:47'),
('474da35ef96ecea737b34a19a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 08:22:18'),
('475a842840d2af55f2103211b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:30:46'),
('475e07807e30938efa70f37497', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 21:09:59'),
('4769a5637d5d9a041a1e7a2bc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 12:05:30'),
('47c167e1b306220381f3cd1ee0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:21'),
('47e430a00026191ee61c0651f0', 'false', '2019-07-01 03:22:34'),
('47e4e561d4886e0c6c4e52cee7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:58:16'),
('47ec1e3b2dc448276e8a88e8e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 08:46:54'),
('47f69c08c98d3cc673dc6111b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 23:10:58'),
('47fcd7ba6879b7ac65255899a4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-04-25 12:48:12'),
('4828edfff7c28ec18da6357629', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 01:47:07'),
('4840b3911df2893799697dd9b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 17:57:18'),
('486feaabb8d2fe6d352c83fd60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 02:17:13'),
('4872886d7c0e238f3c8c88fccc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:30:24'),
('48815c893c7866b8524fbe8544', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:33'),
('48838a8cae8e73bc7b4c91a600', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 12:44:29'),
('48913eeaa124c7edc9abbd5df6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:00'),
('48b0e9d2f48e8613a965cfcc8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 19:36:05'),
('48b828d0c9140987c5c030cda4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:42'),
('48bc05df2691180cca52e688ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:53'),
('48d1074635d970aa49c0d9b9af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 04:17:35'),
('48e651f03349507a37f1a5928b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 16:33:20'),
('490562ff0f513e57b853db6db9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:43'),
('490e4aa010353135b3c25ec323', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 05:55:31'),
('4918cfb9b07cb64c4c634b9bdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 13:10:31'),
('491ddd8dad00d73e35bf320cf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 22:41:39'),
('4928cf3d9410a2ffea895c9fa6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 20:29:49'),
('49417334138cfc9a25d8bc789a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 09:21:36'),
('495a6e183c50f7a272acc98f01', 'false', '2019-06-30 16:01:18'),
('496246f304ff1fe40cd0dde320', 'false', '2019-06-30 17:59:35'),
('496ebd87502b78cba4997fca87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:19'),
('49966b5ccaab601e95c11eab9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-19 06:43:57'),
('49b8b8acbe2b548cb001dff0ab', 'false', '2019-06-30 15:54:43'),
('49b97e41f65f6b8d234d62c3a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 21:03:54'),
('49e1ab2163b3a0874a97257bf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 16:27:47'),
('4a16761a06b41044b70b3026d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 23:07:41'),
('4a2f95e2531ed4c69ea5d1ed32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 06:29:50'),
('4a3825a1d3d4cfd7d5dc23c5f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 12:04:36'),
('4a54059b71fb6887e5fba0b909', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 18:33:43'),
('4a60a28fcfb300696080ee96c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 03:41:46'),
('4a6c203f9b5746528af342d844', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:01'),
('4a88254bc5a8797331ad62832a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:38:42'),
('4a902ae533fc4ef0a33e059f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 21:08:31'),
('4ad3cbe90d03a9f1bb24dbbc43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 11:10:50'),
('4af71f09236ffaa27c68d4e63e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 06:45:02'),
('4b0e7c11f2b6ab5fc0441baf43', 'false', '2019-07-01 00:01:43'),
('4b16087df397bc5596bdd7c056', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:22'),
('4b1f9d44ef747da1ae874f4762', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:29:17'),
('4b25c6b453ec75954d54095666', 'false', '2019-07-01 01:44:03'),
('4b3747718415f14ff01eb7d200', 'false', '2019-06-30 20:34:23'),
('4b37644593afefbada29125e68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:06:09'),
('4b50379ed06636acbda53f0ec8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 12:01:53'),
('4b5a315bad91c1546013d75c6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 08:20:08'),
('4b6449875329c7332f22df0e9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 03:10:29'),
('4b6eb7284b548e61a1990afbcb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 17:15:50'),
('4b711ed91e25c8ad99fb689c99', 'false', '2019-06-30 22:19:45'),
('4b74bf20bace5ecfae1d0528f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:24'),
('4b83fb5567a9f0f66ced6fe503', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 18:24:04'),
('4b866fb7d98415748939ba7e25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:27:05'),
('4b8784083cf3dcf3b8d2601b59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 10:24:55'),
('4b88043d415190a510d7dd49a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 13:47:31'),
('4b97cb0d05b544863ad7e29ce8', 'false', '2019-07-05 18:10:28'),
('4ba5228305cd75df24f1eb7509', 'false', '2019-07-05 15:10:04'),
('4baee73893b94a14857a58e23a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 05:38:10'),
('4baf17cf3e07920c89b670396d', 'false', '2019-07-01 02:15:41'),
('4bb2be3214761745cbaa04a587', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-05-18 00:02:12'),
('4bba43b1bb44043d918428c136', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-14 00:23:33'),
('4bc35b143519abb26caa6bd01c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:58:48'),
('4bc5530a2efdb934d4472f06b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:39:51'),
('4bde46c157e8f192de0ed18f24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 14:09:21'),
('4c0333855572c55323c9d1a445', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 20:21:26'),
('4c047292bb4914ba9218d26246', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 06:53:18'),
('4c0dc395bd3c38708f531a032c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 07:39:03'),
('4c1c0ead5527b383324d4c6716', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 09:09:39'),
('4c212aafd1448e4bb2260380b6', 'false', '2019-07-01 05:39:34'),
('4c39ac1d47602b82712bd160b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 14:53:20'),
('4c3d9de77de3269fcf7c8b10ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:15'),
('4c465a75fc9dfe0195cc46f25d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 01:13:48'),
('4c4a5fe12f88f8435a95802382', 'false', '2019-07-01 02:52:39'),
('4c4f98a8460ce9c53db616f2d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:26'),
('4c5f634f7d6c961a892d12c912', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:56'),
('4c7c62741c724b39c7495c40c2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-04-17 08:18:52'),
('4c7c71771e7c33a4890be4eaab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 23:00:02'),
('4c9d5ce80d4ce84baeaff4f831', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 04:32:27'),
('4cb983f8497e209d2162de8803', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 18:33:00'),
('4cbdfc965e16fc677b3b0ad053', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 11:32:05'),
('4cc8b9933489120e33fed61306', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:52'),
('4cd129380a656ea9d609ffd6c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 00:48:02'),
('4cd4259814500c245703c6c4c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:19'),
('4cf5ce903899146786df99a88f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:52'),
('4cf801d7606b9c5848c4479c71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:03'),
('4cf91a94477f07001fdddea27f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:51'),
('4d103ef238b9bef863a218e8cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:57:16'),
('4d23f6c7566e50bb0a79b7aece', 'false', '2019-06-30 23:20:58'),
('4d26525d717a97c71f8be6c677', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:45:45'),
('4d3412692f25c55a1dfdc4345d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 09:42:16'),
('4d3fdcf075ba8907235b8d024e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:01:46'),
('4d439b91109e0ebf050779a850', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 02:17:37'),
('4d6430ed443f57c821f85f87be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 02:39:01'),
('4d6f2161b2946a82b924740f8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:22:33'),
('4d7a96d1c6c6c292ba4892375b', 'false', '2019-07-01 05:07:18'),
('4d7e7b1259002d5d50f8fbc9ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 20:12:03'),
('4d8502358e0f3c48a942a784bb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"5\"}', '2019-07-28 05:58:06'),
('4d86eb2959fe624e72ce26c942', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 15:27:06'),
('4d93fee33dae5131e10c34fd03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 01:17:28'),
('4db418a13e042ddd92502ce40e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:01:23'),
('4dbce75b5fbe9be254bfbe2b9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:59:49'),
('4dc87b5bbc32f781984ebd002d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 02:17:11'),
('4dd1c9cabfeb099d7c74d8a150', 'false', '2019-06-30 19:00:38'),
('4dfea8ecec8ce3e2af847f8857', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:06:08'),
('4e03aa9d5da8dd22d324e75812', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:20:18'),
('4e0710d34b5b7bf73621a70ae6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 08:20:36'),
('4e2b59749a04c431f217698d0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:25:45'),
('4e3b0b952b065346880c82ad98', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/password\"}', '2019-06-13 18:07:48'),
('4e4efa9786f4650731a1c701cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:20'),
('4e6ebdf19aeedb902a85db65bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 00:04:41'),
('4e98310dcc982256c8eacef3c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 23:49:42'),
('4eb0a1decc18c962d3abe00ac1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 19:11:43'),
('4eb3f0dc807100a8e1edc2791f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 18:04:33'),
('4ed1f0e250bacd2433766a8288', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 20:45:02'),
('4f04c44339e65969f35bbf245f', 'false', '2019-07-01 00:20:43'),
('4f0bf9848d997cb748f7ca0f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:46:35'),
('4f0e742bdd5b93e727fb0fd1e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 01:30:40'),
('4f11491d3e4d07461f238c135e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:29'),
('4f14a25d641b7a4828bce77c33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:24:24'),
('4f4d4308e8f83297cf8e9426f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 17:40:28'),
('4f88f5be5e14875fd0cf5874c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 17:24:35'),
('4fa3b70b2e2d31d086671c7e17', 'false', '2019-07-05 17:22:42'),
('4fb3529977e5cfc788922b6d3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 04:36:25'),
('4fdb3959effa54ed7781199285', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 01:54:12'),
('4fe39253b818127a0569f8ab58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 08:19:20'),
('4ff9c6c5f603be58acdc35b9eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 19:36:44'),
('4ffdcd3bdaf104d22df8c2a4b0', 'false', '2019-07-05 17:41:58'),
('50060b8c83d5d232abe09fdbb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 13:48:09'),
('502f2eb755edf68531ca0441b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 09:04:16'),
('5038ae02d42719cc817f25fd79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 08:37:41'),
('5042c4f4963cd341c5eb5798c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:07'),
('5054bfc66f5157d4b6f5dff121', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 16:00:27'),
('505917b7a99ce52365ec5a768a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 21:00:32'),
('50628d6852c94fae3470a463f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 21:38:10'),
('50652c4d8a06843f37a7429d2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 22:57:24'),
('5079474ffb382d70a34665e4c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 08:40:49'),
('508ab116de218c50b9ed34f2a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:40'),
('508c23abadbe7fefdcb99cb786', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 13:44:15'),
('50bf6c751ffd5fa38f973d550a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 07:19:01'),
('50c27a6fa4a5a48f2846e0c725', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:22'),
('50c5eab125f765b257834a2152', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 16:54:00'),
('50c6cd98899c497e5efb485383', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 15:57:37'),
('50e35664d66c7a31e5018f87a7', 'false', '2019-07-01 00:06:54'),
('51007e4d98e126d77d1ed9717c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 11:02:28'),
('51104ae12f113b77d9dd9c4d71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 08:43:22'),
('513735c309ed2696984fb2d16a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:22'),
('514ca68e377452bc4e8902c4e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 03:34:36'),
('514d2d06b1ff9ad23ec087394f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:13'),
('5155c95b616954b029d3f9eeb7', 'false', '2019-06-30 23:06:13'),
('515850e794cab4ae68023e4670', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:49:41'),
('516102de7eea8b70a93ef813a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 05:36:50'),
('516f90c376c38cbe5c5b5eb416', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 01:30:59'),
('517e88af97f7e38e9828faaf02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 07:48:58'),
('51854269a4fca94ea1ccc03e3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:06:24'),
('5187c219afd24b3c0a958b7281', 'false', '2019-06-30 19:39:49'),
('519a52703781f524d29c2d81e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:46'),
('51cd0eff50d08f3c57641c445d', 'false', '2019-07-01 02:55:36'),
('51f0d0aeff686aa16e6041dc96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:56'),
('5217a012ac8d07043099f80630', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 16:45:04'),
('5231a18c33e92d2942b4de708b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 04:56:01'),
('5240c4b2669d657935fef51dcf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 19:06:46'),
('5247dd772601465f6f8fbfacc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:41'),
('526c6ae9ac907cac2e9fe03b8f', 'false', '2019-07-05 17:24:59'),
('528382f19dcde5a619944701bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 23:14:56'),
('52896898b1b54a232b1abb9d98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 15:37:56'),
('52a1b30b0005f386b8f2760a60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 04:08:32'),
('52c939acb73dfeb4a2a1f913d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:50:29'),
('52cbfbdee107678e6a42105545', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 15:08:45'),
('52da318cd7d2b51f3803583c5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 02:50:33'),
('52e761a442e2b12db5d883a235', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 21:18:28'),
('531724e3b1d4a8260f39a045b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 07:37:15'),
('5345ba21fc5a5a2a7a2a4330f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 05:24:58'),
('5346c83409d930348d9d425a1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 02:30:58'),
('535eaa47cd0cbde84fc0ca7098', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 01:43:52'),
('537a06cb3a3bc758e7d02c9241', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 22:12:48'),
('537fa3c8d3311186ad063bd1c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 21:21:56'),
('53a65a821295d10934eda891e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 22:12:55'),
('53c9e5a268900bc467ef46bba7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:55'),
('53d3ccbfa271c8312f862220e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:53:08'),
('53d4e21e01ab403019cd19801d', 'false', '2019-07-01 04:02:40'),
('53e32ba8693494e4af9f396265', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 05:02:01'),
('5408832628e44d4e0121b486a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 09:55:27'),
('540bbef09271fe0f430145a07d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 12:47:49'),
('540c0d2af90822aa30455405c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 02:16:43'),
('540f5277172cb17fb86a92253c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 07:16:46'),
('541e0b7e7107e4b73d19948892', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:43:29'),
('54290ce09a5cc555d04c00ef16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 15:33:10'),
('542b3ddef80b05de6680fea71b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 16:46:10'),
('54436bee583e60f2db4365eb1b', 'false', '2019-07-01 00:33:10'),
('545591b6786311cdee530fc612', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-04 05:44:18'),
('547c02be7c47b8fa0703698166', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-06-05 05:49:10'),
('548318386ad13ebb75561ef7c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:43'),
('5486f3a47547f10a79fc61b0bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:57'),
('54ab6e9177964a1531ded4fb54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:26'),
('54b47796b9bdb44af6780af71e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 23:44:06'),
('54c3fba85b012ea0d7f9823b68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 01:32:27'),
('54f57c88a2fc66e22529ec27cb', 'false', '2019-07-01 02:40:34'),
('5500728f7115ed6010b721b07d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 02:59:14'),
('5510aa74763b6280531d1d3600', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 00:34:42'),
('5522279a46277155d449317e3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 01:19:52'),
('5529f8aef5fadad13c91b5c378', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 08:05:39'),
('553c1de0767422079922553aba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 07:37:21'),
('554910a280170314443497d887', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:16:54'),
('557516aef64c65d854f7ed96ad', 'false', '2019-07-05 20:46:48'),
('5580064a9e753b53fe5b6c9a31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:50:51'),
('559103d52fe97187d155118ec8', 'false', '2019-06-30 20:02:33'),
('559202305851e93a80c5f4eced', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 06:41:03'),
('55d2109ce4a001adc9d295624e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 05:46:40'),
('55d66b0d122a77f8f27ee1f8e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 13:35:39'),
('55da9b87f20361065b2afacc28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 06:24:46'),
('560a67f85f7857423f03a4857b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:24:43'),
('56342d4216819a23ae087486f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:42:51'),
('563fc80f2ea2b43d9ccbb0b260', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 20:11:21'),
('5643eee30d3948fc12e6fe2f08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:40'),
('5646faa5ee10e54697e3d9929c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 08:09:54'),
('5649a77d5c5d17e50d34a52bbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-19 13:45:59'),
('565df0f5e09e9c39f567e314bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:20:30'),
('56618f63251faabbcd644f8518', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 07:06:51'),
('566cadb98158d678297b8c55da', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:47:56'),
('569604ac5d050f6dc8e66a0d5d', 'false', '2019-06-30 16:17:40'),
('569a22467edeac42e296f64f05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 03:26:33'),
('569aa1e870f485c2182a8c3427', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 09:07:45'),
('56a7ce29b7be309de24c812660', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:59'),
('56b148a4d2e47a1208ecc62279', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 11:34:36'),
('56bf42ba8d0e3e31925290c3a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:22'),
('56c0613f85c4441c1929c1cc55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 15:27:35'),
('56c37e9142983f79bd75f077dd', 'false', '2019-07-05 15:17:39'),
('56cba8f271938dd99242df4a51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:28'),
('56cbc87f8bcd4dcbcfacd81a6b', 'false', '2019-06-30 20:29:41'),
('56da54ed3194ddfb2fc2f49a38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:53'),
('5706f7687bf129bdef4172fd73', 'false', '2019-07-05 18:14:10'),
('570d72ea6115f07bd8d35eb325', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:56:43'),
('570df8cbfc14b7e28f1d7ab7e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 20:39:29'),
('57167c7dd53824f7be3128b6bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:00'),
('5756f239927e617c538d7d48e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:29:21'),
('575e71221db5cb7f30d1f94fd2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 15:13:12'),
('577d296c676d0d6660e4a5edb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 09:00:02'),
('57bbdc0f28a9a11641e7836035', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 04:47:13'),
('57d5acdb1b97f5ce3adc903033', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:45'),
('57e1f8cf80995e039581e4132d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 03:54:56'),
('57e566465f5945ec6d16ee147f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:39'),
('5808de212ed73c933050bb8cdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:21'),
('580b56c3d75d643829c0682944', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 11:27:44'),
('5818e76ff94473cdc99bbdcac4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 01:11:06'),
('581f1881bde84206eb85d18203', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 20:30:15'),
('5824e21df88c15053268ff13a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:52:49'),
('5830ee066f4fc24e87fe751da4', 'false', '2019-06-30 17:29:48'),
('583e5b11b9283c2f76c2cabe11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:01'),
('583ebfe73138bb8dffb5bd56c3', 'false', '2019-07-05 20:16:38'),
('585b980380db22d2b4cf893920', 'false', '2019-07-05 15:13:18'),
('5898eac6d3310e79c9d9814cc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 19:42:59'),
('58cdede08476d331c256f25cc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 22:15:05'),
('58f57b65e53965b636b734092c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:22'),
('58ff2949550646b7304afeac95', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 04:26:27'),
('590e5b4c3c5920eed6680be86d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 16:50:25'),
('59214a10059266e5ac7c95b4f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 18:48:34'),
('592617b2f42007768932c3b29c', 'false', '2019-07-01 01:12:07'),
('592a42afbd6fdfc95638154bf0', 'false', '2019-06-30 20:01:09'),
('5938a549492279ceaf4d283506', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 10:31:33'),
('5939958dafa75ece1649b36a81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:58:05'),
('5947d6fc21ab7f611daf1d665a', 'false', '2019-06-30 15:40:11'),
('59740c5fe17afb54c556eb5a48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 17:59:18'),
('5979be983487b59e12cc862a98', 'false', '2019-06-30 21:32:03'),
('59ae428eb0e90d161d6db3b627', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:45:31'),
('59c40cf128fef2519ab0d868dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 09:59:15'),
('59e470b3d93aff6b11b93ed574', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:19:23'),
('59fff72a8b1f351d338a1f76be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:31'),
('5a05c693a61442233ed9fd8ee5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 05:12:52'),
('5a17adb0e338f61a405baf2797', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 22:59:24'),
('5a28b70b3587fa449a4e1fd903', 'false', '2019-06-30 16:53:07'),
('5a41c524c77765a75c6b428a1c', 'false', '2019-06-30 15:45:10'),
('5a6203975b47a6df7f5b55b97a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 19:39:50'),
('5aac1ccef1c0ca6fcef480c211', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:32:03'),
('5abf54b211dc727d7156b23e3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 03:52:29'),
('5ad8f2e6ae11a3be1eb2a24e0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:44:23'),
('5afe5d1456d8da312d48763e43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 07:37:24'),
('5aff883007e56d331b08575c21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:24'),
('5affdd1ed184bd3f3ce6e154ed', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-04-17 08:01:44'),
('5b0bc02b62f423a2bce989da03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 13:49:04'),
('5b0bd20265f6b3de5fafca3239', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 01:02:39'),
('5b0fd8ae2afb729ebb2df6e426', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-07-26 12:35:45'),
('5b22c5faa14621c510d1107590', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:10'),
('5b2daac8a4aaa661eafd0b5e1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:28'),
('5b3c41269e0d43e5f8a6a81433', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 06:28:30'),
('5b5b9172327d7d2d5f64034df1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 05:42:11'),
('5b6a88026c1d67bf2517b121f0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 19:14:12'),
('5b788124fdda37e15626587eb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 10:02:37'),
('5b918485342f4da5c924c7abde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 04:38:21'),
('5ba150611cffa8647bdcc3fc59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 19:54:51'),
('5bb82bedf45773533fefe823a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 05:29:44'),
('5bbb564bd2ac453996c6511a4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 09:09:19'),
('5bc8d657c26ef0a25d7712769a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:35'),
('5bd70fcf359e5f178cc2f8d81e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 06:47:08'),
('5bd7c1b348b5906b716e081103', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-07-05 05:54:55'),
('5be56db9969f6e3e5005795eda', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-08-10 22:57:05'),
('5bec7593221261e9ba7f3e751a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 10:57:59'),
('5bf944b6974f827e4b268a9cb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 11:17:16'),
('5c28e1f6aef224bfb3615c839d', 'false', '2019-06-30 21:40:57'),
('5c2b76c37d42c0d20056583f3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 11:51:16'),
('5c33a995876df9b3256a8d8c26', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-04-30 05:47:16'),
('5c48a7369a59eafc7887db292d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 18:46:29'),
('5c56e1c05d218ffff9d072ae91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 04:43:34'),
('5c6479bff0a8aa5e022a4bcd4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 21:55:26'),
('5c895e82204af813158eec89af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 07:24:55'),
('5c8ef822f673dfbe379db34c97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 00:13:07'),
('5c921bd0fa412b3f8dd4b095b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:05:05'),
('5c9856ecba2536b4f9f47a2286', 'false', '2019-06-30 17:43:22'),
('5ca4a55b6d972c61e4f5f3430f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:56:13'),
('5cb318a0551dee0171b44b3773', 'false', '2019-06-30 22:55:09'),
('5cb497e63d912d5ed97643dcb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:49'),
('5ccc9b0663bfad5a0bf5466c02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:55'),
('5ce2fe6e35d71070a3ce4319eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:06:43'),
('5ce9039905038c5f49e2c79ae8', 'false', '2019-06-30 22:44:25'),
('5cf018b8163faa1d873c6e5a93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 04:31:33'),
('5d062d795ee91362724ef94954', 'false', '2019-07-01 04:30:39'),
('5d199acb0a36fbe6e44e52c596', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 20:04:13'),
('5d44d50800eae3b146cedf61e6', 'false', '2019-06-30 20:35:36'),
('5d5bd12d6a0271e61c92133a62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 03:52:03'),
('5d8af15ea4f63690ad9ac9f9c9', 'false', '2019-06-30 16:14:14'),
('5d922869089db3aed918d8e26c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:59:31'),
('5d9b890efcb8eca6a2697ec467', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 00:13:47'),
('5da3260dd318aec6638dbbf028', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 20:29:03'),
('5dac39d0afafacdd794bbc8a61', 'false', '2019-07-05 18:02:21'),
('5db9fdb92f8c1bd1829cf65175', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 20:48:53'),
('5dc125462c0fc8c8e8641598e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:42:20'),
('5dc7ad454383f02a8ad8cd81c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 09:25:22'),
('5df64b495303567338b43e195e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 01:53:34'),
('5dfde66a05eb0e6cfba12c84f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:57'),
('5dff3a47e442cd3a269392032c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 19:36:18'),
('5e081d02c4eccb26074972ba55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:28'),
('5e10803f0b9915c45b27700da5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 07:39:21'),
('5e2522ca6f56cc603badb9bf1f', 'false', '2019-06-30 23:46:00'),
('5e2ed2a0f959eb150b0fcaac68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:35:16'),
('5e37b53cb24b1c65f7a6948bb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:07'),
('5e4cc9ffd2a9dacc7cd791a65a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-07-23 15:45:05'),
('5e504d82a4f77f61970119b743', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 05:59:46'),
('5e6c07a708cef6eff678e1072e', 'false', '2019-07-01 03:45:07'),
('5ecd551b277916095d9650fc63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 00:57:18'),
('5ed7e22f2c402b4aa972093a32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 15:46:18'),
('5ee3b3f81d45a83fa7c24084b9', 'false', '2019-07-01 05:02:15'),
('5ee6d8a448d00693b5c05c1077', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:53:55'),
('5ef04223e33025197c3a434568', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 12:32:03'),
('5ef173ea05cc5a89d5b8c4c240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 01:14:52'),
('5ef22eb45f357226e360f37628', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 13:38:36'),
('5f199e82f6961271a7af32464e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 15:53:44'),
('5f3584e552344645e35eb11057', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:24'),
('5f4960d50ceb49b9d49c56d7b9', 'false', '2019-06-30 16:28:08'),
('5f5ec85b572c1eed751b0e276d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 15:03:59'),
('5f7d415291f61992a58bd1fc4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:28:11'),
('5f92a892886c65526cb3d797a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:08:15'),
('5fa3ac1516f5bbb8a2211b8a41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 22:16:50'),
('5fbad415fb98b19e989b2b80a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 11:00:08'),
('5fc0f89423e4e7e44bdcd53c3d', 'false', '2019-06-30 23:17:22'),
('5fcae9fce8331e84bf9521f9bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:38:53'),
('5ff4b73a5cff0e777e98c134bf', 'false', '2019-06-30 21:36:15'),
('5ff69c883d0794f6dda1ccff8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 00:13:21'),
('5ff70e5b317efc78fc2ea4b790', 'false', '2019-06-30 18:38:29'),
('6015a1cdad0dfb46d02d7f0020', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:07:28'),
('6029390c13b1c0fde7e333ece9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 23:01:34'),
('6030f6f7cd645a1104c085d3a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 01:09:46'),
('603f3c200c77ea93fc2e00dd41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 01:40:11'),
('60522417371b7298762460e6d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 03:14:48'),
('606b930a57c1dc7c5417815175', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 07:14:54'),
('608e0cb93c378f3b78b972b2c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-30 15:42:50'),
('6090cac1595ad0a3bef580f976', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 11:52:40'),
('6094247678a273f720124e2998', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 21:35:32'),
('6097dd7cb6e413e10e756999e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:21'),
('60a0a7b24a3c770354649b3dfb', 'false', '2019-07-01 05:40:47'),
('60a9a9fcbf0cf8504a67fdf142', 'false', '2019-06-30 21:46:30'),
('60d278c400eb57fce3ca75d132', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:46'),
('60da22f457d748e51590aa4a09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:51:59'),
('60ec324731bbaa68a87a277bfe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 04:18:58'),
('60f3e03d3350e3be1531f3e572', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 10:58:53'),
('61015e3ce4dbf2314d233f820b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:38:00'),
('6118c516f3af6182da3a4caf9b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 11:00:03'),
('611ad7a28419b3ca3468c54952', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 06:08:51'),
('6133f6e778934210e6b95c4408', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 21:40:11'),
('613b9f566d299ec59d0aeab76f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-08-02 13:26:35'),
('6140b515c828c92debc17b91d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 08:24:20'),
('6140ea26967d8f6efa02d6d45a', 'false', '2019-07-05 19:29:42'),
('614a4d924528e0329af2639f5f', 'false', '2019-07-01 02:49:38'),
('615cdca0ed7c67f85109cc4b17', 'false', '2019-06-30 17:20:28'),
('6162d568bb5a53e3d3e11dd673', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 23:42:16'),
('61635c2b8d4dbaa43885928f9c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-07-04 05:05:18'),
('616940faeba38b6f7f191b7b95', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 15:30:00'),
('618fe1127412983a4688183533', 'false', '2019-06-30 19:10:17'),
('6191da941177325a4ef5c8e23d', 'false', '2019-06-30 22:12:21'),
('61cb4d0268250056d588b67b60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:54'),
('61e2e3f326af71f6034f219991', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 18:56:54'),
('61f7ec24fa69b719bebea84908', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 15:28:50'),
('6221057c0e4f457ec0530b6bad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:16'),
('6228dcacff3d96ee4df9de548d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:51'),
('622b0e27966d7413ff7ce0175e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 13:55:42'),
('622b5b5c79f69ac6cace305105', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 02:05:45'),
('6235aca7b249079a3e70a44a4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:22'),
('6253edc7c2dcc70ec11e540001', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 09:43:14'),
('625e16705c1bbda4247485cb58', 'false', '2019-07-01 01:48:13'),
('62657da3ee91739167206578f1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 01:33:19'),
('6280356f8dc3a074a6231aa157', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:19:58'),
('6280d8edb83324011ab0337093', 'false', '2019-07-05 15:10:58'),
('62b440c0618bd3316c8ef9d463', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 14:44:03'),
('62ba3bd603d131557c4baa78fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 16:18:43'),
('62c37c95c9d786c1d6de3d8a32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 23:03:55'),
('62ce1991039ab64498d0d81451', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 13:34:58'),
('62d076baa92e8d72990c3863be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 02:37:43'),
('62fc0abc7643d7335958b2f54e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-06-30 18:46:46'),
('63057a35fff0ff80ff2016b8b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 12:49:47'),
('630a057090f76dd6762a31aba6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-04-17 08:01:42'),
('630aa5671c273ffb6c9b5738da', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 15:13:14'),
('631a08dcf387298a8971e6b553', 'false', '2019-07-01 01:28:20'),
('635a057c66db705faa0d14b93c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 04:38:30'),
('6360aeb1d7a1c351f31581d8f3', 'false', '2019-06-30 18:02:24'),
('63692a0c52ab6065f010469c73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 06:08:42'),
('6377f00acaa58c2d4a508b93b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 04:09:30'),
('638dfb121d889b7c4fd1f1ef0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 23:32:36'),
('63941310264f9ce9ef9476e317', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:14'),
('6394342c7eda0a84d955ab46d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 15:59:20'),
('639d97637e783acec6d7af4a30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 12:47:36'),
('63ad9cb6c89c8e7c27ffafab75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 17:39:59'),
('63bb14a344c2700b8f42abc7e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 12:20:58'),
('63c0c3bc7cadb2ad9f05f04d35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 21:05:49'),
('63cd9e7d03e3360ac7c20191ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 03:00:39'),
('63d5635d96bb3f82cdc40b02ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:10'),
('63f7495cb75673306bc1ba6781', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 22:37:15'),
('6412b4bd1bc11753421f56a009', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 08:01:39'),
('643760dd89d73dbf58a0fb4450', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:22:19'),
('6444b93fe9d9d51263c9ad00d0', 'false', '2019-06-30 22:16:59'),
('644732105e322a8d89e8e67b41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 04:08:51'),
('649527e20b726d910bcf497b4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:52'),
('64a14b7e20bdf44e8b2e5bd31f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 13:47:37'),
('64ccb0d2fa7a033a6683d8f916', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 21:21:36'),
('64cd7615721c5c6e0e28ae7aec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 02:17:58'),
('64d5416eabec56df567d425f9d', 'false', '2019-06-30 16:01:02'),
('64f09f56aeedb0dbe8a7c5f49e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 11:47:14'),
('64f57b4542d428a4b1f67f9d09', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 13:28:45'),
('65247e0f8be91b702912ddd924', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:48'),
('652d728a7a6075bd3e326b5225', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 13:58:09'),
('65382eee40577d852c9c3b5685', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 17:36:50'),
('6544b922f687c3300450ae48c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 19:03:03'),
('654ebbd61677cb6b52b6b6bd34', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"wishlist\":[\"42\"],\"compare\":[\"42\"]}', '2019-04-04 13:14:19'),
('65600169ac70172b52737623b4', 'false', '2019-07-01 01:21:44'),
('6582454ba0258fad3211410163', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-06-13 18:07:29'),
('65926776b788180f217fa50148', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:19:19'),
('65b3cd0124ae376a4ee32d6d51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 20:48:47'),
('65bcf60790644742959abd5ad1', 'false', '2019-06-30 18:30:08'),
('65ca4cc97c59405af2f666e79a', 'false', '2019-07-05 15:16:32'),
('65cd8132a747c661ba2ea03bc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 06:16:49'),
('65d9c4983806911917fd789082', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:49:35'),
('65f083d99d2674ed55b3ce758c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 16:18:32'),
('66002af8ff6059d638901673f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:22:19'),
('6602264a6d6165e6adf601cacd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:07'),
('660d3dabcb978371a34f2c1085', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 07:30:56'),
('661582f683c023bfe1bf27ce6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:05'),
('6620c3a47efdb1665492add0c2', 'false', '2019-07-05 19:55:36'),
('662a906a8f3a9c48b1f40987db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 15:26:07'),
('666e19f23533f74c1ebe6c0983', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:03');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('667c0605ab1dbb4a32de750886', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 23:18:57'),
('667fd6fb31d8b8cf78246abb76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 10:50:57'),
('66810d88561f5a2a627eb85503', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 08:03:03'),
('6690358bcd703fd57ecee31953', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:14'),
('66b0d545f23672f6496ab8870d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 14:33:59'),
('66dd0c3f5e6729929a490d13a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 20:30:09'),
('66dfb7048c31d1ea93f5badd1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 20:02:36'),
('66e8c9c66a0b170102a63e7624', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:43'),
('66f8529bf2206fda550abed2f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:44:30'),
('671b977cac17b6ea48c9b07255', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 05:43:01'),
('672f63f0582ef4a02549ea8331', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:52'),
('676adc4d105e413c915781ff11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 09:02:38'),
('676c50e16cec5a9ae5f2f88665', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 04:40:24'),
('677480a01efed3ebff56ee63e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 05:32:10'),
('677b2ab2c124a77a91f2fc65c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 11:49:42'),
('678d054aac6285b50bbad30664', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:57'),
('6790bfe2e581e344b758850bf8', 'false', '2019-06-30 15:38:49'),
('67a776724c9407a801b11da39f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 06:55:12'),
('67ad8342505f487b7cf02280b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 17:10:04'),
('67c5f27e9b26e67aaba78e1032', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:48:04'),
('67ef703dbcd67a676a56c17fa0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 06:26:19'),
('67f2ebba56ce429669400c6377', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 23:15:12'),
('67f5ab26a9ba49e63692fce468', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 02:57:10'),
('6848d5a6729d6986d5b08b5ce7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 18:48:19'),
('6849bcf807a9039cba60577a39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 02:39:35'),
('685556c83f1a57937c5a300edb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:18'),
('68590c0410753c44d7478cfff6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:40:39'),
('685a27596cce36f0b71897085a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 20:42:00'),
('68655e3e99fd3c0053d4ab6e3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 12:32:40'),
('68660b76939a0b2ca98c031232', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 22:40:25'),
('6889d1077b4067e6d7313b02cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:48:14'),
('6899f569ad23cc6d6853747fb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 04:33:01'),
('68a81b3557e61809741f56bea3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:40'),
('68b8af21a67f73d0a0a50fd1be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 09:05:19'),
('68d88303d26e73887b87c4a665', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 15:01:15'),
('68dcd8304af45269dfbbf8e1d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 13:53:59'),
('68ed36d2c07699e45c2ebd4c98', 'false', '2019-07-01 04:59:41'),
('68eec9e2cf0ab6a30883c8a285', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:50:36'),
('690847d5c35044ab7cb67ac044', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 17:29:52'),
('69529d22805225d2b13a211722', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 15:45:18'),
('695a3221f2727a4939555a54bb', 'false', '2019-07-01 05:04:54'),
('6960de3be2d4b83a6d968837b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:44'),
('696ea81628b8255b94f5fe04f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 01:32:53'),
('696f6f8fa69b9cc6af09117167', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 21:50:33'),
('6979645a1b84380a46f484e538', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 04:14:02'),
('698634c2b55fe09abb05ea6bb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 11:01:11'),
('698eb629b0751409e2114bc2c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:46:59'),
('69ac318d77a02ef496599e44df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:55:42'),
('69bd4148a10ddb80abf59c67b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 06:55:32'),
('69c9705fb1e3ceee1f1e81341d', 'false', '2019-07-01 03:39:48'),
('69e346225bc89096dc75c310c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 03:42:00'),
('6a1f596a893db4d3b562912541', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 14:12:22'),
('6a2e290b4ceadbe1351fff4e06', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 15:37:04'),
('6a665a29a8de93b6097c261b05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 12:50:19'),
('6a7da7f6e4f0dc5e80bcc248e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 13:55:40'),
('6a9437f65e49ce3f70c3e45f3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:52:18'),
('6aab524a29ca0468b8ab523b8a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:55'),
('6aacedf7d9548aad292ffbc376', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 16:02:28'),
('6ab44ae3ef8ff97068a81c9584', 'false', '2019-07-05 19:21:07'),
('6ab751f0666fc1841a51888606', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:43:03'),
('6ac7a44313b64800dec5680851', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 13:29:51'),
('6ad108ca533461a1b196519f38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 12:42:31'),
('6aea08ad4575b20f8ae0c5dcea', 'false', '2019-06-30 16:04:01'),
('6aee926b9794684dd5986a1bcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 08:34:04'),
('6af4d9f7e7ef7c70d343969604', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 18:38:15'),
('6af9c31f0a9808868ae633039b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 05:38:49'),
('6b0e790ccba2dededcbda062c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:13:48'),
('6b2396bb19c68126937f0937c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:22:46'),
('6b32298e00244a323bbd863bc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 05:30:53'),
('6b4c36e168616b6449125d225a', 'false', '2019-07-01 00:26:57'),
('6b56d6506f451659fcbf9d1189', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 14:38:56'),
('6b7e8e034e8bb3889880a7d503', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:39:51'),
('6b9d31ff2dc37122de3dd44e35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 19:43:35'),
('6bc30e6025cfdadaeeed9d390f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:16'),
('6be8cdc5929b6e493a1ee406d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 05:34:13'),
('6bfad4ae6bf6840262491465d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:56'),
('6c00ba8deef90fceee9bd09b7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 00:53:40'),
('6c0328e0e423499a519f193d97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:20:38'),
('6c05060a314c252b3e7990b23c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 15:10:41'),
('6c0f71ca8197ff2f25539a9a9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:22'),
('6c1357984101ba202bba6eb626', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:56'),
('6c1abf023d8fc540021a97693a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 17:06:32'),
('6c34c3f766af79805a2c6eb280', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:52:53'),
('6c39477007b8338077bdd3c657', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-07-05 05:53:48'),
('6c41682c3154c793c7eda90f63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 00:12:43'),
('6c6584ea6f50d2b8c714ac7088', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 02:38:30'),
('6cccd30d179894b3b5c3137c16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 04:57:23'),
('6cddbb167892ae669e2bd66347', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 13:50:37'),
('6ce60d7675b5c33abbb1f405f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 12:45:59'),
('6cee5544f9e533b43e3f3b41b2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-06-06 03:40:06'),
('6cf469256693259797655e1985', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:46:50'),
('6cf469aa23cb00eb2a2bcb5b22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:41:18'),
('6cfd4953ae5b2e88e64cb3eba0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 03:32:35'),
('6d013f839fef4f4ad7e9f4d611', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:54'),
('6d141628c9b4f06e6e1cfbdb0c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-30 07:27:32'),
('6d23e813711b24c68b8f4d48df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 12:43:11'),
('6d3449a05545e6b60c3c3e6804', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 03:16:00'),
('6d4015916bf7cf5d6163499f58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 20:10:01'),
('6d4582315bcfafa0ae66306cae', 'false', '2019-06-30 18:54:23'),
('6d4ed6f1255f0bbdcc508323e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 11:51:28'),
('6d5526e3633ecde9b42344bb9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 09:57:12'),
('6d5cb8beb6d719d884f8594e76', 'false', '2019-06-30 17:27:10'),
('6d6716be823b4e8aceb67b823c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 14:39:24'),
('6d875e6c714653e298c1b040e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 20:16:50'),
('6d903fcc1140243753f1efc498', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:23:22'),
('6d9ecf6e101ee48cb0e3f36b63', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 08:14:23'),
('6d9fcf06077f9f4361095567e8', 'false', '2019-06-30 20:28:18'),
('6da944d67e4f070d6d253e3bfb', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-06-05 05:47:20'),
('6dbfdb9180d55c364e7617a6fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 19:07:57'),
('6dc93db02785624f5ef1674174', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 18:12:09'),
('6dea97749766c0297ee7d9e1c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 20:48:49'),
('6df4cc8b0eff94636906f91207', 'false', '2019-06-30 15:42:22'),
('6e22929d97b2bf6b3beb3d726f', 'false', '2019-06-30 16:23:12'),
('6e34db1f3c9be22db912d6124d', 'false', '2019-07-05 19:36:48'),
('6e36fdbc8a13aa4bb968f045a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 15:01:46'),
('6e4296eaa3405e435a452e6f76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:21'),
('6e96c85fc04392cfc89d720735', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:19'),
('6e99e39840bf93cc31114319c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 02:22:18'),
('6e9caa46bf2e30163553a7d6c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 07:37:28'),
('6ea0a7ccd54d0aac56c9e3b4a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:44'),
('6eb233a2822ac91f9ea9523c2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:26:43'),
('6edbe052ce93f6bb84a5d57be1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 13:29:31'),
('6eeb331d075e5d3b34ae1b57d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 07:06:32'),
('6ef832b40d9fe183c6e9eb4c21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:41'),
('6efdeb8cc910f6c3d3da657042', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 02:35:34'),
('6f053614592d48d3a8cb4647f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 18:06:43'),
('6f1c7b45620fac932dbf765ea9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:59:52'),
('6f2adb450e67a43e27e9b8a7d4', 'false', '2019-07-05 17:31:27'),
('6f4ce0fe8e6fd5091130082f42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 07:33:11'),
('6f7c6bb876b702ed1e1673aa36', 'false', '2019-07-01 03:59:46'),
('6f8376f05c035f5f01ebad2099', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 07:56:38'),
('6f8aca3b5ccd0599dcfb9a826a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:20:32'),
('6f9356a8b2049a3520320347be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:41'),
('6f99d47c6ad20140777516ab9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 19:30:57'),
('6fb0b0548422f919a30299e12b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 20:01:41'),
('6fb589951be5d5d7a3ba2dc8b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 20:40:32'),
('6fba8cc40b16ef946242401c9c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:22:38'),
('6fc1ba0ea2f1c657b827f67aa4', 'false', '2019-06-30 21:53:13'),
('6fd00c45fa665949f56406a1d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 16:28:27'),
('6fea976129037e25e147a02207', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 18:25:01'),
('700d932a4110f68acc7d7a867a', 'false', '2019-06-30 19:59:52'),
('7046dea43045b2b9de3faebf30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 21:59:32'),
('704a5a369e93c90148d7481925', 'false', '2019-07-01 04:58:11'),
('70666334c9a0401f6684d82e8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:05'),
('70714ce6f47d7a981956681c05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 02:55:34'),
('709493ba24e2b8841720273861', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 19:33:32'),
('70987e77f048fa1e6857ed5f7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:48'),
('709d4af75dd30fe2739241ccd3', 'false', '2019-07-05 20:18:55'),
('70ced348c2f355f1cc0846c7d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 08:36:19'),
('70e739d9211d3b8118719afa54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 14:53:01'),
('70f0f2be830408493446744a61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 16:41:55'),
('70fb474c5757254668d3ea2ca3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 19:48:55'),
('710f04a595bd19048d76cdf129', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 13:38:14'),
('7111f8199f07f119e9489ecbe7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 01:06:21'),
('7124440782f74dd426fc04fe2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:10:33'),
('7132c60d9d4ee27d7b9b0ee7d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 15:31:30'),
('71360a2559ff69e3e9f15be71b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 18:57:06'),
('713f5539665a9389eab75180be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 03:51:46'),
('7149a102bd120a6597f212513f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:36:41'),
('71681c1827ea596a10a9edf9d0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 22:48:39'),
('717a0cb85326516048aabe87b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 22:49:32'),
('717b5fd9345b2bd7d323a35c70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 17:38:27'),
('717f7d628ed8669a1d8f92bc6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 17:11:20'),
('718dc804fd06ce8180218ce17e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:13'),
('71935ae47f209e4b89dd0a9042', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 02:08:10'),
('71e149460ec030872a43a46567', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 11:32:24'),
('71f430145f59efedc33390bdb4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:27'),
('7215cd7da9531c42d4eeed3784', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 03:40:45'),
('7220f09128b5880f59a81bb201', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 11:00:13'),
('723547a70e7426a986cde3d4a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 03:15:39'),
('723e1b75497cc602f42e8cf4e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 01:43:33'),
('724b9b1d904602f08757de9e4d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"1\"}', '2019-05-15 13:57:20'),
('7277ffddf2eed55c4d0491853f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 22:26:06'),
('728157506974fec7bb16bf5d1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 10:33:44'),
('728b802176a7e470549d2771b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 04:22:10'),
('729a41b8be1dbbe766ce0e7bbd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:52:00'),
('72bb844d9ac0a7591a5bc4b525', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:53:32'),
('72db87ac0f82656d2e122c7f0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 04:46:16'),
('72f500962dc2af8feff32dece8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 07:55:30'),
('73209a5c28318bb5df74082380', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 10:58:50'),
('734e671a08d6fdfdcbc796a05d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 01:34:01'),
('73582b14735354945c5ddcde6c', 'false', '2019-07-05 19:31:22'),
('73723f8e388fe3d8c1634caff5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 23:08:42'),
('73784a291c48b151455ad22924', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:39:49'),
('737d9d19e5a5cd9f3e3de561ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 05:42:55'),
('73850202aeb7ba73629ea3968a', 'false', '2019-07-01 03:20:21'),
('739b0b79b3ab392ee888572664', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:51:08'),
('73c15cf2b1dadfffa576fc9885', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 21:28:14'),
('73c3a03f9ad835407f69c9db53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-25 15:10:44'),
('73c43161271fadc29f9a9206c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 00:27:45'),
('73d821de652d4ea2fbb0ae6986', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 07:23:01'),
('73fdfc72df2e41bdb47e10bd4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 16:49:35'),
('74195672bed3beb2c3441cf914', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 10:32:41'),
('7429debc1770c66c7ed20a227d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 04:04:24'),
('742c3df8d1b88c0bf98e78529d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 06:38:25'),
('742d947dc8c76b6e5763723684', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:47:27'),
('7446801b2053699d7a3bdeda74', 'false', '2019-06-30 16:49:09'),
('746daaae554e2cbd4158333ff4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:34'),
('747ae652d59e760ff85afe113a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 03:27:36'),
('74a1b089355ec9efd3ba102458', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 03:37:18'),
('74a464204316776501319921b6', 'false', '2019-06-30 22:50:07'),
('74a70f1d868c65f3beb93e45c8', 'false', '2019-07-01 01:02:25'),
('74b7d575e1b30fbcdf2c355c02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:36'),
('74be57ccc2eca1c5b5156bda82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 02:19:49'),
('74c2bbc8a8fb2138b7c81782ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:14'),
('74cd4d045e148ac4b9d228b446', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 00:14:20'),
('7508b5d108f5198e6b09ff9490', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 05:35:14'),
('754fad8b7d7f1733049a54ea6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:07:46'),
('755151a74abd27cd567483ab86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 15:28:48'),
('7571f2fd1788851b296f735ce3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 00:39:20'),
('7584460c480311bc69fc9dfd85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:45:12'),
('7597c6228bd086cd81902dae6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:52'),
('759c23e858f805943856faabe8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:44:38'),
('759d9ee69b0a069a7724dd0cc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 02:45:54'),
('75a55109e5fa3808f5f774b9a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 07:43:16'),
('75dc1d33a3996bf549bbd49296', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 06:04:08'),
('75f676581fea92a039a8cefc21', 'false', '2019-06-30 22:18:07'),
('760cbfab44529321ad0063dd26', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 09:08:20'),
('7617718de333178f9c7489c709', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 23:37:25'),
('7624c550e03c7444972b341986', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 15:28:49'),
('7626e71a371496a6a017daf450', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:55:21'),
('7646fdb981823176f494f7f3ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 17:00:02'),
('7648be832c91e1fb758eaa0416', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:52'),
('764f6d00e1d957f440ff41ff50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 18:17:57'),
('765d07523508b43f24b86fab54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:00'),
('7673a46c99cf97752f0b87db7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:09'),
('7691a272a7fa134d66b270560e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 04:43:38'),
('76a6628b5093f5be1728933a13', 'false', '2019-06-30 19:52:50'),
('76a7ceba2ebc0a6c96743caa54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 20:11:08'),
('76aa64140aca9a7f05bba3ec8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 03:27:58'),
('76b5f33cc46a5d3436412fe1a5', 'false', '2019-06-30 19:27:03'),
('76b913a7f972f6fe88f8c88b3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:51:32'),
('76c75d6a007fb068e7d3720dc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 12:09:22'),
('76dfadc4def0203265978a4899', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:41:26'),
('76e1e310cba9ff737fb799d934', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 10:21:38'),
('76eb8a833c51efd27c38cd4023', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:09'),
('76ffa6f76b1e2752ba27e7cebb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:59'),
('77083018636afafdc609b5959c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:07:07'),
('770b321b875e541385b4257c11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 00:38:04'),
('7727b52b8354fa1b0e41905286', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 05:04:06'),
('772b90efe86cb6702b67605b8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:40'),
('773e1b3aab13dbd1027c0deab4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:46:15'),
('77488e3184aac3213e4f322212', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 07:44:33'),
('77508f73784acd08e5cf63d2d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 08:45:50'),
('7751d72001e6218270d46e3c01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 03:22:40'),
('7754e6ffef2d64fddecfbaf393', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:40:36'),
('777de66767483a361f4b23ec68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:02'),
('778697c7f2d2012add43f3993f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 06:55:45'),
('778dc113b4669bb51c83fa8669', 'false', '2019-07-05 16:12:55'),
('779a6f9925558cffdedecec49e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 08:35:02'),
('77b314547d476fd288de63b876', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 02:19:13'),
('77c1a8c31201e5e846c99b7adf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:10:29'),
('77ce477517f77826a1cafd6b49', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-05-18 00:02:03'),
('77db9748da71f33d935ba079ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 04:45:30'),
('78242938ef958b69e9e48170e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 08:10:32'),
('7834deede501469e9228fe9d76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:50:57'),
('783507031c4aa2aa9b90d75704', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 04:30:34'),
('783e1282f22fea01de0505291b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 23:42:13'),
('7847e8010084a5ec9993a0ae93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 17:52:16'),
('786c60b28a335db800e30acf45', 'false', '2019-07-01 05:24:00'),
('78789dded581ea5ba393beed8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:38'),
('7888adaddf93332d20e685116d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 16:14:07'),
('78928edf197fb02c8460d7ddc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 13:03:58'),
('7894f1722035311a047caba964', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 23:42:09'),
('78a7969d6c600569cfbd4ac8bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 05:32:04'),
('78aebdf0289c817866e88a670e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:04'),
('78bc475a007564f1c47c8ac895', 'false', '2019-07-01 05:15:06'),
('78ce81eaafb8b501fdc821cf30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:17'),
('78e030a8082ad0e5c438892c7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 18:57:08'),
('78e5fcec2ce928e05ffdc30fad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 20:19:37'),
('78eba8e0a180f72b2578d0db4d', 'false', '2019-07-01 04:21:25'),
('790345088aefdf991d007a6586', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 18:08:55'),
('7904c9a35d195d1b5891a01725', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:25:37'),
('792b1854504aff90d412782968', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:53'),
('792bb06392677d4909ab421101', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 02:48:12'),
('7937863c702e9360b2aaf10549', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:28:33'),
('79468ab96ddc9963bba60fb5d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 16:11:19'),
('794aea1ab0abb171c88beb3a47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 19:36:51'),
('796f35e6efc4e742df19949e3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:24'),
('79873abb6af28188e6d5b20aba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 10:00:18'),
('798875502109926682c7eabe08', 'false', '2019-06-30 18:48:21'),
('79a5cbc5680babed73c5576ad6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:58'),
('79a73feb4adba6a02d15b70f20', 'false', '2019-07-01 00:34:09'),
('79b7dd7197fdfe92ac7c2a6419', 'false', '2019-07-01 00:52:53'),
('79be6d6c7627168dfaa0ef4043', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 01:47:06'),
('79c2b52fb6688c2857d39b4c6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 19:50:47'),
('79cad2617236bd69fc22e1d47f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-08-14 00:22:49'),
('79d11d3fec12fe650f6798b05b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 08:40:17'),
('79d6ba66e4ba8c899109d136ef', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/address\"}', '2019-06-13 18:07:41'),
('79d82808818cccf95a66d950c4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 12:22:11'),
('79eb8f01898c892a6e0dd2d76b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:09'),
('79f004731327e3288e1bea0c60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 17:37:07'),
('79fadaa89719d2acd6ae803fa1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:03'),
('7a0c5060e4bf7fa1e49ae639ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 21:48:09'),
('7a0d987ee04950492a08d4dada', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 10:35:12'),
('7a3b694297d3beda06e25bcae5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:01:45'),
('7a3fa2d39eb9bcf70d3bf9b5ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:04'),
('7a489de0e97e944696d5b91d5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:22'),
('7a52afa4c8288ac9a62049c75c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 05:27:45'),
('7a8603d8322195ab1e425dacf2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:45'),
('7a918470d4dfb4731e6ed375ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 13:51:07'),
('7aace00c188c75774bb4ed31d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 15:27:10'),
('7acac1ee0dd2259350157f9936', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 03:11:07'),
('7ad4d8e6135b066dcb683da7c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:29'),
('7adaba54c514dd2485c8b0bdab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 08:21:47'),
('7b06ae2874703b0ec3291aa677', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:22'),
('7b089c98da493018cf3ac70c6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:29:48'),
('7b0a6a15ad07c9ace3462142aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 04:43:19'),
('7b161067b3e7a7b79eb21a9a93', 'false', '2019-07-01 00:16:33'),
('7b29257155d9e713ab0557303b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:00'),
('7b4d983783fb6f7a47a3e0e7b9', 'false', '2019-06-30 22:14:08'),
('7b514e896f77721de8b953d975', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:54:03'),
('7b5ae8b90d245803aac9f9dffe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 02:45:58'),
('7bb15facf2f1ec9f00259dc917', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-19 02:18:59'),
('7bb3422ffab1ec686eff242d07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 02:05:47'),
('7bb5e8e47ee9dec32ab8d0d1b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:07:49'),
('7bd9f234067e3db44c4169cb68', 'false', '2019-07-05 15:19:32'),
('7bdccb1eeb237e95071d9af5db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 11:52:42'),
('7c1c968b8a5ca38cd14eb78a91', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 00:45:59'),
('7c1d28849b9ffa0ca40c73fd34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:26:42'),
('7c1f334ee79ba5f4511b975d45', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:51'),
('7c3f7a22ad4b242744991b34e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 03:19:35'),
('7c4ed0ebb2a6bc3a516789b12d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 08:22:16'),
('7c5e9ca52ce9e125791aff9d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 18:00:04'),
('7c606a795b8e960047180cb523', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 15:49:55'),
('7c7179960e5beb2da2222b78da', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-06-13 18:07:37'),
('7c8ae6cc92d6df539399c73521', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:26:15'),
('7c901ff8f1ab838e5788abeac9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:18'),
('7ca22dcf9b09c27dc4bcaa5f12', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:44'),
('7cadb10741862d6d00e9ccfe7b', 'false', '2019-07-05 15:15:54'),
('7cbba3a64d377d0f3d60710045', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:24:22'),
('7cdc79029dc84ffb5f49a1fe9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 12:29:12'),
('7cdc9dcab739e87c38c6b53303', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 14:18:11'),
('7ce6ba6b17027d22b431b8e221', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 23:11:42'),
('7cf3aca2fd9f4b2e112ddb0cd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 06:10:14'),
('7cf43036ce2046d6b598a958b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 14:07:11'),
('7cf8645c796902c454eb6367fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:37'),
('7d0714d0b83b08920067e14bb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 20:14:38'),
('7d4e9e9822438d782c28016d72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:31:51'),
('7d58fc2b7cddef22ebf4360c2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 09:44:18'),
('7d5ac595d98dc1c7c72fee19cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:24:06'),
('7d8759e0e0e1cb1a6078d2b320', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 20:36:46'),
('7d8cbd9d4fa390d0e50e5daa82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 02:17:36'),
('7d8cfb967313bf03fb7921dd2f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 15:50:29'),
('7d92ca8a6699502173ddb79273', 'false', '2019-07-01 00:46:53'),
('7d9559ecf6d472e2819544e00e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 07:45:26'),
('7dafc2f998184968eef2c29d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 07:22:55'),
('7dc2a27286e62bf1d0af13082c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 07:33:13'),
('7dc6927d32cb5d09e8676c0305', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:27:50'),
('7de4516badfa817bec80f1c506', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 02:34:26'),
('7df9a758d92ba1dbfa5c85d4c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:22:41'),
('7dfabb9dcbbdaa47d90c204fc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 23:01:51'),
('7e0082cfc4641bc7aaebfc4391', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 23:29:57'),
('7e1e51d4edf97bb48768a00665', 'false', '2019-07-01 04:33:37'),
('7e2bb73ebb343a13d1e6b0241d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 21:15:03'),
('7ea01bc95804e26dba68619827', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:13'),
('7eb8945a7943ccc293c4519a82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 00:47:24'),
('7ec92eff26683bee0c9b6fb49d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:45'),
('7ed9d5550adf7ad961f84401d7', 'false', '2019-07-05 15:44:11'),
('7ee1e80a57634f60159c7387ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 12:52:22'),
('7f2417d589055a1de1ea65165c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 17:49:11'),
('7f347314e2f0c3318635fd5b20', 'false', '2019-06-30 16:46:38'),
('7f395e37e89b437fcd09ce67e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/address\"}', '2019-04-18 16:24:56'),
('7f44d63a53727f3217348e6c2c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/reward\"}', '2019-06-13 18:07:38'),
('7f55cef516c717b56913bb9493', 'false', '2019-07-05 18:25:21'),
('7f5975d0bc855f603fa72dae75', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[],\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-04-27 21:55:00'),
('7f69bd300547d1b4303e1dced3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:16'),
('7f734c46c3286fd5167e1dd5ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 11:38:19'),
('7fa2c62c0ba9aa677c067f435e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:27:24'),
('7fa6dfb3622406dba8b264fc02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 17:06:44'),
('7fa8cfa7cc15eb48a35e2838d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 20:02:33'),
('80006216864890ec432b65011d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 14:50:07'),
('800d6eb542b63da93256ee48dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 14:49:45'),
('802125226fcb6e05f79c1afdf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 22:10:32'),
('8021d63459ab5f40919b655bf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 15:26:58'),
('802403ca5b2cab425d71f592d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:53'),
('803767919976e32fa4e9a6cab4', 'false', '2019-07-05 18:08:11'),
('803b16d83aa3e18dfcb941d032', 'false', '2019-07-01 03:50:22'),
('804c2a519d73ca61bf9b60fba0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:20:02'),
('8083d3417d8469d38a581f0d97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 00:59:38'),
('8099e3eada11f854d2ad898f8c', 'false', '2019-06-30 23:35:51'),
('80ab1d10b8477db5e782b4b38a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:04'),
('80d0a4f165284ac4de55d52ca0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 01:22:20'),
('80f2f7a77a061af840cd663a51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:43'),
('80f9185d7f1641d4f4017e2e9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 02:45:37'),
('80fa9638ce417fc8053369b945', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 22:06:06'),
('810d23192609ebc95d6fe6d385', 'false', '2019-06-30 22:56:50'),
('8123865cad8ba37f00a1a1b0b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 09:45:24'),
('812b29a040974d01f041d36193', 'false', '2019-06-30 22:22:23'),
('813c7b98a0508cc6cbb421d085', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-07-01 07:47:24'),
('8142875b14772689a0f1ddeb52', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:08:06'),
('814c4b71336031199d8c82efc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 21:39:31'),
('817369502b685d8067c2ee3189', 'false', '2019-06-30 18:23:57'),
('818fcec3bc15ca48ceb2b53330', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 20:21:02'),
('81a577407ecfee0d776789962a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 17:10:12'),
('81a906b6c18d1468aa633f2baf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 23:43:07'),
('81b84d8777e0a4828dd5a4b72f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:34:26'),
('81c4f460c884f041c904d9e51b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 01:35:20'),
('81f6527aee1c58f2b5ab79d1a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:13'),
('823d383850ecc6ccec9a86c48a', 'false', '2019-07-01 04:03:56'),
('825cb01202823e3a8690516da2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:27:33'),
('826b7613abc5ad8e7538947b81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:17'),
('826c823f7dc2d39bf1addd1470', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 17:29:00'),
('828f129d90296b7d9a59c090d2', 'false', '2019-06-30 19:20:05'),
('82af45e1ddc2a37a73a5700e85', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:35'),
('82d7a81b369767d23a92716114', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 17:57:40'),
('82df3a0554add292cfc5f32196', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:11:51'),
('831efb69bc9e608d30db5e07b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 06:24:22'),
('83258a953d420894faaa183274', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 01:34:26'),
('833ea07a572731a4a7b5ce390b', 'false', '2019-06-30 23:01:06'),
('838de5b4e6885eb7a29404b25c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:12'),
('83a23568cdea4a5ef5705caec3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 09:24:05'),
('83bcd26531b1552a3697c6435a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 01:39:11'),
('83cdff28d4e20199a6c741231d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 01:19:34'),
('8401ae4d34a2e47dd41648e1d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:09'),
('8407e32758d52d88458c26a2fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:04'),
('840f5c2958ca8d918fe814763e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 21:47:11'),
('843165e070f0f6a7bcdfc04fc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 10:56:03'),
('843477a2840c0fea0947de3406', 'false', '2019-07-01 00:29:33'),
('84348f2ec96b1676ed481c0e72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:01'),
('843f3f21d73686e8103655ef10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 17:04:38'),
('844a6a377ecd7988711d1a81ad', 'false', '2019-07-01 01:06:44'),
('845c31f5064f82b7b610b16a3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 18:25:39'),
('8464b0398fa9dacd6d9de25eff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:10'),
('8481db6bdac020a62d0598970c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:21:45'),
('8486fb104b39e666b262337fb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:57'),
('848e88634f3c33635893e0ba65', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/recurring\"}', '2019-07-25 16:18:23'),
('84913d7b65160bbf58a50f8a69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:48:32'),
('849509384a944a58323cf0599f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 05:11:03'),
('84cc00fe93c64a037b36cedf83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 11:47:13'),
('84f38a5412d62f430493892df3', 'false', '2019-07-01 05:43:36'),
('84fcbac94aad4baca34134dc8a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:47:01'),
('84fee68e88b4feb91038d832f4', 'false', '2019-06-30 23:41:47'),
('850233cb6291d293eb810be836', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 14:21:58'),
('850fb44704bd8c3843944097f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:34'),
('851ca102f3da4af356ab687ddf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 06:09:54'),
('852687f19b0f1b6cdf22391f30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 02:20:28'),
('852cbb5dc8a259f5bdf400f91f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 10:53:43'),
('8533e2c9211c935529c615b740', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:26:20'),
('853e365cce02bb81c76018a33d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 18:39:55'),
('8586e5781283d47c981733c12a', 'false', '2019-07-01 03:42:44'),
('8587a839da33a67b31cc86275e', 'false', '2019-06-30 23:16:22'),
('85b3464dd8143fab3c56854c6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 02:13:03'),
('85ba358fa10b86d03740c50150', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 01:31:03'),
('85cef66e7cc20ec01967143634', 'false', '2019-06-30 16:25:56'),
('85ec8c4379f72a75ae1ed5db32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:57:09'),
('85f1f840efd7228fe398d90731', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:39:44'),
('8609a4b8adbb2d7b3ac8a9c25d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:22'),
('861214fccf88ca5a9cc1b3c17b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 11:02:24'),
('8642bf2ec1703026b9740be62a', 'false', '2019-06-30 18:43:33'),
('866e6fe9384c8e98034f01c2e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 13:01:58'),
('866f9bec580d716135d7c1fd3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 08:22:02'),
('8671f30535ea472c9110a113c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 08:14:26'),
('86832a3951cc30d8c58b18ce46', 'false', '2019-06-30 18:07:08'),
('8684ba023de45a58da39cef894', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 18:42:20'),
('86bd90ea22058653a8f8283c56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 07:20:59'),
('86d78b3039ad9c61a31bfcaf0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 17:43:58'),
('86d78eb73c4413de148fa284e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:43'),
('86dc3d0463c67c6e816f652697', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 05:02:42'),
('86e23b8041c5ee75dc60129cd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 13:14:11'),
('871fa70381f7e4b0d987d5490f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:56'),
('874f7c239e2f435d085e5cba0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:24:00'),
('8754ceec0c255ce688daba0260', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 12:37:17'),
('875a971f8a070f66aad5f31e49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 20:21:43'),
('8766c1c752ca02792e3f2c47a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 04:14:19'),
('8777f89af5ea5ebe87dbde3735', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 04:26:14'),
('8793a204effa7111f990ee208e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 03:37:20'),
('879dbf59fbf7db84a3e4cbea52', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-07-01 07:47:46'),
('87bb355688aba44f86d664f0fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 15:34:19'),
('87bdf649f7172eebdc12514633', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 14:01:02'),
('87e85efae11760245c3452c3f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 19:33:00'),
('881ebf12b9b9afe9b58f3ba915', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 21:23:51'),
('883aa962d0aba434c0aea69343', 'false', '2019-07-01 00:54:04'),
('884b8f6fbd6f810e03ed3e4f27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 19:50:03'),
('884bb5dba0f42147c34c9fec42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 14:36:52'),
('884e9bf47dfba785e2ab136351', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 00:01:01'),
('8857b8c11f0d46c34946658ad4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 13:25:24'),
('88593494e56abf4aa39725a087', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:30'),
('885d1269c9a0026770a8ab05bb', 'false', '2019-07-05 15:11:38'),
('888ab73e0c7806bcf9c5cd1f39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 09:24:04'),
('8891e8bb1578b2fd127ba07243', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 13:42:41'),
('889363952a0d1c29c07e85c47e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 02:59:03'),
('889a6c4a70f8f53b73317b8ebe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 11:48:16'),
('88b345e39f3b491f18c652138d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 03:37:30'),
('88d619aa216ebab062118c1077', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 05:14:04'),
('88d9d2443795bff8223f6401ed', 'false', '2019-07-05 17:29:38'),
('890417667b35639e4d40416c6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:22'),
('890923ce639adbedcc34c5ca1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 00:32:33'),
('8911bf1d20bb47f91b854a0094', 'false', '2019-07-01 03:04:07'),
('8913456d558ec83314c50a343c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 03:35:25'),
('8943224df22fa594788f09b509', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 06:20:31'),
('894d54411488c4f5a26fc357bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:17'),
('895338b989d0db8a2e9a14a945', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:08:07'),
('895d234c3f63b0b6dfcfb3d37b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 12:17:38'),
('8962f439b9ba3605aa2b3cd075', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 03:17:45'),
('896bebb3fc9f4a033f4784fa15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 10:40:49'),
('896ee5a5479ea5c0378265f340', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:26'),
('898e7b87ccc3bf5618e249a979', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:17:56'),
('89a54927f9103d78b087bcea39', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[],\"compare\":[]}', '2019-04-24 13:35:11'),
('89b6c9664e734cc94797cc9da4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:27:34'),
('89d9d3c1e32871887f26985ba6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:20'),
('8a058a0d1aeddf984266bc4a31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 17:15:33'),
('8a16e5c8146a57e14018ba84a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:39'),
('8a18f8f50ed610792db01dcdf7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:47:26'),
('8a4c27a5b4823768bf8f618768', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/password\"}', '2019-04-19 02:16:59');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('8a56fd0a1a118acac3cd21c427', 'false', '2019-07-01 05:19:36'),
('8a6c509905c12eb0deecb5eea8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 14:20:09'),
('8a783f285098f111c7b6fc9f24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 19:26:12'),
('8a7e4c1cfc246bd513c5638902', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 15:32:58'),
('8a8305bc2325d0579e2c67c2d7', 'false', '2019-06-30 22:02:12'),
('8a94ef518dc1ed5a7f844d997b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:06'),
('8a96130336aae88bf300a77e99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:24'),
('8a9b8174c831a1f04390be20d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 10:28:20'),
('8ab0ea8ef58b8ae2deae61294d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 18:49:32'),
('8ac6a6c71fe8aa34f2c0b98c84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 08:00:10'),
('8ad120188b213fbb14b6f67aed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 22:07:37'),
('8ad20cf991ceec485a3163ca25', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/reward\"}', '2019-04-21 07:32:05'),
('8ad7f339e0758f968a4927d93e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-06-30 20:23:08'),
('8ad8809cd1a63b6e9ede37f5a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:18'),
('8ae006eb09924d4ff6c78abb19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:27:55'),
('8ae07cd10c27e81a6d63051796', 'false', '2019-06-30 19:24:44'),
('8aed76e290c8103b5d857cb4a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:22'),
('8b1aa24301c311e82ddf14d0cc', 'false', '2019-07-01 04:26:47'),
('8b3baf0171dfe2979706e475f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 18:09:51'),
('8b3e2bbecf43ef746aa7c81377', 'false', '2019-07-01 05:55:13'),
('8b64906bb2132734e6a0f84cc1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-07-24 10:35:14'),
('8b65de11c4a686b79acaaf1cbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 09:01:56'),
('8b70a02d518d018fc7548e53b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:58'),
('8b73133b7c1124b37d68bf4c61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:12'),
('8b742909d224bb5e4f1fbd0ca6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 19:00:55'),
('8b7ca1dcb12285e057fc9830ba', 'false', '2019-06-30 22:08:07'),
('8ba2f8f5078297304de7d7ff47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:17:06'),
('8ba5badbb825ed5ebd5944bd74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 20:53:02'),
('8bc82eed613f15d5bbc14b3d47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 18:06:42'),
('8bd9fcc35e8cb88d6fee6fb2b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 10:47:36'),
('8bdcac26bed50f9ecca8357400', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:59:35'),
('8be872e47c8dbd7b4a9d749eec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:00'),
('8bfc40fe5ab84902e205c1be3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 08:25:37'),
('8bfcd0876c0261d1a977eb572d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:10:39'),
('8c022c0af7a8531c531fc8dbbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 17:25:43'),
('8c02625881725b03a339d680d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 09:46:56'),
('8c026df2a12ff421c642efde59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 05:56:56'),
('8c1255bc889b7e5bf23837f277', 'false', '2019-06-30 23:05:01'),
('8c1bbb7e4ce2f687cfdfe7b779', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 17:20:52'),
('8c2a6670df9dbd75f59f083109', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 01:36:22'),
('8c50ae044ab78c175ad6b150cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:46'),
('8c535bcb5d58016211a8509597', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 02:08:16'),
('8c793f94294e218818d6af9dc9', 'false', '2019-06-30 16:25:16'),
('8c8339e6ae148c373648a991ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 05:12:53'),
('8cb6fe24a10a40765d64f41ab9', 'false', '2019-07-01 01:36:51'),
('8cbe784743dbed17371e8876f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 16:30:35'),
('8cc52adda72359e5281f13bcf8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 04:37:44'),
('8cdad48c9eba7a6ff3c5e88b3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 18:16:22'),
('8ce521974440baddedf7bb5091', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:01'),
('8ce88afbd2f1d48a330262f71a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 04:11:40'),
('8cf9ce232a93f62024d20a6c83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 16:21:02'),
('8d146da027a4835ae3a1b7dbd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 01:51:55'),
('8d1ab9ef5435b69cc5655ea7b0', 'false', '2019-07-01 01:20:19'),
('8d344a19ddeba2fa5f31d4df51', 'false', '2019-06-30 17:31:07'),
('8d37af82f0ea7c43c44d6d135d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:12'),
('8d39101f0ad4d017227d3e00a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 01:02:43'),
('8d886de5cc9749aab584afafed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:48'),
('8d8ad868c23088f58cd9c78b86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 14:13:30'),
('8d9ad896b036bf478668f9ac75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:30'),
('8da8b02c6c32c86759515fc39d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:52'),
('8dbba392d8589858e73ffafab0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:05'),
('8dca909c48e48884b4dfa9c37b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 15:26:11'),
('8dcd72d7f126b183d6118dba92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 07:56:42'),
('8dd4ab71048f657d72a0768f0d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-04-17 02:37:41'),
('8dd6f1dbb8bf68213fa332ddcc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 13:59:13'),
('8df3acdd5d17013b4883abc5dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 07:29:08'),
('8e01db272036212035ed5e8c5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:21'),
('8e1476e960d83258113ae60aaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 13:49:17'),
('8e388ca2ab93dc078748b54abe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 09:28:20'),
('8e693a71df936ed401c4910a7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:47'),
('8e8e2a79f7975db362ef1483a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:47'),
('8ea9c66c9ec41580ee4673423d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 08:04:46'),
('8eaf73a6da3bcf1457506455c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 08:28:17'),
('8eb6e759fc35481af39ef111f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:20'),
('8eb88cefecc15cb04f40576cd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:54:49'),
('8ec989aec4ec574b1fcd0e178c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:49:21'),
('8ecbe26be30c80d4b4ecd19bdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 07:29:45'),
('8edb484d1aec4bfb956eb265de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 05:54:27'),
('8ee257131e8ee51c64e49c0908', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 04:30:39'),
('8ee9a6ddf8f7a57c5a8f6dea0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 03:58:18'),
('8ef3994f99ec4aecd0d29b67a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 08:08:09'),
('8ef5ef268c35f359dae12c69e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:17:53'),
('8f0566816266e8cc6a3992ae7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 04:22:24'),
('8f17d2951648934ab285ffec9c', 'false', '2019-07-05 15:14:26'),
('8f3c53c11784aebb6fe97f09bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 09:06:56'),
('8f51b41432b7b1ecf9b128915b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 19:01:51'),
('8f6766673cfe07d68ebf6b869a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 22:06:44'),
('8f703537f59a40fe0fa02ab2d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 01:20:27'),
('8f988ca177291fcfaf241e3906', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:50'),
('8faea67f53427bf6bbfc82374d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 08:55:17'),
('8fb97c81a3169c091d99ab7f01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 01:08:15'),
('8fbf2138c7b78fc28c447b84c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 11:41:24'),
('8fcbcca4d9714c43dc6fac4954', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:36:30'),
('8fdb2f523284e98540ec491d7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:55:33'),
('8fdf5ee61efd06f260033a8abf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:31'),
('90060a424f361762676aa9fb38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:26:37'),
('90066747cf47349ff07053dc44', 'false', '2019-07-05 19:40:19'),
('90067e01359994ff97dea78395', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 13:47:34'),
('900fdc881bd71d99311446ba9d', 'false', '2019-07-01 05:48:05'),
('9025a1a9fb3d7c8542e890ad84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 03:56:05'),
('902e5cd49fc1eb69d543d14344', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 23:54:47'),
('903135324f5d6c2cb6a7d6b63a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 17:25:32'),
('9051a69bc614ac23518bf7397a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 02:56:50'),
('90533f796190ac4691dd459ad8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 18:06:41'),
('9058a92a14f9165d00a9c94eec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 11:03:43'),
('9062c7ebf2a36cb1e1c9f6ed66', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 12:21:16'),
('907e67354899b46bedc8337a80', 'false', '2019-06-30 22:00:53'),
('90815370e98c8adf4afa09916c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 14:51:57'),
('908ccd243ea96e395c55d5effd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 19:35:50'),
('90c3d4405fe8a978e1a41feef4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 06:07:05'),
('90c56d16dae59b15cb7a8a4fd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 17:03:19'),
('90ca00a5d973722ac808b937ea', 'false', '2019-06-30 16:09:47'),
('90cb423dac37083ea02b72f213', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 06:40:17'),
('90cd9b30522e186c1cbc0714e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 22:37:55'),
('90d365e06286d45954905db4c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:49'),
('90ed9481f8117cdd74c0e7ab3e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:46'),
('90f3452decf301f547a91c8a9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:00:22'),
('91252ac783a304faf3e967e53b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 02:15:58'),
('913a677f8a8de653f976c24fff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:14:02'),
('913d7eb55fa4dd3a528df1ea39', 'false', '2019-06-30 19:03:16'),
('9152fa205d347da5293fb75009', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 07:26:56'),
('91548545cff1f243f5f8157b3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:16:37'),
('9156f450563a6e2e78857e0bf6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:43'),
('916ad0da8799be6260618bf3a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 11:29:25'),
('916ea07d1df2f6a5bc00553854', 'false', '2019-06-30 17:33:57'),
('9171de85aef2f8421a1f37e9b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 22:29:01'),
('917433beee34fd2dfeb679c025', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 11:52:08'),
('918431e1f0898a1e76692d6b1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 09:52:45'),
('918cec9cdbe5243ca09c42d1df', 'false', '2019-07-01 01:24:32'),
('91bb06b84429f54af205e11190', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:29:02'),
('91c566626f484eb50255faa1a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:12'),
('91d90cb5c4acf08014a35ffa7a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 16:33:57'),
('91e03a76e49910f0b5ff4090c6', 'false', '2019-06-30 21:42:08'),
('91ecd2b531b260b3953e921bdc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:17:44'),
('91f6067a96127802fd4c0bda19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 17:10:15'),
('921265e9200b8a841ac19031aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:59'),
('92238b746615221e5eedc11ff6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 10:36:36'),
('9234f87c0d2ebd61d0411fbf2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 02:37:17'),
('925949ffd3236e4fffcd695ed0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 19:49:22'),
('92598ee4a31b72fb33cd9190a5', 'false', '2019-07-05 16:28:45'),
('927315d3783e5309a7084d40f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 15:39:30'),
('927675f6e28c53963c4288ee50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:37'),
('92a034addc787d6562c0fc51a7', 'false', '2019-07-05 17:40:55'),
('92b451ff99e5f467b013a1a7b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 01:46:58'),
('92daaf91f66e036de0a8f58c97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:56'),
('92efef57a74d88ebff4d61d7df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:17'),
('93580d37f478c6c6f870f28c39', 'false', '2019-06-30 15:58:50'),
('938cbda6235f50a58534943d98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:36:56'),
('939b5bc94fb3f8e70aa4aedfc0', 'false', '2019-07-01 04:20:08'),
('93baf2e55cafa41be665b4bacf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:45:16'),
('93c46ae83f76692608066596da', 'false', '2019-06-30 18:47:04'),
('93d958a141a0ac1b378c9d0843', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 01:16:04'),
('93feb0c2586b392519088f9ed8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:49:58'),
('940de1645de0d115a7602f892d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:52'),
('940fc3b86dddd0c0077e54192c', 'false', '2019-07-01 04:09:25'),
('942958b3391f0353efcfd64dfd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:02'),
('94297c1a21d50f86f5b5c0fae4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 06:55:10'),
('94350a2a7ecf1be304ac6c9432', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 01:25:15'),
('943c9b8527719d277a287f10c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 03:44:00'),
('944dc78e6d1aaa084f873d8e7e', 'false', '2019-06-30 15:57:15'),
('9456430149a401ca72753e03ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 17:30:03'),
('945a4f1d32e8515e850ab10554', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:55'),
('9467bf1c48b39b0848600b071d', 'false', '2019-06-30 18:01:02'),
('94702d0d68b73e70765ab139df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:20:44'),
('9473452189ca8374c3cad0a716', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 00:30:19'),
('9476824bf1522cadbd8622be6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 02:18:09'),
('947bb92516a19df81d525b250b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 03:40:46'),
('947bba53629ddb561743368613', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 09:29:19'),
('947f79258e3c8922bda19a0d2a', 'false', '2019-07-05 15:24:27'),
('9482c5281701ebdf4574ba84a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:04:57'),
('94868fb05f21c8292279d1c787', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 06:03:58'),
('94c2e541f6e90dc283d3d4d88e', 'false', '2019-07-05 19:49:26'),
('94d089389a2532ce5f75781ef3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:16'),
('94e156578824295840dd194b7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:45:30'),
('94e549a07c27ad1c049d74cc67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 01:54:41'),
('94f3fc8f2198e3391b1998457f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:06'),
('951989c0443c8f29fc2f3b71dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:32:37'),
('951c31db129ca0d40853c11041', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 14:16:23'),
('951dc7732f8f1b7f2d53c67b0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 09:08:55'),
('952246a9313c4619140451e18d', 'false', '2019-07-01 03:30:39'),
('95327c59849b655485ada8e447', 'false', '2019-06-30 17:47:21'),
('955764dfffc95a1bbdf62b4860', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 05:39:16'),
('9563a00fcca034ebcbbd187039', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:31:52'),
('9569aa67030eab8e6471c2a882', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:03'),
('95729adb94a86a4f0739948ecc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:45:24'),
('957f5caf71d9003831c7e4bb55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 22:11:58'),
('9582c2645c61a76f3b9fdec509', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 07:26:01'),
('959be623118c381e432b35188b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:25'),
('95ab916ef0e0fc9529ecd73778', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:32'),
('95bc0052a7a34c58c551659d1b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[],\"compare\":[]}', '2019-07-25 13:33:43'),
('95d28f31659545c317e12a1a43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 17:04:02'),
('95d664ff067bbed95f44ad47b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:32'),
('95d6f9dbbfcc81cda345582576', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-06-16 14:19:00'),
('95f84d9536cc507969dd4343ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 04:37:49'),
('95fc97c14f29e195d5cf7ec162', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 21:26:46'),
('961e19378e729fe97792659852', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 01:10:20'),
('9628b2a80ad8456b749c87241f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:21:35'),
('9641080dfa12e31a767bbccf3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:35:48'),
('9649e13d3be105a650743c0a07', 'false', '2019-06-30 18:59:01'),
('9660561e238b828ac78601c849', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:46:58'),
('9665d6b591bb4d0b2e162414a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 04:31:10'),
('9679fb06478306c851ac859dfc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 18:42:52'),
('9695314cf69324598cbc0346b2', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-05-04 03:23:20'),
('96a2ba47fa691e9a305b742ded', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:26:44'),
('96a80d307787ff1ee5c0ab271e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:35:49'),
('96bc95927fa533d029c6afbaf5', 'false', '2019-06-30 19:55:30'),
('96e4e9b1e80755b168cb9453c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 05:35:09'),
('96f1fa60450f7e66c6b687c8a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:45:32'),
('96fca87e2f0e31194e48b4621b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 21:38:58'),
('96fe10112824e464b92e0d02f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:45:23'),
('972537079bdfbdd39aa16270c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:48'),
('97376f82f9511211828b0dc1ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 11:56:00'),
('9737fb1cc079715275ee2bda9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 08:46:35'),
('97413f2bf5c5759e3a4414652b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:30:55'),
('97439c6361e2f21835e38c851c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:57:44'),
('9753724dd9542bb9f7b9096bc4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 00:27:22'),
('97626384f9c89b453210d2b528', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-06-04 01:01:01'),
('977aaca64a09d64a74003017bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:54:14'),
('978319e61c3e1e56c08ce441f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 02:33:05'),
('97a6c842321137271bd829e254', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:17:33'),
('97cfd6e4610bd3dd33bd02ef2e', 'false', '2019-07-01 04:48:39'),
('97ef573220a08b67826504271f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:42'),
('97f86e0d58a66cccca310e1889', 'false', '2019-07-01 00:00:09'),
('980aafad718a9f18930690ce56', 'false', '2019-06-30 19:45:29'),
('9811a2e28ddef1cd2f49f7a2d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:06'),
('981bcaf7e92e3f7ad83457204d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 19:38:01'),
('982451e8339601a9149eb9c271', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:08:19'),
('983474fdf72edf37a1458f370a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 22:37:11'),
('983e445b512ff5c451b4921f02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:25:27'),
('9841f67530a693284c8bef6012', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:51'),
('9848c31c820db2a37ec8d4caa9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 21:59:03'),
('9855093d30653fe0fa4e7575b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:31:56'),
('9861fc21cc1c8e8c31abbbd2d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:38:36'),
('989093223dabbaad80e3e45e69', 'false', '2019-06-30 23:04:10'),
('989da3e07b305fcbedb14aeaf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:01'),
('98af8be4013d4376382ab18795', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 09:33:10'),
('98bccb1fdc821765b902c96472', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 03:39:50'),
('98c07cdfacb6246dfe25554ec9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:40'),
('98c453c136c6423a7531381b65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 04:03:30'),
('98cd1b40dba7327d86d66eac79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 13:58:36'),
('98d0a46c87631a1b4fed82fc1d', 'false', '2019-07-01 05:33:12'),
('98d49a39bd7ccaeed7d81a7e28', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 02:13:47'),
('991219d55b7df18626202468a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-05-05 10:55:37'),
('9965dfa3d2863f941c2c6624d2', 'false', '2019-06-30 16:34:29'),
('9993815d1c2cb7b72543a144cd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:19'),
('99c67a3823d086d95a0bfb1479', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 09:27:44'),
('99c950388660aa7b70f9f4cf16', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:08'),
('99ca1feea4d3b0869ba20e3fb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:26:40'),
('99cc068287fe52971e85f86e76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 19:36:55'),
('99dd5d02c4ec89cdfb822ab914', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:42:33'),
('99f10d211ae1644894ee78111c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:56'),
('9a01dcf5d273a95e21591161e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:02:47'),
('9a2cae36dc52359f4a4178adb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 06:47:49'),
('9a31f78aad7ea46c733c7698d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:55'),
('9a4363917caf1e5ea5d66a422b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:53'),
('9a68d0161ac787fca7461e3734', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 05:26:53'),
('9a6f450c0d00005e2151b9d6dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 01:35:48'),
('9a89ed1e086776847437cf2e84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:31:55'),
('9aa59ba6746d25fff9d9f64eb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:01'),
('9aad9b60cc31b8c5355a707692', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 14:38:07'),
('9aba2909052ac907d917274094', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 02:48:10'),
('9acd84716b800e6627bcccd0b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 16:40:31'),
('9ada83f0dce94a1bea900e3ab8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 10:35:09'),
('9adbecb67a366a34242c777b26', 'false', '2019-07-01 02:58:33'),
('9adc464b64728b75b10e3c8e42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 09:45:16'),
('9ae4f92568954ca17278e9833d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:52:06'),
('9b01a7fcc0bd0b5ec1affe8ca3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 10:58:55'),
('9b16fc3a7b7ad13ca8170d7004', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 21:31:46'),
('9b209e51ea452dd9839ed9254a', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-07-02 12:47:17'),
('9b33049b606c0f691938488a42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 21:02:51'),
('9b33f52ae810755e5e1114b726', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 12:25:49'),
('9b5b012d8ad305662e521a60e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 09:03:59'),
('9b6ce1ef86449d6713a97ddbb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:48:05'),
('9b884bfa2d261944c4181c5844', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 07:50:02'),
('9b8985f2ee0c680a95c983b9a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:30:10'),
('9ba1282cd0281797dbef675e22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 21:34:30'),
('9bcff3ef3ef0995bf0eb333ca0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 08:53:20'),
('9be34e78a6c7c7795d5784a5e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 03:58:09'),
('9becc8baffa7610534892b2df3', 'false', '2019-07-01 05:31:47'),
('9c0610861a3a69fd641ed4e257', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 14:49:45'),
('9c0c85053a2b0971d2acf39f1f', 'false', '2019-07-01 01:45:19'),
('9c18d065b3ae6b0524f5eaf074', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 21:34:42'),
('9c1bf66ab46f543d6406530c5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 06:13:28'),
('9c2815c516c4ea8baf41544f1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 15:01:19'),
('9c29834c3619140e67ad0ea77e', 'false', '2019-06-30 22:32:42'),
('9c687b29e34c982e59e8a530cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 04:55:05'),
('9c7266d5191f0bff288b7d76b8', 'false', '2019-07-05 17:10:21'),
('9c90d126915a44d717d5a1199c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 12:40:19'),
('9c969d00ce4fca548e9c03c8c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:32'),
('9c99bf83404766a5c4a017d367', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:26'),
('9ca20d298f1e76f5b7ad521ff4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 00:19:15'),
('9cafecf08ae20d60abda98b038', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 18:59:13'),
('9cb5ed4e2482cc0f59fd361de3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 03:34:01'),
('9cbe90346ba96e52d2f84ec862', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:55:18'),
('9ccc629ae0ce1fbd74a7686c0d', 'false', '2019-07-01 01:17:56'),
('9cd9c71caa89d6179407fa4978', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 20:59:56'),
('9ce008fd8e0c4d64e5682895f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 02:53:59'),
('9ce9a9892c5da62fd591efbd96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 17:10:20'),
('9cea5e92e068ef19be05c3d6c7', 'false', '2019-07-05 18:45:19'),
('9d11bea8fd8126c11e5a391933', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:55:50'),
('9d1eb2bbb07b66ceeee4a3df34', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 02:55:31'),
('9d3918091a2b4283d135baa3e7', 'false', '2019-07-05 18:16:45'),
('9d49e86d0b3ea73bd7df530ac8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:00'),
('9d4e6ff5e272a5e72090af0b72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:56:06'),
('9d67c805ee987d091543c8ed9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:54'),
('9d6f68806d3d6c149563a2202e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:51'),
('9d850e7dc5cc68e8aaade7c887', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:50'),
('9d8d7d800578648a1d998dc0ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:54'),
('9d982a4e064739e906337662dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 10:01:57'),
('9d9c0d96e665588d3bef5d2ca5', 'false', '2019-06-30 20:54:53'),
('9dac2e73f1fdde5a83fc9a45e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 09:09:16'),
('9dba59ead4c6cc2fca400ac721', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 18:11:47'),
('9dda2d609fcdbf91cfcf50e2e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 14:01:51'),
('9de402aad36ecb2f7b4963cdcd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 16:32:28'),
('9ded90dd6b6390239789a82419', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 18:56:57'),
('9def6de0a891a8b08eb1a5a0b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 18:55:17'),
('9e10c479857780fb90cecd0a64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:23'),
('9e1ac829ff6505a72560cb8ce8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:50'),
('9e1ccbde94a0a6ab14e4a2b927', 'false', '2019-07-05 18:49:08'),
('9e4395f160b5301201378046fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:41'),
('9e49f0c32f723aae5192044e67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:04'),
('9e6750cae06aac469b772d22d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 22:11:44'),
('9e737fed7d3e8fc69517878604', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:40'),
('9e76e5e7b0f823bf0bba12975c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:06:01'),
('9ea11abae4d4bbc87d6e504f84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 22:41:27'),
('9ea9849e627b7f37a1985a9755', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 06:41:40'),
('9ebc3c69aac15914d19009ea08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 05:23:44'),
('9edb338b6b05e3a0b0367fbb07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 17:17:55'),
('9ef2694c7914e994b159c0e9e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 23:05:41'),
('9f1280c7adf93429bc6c0ed17a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 20:23:50'),
('9f50705b217559e892788ff823', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 08:13:37'),
('9f5789b40c24364fd9b30734f3', 'false', '2019-07-01 05:13:54'),
('9f6b0301ecd55c78f7a6fd08bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:33'),
('9f8959ee96b260ae19f1deab54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:41'),
('9f9643db20c7f3e3eaefbcf3ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 11:00:22'),
('9f99b36712725b5d8590fffffb', 'false', '2019-06-30 18:42:27'),
('9fa0cef635927167d6c351cb25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 07:55:13'),
('9fa4cb3ea9455de503875c562b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:51'),
('9fb6f3b1d0218e150475ca5dd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 20:33:24'),
('9fb715fe5929f877a246c8cb6b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:47'),
('9fb9f95e504e80c4d6c6518ad8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:41'),
('9fbc098e2d51c36c4b7135ba8f', 'false', '2019-07-05 20:12:58'),
('9fbcbf86c43ca51a0be5c69a4b', 'false', '2019-06-30 23:44:47'),
('a00cb17fa8d9f43365e57b274a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 06:18:47'),
('a01362e616cf3b1492dac32417', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:20:22'),
('a035dd3a23445177c99e2dc400', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 07:59:14'),
('a0451c98360111381cfd6e6f53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:50:24'),
('a05f6eda1090f51a0ccf99bc16', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-05-04 03:23:34'),
('a061859e1e0bf22fe8132f9fa2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:28:00'),
('a06a2de7d2f75652626553055d', 'false', '2019-07-01 05:16:09'),
('a07b4c273abe3746275dd5f92c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 17:24:54'),
('a0814d56b3ba224e6f5e20b334', 'false', '2019-07-05 20:43:00'),
('a08885d872e74c622d999fdb7d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:20:34'),
('a08cc9f32ebf6d10b6469dc2a4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:31:45'),
('a0905e7f16aabd2f50a8e32e1b', 'false', '2019-06-30 21:45:16'),
('a093a8f79656b2e75378602d99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 14:18:52'),
('a0c28ea4d21c4c675947ff968d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 20:42:23'),
('a0d133f1dca2f1866e37f95faa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-06-04 01:00:53'),
('a0e58f9ddb77c4ad61e97f853b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 23:25:36'),
('a0eb63c310beebc13d718e1778', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 11:21:22'),
('a0edf2b50a468803e927dfd9f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:12:54'),
('a0fd8b59f6a269ad04359cdee4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:49'),
('a11ea1fcd4eac5b833b81731e4', 'false', '2019-07-01 04:25:08'),
('a12b7047ff929ca098731cd31b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 23:52:47'),
('a136d4cc6e0c578f392a83fe56', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 09:09:22'),
('a136efc91febaa69dfc8d64cc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:31:57'),
('a157eb8714d7f1c32d8ed1e4b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 06:16:33'),
('a1600e6c75f68af4ba6246d601', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:26'),
('a173c5393db3cb84ba3448174f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:15'),
('a1774969b99f300857ba5bf1a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 15:29:02'),
('a190592f4353fa1390377f4fc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 18:34:12'),
('a192a3d595a824fd1943775797', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:36'),
('a1942b8ba0d5f2b5007e1f27ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 10:55:09'),
('a1b42657fa8a7512064d170187', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 14:36:24'),
('a1c2f6f77bc0e65d3657f728ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 02:18:04'),
('a1c3a2c3ea4524516169ccb780', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:25'),
('a1cf6c34d49ed14503a58df804', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 03:28:28'),
('a1d4bbc35904284b88b4ecca25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 15:31:14'),
('a212e786f9228fb5ea69d6530d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:16:50'),
('a218c41fbecd15d68115065ec8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 15:26:07'),
('a239b7f46d1b70b661134cf467', 'false', '2019-07-01 03:11:28'),
('a247c466678db63a629ca25ddc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 17:20:56'),
('a24d08b2b9a2b15fe826ce8185', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 15:14:37'),
('a2607a617f0f123ce29a64108e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 10:24:04'),
('a2788c2e1698d82080ebddf57d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 02:00:54'),
('a29171f81c2728e009df6f5337', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 01:35:16'),
('a2936d48b91de6899cf6082f22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:19:54'),
('a2ac1ddf3905c2bbaa5330b398', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 00:06:04'),
('a2c7c01230783c42bceab6e676', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 04:41:15'),
('a2cf68ddc1b5628d270836703d', 'false', '2019-07-01 05:03:31'),
('a2de75b5137f32fecf7f2e8af9', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-07-23 15:45:02'),
('a2e899aa2cbe624a2826fdd97b', 'false', '2019-06-30 22:48:36'),
('a2e958b6c22f8e6420d1bd9720', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 08:09:35'),
('a2f96e8f3bcf814a003cb4ccc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:46:00'),
('a300c45d0703b852ce7c15f9ed', 'false', '2019-07-01 00:08:49'),
('a31a61f3bbcf852b1d9d7830b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 15:34:27'),
('a31b3af5f7ed6462d8a7f770ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 06:28:25'),
('a33280616988275460769c5004', 'false', '2019-06-30 19:32:40'),
('a3336d89f9d37b2863b22f1960', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 10:18:53'),
('a33616160bb4bcc11edd7f37e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 00:20:32'),
('a3404bc0e37c834f2f04aab13a', 'false', '2019-07-01 04:38:49'),
('a360d2f8dfa68fb0dfd22a4555', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:45:19'),
('a36136e0f91e77b7700f7d50c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 08:09:38'),
('a37c5375fb3af0aa23170ecea6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 23:48:31'),
('a39726c711ca923c8d57ad1bbd', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-07-01 02:55:28'),
('a3b79856546557eb94dcb255e5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:31'),
('a3ce736e86f5e3ad97b9cf3d2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:43:27'),
('a3dfa32466aa0c52cef9a80c4f', 'false', '2019-06-30 16:12:43'),
('a3e8abb88382338e96d9d7f48a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 22:56:33'),
('a3f02a1ea6753ea2550c4d2437', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 10:51:32'),
('a3f223d5a2ddbd56b384f6e2a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:36:25'),
('a3f3522342249874398cb0848e', 'false', '2019-06-30 21:16:06'),
('a4002c054d320c4bcf4be87a60', 'false', '2019-07-01 02:07:50'),
('a401a6ee9277079ac776df9db3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:00'),
('a40487eb6c3e86c25c0c60ad6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 02:30:49'),
('a405f421c0e1afc5b4472ce7e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 11:15:50'),
('a41698447db91a677d7e116f35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:44'),
('a42bf5116d5468a04fba5bee68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 07:02:43'),
('a42cc3b7126fd7a7592b9736f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:39'),
('a44eabb0fe442a86cbbfb7aec6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 01:12:36'),
('a453deb6f94425ac3fae8400f7', 'false', '2019-07-01 03:37:03'),
('a46247d36ad3eb792209d65425', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 07:13:15'),
('a46e843cf2eba2c80b8303c256', 'false', '2019-07-01 01:03:48'),
('a46ebc9f701d15b64791dfdd5b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-05-05 11:01:47'),
('a46f7acfd2454241a082a1a8d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 02:42:36'),
('a4a2aa751176b345716d1d8645', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 23:20:35'),
('a4a3cd28bf7dee8bb3eb2e5d5a', 'false', '2019-07-01 05:26:35'),
('a4a88f0d23f0b1099169953cf8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 04:30:49'),
('a4abd52e9e9cc8896b9e4bea20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 04:48:34'),
('a4c37de367a549669b4421f119', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 06:59:06'),
('a4c5c805d34482386cce4005c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 19:17:56'),
('a4df327551803d453c22b369ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:51'),
('a4f8b4a1a58d65774f8e49ddb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 13:26:30'),
('a527bcf041c38b9019e649069b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 04:05:49'),
('a53dbe811ba8267fee34427ac8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 00:44:30'),
('a548dfe6836fd0823709b11626', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 19:41:30'),
('a5529c2d45c141ee0f127e1fdb', 'false', '2019-06-30 22:43:37'),
('a563d810175a5f36f339d3905d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 02:23:34'),
('a587a2d6042c60f655a689957a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 19:30:59'),
('a59419dafcd4559e708ae3a549', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:54:06'),
('a59caf4d6784f86a4914a873a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 15:33:29'),
('a5cc6e871c9e22f57ec9775350', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:35:01'),
('a5e832fa0df4da05d0505fbf1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 03:21:16'),
('a5f514d87be9c01cb56797ecc5', 'false', '2019-07-01 04:47:49'),
('a603dedeeddc9a4e2652bdcb21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:14:37'),
('a6120131f8bfeb754733a9da5f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:54:12'),
('a6159fa50906a1ea45b80a23ea', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-06-04 01:01:23'),
('a62246b5e06e413387954b491f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:45'),
('a62c629d59a1979e616df4f451', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:27:26'),
('a6674c652d330e20f0ebbad3ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:27:11'),
('a677159ad1d28cb2e1e3b1597b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:10'),
('a6847906dbb28de11085408827', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 06:25:35'),
('a68d386044684027d2c2f96188', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 20:27:23'),
('a691b8389cc215506f95f5a261', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 11:57:34'),
('a6995217a7679321f0ab6b6952', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:54:20'),
('a6abd677d21fdf02f725c2d919', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:08:16'),
('a6b4b512fcff35e33f518bef39', 'false', '2019-06-30 22:31:24'),
('a6b93c7164c7761c22e108e315', 'false', '2019-07-01 03:17:22'),
('a6b95239e052c7956901ee274a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 01:37:53'),
('a6bd3acdf01107b188a722376c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 20:20:31'),
('a6bed9ccddff844aaf241d2d14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 11:47:32'),
('a6cf72ba205a7ecd0a6256c06c', 'false', '2019-07-05 16:42:31'),
('a6db020c06e97d596805b01082', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 01:55:29'),
('a6df93d62bbb6e194573e9d2f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 14:27:40'),
('a6e18ce767ea0a3a2985a4eb53', 'false', '2019-07-01 04:17:40'),
('a6f5dfd098bc9f0df257b9a3ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:19'),
('a701b895d9fe2c308020e70317', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 03:37:53'),
('a701f4f0eb9cc07520568e6ced', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 06:05:05'),
('a706eaaa279f13392b488bf900', 'false', '2019-07-01 02:00:30'),
('a707d934bb31dbeaf80bb9ffc9', 'false', '2019-07-01 05:09:37'),
('a708f2a1cdc8d16d48d9acbb2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 04:04:07'),
('a720e6899046268cebe671acea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 08:58:28'),
('a72f9928a9f3975c21638ecd83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 11:24:36'),
('a73784dcf48fa857fd14cf13eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:17:12'),
('a748208c139cbf90b572941439', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 20:29:20'),
('a7946561034c2e67649d65993a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 06:58:52'),
('a7a91999984ed7ebccaa7a3d98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 03:18:47'),
('a7c58ce303d9bf3b34d537bcc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 11:17:17'),
('a8010d5a042c7288452aa60be7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:02'),
('a81b378b7259dbb5f9aac799b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 15:42:17'),
('a8234ffb7625a34ad4f82bfd52', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:19:15'),
('a824ca31ba92f500f0d03238e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 09:56:04'),
('a841399ac3da4ac9df3a96f80b', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-06-16 14:18:59'),
('a849a1b82297b7c595312f2946', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:29:18'),
('a851f39257a48684397d0decf8', 'false', '2019-06-30 22:47:28'),
('a8654ffa574cd81085e4e290fe', 'false', '2019-07-05 15:29:02'),
('a865f8f3506bd42519e32d62c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:55:59'),
('a866fdfc487a57ff5ec427a5aa', 'false', '2019-07-05 18:48:11'),
('a867249e7e9e52e85f0e529d58', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 17:07:53'),
('a874a50077931eab6e5ef8aea2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 22:50:12'),
('a891fb0acfb591f1c60e1cae89', 'false', '2019-07-01 05:35:36'),
('a8a5601342bf5f9ee720f1380f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:18:47'),
('a8a959931da24d73b55cfb52aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:02:07'),
('a8b06f56a4d78851087cc40483', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 17:12:27'),
('a8bd05c6889492ae2ade8e16af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:21'),
('a8f1a83290b41853b6e02eae93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:34:49'),
('a92c555a6c70fd9229d3662d4b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 20:26:58'),
('a947241fba9f40750aafb16bd9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 04:24:26'),
('a95219991b1224a733d805dd07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 04:14:16'),
('a968d12a1dd2aef86b19484dc8', 'false', '2019-07-01 05:18:38'),
('a96eb66ef49aaa365f18a15eb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 14:26:15'),
('a97bb1d2d3c4fcc55894e6082b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 10:35:25'),
('a991036a022dbe27759955e0b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 01:47:43'),
('a994d875d4ccfa7cceb64cbfa8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 02:46:48'),
('a99807aea1c18e5e7bc162e108', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 18:39:37'),
('a9a2bd9c05cd6dee7b8ac61ada', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 05:42:38'),
('a9ff9d1f67f26008dd50b870ee', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 17:48:05'),
('aaa3957fc50ab888ecaed3c5f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:37:05'),
('aaa3b8127fc16a3044adb1611d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:14'),
('aaa8c8ddb140935169c3f7b52c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 01:13:18'),
('aab431c8f284e72e17b22f3490', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 03:48:43');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('aab66290dbd83f2d27bfe68bf4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 07:56:44'),
('aac392d35b45f3640be804ef00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 04:00:37'),
('aac947d449d7351ca65fea6e6d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 19:08:58'),
('aacde7ee51d3ec2ead9c23836e', 'false', '2019-07-05 15:20:43'),
('aadf3029e739bec77483cd2557', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:00'),
('aae42ccded1738ee5e47561beb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:59:46'),
('aafb7fd31fcdfd9f70b5f9e808', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 09:22:07'),
('aafced7adb9684a46d501b87a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 16:25:22'),
('ab0e9c255c57ecfec0e77d6db3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 06:11:50'),
('ab130b57b923aa156e595a603e', 'false', '2019-06-30 19:02:04'),
('ab149049ebfeda0707207060f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 03:32:37'),
('ab2e1e66b2781a94f3e22771a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:20'),
('ab34e9fbc70f7bad587aa1eb07', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:49:43'),
('ab3e89ef4aec7befec052ccd74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 18:12:14'),
('ab6d55f36c1e56a95a592d268c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:03'),
('ab916e0c49a0036ed5ef3244bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 09:28:51'),
('abab63d20421a125c2e1f8f33c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 01:25:57'),
('abc14464130111a4e2aa867ffd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 23:58:23'),
('abdeb3c5c7b497e99f3cbf4d8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 08:03:41'),
('abeb210b831001fa6979bfb8f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 02:10:20'),
('ac00bc28bfe39baad1c552338c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 18:39:19'),
('ac133218ef268c964740bc270a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 03:27:22'),
('ac14d99d80dcaf5485d57788b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:40'),
('ac20b8ee51d923ee358657a29c', 'false', '2019-07-01 00:59:27'),
('ac3fb7c867150e9a5d447704ee', 'false', '2019-07-01 02:11:46'),
('ac41df78a6483565027cb28f94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 00:15:16'),
('ac436ee78848540eede05e05f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 02:40:49'),
('ac4c33c458c681b36001231fa7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:29:08'),
('ac4d5a42d6cdf97883d7d46fdf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-04-24 19:39:50'),
('ac4f4c7d493dc56ffc73b79ac1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 18:43:40'),
('ac552a3a8f7099fca1488ba945', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:29:15'),
('ac734088bd5d4a2c1f2f4a6128', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:30:58'),
('ac8e08e69996ae4aa57da9e593', 'false', '2019-06-30 18:19:35'),
('ac8f992de4bba9d4ca3ca251ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 02:52:40'),
('aca0fad5b9941683477a8b9917', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:57:46'),
('aca6ab41b6974df277f466307b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:27'),
('acad38e1c9054e0ab070586684', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:58:27'),
('acb5caf813d05e28196d801d86', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:03:19'),
('acb5f64de685e692429d0e18bf', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-07-02 01:20:26'),
('acb7a9ae6a014e2afaf8b82f0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 11:41:27'),
('acee025ffdf0eeb1e0d398b79a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:33'),
('acf607494e2e42f7cce03d4260', 'false', '2019-07-05 19:03:27'),
('ad0b839aef07fce45d3bf762de', 'false', '2019-06-30 17:25:33'),
('ad10058c8ca88d288f65528d2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 23:12:16'),
('ad16e5cb1e67d61e147d3873dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 14:21:07'),
('ad51cfcb5c778d9f982ac69b87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:42'),
('ad53b0b82b233b2a7c427d5489', 'false', '2019-07-01 05:50:04'),
('ad63e362f909de34a206683bfb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:50'),
('ad6dfc6aec170e2256b589766f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 08:49:49'),
('ad7720badb099eb703599235e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 22:19:04'),
('adcd20ce09d398b6d45c781cb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 03:36:07'),
('add8c58800c14b91cc8a899847', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-08-02 13:29:54'),
('ade1e725505beca5c2827a21e8', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-05-18 00:01:57'),
('adec7702df6d6ad8fb63cd8b8f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:45:03'),
('adf3d0ef57fa2cf0ef23ea5609', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 12:09:26'),
('adf76f6fe1507a9d3acda93623', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 03:35:08'),
('ae0bcc05a3ba02d852e3857b53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:01:43'),
('ae1fd995d9bd67dce03ae5658f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-03 16:49:36'),
('ae25d5756d653ba88605015776', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 14:40:09'),
('ae2a27916aea05ad035d1eeca7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 19:40:38'),
('ae2e91c302de9d4c777f1d4a8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 02:19:07'),
('ae3d2838ff81f003b34cc48010', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:49'),
('ae48bcacdbac5da5b9f208feb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 16:27:33'),
('ae4d8bcb82f6e01f8df6ffcdfa', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/download\"}', '2019-06-13 18:07:40'),
('ae5921d0b756cbd55ccb692958', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 07:51:43'),
('ae5f8d68f8762301e93247d17e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 11:30:03'),
('ae8cdb8f0a5017565d9c47a69b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 04:43:16'),
('ae99a3173ea1ea81080f8fc842', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:52:19'),
('aeb89c9e125db93eaa8ebfa9f5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 14:05:18'),
('aec23cabae49941d804b48dee7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 01:59:34'),
('aedab49cfdfb6304b934f78741', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:03:50'),
('aee01f3ca5930307fbbf196ce1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 08:37:56'),
('aee8ad74f5c2dbb5bd13d38a4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:07'),
('aee8f73c4d29e3937ca2fb8c7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 10:45:31'),
('aeec4926940e30df82ec4aee73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:49'),
('aeff4bece524fac02c1cb8ae08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 08:34:06'),
('af1d674a2aa363e68d5e31d95c', 'false', '2019-07-01 03:23:32'),
('af46561f5990467fbec8d941f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:10'),
('af55e5decfa6923960b17331dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:26:39'),
('af72c636d38c4ed3f29ef425d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:40'),
('af7876504728d22b637c2d6002', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-05-05 10:59:41'),
('af9b82253f0b134f90a995754b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:28:14'),
('af9edbc5db5c1c011b2742fc8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 20:45:42'),
('afa2381f942d0ed9aeb5bf8ad9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 14:50:33'),
('afb2505acac2644f357bde9653', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 05:45:49'),
('afb2967d0c235c3488c4540fbb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:22:18'),
('afb6974ab9101cf1611f59992f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 11:10:48'),
('afca06329a12918b8892542954', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 21:26:43'),
('afe4a40c771d44aead97310ae3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:12:09'),
('b00439234f52b95d64d2ff8050', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:19:30'),
('b056c3002646a2268216c66be4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 02:44:46'),
('b05ab18a6b11bd6aac0e2e670a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 22:21:46'),
('b0623e62f5fd8a3d96d965631e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:53'),
('b06adde238e8fc9085193f9e99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 20:11:01'),
('b08c0b2a2594b570f95670b95d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:50'),
('b0a05cca127ffc840c0f39b4d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:57:49'),
('b0a786f6627fc183213b1dd272', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:24:26'),
('b0afaf81ab7c23528f29be5b22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:57'),
('b0c9f0bc60b61e535fd8eb8b0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:50:33'),
('b0dceef1a1622a0e37e782d261', 'false', '2019-06-30 15:37:00'),
('b0e01068bc8f54f6480c8afe2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:56:58'),
('b0f706079449d5e21d7edbcfc1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 18:51:12'),
('b0fe7b5f1581a70deeed5d157f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 03:23:35'),
('b101242a7f145b296062322311', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:09:13'),
('b11a0d8e399a3d9225bb8cb99d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:20:29'),
('b1383aa1fdac9ac79c9f9c7510', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 07:32:50'),
('b16514d3aab621bd327674a1ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 10:53:41'),
('b16e85a52a07ff579e22a7aaa7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-07-23 15:45:08'),
('b1709acfa1134b0b32ab9e0ef7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:46:42'),
('b17afa77aa770f72d9df09630e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 10:35:19'),
('b19249c0f7331918ead52d96ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 09:59:31'),
('b1ae5b3181f8452ff85a230d42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:25:51'),
('b1bb127bd9a3771d4e317d72ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 13:04:06'),
('b1c420564eb37d8276a74e48c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:00'),
('b1c6c45ac73326b56c5132351c', 'false', '2019-06-30 21:20:35'),
('b1cfdcb8c66d45778c13d466cd', 'false', '2019-06-30 23:47:32'),
('b1e0dccd9b12130a801f24a570', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:42'),
('b213d5ef596a64395741bdd154', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:56'),
('b234b2d61b669c7f723c258af6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 00:58:37'),
('b2352afb3488f5a5ae1c0d0752', 'false', '2019-06-30 17:32:53'),
('b238ce2fbc21f0b3c58b05576d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:15:21'),
('b253c3f7f80f985799db7e6e76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:01:44'),
('b26175ee91123e6dd87a487775', 'false', '2019-07-01 05:23:00'),
('b29255f5e81cb9082faafd790e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:03:19'),
('b2c36021b51d1f4e11be41d149', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:37:32'),
('b2c66ee2ade719e7f156991241', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:37'),
('b2d772372d01a0264259832dda', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:36:03'),
('b2eb9486344b2d1b3ef8af135f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 01:38:14'),
('b30c50242c4ff44ec9774013d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 12:15:02'),
('b315798ca156c8438bcaf8424e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:38'),
('b317a82b6ca2457ee5f8e134e2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 10:25:54'),
('b33e0f09a5e702ff42c50b6041', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:26:37'),
('b35b4058b1bd6eeb165b85f0af', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-06-13 18:07:20'),
('b36a39dfeaee36eb173c5f6038', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 21:57:16'),
('b36ecb51337bb4152347f7d2de', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:09'),
('b37108af1833fdad3c94fa4fa6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:24:59'),
('b37ae179593fe71ad0941da14d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 02:26:34'),
('b37bc0285da124dae08f7f7e68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:33'),
('b3814bdaa22c009e42cb3e641b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:59'),
('b397f4e4f5828b029ca36d2339', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:32'),
('b3a2fe2dd229178b9a5b97e1bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 05:21:26'),
('b3aa0994aa6eaa575741344947', 'false', '2019-06-30 16:42:28'),
('b3ab925c2025ed97b901b5fede', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 14:06:59'),
('b3b37d52c1a314b23d3f045aae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 23:47:15'),
('b3b46dd9754aacc560dcd3dd5f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-10 00:32:08'),
('b3b82161b15b13e988b6bff7ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 10:35:16'),
('b3bd37978e399fdbef39e0d6e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 21:25:06'),
('b3d1ea7fb0a6646a1896e505b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 09:09:04'),
('b3d71a95d768671b606107121d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 17:32:41'),
('b3dbaca765ba288246b0035ab4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 00:42:49'),
('b3def819012514b82798e53d89', 'false', '2019-07-01 05:17:44'),
('b3ec357e8ab828975d2f532298', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 07:38:12'),
('b426d23125f54626cfce1ed797', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 04:51:18'),
('b43c4a979474480816a2305acf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 10:13:33'),
('b44102036b0e6480b37b265dfb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:13'),
('b4444debdc2b5727571e312cff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:54:59'),
('b449db7a854f84322bbd76550a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:31:02'),
('b44d55d5414c834a5bf9f2bb98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 04:42:20'),
('b454ce480e3803c586444358c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:21'),
('b4647b7731c59abba4f1870204', 'false', '2019-06-30 21:23:18'),
('b469882369ab49fa6711540d19', 'false', '2019-06-30 21:02:06'),
('b47cacfb3da45718a6eb33bec5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:30:49'),
('b4ad581a5a45efddbb88b51d44', 'false', '2019-06-30 22:51:18'),
('b4b3974eb291eb182807fb0f4d', 'false', '2019-06-30 23:52:19'),
('b4c550e63ecdbedb90ab2b1d97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 16:46:19'),
('b4c84bbee2322e10c1eccc4587', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 13:23:46'),
('b4cc89c9faf776346d59adfdb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:32:28'),
('b4d1196811f7e65633b84d612a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 14:51:22'),
('b4d468fc77bce33094a097e3f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:13'),
('b4d6705c8a6ef8340cc6b001f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 20:28:21'),
('b4e3d57cbdefccee1790b33d67', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"2\"}', '2019-06-26 08:51:02'),
('b4f70b259de3d7e99a872ab61a', 'false', '2019-06-30 21:13:14'),
('b527132f251bde89da0a84a181', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 03:25:05'),
('b53b5776603a0582e03319b6df', 'false', '2019-07-05 15:24:17'),
('b54064a174bc85a5181ba9dd83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:54:14'),
('b542ec67b5ab17ae6ac45c6b21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 11:47:11'),
('b58615e48249a621299629ecfc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 13:38:00'),
('b58d829f66263c4be6dcde23e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 13:09:31'),
('b58ff06e4828cf051971737a78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 23:23:21'),
('b59741ae60d9cfe9460cc7e7c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 10:38:02'),
('b59f9b9774794a940a8d431ebc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 14:25:34'),
('b59fc3673d910f5301ad7f0d4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:14'),
('b5a6daafe2ae39b1ac14db1cc0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 19:44:08'),
('b5d7fd45c88a01b906f0605133', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 21:51:27'),
('b5e036e19d5140a95fcd350813', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:01'),
('b5e584626d9e3318270c4e540d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 14:19:27'),
('b6137364ad7b74f0e44a570863', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-07-02 01:20:23'),
('b62ce0e5f682daff03bd7e180d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 01:01:46'),
('b6381b335db4cb7276e0fbcac1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 16:24:00'),
('b6493cf250b5f3f3d6ff0a489e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 07:00:45'),
('b64e35089c79be235385fc8ce4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 18:00:58'),
('b66447926ee3d003e3ed92c6d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 04:11:46'),
('b678a4b2da0011961a4176e0d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 11:12:10'),
('b6799f3950040e15d199972bf6', 'false', '2019-07-05 19:08:32'),
('b695967e228e6d344bdab03193', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:13:55'),
('b69ef922589b419e472a333c15', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 04:12:22'),
('b6a27275e48ce2bbeb85136d96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 18:46:47'),
('b6a4c9ab945b5d773e5e4a0483', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:20'),
('b6a5495eca6265a907d0557b75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-10 03:20:28'),
('b6b0154740ec39dd8449c1eccc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 16:49:13'),
('b6b10ef560adea59d12a6e3d23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 23:42:17'),
('b6b4cac45395cf877bf3ccb899', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-19 07:12:24'),
('b6b7cf5fd0f83fca50579b5c92', 'false', '2019-07-01 01:46:49'),
('b6d3b58dab74193ba59fe9c721', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:38:12'),
('b6d7c48f900ea45c2fbf175df8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:58'),
('b6e6cf619914cf1553a9fcf7a0', 'false', '2019-06-30 17:13:27'),
('b6ec15473022063c12f5c32798', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 04:34:00'),
('b6f673135df719c144d87bcbc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:33:03'),
('b701f99f88da273fe604e8b5d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 04:09:24'),
('b72bbc00ff218089758994b0ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 04:12:06'),
('b764274307175aab57fd782d5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 01:18:51'),
('b79f2fa39a23ae5e3ba62301fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:37'),
('b79fb74d46489adf87e2101061', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 12:20:59'),
('b7a948d9a42e7cdeb115aa2a20', 'false', '2019-07-01 04:22:36'),
('b7ba4c6118a1613e9186933965', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:20:13'),
('b7bb279faf9129e061dd64df76', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 08:13:49'),
('b7bb9953640c10d9840624538d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 15:32:34'),
('b7bd77a278346967ade7b527cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 00:51:09'),
('b7ca3150b0733cbffb3bc9f739', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:07'),
('b7d8211b2ff62c09637f8603c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 07:25:30'),
('b7de0b3d71049a39c192efb64b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 21:30:13'),
('b7de816135817b300f387708a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 18:57:01'),
('b7f1123e2431e5c19b14a72e54', 'false', '2019-07-05 15:22:22'),
('b804eb322e7b85fb2176211b71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 14:01:53'),
('b82ef1b880d7cbf9ab7cf674a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:52:10'),
('b8320cd8667e6755bea3951173', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 06:50:24'),
('b86cc4f6c80ce63496d945cd7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:17'),
('b88e3ecd9a39bd87ae4b33d015', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:46:12'),
('b8a9c2659e8fefe51c93e968ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:55'),
('b8b111d5e7d48d26017f943a8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 08:25:21'),
('b8c01344053ff91a6aeb09f52b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:49:44'),
('b8c70ce2d45e01af5f5a3ffb82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 03:20:35'),
('b8c81757e384fbdae45c612069', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 04:14:02'),
('b8c9668654581ab76135a45462', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:37:10'),
('b8e1590eee4a1c5ff39281e8e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 17:57:20'),
('b8f2ca9a4cda843b45bad59d51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 20:05:42'),
('b91e29eecd5a899b479b74e116', 'false', '2019-07-05 15:12:48'),
('b92c1cb6654e52cbd2f18eb7ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 11:23:08'),
('b92c5b80264db3da657e2f77d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:11'),
('b92cbff961fdda06152752941c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 11:25:22'),
('b93dcefcaf236b4c09f85e9a92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:00'),
('b9909fee17d03b094851911901', 'false', '2019-07-05 16:35:08'),
('b9c07c4b3cbb0a09776211b5d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 19:13:21'),
('b9c5c283a6ee3fc621785d5130', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 01:45:38'),
('b9e0b98f8ffae2740c0f29e9f6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 08:06:42'),
('ba1804a78226864d8e37f9a346', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 04:31:05'),
('ba1e0cd5860239c4e31a566d99', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 12:29:27'),
('ba278b210a831e4e3fedf4dbd6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:51:32'),
('ba45cf0cd9457708a51a4f4767', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:32:05'),
('ba6b526d065a081ca95dab799b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 06:13:19'),
('ba6eb74f57c797d057bd757a42', 'false', '2019-06-30 18:12:14'),
('ba7f4fc4ec058795a3f6412986', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 02:55:29'),
('ba8113ec8366355cfe75913af1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 09:19:08'),
('baa876417846ca5b6e872d56e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:30'),
('baad66b3e4bfeceb82689ffc61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 19:42:56'),
('babd819ac39b173de04dc67649', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 18:19:11'),
('bacd6e95c5de5b9b93ce2f3c5b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:14'),
('bad427e9d5a3544b438a3f685c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:56:10'),
('bae279843c10560d0dfe43c9ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:02:59'),
('bb066503fb671b4c9270c475c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 12:09:57'),
('bb0c0d285bb078cb74c6e2928a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:51'),
('bb249478f9061f66cf01c3dc70', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 17:10:14'),
('bb252446a997f8a36e0888bcd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 22:34:51'),
('bb2ae0929aa7e7e41a0bb522dd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 19:28:45'),
('bb2f85b3c8287aba06af6a5e6a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 19:07:04'),
('bb328b6639f305f8df090324ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 18:30:15'),
('bb3b4abf658412d02b94ac3aeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 00:12:50'),
('bb4e27fa20c65f494372992ed8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 08:28:39'),
('bb5d2671147f2fe2b99c415374', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 18:07:35'),
('bb81c2a9ff9e58c2d0081e5c88', 'false', '2019-06-30 16:44:01'),
('bb896b3a5ba5f898d795182a51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 17:05:15'),
('bb9592cc76c9606b1058c39526', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:21:03'),
('bbc1a2f39813e5e4fe8a6a3ef5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:32'),
('bbce184f34968002fb7f43ed02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 06:16:39'),
('bbe4678e5beeb2f1185d66cd9b', 'false', '2019-07-01 01:39:41'),
('bbeaa11b430b9d7a534442d476', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:33'),
('bbfec9a5936b7507067e7a6bd8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 11:46:12'),
('bc2bad681b3f85a5d8086d23ac', 'false', '2019-06-30 18:55:23'),
('bc35000c60ee7d08985fb8158c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:25'),
('bc3724a26f1b8c9eeadc457dbc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 05:12:55'),
('bc3ec3afe5d94528fd49b2d785', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:54'),
('bc613da5ba470c2412058e9b8a', 'false', '2019-07-05 15:25:18'),
('bc6524daba617f0d4e9c521a80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 17:50:47'),
('bc6f2ed532534bcc6174844791', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 18:02:49'),
('bc794450bf906445a9f5d17510', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 15:34:17'),
('bc98f2d8c3e85193955024eadb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 04:19:40'),
('bca5b08cbc946b01c09a7ddf2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 21:48:30'),
('bcb099ccc9103ba861c38dd58b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 10:57:06'),
('bcd818227cb9e9da7740eca57d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 21:55:19'),
('bd0a456d1bf5a9d0c479e54c30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 06:07:53'),
('bd20ffa5235f5a333852dd0a45', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:35'),
('bd42378e8ad370f3e2ecbff612', 'false', '2019-07-05 21:24:16'),
('bd441eb18c7411ad0be225a7ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 22:08:56'),
('bd4f3dd24c3d5dc846959abbe4', 'false', '2019-06-30 20:26:46'),
('bd6a30397e8f3c6246718baaa1', 'false', '2019-06-30 17:39:24'),
('bd7d626e006fa633ae64091d5c', 'false', '2019-06-30 19:06:53'),
('bd93c1f0162bd618db843b3b1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:21:04'),
('bd9e8c06e92563f600400b563f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-07-23 17:32:08'),
('bdb04b31b33fd8312fa60a5944', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:03'),
('bdc2bced165747ca2ebb527c83', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 08:38:19'),
('bdc7a7a8da3dd74e6dc0ae4ddf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 10:35:22'),
('bdd2ce07974182d9a56bccf23d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 18:53:39'),
('bdd47cf66597909b47d871b634', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 23:41:43'),
('bdd8225e2520768f1a33f1e320', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:30'),
('bdda51ea7067b7ca4814d84e49', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:03:30'),
('bddb3d4bf0fbe6021617f53886', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:54:51'),
('bdf573cffcab452d22bfd7a3d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:16:01'),
('be00beafb9874ec24661a73f43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 04:40:13'),
('be0f54c7d6cdb3fbb0ba49d4df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 14:17:56'),
('be438a7d6af845f66ac8044324', 'false', '2019-07-01 02:32:07'),
('be7082f39bd1a1d15bda6db5b9', 'false', '2019-06-30 18:34:24'),
('be9061f55fd67be4b73fa245b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:48:11'),
('be94e08e506ab557d1731236c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 07:03:34'),
('bea3965fb7964adeeebe18ceb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 04:47:03'),
('bead0f8b73f3f6fed78ebe4bf9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 16:03:53'),
('bed67b7ee72c3c7e11295bce7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:03:53'),
('bee2634e2b780535d959169ff1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 15:27:53'),
('bf202754024b6e26bbf0501dd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-19 02:41:53'),
('bf7e093c631df50df213b0989b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:29'),
('bf822fcdc1d226d601514bcfea', 'false', '2019-06-30 21:18:59'),
('bf84b7f6ef322b9c35600012d6', 'false', '2019-07-05 18:56:52'),
('bf99acb6c78ae63e2dd0901ffd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 13:08:28'),
('bfab42f84a153424f753c14ed8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 14:59:47'),
('bfb4b82e660cc370ffacab98d2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:52:19'),
('bff11e27888e0110c4c1aab48d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:19'),
('c01e51b6e38ed4b3466fcadadf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 12:28:13'),
('c02ac17fc489dd362f18753162', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 23:08:39'),
('c02c37824bcd2586ff01a1f5eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 11:10:32'),
('c05594b85175b7b14479114510', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 14:50:23'),
('c0866930aea17612711173b5b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 06:08:25'),
('c097577ec136eebf14fbf28864', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:23'),
('c0b163a71919a4e7308530472b', 'false', '2019-06-30 23:27:07'),
('c0b42e1403f951e7e7b9fc0d4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 16:44:24'),
('c0c055504bb61c86010d411f9f', 'false', '2019-07-01 05:12:44'),
('c0c08e92df8cb10616395fa191', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 02:08:58'),
('c111b1c9b9047334b1a4d51607', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/edit\"}', '2019-06-13 18:07:49'),
('c114f0250f9f9ed069b8831263', 'false', '2019-07-01 00:44:27'),
('c137fe0606da5a803513780b55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 03:27:54'),
('c156fba305c3b403f30b7656c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 03:04:00'),
('c16ea9d6d29dc49f88473afef7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:32'),
('c1795cf669a0fd0fbb358565cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 20:29:11'),
('c185fcc8054dd808dbb8753328', 'false', '2019-06-30 22:26:16'),
('c1b238256eb0edcc7d62adb7ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 20:08:27'),
('c1bfeab4e80f4a918230ae005e', 'false', '2019-06-30 16:07:07'),
('c1c96024602214408a4d4fb75d', 'false', '2019-07-01 03:33:28'),
('c1cca60fd653df79ba4acdce74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 18:40:56'),
('c227fc42d9f4e147c75f73ec9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 12:59:55'),
('c22a904a45d1329d08d15a688c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 10:43:31'),
('c23e986f380ac4317eaaf39b8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 17:48:53'),
('c2475f6334b827accd46d970f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:50:05'),
('c25f503e789385209306bbf69b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:28'),
('c26237d77be5932c1a65e88b6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 12:20:54'),
('c26e88b91e3f5360e17c5c1889', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 18:38:09'),
('c26fc066ad22d3d62f53215b1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 10:35:12'),
('c27cb26bc0abff75bb3478315e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/download\"}', '2019-04-18 23:55:35'),
('c2a4ad4f6508978ae8ab7819c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 13:14:11'),
('c2a743097320d19e9b4bcfd426', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"5\",\"shipping_address\":false}', '2019-07-30 01:45:41'),
('c2adce0910b28e846c40698772', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:15'),
('c2de3c02dc116192bdb4c5c059', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 17:32:04'),
('c2e30b5bff876dfd67dff94806', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 19:40:14'),
('c2ee280ab1f5043a0d66b483ce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 09:38:15'),
('c2f4dc7fc776469bba9e814b90', 'false', '2019-07-01 01:56:24'),
('c2f55e736439bbc8d3ff31d8cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:38:24'),
('c2fc87d11be9795af165f97bdd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 14:23:07'),
('c3136aa93cbcb52d310ce8b462', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/recurring\"}', '2019-06-13 18:07:38'),
('c3541c159fe12b8497291da74c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 11:55:12'),
('c37c5c400b195406ac66c90017', 'false', '2019-06-30 15:41:02'),
('c37c6ab4886e3cf24d3ae55590', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 16:01:56'),
('c38c0680c09a9cc2068ed3b7b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 07:28:04'),
('c39396106f87464312a8158634', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 20:29:50'),
('c39aaf1413e2bc29aa68a4b387', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 02:40:48'),
('c3a77666cb35c7573bea7aaeff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 08:17:22'),
('c3dc663efca2f959954b78f42b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 22:52:22'),
('c3ec3cd075eb2211d22ebff846', 'false', '2019-06-30 22:23:35'),
('c3edd2bba902dc408dc5ea2275', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 21:04:38'),
('c3f197a9f1176803105f220010', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 18:00:25'),
('c3f78c7aee7da597f1e0f705bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:19'),
('c449bb91a97a31824d93f4c6a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:32:19'),
('c479b8ddbef4b3c9a8b03af35e', 'false', '2019-06-30 23:30:01'),
('c4810518c5af2298cc4b378dad', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/return\"}', '2019-04-18 16:20:47'),
('c4a47b1b448421008c9f51e585', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:36'),
('c4cfc0e444bbb2d65c66b19b53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 01:12:39'),
('c4d181ced2dc1e9a893a01bad6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 22:10:52'),
('c4f21e52f3df2f10ebaacb91c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 14:52:15'),
('c521fa7620eaf6f3b4a2d67958', 'false', '2019-06-30 22:05:09'),
('c52771601cf45ed561284b133b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:57'),
('c543d9c7cc8a8c51f65686f0fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:21'),
('c55ba18de449448f8d9246c644', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 19:05:15'),
('c561739483ed768f0bf19108ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 08:12:12'),
('c5633678229952a6d2737ab7f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 17:09:41'),
('c571c2b2aa6237206fe47cdd27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:24:48'),
('c57747537e390ced7f41ff6b5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:48'),
('c5b27e27895f61b6683b898e3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:46:38'),
('c5bbe9d48f48c0b227e9d4ab57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 07:07:05'),
('c5bcadb215a89c7d50f4f84360', 'false', '2019-06-30 18:14:57'),
('c5bde7cab82a56c727bff09786', 'false', '2019-07-05 15:53:13'),
('c5c3751c3e1f3b1919c0465fe7', 'false', '2019-06-30 18:40:53'),
('c5d5634bab714083b7695a2a0a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:24'),
('c5db3e4a02193a334ad682cd53', 'false', '2019-07-01 01:56:30'),
('c5edb980736a06cb2f450b2940', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 07:39:38'),
('c5f8fb17d6e616cdf63ae8ec01', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 05:12:55'),
('c6025767e2c02c9d1401018497', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 21:31:26'),
('c604570ea9e1115bac71f88121', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 10:50:24'),
('c60c723dddebb1626e662a3a80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:55:44'),
('c614c288448f3b3e2f89857f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 17:44:13'),
('c63dad4a4cc259d5486a819395', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:07:32'),
('c641612b2e71165b39039ea2cc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 05:16:00'),
('c6419ef1c6fa76e774db46564f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 09:38:46'),
('c648e1d4bcce2d534b9febbb3f', 'false', '2019-07-01 05:38:03'),
('c67013d67c4f0b48578be0fcb3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 04:36:19'),
('c68b031e4148d6e605361ca798', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:32:00'),
('c69777824aff9d6392fd8bff00', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:31:49'),
('c6a6d9f63772971758603af73d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 12:54:47'),
('c6bf009950dd5705e1ab75f59a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:45'),
('c6ec09ba7332336cac0b2d7faa', 'false', '2019-07-05 21:25:43'),
('c76cc6c87e75f91276cf24407a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 09:05:39'),
('c76dc9f422cc5db15417c30844', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 19:57:41'),
('c7796882b6d4eb5172ba010f89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 14:59:36'),
('c77e7110c7c408aae87a5b7cb7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 15:27:36'),
('c791bec81e2146216baf342961', 'false', '2019-06-30 16:28:01'),
('c79ab07baa5dd9e2c4c994533f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 15:23:10'),
('c7b000a20ce3fc229c1da90434', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 20:34:08'),
('c7cc541ca28c29c93986c7d144', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 20:55:49'),
('c7d84abbd14029d8a99d26a955', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:14'),
('c80143447ce1bdebdef9bc44ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:08:35'),
('c805c75bd84a3939da3eb46d92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-06 08:06:47'),
('c82617f19b7e988b932637db72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 07:57:08'),
('c83d84026165320c3bfb845f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:13:31'),
('c8440c09e932dba1e8792dfa80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 16:17:59'),
('c84c7975277744052204050960', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 01:39:24'),
('c860a0bf5a09626304754ba934', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 23:59:59'),
('c878ffbdd50cc080c7211e21ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:27:17'),
('c88b53c86f1729091ee4b79697', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:21:19'),
('c88c582207ea5fbe62f6a6b7a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:02'),
('c8b48285830f30069121b8204b', 'false', '2019-07-01 03:03:07'),
('c8bbb50c4d6cda279e40f98ca4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 13:09:23'),
('c8fa3f1b8bb6dc483f33554fbc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 12:25:01'),
('c907e15f410ad8a6ee0bb5ebd2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:23'),
('c910e8309326dbe89dbfa2a988', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 18:10:00'),
('c91a0fcda8495a446c423b3a6c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:11'),
('c927674f1906189348e9dd5c21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 12:45:05'),
('c94f709e19012dd9e7ed2f1f41', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 15:26:06'),
('c9523615b864fafc3c91022056', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 17:33:17'),
('c955acaa991929cc93a9c13568', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 14:40:22'),
('c96a45dc801b668a5f35da1632', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:01'),
('c973464b53ef8c24a3701dd42b', 'false', '2019-07-01 04:10:23'),
('c97c6352651d7a59245821d21e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 22:52:44'),
('c97db4fc1b75b8e5b7d4b80ab9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:50:00'),
('c9a4a9a702eb05f97633d98256', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-22 04:12:51'),
('c9c39299f1076dd32e74903082', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 17:10:13'),
('ca0be8569735cb87b92bc06445', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 00:20:58'),
('ca15b21b99bd4d02986a2f9a78', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 10:41:31'),
('ca32cbf4f819f8fbdf5b5aee9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:18:58'),
('ca70e6374a59485a2c9a868a8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 12:11:11'),
('ca7eb3b6b6bd0586aa4c473715', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 02:13:13'),
('ca8999bdb0d5c77dfaea11cfa9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 21:54:19'),
('ca9973ddfb914afff0f49b861e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 00:11:14'),
('ca9c93d0c115855efb09bb9de2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 21:59:55'),
('caa02a2aa5845151bf18ef4ea5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 21:59:59'),
('cab783b455ec1916589191f630', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 16:19:48'),
('cac87cc545ec336778c11a3c5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 16:03:17'),
('cad6b1a86fdc4773990786cc68', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-07-05 06:55:04'),
('cade805995058b27cd6d57f95a', 'false', '2019-06-30 16:50:49'),
('caee8c384fecbf943ef296db68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 01:12:44'),
('cb143ce105ce1cb71061b9e4bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 06:59:00'),
('cb1b967db48d2bd85ea921ff24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:26:44'),
('cb3150bd6155e7b968895befd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:05'),
('cb560b91799d8104ecc1aa1309', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 02:54:00'),
('cbb3f91a5fc1025fde426c68d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 04:01:18'),
('cbfdaee81a73417c79e860ba60', 'false', '2019-06-30 23:55:34'),
('cbffd1507148e53340d0d416cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 13:10:13'),
('cc2864745cc5abfc7d60631515', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:27'),
('cc4f87336cde195324e2684f96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 17:54:29'),
('cc6cd003e428e3441f82c047a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 23:32:35'),
('cc786346a9479472111681e3e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 03:41:15'),
('cc92ead15f211569af9cf57d38', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:52:47'),
('cca6629e2734216f3d488394c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-06 14:56:54'),
('ccd1460946913d9ff349d436b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:57:56'),
('cce1a7166412c1a51f54723de5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:51:08'),
('ccede2c65466e150375fafee8d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 12:01:02'),
('cd113dabcf257a2a680b78ee61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 07:50:27'),
('cd1967fc49fd971928a2a07488', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:19:44'),
('cd3b8f95d3c9cddac998c04aef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:07:01'),
('cd3c86f37a060383b9b8c647ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:32:51'),
('cd7b210785362fdb079e3f2dc9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:16'),
('cd807fa63dc9c86c82ee14d798', 'false', '2019-06-30 20:32:38'),
('cd8bcac3b590f45e0228347e93', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-01 12:32:13'),
('cd99eb7ea46843d49a26abc4e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 23:33:49'),
('cd9f18f8e9b4262008066498e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 14:16:43'),
('cd9f3f7bce59aca3993723af27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 08:07:07'),
('cdad990cb8ffb49105241becac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 14:46:12'),
('cdb4322cdce3423bfd4c7ac86f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-11 19:44:21'),
('cdb86ab8fd25122b280ddafacb', 'false', '2019-06-30 17:09:54'),
('cdf6809537600b1f7c52ddc310', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 22:01:45'),
('cdf9e75d59f11d01f636fdbe27', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-30 03:14:34'),
('ce0787b9454313044a8f6df5e8', 'false', '2019-06-30 21:03:22'),
('ce0dfab6f8505a0dacc32ec949', 'false', '2019-07-05 21:21:34'),
('ce11ae777f437ad1ccea512d0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 01:05:59'),
('ce127b06fcff6bea2dde88c2c5', 'false', '2019-06-30 22:45:36'),
('ce281bb2d5d158f40031dc89d9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 22:14:19'),
('ce28c8d856e9ddb3b8acdb9210', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:55:54'),
('ce314226467d5c455b8e6e2a60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 06:51:06'),
('ce4f586ad933fd51bd76cf821e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:54'),
('ce5c6f90f72cce547386a79841', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:43'),
('ce6bcbb09475a1929aed29e1ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:11');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('ce7f20c9e07f0c4f7a61080b10', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 12:57:24'),
('ce81449216586cd0010ae394c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:52'),
('ce891e5e2b8379a8af8dc0e9d5', 'false', '2019-07-05 18:41:42'),
('cea62d5f78bdb0c4ffdcf695bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 00:02:57'),
('cebeb971c77dd51853033bda71', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 07:29:38'),
('cebf0298c7322fe646d4e45b77', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:25'),
('cec16903c1bc433eb99306c363', 'false', '2019-07-01 01:09:19'),
('cec1a357d0033e52da7a3768a8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-12 12:58:53'),
('cef052434294a11167ff2b3f9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 20:40:36'),
('cefcd0200e4eb370c183d707b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 10:29:07'),
('cf05fcfca57157c09b7e288e14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 22:21:40'),
('cf27aa410bcd7b76df5c713cbe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 06:55:22'),
('cf2ada7bb0aefa93aed414958d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 02:49:26'),
('cf5c6fd396f00dc1018264253d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 05:39:35'),
('cf74359ad07fa24dc57df534f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 12:37:11'),
('cf80743063f1b417b631e320fa', 'false', '2019-06-30 18:53:08'),
('cf868a522afc0fc4cea38e90d5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 09:04:30'),
('cfa2ad1264910308ea17ce86c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 17:56:11'),
('cfa4499f2ccb7005c310462c7c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:19'),
('cfb26ad3153d34edf5006e0502', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 00:42:55'),
('d009ec3f483d8373593e5cc5ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 23:32:18'),
('d02ec568cf626ef95254095bad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 11:01:03'),
('d030cdcc3c7bb9aa1db09f2bd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 22:52:32'),
('d0387e95bc48493aecb463ab71', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-04-19 07:40:35'),
('d0388d7481906bac73be06a936', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:52'),
('d05f6059c6c383b8f6aee6f246', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-21 22:55:43'),
('d0677763af1ec3a1b58eb90053', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:13:55'),
('d086f326e8a825065a4db723dd', 'false', '2019-07-05 18:19:06'),
('d08b45f3fc8793bd1878c090ff', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:19'),
('d08cd1397739d5373ab8d02b33', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 05:11:20'),
('d0bdab7c7c8797a1fd81657281', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 20:52:34'),
('d0bf44b1f07e66ba36976998cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 21:56:37'),
('d0ec130e9c4d8795c4ad4818b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 21:40:35'),
('d0ffb739a7360291506fc0f81f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-07-04 05:05:52'),
('d1001198ea2d0e1b7412e26416', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:34'),
('d1155cf7190b2099a785a6b519', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:06:49'),
('d11a67b075c418b898fca1fd73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 05:03:23'),
('d11c59441fc3069cd897798423', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:32'),
('d11fd801d4361ec6847b35f1b3', 'false', '2019-06-30 21:27:57'),
('d154ec4d7533c473b74567fab7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 07:21:00'),
('d18a1692350627d0cbd916977d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 21:19:09'),
('d1a6113c39410bdc3322962137', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-13 20:49:41'),
('d1c60897b1b28002dcd4606aa0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 04:12:14'),
('d1d8c76cdd0ff92d54fb0d169e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 19:20:40'),
('d1fd87fbf579033f3dc05d57a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:34'),
('d20933e15813a75d94c0e35eb0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 02:48:39'),
('d2243315e6a6ac80b7e2d1d891', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 09:46:25'),
('d2291f53e075c5973552756e2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:08'),
('d233d90833e2fefbcf4d46d90f', 'false', '2019-07-05 16:26:20'),
('d23fd6ee9a9a9731a01d806a3a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 11:55:18'),
('d2414b0a85645483e40684380f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 22:29:50'),
('d242fd4b7973c079160a3d3de3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:20:01'),
('d257bbded83d3c1d48e8e9988d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 04:16:10'),
('d263f7926e09876afee49cbd92', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 14:08:29'),
('d286d02de3975051dc372d7b8c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-11 01:26:57'),
('d293369f572c9bbae32ab0f942', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 14:22:07'),
('d2a492b15e2d68d712a641ee19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:52:10'),
('d2aaef232ae7803f0d36c899e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:24:08'),
('d2ac45a3bf60dce950d702fb9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 06:35:50'),
('d2ae41ffd7ca1927f101b2d00e', 'false', '2019-06-30 16:08:09'),
('d2c34c30da9f9f5a8025e2fc0e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 19:06:56'),
('d2c709c7f5262074d4336ba0b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:56:30'),
('d2ccf3f5fcd4fe06f2b1739f1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:07'),
('d2ddc00606c21698d86c843b48', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 19:14:10'),
('d2e284b4ded80fb12c62aef789', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:43'),
('d2e36ba83e023976245660d694', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 14:51:12'),
('d2e52353e8d84cb9de03c19d57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 08:34:33'),
('d2e6faae3939a28dbf25f4732f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 23:18:47'),
('d2e87939c1bd552a8b20bf2dc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:47:28'),
('d2ef756cd26e47e62de84e2389', 'false', '2019-06-30 21:58:13'),
('d2fb5d52f1d5c2735cd4d787e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:33:11'),
('d303c421efbfa24b45ec90eacc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 06:42:37'),
('d3064c813189d4f7bb8369a72f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-29 03:59:26'),
('d31f7c7af505bbd2fb95c9e750', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 12:09:15'),
('d328b33d0b684ce233f288f568', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:24:45'),
('d328d9c6e292696d18d4cdc4ca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:16:37'),
('d328e67eba78e852cc7f088f29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 05:12:10'),
('d329d36a87f481645061830a8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 17:47:52'),
('d3380888a842828ffe6cbdf6a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 12:44:47'),
('d341e597149143a904dc4f999f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 09:07:04'),
('d345f1ddad2187df5635c8b9ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:07:41'),
('d3622a80565313a44bb668aa53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 01:55:34'),
('d36318deb66dcff3e0b76e67b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:41:36'),
('d364e3d4e494c80237e4444b7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 00:03:37'),
('d3704a7b959753b08c3681464f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:25:36'),
('d3751dcf3bdbde2be171698673', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 22:31:05'),
('d38e4a34169f76802584771401', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 07:36:58'),
('d393172a87ce762f7de1a643d8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 08:47:25'),
('d396d62b71e3fd14a4e85cc825', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 11:13:14'),
('d3ab96bd37128acd512acdbf51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:32:22'),
('d3abd61c631836e74b2bfa70d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 23:29:12'),
('d3c4c1b6abaddc689f0d4791b5', 'false', '2019-07-01 02:34:00'),
('d3caa06a27bcd98934b8d3ccc8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:26:37'),
('d3f3551a1e26ac6b986d6b383e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 02:40:00'),
('d3f844e79bfd7381572c2b5947', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 02:17:20'),
('d40db17e2da276cfd5534a4ea7', 'false', '2019-07-01 02:43:32'),
('d4148da0ca103c596189528eef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 14:10:39'),
('d41bb89da131028ac5074689bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 03:35:49'),
('d4388239a638fe7516dc4daff7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-23 00:07:13'),
('d4391c5d6c239823d62fa0de73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 22:31:00'),
('d459d1b2fcc856579297ff8deb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:48:06'),
('d489fa8db677f592403d764d87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:09'),
('d49b7762523ca466fe83990db5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:10'),
('d4bcbe3b6f85ec39df8ad9ea53', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 12:11:12'),
('d4d07a8d3ea6267fdf48bf58af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 19:48:09'),
('d4d6ff94f03a0bc57337281984', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 02:29:26'),
('d4db372e98b19257b9f4b97183', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:22'),
('d4f428da3e120eb8f548c41068', 'false', '2019-07-05 15:20:54'),
('d4fdce3603663e2ae2c99dba8e', 'false', '2019-07-05 16:44:35'),
('d50fd702df3b7f9f9f9eec6599', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 05:52:06'),
('d51569129066392cee5950de30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 16:25:58'),
('d51e2e1741e66a8d7ff4e8b9ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 09:02:00'),
('d54ed2acc2908cf595fd9c0aba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 12:28:40'),
('d55ddaebf47cccc88e8077229c', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-06-05 05:43:55'),
('d573baefe4849bd965ef09910a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:30'),
('d574923dfea5ae3f237da7ea97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:38:11'),
('d5765e58a4019d5fa7f48361ea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 23:18:57'),
('d59262371e6466094721b49804', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 02:53:47'),
('d5a023fe7ec6050b14868cba72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:57'),
('d5bcdf66d73465f99555e805a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 13:54:48'),
('d601c9887e89e6f339aef9f68e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 05:38:27'),
('d60cc9c4f4c2fe4698b3336e4d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 17:57:22'),
('d649c490c18a875269bf7f1f39', 'false', '2019-07-05 15:22:59'),
('d650096ef940cba2cec4a2e33e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:16'),
('d6610a8dfc08193c726c7d385b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 04:09:20'),
('d6619c990fbe925fee6be2c57c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:13'),
('d66a162189679da743395ffde5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 09:06:52'),
('d66efd9f125a46d94428dd9c35', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 17:39:42'),
('d6837a19b3f51a66455a0e374b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 18:45:55'),
('d691b6d7c6337170f66fc69d82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:35:26'),
('d69342a81c60565aecfd001240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:57:06'),
('d6b794afd124466748f5584ba1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:48'),
('d700a59b2980670985338a3f40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 06:29:35'),
('d701da75b33c4a791de9cb3e5c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 17:24:57'),
('d709f73e56a5c93d3b4d7d2ea6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 03:26:12'),
('d71612598f05b5f385965a9222', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 06:19:07'),
('d730337687d3c405bb51246342', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 12:27:38'),
('d7404f88455e0ed53c399236f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 18:47:22'),
('d7734062dac03ff7c2680ac68f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:15'),
('d77c17f8e880d5ac5c0a0b7ebb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 02:40:09'),
('d77ea2a80e8035daed919f4e25', 'false', '2019-06-30 19:28:39'),
('d7a7f9dca72a1b850936b0a1c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 22:28:11'),
('d7c7f560a1a7abab479bcb347a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 13:37:36'),
('d7daa7957ab187c4c46ac7ce9d', 'false', '2019-06-30 21:34:12'),
('d7ded3adce061235adfb53b00e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 02:00:09'),
('d81c316b0f8b39ce52209008c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:31'),
('d81de77253e8602f427b8be705', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 13:50:01'),
('d8472286c40e286529f9002b5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 09:53:07'),
('d856f9a92898de5da96ae4e2bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:03'),
('d864879b406abcb1b66fcc389f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:14'),
('d87e7e2cbe9fe379c507b61da0', 'false', '2019-06-30 16:05:24'),
('d88c7f433fbcee555ac5fd88e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 17:54:03'),
('d8a00e7ad2b34dd7efb3c0306d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:56'),
('d8b2cd12ae9ffc4c34875d12d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 22:03:04'),
('d8c8deaeb72b4658fae99f72b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 06:24:15'),
('d8ccabca30a1c907260eb3b45a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 15:20:29'),
('d8e0624605475a52253a14f228', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:28'),
('d8f261bc3a8ebefe5ce28f1f82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:17:11'),
('d8f8deef776cd97eaf5ad53427', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:22:33'),
('d92176c63ead5a48878e16588e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 06:46:06'),
('d92e42d85d8de5f9fa3a17ce3d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:20:37'),
('d92e8f79f9a0642f0b03124cda', 'false', '2019-07-01 00:40:24'),
('d94b298abc443986a56720a056', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 13:52:54'),
('d9541ea0fa11fef34f1080db2b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 12:42:23'),
('d95f066b3285cd9dc10ff1ea29', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:28:41'),
('d9612faae078a69e9f485cdcce', 'false', '2019-06-30 21:55:13'),
('d96ad15f9920fafd1954a5e604', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-23 06:44:40'),
('d9704babac706f4ebccb7cee2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 23:58:48'),
('d97162dc6543d8c036266e9b62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-09 01:26:43'),
('d98a87f9b95de28cd6b372d62b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:26:08'),
('d98b2980fedb1523b8d72aa6e6', 'false', '2019-07-01 00:15:11'),
('d990715daba57ab67353f52d62', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 16:01:40'),
('d9be2065e29c93302a11fa0240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 04:44:40'),
('d9c7c9fa6ecae1c6f4d983e8c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 17:25:22'),
('d9d7313d6895fbea936ae417ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 07:41:11'),
('d9d82528fd54cab2e8e1d92768', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-22 13:53:08'),
('d9d83a9524277fe19d5f121579', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 15:06:15'),
('d9f4a5b378934a9d8a438717b5', 'false', '2019-07-05 18:38:14'),
('d9fa90d1790c7931bdb508d187', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:24'),
('da127973cc950801c73923d265', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 22:35:16'),
('da178cbdd9833d84c251a99a08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:13'),
('da2de7820ed70b77c5d8e3880e', 'false', '2019-06-30 18:31:28'),
('da40605616203a5c9466e482eb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:30:55'),
('dab0e0a670d1be1ccffb9abb0b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 17:59:25'),
('dad9bb6165d3590066fa86aec0', 'false', '2019-06-30 23:16:17'),
('dafd5cd6f8837121f2aae16a7e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:53'),
('db0fcea0e94cc5079049e39213', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 05:51:55'),
('db16de48d59ba9aab406d7cc80', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-03 02:10:02'),
('db20805723470313aa173a5a1f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:50:11'),
('db24b3243fc69706f63915549a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 21:12:05'),
('db2eb583215bb1e30211c43b18', 'false', '2019-06-30 19:11:51'),
('db7a5d239276bf64e9dab681d7', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/newsletter\"}', '2019-07-01 07:47:35'),
('db9954012a0cb049577bd95c0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 16:23:28'),
('db9fddf9397c6c5c58cb8dda1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-22 20:50:09'),
('dbaeaa3eb2375b89ed7ca7382e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:20'),
('dbb91d493b1466819a497888df', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 07:31:22'),
('dbc94083dbc3d06b442e7e548e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 04:09:07'),
('dbd681172870ee784bbd63aea5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 03:52:52'),
('dbde2b0c0a3c16f993cf4a7e55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 01:19:33'),
('dbedffa18be37c436e40c049c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:03:45'),
('dbfaae96a43b9a347c31f2516d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 03:36:43'),
('dc03d92be8a48e01a28702f51c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:32'),
('dc1127aa5e2217c25554c5663e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 16:01:28'),
('dc35cbdd6eee9a61e5d21c1ffd', 'false', '2019-06-30 22:38:44'),
('dc3e3d43e9b4b1a7f033781bd4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 13:55:18'),
('dc402d95892e477f5e13df8ba5', 'false', '2019-06-30 23:12:05'),
('dc7f637b1aa59a776129b62b02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 05:40:50'),
('dcaa5996d9a67b279c9f0de025', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 16:02:54'),
('dcc63c07b7dc6fbc723860f6c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:28:24'),
('dcf6573c077e36572767a9be13', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-13 02:02:48'),
('dcfb548070db69329ec3ae31af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 05:17:10'),
('dd01449f576e5e8c5203a0ae20', 'false', '2019-07-01 03:32:06'),
('dd01dbfae42db7d688a698ddde', 'false', '2019-06-30 21:43:51'),
('dd0bcb136115a93b5e0a6c1494', 'false', '2019-06-30 17:55:32'),
('dd34c71d4ddef56812253217b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 10:57:37'),
('dd43a00e90b6fe263206458c84', 'false', '2019-07-01 04:43:35'),
('dd46f22190e6629d860f2fa384', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 14:12:45'),
('dd57dc7ac828f95d1012c25cb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 21:59:13'),
('dd7b47f69abe788e0f12590d8e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 05:04:14'),
('dd7f1a2ff272ad114d7e6f1a3d', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/address\"}', '2019-08-01 15:32:56'),
('dd9bfb21bd437124add9e8e584', 'false', '2019-06-30 19:34:13'),
('ddb8dd759e077306ebf6b74f3f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 01:09:10'),
('ddba73dc5f9c0bcf28f1166216', 'false', '2019-07-05 18:43:50'),
('ddcb1362a0cdfbe2ab6dfd54dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:54'),
('dddfed95e82ad2edec7dc413fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:22'),
('dde2f6c51e9a92a500a348a2db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:18:58'),
('dde633d0aa0fbf1179ff049375', 'false', '2019-07-05 17:16:32'),
('de0748cc18cb2fefdbd4a89dde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 01:57:17'),
('de0a529d06c3685d672f460770', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 07:52:41'),
('de0df12419004c855d08fa2476', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 06:49:16'),
('de17dc020ea8a2987b8d20569d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 19:27:13'),
('de39f6e9baa26a3571703418fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 22:29:05'),
('de409c94aa5948b5e33dac61b4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-23 07:01:45'),
('de4bde8df6ce9fabf27e84dc05', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:54'),
('de5b5a5d74205aaf7ab9fdd90e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 21:07:51'),
('de7b9b53bf247d20a04104d707', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:57'),
('deb1946bc572a70a2425a5e752', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 10:56:52'),
('dec33493be3c25d97d30a13de3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 14:55:09'),
('decc33e90a8279f0b04343f23c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:47:55'),
('def67213c91a8b89dd79133bd1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:26:51'),
('df0c83034506f19d9b074fcbc5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-15 03:04:08'),
('df11ee63788d1ac3c936be927a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 03:53:42'),
('df1f696b69c2c131be91ce7f2a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:33:42'),
('df3ad708332d53d46ff87335c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 15:45:15'),
('df3ce547ed760b156d0c6db282', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 10:54:34'),
('df691441c65d57e50888d63823', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:06:03'),
('df6def15b02396f9fd96d6ed55', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:02'),
('df6e9bf6a0e06be751e1fbbad9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 16:13:05'),
('df719587563795b34b543e36a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-06 15:35:06'),
('df8655229e9fb45106b2a1750a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 06:51:45'),
('df9557bfa20c761b4b7d48ab5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 22:50:14'),
('dfa3b58399481716615af07917', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:53'),
('dfb0f417b9cfe83c575cb6aa44', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:43'),
('dfb1ff808ac1b250985d249b81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:35:46'),
('dfd161e6e16a63bcfaaa820199', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:10'),
('dff4a3064bb61cd4781efe2919', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 00:49:35'),
('dfffa76e8ca019e058165443d9', 'false', '2019-07-01 01:59:10'),
('dfffbffcdd5a279449585c469a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 00:51:16'),
('e00cb8a2d1fe0b5ba90d8e760b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 11:58:22'),
('e01ca1cb0b0f32e05b05598018', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:00:36'),
('e01fc869ab796de8be0db84ab6', 'false', '2019-07-05 17:06:21'),
('e026174463482c96f5622abc72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 13:56:00'),
('e02d0a7cb5d8747aea4b53b14e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:11:01'),
('e02e9e3c0fb78ed9b3937f9053', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 05:40:22'),
('e036d7cb78ffe435158ac00e5a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 14:43:20'),
('e055ca3fe0f7e598a74e4bf678', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:49:48'),
('e0637a6a9f3dbfc1bfd53b4240', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 06:45:47'),
('e0665db9eb7f29a29d020af86b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-27 04:40:36'),
('e06bfc7783b4643bbf3b4f4416', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 01:41:53'),
('e070eb2b54aeae290e920e299c', 'false', '2019-06-30 16:56:14'),
('e09d4a58c81c4b7ccdef478e9e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 01:20:13'),
('e0a9a049be1ae07b7769d71e0d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 13:47:21'),
('e0b028e78bef1f1793314d3388', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-05-04 03:23:04'),
('e0b1a9f9db3773737beef4c93d', 'false', '2019-06-30 20:49:00'),
('e0bd7ebd83b3d9791152e98e1d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 10:38:38'),
('e0c1a930e13440df8879e6bc3d', 'false', '2019-07-01 02:37:49'),
('e0c900aa502928344646a31169', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:27'),
('e0ceafd2c9956a9fc98589231e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-03 17:18:53'),
('e0e9045996f83f7a0463bacc50', 'false', '2019-07-05 16:38:18'),
('e11a8644e10c555465496bb34e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 08:57:08'),
('e11af6fd53b56a22748e259a9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 02:08:22'),
('e11de312f34456a80e2a647694', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 22:17:14'),
('e12b8eb9795b420a60ce4cc632', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:25:12'),
('e14af2dd0e3e5bdc9b6b9290ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:59'),
('e16264f17039a7f4079869c7b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-23 13:00:56'),
('e16757ba6c4f1918b2bbdc5cae', 'false', '2019-07-05 15:30:31'),
('e16836c082ea755be420758376', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:53'),
('e188f9ba7dc831b80bff9d9f4f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:52'),
('e18f282ed0d46946ef4e40d8cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 21:34:56'),
('e1917761044c576327bc6644bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 19:43:32'),
('e1929f637f5354d47c11fa1b4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:11'),
('e19330f8cf2db4aff9ce690e03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:05'),
('e1a77dcdadb25e2883c01508d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 17:10:16'),
('e1ab32ea3278348f4d9ec64e1a', 'false', '2019-06-30 21:33:40'),
('e1b9ad4a380966e83e16d6caf3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:39:54'),
('e1e657d72bb6d87a4fe472f841', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 12:17:53'),
('e1f0c49ab9aa884c7ccc6246d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:27:15'),
('e1fc1636892fc1da55743280ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:21:07'),
('e202633c56f09dc9dc6527714c', 'false', '2019-07-01 03:10:06'),
('e20e3db1db28becc34ffb2bda7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 18:07:54'),
('e21534314eea23b27507a45219', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 18:19:38'),
('e22d59e8e63a771493dd4d5f55', 'false', '2019-06-30 19:31:24'),
('e230e04853748639199f6f9529', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:24'),
('e26ffc7c07f40db28a50ca25bc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:44:57'),
('e281ea82449670fb709016d9e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:42'),
('e288ff4643b2c1a9aacdc0a976', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-04-17 05:39:28'),
('e28b750a759f5545042a052dd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:44'),
('e2925443aab5db166ed367626a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 10:26:16'),
('e2c0dc481ea006ee3d168bfbd3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 20:12:55'),
('e2d7cf09962bcb7dc5e1358446', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:49'),
('e2e476d79c3686a11a52c22630', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 01:02:40'),
('e2f4354dd5a850fe2123d6d50d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:36:30'),
('e2f9c47e6e4812882d27515880', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 02:54:01'),
('e2fd02651c84130a1f24aa9de1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 11:55:17'),
('e30d8fb0c903ae84353df2869a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 05:22:58'),
('e32b43e905cb19cd3155a9db25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:09'),
('e3474ffd738d3c2ac4aa084cd6', 'false', '2019-06-30 18:16:50'),
('e3475575331a4ca6093503ba72', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:38:05'),
('e36a44395225f86a2ee04d0945', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:08:43'),
('e374bef2203724bf7bdd55f42d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 10:36:35'),
('e375aacb51ca8bc1e6210dcce0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:15:34'),
('e377a5ccefd2173df6ff8f4d25', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 10:20:52'),
('e3816c20aa7a16c1175079ab1b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:27:17'),
('e38175146a7d5e2d4ee3531d1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 21:58:58'),
('e38c6dd4406d840979c487b7c6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:15:01'),
('e390df26f91e76994b31e0d9ce', 'false', '2019-06-30 23:02:23'),
('e39239bb862a92a2bb4a04d441', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 10:17:40'),
('e39e555accfca536f4678a14ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:55:19'),
('e3aaf6804f470f42a0fcb9ac61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:11:46'),
('e3b0d47fcc9a53729559526668', 'false', '2019-07-05 15:18:06'),
('e3b7b29d12647d793142992421', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:27'),
('e3c02401b2539f0209bb057392', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 07:09:30'),
('e3cd9ec00800afde8a1d9d7a59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:32:28'),
('e3d07e84419bbbe812e9227ff3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 03:12:02'),
('e3d4aad7d28ad40592dc75846f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 23:58:47'),
('e3d5a5283d5c3201ff51ed1938', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:23:23'),
('e3d85a4eff9942a5795f4b0c1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:41'),
('e3dbbd4edd42034486ceb815be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 09:18:43'),
('e3e3c57e013529192519650771', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:33:09'),
('e3f03467b7f47a9aa0bd8cd983', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:31:08'),
('e3f5a8b3923c7d2e04ec1046f9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 23:04:52'),
('e40903341f87f715b6f082052e', 'false', '2019-06-30 23:24:26'),
('e40da3bc12020a1be0511f8e81', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:07:22'),
('e4182a60bdbe597f010b92dbb6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:17:16'),
('e41e7872f5dbad75a47b020a5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:31:32'),
('e41ed819db9682c2a2649758be', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:02:10'),
('e439e39cf9cd3658ebaf1f5b46', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 01:20:22'),
('e46cebeaebc2bde4018fc1ab48', 'false', '2019-06-30 21:48:02'),
('e476edf76db586a1c6f11f75a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 16:33:01'),
('e4937133cfc3c1eee80c42de4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:49'),
('e494fdaf646749f4706b2ee729', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 05:13:40'),
('e498085debc6feb92cc5d5b045', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 09:23:06'),
('e4ad7ade3bc1e2b5f9d8cc5113', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 15:37:23'),
('e4b7bd0d51c04560050f5ce808', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-30 20:31:15'),
('e4c46290b7473ce01fbd04b350', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 11:18:54'),
('e4e93fd65635c3b460aa22391f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:13'),
('e4f03ee67a176f07e95626ccb9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-04 20:01:46'),
('e4f60e9c64208bbc6f6ba9c926', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:45:49'),
('e5025181d59df40054a8a718f0', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-04-29 01:56:15'),
('e5034afcf8317449463f6d6f75', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:26'),
('e51f6b49b776528b37ffdbcf68', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 15:31:18'),
('e52391cbf9b8ea3018718c9583', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:07:47'),
('e525fd4bd134308d9107f4a0ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 09:27:19'),
('e548243522af14872eb9601f42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 16:05:03'),
('e551f7cc8a48ed7c11c3a8ab5d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:11:49'),
('e57163b6cf064219c84100b61e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:14'),
('e573ef5b2f9846c5ad896f0b31', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 11:20:54'),
('e585568e226b1a6ffcc51c09ff', 'false', '2019-07-01 00:30:58'),
('e588f5f3531c5445698f4daeae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 23:00:32'),
('e5992956977a500305cbc2cd5e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 12:28:12'),
('e5a7535dfb8ee9ead29cdb38c0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 06:49:34'),
('e5b33e2aab038bc3f418e5f774', 'false', '2019-06-30 20:21:27'),
('e5c8b9694c4e26eebe6d1b4bce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-21 03:08:04'),
('e5d017717407d01315eeac0629', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 14:01:08'),
('e5d6676b935877de5ceb299657', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 00:09:31'),
('e5f6b2832faa8b05d15cf333d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 15:17:01'),
('e6004f2109e660cdc57a752c06', 'false', '2019-07-01 02:59:57'),
('e627c9510e750ab7def6a81163', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-14 16:30:35'),
('e62c809a5c5859f795b6e1b404', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 04:28:20'),
('e64756d8e02e8ca5c06e7b4e4e', 'false', '2019-06-30 16:16:30'),
('e6648d0ed990599d6b04b8e31b', 'false', '2019-07-05 17:14:23'),
('e67011d93b3b59596f33a405e1', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/recurring\"}', '2019-04-18 16:24:08'),
('e68091f97bb4031e1752867695', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 13:59:13'),
('e680db9f7b35ce9caf6599866e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:36:40'),
('e683ebe8dc682cf3abefdcdd4c', 'false', '2019-07-05 15:16:48'),
('e699d63b5d863ebd2c1bdfdaea', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 23:24:07'),
('e69b0ad2f8d82a76d8259d6527', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 00:55:17'),
('e69fc4cb2390ad167bfaf05847', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:37:11'),
('e6a43b429f0dd4141be1929e0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:53:28'),
('e6aa228252f43ce9395426002a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-27 01:44:46'),
('e6d17d253cbd736a93e407107d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:09:58'),
('e6eecca3e9fef8ddc271c22f87', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:29'),
('e6fe003db9ec6662bb3806d82b', 'false', '2019-06-30 22:40:56'),
('e7123a127b470b6427472bd75d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 11:00:35'),
('e714ed108b9599a3334989987c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:19'),
('e72267961c158f8cf8f9de6028', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 01:15:12'),
('e7282b818e13f10923f628a3cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-13 17:29:19'),
('e72bbb619ee54ca6d40fe78aa3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 16:24:45'),
('e738a44c803c70b770106e351b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 01:20:25'),
('e73b162b05cb2a501e2c23d0c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:54'),
('e74791d3f127e406e68cc9aba5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:48:41'),
('e768429ca048343531b277115d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 00:52:08'),
('e76c3ed524f98ab73974f62a6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:20'),
('e7796e9e371b1491960989e8ac', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:46:49'),
('e79e623446e69c2bf48bd49f1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:15:58'),
('e7a02eb2fc276cf87e85a07e23', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 01:19:32'),
('e7c0d99beccd225056705d4a39', 'false', '2019-06-30 19:21:45'),
('e7e3ac110422c485b3f13fd512', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:00'),
('e7f0ff218e56341c015b1f5a02', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 22:11:48'),
('e80aa80602102bcbd79cf38baf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 21:14:31'),
('e81e61a1337b44aa6887e3a7e1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:06:21'),
('e82dcfdca6192fd1f08db92306', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 15:34:54'),
('e832802160221e50e1f4a8aa82', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 13:50:21'),
('e83d2a8b633664cb5559eb6725', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 00:31:12'),
('e849a7724e1e6c47bc841b84d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 02:26:22'),
('e84db0a5efc1c2614426f24eed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 13:36:34'),
('e8520cc2d3ca2cb04fd4f2170f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 05:42:19'),
('e868403be6055a80427fbc619f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-30 01:30:20'),
('e86d46705cd55560709b8fd694', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 01:26:39'),
('e8705b08a1a6e55331b107f3dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 15:27:51'),
('e88799f64d11d49907004ef3ef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 20:29:41'),
('e88db073ccf10e3ed551fe1cbf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 07:18:16'),
('e8927fd15afe6449c102017963', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 20:33:44'),
('e8975acbf55cbc771630e450ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:11:56'),
('e89ea3d1fdb6734c5184f112e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 20:47:34'),
('e8aa88bc83c0b57e554e744713', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:17'),
('e8c1b2cbb707e662e0de186444', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:11:17'),
('e8f29f58073b00c31426fc6907', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 20:30:43'),
('e8fc27fc6c66fa134bf09160ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:54:27'),
('e90e5e416b9b7df64c7ab94a8b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 18:35:33'),
('e917508280fc5d2f6a53a544f4', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"customer_id\":\"4\"}', '2019-07-16 05:51:16'),
('e9384083b9efedae6604db03a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 16:47:32'),
('e9396642e00d8b01076ca8383e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-04-22 14:37:41'),
('e942d8df4a5bbdd2939046cc7b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-20 16:06:30'),
('e944d870ffe4ee0d81e7d15f7f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:01'),
('e9461b3b2eaddf38d99c47603c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 04:08:03'),
('e9626ffb9424e87da8df2d67bb', 'false', '2019-07-01 01:52:11'),
('e96889fe4430704803953a71a9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 19:06:30'),
('e96d51bd16384b9f1cc21a8608', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-07 11:18:13'),
('e97501eee758b2a5cdfec91ced', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 12:43:15'),
('e97bd2f44cc3835476740469db', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-26 19:06:44'),
('e97ccf68530d2cd0fb21c19ef9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:26:20'),
('e9bc7cbb5eea8b60cf65d2407e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:52:59'),
('e9c89f681903ec4fcfe5af465a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 09:26:01'),
('e9d513d4c9cbba4dae7f77a9ab', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:22'),
('e9d9653f7d74aee334b248d135', 'false', '2019-06-30 20:23:44'),
('e9f98ebeab247cae33b64066cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-08 18:08:55'),
('ea36cd1fb1bfae968d8610cd60', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:24:26'),
('ea3b35e05b08e22d927f2fc7ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:25:48'),
('ea3dcb78ef4f28883d0eb0b6ae', 'false', '2019-06-30 15:49:16'),
('ea44f586c8dd0bd83f0ff309a0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 02:25:11'),
('ea4cc8538c8fc5a80f4019c5b5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 04:53:27'),
('ea545a180270c2e8d35718befe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:50'),
('ea567176a07c28bbf50777aeca', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 01:38:02'),
('ea61fb109e4cfee6a8b1235aeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 13:34:25'),
('ea62b9710d99c3fca1733a7ff6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:08:26'),
('ea7c225d54d4689fbe2830f27a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 08:22:06'),
('ea7dc1bc5dd6b00dc6e4e4d921', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-16 08:50:12'),
('ea8a3a66e5f880b8f66f395627', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 04:52:29'),
('ea8e6fd909605108e16f8ba665', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 07:22:35'),
('eab10dbc4674d27505aa3f5190', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:20:04'),
('eac42d23290fd5a7ea26a8c7fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:06'),
('eac667a1ee6b40354f5466ff98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-08 15:15:34'),
('eac78d617a701381313a57c02d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 02:42:56'),
('eace263ae658b2336120e9970c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:27'),
('ead26da95e3dd31e8bf41bae0e', 'false', '2019-06-30 17:58:07'),
('ead279b6f6d459e8efa5a9b8a2', 'false', '2019-07-01 04:41:01'),
('eadde9bc66a1c9a49177652ccd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 13:19:10'),
('eaea574270a46380b2606d87f4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-19 02:39:42'),
('eafb2ee9a81898eaf25a70f199', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:51:30'),
('eb229d4fba31d383130b81aa98', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 20:57:54'),
('eb2d0353a6dc09a58490451e49', 'false', '2019-07-01 03:06:21'),
('eb2f0646dde8c0ec3f3856266c', 'false', '2019-06-30 23:57:03'),
('eb35c100a7d1fe069419f2c91d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 03:53:50'),
('eb362a2c3d8bff4d63430d3f57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-29 01:17:59'),
('eb36a10f000126d60802945377', 'false', '2019-06-30 20:39:57'),
('eb5ac3918ee7c387c43d0197da', 'false', '2019-07-01 00:24:46'),
('eb68e65cd065daba73ff165b51', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 07:30:45'),
('eb6e7d993782a910f27bbf9812', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 18:36:52'),
('eb9232801bfe1c0a9e934d321f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 02:18:25'),
('eb9a5b80d6fceedd47428de584', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:27'),
('eb9bb56cebdc6aa8fb5d764486', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:10:14'),
('ebc6e2a0e0db345b2edb4998dc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 22:42:33'),
('ebdf059652d5a9d146280e0d40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-31 10:27:52'),
('ebfbfebde7dd5a8b9686cf3a4e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 23:04:58'),
('ebfdb8b28315626599e426764b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-18 01:20:31'),
('ec0b2789078ff42b7b06e20414', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:11'),
('ec10cb3e0d9c001efbb7fb11ac', 'false', '2019-06-30 22:53:02'),
('ec22f7681e1686fbfb4250798d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:49:25'),
('ec290a51d8494600f33cc02e19', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/return\"}', '2019-07-25 17:57:18'),
('ec3079e93f7e97da6d7d783cde', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:26:00'),
('ec32a99b1163e7edde53366af5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:40'),
('ec4e84f1a5a2b54da6630f223c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 18:23:03'),
('ec560721c9f45e1adba276c95b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 07:26:23'),
('ec6126c54adea260424d5052b9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 06:13:54'),
('ec7975d84aa771360c0b3ce2b0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 01:15:27'),
('ec7e77cafac919632298d65039', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-06-13 18:07:27'),
('ec9232aed761cc6700840aa42d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-15 10:17:46'),
('ec924bc4341fe242fa9b98b257', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 03:07:45'),
('eca7f9247db9249a66985c4e36', 'false', '2019-07-01 03:58:23'),
('ecbd3e33cea8f06d1ca8b29b96', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-03 22:30:37'),
('eccb981353126500eec8507c82', 'false', '2019-06-30 17:18:10'),
('ecec10f0c4fefdf4c116111486', 'false', '2019-06-30 21:39:21'),
('ecf8c24205b632cb113a4d66e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-05 08:22:21'),
('ed0a9b58c2a1585f69730ec8c1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 20:21:06'),
('ed0e54f98b58999ff1a46fd3c3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-08 14:42:24'),
('ed101908f6ca2adbbd34faa5f2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 05:17:22'),
('ed26a344391a9c53a81ccf4cfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:49:28'),
('ed34d635b775728ba1fabf3801', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:51');
INSERT INTO `oclt_session` (`session_id`, `data`, `expire`) VALUES
('ed37416b562b77c7acfe3a4a69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:51'),
('ed4a1e71d972e88031fedc044f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 03:00:32'),
('ed52f52e0d0b82dc9870dea538', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-09 02:57:26'),
('ed572d237055e34098420f8390', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 16:06:14'),
('ed6f2aa95aa7059763c72bbb74', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 01:39:01'),
('ed6fae764770c9112c32a7c2fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:43'),
('ed7bae2a328bd057d0651d027d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 00:41:03'),
('ed9fdb32d9098fbe7f89cbed89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:11'),
('edac896f1bf855b110c88ee000', 'false', '2019-07-01 00:04:59'),
('edc984de4bac5db5f7c1d6d86e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 05:23:13'),
('eddca28ceb50bcb8933e23d866', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 13:59:14'),
('ee02b4030dc63d6e9a9ea3cf79', 'false', '2019-06-30 22:27:44'),
('ee0b33b63d0a6bc13bbbc23164', 'false', '2019-06-30 16:57:33'),
('ee2648097ae0690552c8531ffc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 08:23:16'),
('ee3b45b5c417c68757509500f3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 10:35:09'),
('ee54515eae85a2bf951309a475', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 16:28:48'),
('ee59131fc3788015e52c83de2a', 'false', '2019-07-01 01:42:16'),
('ee72712e11e816c942d588ca30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:20'),
('ee828ebba74210ea040f4a0033', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-29 04:11:20'),
('ee8419460b7bd9470c6540d7b6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 19:40:16'),
('ee88ddb76c642a197f8f3b488c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 18:26:37'),
('ee940c18fa876384a867d67bb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 18:18:19'),
('ee9fbfc083bbc823afd824f3bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 02:42:05'),
('eeae8c687f9d3c9ab32453bef5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-07 01:33:52'),
('eeb5eb1da701e720ac604296ae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-07 15:28:11'),
('eeb8af2d57d66f1eae113373b7', 'false', '2019-07-01 00:35:49'),
('eec7b4dad22be402bdce5ed8ed', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:54'),
('eefc685ad3813ea5599a2dbdba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-07 01:09:05'),
('ef3faf44138bcf4c7f4f3d3a42', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 04:31:19'),
('ef41466a8cd5e82ac38a5fab9d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 06:30:22'),
('ef539639a3b43eb5f469f749bb', 'false', '2019-07-05 17:00:54'),
('ef56c33b7815a9652cf35ca1fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 14:33:22'),
('ef66c148ec2083929d789d4194', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-27 09:25:48'),
('ef72ae5819853ad7c49d934cb2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 13:52:20'),
('ef984c8faebcee5418b2df18ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 01:38:26'),
('ef9df382df3d33c639385e3c89', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 12:20:57'),
('ef9e79f5f74aac492b09c420af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 01:31:47'),
('efa3c11042e1496ed02fd12629', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 15:28:31'),
('efa9fa4478fbc175d0d097972d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 07:12:05'),
('efaa33fd4c3fd07958e9fea964', 'false', '2019-06-30 16:41:15'),
('efbf9dd7e83a6f85b387cad041', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 20:11:58'),
('efcb9879f7a5ac68ef0af85b47', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:01:21'),
('efcc1a2cd94962d1bc522e8550', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:50'),
('efd664f159cefd986819d9afc7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 17:49:23'),
('efdf6e1ce05ea4b94ccd3610c0', 'false', '2019-07-01 04:23:48'),
('eff0700dd8767f5fb66cd2120d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-24 12:20:20'),
('eff535d319cdfa8f97c4216944', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:45'),
('eff6c4507f70fedc11bcd6e78d', 'false', '2019-06-30 20:46:49'),
('f0075e2d9373db56f5de805c20', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/account\"}', '2019-04-18 10:17:50'),
('f00dfbc3d9d5456f22d1f8170c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 00:20:48'),
('f0179ae6d4d62a744129291959', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 14:35:20'),
('f017e4631a74d0bb1c36225225', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 18:20:28'),
('f028348c1c00c58f02e4a4a4f3', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/order\"}', '2019-06-30 09:01:33'),
('f02fe876e25c4c3a0a42501fa4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-05 05:46:24'),
('f0327862e09aa3a223f4dcf396', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 02:29:56'),
('f03e1e6ed8a9d770ca6b86b137', 'false', '2019-07-01 00:25:35'),
('f04bb4a3fce37ddf9cf491ebb1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 23:53:33'),
('f060567f0a39c708889826f6c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 19:34:06'),
('f08d820504fe78bfdb4ec05a2c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 02:16:50'),
('f090151b24396a81b83a0cadb7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 07:09:59'),
('f0a237b693ad826f7fe421dc90', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 00:26:30'),
('f0c855a4b28566025ded5e4fa9', 'false', '2019-07-01 05:10:38'),
('f0cfbd9a78f7209794f963b332', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 07:50:03'),
('f0ddb8a372bfa75b8c28499f3c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:03:11'),
('f0e8f6bb15405f2db5e4743138', 'false', '2019-07-01 00:39:24'),
('f0f06ed9d5f97d43226207b26a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-31 11:37:19'),
('f0f58ece9a5130a6a7acb8b4fd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 21:08:41'),
('f12b0aad9d1134a24a75e126b8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 21:29:14'),
('f13db7ec5878135b236eb0237c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 00:29:45'),
('f159b9b5a5ad5886298d832752', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:29:15'),
('f1718a5c2d6a43abf31469646e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-17 04:20:16'),
('f17b9e0c96f20c72fa0f8fc549', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 03:55:20'),
('f19f67b87163b9998895803a32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-24 20:09:42'),
('f1a49f889fb8e76e47b014f4c7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 04:46:21'),
('f1b13a39e7807d0618c75a0329', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-28 07:00:31'),
('f1c6a7a9554ae1996bce26ad67', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 03:28:28'),
('f1ce20f7c84001ef30f49adebf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 21:38:01'),
('f1d150d1509f5c06b7b1836a32', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 13:20:10'),
('f1f46ffaf945e72359b8d3e971', 'false', '2019-07-05 15:19:35'),
('f1f82b6529e9f10989138aad20', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 05:52:28'),
('f1f970b46bc981838f8cfa830c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-13 05:00:10'),
('f20ae4390f5ec1585a77eab0e6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-29 14:06:50'),
('f21b64d8c6fe40d793fec2f5d3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 22:18:10'),
('f2260f0ae925a06e5b69fa8e22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-28 08:55:18'),
('f237b530aabb6a0e0db33fc314', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:08:08'),
('f26ad84ba97e81eb9bbd8a27cf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 02:31:10'),
('f27d6727f1fe779b45c3c1f5e9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:45'),
('f2850ee8e89703764d5382e5fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 00:36:38'),
('f2aa3e09b3e71c2383232f5e39', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-20 19:25:44'),
('f2b9f3786477f676a956e9e3a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 15:30:29'),
('f2c2334f2300f2eca3b506b488', 'false', '2019-07-01 04:37:17'),
('f2e243437e8b0065cff4d64e6f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 06:55:35'),
('f2e473fc6db7b644fe34ff4e2e', 'false', '2019-07-01 04:42:37'),
('f2e50b3153dfc485ff3fea5566', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:40:48'),
('f2f38be35268304132e0dff7b7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 01:00:55'),
('f314774b360238d37662460175', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 03:52:06'),
('f314f4440f4219867fc98a8a03', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:55:59'),
('f31e86cc208a2f38518b2e1f94', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 15:29:28'),
('f321d9a0935a2ad7130ea7f05e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 04:18:22'),
('f3230dba5d3be183cb76d35aaf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 17:35:48'),
('f323ccd496d543968abfda552f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:33:10'),
('f38f594620896066603122b868', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-12 17:03:40'),
('f3b66e4e95c5ff6f0b370b74fc', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 11:27:21'),
('f3bf61bc12ce4f328d244f4f65', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 19:43:05'),
('f3c0ccfaa36050e725f2c3f8b1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-12 07:48:25'),
('f3c50a6ff3a02c38ac64528a57', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 17:05:05'),
('f40a0fcb682abe379207012387', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-01 10:10:27'),
('f417253a80b0ec843da9f2664d', 'false', '2019-06-30 19:49:45'),
('f4195583baa36a6be536a7df3b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 22:00:34'),
('f441cf4dbb918dfc1e1c0c423c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 08:17:53'),
('f459e749fd0824aaa301dd12ad', 'false', '2019-06-30 18:05:20'),
('f47cd2eee3b8843c61168a8ddd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-02 13:27:31'),
('f4877235e37ce20682ca8efc4a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-11 00:15:08'),
('f4915345ca213ac0fbf6fddeae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 03:11:29'),
('f49284da87cfc714bff5ed0ba2', 'false', '2019-06-30 22:36:05'),
('f49c37e332bac17277aad6d39f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 05:17:24'),
('f49c7923c61915b78addea6633', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 03:22:03'),
('f4af72b2ca1db0efcbde28dbef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 07:29:49'),
('f4b226ac802acdecb18aa7994f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 20:19:22'),
('f4cc332dbbc297e2b433bf49cb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-06 23:31:28'),
('f51a84257b19ef872e43036b73', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 12:11:54'),
('f53037ae9de45c6853c9a0908a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:39:40'),
('f531e9ac7e979e5d22e4b714fb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 21:02:37'),
('f541fbc36b082576776e574e84', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:50'),
('f5543bd363c06f459edd15e7f7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 16:40:49'),
('f5557a04c8522f0b4214ec3b42', 'false', '2019-07-01 05:44:44'),
('f559a31a59ea86f85620090cef', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:33'),
('f55cdd3e78512f59a17ed07912', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-22 16:52:03'),
('f5642a5d8e74c42442ad3ca0a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:08'),
('f57b6d4fdb788d19ff96f9d07c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-24 07:37:08'),
('f58fd4cb5c83b38bee05eb337f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:37:02'),
('f5bb7a55f56a87773ad5bdebd0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:41'),
('f5ca0f3c35308bee0fb6270922', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 20:46:07'),
('f5f824463aa211dd0db84fd2ad', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:40:48'),
('f6174cf67cd3e5bb7192128986', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 04:36:19'),
('f61c1cc911035e3da4c0571a11', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:44'),
('f66c7dcb73a4c9ef5c43c9f950', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 07:47:22'),
('f67e43d2e2a1af492886bef6ce', 'false', '2019-06-30 16:13:36'),
('f67ee4da340da0829a4d07ca04', 'false', '2019-07-01 04:01:03'),
('f68fcf7e4f62886a61d23ba6a6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-07-01 13:55:38'),
('f6ae69bc21693544f4d4abc3a3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 05:24:48'),
('f6bb32b458df2b3b093c22eee3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-20 13:47:23'),
('f6e2c5da2361441a1d9339c49d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 05:27:00'),
('f6e2cccf0b3ed2e31062d7bc30', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-25 05:12:54'),
('f6e3c11ca2f4cc2403a9256ec4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 10:01:15'),
('f6f6ce79e841d7568ff26621fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-02 13:26:28'),
('f6fecb180a9636742e17c322a5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 21:59:56'),
('f7066ae8340f693a506a441012', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 17:34:17'),
('f70b736fa249eb3a6b848cefa0', 'false', '2019-06-30 17:01:35'),
('f70d5ee9d91e0093d5c1f596a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:33'),
('f7269a31aa9377556ba8adb562', 'false', '2019-06-30 23:25:15'),
('f727baa988bdd92ba35cafd7fa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-14 16:44:00'),
('f72f23f70c2b961dec8ff422e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-20 18:26:01'),
('f76c7bd79b5f2b10348e3cb8e3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 12:51:48'),
('f784de1690d13162e8d4d37e89', 'false', '2019-07-01 01:37:51'),
('f7949deff0fd28e26934aa1338', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-16 12:40:08'),
('f798c66a73b024583e6220cba3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:10'),
('f7b9aa0f60c3a9b12d32bc9f0f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 03:47:26'),
('f7bdb6aaa2de6bd33c384e8962', 'false', '2019-06-30 19:14:45'),
('f7c16ac09c31ff82a5b349c454', 'false', '2019-06-30 17:00:04'),
('f7cc40c32e3533c0c05106c6bb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 08:35:37'),
('f7d77aa40e1b5a326c452874cd', 'false', '2019-07-01 01:25:44'),
('f7dac69bb5feb120f1864817af', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 11:27:50'),
('f7ea946f7c7404d06a0fec15c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 00:12:27'),
('f7f814787dbb4183b52b8b0135', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 23:40:01'),
('f7faf61580e0a270a06524cb40', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 06:17:10'),
('f7ff66791df4460ee35f58d91b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-16 21:46:52'),
('f80f138503f9e202b366199b12', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 07:37:27'),
('f82560f28ec12f38a805cbb466', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 18:35:31'),
('f82b32d1d1a1c8b1466d480a9f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 07:29:06'),
('f82fd88313850b3afb45b3a00e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-07 03:13:53'),
('f82fdcb5cb1df07abf916b92c9', 'false', '2019-07-05 20:07:35'),
('f83732c450cac31cf608249f6e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 04:31:04'),
('f844913c6354904346f5bf0ac9', 'false', '2019-07-05 16:31:13'),
('f86de8ec7f8e323dd1dd686cc2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-01 20:48:08'),
('f873b1624cc3823d3623f5981a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-17 13:14:21'),
('f87e6443573676437f1ce7522e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-05 15:10:39'),
('f8917e7705e7b9bf082355e330', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:31:12'),
('f8926f47b30dd83093be2190fe', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-21 21:35:58'),
('f89686df0e9779818ca50db5b2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-09 04:45:51'),
('f8b30faae91f25e278c282dd4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 12:26:08'),
('f8c4816d75d2d45159eb382322', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:34'),
('f8d0e3e1771ce5f8de74392104', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:23'),
('f8d3c2b335a6b1bf3595015bde', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"redirect\":\"http:\\/\\/recordprint.ru\\/index.php?route=account\\/wishlist\"}', '2019-05-11 14:38:49'),
('f8d3ec83e9f403a12b1df82d79', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-08 00:34:40'),
('f8dff14250a5fe5abd247ea514', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-19 05:25:35'),
('f8f56435c7cbc24b1488dfb5c9', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-04 05:46:27'),
('f8ff24b6314cddfef00d4d9896', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 14:44:13'),
('f8ffade83346ebe1b96c289d21', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 00:10:32'),
('f90d40b6e97c61e478df997a08', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-30 20:22:05'),
('f918efbbcf62ec18f265ca9cf3', 'false', '2019-07-01 01:13:40'),
('f91f86ebe1cdb2985ee48c8647', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 02:13:22'),
('f932d89cb39ce4ad8eb829f211', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:26'),
('f939ca91431abb8790a788cc24', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-25 09:02:49'),
('f93df4542999586c4a52253fd3', 'false', '2019-06-30 20:51:32'),
('f947366d0297049301fe87a3d1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-26 13:31:06'),
('f96271c04e493a07a62ab02b10', 'false', '2019-06-30 19:35:33'),
('f968229e0055c84833feeea997', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 14:36:35'),
('f992dca54e3cc170a02f261ce3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:49:58'),
('f9b85272d3621e7e7868dce992', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 21:06:45'),
('f9cb3397bb61b1a12b1583a422', 'false', '2019-06-30 21:00:20'),
('f9ccf94b39ceac827cebfdbaeb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-14 19:49:41'),
('fa0b368eac32747bacb13ec989', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-21 03:12:26'),
('fa1c47e21d634fc86508a7201a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 23:48:49'),
('fa2cb0548e176564aef165f6e0', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-04 15:33:04'),
('fa4896d3af4ba52d5fe22ba355', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 18:16:48'),
('fa497351b971d23006dedfbbc6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 21:07:14'),
('fa701303cb7cc082a7568b9c1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-08 13:16:17'),
('fa9f6ffa39b0b4578ce01eb6e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 22:05:38'),
('faae6ef58e6700be1f21570d69', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 22:24:06'),
('facfe6b11dca1769e40a53a2ec', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:17:45'),
('fad52cbbb38d6ba7ee52612bfa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 17:47:44'),
('fadb29d29ab5482676eb678b6c', 'false', '2019-07-01 05:29:09'),
('faeb88646c975ba90a103aba19', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 11:33:44'),
('fb0b77dab690d845a40901dfa6', 'false', '2019-07-01 01:35:51'),
('fb3477c3d282835b90ea94b489', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-26 11:02:29'),
('fb3ca2e31a41dec54c467b108a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 12:12:49'),
('fb3f021cb26d2820cb5595c91c', 'false', '2019-07-01 03:26:22'),
('fb50fea00b05985e55762ae0aa', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 21:02:33'),
('fb5dda8c62cab2c929768e3f73', 'false', '2019-06-30 18:27:06'),
('fb6ed6c38ee8ba1fed115de613', 'false', '2019-07-01 04:54:33'),
('fb7ed467be93e7db68fe4c2ede', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 14:34:49'),
('fb8ead6707d9f25c4f432ff977', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-18 04:31:38'),
('fba36f93db5e2fa92726adf0e4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-09 22:47:33'),
('fbb34bf6e29dfc0f72b2531e61', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 10:06:50'),
('fbc667e9d0b1de968871155041', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 03:23:00'),
('fbcc646ec3892b9c244bd44891', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 11:46:53'),
('fbdbc4b068ce6311390f09406d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 17:56:41'),
('fbdc47eac1f73640c7e368f42f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:24:57'),
('fbe446599a3f136b44d98ee171', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-27 13:44:15'),
('fbfed06cfb39a53c50952d6f1c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-12 06:47:04'),
('fc27d2b697dcdfd1cd8d14a6c5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 00:56:07'),
('fc2d8fc7c2c457a1a1c6ec82a7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 21:57:17'),
('fc2ff1ebc1c340b20ad7a1fe97', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 07:18:30'),
('fc34f4b1723161c07bb3530833', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 22:06:39'),
('fc3c17b8d6dd91b5f5afc10f4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:28'),
('fc52fa2473afde6f2fb5758abb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 20:24:37'),
('fc77dfca9db07f6cfc318b6667', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 18:07:06'),
('fc95a8306732a3fa2dc20cd8ba', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:23:39'),
('fc9f18669215079231cc04bd50', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-10 19:37:44'),
('fc9f3ba7f5cf118dce6b087238', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-23 05:15:31'),
('fcac45e94302f1fe36a9ff6c2d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 08:12:43'),
('fcb164a07ae1e40490e97353d6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-15 19:17:08'),
('fcc9531ceb7b7c8c3897399aa1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-28 15:57:19'),
('fcf7af35ff6a35ea24bf3d626e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-16 14:19:00'),
('fcfaf0995f750a1abae9fe6746', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-17 01:47:43'),
('fd03abc54e2ca520a17294ade2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:35'),
('fd0401e47e68cbb5340f1a035e', 'false', '2019-06-30 23:54:02'),
('fd0de14aafb78df840f17c1a12', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-10 23:51:06'),
('fd1db9d583f1ef97e5d9b52960', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-18 00:01:41'),
('fd2ee20f3356372574ae591922', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"vouchers\":[]}', '2019-06-27 11:06:19'),
('fd3246e31e3aa90516e1a21600', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 19:03:34'),
('fd3b6f8c4ca09dee16e14c630f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 06:35:23'),
('fd4647fe5f7a7a27f525cf5e9a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-15 02:32:47'),
('fd6ddf1aad5e1cf228a175d290', 'false', '2019-06-30 23:31:57'),
('fd7e450349f5da8ac4626c0441', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-17 21:18:04'),
('fd856972496aa1a4e3617602f8', 'false', '2019-07-05 18:20:17'),
('fd8b77f0e3ae2abb88d2ab5ac3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-02 03:57:33'),
('fd9d45fadba330ac8e927e48a1', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-14 18:44:38'),
('fdbb9c15ef652560c67b6c390b', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 12:48:19'),
('fde1b5c4805cd53c9591e3e54a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 17:23:08'),
('fde25a8a5aba0c74d49a4dbb54', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 10:08:39'),
('fdfc6dd1403f48f8cf8e3ed459', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-01 23:52:03'),
('fe0d117d53bc2285a3678c5abb', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-06 08:47:13'),
('fe1d38b32fdfb1c63f2b72053d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-23 00:37:22'),
('fe2ab88a1c2d7b4d2dfa1a0282', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-18 02:10:10'),
('fe4504a67a094d995c6aedd3bd', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-19 21:41:29'),
('fe4a8e0c7ef610d0930952793d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-05 18:45:48'),
('fe54e05961b6a6fbdbb7d95107', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 02:45:15'),
('fe555717e9dbe3a565d714dbce', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 12:47:43'),
('fe591b7342ecb0a093e05f6f14', 'false', '2019-07-01 02:10:12'),
('fe5c70114cee2f6a6f5bf778d4', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 13:21:19'),
('fe8236638b444dee1a9da53e13', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"compare\":[]}', '2019-04-25 12:49:18'),
('fe88733eb346c53e5863bb35e3', 'false', '2019-06-30 16:31:57'),
('fed2ebe729c413f464ba55bd14', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-28 04:41:17'),
('feddeac4eaaefc102f9a69fa2e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-24 02:43:39'),
('fee3c8e593fe09192afde137bf', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-23 20:30:20'),
('feee87c07f9fc78fa102410cde', '{\"language\":\"ru-ru\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"FCIX0jkFoiBctDfMyXzdk7fxjqh1uEJi\",\"install\":\"5gbedRyss4\",\"payment_address\":{\"address_1\":\"\",\"address_2\":\"\",\"company\":\"\",\"postcode\":\"\",\"shipping_city\":\"\",\"city\":\"\",\"zone_country_id\":\"\",\"zone_id\":\"\",\"shipping_country_id\":\"176\",\"country_id\":\"176\",\"zone\":\"\",\"country\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\"},\"shipping_address\":{\"address_1\":\"\",\"address_2\":\"\",\"company\":\"\",\"postcode\":\"\",\"shipping_city\":\"\",\"city\":\"\",\"zone_country_id\":\"\",\"zone_id\":\"\",\"shipping_country_id\":\"176\",\"country_id\":\"176\",\"zone\":\"\",\"country\":\"Russian Federation\",\"iso_code_2\":\"RU\",\"iso_code_3\":\"RUS\",\"address_format\":\"\"},\"ship_meth\":\"\",\"pay_meth\":\"\",\"comment\":\"\",\"shipping_methods\":{\"flat\":{\"title\":\"\\u0424\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u0430\\u044f \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"\\u0414\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0430 \\u0441 \\u0444\\u0438\\u043a\\u0441\\u0438\\u0440\\u043e\\u0432\\u0430\\u043d\\u043d\\u043e\\u0439 \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c\\u044e \\u0434\\u043e\\u0441\\u0442\\u0430\\u0432\\u043a\\u0438\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"$5.00\"}},\"sort_order\":\"1\",\"error\":false}},\"payment_zone_id \":\"\",\"payment_methods\":{\"free_checkout\":{\"code\":\"free_checkout\",\"title\":\"\\u0411\\u0435\\u0441\\u043f\\u043b\\u0430\\u0442\\u043d\\u044b\\u0439 \\u0437\\u0430\\u043a\\u0430\\u0437\",\"terms\":\"\",\"sort_order\":\"1\"}},\"vouchers\":[]}', '2019-08-17 13:38:22'),
('ff2b5db2e8de005daa7651b561', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-25 21:07:35'),
('ff53d21f860ff3bbff59cf4e64', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 01:46:03'),
('ff5471d6929d2cdc6fb80e1338', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 15:08:55'),
('ff6792feae073134af0aeb8bb8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-04 05:05:17'),
('ff9d91a54edf5a7483c61abbb5', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-04-30 04:36:06'),
('ffa5296f67abf49838f7e27bc3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-05 23:53:08'),
('ffa7d20b1b0c1fa7213520519d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-26 14:43:52'),
('ffa9aa065162ed998ec9a9e0e7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-11 01:25:40'),
('ffac8243d255ea2d0119bd0565', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-04 20:13:50'),
('ffb09c0c9f5b8aab86190ea63e', 'false', '2019-06-30 18:33:05'),
('ffc513698c9eec87330e3c50c2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-06-13 20:16:53'),
('ffd3592d205889b7217564a754', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-09 22:15:55'),
('ffd46443cf2fbc18745caba3a2', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-11 18:14:08'),
('ffe577a01cfe1a1e15fec839c8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-10 01:43:27'),
('ffe893b3b12254160de3af599a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-07-02 21:07:41'),
('ffeb2d17c831ae938a089e2f22', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-05-12 18:43:33'),
('fffb33f773334cc77d1e21c5b3', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2019-08-14 00:22:14');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_setting`
--

CREATE TABLE `oclt_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_setting`
--

INSERT INTO `oclt_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(1422, 0, 'config', 'config_error_filename', 'error.log', 0),
(1421, 0, 'config', 'config_error_log', '1', 0),
(1419, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1420, 0, 'config', 'config_error_display', '0', 0),
(1417, 0, 'config', 'config_file_max_size', '300000', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(506, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(505, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(504, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(503, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(502, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(501, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(500, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(499, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(498, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(497, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(496, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(495, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(494, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(493, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(491, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(492, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(490, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(489, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(488, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(199, 0, 'developer', 'developer_theme', '1', 0),
(200, 0, 'developer', 'developer_sass', '1', 0),
(1418, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1412, 0, 'config', 'config_compression', '0', 0),
(1413, 0, 'config', 'config_secure', '0', 0),
(1414, 0, 'config', 'config_password', '1', 0),
(1415, 0, 'config', 'config_shared', '0', 0),
(1416, 0, 'config', 'config_encryption', '61hTPGRE6sHWOczgXuEL2zMYarYwR713u6BmO04CHxGbAr5mPpaoQO6kslckdcpBe61zcZrlm0KiqY9IiIPPgw78oen8lCaNXe8AyE8m6aumG6ldnCjBZB9xmI8Kn9HR978gLFHQDmWkbxnBsYQOts78jyaIgLiajeKor2WdqVqMVMmJR5xuPJWAi0YPMB2R9H3BbplpgOf9x6KIiCA0iO4KwSlOb0wLElifDplK05XdYuDMr3cIy3EGJfaz2Z2MkuZZSnbJa38VRmkfl1xfXjoX3co0Ca6a4KptTOsCyaGltHCX9FgqHQs45eH8t3cEuOnzVMlxFXxrjYLveBbn0TAyV1vdBGGIKBamgVG0ShPlKkg9yigLkMvdWCGySdg8cCnFqQHe4DqzEqhnyzSmlSOw37QVvodvBql1bz0vN9h9EE5hZ5jk7nP9Rkp2sWTEpWJY9CJxA7F4r15FNNr3yllLNLM4byQP945L7RAFgG1xvRM4I6MhI78lQyWaiudpyr1vFXdpCA4hzovncXZq8X3Z0wvEgLvDuPVDH2rogh7GaichoolT49eCpgwWYHUMDeZPxzkUOMlCQb6ToN1KQh0oTldFNMnyRDFI2uodnrBDp1tJIuX6TdSV43zPG8FkUfdjy9ySrL1QqSqFNppAJhbFBRtAn6fCkP89y5JMNxPrval0y6i2uSO75chQpwp8PWQnOVY9v55kMqov95PVR2OgRCOOjOmEapzGN9IwEiHROcHkjyPgHNdgkV2bdvWhWASg0f9xLN1z8pW0vQxSoeDVKnj5SOtvQR5nXQaCQ7OOX3IRrRix7YvyaKnWCNy6qF3Qu9uk38vh6mjSW6SNS3MUwXHzU673TO2yPKfQ7yEIcOoVbWRQmkGKqIW11QTKvhaHnSbf08K5LoBihl4nzmxFLaxCLedi3Ediy66Cmbx4TzZ9e8NtpSQpn37KSazeX8HFRQzxFsYf18mbW9GIzHpJ98x2473rM6Ef163w9sby61ua1G8kwrj7yhzXk8Bf', 0),
(2161, 0, 'revthemel', 'revthemel_license', 'rev.bbb678f2605b8282e815ceee07b1114b01da402c.liv.41438.key', 0),
(2162, 0, 'revtheme', 'revtheme_license_sh', '750146176e4b2bc882476f2ae1433f01', 0),
(2163, 0, 'revtheme', 'revtheme_license_salt', 'pCEgZhem8', 0),
(2159, 0, 'revtheme', 'revtheme_geo_set', '{\"status\":\"0\"}', 1),
(2160, 0, 'revtheme', 'revtheme_footer_user_set', '{\"styles\":\"\",\"scripts\":\"\"}', 1),
(2158, 0, 'revtheme', 'revtheme_seo', '{\"seogen_rewrite\":\"1\",\"product_url\":\"{product_name}\",\"product_meta_title\":{\"2\":\"{product_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.\"},\"product_meta_h1\":{\"2\":\"{product_name}\"},\"product_meta_description\":{\"2\":\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c {product_name} \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435. \\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b \\u0438 \\u0446\\u0435\\u043d\\u0430 {product_name}.\"},\"product_meta_keyword\":{\"2\":\"\\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d, {product_manufacturer}, {product_name}, {product_model}, {product_sku}.\"},\"category_url\":\"{category_name}\",\"category_meta_title\":{\"2\":\"{category_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.\"},\"category_meta_h1\":{\"2\":\"{category_name}\"},\"category_meta_description\":{\"2\":\"{category_name} - \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0446\\u0435\\u043d\\u044b.\"},\"category_meta_keyword\":{\"2\":\"{category_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.\"},\"manufacturer_url\":\"{manufacturer_name}\",\"manufacturer_meta_title\":{\"2\":\"{manufacturer_name} - \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c \\u0432 \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442-\\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435.\"},\"manufacturer_meta_h1\":{\"2\":\"{manufacturer_name}\"},\"manufacturer_meta_description\":{\"2\":\"\\u0412\\u044b\\u0431\\u043e\\u0440 \\u0442\\u043e\\u0432\\u0430\\u0440\\u043e\\u0432 \\u0438\\u0437 \\u043a\\u0430\\u0442\\u0430\\u043b\\u043e\\u0433\\u0430 {manufacturer_name}.\"},\"manufacturer_meta_keyword\":{\"2\":\"{manufacturer_name}, \\u043a\\u0443\\u043f\\u0438\\u0442\\u044c, \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0430, \\u0432\\u044b\\u0431\\u043e\\u0440, \\u0446\\u0435\\u043d\\u0430, \\u0441\\u0442\\u043e\\u0438\\u043c\\u043e\\u0441\\u0442\\u044c, \\u043e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435, \\u0445\\u0430\\u0440\\u0430\\u043a\\u0442\\u0435\\u0440\\u0438\\u0441\\u0442\\u0438\\u043a\\u0438, \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.\"},\"information_url\":\"{information_name}\",\"information_meta_title\":{\"2\":\"{information_name}\"},\"information_meta_h1\":{\"2\":\"{information_name}\"},\"information_meta_description\":{\"2\":\"{information_name}\"},\"information_meta_keyword\":{\"2\":\"{information_name}\"},\"revblog_category_url\":\"{revblog_category_name}\",\"revblog_category_meta_title\":{\"2\":\"{revblog_category_name}\"},\"revblog_category_meta_description\":{\"2\":\"{revblog_category_name}\"},\"revblog_category_meta_keyword\":{\"2\":\"{revblog_category_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.\"},\"revblog_url\":\"{revblog_name}\",\"revblog_meta_title\":{\"2\":\"{revblog_name}\"},\"revblog_meta_description\":{\"2\":\"{revblog_category_name} - {revblog_name}.\"},\"revblog_meta_keyword\":{\"2\":\"{revblog_category_name}, {revblog_name}, \\u0438\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d.\"}}', 1),
(2157, 0, 'revtheme', 'revtheme_all_settings', '{\"color_all_document\":\"FFFFFF\",\"all_document_snow_on\":\"0\",\"color_href\":\"0086CF\",\"color_href_hover\":\"FF622B\",\"color_cart\":\"FF622B\",\"color_cart_hover\":\"FF842C\",\"color_top3\":\"4C4240\",\"color_footer\":\"4C4240\",\"color_amazon\":\"FF622B\",\"color_top3_cart\":\"9D999A\",\"all_content_width_wide\":\"0\",\"all_document_width\":\"1\",\"all_document_h_f_width\":\"0\",\"all_document_margin\":\"1\",\"all_fon_image\":\"no_image.png\",\"all_fon_image_css_1\":\"1\",\"all_fon_image_css_2\":\"1\",\"all_fon_image_css_3\":\"1\",\"all_fon_image_css_4\":\"1\",\"all_content_width\":\"0\",\"mobile_header\":\"0\",\"color_selecta\":\"FFC2AC\",\"preloader\":\"catalog\\/revolution\\/preloaders\\/revpreloader1.svg\",\"cart_off\":\"0\",\"cat_compact\":\"0\",\"cat_opis_opt\":\"0\",\"mobil_two\":\"1\",\"mobil_cat_opis\":\"1\",\"cache_on\":\"0\",\"minif_on\":\"0\",\"error404\":\"1\",\"n_progres\":\"1\",\"razmiv_cont\":\"1\",\"zatemn_cont\":\"1\",\"opacity_cont\":\"1\",\"pol_konf\":\"0\",\"pol_konf_tvivod\":\"0\",\"cookies\":\"0\",\"2\":{\"cookies_text\":\"\",\"revcheckout_description\":\"\",\"revregister_description\":\"\",\"revaccount_description\":\"\",\"description\":\"\",\"modal_header\":\"\",\"text_no\":\"\\u041d\\u0435\\u0442\",\"text_yes\":\"\\u0414\\u0430\",\"modal_text\":\"\"},\"revcheckout_status\":\"1\",\"revcheckout_login\":\"1\",\"revcheckout_register\":\"0\",\"revcheckout_customer_group\":\"0\",\"revcheckout_name\":\"2\",\"revcheckout_family\":\"0\",\"revcheckout_telephone\":\"2\",\"revcheckout_telephone_mask\":\"+7 (999) 9999999\",\"revcheckout_mail\":\"1\",\"revcheckout_comment\":\"1\",\"revcheckout_reg_adres\":\"0\",\"revcheckout_country\":\"0\",\"revcheckout_region\":\"0\",\"revcheckout_index\":\"0\",\"revcheckout_city\":\"1\",\"revcheckout_adres\":\"1\",\"revcheckout_min_sum\":\"0\",\"revcheckout_foto\":\"1\",\"revcheckout_model\":\"0\",\"revcheckout_sku\":\"1\",\"revcheckout_kolvo\":\"1\",\"revcheckout_vsego\":\"1\",\"revregister_status\":\"1\",\"revregister_legends\":\"0\",\"revregister_custom_fields\":\"0\",\"revregister_customer_group\":\"0\",\"revregister_name\":\"1\",\"revregister_family\":\"0\",\"revregister_telephone\":\"0\",\"revregister_telephone_mask\":\"+7 (999) 9999999\",\"revregister_mail\":\"2\",\"revregister_newsletter\":\"0\",\"revregister_country\":\"0\",\"revregister_region\":\"0\",\"revregister_index\":\"0\",\"revregister_city\":\"0\",\"revregister_adres\":\"0\",\"revaccount_allurls\":\"1\",\"revaccount_wishlist\":\"0\",\"revaccount_orders\":\"1\",\"revaccount_files\":\"0\",\"revaccount_bonus\":\"0\",\"revaccount_returns\":\"0\",\"revaccount_pay_history\":\"0\",\"revaccount_pay_regular\":\"0\",\"m_conts\":\"0\",\"dop_conts\":\"1\",\"soc_conts\":\"1\",\"soc_conts_url\":\"1\",\"f_svazy\":\"1\",\"yamap\":\"\",\"otzivy_status\":\"1\",\"modal_status\":\"0\",\"modal_time\":\"0\",\"modal_buttons\":\"0\",\"microdata_status\":\"0\",\"microdata_postcode\":\"\",\"microdata_city\":\"\",\"microdata_adress\":\"\",\"microdata_phones\":\"\",\"microdata_social\":\"\",\"microdata_email\":\"\",\"watermark_status_true\":\"1\",\"watermark_status\":\"0\",\"watermark_type\":\"text\",\"watermark_text\":\"recordprint.loc\",\"watermark_image\":\"no_image.png\",\"watermark_font_size\":\"10\",\"watermark_color\":\"333333\",\"watermark_position\":\"bottomleft\",\"watermark_opacity\":\"70\",\"watermark_angle\":\"0\",\"watermark_offset\":{\"x\":\"21\",\"y\":\"10\"},\"watermark_scaling\":{\"width\":\"500\",\"height\":\"500\"},\"watermark_min\":{\"width\":\"228\",\"height\":\"228\"}}', 1),
(2147, 0, 'revtheme', 'revtheme_product_images', '{\"zoom\":\"1\",\"slider\":\"1\"}', 1),
(2148, 0, 'revtheme', 'revtheme_product_mods', '{\"viewed_products\":\"1\",\"2\":{\"viewed_products_zagolovok\":\"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438\",\"text_block_zagolovok\":\"\"},\"viewed_products_limit\":\"8\",\"text_block\":\"1\",\"text_block_cols\":\"col-sm-12\",\"text_block_cols_2\":\"col-sm-6\"}', 1),
(2149, 0, 'revtheme', 'revtheme_footer_all', '{\"in_top\":\"1\",\"popup_phone\":\"1\",\"f_map\":\"0\",\"copy\":\"1\",\"2\":{\"copy_text\":\"\"}}', 1),
(2150, 0, 'revtheme', 'revtheme_custom_footer', '{\"status\":\"0\",\"dops_pc_status\":\"0\",\"cf_1_status\":\"1\",\"cf_1_width\":\"25\",\"cf_2_status\":\"1\",\"cf_2_width\":\"25\",\"cf_3_status\":\"1\",\"cf_3_width\":\"50\",\"cf_4_status\":\"0\",\"cf_4_width\":\"20\",\"cf_5_status\":\"0\",\"cf_5_width\":\"20\",\"2\":{\"cf_1_description\":\"\",\"cf_2_description\":\"\",\"cf_3_description\":\"\",\"cf_4_description\":\"\",\"cf_5_description\":\"\"}}', 1),
(2151, 0, 'revtheme', 'revtheme_dop_menu_cf', '[]', 0),
(2152, 0, 'revtheme', 'revtheme_dop_menu_cf_2', '[]', 0),
(2153, 0, 'revtheme', 'revtheme_dop_menu_cf_3', '[]', 0),
(2154, 0, 'revtheme', 'revtheme_dop_menu_cf_4', '[]', 0),
(2155, 0, 'revtheme', 'revtheme_dop_menu_cf_5', '[]', 0),
(2156, 0, 'revtheme', 'revtheme_footer_subscribe', '{\"status\":\"1\",\"2\":{\"title\":\"\\u041f\\u043e\\u0434\\u043f\\u0438\\u0441\\u043a\\u0430 \\u043d\\u0430 \\u043d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\",\"text\":\"\\u0411\\u0443\\u0434\\u044c\\u0442\\u0435 \\u0432 \\u043a\\u0443\\u0440\\u0441\\u0435 \\u043d\\u043e\\u0432\\u044b\\u0445 \\u0430\\u043a\\u0446\\u0438\\u0439 \\u0438 \\u0441\\u043f\\u0435\\u0446\\u043f\\u0440\\u0435\\u0434\\u043b\\u043e\\u0436\\u0435\\u043d\\u0438\\u0439!\",\"text_uspeh\":\"\\u041f\\u043e\\u0437\\u0434\\u0440\\u0430\\u0432\\u043b\\u044f\\u0435\\u043c! \\u0412\\u044b \\u043f\\u043e\\u0434\\u043f\\u0438\\u0441\\u0430\\u043b\\u0438\\u0441\\u044c \\u043d\\u0430 \\u0440\\u0430\\u0441\\u0441\\u044b\\u043b\\u043a\\u0443.\"}}', 1),
(2145, 0, 'revtheme', 'revtheme_product_all', '{\"popup_purchase\":\"1\",\"zakaz\":\"0\",\"zakaz_price_null\":\"0\",\"recalc_price\":\"1\",\"recalc_price_animate\":\"1\",\"q_zavisimost\":\"1\",\"countdown\":\"1\",\"recpr_rightc\":\"0\",\"answers\":\"1\",\"blogs\":\"1\",\"share_status\":\"1\",\"short_desc\":\"1\",\"pr_tabs\":\"1\",\"desc_cols\":\"0\",\"spec_cols\":\"0\",\"atributs\":\"1\",\"atributs_group_name\":\"1\",\"atributs_ssilka_all\":\"1\",\"manufacturer_status\":\"1\",\"model_status\":\"1\",\"sku_status\":\"1\",\"bonusbals_status\":\"0\",\"sklad_status\":\"1\",\"ostatok_status\":\"1\",\"weight_status\":\"1\",\"razmers\":\"1\",\"opt_price\":\"1\",\"options_two_in_line\":\"0\",\"options_ravno_plus\":\"0\",\"option_f_auto\":\"0\",\"option_img_options\":\"0\",\"options_buy\":\"0\",\"options_buy_optionname\":\"0\",\"options_buy_optionname_one\":\"0\",\"options_buy_foto\":\"0\",\"options_buy_model\":\"1\",\"options_buy_quantity\":\"1\",\"options_buy_click\":\"0\"}', 1),
(2146, 0, 'revtheme', 'revtheme_predzakaz', '{\"status\":\"1\",\"notify_status\":\"0\",\"firstname\":\"1\",\"telephone\":\"2\",\"telephone_mask\":\"+7 (999) 9999999\",\"email\":\"1\",\"comment\":\"1\",\"order_status\":\"14\"}', 1),
(2144, 0, 'revtheme', 'revtheme_cat_attributes', '{\"description_on\":\"1\",\"description_in_grid\":\"0\",\"options_in_cat\":\"1\",\"options_in_grid\":\"0\",\"short_desc\":\"0\",\"zamena_description\":\"1\",\"manufacturer\":\"0\",\"model\":\"0\",\"sku\":\"1\",\"stock\":\"1\",\"length\":\"0\",\"weight\":\"0\",\"attributes_status\":\"1\",\"show_name\":\"1\",\"show_tags\":\"1\",\"count\":\"5\",\"separator\":\"&lt;br&gt;\"}', 1),
(2141, 0, 'revtheme', 'revtheme_catalog_popuporder', '{\"status\":\"1\",\"quick_btn\":\"0\",\"firstname\":\"1\",\"telephone\":\"2\",\"telephone_mask\":\"+7 (999) 9999999\",\"email\":\"1\",\"comment\":\"1\",\"order_status\":\"14\"}', 1),
(2142, 0, 'revtheme', 'revtheme_cat_compare', '{\"cat_sort\":\"1\",\"main_cat\":\"0\",\"compare_price\":\"1\",\"compare_model\":\"1\",\"compare_sku\":\"1\",\"compare_manuf\":\"1\",\"compare_stock\":\"1\",\"compare_rate\":\"1\",\"compare_srtdesc\":\"1\",\"compare_weight\":\"1\",\"compare_razmer\":\"1\",\"compare_atrib\":\"1\",\"compare_atribgr\":\"0\"}', 1),
(2143, 0, 'revtheme', 'revtheme_cat_mods', '{\"viewed_products\":\"0\",\"2\":{\"viewed_products_zagolovok\":\"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438\"},\"viewed_products_limit\":\"8\"}', 1),
(2138, 0, 'revtheme', 'revtheme_catalog_best', '{\"best_products\":\"\",\"limit\":\"20\",\"filter_buy\":\"\"}', 1),
(2139, 0, 'revtheme', 'revtheme_catalog_sorts_category', '{\"group_default\":\"0\",\"sort_default\":\"p.sort_order\",\"sort_default_adesc\":\"ASC\",\"order_ASC\":\"1\",\"2\":{\"order_ASC_text\":\"\",\"name_ASC_text\":\"\",\"name_DESC_text\":\"\",\"price_ASC_text\":\"\",\"price_DESC_text\":\"\",\"rating_DESC_text\":\"\",\"rating_ASC_text\":\"\",\"model_ASC_text\":\"\",\"model_DESC_text\":\"\",\"date_added_ASC_text\":\"\",\"date_added_DESC_text\":\"\"},\"name_ASC\":\"1\",\"name_DESC\":\"0\",\"price_ASC\":\"1\",\"price_DESC\":\"1\",\"rating_DESC\":\"1\",\"rating_ASC\":\"0\",\"model_ASC\":\"0\",\"model_DESC\":\"0\",\"date_added_ASC\":\"0\",\"date_added_DESC\":\"1\"}', 1),
(2140, 0, 'revtheme', 'revtheme_catalog_stiker', '{\"status\":\"1\",\"new_status\":\"1\",\"best_status\":\"1\",\"spec_status\":\"1\",\"sklad_status\":\"0\",\"stock_status\":\"1\",\"stiker_netu_stock\":\"0\",\"upc\":\"0\",\"ean\":\"0\",\"jan\":\"0\",\"isbn\":\"0\",\"mpn\":\"0\",\"mpn_to_model\":\"0\",\"last_color\":\"FFFFFF\",\"last_color_text\":\"FFFFFF\",\"best_color\":\"2D77C8\",\"best_color_text\":\"FFFFFF\",\"spec_color\":\"E47364\",\"spec_color_text\":\"FFFFFF\",\"netu_color\":\"EEEEEE\",\"netu_color_text\":\"333333\",\"user_color\":\"EEEEEE\",\"user_color_text\":\"333333\"}', 1),
(2137, 0, 'revtheme', 'revtheme_catalog_last', '{\"last_products\":\"\",\"limit\":\"20\",\"filter_day\":\"\"}', 1),
(2136, 0, 'revtheme', 'revtheme_catalog_all', '{\"category_desc\":\"0\",\"podcategory_status\":\"0\",\"podcategory_imgs\":\"1\",\"podcategory_cols\":\"6\",\"manuf_desc\":\"1\",\"product_in_cart\":\"0\",\"ch_quantity\":\"1\",\"rev_srav_prod\":\"1\",\"rev_wish_prod\":\"1\",\"rev_wish_srav_prod\":\"0\",\"popup_view\":\"1\",\"img_slider\":\"0\",\"chislo_ryad\":\"1\",\"vid_grid\":\"1\",\"vid_list\":\"1\",\"vid_price\":\"1\",\"vid_default\":\"vid_grid\",\"pagination\":\"standart\"}', 1),
(2135, 0, 'revtheme', 'revtheme_home_viewed_products', '{\"status\":\"0\",\"2\":{\"zagolovok\":\"\\u0412\\u044b \\u0441\\u043c\\u043e\\u0442\\u0440\\u0435\\u043b\\u0438\"},\"icontype\":\"1\",\"icon\":\"fa none\",\"image\":\"no_image.png\",\"limit\":\"8\"}', 1),
(2134, 0, 'revtheme', 'revtheme_home_storereview', '{\"status\":\"1\",\"2\":{\"title\":\"\\u041e\\u0442\\u0437\\u044b\\u0432\\u044b \\u043d\\u0430\\u0448\\u0438\\u0445 \\u043a\\u043b\\u0438\\u0435\\u043d\\u0442\\u043e\\u0432\",\"button_all_text\":\"\\u0427\\u0438\\u0442\\u0430\\u0442\\u044c \\u0432\\u0441\\u0435 \\u043e\\u0442\\u0437\\u044b\\u0432\\u044b\"},\"icontype\":\"1\",\"icon\":\"fa fa-comments-o\",\"image\":\"no_image.png\",\"button_all\":\"1\",\"limit\":\"6\",\"order\":\"0\",\"limit_text\":\"200\"}', 1),
(2133, 0, 'revtheme', 'revtheme_home_socv', '{\"status_vk\":\"0\",\"width_vk\":\"260\",\"height_vk\":\"280\",\"id_vk\":\"20003922\",\"status_fb\":\"0\",\"width_fb\":\"260\",\"height_fb\":\"280\",\"id_fb\":\"facebook\",\"status_ok\":\"0\",\"width_ok\":\"260\",\"height_ok\":\"280\",\"id_ok\":\"50582132228315\",\"status_insta\":\"0\",\"right_insta\":\"0\",\"width_insta\":\"260\",\"limit_insta\":\"12\",\"id_insta\":\"\",\"name_insta\":\"\"}', 1),
(2131, 0, 'revtheme', 'revtheme_home_blog', '{\"status\":\"1\",\"2\":{\"title\":\"\\u041d\\u043e\\u0432\\u043e\\u0441\\u0442\\u0438\"},\"blog_category_id\":\"0\",\"news_limit\":\"5\",\"desc_limit\":\"200\",\"count_r\":\"0\",\"icontype\":\"1\",\"icon\":\"fa fa-newspaper-o\",\"image\":\"no_image.png\",\"image_status\":\"1\",\"image_width\":\"228\",\"image_height\":\"228\",\"b_color\":\"FFFFFF\"}', 1),
(2132, 0, 'revtheme', 'revtheme_aboutstore_home', '{\"status\":\"1\",\"2\":{\"title\":\"\\u041e \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d\\u0435\",\"description\":\"\"},\"icontype\":\"1\",\"icon\":\"fa fa-pencil-square-o\",\"image\":\"no_image.png\"}', 1),
(2130, 0, 'revtheme', 'revtheme_slider_5', '{\"status\":\"0\",\"2\":{\"title\":\"\",\"url_all\":\"\"},\"icontype\":\"1\",\"icon\":\"fa none\",\"image\":\"no_image.png\",\"count\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"image_width\":\"228\",\"image_height\":\"228\",\"category_id\":\"0\",\"featured\":\"\",\"manufacturer_id\":\"0\",\"sort\":\"p.date_added\",\"autoscroll\":\"\"}', 1),
(2118, 0, 'revtheme', 'revtheme_header_cart', '{\"icontype\":\"1\",\"icon\":\"fa fa-shopping-basket\",\"image\":\"no_image.png\",\"type\":\"standart\",\"cart_vspl\":\"2\",\"cart_size\":\"standart\",\"cart_carturl\":\"1\",\"cart_quick\":\"1\"}', 1),
(2119, 0, 'revtheme', 'revtheme_home_all', '{\"2\":{\"h1_home\":\"\"},\"pr_opisanie\":\"0\",\"revsliders_tab\":\"0\"}', 1),
(2120, 0, 'revtheme', 'revtheme_home_slideshow', '{\"status\":\"1\",\"banner_id\":\"9\",\"allwide\":\"0\",\"allwide_padding\":\"1\",\"mobile\":\"1\",\"slides\":\"3\",\"autoscroll\":\"2\",\"width\":\"380\",\"height\":\"380\",\"b_color\":\"FAFAFA\"}', 1),
(2121, 0, 'revtheme', 'revtheme_blocks_home', '{\"status\":\"1\",\"effect\":\"1\"}', 1),
(2122, 0, 'revtheme', 'revtheme_home_categorywall', '{\"status\":\"1\",\"mobi_status\":\"1\",\"2\":{\"title\":\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\"},\"icontype\":\"1\",\"icon\":\"fa none\",\"image\":\"no_image.png\",\"sort_order\":\"1\",\"categories\":\"0\",\"group_manufs\":\"0\",\"group_manufs_simbol\":\"1\",\"group_manufs_link\":{\"2\":\"\"},\"group_manufs_link_href\":\"\"}', 1),
(2123, 0, 'revtheme', 'revtheme_home_tabs', '1', 0),
(2124, 0, 'revtheme', 'revtheme_home_last', '{\"status\":\"1\",\"2\":{\"title\":\"\\u041d\\u043e\\u0432\\u0438\\u043d\\u043a\\u0438\"},\"url_all\":\"0\",\"icontype\":\"1\",\"icon\":\"fa fa-calendar-o\",\"image\":\"no_image.png\",\"limit\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"autoscroll\":\"\",\"image_width\":\"228\",\"image_height\":\"228\"}', 1),
(2125, 0, 'revtheme', 'revtheme_home_best', '{\"status\":\"1\",\"2\":{\"title\":\"\\u0425\\u0438\\u0442\\u044b \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\"},\"url_all\":\"0\",\"icontype\":\"1\",\"icon\":\"fa fa-star-o\",\"image\":\"no_image.png\",\"limit\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"autoscroll\":\"\",\"image_width\":\"228\",\"image_height\":\"228\"}', 1),
(2126, 0, 'revtheme', 'revtheme_home_spec', '{\"status\":\"1\",\"2\":{\"title\":\"\\u0410\\u043a\\u0446\\u0438\\u0438\"},\"url_all\":\"0\",\"icontype\":\"1\",\"icon\":\"fa fa-bell-o\",\"image\":\"no_image.png\",\"limit\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"autoscroll\":\"\",\"image_width\":\"228\",\"image_height\":\"228\"}', 1),
(2127, 0, 'revtheme', 'revtheme_slider_1', '{\"status\":\"0\",\"2\":{\"title\":\"\",\"url_all\":\"\"},\"icontype\":\"1\",\"icon\":\"fa none\",\"image\":\"no_image.png\",\"count\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"image_width\":\"228\",\"image_height\":\"228\",\"category_id\":\"0\",\"featured\":\"\",\"manufacturer_id\":\"0\",\"sort\":\"p.date_added\",\"autoscroll\":\"\"}', 1),
(2128, 0, 'revtheme', 'revtheme_slider_3', '{\"status\":\"0\",\"2\":{\"title\":\"\",\"url_all\":\"\"},\"icontype\":\"1\",\"icon\":\"fa none\",\"image\":\"no_image.png\",\"count\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"image_width\":\"228\",\"image_height\":\"228\",\"category_id\":\"0\",\"featured\":\"\",\"manufacturer_id\":\"0\",\"sort\":\"p.date_added\",\"autoscroll\":\"\"}', 1),
(2129, 0, 'revtheme', 'revtheme_slider_4', '{\"status\":\"0\",\"2\":{\"title\":\"\",\"url_all\":\"\"},\"icontype\":\"1\",\"icon\":\"fa none\",\"image\":\"no_image.png\",\"count\":\"12\",\"not_view_null\":\"0\",\"slider\":\"1\",\"image_width\":\"228\",\"image_height\":\"228\",\"category_id\":\"0\",\"featured\":\"\",\"manufacturer_id\":\"0\",\"sort\":\"p.date_added\",\"autoscroll\":\"\"}', 1),
(2111, 0, 'revtheme', 'revtheme_header_standart_links', '{\"rev_lang\":\"0\",\"rev_curr\":\"0\",\"rev_srav\":\"1\",\"rev_wish\":\"1\",\"rev_acc\":\"1\",\"rev_acc_zagolovok\":\"kabinet\",\"popup_login\":\"1\"}', 1),
(2112, 0, 'revtheme', 'revtheme_dop_menu_2', '[]', 0),
(2113, 0, 'revtheme', 'revtheme_dop_menu_3', '[{&quot;id&quot;:1,&quot;name2&quot;:&quot;Услуги&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_3&quot;:&quot;&quot;,&quot;dop_menu_image_3&quot;:&quot;catalog/MlWz628Lacw.jpg&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:2,&quot;name2&quot;:&quot;Новости&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_3&quot;:&quot;&quot;,&quot;dop_menu_image_3&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:3,&quot;name2&quot;:&quot;АКЦИИ&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_3&quot;:&quot;&quot;,&quot;dop_menu_image_3&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;},{&quot;id&quot;:4,&quot;name2&quot;:&quot;Контакты&quot;,&quot;href2&quot;:&quot;&quot;,&quot;icontype&quot;:&quot;iconka&quot;,&quot;dop_menu_iconka_3&quot;:&quot;&quot;,&quot;dop_menu_image_3&quot;:&quot;&quot;,&quot;&quot;:{},&quot;column&quot;:&quot;&quot;}]', 0),
(2114, 0, 'revtheme', 'revtheme_header_phone', '{\"2\":{\"text\":\"\\u041f\\u041d - \\u041f\\u0422 11:00 - 18:00\",\"text2\":\"\\u0421\\u0411 - \\u0412\\u0421 \\u0432\\u044b\\u0445\\u043e\\u0434\\u043d\\u044b\\u0435 \\u0434\\u043d\\u0438\",\"cod\":\"+7 (960)\",\"number\":\"136-69-94\",\"cod2\":\"\",\"number2\":\"\",\"doptext2\":\"\",\"doptext\":\"\"},\"icontype\":\"0\",\"icon\":\"fa fa-bars\",\"image\":\"\"}', 1),
(2117, 0, 'revtheme', 'revtheme_header_search', '{\"ch_text\":\"0\",\"2\":{\"doptext\":\"\"},\"ch_text_w_serch\":\"0\",\"in_category\":\"1\",\"ajax_search_status\":\"1\",\"ajax_search_limit\":\"10\",\"ajax_search_model\":\"1\",\"ajax_search_manufacturer\":\"0\",\"ajax_search_tag\":\"1\",\"ajax_search_sku\":\"1\",\"ajax_search_upc\":\"0\",\"ajax_search_mpn\":\"1\",\"ajax_search_isbn\":\"0\",\"ajax_search_jan\":\"0\",\"ajax_search_ean\":\"0\",\"ajax_search_description\":\"0\",\"ajax_search_cats\":\"0\",\"ajax_search_mans\":\"0\"}', 1),
(2115, 0, 'revtheme', 'revtheme_header_dop_contacts_status', '0', 0),
(2116, 0, 'revtheme', 'revtheme_header_popupphone', '{\"status\":\"1\",\"under_phone\":\"1\",\"firstname\":\"1\",\"telephone\":\"2\",\"telephone_mask\":\"+7 (999) 9999999\",\"email\":\"0\",\"comment\":\"1\"}', 1),
(2110, 0, 'revtheme', 'revtheme_dop_menu', '[]', 0),
(2109, 0, 'revtheme', 'revtheme_header_menu', '{\"sticky\":\"1\",\"image_in_ico\":\"0\",\"tri_level\":\"1\",\"manuf\":\"0\",\"n_column\":\"2\",\"manuf_icontype\":\"1\",\"manuf_icon\":\"fa none\",\"manuf_image\":\"no_image.png\",\"image_in_ico_m\":\"0\",\"revblog_status\":\"0\",\"revblog_in_amazon\":\"0\",\"revblog_column\":\"1\",\"image_in_ico_revblog\":\"0\",\"type\":\"1\",\"cats_status\":\"1\",\"zadergka\":\"1\",\"icontype\":\"1\",\"icon\":\"fa fa-bars\",\"image\":\"no_image.png\",\"on_line_cat\":\"0\",\"inhome\":\"1\",\"up_menu_height\":\"1\",\"ogranich\":\"0\",\"ogranich_count\":\"5\"}', 1),
(2107, 0, 'revtheme', 'revthemel_license', 'rev.bbb678f2605b8282e815ceee07b1114b01da402c.liv.41438.key', 0),
(2108, 0, 'revtheme', 'revtheme_version', '5.0.2', 0),
(1369, 0, 'config', 'config_customer_online', '0', 0),
(1370, 0, 'config', 'config_customer_activity', '0', 0),
(436, 0, 'theme_revolution', 'theme_revolution_directory', 'revolution', 0),
(437, 0, 'theme_revolution', 'theme_revolution_status', '1', 0),
(438, 0, 'theme_revolution', 'theme_revolution_product_limit', '12', 0),
(439, 0, 'theme_revolution', 'theme_revolution_product_description_length', '100', 0),
(440, 0, 'theme_revolution', 'theme_revolution_image_category_width', '60', 0),
(441, 0, 'theme_revolution', 'theme_revolution_image_category_height', '60', 0),
(442, 0, 'theme_revolution', 'theme_revolution_image_manufacturer_width', '80', 0),
(443, 0, 'theme_revolution', 'theme_revolution_image_thumb_width', '400', 0),
(444, 0, 'theme_revolution', 'theme_revolution_image_thumb_height', '400', 0),
(445, 0, 'theme_revolution', 'theme_revolution_image_popup_width', '800', 0),
(446, 0, 'theme_revolution', 'theme_revolution_image_popup_height', '800', 0),
(447, 0, 'theme_revolution', 'theme_revolution_image_product_width', '228', 0),
(448, 0, 'theme_revolution', 'theme_revolution_image_product_height', '228', 0),
(449, 0, 'theme_revolution', 'theme_revolution_image_additional_width', '74', 0),
(450, 0, 'theme_revolution', 'theme_revolution_image_additional_height', '74', 0),
(451, 0, 'theme_revolution', 'theme_revolution_image_related_width', '228', 0),
(452, 0, 'theme_revolution', 'theme_revolution_image_related_height', '228', 0),
(453, 0, 'theme_revolution', 'theme_revolution_image_compare_width', '228', 0),
(454, 0, 'theme_revolution', 'theme_revolution_image_compare_height', '228', 0),
(455, 0, 'theme_revolution', 'theme_revolution_image_wishlist_width', '47', 0),
(456, 0, 'theme_revolution', 'theme_revolution_image_wishlist_height', '47', 0),
(457, 0, 'theme_revolution', 'theme_revolution_image_cart_width', '47', 0),
(458, 0, 'theme_revolution', 'theme_revolution_image_cart_height', '47', 0),
(459, 0, 'theme_revolution', 'theme_revolution_image_location_width', '268', 0),
(460, 0, 'theme_revolution', 'theme_revolution_image_location_height', '50', 0),
(507, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(487, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(486, 0, 'theme_default', 'theme_default_status', '0', 0),
(485, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(508, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(1371, 0, 'config', 'config_customer_search', '0', 0),
(1372, 0, 'config', 'config_customer_group_id', '1', 0),
(1373, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1374, 0, 'config', 'config_customer_price', '0', 0),
(1375, 0, 'config', 'config_login_attempts', '5', 0),
(1376, 0, 'config', 'config_account_id', '3', 0),
(1377, 0, 'config', 'config_invoice_prefix', 'INV-2019-00', 0),
(1378, 0, 'config', 'config_cart_weight', '1', 0),
(1379, 0, 'config', 'config_checkout_guest', '1', 0),
(1380, 0, 'config', 'config_checkout_id', '5', 0),
(1381, 0, 'config', 'config_order_status_id', '1', 0),
(1382, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1383, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1384, 0, 'config', 'config_fraud_status_id', '7', 0),
(1385, 0, 'config', 'config_api_id', '1', 0),
(1386, 0, 'config', 'config_stock_display', '0', 0),
(1387, 0, 'config', 'config_stock_warning', '0', 0),
(1388, 0, 'config', 'config_stock_checkout', '0', 0),
(1389, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1390, 0, 'config', 'config_affiliate_approval', '0', 0),
(1391, 0, 'config', 'config_affiliate_auto', '0', 0),
(1392, 0, 'config', 'config_affiliate_commission', '5', 0),
(1393, 0, 'config', 'config_affiliate_id', '4', 0),
(1394, 0, 'config', 'config_return_id', '0', 0),
(1395, 0, 'config', 'config_return_status_id', '2', 0),
(1396, 0, 'config', 'config_captcha', '', 0),
(1397, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1398, 0, 'config', 'config_logo', 'catalog/MlWz628Lacw.jpg', 0),
(1399, 0, 'config', 'config_icon', 'catalog/MlWz628Lacw.jpg', 0),
(1400, 0, 'config', 'config_mail_engine', 'mail', 0),
(1401, 0, 'config', 'config_mail_parameter', '', 0),
(1402, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(1403, 0, 'config', 'config_mail_smtp_username', '', 0),
(1404, 0, 'config', 'config_mail_smtp_password', '', 0),
(1405, 0, 'config', 'config_mail_smtp_port', '25', 0),
(1406, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1407, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1408, 0, 'config', 'config_mail_alert_email', '', 0),
(1409, 0, 'config', 'config_maintenance', '0', 0),
(1410, 0, 'config', 'config_seo_url', '1', 0),
(1411, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1367, 0, 'config', 'config_tax_default', 'shipping', 0),
(1368, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1366, 0, 'config', 'config_tax', '1', 0),
(1365, 0, 'config', 'config_voucher_max', '1000', 0),
(1364, 0, 'config', 'config_voucher_min', '1', 0),
(1363, 0, 'config', 'config_review_guest', '1', 0),
(1362, 0, 'config', 'config_review_status', '1', 0),
(1360, 0, 'config', 'config_product_count', '1', 0),
(1361, 0, 'config', 'config_limit_admin', '20', 0),
(1359, 0, 'config', 'config_weight_class_id', '1', 0),
(1358, 0, 'config', 'config_length_class_id', '1', 0),
(1357, 0, 'config', 'config_currency_auto', '1', 0),
(1356, 0, 'config', 'config_currency', 'USD', 0),
(1355, 0, 'config', 'config_admin_language', 'ru-ru', 0),
(1354, 0, 'config', 'config_language', 'ru-ru', 0),
(1353, 0, 'config', 'config_zone_id', '', 0),
(1352, 0, 'config', 'config_country_id', '176', 0),
(1351, 0, 'config', 'config_comment', '', 0),
(1350, 0, 'config', 'config_open', 'ПН - ПТ 11:00 - 18:00\r\nСБ - ВС выходной', 0),
(1349, 0, 'config', 'config_image', 'catalog/MlWz628Lacw.jpg', 0),
(1348, 0, 'config', 'config_fax', '', 0),
(1344, 0, 'config', 'config_address', 'РПК Рекорд', 0),
(1345, 0, 'config', 'config_geocode', '', 0),
(1346, 0, 'config', 'config_email', 'goden.v@gmail.com', 0),
(1347, 0, 'config', 'config_telephone', '+7 (960) 136-69-94', 0),
(1337, 0, 'config', 'config_meta_title', 'Компания «Рекорд» - полиграфические услуги', 0),
(1338, 0, 'config', 'config_meta_description', 'Компания «Рекорд» - полиграфические услуги', 0),
(1339, 0, 'config', 'config_meta_keyword', 'Компания «Рекорд» - полиграфические услуги', 0),
(1343, 0, 'config', 'config_owner', 'РПК Рекорд', 0),
(1342, 0, 'config', 'config_name', 'РПК Рекорд', 0),
(1341, 0, 'config', 'config_layout_id', '4', 0),
(1340, 0, 'config', 'config_theme', 'revolution', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_shipping_courier`
--

CREATE TABLE `oclt_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_shipping_courier`
--

INSERT INTO `oclt_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_statistics`
--

CREATE TABLE `oclt_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_statistics`
--

INSERT INTO `oclt_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_stock_status`
--

CREATE TABLE `oclt_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_stock_status`
--

INSERT INTO `oclt_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_store`
--

CREATE TABLE `oclt_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_tabs`
--

CREATE TABLE `oclt_tabs` (
  `tab_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `categories` text NOT NULL,
  `manufactures` text NOT NULL,
  `ingore_products` text NOT NULL,
  `stores` text NOT NULL,
  `allproducts` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_tabs_description`
--

CREATE TABLE `oclt_tabs_description` (
  `tab_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_tax_class`
--

CREATE TABLE `oclt_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_tax_class`
--

INSERT INTO `oclt_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_tax_rate`
--

CREATE TABLE `oclt_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_tax_rate`
--

INSERT INTO `oclt_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_tax_rate_to_customer_group`
--

CREATE TABLE `oclt_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_tax_rate_to_customer_group`
--

INSERT INTO `oclt_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_tax_rule`
--

CREATE TABLE `oclt_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_tax_rule`
--

INSERT INTO `oclt_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_textblocks`
--

CREATE TABLE `oclt_textblocks` (
  `tb_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `categories` text NOT NULL,
  `manufactures` text NOT NULL,
  `ingore_products` text NOT NULL,
  `icontype` int(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `stores` text NOT NULL,
  `allproducts` tinyint(4) NOT NULL,
  `status` int(11) NOT NULL,
  `checkbox` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `text_block_cols` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_textblocks_description`
--

CREATE TABLE `oclt_textblocks_description` (
  `tb_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `href` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_theme`
--

CREATE TABLE `oclt_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_translation`
--

CREATE TABLE `oclt_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_upload`
--

CREATE TABLE `oclt_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_user`
--

CREATE TABLE `oclt_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_user`
--

INSERT INTO `oclt_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '41d6fe81b90d1ffde56eb0ea8274cd1d068618c0', '8d9de02f8', 'admin', 'admin', 'goden.v@gmail.com', '', '', '127.0.0.1', 1, '2019-04-04 15:44:54');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_user_group`
--

CREATE TABLE `oclt_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_user_group`
--

INSERT INTO `oclt_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/revblogcategorymod\",\"extension\\/module\\/revblogmod\",\"extension\\/module\\/revmenumod\",\"extension\\/module\\/revmenumodcustom\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/revpay1\",\"extension\\/payment\\/revpay2\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/revship\",\"extension\\/shipping\\/revship2\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/theme\\/revolution\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"revolution\\/idna_convert.class\",\"revolution\\/revanswers\",\"revolution\\/revblog\",\"revolution\\/revblog_review\",\"revolution\\/revblog_setting\",\"revolution\\/revblogcategory\",\"revolution\\/revcatattribs\",\"revolution\\/revcheckoutcustomfield\",\"revolution\\/revcheckoutshippay\",\"revolution\\/revfilter\",\"revolution\\/revlickey\",\"revolution\\/revpopupphone\",\"revolution\\/revreview\",\"revolution\\/revstylesheet\",\"revolution\\/revsubscribe\",\"revolution\\/revtabs\",\"revolution\\/revtextblocks\",\"revolution\\/revtheme\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"revolution\\/revtheme\",\"extension\\/module\\/html\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/language\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/revblogcategorymod\",\"extension\\/module\\/revblogmod\",\"extension\\/module\\/revmenumod\",\"extension\\/module\\/revmenumodcustom\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/alipay\",\"extension\\/payment\\/alipay_cross\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/revpay1\",\"extension\\/payment\\/revpay2\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/squareup\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/wechat_pay\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/revship\",\"extension\\/shipping\\/revship2\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/theme\\/revolution\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"revolution\\/idna_convert.class\",\"revolution\\/revanswers\",\"revolution\\/revblog\",\"revolution\\/revblog_review\",\"revolution\\/revblog_setting\",\"revolution\\/revblogcategory\",\"revolution\\/revcatattribs\",\"revolution\\/revcheckoutcustomfield\",\"revolution\\/revcheckoutshippay\",\"revolution\\/revfilter\",\"revolution\\/revlickey\",\"revolution\\/revpopupphone\",\"revolution\\/revreview\",\"revolution\\/revstylesheet\",\"revolution\\/revsubscribe\",\"revolution\\/revtabs\",\"revolution\\/revtextblocks\",\"revolution\\/revtheme\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"revolution\\/revtheme\",\"extension\\/module\\/html\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_voucher`
--

CREATE TABLE `oclt_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_voucher_history`
--

CREATE TABLE `oclt_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_voucher_theme`
--

CREATE TABLE `oclt_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_voucher_theme`
--

INSERT INTO `oclt_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_voucher_theme_description`
--

CREATE TABLE `oclt_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_voucher_theme_description`
--

INSERT INTO `oclt_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_weight_class`
--

CREATE TABLE `oclt_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_weight_class`
--

INSERT INTO `oclt_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_weight_class_description`
--

CREATE TABLE `oclt_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_weight_class_description`
--

INSERT INTO `oclt_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_zone`
--

CREATE TABLE `oclt_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_zone`
--

INSERT INTO `oclt_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oclt_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oclt_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `oclt_zone_to_geo_zone`
--

CREATE TABLE `oclt_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `oclt_zone_to_geo_zone`
--

INSERT INTO `oclt_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `oclt_address`
--
ALTER TABLE `oclt_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Индексы таблицы `oclt_advertise_google_target`
--
ALTER TABLE `oclt_advertise_google_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Индексы таблицы `oclt_api`
--
ALTER TABLE `oclt_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Индексы таблицы `oclt_api_ip`
--
ALTER TABLE `oclt_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Индексы таблицы `oclt_api_session`
--
ALTER TABLE `oclt_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Индексы таблицы `oclt_attribute`
--
ALTER TABLE `oclt_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Индексы таблицы `oclt_attribute_description`
--
ALTER TABLE `oclt_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Индексы таблицы `oclt_attribute_group`
--
ALTER TABLE `oclt_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Индексы таблицы `oclt_attribute_group_description`
--
ALTER TABLE `oclt_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Индексы таблицы `oclt_banner`
--
ALTER TABLE `oclt_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Индексы таблицы `oclt_banner_image`
--
ALTER TABLE `oclt_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Индексы таблицы `oclt_cart`
--
ALTER TABLE `oclt_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Индексы таблицы `oclt_category`
--
ALTER TABLE `oclt_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Индексы таблицы `oclt_category_description`
--
ALTER TABLE `oclt_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oclt_category_filter`
--
ALTER TABLE `oclt_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Индексы таблицы `oclt_category_path`
--
ALTER TABLE `oclt_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oclt_category_to_google_product_category`
--
ALTER TABLE `oclt_category_to_google_product_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Индексы таблицы `oclt_category_to_layout`
--
ALTER TABLE `oclt_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oclt_category_to_store`
--
ALTER TABLE `oclt_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oclt_country`
--
ALTER TABLE `oclt_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `oclt_coupon`
--
ALTER TABLE `oclt_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Индексы таблицы `oclt_coupon_category`
--
ALTER TABLE `oclt_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Индексы таблицы `oclt_coupon_history`
--
ALTER TABLE `oclt_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Индексы таблицы `oclt_coupon_product`
--
ALTER TABLE `oclt_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Индексы таблицы `oclt_currency`
--
ALTER TABLE `oclt_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Индексы таблицы `oclt_customer`
--
ALTER TABLE `oclt_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oclt_customer_activity`
--
ALTER TABLE `oclt_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Индексы таблицы `oclt_customer_affiliate`
--
ALTER TABLE `oclt_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Индексы таблицы `oclt_customer_approval`
--
ALTER TABLE `oclt_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Индексы таблицы `oclt_customer_group`
--
ALTER TABLE `oclt_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Индексы таблицы `oclt_customer_group_description`
--
ALTER TABLE `oclt_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Индексы таблицы `oclt_customer_history`
--
ALTER TABLE `oclt_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Индексы таблицы `oclt_customer_ip`
--
ALTER TABLE `oclt_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oclt_customer_login`
--
ALTER TABLE `oclt_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Индексы таблицы `oclt_customer_online`
--
ALTER TABLE `oclt_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Индексы таблицы `oclt_customer_reward`
--
ALTER TABLE `oclt_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Индексы таблицы `oclt_customer_search`
--
ALTER TABLE `oclt_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Индексы таблицы `oclt_customer_transaction`
--
ALTER TABLE `oclt_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Индексы таблицы `oclt_customer_wishlist`
--
ALTER TABLE `oclt_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Индексы таблицы `oclt_custom_field`
--
ALTER TABLE `oclt_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oclt_custom_field_customer_group`
--
ALTER TABLE `oclt_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oclt_custom_field_description`
--
ALTER TABLE `oclt_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oclt_custom_field_value`
--
ALTER TABLE `oclt_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oclt_custom_field_value_description`
--
ALTER TABLE `oclt_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oclt_download`
--
ALTER TABLE `oclt_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Индексы таблицы `oclt_download_description`
--
ALTER TABLE `oclt_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Индексы таблицы `oclt_event`
--
ALTER TABLE `oclt_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Индексы таблицы `oclt_extension`
--
ALTER TABLE `oclt_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Индексы таблицы `oclt_extension_install`
--
ALTER TABLE `oclt_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Индексы таблицы `oclt_extension_path`
--
ALTER TABLE `oclt_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Индексы таблицы `oclt_filter`
--
ALTER TABLE `oclt_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Индексы таблицы `oclt_filter_description`
--
ALTER TABLE `oclt_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Индексы таблицы `oclt_filter_group`
--
ALTER TABLE `oclt_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Индексы таблицы `oclt_filter_group_description`
--
ALTER TABLE `oclt_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Индексы таблицы `oclt_geo_zone`
--
ALTER TABLE `oclt_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Индексы таблицы `oclt_information`
--
ALTER TABLE `oclt_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Индексы таблицы `oclt_information_description`
--
ALTER TABLE `oclt_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Индексы таблицы `oclt_information_to_layout`
--
ALTER TABLE `oclt_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oclt_information_to_store`
--
ALTER TABLE `oclt_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Индексы таблицы `oclt_language`
--
ALTER TABLE `oclt_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oclt_layout`
--
ALTER TABLE `oclt_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Индексы таблицы `oclt_layout_module`
--
ALTER TABLE `oclt_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Индексы таблицы `oclt_layout_route`
--
ALTER TABLE `oclt_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Индексы таблицы `oclt_length_class`
--
ALTER TABLE `oclt_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Индексы таблицы `oclt_length_class_description`
--
ALTER TABLE `oclt_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Индексы таблицы `oclt_location`
--
ALTER TABLE `oclt_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oclt_manufacturer`
--
ALTER TABLE `oclt_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Индексы таблицы `oclt_manufacturer_to_store`
--
ALTER TABLE `oclt_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Индексы таблицы `oclt_marketing`
--
ALTER TABLE `oclt_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Индексы таблицы `oclt_modification`
--
ALTER TABLE `oclt_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Индексы таблицы `oclt_module`
--
ALTER TABLE `oclt_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Индексы таблицы `oclt_option`
--
ALTER TABLE `oclt_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Индексы таблицы `oclt_option_description`
--
ALTER TABLE `oclt_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Индексы таблицы `oclt_option_value`
--
ALTER TABLE `oclt_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Индексы таблицы `oclt_option_value_description`
--
ALTER TABLE `oclt_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Индексы таблицы `oclt_order`
--
ALTER TABLE `oclt_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `oclt_order_history`
--
ALTER TABLE `oclt_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Индексы таблицы `oclt_order_option`
--
ALTER TABLE `oclt_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Индексы таблицы `oclt_order_product`
--
ALTER TABLE `oclt_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oclt_order_recurring`
--
ALTER TABLE `oclt_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Индексы таблицы `oclt_order_recurring_transaction`
--
ALTER TABLE `oclt_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Индексы таблицы `oclt_order_shipment`
--
ALTER TABLE `oclt_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Индексы таблицы `oclt_order_status`
--
ALTER TABLE `oclt_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Индексы таблицы `oclt_order_total`
--
ALTER TABLE `oclt_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `oclt_order_voucher`
--
ALTER TABLE `oclt_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Индексы таблицы `oclt_product`
--
ALTER TABLE `oclt_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Индексы таблицы `oclt_product_advertise_google`
--
ALTER TABLE `oclt_product_advertise_google`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Индексы таблицы `oclt_product_advertise_google_status`
--
ALTER TABLE `oclt_product_advertise_google_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Индексы таблицы `oclt_product_advertise_google_target`
--
ALTER TABLE `oclt_product_advertise_google_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Индексы таблицы `oclt_product_attribute`
--
ALTER TABLE `oclt_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Индексы таблицы `oclt_product_description`
--
ALTER TABLE `oclt_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `oclt_product_discount`
--
ALTER TABLE `oclt_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oclt_product_filter`
--
ALTER TABLE `oclt_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Индексы таблицы `oclt_product_image`
--
ALTER TABLE `oclt_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oclt_product_option`
--
ALTER TABLE `oclt_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Индексы таблицы `oclt_product_option_value`
--
ALTER TABLE `oclt_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Индексы таблицы `oclt_product_recurring`
--
ALTER TABLE `oclt_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Индексы таблицы `oclt_product_related`
--
ALTER TABLE `oclt_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Индексы таблицы `oclt_product_reward`
--
ALTER TABLE `oclt_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Индексы таблицы `oclt_product_special`
--
ALTER TABLE `oclt_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oclt_product_tab`
--
ALTER TABLE `oclt_product_tab`
  ADD PRIMARY KEY (`product_tab_id`);

--
-- Индексы таблицы `oclt_product_to_category`
--
ALTER TABLE `oclt_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `oclt_product_to_download`
--
ALTER TABLE `oclt_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Индексы таблицы `oclt_product_to_layout`
--
ALTER TABLE `oclt_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oclt_product_to_store`
--
ALTER TABLE `oclt_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Индексы таблицы `oclt_recurring`
--
ALTER TABLE `oclt_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Индексы таблицы `oclt_recurring_description`
--
ALTER TABLE `oclt_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Индексы таблицы `oclt_return`
--
ALTER TABLE `oclt_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Индексы таблицы `oclt_return_action`
--
ALTER TABLE `oclt_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Индексы таблицы `oclt_return_history`
--
ALTER TABLE `oclt_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Индексы таблицы `oclt_return_reason`
--
ALTER TABLE `oclt_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Индексы таблицы `oclt_return_status`
--
ALTER TABLE `oclt_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Индексы таблицы `oclt_revanswers`
--
ALTER TABLE `oclt_revanswers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oclt_revblog`
--
ALTER TABLE `oclt_revblog`
  ADD PRIMARY KEY (`revblog_id`);

--
-- Индексы таблицы `oclt_revblog_category`
--
ALTER TABLE `oclt_revblog_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Индексы таблицы `oclt_revblog_category_description`
--
ALTER TABLE `oclt_revblog_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`);

--
-- Индексы таблицы `oclt_revblog_category_path`
--
ALTER TABLE `oclt_revblog_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Индексы таблицы `oclt_revblog_category_to_layout`
--
ALTER TABLE `oclt_revblog_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oclt_revblog_category_to_store`
--
ALTER TABLE `oclt_revblog_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Индексы таблицы `oclt_revblog_description`
--
ALTER TABLE `oclt_revblog_description`
  ADD PRIMARY KEY (`revblog_id`,`language_id`);

--
-- Индексы таблицы `oclt_revblog_images`
--
ALTER TABLE `oclt_revblog_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Индексы таблицы `oclt_revblog_product`
--
ALTER TABLE `oclt_revblog_product`
  ADD PRIMARY KEY (`revblog_id`,`product_id`);

--
-- Индексы таблицы `oclt_revblog_related`
--
ALTER TABLE `oclt_revblog_related`
  ADD PRIMARY KEY (`revblog_id`,`related_id`);

--
-- Индексы таблицы `oclt_revblog_review`
--
ALTER TABLE `oclt_revblog_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `revblog_id` (`revblog_id`);

--
-- Индексы таблицы `oclt_revblog_to_category`
--
ALTER TABLE `oclt_revblog_to_category`
  ADD PRIMARY KEY (`revblog_id`,`category_id`);

--
-- Индексы таблицы `oclt_revblog_to_layout`
--
ALTER TABLE `oclt_revblog_to_layout`
  ADD PRIMARY KEY (`revblog_id`,`store_id`);

--
-- Индексы таблицы `oclt_revblog_to_store`
--
ALTER TABLE `oclt_revblog_to_store`
  ADD PRIMARY KEY (`revblog_id`,`store_id`);

--
-- Индексы таблицы `oclt_revcheckoutcustomfield`
--
ALTER TABLE `oclt_revcheckoutcustomfield`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Индексы таблицы `oclt_revcheckoutcustomfield_customer_group`
--
ALTER TABLE `oclt_revcheckoutcustomfield_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Индексы таблицы `oclt_revcheckoutcustomfield_description`
--
ALTER TABLE `oclt_revcheckoutcustomfield_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Индексы таблицы `oclt_revcheckoutcustomfield_value`
--
ALTER TABLE `oclt_revcheckoutcustomfield_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Индексы таблицы `oclt_revcheckoutcustomfield_value_description`
--
ALTER TABLE `oclt_revcheckoutcustomfield_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Индексы таблицы `oclt_review`
--
ALTER TABLE `oclt_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `oclt_revpopupphones`
--
ALTER TABLE `oclt_revpopupphones`
  ADD PRIMARY KEY (`pphone_id`);

--
-- Индексы таблицы `oclt_revproductnotify`
--
ALTER TABLE `oclt_revproductnotify`
  ADD PRIMARY KEY (`notify_id`);

--
-- Индексы таблицы `oclt_revsubscribe`
--
ALTER TABLE `oclt_revsubscribe`
  ADD PRIMARY KEY (`subscribe_id`);

--
-- Индексы таблицы `oclt_seo_url`
--
ALTER TABLE `oclt_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Индексы таблицы `oclt_session`
--
ALTER TABLE `oclt_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Индексы таблицы `oclt_setting`
--
ALTER TABLE `oclt_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Индексы таблицы `oclt_shipping_courier`
--
ALTER TABLE `oclt_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Индексы таблицы `oclt_statistics`
--
ALTER TABLE `oclt_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Индексы таблицы `oclt_stock_status`
--
ALTER TABLE `oclt_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Индексы таблицы `oclt_store`
--
ALTER TABLE `oclt_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Индексы таблицы `oclt_tabs`
--
ALTER TABLE `oclt_tabs`
  ADD PRIMARY KEY (`tab_id`);

--
-- Индексы таблицы `oclt_tax_class`
--
ALTER TABLE `oclt_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Индексы таблицы `oclt_tax_rate`
--
ALTER TABLE `oclt_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Индексы таблицы `oclt_tax_rate_to_customer_group`
--
ALTER TABLE `oclt_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Индексы таблицы `oclt_tax_rule`
--
ALTER TABLE `oclt_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Индексы таблицы `oclt_textblocks`
--
ALTER TABLE `oclt_textblocks`
  ADD PRIMARY KEY (`tb_id`);

--
-- Индексы таблицы `oclt_theme`
--
ALTER TABLE `oclt_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Индексы таблицы `oclt_translation`
--
ALTER TABLE `oclt_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Индексы таблицы `oclt_upload`
--
ALTER TABLE `oclt_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Индексы таблицы `oclt_user`
--
ALTER TABLE `oclt_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `oclt_user_group`
--
ALTER TABLE `oclt_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Индексы таблицы `oclt_voucher`
--
ALTER TABLE `oclt_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Индексы таблицы `oclt_voucher_history`
--
ALTER TABLE `oclt_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Индексы таблицы `oclt_voucher_theme`
--
ALTER TABLE `oclt_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Индексы таблицы `oclt_voucher_theme_description`
--
ALTER TABLE `oclt_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Индексы таблицы `oclt_weight_class`
--
ALTER TABLE `oclt_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Индексы таблицы `oclt_weight_class_description`
--
ALTER TABLE `oclt_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Индексы таблицы `oclt_zone`
--
ALTER TABLE `oclt_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `oclt_zone_to_geo_zone`
--
ALTER TABLE `oclt_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `oclt_address`
--
ALTER TABLE `oclt_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_api`
--
ALTER TABLE `oclt_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oclt_api_ip`
--
ALTER TABLE `oclt_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_api_session`
--
ALTER TABLE `oclt_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_attribute`
--
ALTER TABLE `oclt_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oclt_attribute_group`
--
ALTER TABLE `oclt_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oclt_banner`
--
ALTER TABLE `oclt_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oclt_banner_image`
--
ALTER TABLE `oclt_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `oclt_cart`
--
ALTER TABLE `oclt_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oclt_category`
--
ALTER TABLE `oclt_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `oclt_country`
--
ALTER TABLE `oclt_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT для таблицы `oclt_coupon`
--
ALTER TABLE `oclt_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oclt_coupon_history`
--
ALTER TABLE `oclt_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_coupon_product`
--
ALTER TABLE `oclt_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_currency`
--
ALTER TABLE `oclt_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oclt_customer`
--
ALTER TABLE `oclt_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_activity`
--
ALTER TABLE `oclt_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_approval`
--
ALTER TABLE `oclt_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_group`
--
ALTER TABLE `oclt_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_history`
--
ALTER TABLE `oclt_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_ip`
--
ALTER TABLE `oclt_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_login`
--
ALTER TABLE `oclt_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_reward`
--
ALTER TABLE `oclt_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_search`
--
ALTER TABLE `oclt_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_customer_transaction`
--
ALTER TABLE `oclt_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_custom_field`
--
ALTER TABLE `oclt_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_custom_field_value`
--
ALTER TABLE `oclt_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_download`
--
ALTER TABLE `oclt_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_event`
--
ALTER TABLE `oclt_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `oclt_extension`
--
ALTER TABLE `oclt_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `oclt_extension_install`
--
ALTER TABLE `oclt_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oclt_extension_path`
--
ALTER TABLE `oclt_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=306;

--
-- AUTO_INCREMENT для таблицы `oclt_filter`
--
ALTER TABLE `oclt_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_filter_group`
--
ALTER TABLE `oclt_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_geo_zone`
--
ALTER TABLE `oclt_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `oclt_information`
--
ALTER TABLE `oclt_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oclt_language`
--
ALTER TABLE `oclt_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oclt_layout`
--
ALTER TABLE `oclt_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `oclt_layout_module`
--
ALTER TABLE `oclt_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT для таблицы `oclt_layout_route`
--
ALTER TABLE `oclt_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `oclt_length_class`
--
ALTER TABLE `oclt_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oclt_location`
--
ALTER TABLE `oclt_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_manufacturer`
--
ALTER TABLE `oclt_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oclt_marketing`
--
ALTER TABLE `oclt_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_modification`
--
ALTER TABLE `oclt_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_module`
--
ALTER TABLE `oclt_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `oclt_option`
--
ALTER TABLE `oclt_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `oclt_option_value`
--
ALTER TABLE `oclt_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `oclt_order`
--
ALTER TABLE `oclt_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_history`
--
ALTER TABLE `oclt_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_option`
--
ALTER TABLE `oclt_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_product`
--
ALTER TABLE `oclt_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_recurring`
--
ALTER TABLE `oclt_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_recurring_transaction`
--
ALTER TABLE `oclt_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_shipment`
--
ALTER TABLE `oclt_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_status`
--
ALTER TABLE `oclt_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oclt_order_total`
--
ALTER TABLE `oclt_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_order_voucher`
--
ALTER TABLE `oclt_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_product`
--
ALTER TABLE `oclt_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `oclt_product_discount`
--
ALTER TABLE `oclt_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT для таблицы `oclt_product_image`
--
ALTER TABLE `oclt_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;

--
-- AUTO_INCREMENT для таблицы `oclt_product_option`
--
ALTER TABLE `oclt_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT для таблицы `oclt_product_option_value`
--
ALTER TABLE `oclt_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `oclt_product_reward`
--
ALTER TABLE `oclt_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT для таблицы `oclt_product_special`
--
ALTER TABLE `oclt_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT для таблицы `oclt_product_tab`
--
ALTER TABLE `oclt_product_tab`
  MODIFY `product_tab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_recurring`
--
ALTER TABLE `oclt_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_return`
--
ALTER TABLE `oclt_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_return_action`
--
ALTER TABLE `oclt_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oclt_return_history`
--
ALTER TABLE `oclt_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_return_reason`
--
ALTER TABLE `oclt_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oclt_return_status`
--
ALTER TABLE `oclt_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `oclt_revanswers`
--
ALTER TABLE `oclt_revanswers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `oclt_revblog`
--
ALTER TABLE `oclt_revblog`
  MODIFY `revblog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_revblog_category`
--
ALTER TABLE `oclt_revblog_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_revblog_images`
--
ALTER TABLE `oclt_revblog_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_revblog_review`
--
ALTER TABLE `oclt_revblog_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_revcheckoutcustomfield`
--
ALTER TABLE `oclt_revcheckoutcustomfield`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oclt_revcheckoutcustomfield_value`
--
ALTER TABLE `oclt_revcheckoutcustomfield_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `oclt_review`
--
ALTER TABLE `oclt_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_revpopupphones`
--
ALTER TABLE `oclt_revpopupphones`
  MODIFY `pphone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `oclt_revproductnotify`
--
ALTER TABLE `oclt_revproductnotify`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_revsubscribe`
--
ALTER TABLE `oclt_revsubscribe`
  MODIFY `subscribe_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_seo_url`
--
ALTER TABLE `oclt_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT для таблицы `oclt_setting`
--
ALTER TABLE `oclt_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2164;

--
-- AUTO_INCREMENT для таблицы `oclt_statistics`
--
ALTER TABLE `oclt_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `oclt_stock_status`
--
ALTER TABLE `oclt_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oclt_store`
--
ALTER TABLE `oclt_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_tabs`
--
ALTER TABLE `oclt_tabs`
  MODIFY `tab_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_tax_class`
--
ALTER TABLE `oclt_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oclt_tax_rate`
--
ALTER TABLE `oclt_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT для таблицы `oclt_tax_rule`
--
ALTER TABLE `oclt_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT для таблицы `oclt_textblocks`
--
ALTER TABLE `oclt_textblocks`
  MODIFY `tb_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_theme`
--
ALTER TABLE `oclt_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_translation`
--
ALTER TABLE `oclt_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_upload`
--
ALTER TABLE `oclt_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_user`
--
ALTER TABLE `oclt_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `oclt_user_group`
--
ALTER TABLE `oclt_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `oclt_voucher`
--
ALTER TABLE `oclt_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_voucher_history`
--
ALTER TABLE `oclt_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `oclt_voucher_theme`
--
ALTER TABLE `oclt_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `oclt_weight_class`
--
ALTER TABLE `oclt_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `oclt_zone`
--
ALTER TABLE `oclt_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT для таблицы `oclt_zone_to_geo_zone`
--
ALTER TABLE `oclt_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
