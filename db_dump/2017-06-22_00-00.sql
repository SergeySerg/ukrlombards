-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 21 2017 г., 23:59
-- Версия сервера: 5.5.45-log
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `flexweb_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `files` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=58 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(43, 11, 0, '', 'Про нас@|;About us@|;', '@|;@|;', '<p>День, який випромінює світло і тепло. День, який приносить задоволення.</p>\r\n\r\n<p>Це все ДЕНЬ project - проект вашого простору, в якому хочеться</p>\r\n\r\n<p>прокидатися, працювати, відпочивати.</p>\r\n\r\n<p>Функціональне, комфортне, практичне рішення вашого інтер&#39;єру.</p>\r\n\r\n<p>Ми команда професіоналів, яка розуміє ваші потреби і втілює їх в життя.</p>@|;The day, which emits light and heat. The day is a pleasure.\r\nThis all day project - design your space in which you want\r\nwake up, work, relax.\r\nThe functional, comfortable, practical solutions for your interior.\r\nWe are a team of professionals that understands your needs and implements them in life.@|;', '', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-05-29 12:38:22', '2017-05-29 12:38:22'),
(49, 15, 0, '', 'Facebook@|;Facebook@|;Facebook@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-facebook-official\\" aria-hidden=\\"true\\"><\\/i>"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-05-29 12:57:22', '2017-06-21 14:44:55'),
(50, 15, 0, '', 'Instagram@|;Instagram@|;Instagram@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-instagram\\" aria-hidden=\\"true\\"><\\/i>"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-05-29 12:58:26', '2017-06-21 14:34:14'),
(51, 15, 0, '', 'Twitter@|;Twitter@|;Twitter@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/twitter.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-twitter\\" aria-hidden=\\"true\\"><\\/i>"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 14:35:35', '2017-06-21 14:35:35'),
(52, 18, 0, '', 'Веб-дизайн@|;Веб-дизайн@|;Web-design@|;', '<p>FLEX-WEB&nbsp;- креативне бюро, яке націлене на створення ідеального продукту для вашого бренду.</p>@|;<p>FLEX-WEB &mdash; креативное бюро, которое нацелено на создание идеального продукта для вашего бренда.</p>@|;<pre>\r\nFLEX-WEB is a creative bureau that aims to create the perfect product for your brand.</pre>@|;', '<p>Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді. FLEX-WEB - креативне бюро, яке націлене на створення ідеального продукту для вашого бренду. Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді.</p>@|;<p>Мы работаем над воплощением вашей идеи в жизнь в цифровом виде. FLEX-WEB - креативное бюро, которое нацелено на создание идеального продукта для вашего бренда. Мы работаем над воплощением вашей идеи в жизнь в цифровом виде.</p>@|;<p>We are working on the implementation of your idea in a digital way. FLEX-WEB is a creative bureau that aims to create the perfect product for your brand. We are working on the implementation of your idea in a digital way.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/52\\/img\\/52-594ac9ffcd15a.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-21 19:36:40'),
(53, 18, 0, '', 'Хостинг@|;Хостинг@|;Hosting@|;', '<p>FLEX-WEB&nbsp;- креативне бюро, яке націлене на створення ідеального продукту для вашого бренду.</p>@|;<p>FLEX-WEB &mdash; креативное бюро, которое нацелено на создание идеального продукта для вашего бренда.</p>@|;<p>FLEX-WEB is a creative bureau that aims to create the perfect product for your brand.</p>@|;', '<p>Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді. FLEX-WEB - креативне бюро, яке націлене на створення ідеального продукту для вашого бренду. Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді.</p>@|;<p>Мы работаем над воплощением вашей идеи в жизнь в цифровом виде. FLEX-WEB - креативное бюро, которое нацелено на создание идеального продукта для вашего бренда. Мы работаем над воплощением вашей идеи в жизнь в цифровом виде.</p>@|;<p>We are working on the implementation of your idea in a digital way. FLEX-WEB is a creative bureau that aims to create the perfect product for your brand. We are working on the implementation of your idea in a digital way.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/53\\/img\\/53-594aca885d134.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-21 20:55:26'),
(54, 18, 0, '', 'Верстка@|;Верстка@|;Make up@|;', '<p>FLEX-WEB&nbsp;- креативне бюро, яке націлене на створення ідеального продукту для вашого бренду.</p>@|;<p>FLEX-WEB &mdash; креативное бюро, которое нацелено на создание идеального продукта для вашего бренда.</p>@|;FLEX-WEB is a creative office that aims to create the perfect product for your brand.@|;', '<p>Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді. FLEX-WEB - креативне бюро, яке націлене на створення ідеального продукту для вашого бренду. Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді.</p>@|;<p>Мы работаем над воплощением вашей идеи в жизнь в цифровом виде. FLEX-WEB - креативное бюро, которое нацелено на создание идеального продукта для вашего бренда. Мы работаем над воплощением вашей идеи в жизнь в цифровом виде.</p>@|;<p>We are working on the implementation of your idea in a digital way. FLEX-WEB is a creative bureau that aims to create the perfect product for your brand. We are working on the implementation of your idea in a digital way.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/54\\/img\\/54-594acb1f8b7b7.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-21 20:52:26'),
(55, 13, 0, '', 'Верстка@|;Верстка@|;Make up@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;<p>Мы уверены, что сотрудничество со студиями &laquo;FLEX-WEB&raquo; - это 100% успех</p>@|;<p>We are confident that cooperation with the FLEX-WEB studio is 100% successful</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/55\\/img\\/55-594ad66de7753.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-21 20:26:22'),
(56, 13, 0, '', 'Програмування@|;Программирование@|;Programming@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;<p>Мы уверены, что сотрудничество со студиями &laquo;FLEX-WEB&raquo; - это 100% успех</p>@|;<p>We are confident that cooperation with the FLEX-WEB studio is 100% successful</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/56\\/img\\/56-594adb600607a.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-21 20:47:28'),
(57, 13, 0, '', 'Хостинг@|;Хостинг@|;Hosting@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;<p>Мы уверены, что сотрудничество со студиями &laquo;FLEX-WEB&raquo; - это 100% успех</p>@|;<p>We are confident that cooperation with the FLEX-WEB studio is 100% successful</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/55\\/img\\/55-594ad66de7753.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-21 20:49:14');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `article_parent` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `imgs` text COLLATE utf8_unicode_ci NOT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `meta_title` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(11, 0, 0, 'company', 'Про нас@|;About us@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","description","active","meta_title","meta_description","meta_keywords"],"attributes":{}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:25:28', '2017-05-31 21:08:47'),
(13, 0, 0, 'services', 'Послуги@|;Услуги@|;Services@|;', '', 'Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; принесе вам успіх@|;<p>Мы уверенны, что сотрудничество со студией &laquo;FLEX-WEB&raquo; принесет вам успех</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; will bring you success</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","gallery","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка послуги":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 0, '2017-05-29 12:29:40', '2017-06-21 20:44:16'),
(14, 0, 0, 'contact', 'Контакти@|;Contacts@|;', '', '@|;@|;', '@|;@|;', '', '{"base":["title"],"attributes":{"Фон сторінки":{"type":"files","lang_active":false,"active":false}}}', '1970-01-01 01:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:31:32', '2017-05-29 12:31:32'),
(15, 0, 0, 'social', 'Соціальні мережі@|;Соціальні мережі@|;Social networks@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","active"],"attributes":{"Ссилка":{"type":"input","lang_active":false,"active":false},"Иконка":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 0, '2017-05-29 12:33:05', '2017-06-21 19:38:30'),
(16, 0, 0, 'news', 'Новини@|;Новости@|;News@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","date","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка новини":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 0, '2017-06-10 19:57:14', '2017-06-12 09:34:02'),
(17, 0, 0, 'portfolio', 'Портфоліо@|;Портфолио@|;Portfolio@|;', '', '@|;@|;@|;', '@|;@|;@|;', '', '{"base":["title","short_description","gallery","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Головна картинка":{"type":"files","lang_active":false,"active":false},"Відношення до категорії сайту":{"type":"input","lang_active":true,"active":false}}}', '1970-01-01 01:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 0, '2017-06-10 20:01:09', '2017-06-10 20:01:09'),
(18, 0, 0, 'slider', 'Слайдер@|;Слайдер@|;Slider@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Слайд":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 10, '2017-06-10 21:48:46', '2017-06-12 13:20:26');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL,
  `user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_email` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'ua', '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(2, 'ru', '2017-01-14 20:44:58', '2017-01-14 20:44:58'),
(3, 'en', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_14_124503_create_articles_table', 1),
('2016_09_14_124813_create_categories_table', 1),
('2016_09_14_124942_create_langs_table', 1),
('2016_10_06_124518_create_texts_table', 1),
('2016_11_04_094627_create_comments_table', 1),
('2016_12_26_140118_change_text_table_soft', 1),
('2017_01_02_155628_create_orders_table', 1),
('2017_02_06_120655_create_settings_table', 2),
('2017_02_13_144141_add_parent_id_categories', 3),
('2017_02_13_174128_add_article_id', 4),
('2017_02_13_174631_add_article_id', 5),
('2017_02_14_110847_add_article_parrent_category', 6),
('2017_02_14_111446_add_article_parrent_category', 7),
('2017_02_24_163342_add_field_img', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('webdesignstudio@gmail.com', 'fbde7c2090b1432792a7b0caee4dcfa185c155d6cc24beff39508ff5271224ba', '2017-02-06 14:40:36');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'config.email', 'Пошта для отримання повідомлень', 'webtestingstudio@gmail.com', '0000-00-00 00:00:00', '2017-04-03 20:48:45', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'address', 'input', 'Адрес', 'м. Луцьк, вул. Даргомижського, 7/5@|;г. Луцк, ул. Даргомижского, 7/5@|;Lutsk, Dargomyzhsky str 7/5@|;', 0, 1, '2017-04-21 15:09:24', '2017-06-21 13:56:53', NULL),
(2, 0, 'telephone', 'input', 'Телефон', ' (066) 744-35-71', 0, 0, '2017-04-21 15:11:31', '2017-06-21 13:37:27', NULL),
(6, 0, 'email', 'input', 'Email', 'info@flexweb.pro', 0, 0, '2017-05-29 12:02:40', '2017-06-21 13:38:22', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'root', 'info@flexweb.pro', '$2y$10$YUJwamG2gluo9K0eTdKP8ugN5bd2ZuO/7VfppFFN4dm6L.wS/CY6W', 'uOozbGtcPQtfmbfMijNSgs2Q9acgxmtNyD21BcoZ6FPQTps8dZnxjGzWoHEG', '2017-04-03 21:35:00', '2017-06-21 13:29:32'),
(3, 'admin', 'webtestingstudio@gmail.com', '$2y$10$fJOHQD8J1BJiVrhbQyJmlekMsHrj1BVzJrKzfFvtaWHr97ezesWPC', '8knrTrlLQZsIOn3WnAi3XMRTCRXGnk3lTbDviA6Z0PRiCXs92iagz0ijPfHa', '2017-06-10 15:47:59', '2017-06-10 15:48:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
