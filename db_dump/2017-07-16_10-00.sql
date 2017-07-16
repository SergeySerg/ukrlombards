-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 16 2017 г., 09:58
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lombard_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(10, 6, 0, '', 'Контакты@|;Contact us@|;', '<p>Каждый веб-разработчик знает, что такое текст-&laquo;рыба&raquo;. Текст этот, несмотря на название, не имеет никакого отношения к обитателям водоемов. Используется он веб-дизайнерами для вставки на интернет-страницы и демонстрации внешнего вида контента, просмотра шрифтов, абзацев, отступов и т.д.</p>\r\n\r\n<p>Каждый веб-разработчик знает, что такое текст-&laquo;рыба&raquo;. Текст этот, несмотря на название, не имеет никакого отношения к обитателям водоемов. Используется он веб-дизайнерами для вставки на интернет-страницы и демонстрации внешнего вида контента, просмотра шрифтов, абзацев, отступов и т.д.</p>@|;<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consectetur consequatur cupiditate, delectus, doloribus ea esse expedita, fugiat illum inventore libero minima molestias non&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consectetur consequatur cupiditate, delectus, doloribus ea esse expedita, fugiat illum inventore libero minima molestias non</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque consectetur consequatur cupiditate, delectus, doloribus ea esse expedita, fugiat illum inventore libero minima molestias non</p>@|;', '@|;@|;', '{"\\u041a\\u043e\\u043e\\u0440\\u0434\\u0438\\u043d\\u0430\\u0442\\u044b \\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0435":"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m12!1m3!1d2175.676095909459!2d24.09752665832916!3d56.95435050512128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sru!4v1491313839312@|;https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m14!1m12!1m3!1d2175.676095909459!2d24.09752665832916!3d56.95435050512128!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sru!4v1491313839312@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-04-09 20:27:48', '2017-04-15 20:18:37'),
(44, 10, 0, '', 'О нас@|;О нас@|;', '@|;@|;', '<p>&nbsp;</p>\r\n\r\n<p>Визуальный стиль Stack является простым, но выразительным идеально подходит для любого проекта, будь то основной сайт маркетинга или многостраничного присутствие компании. Stack предлагает массивное значение с современным дизайном</p>@|;<p>Визуальный стиль Stack прост, но отличен для любого проекта, будь то базовый маркетинговый сайт или присутствие на нескольких страницах компании. Stack предлагает огромную ценность с современным стилем.</p>@|;', '', '', '[{"full":"upload\\/articles\\/44\\/full\\/dropdown-1.jpg","min":"upload\\/articles\\/44\\/min\\/dropdown-1.jpg"},{"full":"upload\\/articles\\/44\\/full\\/dropdown-2.jpg","min":"upload\\/articles\\/44\\/min\\/dropdown-2.jpg"},{"full":"upload\\/articles\\/44\\/full\\/girl_phone.jpg","min":"upload\\/articles\\/44\\/min\\/girl_phone.jpg"},{"full":"upload\\/articles\\/44\\/full\\/phone_in_hand.jpg","min":"upload\\/articles\\/44\\/min\\/phone_in_hand.jpg"}]', '', 0, '0000-00-00 00:00:00', 'Buben@|;Byben@|;', 'Международные звонки с Byben@|;Международные звонки с Byben@|;', 'Buben@|;Buben@|;', 0, '2017-04-14 11:40:53', '2017-05-02 13:38:26'),
(45, 10, 0, '', 'Условия эксплуатации@|;Terms of Use@|;', '@|;@|;', '<p>Lorem ipsum &ndash; псевдо-латинский текст, который используется для веб дизайна, типографии, оборудования, и распечатки вместо английского текста для того, чтобы сделать ударение не на содержание, а на элементы дизайна. Такой текст также называется как заполнитель. Это очень удобный инструмент для моделей (макетов). Он помогает выделить визуальные элементы в документе или презентации, например текст, шрифт или разметка. Lorem ipsum по большей части является элементом латинского текста классического автора и философа Цицерона. Слова и буквы были заменены добавлением или сокращением элементов, поэтому будет совсем неразумно пытаться передать содержание; это не гениально, не правильно, используется даже не понятный латинский. Хотя Lorem ipsum напоминает классический латинский, вы не найдете никакого смысла в сказанном. Поскольку текст Цицерона не содержит буквы K, W, или Z, что чуждо для латинского, эти буквы, а также многие другие часто вставлены в случайном порядке, чтобы скопировать тексты различных Европейских языков, поскольку диграфы не встречаются в оригинальных текстах.</p>\r\n\r\n<p>В профессиональной сфере часто случается так, что личные или корпоративные клиенты заказывают, чтобы публикация была сделана и представлена еще тогда, когда фактическое содержание все еще не готово. Вспомните новостные блоги, где информация публикуется каждый час в живом порядке. Тем не менее, читатели склонны к тому, чтобы быть отвлеченными доступным контентом, скажем, любым текстом, который был скопирован из газеты или интернета. Они предпочитают сконцентрироваться на тексте, пренебрегая разметкой и ее элементами. К тому же, случайный текст подвергается риску быть неумышленно смешным или оскорбительным, что является неприемлемым риском в корпоративной среде. Lorem ipsum, а также ее многие варианты были использованы в работе начиная с 1960-ых, и очень даже похоже, что еще с 16-го века.</p>@|;<p>Lorem ipsum dolor sit amet, at everti similique vis. Cu vis habeo salutatus intellegam, per ad unum porro offendit. Ad mucius scaevola scripserit mei, duo scaevola indoctum id. Nec te fierent tacimates voluptatum, mea mnesarchum consequuntur et. Bonorum maiestatis vituperata sit cu, sea laoreet feugait et.</p>\r\n\r\n<p>Vitae ignota accusata eum no. Eu dolore expetenda has, quo semper ceteros ex, te sit petentium vituperata. Aperiri luptatum recusabo te eos, aeque expetenda mei id. Periculis dissentias ullamcorper ex nec, mel dico meliore cu, omnes equidem percipit te vis. Id cum veri aeque definitionem, dicit altera tractatos eum ea.</p>\r\n\r\n<p>Ut eam laudem bonorum ornatus, nonumy urbanitas pro ne. His legendos scribentur eu. Vim at affert numquam. Augue graeco animal duo et, qui putant apeirian eu. Nisl idque delenit et mei, mel causae suavitate assentior cu. Commodo explicari ad nec.</p>\r\n\r\n<p>Ne facer primis signiferumque est, per omnis theophrastus eu. Doctus pertinax nominati eos eu, eam erroribus incorrupte ad. Vix ex malis ornatus suavitate, ex mea alterum periculis inciderint. Cu omittantur complectitur qui. Sed utinam euismod reformidans id, saperet nusquam similique mei et.</p>\r\n\r\n<p>Ridens viderer ius te. Mediocrem abhorreant delicatissimi ne per. Eros ceteros vim ex, duis timeam cu pro, inani eloquentiam mea ad. Usu eripuit evertitur in, eos ne possit melius. At est offendit forensibus, usu ut convenire torquatos posidonium, at vel ullum conceptam. Lucilius persequeris eos at, posse ornatus instructior cu vel, in vis velit perfecto senserit.</p>@|;', '', '', '[]', '', 0, '0000-00-00 00:00:00', 'Условия эксплуатации | XOMobile@|;Terms of Use | XOMobile@|;', '@|;@|;', '@|;@|;', 1, '2017-04-15 15:33:49', '2017-05-02 14:43:04'),
(46, 10, 0, '', 'Политика конфиденциальности@|;Privacy policy@|;', '@|;@|;', '<p>Lorem ipsum &ndash; псевдо-латинский текст, который используется для веб дизайна, типографии, оборудования, и распечатки вместо английского текста для того, чтобы сделать ударение не на содержание, а на элементы дизайна. Такой текст также называется как заполнитель. Это очень удобный инструмент для моделей (макетов). Он помогает выделить визуальные элементы в документе или презентации, например текст, шрифт или разметка. Lorem ipsum по большей части является элементом латинского текста классического автора и философа Цицерона. Слова и буквы были заменены добавлением или сокращением элементов, поэтому будет совсем неразумно пытаться передать содержание; это не гениально, не правильно, используется даже не понятный латинский. Хотя Lorem ipsum напоминает классический латинский, вы не найдете никакого смысла в сказанном. Поскольку текст Цицерона не содержит буквы K, W, или Z, что чуждо для латинского, эти буквы, а также многие другие часто вставлены в случайном порядке, чтобы скопировать тексты различных Европейских языков, поскольку диграфы не встречаются в оригинальных текстах.</p>@|;<p>Lorem ipsum dolor sit amet, at everti similique vis. Cu vis habeo salutatus intellegam, per ad unum porro offendit. Ad mucius scaevola scripserit mei, duo scaevola indoctum id. Nec te fierent tacimates voluptatum, mea mnesarchum consequuntur et. Bonorum maiestatis vituperata sit cu, sea laoreet feugait et.</p>\r\n\r\n<p>Vitae ignota accusata eum no. Eu dolore expetenda has, quo semper ceteros ex, te sit petentium vituperata. Aperiri luptatum recusabo te eos, aeque expetenda mei id. Periculis dissentias ullamcorper ex nec, mel dico meliore cu, omnes equidem percipit te vis. Id cum veri aeque definitionem, dicit altera tractatos eum ea.</p>\r\n\r\n<p>Ut eam laudem bonorum ornatus, nonumy urbanitas pro ne. His legendos scribentur eu. Vim at affert numquam. Augue graeco animal duo et, qui putant apeirian eu. Nisl idque delenit et mei, mel causae suavitate assentior cu. Commodo explicari ad nec.</p>\r\n\r\n<p>Ne facer primis signiferumque est, per omnis theophrastus eu. Doctus pertinax nominati eos eu, eam erroribus incorrupte ad. Vix ex malis ornatus suavitate, ex mea alterum periculis inciderint. Cu omittantur complectitur qui. Sed utinam euismod reformidans id, saperet nusquam similique mei et.</p>\r\n\r\n<p>Ridens viderer ius te. Mediocrem abhorreant delicatissimi ne per. Eros ceteros vim ex, duis timeam cu pro, inani eloquentiam mea ad. Usu eripuit evertitur in, eos ne possit melius. At est offendit forensibus, usu ut convenire torquatos posidonium, at vel ullum conceptam. Lucilius persequeris eos at, posse ornatus instructior cu vel, in vis velit perfecto senserit.</p>@|;', '', '', '[]', '', 0, '0000-00-00 00:00:00', 'Политика конфиденциальности | XOMobile@|;Privacy policy | XOMobile@|;', '@|;@|;', '@|;@|;', 1, '2017-04-15 15:41:59', '2017-05-02 14:43:44'),
(57, 13, 0, '', 'Полное общество "ЕВ.РО.ЛОМБАРД" ЕВ.РО.ФИНАНСЫ ЛТД И КОМПАНИЯ "@|;Повне товариство "ЕВ.РО.ЛОМБАРД "ЕВ.РО.ФІНАНСИ ЛТД І КОМПАНІЯ"@|;', '<p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with latest jQuery plugins.</p>@|;<p>INSPINIA Admin Theme is a premium admin dashboard template with flat design concept. It is fully responsive admin dashboard template built with Bootstrap 3+ Framework, HTML5 and CSS3, Media query. It has a huge collection of reusable UI components and integrated with latest jQuery plugins.<br />\r\n&nbsp;</p>@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"37508088","\\u0421\\u0435\\u0440\\u0456\\u044f \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"\\u0410\\u0410\\u0412","\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"071131","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0430 \\u0434\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443","E-mail":"EUoffice@eulombard.com.ua","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"04646","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"3-14-61","\\u041b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f":"upload\\/articles\\/57\\/img\\/57-5969386b1e749.png","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"<p>17044 \\u0427\\u0435\\u0440\\u043d\\u0438\\u0433\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u041a\\u043e\\u0437\\u0435\\u043b\\u0435\\u0446\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d \\u041e\\u0421\\u0422\\u0415\\u0420, \\u0411.\\u0425\\u043c\\u0435\\u043b\\u044c\\u043d\\u0438\\u0446\\u043a\\u043e\\u0433\\u043e, \\u0431\\u0443\\u0434.41<\\/p>\\r\\n@|;<p>17044 \\u0427\\u0415\\u0420\\u041d\\u0406\\u0413\\u0406\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c, \\u041a\\u041e\\u0417\\u0415\\u041b\\u0415\\u0426\\u042c\\u041a\\u0418\\u0419 \\u0420\\u0410\\u0419\\u041e\\u041d \\u041e\\u0421\\u0422\\u0415\\u0420, \\u0411.\\u0425\\u043c\\u0435\\u043b\\u044c\\u043d\\u0438\\u0446\\u044c\\u043a\\u043e\\u0433\\u043e, \\u0431\\u0443\\u0434.41<\\/p>\\r\\n@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"\\u0427\\u0415\\u0420\\u041d\\u0418\\u0413\\u041e\\u0412\\u0421\\u041a\\u0410\\u042f \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c@|;\\u0427\\u0415\\u0420\\u041d\\u0406\\u0413\\u0406\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c@|;","\\u041f\\u0406\\u0411 \\u043a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a\\u0430":"\\u041a\\u043e\\u0437\\u043d\\u043e\\u0432\\u00a0\\u0414\\u043c\\u0438\\u0442\\u0440\\u0438\\u0439 \\u0410\\u043b\\u0435\\u043a\\u0441\\u0430\\u043d\\u0434\\u0440\\u043e\\u0432\\u0438\\u0447@|;\\u041a\\u043e\\u0437\\u043d\\u043e\\u0432 \\u0414\\u043c\\u0438\\u0442\\u0440\\u043e \\u041e\\u043b\\u0435\\u043a\\u0441\\u0430\\u043d\\u0434\\u0440\\u043e\\u0432\\u0438\\u0447@|;"}', 'upload/articles/57/main/57-1500068279.png', '[]', '', 10, '2011-02-14 22:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-10 20:27:34', '2017-07-14 21:37:59'),
(58, 13, 0, '', 'Ваш Ломбард@|;Your Lombard@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"","\\u0421\\u0435\\u0440\\u0456\\u044f \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"","\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"","E-mail":"","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"","\\u041b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f":null,"\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"@|;@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"@|;@|;","\\u041f\\u0406\\u0411 \\u043a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a\\u0430":"@|;@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-07-11 14:58:46', '2017-07-14 21:54:10'),
(59, 13, 0, '', 'Діамантовий дім@|;Diamond House@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"","\\u0421\\u0435\\u0440\\u0456\\u044f \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"","\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"","E-mail":"","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"","\\u041b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f":null,"\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"@|;@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"@|;@|;","\\u041f\\u0406\\u0411 \\u043a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a\\u0430":"@|;@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-07-11 14:59:40', '2017-07-14 21:54:19'),
(60, 14, 57, '', 'Алдан (на Гетьмана)@|;Aldan (to Getman)@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"@|;@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"@|;@|;","\\u041a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a":"@|;@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-07-12 08:05:48', '2017-07-14 11:01:40'),
(61, 14, 57, '', 'Алдан (на Драйзера)@|;Aldan (on Dreiser)@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"@|;@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"@|;@|;","\\u041a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a":"@|;@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-07-12 08:33:19', '2017-07-14 11:01:50'),
(62, 14, 58, '', 'Ваш Ломбард (Комиссионный магазин)@|;Your Pawnshop (Commission Store)@|;', '@|;@|;', '@|;@|;', '', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 08:34:36', '2017-07-12 08:34:48'),
(63, 14, 58, '', 'Ваш Ломбард (на Гришко)@|;Your Pawnshop (on Grishko)@|;', '@|;@|;', '@|;@|;', '', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 08:35:52', '2017-07-12 08:35:52'),
(64, 14, 59, '', 'Діамантовий дім (бульвар Кольцова)@|;Діамантовий дім (Koltsov Boulevard)@|;', '@|;@|;', '@|;@|;', '', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 08:37:53', '2017-07-12 08:38:39'),
(65, 14, 57, '', 'Отделение № 1 Полного общества "ЕВ.РО.ЛОМБАРД" ЕВ.РО.ФИНАНСЫ ЛТД И КОМПАНИЯ "@|;Відділення № 1 Повного товариства "ЕВ.РО.ЛОМБАРД "ЕВ.РО.ФІНАНСИ ЛТД І КОМПАНІЯ"@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"40640977","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0430 \\u0434\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"067","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"656-20-57","\\u0412\\u0456\\u0434\\u0434\\u0456\\u043b\\u0435\\u043d\\u043d\\u044f":"1","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"<p>03186 \\u041a\\u0418\\u0415\\u0412, \\u041a\\u0418\\u0415\\u0412 186, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u0412\\u043e\\u0437\\u0434\\u0443\\u0445\\u043e\\u0444\\u043b\\u043e\\u0442\\u0441\\u043a\\u0438\\u0439, \\u0431\\u0443\\u0434.48 \\/ 2<\\/p>\\r\\n@|;<p>03186 \\u041a\\u0418\\u0407\\u0412, \\u041a\\u0418\\u0407\\u0412 186, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041f\\u043e\\u0432\\u0456\\u0442\\u0440\\u043e\\u0444\\u043b\\u043e\\u0442\\u0441\\u044c\\u043a\\u0438\\u0439, \\u0431\\u0443\\u0434.48\\/2<\\/p>\\r\\n@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"\\u041a\\u0418\\u0415\\u0412@|;\\u041a\\u0418\\u0407\\u0412@|;","\\u041a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a":"\\u0414\\u043e\\u0440\\u043e\\u0448 \\u042e\\u043b\\u0438\\u044f \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u043d\\u0430@|;\\u0414\\u043e\\u0440\\u043e\\u0448 \\u042e\\u043b\\u0456\\u044f \\u041c\\u0438\\u043a\\u043e\\u043b\\u0430\\u0457\\u0432\\u043d\\u0430@|;"}', '', '[]', '', 10, '1970-01-01 01:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 12:28:05', '2017-07-14 12:10:00'),
(66, 14, 57, '', 'Отделение № 2 Полного общества "ЕВ.РО.ЛОМБАРД" ЕВ.РО.ФИНАНСЫ ЛТД И КОМПАНИЯ "@|;Відділення № 2 Повного товариства "ЕВ.РО.ЛОМБАРД "ЕВ.РО.ФІНАНСИ ЛТД І КОМПАНІЯ"@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"40641043","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0430 \\u0434\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"067","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"440-94-97","\\u0412\\u0456\\u0434\\u0434\\u0456\\u043b\\u0435\\u043d\\u043d\\u044f":"2","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"79058 \\u041b\\u044c\\u0432\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u041b\\u044c\\u0432\\u043e\\u0432, \\u0433\\u043e\\u0440\\u043e\\u0434 \\u041b\\u044c\\u0432\\u043e\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u0427\\u0435\\u0440\\u043d\\u043e\\u0432\\u043e\\u043b\\u0430, \\u0434.17, \\u043a\\u043e\\u0440\\u043f.1-\\u0439 \\u044d\\u0442\\u0430\\u0436, \\u043e\\u0444. (\\u041a\\u0432.) 1\\r\\n@|;<p>79058 \\u041b\\u044c\\u0432\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u041b\\u044c\\u0432\\u043e\\u0432, \\u0433\\u043e\\u0440\\u043e\\u0434 \\u041b\\u044c\\u0432\\u043e\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u0427\\u0435\\u0440\\u043d\\u043e\\u0432\\u043e\\u043b\\u0430, \\u0434.17, \\u043a\\u043e\\u0440\\u043f.1-\\u0439 \\u044d\\u0442\\u0430\\u0436, \\u043e\\u0444. (\\u041a\\u0432.) 1<\\/p>\\r\\n@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"\\u041b\\u044c\\u0432\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c@|;\\u041b\\u042c\\u0412\\u0406\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c@|;","\\u041a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a":"\\u041e\\u043d\\u0443\\u0444\\u0435\\u0440 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440 \\u0410\\u043d\\u0434\\u0440\\u0435\\u0435\\u0432\\u0438\\u0447@|;\\u041e\\u043d\\u0443\\u0444\\u0435\\u0440 \\u0412\\u043e\\u043b\\u043e\\u0434\\u0438\\u043c\\u0438\\u0440 \\u0410\\u043d\\u0434\\u0440\\u0456\\u0439\\u043e\\u0432\\u0438\\u0447@|;"}', '', '[]', '', 9, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 13:21:47', '2017-07-14 21:19:25'),
(67, 14, 57, '', 'Отделение № 3 Полного общества "ЕВ.РО.ЛОМБАРД" ЕВ.РО.ФИНАНСЫ ЛТД И КОМПАНИЯ "@|;Відділення № 3 Повного товариства "ЕВ.РО.ЛОМБАРД "ЕВ.РО.ФІНАНСИ ЛТД І КОМПАНІЯ"@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"40641059","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0430 \\u0434\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"067","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"440-94-97","\\u0412\\u0456\\u0434\\u0434\\u0456\\u043b\\u0435\\u043d\\u043d\\u044f":"3","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"<p>79000 \\u041b\\u044c\\u0432\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u041b\\u044c\\u0432\\u043e\\u0432, \\u0433\\u043e\\u0440\\u043e\\u0434 \\u041b\\u044c\\u0432\\u043e\\u0432, \\u0421\\u0438\\u0445\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f, \\u0434.28, \\u043e\\u0444. (\\u041a\\u0432.) 73<\\/p>\\r\\n@|;<p>79000 \\u041b\\u042c\\u0412\\u0406\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c, \\u041b\\u042c\\u0412\\u0406\\u0412, \\u041c\\u0406\\u0421\\u0422\\u041e \\u041b\\u042c\\u0412\\u0406\\u0412, \\u0421\\u0438\\u0445\\u0456\\u0432\\u0441\\u044c\\u043a\\u0430, \\u0431\\u0443\\u0434.28, \\u043e\\u0444.(\\u043a\\u0432.)73<\\/p>\\r\\n@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"\\u041b\\u044c\\u0432\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c@|;\\u041b\\u042c\\u0412\\u0406\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c@|;","\\u041a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a":"\\u041e\\u043d\\u0443\\u0444\\u0435\\u0440 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440 \\u0410\\u043d\\u0434\\u0440\\u0435\\u0435\\u0432\\u0438\\u0447@|;\\u041e\\u043d\\u0443\\u0444\\u0435\\u0440 \\u0412\\u043e\\u043b\\u043e\\u0434\\u0438\\u043c\\u0438\\u0440 \\u0410\\u043d\\u0434\\u0440\\u0456\\u0439\\u043e\\u0432\\u0438\\u0447@|;"}', '', '[]', '', 9, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 13:21:47', '2017-07-14 12:11:01'),
(68, 13, 0, '', 'ПОЛНОЕ ОБЩЕСТВО «ЛОМБАРД ПРИВАТ» СИЧ С.В. И КОМПАНИЯ »@|;ПОВНЕ ТОВАРИСТВО «ЛОМБАРД ПРИВАТ» СИЧ С.В. І КОМПАНІЯ»@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"38717301","\\u0421\\u0435\\u0440\\u0456\\u044f \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"\\u0410\\u0412","\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"358444","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0430 \\u0434\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443","E-mail":"serega-sich@mail.ru","\\u041c\\u0456\\u0436\\u043c\\u0456\\u0441\\u044c\\u043a\\u0438\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d\\u043d\\u0438\\u0439 \\u043a\\u043e\\u0434":"0432","\\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d":"60-17-15","\\u041b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f":"upload\\/articles\\/68\\/img\\/68-59662f5ab0eae.png","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"<p>21050 \\u0412\\u0438\\u043d\\u043d\\u0438\\u0446\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0412\\u0418\\u041d\\u041d\\u0418\\u0426\\u0410, \\u0413\\u041e\\u0420\\u041e\\u0414 \\u0412\\u0418\\u041d\\u041d\\u0418\\u0426\\u0410, \\u0424\\u0443\\u0440\\u043c\\u0430\\u043d\\u043e\\u0432\\u0430, \\u0434.28<\\/p>\\r\\n@|;<p>21050 \\u0412\\u0406\\u041d\\u041d\\u0418\\u0426\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c, \\u0412\\u0406\\u041d\\u041d\\u0418\\u0426\\u042f, \\u041c\\u0406\\u0421\\u0422\\u041e \\u0412\\u0406\\u041d\\u041d\\u0418\\u0426\\u042f, \\u0424\\u0423\\u0420\\u041c\\u0410\\u041d\\u041e\\u0412\\u0410, \\u0431\\u0443\\u0434.28<\\/p>\\r\\n@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"\\u0412\\u0438\\u043d\\u043d\\u0438\\u0446\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c@|;\\u0412\\u0406\\u041d\\u041d\\u0418\\u0426\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c@|;","\\u041f\\u0406\\u0411 \\u043a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a\\u0430":"\\u0421\\u044b\\u0447 \\u0421\\u0435\\u0440\\u0433\\u0435\\u0439 \\u0412\\u043b\\u0430\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u0438\\u0447@|;\\u0421\\u0438\\u0447 \\u0421\\u0435\\u0440\\u0433\\u0456\\u0439 \\u0412\\u043e\\u043b\\u043e\\u0434\\u0438\\u043c\\u0438\\u0440\\u043e\\u0432\\u0438\\u0447@|;"}', '', '[]', '', 9, '2013-05-20 21:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 13:30:32', '2017-07-13 22:29:12'),
(69, 13, 0, '', 'Полное общество "Рябцева и компания" Ломбард Золотой ковчег "@|;Повне товариство "Рябцева і компанія "Ломбард Золотий ковчег"@|;', '@|;@|;', '@|;@|;', '{"\\u041a\\u043e\\u0434 \\u0404\\u0414\\u0420\\u041f\\u041e\\u0423":"37987481","\\u0421\\u0435\\u0440\\u0456\\u044f \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"\\u0410\\u0411","\\u041d\\u043e\\u043c\\u0435\\u0440 \\u0441\\u0432\\u0456\\u0434\\u043e\\u0446\\u0442\\u0432\\u0430 \\u043f\\u0440\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0430\\u0446\\u0456\\u044e":"702231","\\u0421\\u0442\\u0430\\u0442\\u0443\\u0441":"\\u0412\\u043a\\u043b\\u044e\\u0447\\u0435\\u043d\\u0430 \\u0434\\u043e \\u0440\\u0435\\u0454\\u0441\\u0442\\u0440\\u0443","E-mail":"elloydp@mail.ru","\\u041b\\u043e\\u0433\\u043e\\u0442\\u0438\\u043f":"upload\\/articles\\/69\\/img\\/69-59662f7452a28.gif","\\u0410\\u0434\\u0440\\u0435\\u0441\\u0430":"<p>49000 \\u0414\\u043d\\u0435\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0414\\u043d\\u0435\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u043a, \\u0433\\u043e\\u0440\\u043e\\u0434 \\u0414\\u043d\\u0435\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u043a, \\u041c\\u0430\\u0440\\u0448\\u0430\\u043b\\u0430 \\u041c\\u0430\\u043b\\u0438\\u043d\\u043e\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e, \\u0434.2, \\u043e\\u0444. (\\u041a\\u0432.) \\u0411\\u0430\\u0448\\u043d\\u044f \\u04107-7<\\/p>\\r\\n@|;<p>49000 \\u0414\\u041d\\u0406\\u041f\\u0420\\u041e\\u041f\\u0415\\u0422\\u0420\\u041e\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c, \\u0414\\u041d\\u0406\\u041f\\u0420\\u041e\\u041f\\u0415\\u0422\\u0420\\u041e\\u0412\\u0421\\u042c\\u041a, \\u041c\\u0406\\u0421\\u0422\\u041e \\u0414\\u041d\\u0406\\u041f\\u0420\\u041e\\u041f\\u0415\\u0422\\u0420\\u041e\\u0412\\u0421\\u042c\\u041a, \\u041c\\u0430\\u0440\\u0448\\u0430\\u043b\\u0430 \\u041c\\u0430\\u043b\\u0438\\u043d\\u043e\\u0432\\u0441\\u044c\\u043a\\u043e\\u0433\\u043e, \\u0431\\u0443\\u0434.2, \\u043e\\u0444.(\\u043a\\u0432.)\\u0411\\u0430\\u0448\\u0442\\u0430 \\u04107-7<\\/p>\\r\\n@|;","\\u041e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c":"\\u0414\\u043d\\u0435\\u043f\\u0440\\u043e\\u043f\\u0435\\u0442\\u0440\\u043e\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c@|;\\u0414\\u041d\\u0406\\u041f\\u0420\\u041e\\u041f\\u0415\\u0422\\u0420\\u041e\\u0412\\u0421\\u042c\\u041a\\u0410 \\u041e\\u0411\\u041b\\u0410\\u0421\\u0422\\u042c@|;","\\u041f\\u0406\\u0411 \\u043a\\u0435\\u0440\\u0456\\u0432\\u043d\\u0438\\u043a\\u0430":"\\u0420\\u044f\\u0431\\u0446\\u0435\\u0432\\u0430 \\u0415\\u043b\\u0435\\u043d\\u0430 \\u0415\\u0432\\u0433\\u0435\\u043d\\u044c\\u0435\\u0432\\u043d\\u0430@|;\\u0420\\u044f\\u0431\\u0446\\u0435\\u0432\\u0430 \\u041e\\u043b\\u0435\\u043d\\u0430 \\u0404\\u0432\\u0433\\u0435\\u043d\\u0456\\u0432\\u043d\\u0430@|;"}', '', '[]', '', 9, '2012-01-30 22:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 13:38:17', '2017-07-12 14:17:24'),
(70, 15, 0, '', 'Слайд 1@|;Слайд 1@|;', '<p>Lorem Ipsum is simply dummy text of the printing.</p>@|;<pre>\r\nLorem Ipsum is simply dummy text of the printing.</pre>@|;', '@|;@|;', '{"\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0435":"https:\\/\\/www.google.com.ua\\/","\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u0441\\u043b\\u0430\\u0439\\u0434\\u0430":"upload\\/articles\\/70\\/img\\/70-596a3ea148c35.jpg","\\u0422\\u0435\\u043a\\u0441\\u0442 \\u0432 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0435":"\\u041f\\u043e\\u0434\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435@|;\\u0414\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u0456\\u0448\\u0435@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 13:53:50', '2017-07-15 16:11:13'),
(71, 15, 0, '', 'Слайд 2@|;Слайд 2@|;', '<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>@|;Cras justo odio, dapibus ac facilisis in, egestas eget quam.@|;', '@|;@|;', '{"\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0435":"","\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u0441\\u043b\\u0430\\u0439\\u0434\\u0430":"upload\\/articles\\/71\\/img\\/71-5967f9793ec9a.png","\\u0422\\u0435\\u043a\\u0441\\u0442 \\u0432 \\u043a\\u043d\\u043e\\u043f\\u043a\\u0435":"\\u041f\\u043e\\u0431\\u0440\\u043e\\u0431\\u043d\\u0435\\u0435@|;\\u0414\\u0435\\u0442\\u0430\\u043b\\u044c\\u043d\\u0456\\u0448\\u0435@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;', '@|;@|;', '@|;@|;', 1, '2017-07-12 14:08:10', '2017-07-13 22:52:20');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(6, 0, 0, 'contact', 'Контакты@|;Contacts@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","short_description","active"],"attributes":{}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-04-09 19:33:23', '2017-05-02 14:52:57'),
(10, 0, 0, 'page', 'Статические страницы@|;Static pages@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","description","gallery","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-04-14 11:04:41', '2017-04-15 20:13:03'),
(13, 0, 0, 'pawnshop', 'Бренды ломбардов@|;Бренди ломбардів@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","short_description","img","date","priority","active"],"attributes":{"Код ЄДРПОУ":{"type":"input","lang_active":false,"active":false},"Серія свідоцтва про реєстрацію":{"type":"input","lang_active":false,"active":false},"Номер свідоцтва про реєстрацію":{"type":"input","lang_active":false,"active":false},"Статус":{"type":"input","lang_active":false,"active":false},"Адреса":{"type":"textarea","lang_active":true,"active":false},"E-mail":{"type":"input","lang_active":false,"active":false},"Область":{"type":"input","lang_active":true,"active":false},"ПІБ керівника":{"type":"input","lang_active":true,"active":false},"Логотип":{"type":"files","lang_active":false,"active":false},"Міжміський телефонний код":{"type":"input","lang_active":false,"active":false},"Телефон":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 10, '2017-07-10 20:26:06', '2017-07-14 21:37:40'),
(14, 0, 13, 'branches', 'Филиалы@|;Філіали@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","priority","active","article_parent"],"attributes":{"Код ЄДРПОУ":{"type":"input","lang_active":false,"active":false},"Адреса":{"type":"textarea","lang_active":true,"active":false},"Область":{"type":"input","lang_active":true,"active":false},"Керівник":{"type":"input","lang_active":true,"active":false},"Статус":{"type":"input","lang_active":false,"active":false},"Міжміський телефонний код":{"type":"input","lang_active":false,"active":false},"Телефон":{"type":"input","lang_active":false,"active":false},"Відділення":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 9, '2017-07-11 14:30:38', '2017-07-14 11:27:38'),
(15, 0, 0, 'slider', 'Слайдер@|;Слайдер@|;', '', '@|;@|;', '@|;@|;', '[]', '{"base":["title","short_description","priority","active"],"attributes":{"Текст в кнопке":{"type":"input","lang_active":true,"active":false},"Картинка слайда":{"type":"files","lang_active":false,"active":false},"Ссылка на кнопке":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 9, '2017-07-12 13:48:48', '2017-07-13 22:45:02');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
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
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `langs`
--

CREATE TABLE IF NOT EXISTS `langs` (
  `id` int(10) unsigned NOT NULL,
  `lang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` text COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `img` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `langs`
--

INSERT INTO `langs` (`id`, `lang`, `country`, `active`, `img`, `priority`, `created_at`, `updated_at`) VALUES
(2, 'ru', 'Русский', 1, '', 0, '2017-01-14 20:44:58', '2017-07-10 20:22:06'),
(8, 'ua', 'Украина', 1, '', 0, '2017-06-30 20:52:52', '2017-07-12 11:44:33');

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
  `id` int(10) unsigned NOT NULL,
  `type` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
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
  `id` int(10) unsigned NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'config.email', 'Почта для входящих сообщений', 'webtestingstudio@gmail.com', '0000-00-00 00:00:00', '2017-04-11 19:28:57', NULL),
(2, 'tariffing', 'Ссылка на API с тарифами', 'http://manager.camelmobile.com/safeum/out-rates.json', '2017-04-19 14:49:05', '2017-04-19 14:49:05', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `texts`
--

CREATE TABLE IF NOT EXISTS `texts` (
  `id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `lang_active` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'telephone', 'input', 'Телефон', '', 0, 1, '2017-04-08 22:22:39', '2017-07-04 12:11:48', NULL),
(2, 0, 'сaption', 'textarea', 'Заголовок на главной странице', 'Сети ломбардов Украины@|;Мережі ломбардів України@|;', 0, 1, '2017-07-13 21:05:36', '2017-07-13 21:05:36', NULL),
(3, 0, 'short-description', 'textarea', 'Подзаголовок на главной странице', 'На нашем сайте Вы сможете найти полный перечень ломбардов на территории Украины@|;На нашому сайті Ви зможете найти повний перелік ломбардів на території України@|;', 0, 1, '2017-07-13 21:09:47', '2017-07-13 21:09:47', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin1', 'info@byben.com1', '$2y$10$nCNnR/77B3bADXWGd5a3pOhJ3h0kLqP0s1pzG3QFAtKoSAvBBeKGy', 'Xhir8woAyMK2eNEMb4XMPgPCR6ZYE9F0sHERoJe5f6qBKcrokfOFuv5Iuf6Z', '2017-03-13 14:01:45', '2017-03-13 14:23:59'),
(3, 'root', 'webtestingstudio@gmail.com', '$2y$10$F4eqUytPQDJJpqQ/K9UH3OebHHSKu.CtnkAg0OqmzY1Ri3nemIGqW', 'fEJhvcwYTpXt9i2HhEE0jmvgA067Wfvk96FdcQfcBGSQQ7IOiuM4vRQtLYES', '2017-04-03 20:27:38', '2017-07-10 20:14:49'),
(4, 'admin', 'info@ukrlombards.com', '$2y$10$qg60Ur3hElw.YJOYjZtzjeZyTGJoaVgxSI4mhjM5GBs8QIEeAfTGy', 'BolGCKVOaZUEYjuKq4VQqjHqDzsKgVGqzXOmcRsgTUqRiAgxgYjH4wEFTMof', '2017-07-10 20:06:41', '2017-07-10 20:12:16');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `langs`
--
ALTER TABLE `langs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `texts`
--
ALTER TABLE `texts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
