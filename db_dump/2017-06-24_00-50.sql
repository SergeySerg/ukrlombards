-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 24 2017 г., 00:51
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(49, 15, 0, '', 'Facebook@|;Facebook@|;Facebook@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-facebook-official\\" aria-hidden=\\"true\\"><\\/i>"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-05-29 12:57:22', '2017-06-21 14:44:55'),
(50, 15, 0, '', 'Instagram@|;Instagram@|;Instagram@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-instagram\\" aria-hidden=\\"true\\"><\\/i>"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-05-29 12:58:26', '2017-06-21 14:34:14'),
(51, 15, 0, '', 'Twitter@|;Twitter@|;Twitter@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/twitter.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-twitter\\" aria-hidden=\\"true\\"><\\/i>"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 14:35:35', '2017-06-21 14:35:35'),
(52, 18, 0, '', 'Веб-дизайн@|;Веб-дизайн@|;Web-design@|;', '<p>FLEX-WEB&nbsp;- креативне бюро, яке націлене на створення ідеального продукту для вашого бренду.</p>@|;<p>FLEX-WEB &mdash; креативное бюро, которое нацелено на создание идеального продукта для вашего бренда.</p>@|;<p>FLEX-WEB is a creative bureau that aims to create the perfect product for your brand.</p>@|;', '<p>Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді. FLEX-WEB - креативне бюро, яке націлене на створення ідеального продукту для вашого бренду. Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді.</p>@|;<p>Мы работаем над воплощением вашей идеи в жизнь в цифровом виде. FLEX-WEB - креативное бюро, которое нацелено на создание идеального продукта для вашего бренда. Мы работаем над воплощением вашей идеи в жизнь в цифровом виде.</p>@|;<p>We are working on the implementation of your idea in a digital way. FLEX-WEB is a creative bureau that aims to create the perfect product for your brand. We are working on the implementation of your idea in a digital way.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/52\\/img\\/52-594ac9ffcd15a.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-22 10:26:42'),
(53, 18, 0, '', 'Хостинг@|;Хостинг@|;Hosting@|;', '<p>FLEX-WEB&nbsp;- креативне бюро, яке націлене на створення ідеального продукту для вашого бренду.</p>@|;<p>FLEX-WEB &mdash; креативное бюро, которое нацелено на создание идеального продукта для вашего бренда.</p>@|;FLEX-WEB is a creative bureau that aims to create the perfect product for your brand.@|;', '<p>Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді. FLEX-WEB - креативне бюро, яке націлене на створення ідеального продукту для вашого бренду. Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді.</p>@|;<p>Мы работаем над воплощением вашей идеи в жизнь в цифровом виде. FLEX-WEB - креативное бюро, которое нацелено на создание идеального продукта для вашего бренда. Мы работаем над воплощением вашей идеи в жизнь в цифровом виде.</p>@|;<p>We are working on the implementation of your idea in a digital way. FLEX-WEB is a creative bureau that aims to create the perfect product for your brand. We are working on the implementation of your idea in a digital way.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/53\\/img\\/53-594aca885d134.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-22 09:59:21'),
(54, 18, 0, '', 'Верстка@|;Верстка@|;Make up@|;', '<p>FLEX-WEB&nbsp;- креативне бюро, яке націлене на створення ідеального продукту для вашого бренду.</p>@|;<p>FLEX-WEB &mdash; креативное бюро, которое нацелено на создание идеального продукта для вашего бренда.</p>@|;FLEX-WEB is a creative office that aims to create the perfect product for your brand.@|;', '<p>Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді. FLEX-WEB - креативне бюро, яке націлене на створення ідеального продукту для вашого бренду. Ми працюємо над втіленням вашої ідеї в життя в цифровому вигляді.</p>@|;<p>Мы работаем над воплощением вашей идеи в жизнь в цифровом виде. FLEX-WEB - креативное бюро, которое нацелено на создание идеального продукта для вашего бренда. Мы работаем над воплощением вашей идеи в жизнь в цифровом виде.</p>@|;<p>We are working on the implementation of your idea in a digital way. FLEX-WEB is a creative bureau that aims to create the perfect product for your brand. We are working on the implementation of your idea in a digital way.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/54\\/img\\/54-594acb1f8b7b7.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-21 20:52:26'),
(55, 13, 0, '', 'Верстка@|;Верстка@|;Make up@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;<p>Мы уверены, что сотрудничество со студиями &laquo;FLEX-WEB&raquo; - это 100% успех</p>@|;<p>We are confident that cooperation with the FLEX-WEB studio is 100% successful</p>@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/55\\/img\\/55-594ad66de7753.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-23 16:34:54'),
(56, 13, 0, '', 'Програмування@|;Программирование@|;Programming@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;<p>Мы уверены, что сотрудничество со студиями &laquo;FLEX-WEB&raquo; - это 100% успех</p>@|;<p>We are confident that cooperation with the FLEX-WEB studio is 100% successful</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/56\\/img\\/56-594adb600607a.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-21 20:47:28'),
(57, 13, 0, '', 'Хостинг@|;Хостинг@|;Hosting@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;<p>Мы уверены, что сотрудничество со студиями &laquo;FLEX-WEB&raquo; - это 100% успех</p>@|;<p>We are confident that cooperation with the FLEX-WEB studio is 100% successful</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/55\\/img\\/55-594ad66de7753.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-21 20:49:14'),
(58, 16, 0, '', 'Став доступний TypeScript 2.3@|;Стал доступен TypeScript 2.3@|;TypeScript 2.3 has become available@|;', '<p>Зовсім недавно була представлена нова версія TypeScript.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.</p>@|;<p>A new version of TypeScript was recently introduced.</p>@|;', '<p>Зовсім недавно була представлена ​​нова версія TypeScript. TypeScript - це надбудова над JavaScript, яка привносить статичні типи і надійні інструменти. Вона допомагає уникнути багатьох багів, з яким люди часто стикаються при роботі з JS. І в цій статті ми розглянемо нововведення останнього оновлення.</p>\r\n\r\n<p>Щоб почати використовувати найостаннішу версію, досить просто отримати її через NuGet або скористатися наступною командою npm:</p>\r\n\r\n<p>1<br />\r\nnpm install -g typescript<br />\r\nА тепер поговоримо про зміни.</p>\r\n\r\n<p>Перевірка типів в JavaScript-файлах за допомогою // @ ts-check і -checkJs<br />\r\nНовий режим перевірки використовує коментарі для визначення типів при звичайному оголошенні в JavaScript. Як і в TypeScript, ці анотації є необов&#39;язковими. В цьому режимі код залишається робочим і немає необхідності проводити над ним будь-які додаткові трансформації.</p>\r\n\r\n<p>Для перевірки треба додати в файл // @ ts-check і запустити команду tsc для тієї ж папки, в якій знаходиться ваш файл.</p>\r\n\r\n<p>Також є ще 2 види коментарів:</p>\r\n\r\n<p>// @ ts-nocheck для відключення перевірки файлу, якщо -checkJs включений.<br />\r\n// @ ts-ignore для ігнорування помилок на наступному рядку.<br />\r\nПідтримка плагінів для мовного сервера<br />\r\nПісля спільної роботи з командою Angular в новій версії з&#39;явиться API мовного сервера. API дозволить плагинам поліпшити роботу з вже наявним редактором. Це означає, що тепер ви можете отримати покращений досвід редагування для різних навантажень.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.&nbsp;<a href="https://tproger.ru/translations/es5-es6-or-typescript/" rel="noopener noreferrer" target="_blank">TypeScript</a>&nbsp;&mdash; это надстройка над JavaScript, которая привносит статические типы и&nbsp;надежные инструменты. Она помогает избежать многих багов, с&nbsp;которым люди часто сталкиваются при работе с&nbsp;JS. И&nbsp;в&nbsp;этой статье мы&nbsp;рассмотрим нововведения последнего обновления.&nbsp;</p>\r\n\r\n<p>Чтобы начать использовать самую последнюю версию, достаточно просто получить её&nbsp;через&nbsp;<a href="https://www.nuget.org/packages/Microsoft.TypeScript.MSBuild/2.3.1" rel="noopener noreferrer" target="_blank">NuGet</a>&nbsp;либо воспользоваться следующей командой npm:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>npm install -g typescript</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>А&nbsp;теперь поговорим об&nbsp;изменениях.</p>\r\n\r\n<h3>Проверка типов в&nbsp;JavaScript-файлах с&nbsp;помощью&nbsp;<tt>// @ts-check</tt>&nbsp;и&nbsp;<tt>&ndash;checkJs</tt></h3>\r\n\r\n<p>Новый режим проверки&nbsp;<a href="https://github.com/Microsoft/TypeScript/wiki/JSDoc-support-in-JavaScript" rel="noopener noreferrer" target="_blank">использует комментарии</a>&nbsp;для определения типов при обычном объявлении в&nbsp;JavaScript. Как и&nbsp;в&nbsp;TypeScript, эти аннотации являются необязательными. В&nbsp;этом режиме код остается рабочим и&nbsp;нет необходимости производить над ним какие-либо дополнительные трансформации.</p>\r\n\r\n<p>Для проверки надо добавить в&nbsp;файл&nbsp;<code>// @ts-check</code>&nbsp;и&nbsp;запустить команду&nbsp;<code>tsc</code>&nbsp;для той&nbsp;же папки, в&nbsp;которой находится ваш файл.</p>\r\n\r\n<p>Также есть ещё 2&nbsp;вида комментариев:</p>\r\n\r\n<ol>\r\n	<li><code>// @ts-nocheck</code>&nbsp;для отключения проверки файла, если&nbsp;<code>&ndash;checkJs</code>&nbsp;включен.</li>\r\n	<li><code>// @ts-ignore</code>&nbsp;для игнорирования ошибок на&nbsp;следующей строке.</li>\r\n</ol>\r\n\r\n<h3>Поддержка плагинов для языкового сервера</h3>\r\n\r\n<p>После совместной работы с&nbsp;командой Angular в&nbsp;новой версии появится API языкового сервера. API позволит плагинам улучшить работу с&nbsp;уже имеющимся редактором. Это значит, что теперь вы&nbsp;можете получить улучшенный опыт редактирования для разных нагрузок.</p>@|;<p>A new version of TypeScript was recently introduced. TypeScript is an add-on over JavaScript that introduces static types and reliable tools. It helps to avoid many bugs that people often encounter when working with JS. And in this article, we&#39;ll look at the innovations of the latest update.</p>\r\n\r\n<p>To start using the latest version, simply get it through NuGet or use the following npm command:</p>\r\n\r\n<p>1<br />\r\nNpm install -g typescript<br />\r\nAnd now let&#39;s talk about the changes.</p>\r\n\r\n<p>Type checking in JavaScript files using // @ ts-check and -checkJs<br />\r\nThe new validation mode uses comments to define types with a normal JavaScript declaration. As with TypeScript, these annotations are optional. In this mode, the code remains working and there is no need to perform any additional transformations over it.</p>\r\n\r\n<p>For verification, add the file @ @ ts-check and run the tsc command for the same folder as your file.</p>\r\n\r\n<p>There are also 2 kinds of comments:</p>\r\n\r\n<p>// @ ts-nocheck to disable the file check if -checkJs is enabled.<br />\r\n// @ ts-ignore to ignore errors on the next line.<br />\r\nSupport for plug-ins for the language server<br />\r\nAfter working together with the Angular team, the language server API will appear in the new version. API allows plugins to improve their work with an existing editor. This means that now you can get an improved editing experience for different loads.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043d\\u043e\\u0432\\u0438\\u043d\\u0438":"upload\\/articles\\/58\\/img\\/58-594ba329b3dcb.jpg"}', '', '', '', 0, '2017-06-19 21:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 10:59:53', '2017-06-22 10:59:53'),
(59, 17, 0, '', 'Premium club@|;Premium club@|;Premium club@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/59\\/img\\/59-594bb7a75581a.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442@|;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442@|;Corporate site@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 12:27:19', '2017-06-22 13:28:29'),
(60, 17, 0, '', 'Denfish@|;Denfish@|;Denfish@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/60\\/img\\/60-594bc4b1176c6.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d@|;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d@|;Online shop@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 13:22:57', '2017-06-22 13:29:06'),
(61, 19, 0, '', 'Клієнт 1@|;Клієнт 1@|;Клієнт 1@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/61\\/img\\/61-594bd13e9a4db.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:16:30', '2017-06-22 14:16:30'),
(62, 19, 0, '', 'Клієнт 2@|;Клієнт 2@|;Клієнт 2@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/62\\/img\\/62-594bd156804bc.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:16:54', '2017-06-22 14:16:54'),
(63, 19, 0, '', 'Клієнт 3@|;Клієнт 3@|;Клієнт 3@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/63\\/img\\/63-594bd17043609.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:17:20', '2017-06-22 14:17:20'),
(64, 19, 0, '', 'Клієнт 4@|;Клієнт 4@|;Клієнт 4@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/64\\/img\\/64-594bd19b27bad.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:18:03', '2017-06-22 14:18:03'),
(65, 20, 0, '', 'Відгук від Арт-центру@|;Отзыв от Арт-центра@|;Reviews from Art-center@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;Флекс-WEB&raquo; - це 100% успіх Вашого бізнесу. Замовивши у компанії розробку нашого інтернет-магазину, ми не пошкодували. Нам зробили відмінний інтернет-магазин - проста і зрозуміла адмін. система, і лаконічний, стильний дизайн. Який чудово відображає суть нашої компанії. Дуже сподобалося, що всі співробітники компанії - це, перш за все, індивідуальні ...</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;ФЛЕКс-WEB&raquo; - это 100% успех Вашего бизнеса. Заказав у компании разработку нашего интернет-магазина, мы не пожалели. Нам сделали отличный интернет-магазин &ndash; простая и понятная админ. система, и лаконичный, стильный дизайн. Который превосходно отображает суть нашей компании. Очень понравилось, что все сотрудники компании &ndash; это, прежде всего, индивидуальны...</p>@|;<p>We are confident that cooperation with the studio &quot;Fleks-WEB&quot; is 100% success of your business. Ordering from the company the development of our online store, we did not regret. We made an excellent online store - a simple and understandable administrator. System, and laconic, stylish design. Which excellently reflects the essence of our company. I liked very much that all the employees of the company are, first of all, individual ...</p>@|;', '@|;@|;@|;', '{"\\u0406\\u043c''\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u042f\\u0440\\u043e\\u0441\\u043b\\u0430\\u0432","\\u041f\\u043e\\u0441\\u0430\\u0434\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440 \\"\\u0410\\u0440\\u0442-\\u0446\\u0435\\u043d\\u0442\\u0440\\"","\\u0424\\u043e\\u0442\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/65\\/img\\/65-594d2d73a2b24.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-23 15:02:11', '2017-06-23 15:02:11'),
(66, 20, 0, '', 'Відгук від Арт-центру@|;Отзыв от Арт-центра@|;Reviews from Art-center@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;Флекс-WEB&raquo; - це 100% успіх Вашого бізнесу. Замовивши у компанії розробку нашого інтернет-магазину, ми не пошкодували. Нам зробили відмінний інтернет-магазин - проста і зрозуміла адмін. система, і лаконічний, стильний дизайн. Який чудово відображає суть нашої компанії. Дуже сподобалося, що всі співробітники компанії - це, перш за все, індивідуальні ...</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;ФЛЕКс-WEB&raquo; - это 100% успех Вашего бизнеса. Заказав у компании разработку нашего интернет-магазина, мы не пожалели. Нам сделали отличный интернет-магазин &ndash; простая и понятная админ. система, и лаконичный, стильный дизайн. Который превосходно отображает суть нашей компании. Очень понравилось, что все сотрудники компании &ndash; это, прежде всего, индивидуальны...</p>@|;<p>We are confident that cooperation with the studio &quot;Fleks-WEB&quot; is 100% success of your business. Ordering from the company the development of our online store, we did not regret. We made an excellent online store - a simple and understandable administrator. System, and laconic, stylish design. Which excellently reflects the essence of our company. I liked very much that all the employees of the company are, first of all, individual ...</p>@|;', '@|;@|;@|;', '{"\\u0406\\u043c''\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0413\\u0435\\u043d\\u0430\\u0434\\u0456\\u0439","\\u041f\\u043e\\u0441\\u0430\\u0434\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440 \\"\\u0414\\u041a-\\u0413\\u043b\\u043e\\u0431\\u0443\\u0441\\"","\\u0424\\u043e\\u0442\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/66\\/img\\/66-594d2e4b94399.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-23 15:02:11', '2017-06-23 15:05:47'),
(67, 20, 0, '', 'Відгук від Арт-центру@|;Отзыв от Арт-центра@|;Reviews from Art-center@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;Флекс-WEB&raquo; - це 100% успіх Вашого бізнесу. Замовивши у компанії розробку нашого інтернет-магазину, ми не пошкодували. Нам зробили відмінний інтернет-магазин - проста і зрозуміла адмін. система, і лаконічний, стильний дизайн. Який чудово відображає суть нашої компанії. Дуже сподобалося, що всі співробітники компанії - це, перш за все, індивідуальні ...</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;ФЛЕКс-WEB&raquo; - это 100% успех Вашего бизнеса. Заказав у компании разработку нашего интернет-магазина, мы не пожалели. Нам сделали отличный интернет-магазин &ndash; простая и понятная админ. система, и лаконичный, стильный дизайн. Который превосходно отображает суть нашей компании. Очень понравилось, что все сотрудники компании &ndash; это, прежде всего, индивидуальны...</p>@|;<p>We are confident that cooperation with the studio &quot;Fleks-WEB&quot; is 100% success of your business. Ordering from the company the development of our online store, we did not regret. We made an excellent online store - a simple and understandable administrator. System, and laconic, stylish design. Which excellently reflects the essence of our company. I liked very much that all the employees of the company are, first of all, individual ...</p>@|;', '@|;@|;@|;', '{"\\u0406\\u043c''\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0406\\u0433\\u043e\\u0440","\\u041f\\u043e\\u0441\\u0430\\u0434\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440 \\"\\u0425\\u0430\\u0443\\u0437-\\u041c\\u0430\\u0444\\u0456\\u044f\\"","\\u0424\\u043e\\u0442\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/67\\/img\\/67-594d2ee5c70a0.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-23 15:02:11', '2017-06-23 15:08:21'),
(68, 16, 0, '', 'Став доступний TypeScript 2.4@|;Стал доступен TypeScript 2.3@|;TypeScript 2.3 has become available@|;', '<p>Зовсім недавно була представлена нова версія TypeScript.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.</p>@|;<p>A new version of TypeScript was recently introduced.</p>@|;', '<p>!!!Зовсім недавно була представлена ​​нова версія TypeScript. TypeScript - це надбудова над JavaScript, яка привносить статичні типи і надійні інструменти. Вона допомагає уникнути багатьох багів, з яким люди часто стикаються при роботі з JS. І в цій статті ми розглянемо нововведення останнього оновлення.</p>\r\n\r\n<p>Щоб почати використовувати найостаннішу версію, досить просто отримати її через NuGet або скористатися наступною командою npm:</p>\r\n\r\n<p>1<br />\r\nnpm install -g typescript<br />\r\nА тепер поговоримо про зміни.</p>\r\n\r\n<p>Перевірка типів в JavaScript-файлах за допомогою // @ ts-check і -checkJs<br />\r\nНовий режим перевірки використовує коментарі для визначення типів при звичайному оголошенні в JavaScript. Як і в TypeScript, ці анотації є необов&#39;язковими. В цьому режимі код залишається робочим і немає необхідності проводити над ним будь-які додаткові трансформації.</p>\r\n\r\n<p>Для перевірки треба додати в файл // @ ts-check і запустити команду tsc для тієї ж папки, в якій знаходиться ваш файл.</p>\r\n\r\n<p>Також є ще 2 види коментарів:</p>\r\n\r\n<p>// @ ts-nocheck для відключення перевірки файлу, якщо -checkJs включений.<br />\r\n// @ ts-ignore для ігнорування помилок на наступному рядку.<br />\r\nПідтримка плагінів для мовного сервера<br />\r\nПісля спільної роботи з командою Angular в новій версії з&#39;явиться API мовного сервера. API дозволить плагинам поліпшити роботу з вже наявним редактором. Це означає, що тепер ви можете отримати покращений досвід редагування для різних навантажень.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.&nbsp;<a href="https://tproger.ru/translations/es5-es6-or-typescript/" rel="noopener noreferrer" target="_blank">TypeScript</a>&nbsp;&mdash; это надстройка над JavaScript, которая привносит статические типы и&nbsp;надежные инструменты. Она помогает избежать многих багов, с&nbsp;которым люди часто сталкиваются при работе с&nbsp;JS. И&nbsp;в&nbsp;этой статье мы&nbsp;рассмотрим нововведения последнего обновления.&nbsp;</p>\r\n\r\n<p>Чтобы начать использовать самую последнюю версию, достаточно просто получить её&nbsp;через&nbsp;<a href="https://www.nuget.org/packages/Microsoft.TypeScript.MSBuild/2.3.1" rel="noopener noreferrer" target="_blank">NuGet</a>&nbsp;либо воспользоваться следующей командой npm:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>npm install -g typescript</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>А&nbsp;теперь поговорим об&nbsp;изменениях.</p>\r\n\r\n<h3>Проверка типов в&nbsp;JavaScript-файлах с&nbsp;помощью&nbsp;<tt>// @ts-check</tt>&nbsp;и&nbsp;<tt>&ndash;checkJs</tt></h3>\r\n\r\n<p>Новый режим проверки&nbsp;<a href="https://github.com/Microsoft/TypeScript/wiki/JSDoc-support-in-JavaScript" rel="noopener noreferrer" target="_blank">использует комментарии</a>&nbsp;для определения типов при обычном объявлении в&nbsp;JavaScript. Как и&nbsp;в&nbsp;TypeScript, эти аннотации являются необязательными. В&nbsp;этом режиме код остается рабочим и&nbsp;нет необходимости производить над ним какие-либо дополнительные трансформации.</p>\r\n\r\n<p>Для проверки надо добавить в&nbsp;файл&nbsp;<code>// @ts-check</code>&nbsp;и&nbsp;запустить команду&nbsp;<code>tsc</code>&nbsp;для той&nbsp;же папки, в&nbsp;которой находится ваш файл.</p>\r\n\r\n<p>Также есть ещё 2&nbsp;вида комментариев:</p>\r\n\r\n<ol>\r\n	<li><code>// @ts-nocheck</code>&nbsp;для отключения проверки файла, если&nbsp;<code>&ndash;checkJs</code>&nbsp;включен.</li>\r\n	<li><code>// @ts-ignore</code>&nbsp;для игнорирования ошибок на&nbsp;следующей строке.</li>\r\n</ol>\r\n\r\n<h3>Поддержка плагинов для языкового сервера</h3>\r\n\r\n<p>После совместной работы с&nbsp;командой Angular в&nbsp;новой версии появится API языкового сервера. API позволит плагинам улучшить работу с&nbsp;уже имеющимся редактором. Это значит, что теперь вы&nbsp;можете получить улучшенный опыт редактирования для разных нагрузок.</p>@|;<p>A new version of TypeScript was recently introduced. TypeScript is an add-on over JavaScript that introduces static types and reliable tools. It helps to avoid many bugs that people often encounter when working with JS. And in this article, we&#39;ll look at the innovations of the latest update.</p>\r\n\r\n<p>To start using the latest version, simply get it through NuGet or use the following npm command:</p>\r\n\r\n<p>1<br />\r\nNpm install -g typescript<br />\r\nAnd now let&#39;s talk about the changes.</p>\r\n\r\n<p>Type checking in JavaScript files using // @ ts-check and -checkJs<br />\r\nThe new validation mode uses comments to define types with a normal JavaScript declaration. As with TypeScript, these annotations are optional. In this mode, the code remains working and there is no need to perform any additional transformations over it.</p>\r\n\r\n<p>For verification, add the file @ @ ts-check and run the tsc command for the same folder as your file.</p>\r\n\r\n<p>There are also 2 kinds of comments:</p>\r\n\r\n<p>// @ ts-nocheck to disable the file check if -checkJs is enabled.<br />\r\n// @ ts-ignore to ignore errors on the next line.<br />\r\nSupport for plug-ins for the language server<br />\r\nAfter working together with the Angular team, the language server API will appear in the new version. API allows plugins to improve their work with an existing editor. This means that now you can get an improved editing experience for different loads.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043d\\u043e\\u0432\\u0438\\u043d\\u0438":"upload\\/articles\\/68\\/img\\/68-594d84fb2ce4b.jpg"}', '', '[]', '', 0, '2017-06-19 21:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 10:59:53', '2017-06-23 21:15:39');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(13, 0, 0, 'services', 'Послуги@|;Услуги@|;Services@|;', '', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; принесе вам успіх</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;FLEX-WEB&raquo; принесет вам успех</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; will bring you success</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","gallery","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка послуги":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, 'FLEX@|;@|;@|;', 'FLEX - create studio@|;@|;@|;', 'flex-web@|;@|;@|;', 9, '2017-05-29 12:29:40', '2017-06-23 21:31:32'),
(14, 0, 0, 'contact', 'Контакти@|;Contacts@|;', '', '@|;@|;', '@|;@|;', '', '{"base":["title"],"attributes":{"Фон сторінки":{"type":"files","lang_active":false,"active":false}}}', '1970-01-01 01:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:31:32', '2017-05-29 12:31:32'),
(15, 0, 0, 'social', 'Соціальні мережі@|;Соціальні мережі@|;Social networks@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","active"],"attributes":{"Ссилка":{"type":"input","lang_active":false,"active":false},"Иконка":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 4, '2017-05-29 12:33:05', '2017-06-23 14:55:48'),
(16, 0, 0, 'news', 'Новини@|;Новости@|;News@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","date","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка новини":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 8, '2017-06-10 19:57:14', '2017-06-23 16:22:32'),
(17, 0, 0, 'portfolio', 'Портфоліо@|;Портфолио@|;Portfolio@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","gallery","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Головна картинка":{"type":"files","lang_active":false,"active":false},"Відношення до категорії сайту":{"type":"input","lang_active":true,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 7, '2017-06-10 20:01:09', '2017-06-23 14:54:21'),
(18, 0, 0, 'slider', 'Слайдер@|;Слайдер@|;Slider@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Слайд":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 10, '2017-06-10 21:48:46', '2017-06-12 13:20:26'),
(19, 0, 0, 'clients', 'Наші клієнти@|;Наши клиенты@|;Our clients@|;', '', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх Вашого бізнесу.</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;FLEX-WEB&raquo; - это 100% успех Вашего бизнеса.</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; is 100% success of your business.</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","priority","active"],"attributes":{"Картинка клієнта":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 5, '2017-06-22 14:02:20', '2017-06-23 14:55:20'),
(20, 0, 0, 'reviews', 'Відгуки@|;Отзывы@|;Reviews@|;', '', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх Вашого бізнесу.</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;FLEX-WEB&raquo; - это 100% успех Вашего бизнеса.</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; is 100% success of your business.</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Фото клієнта":{"type":"files","lang_active":false,"active":false},"Ім''я клієнта":{"type":"input","lang_active":false,"active":false},"Посада клієнта":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 6, '2017-06-23 14:51:50', '2017-06-23 14:54:51'),
(21, 0, 0, 'main', 'Головна сторінка@|;Главная страница@|;Main@|;', '', '@|;@|;@|;', '@|;@|;@|;', '', '{"base":[],"attributes":{}}', '1970-01-01 01:00:00', 1, 'Flex-web@|;@|;@|;', 'Flex-web studio@|;@|;@|;', 'flexweb@|;@|;@|;', 0, '2017-06-23 21:38:40', '2017-06-23 21:38:40');

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
(1, 'config.email', 'Пошта для отримання повідомлень', 'info@flexweb.pro', '0000-00-00 00:00:00', '2017-06-23 20:14:57', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `texts`
--

INSERT INTO `texts` (`id`, `page_id`, `name`, `type`, `title`, `description`, `priority`, `lang_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'address', 'input', 'Адрес', 'м. Луцьк, вул. Даргомижського, 7/5@|;г. Луцк, ул. Даргомижского, 7/5@|;Lutsk, Dargomyzhsky str 7/5@|;', 0, 1, '2017-04-21 15:09:24', '2017-06-21 13:56:53', NULL),
(2, 0, 'telephone', 'input', 'Телефон', '‎+38 (073) 555-94-51', 0, 0, '2017-04-21 15:11:31', '2017-06-23 17:45:25', NULL),
(6, 0, 'email', 'input', 'Email', 'info@flexweb.pro', 0, 0, '2017-05-29 12:02:40', '2017-06-21 13:38:22', NULL),
(7, 0, 'slogan', 'textarea', 'Слоган', 'Найкраще, що ми можемо зробити - Це створювати веб-сайти!@|;Лучшее, что мы можем сделать — Это создавать веб-сайты!@|;The best thing we can do is create websites!@|;', 0, 1, '2017-06-22 13:50:39', '2017-06-22 13:50:39', NULL),
(8, 0, 'maps', 'input', 'Карта доїзду', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2524.6202586442914!2d25.314368916117374!3d50.74553167951707!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x472599e987df09ad%3A0x21e372a1218a499c!2z0LLRg9C70LjRhtGPINCU0LDRgNCz0L7QvNC40LbRgdGM0LrQvtCz0L4sIDcsINCb0YPRhtGM0LosINCS0L7Qu9C40L3RgdGM0LrQsCDQvtCx0LvQsNGB0YLRjA!5e0!3m2!1suk!2sua!4v1497521283932', 0, 0, '2017-06-23 17:19:40', '2017-06-23 17:19:40', NULL),
(9, 0, 'telephone_two', 'input', 'Телефон 2', '+38 (098) 555-94-51', 0, 0, '2017-06-23 17:25:14', '2017-06-23 17:45:47', NULL);

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
