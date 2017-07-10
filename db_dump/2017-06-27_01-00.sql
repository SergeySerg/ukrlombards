-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2017 г., 00:55
-- Версия сервера: 5.5.50
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `flexweb_db`
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `article_id`, `name`, `title`, `short_description`, `description`, `attributes`, `img`, `imgs`, `files`, `priority`, `date`, `meta_title`, `meta_description`, `meta_keywords`, `active`, `created_at`, `updated_at`) VALUES
(49, 15, 0, '', 'Facebook@|;Facebook@|;Facebook@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.facebook.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-facebook-official\\" aria-hidden=\\"true\\"><\\/i>"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-05-29 12:57:22', '2017-06-21 14:44:55'),
(50, 15, 0, '', 'Instagram@|;Instagram@|;Instagram@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/www.instagram.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-instagram\\" aria-hidden=\\"true\\"><\\/i>"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-05-29 12:58:26', '2017-06-21 14:34:14'),
(51, 15, 0, '', 'Twitter@|;Twitter@|;Twitter@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u0421\\u0441\\u0438\\u043b\\u043a\\u0430":"https:\\/\\/twitter.com\\/","\\u0418\\u043a\\u043e\\u043d\\u043a\\u0430":"<i class=\\"fa fa-twitter\\" aria-hidden=\\"true\\"><\\/i>"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 14:35:35', '2017-06-21 14:35:35'),
(52, 18, 0, '', 'Веб-дизайн@|;Веб-дизайн@|;Web-design@|;', '<p>Ми знаємо, як ефективно презентувати&nbsp;Ваш бренд в інтернеті!</p>@|;<p>Мы знаем, как эффективно презентовать ваш бренд в интернете!</p>@|;<p>We know how to effectively present your brand on the Internet!</p>@|;', '<p>Побудувати ефективний бізнес без присутності бренда в інтернеті сьогодні неможливо, про це знає кожен. Але як виділитись серед десятків тисяч одноманітних ресурсів? Відповідь проста&nbsp;- неперевершений&nbsp;веб-дизайн! Співробітники&nbsp;студії &laquo;FLEX-WEB&raquo; знають, якою&nbsp;повинна&nbsp;бути розробка дизайну сайту, щоб залучити максимальну аудиторію.</p>@|;<p>Построить эффективный бизнес без присутствия бренда в интернете сегодня невозможно, об этом знает каждый. Но как выделиться среди десятков тысяч однообразных ресурсов? Ответ простой &ndash; красивый веб дизайн! Сотрудники студии &laquo;FLEX-WEB&raquo; знают, какой должна быть разработка дизайна сайта, чтобы привлечь максимальную аудиторию.</p>@|;<p>To build an effective business without the presence of a brand on the Internet today is impossible, everyone knows about it. But how to stand out among tens of thousands of monotonous resources? The answer is simple - beautiful web design! The employees of FLEX-WEB studio know what should be the design of the site to attract the maximum audience.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/52\\/img\\/52-594ac9ffcd15a.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-26 13:43:39'),
(53, 18, 0, '', 'Хостинг@|;Хостинг@|;Hosting@|;', '<p>Вибір хостингу - це досить тонка справа, яка&nbsp;вимагає врахування як технічних, так і фінансових умов.</p>@|;<p>Выбор хостера &ndash; это достаточно тонкое дело, которое требует взвешивания как технических, так финансовых условий.</p>@|;<p>Choosing a hoster is a rather delicate matter that requires weighing both technical and financial conditions.</p>@|;', '<p>Для того, щоб замовити розміщення сайту в мережі Інтернет і щоб ресурс при цьому функціонував безперебійно, рекомендуємо звернутися в студію &laquo;Flex-Web&raquo;. Професіонали з нашої команди займуться для вас розробкою та розміщенням сайту на хостингу. У такому випадку ви можете бути абсолютно впевнені в тому, що сайт розміщений у мережі абсолютно правильно і з дотриманням всіх технічних правил і норм.</p>@|;<p>Для того, чтобы заказать размещение сайта в сети интернет и чтобы ресурс при этом функционировал бесперебойно, рекомендуем обратиться в студию&nbsp;&laquo;Flex-Web&raquo;. Профессионалы с нашей команды займутся для вас разработкой и размещением сайта на хостинге. В таком случае вы можете быть абсолютно уверенными в том, что сайт размещен в сети абсолютно правильно и с соблюдением всех технических правил и норм.</p>@|;<p>In order to order the placement of the site in the Internet and to ensure that the resource is functioning smoothly, we recommend that you contact the Flex-Web studio. Professionals from our team will take care of you for the development and hosting of the site hosting. In this case, you can be absolutely sure that the site is located in the network absolutely correct and with observance of all technical rules and norms.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/53\\/img\\/53-594aca885d134.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-26 15:11:03'),
(54, 18, 0, '', 'Верстка@|;Верстка@|;Make up@|;', '<p>Верстка - це процес &quot;оживлення&quot; макету сайту, який відповідає за взаємодію з користувачем.</p>@|;<p>Верстка представляет собой &quot;оживление&quot; макета сайта и отвечает за взаимодействие с пользователем.</p>@|;<p>Layout is a &quot;revival&quot; of the site layout and is responsible for interacting with the user.</p>@|;', '<p>Фахівці студії &laquo;Flex-Web&raquo; пропонують свої послуги з виконання верстки інтернет-проектів будь-якого рівня складності. Важливо відзначити, що верстка сайту, ціна за яку залежить також від типу CMS, є кросбраузерною: користувач повинен однаково вільно використовувати ресурс і на Opera, і при відвідуванні через Google Chrome або Firefox.</p>@|;<p>Специалисты студии &laquo;Flex-Web&raquo; предлагают свои услуги по выполнению вёрстки интернет-проектов любого уровня сложности. Важно отметить, что верстка сайта цена за которую зависит также от типа CMS, является кроссбраузерной: пользователь должен одинаково свободно использовать ресурс и на Opera, и при посещении через Google Chrome или Firefox.</p>@|;<p>Specialists of the studio Flex-Web offer their services in the implementation of the layout of Internet projects of any complexity. It is important to note that the layout of the site for which depends also on the type of CMS is cross-browser: the user must equally freely use the resource on Opera, and when visiting through Google Chrome or Firefox.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/54\\/img\\/54-594acb1f8b7b7.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 19:33:19', '2017-06-26 14:41:43'),
(55, 13, 0, '', 'Верстка@|;Верстка@|;Implementation@|;', '<p>Виконання верстки інтернет-проектів будь-якого рівня складності</p>@|;<p>Выполнение&nbsp;вёрстки интернет-проектов любого уровня сложности</p>@|;<p>Implementation of the layout of Internet projects of any complexity level</p>@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх.&nbsp;Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх</p>@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/55\\/img\\/55-594ad66de7753.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-26 19:29:14'),
(56, 13, 0, '', 'Доопрацювання@|;Доработка@|;Finalization@|;', '<p>Удосконалення і модернізація інтернет-проектів за вигідними умовами</p>@|;<p>Усовершенствование и модернизация интернет-проектов по выгодным условиям</p>@|;<p>Improvement and modernization of Internet projects at favorable conditions</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/56\\/img\\/56-594adb600607a.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-26 19:37:03'),
(57, 13, 0, '', 'Хостинг@|;Хостинг@|;Hosting@|;', '<p>Розміщення і настройка сайту на будь-якому хостингу в короткі терміни</p>@|;<p>Размещение и настройка&nbsp;сайта на любом хостинге в короткие сроки</p>@|;<p>Placement and configuration of the site on any hosting in a short time</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/57\\/img\\/57-59510b771c784.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-21 20:26:21', '2017-06-26 19:50:48'),
(58, 16, 0, '', 'Став доступний TypeScript 2.3@|;Стал доступен TypeScript 2.3@|;TypeScript 2.3 has become available@|;', '<p>Зовсім недавно була представлена нова версія TypeScript.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.</p>@|;<p>A new version of TypeScript was recently introduced.</p>@|;', '<p>Зовсім недавно була представлена ​​нова версія TypeScript. TypeScript - це надбудова над JavaScript, яка привносить статичні типи і надійні інструменти. Вона допомагає уникнути багатьох багів, з яким люди часто стикаються при роботі з JS. І в цій статті ми розглянемо нововведення останнього оновлення.</p>\r\n\r\n<p>Щоб почати використовувати найостаннішу версію, досить просто отримати її через NuGet або скористатися наступною командою npm:</p>\r\n\r\n<p>1<br />\r\nnpm install -g typescript<br />\r\nА тепер поговоримо про зміни.</p>\r\n\r\n<p>Перевірка типів в JavaScript-файлах за допомогою // @ ts-check і -checkJs<br />\r\nНовий режим перевірки використовує коментарі для визначення типів при звичайному оголошенні в JavaScript. Як і в TypeScript, ці анотації є необов&#39;язковими. В цьому режимі код залишається робочим і немає необхідності проводити над ним будь-які додаткові трансформації.</p>\r\n\r\n<p>Для перевірки треба додати в файл // @ ts-check і запустити команду tsc для тієї ж папки, в якій знаходиться ваш файл.</p>\r\n\r\n<p>Також є ще 2 види коментарів:</p>\r\n\r\n<p>// @ ts-nocheck для відключення перевірки файлу, якщо -checkJs включений.<br />\r\n// @ ts-ignore для ігнорування помилок на наступному рядку.<br />\r\nПідтримка плагінів для мовного сервера<br />\r\nПісля спільної роботи з командою Angular в новій версії з&#39;явиться API мовного сервера. API дозволить плагинам поліпшити роботу з вже наявним редактором. Це означає, що тепер ви можете отримати покращений досвід редагування для різних навантажень.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.&nbsp;<a href="https://tproger.ru/translations/es5-es6-or-typescript/" rel="noopener noreferrer" target="_blank">TypeScript</a>&nbsp;&mdash; это надстройка над JavaScript, которая привносит статические типы и&nbsp;надежные инструменты. Она помогает избежать многих багов, с&nbsp;которым люди часто сталкиваются при работе с&nbsp;JS. И&nbsp;в&nbsp;этой статье мы&nbsp;рассмотрим нововведения последнего обновления.&nbsp;</p>\r\n\r\n<p>Чтобы начать использовать самую последнюю версию, достаточно просто получить её&nbsp;через&nbsp;<a href="https://www.nuget.org/packages/Microsoft.TypeScript.MSBuild/2.3.1" rel="noopener noreferrer" target="_blank">NuGet</a>&nbsp;либо воспользоваться следующей командой npm:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>npm install -g typescript</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>А&nbsp;теперь поговорим об&nbsp;изменениях.</p>\r\n\r\n<h3>Проверка типов в&nbsp;JavaScript-файлах с&nbsp;помощью&nbsp;<tt>// @ts-check</tt>&nbsp;и&nbsp;<tt>&ndash;checkJs</tt></h3>\r\n\r\n<p>Новый режим проверки&nbsp;<a href="https://github.com/Microsoft/TypeScript/wiki/JSDoc-support-in-JavaScript" rel="noopener noreferrer" target="_blank">использует комментарии</a>&nbsp;для определения типов при обычном объявлении в&nbsp;JavaScript. Как и&nbsp;в&nbsp;TypeScript, эти аннотации являются необязательными. В&nbsp;этом режиме код остается рабочим и&nbsp;нет необходимости производить над ним какие-либо дополнительные трансформации.</p>\r\n\r\n<p>Для проверки надо добавить в&nbsp;файл&nbsp;<code>// @ts-check</code>&nbsp;и&nbsp;запустить команду&nbsp;<code>tsc</code>&nbsp;для той&nbsp;же папки, в&nbsp;которой находится ваш файл.</p>\r\n\r\n<p>Также есть ещё 2&nbsp;вида комментариев:</p>\r\n\r\n<ol>\r\n	<li><code>// @ts-nocheck</code>&nbsp;для отключения проверки файла, если&nbsp;<code>&ndash;checkJs</code>&nbsp;включен.</li>\r\n	<li><code>// @ts-ignore</code>&nbsp;для игнорирования ошибок на&nbsp;следующей строке.</li>\r\n</ol>\r\n\r\n<h3>Поддержка плагинов для языкового сервера</h3>\r\n\r\n<p>После совместной работы с&nbsp;командой Angular в&nbsp;новой версии появится API языкового сервера. API позволит плагинам улучшить работу с&nbsp;уже имеющимся редактором. Это значит, что теперь вы&nbsp;можете получить улучшенный опыт редактирования для разных нагрузок.</p>@|;<p>A new version of TypeScript was recently introduced. TypeScript is an add-on over JavaScript that introduces static types and reliable tools. It helps to avoid many bugs that people often encounter when working with JS. And in this article, we&#39;ll look at the innovations of the latest update.</p>\r\n\r\n<p>To start using the latest version, simply get it through NuGet or use the following npm command:</p>\r\n\r\n<p>1<br />\r\nNpm install -g typescript<br />\r\nAnd now let&#39;s talk about the changes.</p>\r\n\r\n<p>Type checking in JavaScript files using // @ ts-check and -checkJs<br />\r\nThe new validation mode uses comments to define types with a normal JavaScript declaration. As with TypeScript, these annotations are optional. In this mode, the code remains working and there is no need to perform any additional transformations over it.</p>\r\n\r\n<p>For verification, add the file @ @ ts-check and run the tsc command for the same folder as your file.</p>\r\n\r\n<p>There are also 2 kinds of comments:</p>\r\n\r\n<p>// @ ts-nocheck to disable the file check if -checkJs is enabled.<br />\r\n// @ ts-ignore to ignore errors on the next line.<br />\r\nSupport for plug-ins for the language server<br />\r\nAfter working together with the Angular team, the language server API will appear in the new version. API allows plugins to improve their work with an existing editor. This means that now you can get an improved editing experience for different loads.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043d\\u043e\\u0432\\u0438\\u043d\\u0438":"upload\\/articles\\/58\\/img\\/58-594ba329b3dcb.jpg"}', '', '', '', 0, '2017-06-19 21:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 10:59:53', '2017-06-22 10:59:53'),
(59, 17, 0, '', 'Premium club@|;Premium club@|;Premium club@|;', '<p>&laquo;Premium club&raquo; - комфортний готель у Карпатах. Пропонує відпочинок у затишному куточку України &ndash; курорті Яремче.</p>@|;<p>&laquo;Premium club&raquo; - комфортный отель в Карпатах. Предлагает отдых в уютном уголке Украины - курорте Яремче.</p>@|;<p>&quot;Premium club&quot; is a comfortable hotel in the Carpathians. Offers a rest in a cozy corner of Ukraine - the resort of Yaremche.</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/premium-cl.com\\/ua","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/59\\/img\\/59-59516f10c5246.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442@|;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442@|;Corporate site@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 12:27:19', '2017-06-26 20:56:54'),
(60, 17, 0, '', 'Bigfish@|;Bigfish@|;Bigfish@|;', '<p>Магазин пропонує широкий асортимент рибальських товарів провідних виробників Європи</p>@|;<p>Магазин предлагает широкий асортиментрибальських товаров ведущих производителей Европы</p>@|;<p>The store offers a wide assortment of materials for the goods of the leading manufacturers of Europe</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/bigfish.org.ua\\/","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/60\\/img\\/60-5951723dc8d94.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d@|;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d@|;Online shop@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 13:22:57', '2017-06-26 20:58:25'),
(61, 19, 0, '', 'Клієнт 1@|;Клієнт 1@|;Клієнт 1@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/61\\/img\\/61-594bd13e9a4db.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:16:30', '2017-06-22 14:16:30'),
(62, 19, 0, '', 'Клієнт 2@|;Клієнт 2@|;Клієнт 2@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/62\\/img\\/62-594bd156804bc.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:16:54', '2017-06-22 14:16:54'),
(63, 19, 0, '', 'Клієнт 3@|;Клієнт 3@|;Клієнт 3@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/63\\/img\\/63-594bd17043609.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:17:20', '2017-06-22 14:17:20'),
(64, 19, 0, '', 'Клієнт 4@|;Клієнт 4@|;Клієнт 4@|;', '@|;@|;@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/64\\/img\\/64-594bd19b27bad.png"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 14:18:03', '2017-06-22 14:18:03'),
(65, 20, 0, '', 'Відгук від Арт-центру@|;Отзыв от Арт-центра@|;Reviews from Art-center@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;Флекс-WEB&raquo; - це 100% успіх Вашого бізнесу. Замовивши у компанії розробку нашого інтернет-магазину, ми не пошкодували. Нам зробили відмінний інтернет-магазин - проста і зрозуміла адмін. система, і лаконічний, стильний дизайн. Який чудово відображає суть нашої компанії. Дуже сподобалося, що всі співробітники компанії - це, перш за все, індивідуальні ...</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;ФЛЕКс-WEB&raquo; - это 100% успех Вашего бизнеса. Заказав у компании разработку нашего интернет-магазина, мы не пожалели. Нам сделали отличный интернет-магазин &ndash; простая и понятная админ. система, и лаконичный, стильный дизайн. Который превосходно отображает суть нашей компании. Очень понравилось, что все сотрудники компании &ndash; это, прежде всего, индивидуальны...</p>@|;<p>We are confident that cooperation with the studio &quot;Fleks-WEB&quot; is 100% success of your business. Ordering from the company the development of our online store, we did not regret. We made an excellent online store - a simple and understandable administrator. System, and laconic, stylish design. Which excellently reflects the essence of our company. I liked very much that all the employees of the company are, first of all, individual ...</p>@|;', '@|;@|;@|;', '{"\\u0406\\u043c''\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u042f\\u0440\\u043e\\u0441\\u043b\\u0430\\u0432","\\u041f\\u043e\\u0441\\u0430\\u0434\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440 \\"\\u0410\\u0440\\u0442-\\u0446\\u0435\\u043d\\u0442\\u0440\\"","\\u0424\\u043e\\u0442\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/65\\/img\\/65-594d2d73a2b24.jpg"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-23 15:02:11', '2017-06-23 15:02:11'),
(66, 20, 0, '', 'Відгук від Арт-центру@|;Отзыв от Арт-центра@|;Reviews from Art-center@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;Флекс-WEB&raquo; - це 100% успіх Вашого бізнесу. Замовивши у компанії розробку нашого інтернет-магазину, ми не пошкодували. Нам зробили відмінний інтернет-магазин - проста і зрозуміла адмін. система, і лаконічний, стильний дизайн. Який чудово відображає суть нашої компанії. Дуже сподобалося, що всі співробітники компанії - це, перш за все, індивідуальні ...</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;ФЛЕКс-WEB&raquo; - это 100% успех Вашего бизнеса. Заказав у компании разработку нашего интернет-магазина, мы не пожалели. Нам сделали отличный интернет-магазин &ndash; простая и понятная админ. система, и лаконичный, стильный дизайн. Который превосходно отображает суть нашей компании. Очень понравилось, что все сотрудники компании &ndash; это, прежде всего, индивидуальны...</p>@|;<p>We are confident that cooperation with the studio &quot;Fleks-WEB&quot; is 100% success of your business. Ordering from the company the development of our online store, we did not regret. We made an excellent online store - a simple and understandable administrator. System, and laconic, stylish design. Which excellently reflects the essence of our company. I liked very much that all the employees of the company are, first of all, individual ...</p>@|;', '@|;@|;@|;', '{"\\u0406\\u043c''\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0413\\u0435\\u043d\\u0430\\u0434\\u0456\\u0439","\\u041f\\u043e\\u0441\\u0430\\u0434\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440 \\"\\u0414\\u041a-\\u0413\\u043b\\u043e\\u0431\\u0443\\u0441\\"","\\u0424\\u043e\\u0442\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/66\\/img\\/66-594d2e4b94399.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-23 15:02:11', '2017-06-23 15:05:47'),
(67, 20, 0, '', 'Відгук від Арт-центру@|;Отзыв от Арт-центра@|;Reviews from Art-center@|;', '<p>Ми впевнені, що співпраця зі студією &laquo;Флекс-WEB&raquo; - це 100% успіх Вашого бізнесу. Замовивши у компанії розробку нашого інтернет-магазину, ми не пошкодували. Нам зробили відмінний інтернет-магазин - проста і зрозуміла адмін. система, і лаконічний, стильний дизайн. Який чудово відображає суть нашої компанії. Дуже сподобалося, що всі співробітники компанії - це, перш за все, індивідуальні ...</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;ФЛЕКс-WEB&raquo; - это 100% успех Вашего бизнеса. Заказав у компании разработку нашего интернет-магазина, мы не пожалели. Нам сделали отличный интернет-магазин &ndash; простая и понятная админ. система, и лаконичный, стильный дизайн. Который превосходно отображает суть нашей компании. Очень понравилось, что все сотрудники компании &ndash; это, прежде всего, индивидуальны...</p>@|;<p>We are confident that cooperation with the studio &quot;Fleks-WEB&quot; is 100% success of your business. Ordering from the company the development of our online store, we did not regret. We made an excellent online store - a simple and understandable administrator. System, and laconic, stylish design. Which excellently reflects the essence of our company. I liked very much that all the employees of the company are, first of all, individual ...</p>@|;', '@|;@|;@|;', '{"\\u0406\\u043c''\\u044f \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0406\\u0433\\u043e\\u0440","\\u041f\\u043e\\u0441\\u0430\\u0434\\u0430 \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"\\u0414\\u0438\\u0440\\u0435\\u043a\\u0442\\u043e\\u0440 \\"\\u0425\\u0430\\u0443\\u0437-\\u041c\\u0430\\u0444\\u0456\\u044f\\"","\\u0424\\u043e\\u0442\\u043e \\u043a\\u043b\\u0456\\u0454\\u043d\\u0442\\u0430":"upload\\/articles\\/67\\/img\\/67-594d2ee5c70a0.jpg"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-23 15:02:11', '2017-06-23 15:08:21'),
(68, 16, 0, '', 'Став доступний TypeScript 2.4@|;Стал доступен TypeScript 2.3@|;TypeScript 2.3 has become available@|;', '<p>Зовсім недавно була представлена нова версія TypeScript.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.</p>@|;<p>A new version of TypeScript was recently introduced.</p>@|;', '<p>!!!Зовсім недавно була представлена ​​нова версія TypeScript. TypeScript - це надбудова над JavaScript, яка привносить статичні типи і надійні інструменти. Вона допомагає уникнути багатьох багів, з яким люди часто стикаються при роботі з JS. І в цій статті ми розглянемо нововведення останнього оновлення.</p>\r\n\r\n<p>Щоб почати використовувати найостаннішу версію, досить просто отримати її через NuGet або скористатися наступною командою npm:</p>\r\n\r\n<p>1<br />\r\nnpm install -g typescript<br />\r\nА тепер поговоримо про зміни.</p>\r\n\r\n<p>Перевірка типів в JavaScript-файлах за допомогою // @ ts-check і -checkJs<br />\r\nНовий режим перевірки використовує коментарі для визначення типів при звичайному оголошенні в JavaScript. Як і в TypeScript, ці анотації є необов&#39;язковими. В цьому режимі код залишається робочим і немає необхідності проводити над ним будь-які додаткові трансформації.</p>\r\n\r\n<p>Для перевірки треба додати в файл // @ ts-check і запустити команду tsc для тієї ж папки, в якій знаходиться ваш файл.</p>\r\n\r\n<p>Також є ще 2 види коментарів:</p>\r\n\r\n<p>// @ ts-nocheck для відключення перевірки файлу, якщо -checkJs включений.<br />\r\n// @ ts-ignore для ігнорування помилок на наступному рядку.<br />\r\nПідтримка плагінів для мовного сервера<br />\r\nПісля спільної роботи з командою Angular в новій версії з&#39;явиться API мовного сервера. API дозволить плагинам поліпшити роботу з вже наявним редактором. Це означає, що тепер ви можете отримати покращений досвід редагування для різних навантажень.</p>@|;<p>Совсем недавно была представлена новая версия TypeScript.&nbsp;<a href="https://tproger.ru/translations/es5-es6-or-typescript/" rel="noopener noreferrer" target="_blank">TypeScript</a>&nbsp;&mdash; это надстройка над JavaScript, которая привносит статические типы и&nbsp;надежные инструменты. Она помогает избежать многих багов, с&nbsp;которым люди часто сталкиваются при работе с&nbsp;JS. И&nbsp;в&nbsp;этой статье мы&nbsp;рассмотрим нововведения последнего обновления.&nbsp;</p>\r\n\r\n<p>Чтобы начать использовать самую последнюю версию, достаточно просто получить её&nbsp;через&nbsp;<a href="https://www.nuget.org/packages/Microsoft.TypeScript.MSBuild/2.3.1" rel="noopener noreferrer" target="_blank">NuGet</a>&nbsp;либо воспользоваться следующей командой npm:</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n			</td>\r\n			<td>\r\n			<p>npm install -g typescript</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>А&nbsp;теперь поговорим об&nbsp;изменениях.</p>\r\n\r\n<h3>Проверка типов в&nbsp;JavaScript-файлах с&nbsp;помощью&nbsp;<tt>// @ts-check</tt>&nbsp;и&nbsp;<tt>&ndash;checkJs</tt></h3>\r\n\r\n<p>Новый режим проверки&nbsp;<a href="https://github.com/Microsoft/TypeScript/wiki/JSDoc-support-in-JavaScript" rel="noopener noreferrer" target="_blank">использует комментарии</a>&nbsp;для определения типов при обычном объявлении в&nbsp;JavaScript. Как и&nbsp;в&nbsp;TypeScript, эти аннотации являются необязательными. В&nbsp;этом режиме код остается рабочим и&nbsp;нет необходимости производить над ним какие-либо дополнительные трансформации.</p>\r\n\r\n<p>Для проверки надо добавить в&nbsp;файл&nbsp;<code>// @ts-check</code>&nbsp;и&nbsp;запустить команду&nbsp;<code>tsc</code>&nbsp;для той&nbsp;же папки, в&nbsp;которой находится ваш файл.</p>\r\n\r\n<p>Также есть ещё 2&nbsp;вида комментариев:</p>\r\n\r\n<ol>\r\n	<li><code>// @ts-nocheck</code>&nbsp;для отключения проверки файла, если&nbsp;<code>&ndash;checkJs</code>&nbsp;включен.</li>\r\n	<li><code>// @ts-ignore</code>&nbsp;для игнорирования ошибок на&nbsp;следующей строке.</li>\r\n</ol>\r\n\r\n<h3>Поддержка плагинов для языкового сервера</h3>\r\n\r\n<p>После совместной работы с&nbsp;командой Angular в&nbsp;новой версии появится API языкового сервера. API позволит плагинам улучшить работу с&nbsp;уже имеющимся редактором. Это значит, что теперь вы&nbsp;можете получить улучшенный опыт редактирования для разных нагрузок.</p>@|;<p>A new version of TypeScript was recently introduced. TypeScript is an add-on over JavaScript that introduces static types and reliable tools. It helps to avoid many bugs that people often encounter when working with JS. And in this article, we&#39;ll look at the innovations of the latest update.</p>\r\n\r\n<p>To start using the latest version, simply get it through NuGet or use the following npm command:</p>\r\n\r\n<p>1<br />\r\nNpm install -g typescript<br />\r\nAnd now let&#39;s talk about the changes.</p>\r\n\r\n<p>Type checking in JavaScript files using // @ ts-check and -checkJs<br />\r\nThe new validation mode uses comments to define types with a normal JavaScript declaration. As with TypeScript, these annotations are optional. In this mode, the code remains working and there is no need to perform any additional transformations over it.</p>\r\n\r\n<p>For verification, add the file @ @ ts-check and run the tsc command for the same folder as your file.</p>\r\n\r\n<p>There are also 2 kinds of comments:</p>\r\n\r\n<p>// @ ts-nocheck to disable the file check if -checkJs is enabled.<br />\r\n// @ ts-ignore to ignore errors on the next line.<br />\r\nSupport for plug-ins for the language server<br />\r\nAfter working together with the Angular team, the language server API will appear in the new version. API allows plugins to improve their work with an existing editor. This means that now you can get an improved editing experience for different loads.</p>@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043d\\u043e\\u0432\\u0438\\u043d\\u0438":"upload\\/articles\\/68\\/img\\/68-594d84fb2ce4b.jpg"}', '', '[]', '', 0, '2017-06-19 21:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-22 10:59:53', '2017-06-23 21:15:39'),
(69, 18, 0, '', 'Доопрацювання@|;Доработка@|;Finalization@|;', '<p>Будь-який інтернет-ресурс з часом вимагає певного&nbsp;доопрацювання, щоб йти в ногу з часом.</p>@|;<p>Любой интернет-ресурс со временем требует определённой доработки, чтобы идти в ногу со временем.</p>@|;<p>Any Internet resource over time requires some refinement to keep pace with the times.</p>@|;', '<p>Додавання нової функціональності, оновлення дизайну, розширення можливостей існуючих розділів, нові модулі і т.п. - все це потрібно, щоб ресурс залишався в тренді, був зручним для користувачів і виконував свої функції. Студія &laquo;Flex-Web&raquo; пропонує послуги з удосконалення та модернізації інтернет-проектів за вигідними умовами!</p>@|;<p>Добавление новой функциональности, обновление дизайна, расширение возможностей существующих разделов, новые модули и т.п. &ndash; всё это требуется, чтобы ресурс оставался в тренде, был удобным для юзеров и выполнял свои функции. Студия &laquo;Flex-Web&raquo; предлагает услуги по усовершенствованию и модернизации интернет-проектов по выгодным условиям!</p>@|;<p>Adding new functionality, updating the design, expanding the capabilities of existing partitions, new modules, etc. - all this is required for the resource to remain in the trend, it was convenient for users and performed its functions. Studio &quot;Flex-Web&quot; offers services on improvement and modernization of Internet projects at favorable conditions!</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/69\\/img\\/69-5951256d32de1.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 13:20:37', '2017-06-26 15:17:01'),
(70, 18, 0, '', 'Просування@|;Продвижение@|;Promotion@|;', '<p>Ми перетворюємо сайт в самого продуктивного менеджера з продажу в історії Вашої компанії.</p>@|;<p>Мы превращаем сайт в самого продуктивного менеджера по продажам в истории Вашей компании.</p>@|;<p>We turn the site into the most productive sales manager in the history of your company.</p>@|;', '<p>В Інтернеті залучати клієнтів без розкрутки сайту можуть тільки пошукові системи. Якщо Ваш сайт не бере участі в пошуковому просуванні - клієнти просто не зможуть його знайти. Тобто, якщо Ви вже створили свій ресурс, тепер йому потрібна розкрутка. Наше завдання забезпечити Вашому ресурсу високі позиції в пошуковій видачі і направити на його сторінки потенційних покупців.</p>@|;<p>В Интернете привлекать клиентов без раскрутки сайта могут только поисковые системы. Если Ваш сайт не участвует в поисковом продвижении &ndash; клиенты просто не смогут его найти. То есть, если Вы уже создали свой ресурс, теперь ему нужна раскрутка. Наша задача&nbsp;обеспечить Вашему ресурсу высокие позиции в поисковой выдаче и направить на его страницы потенциальных покупателей.</p>@|;<p>Only the search engines can attract customers on the Internet without the promotion of the site. If your site does not participate in search engine promotion - customers simply will not be able to find it. That is, if you have already created your resource, now he needs a site promotion. Our task is to provide your resource with a high position in search results and send potential buyers to its pages.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/70\\/img\\/70-595125925a242.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 13:22:57', '2017-06-26 15:17:38'),
(71, 18, 0, '', 'Реконструкція@|;Реконструкция@|;Reconstruction@|;', '<p>Не відставайте в інтернеті, замовляйте реконструкцію сайту! Конкуренти не дрімають.</p>@|;<p>Не отставайте в интернете, заказывайте реконструкцию сайта! Конкуренты не дремлют.</p>@|;<p>Do not keep up on the Internet, order the reconstruction of the site! Competitors do not doze.</p>@|;', '<p>Якщо вашому ресурсу більше 3-5 років, вам може знадобитися така послуга. Для більш детального аудиту та оцінки актуальності стилю і функціоналу ресурсу ви можете звернутися до фахівців студії &laquo;Flex-Web&raquo;.Цілком ймовірно, що недавно з&#39;явився на інтернет-горизонті конкурент, який переманить&nbsp;ваших&nbsp;постійних клієнтів. Все тому, що сила в дизайні. Щоб не відставати і бути в тренді, рекомендуємо замовити реконструкцію сайту.</p>@|;<p>Если вашему ресурсу более 3-5 лет, вам может понадобиться такая услуга. Для более подробного аудита и оценки актуальности стиля и функционала ресурса вы можете обратиться к специалистам компании &laquo;Flex-Web&raquo;.Вполне вероятно, что недавно появившийся на интернет-горизонте конкурент сможет переманить ваших давних постоянных клиентов. Все потому, что сила в дизайне. Чтобы не отставать и быть в тренде, рекомендуем заказать реконструкцию&nbsp;сайта.</p>@|;<p>If your resource is more than 3-5 years old, you may need such a service. For a more detailed audit and assessment of the relevance of the style and functionality of the resource, you can contact the specialists of Flex-Web. It is likely that a competitor recently appeared on the Internet horizon will be able to entice your long-standing customers. All because the power is in the design. To keep up and be in the trend, we recommend you to order the reconstruction of the site.</p>@|;', '{"\\u0421\\u043b\\u0430\\u0439\\u0434":"upload\\/articles\\/71\\/img\\/71-595125a572172.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 13:23:49', '2017-06-26 15:17:57'),
(72, 13, 0, '', 'Просування@|;Продвижение@|;Promotion@|;', '<p>Контекстна реклама та SEO-просування сайтів у ТОП пошукових систем</p>@|;<p>Контекстная реклама и SEO-продвижение сайтов в TOP поисковых систем</p>@|;<p>Contextual advertising and SEO-promotion of sites in TOP search engines</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/72\\/img\\/72-59510ba98438f.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 13:27:05', '2017-06-26 19:56:08'),
(73, 13, 0, '', 'Веб-дизайн@|;Веб-дизайн@|;Web-design@|;', '<p>Ми знаємо, як ефективно презентувати ваш бренд в інтернеті!</p>@|;<p>Мы знаем, как эффективно презентовать ваш бренд в интернете!</p>@|;<p>We know how to effectively present your brand all over the&nbsp;Internet!</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/73\\/img\\/73-59510be8338d2.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 13:28:08', '2017-06-26 20:06:55'),
(74, 13, 0, '', 'Реконструкція@|;Реконструкция@|;Reconstruction@|;', '<p>Щоб не відставати і бути в тренді, зробіть реконструкцію Вашого сайту.</p>@|;<p>Не отставайте, будьте в тренде, сделайте реконструкцию Вашего сайта.</p>@|;<p>To keep up and be in the trend, make a reconstruction of your site.</p>@|;', '@|;@|;@|;', '{"\\u041a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430 \\u043f\\u043e\\u0441\\u043b\\u0443\\u0433\\u0438":"upload\\/articles\\/74\\/img\\/74-59510c155f5bf.png"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 13:28:53', '2017-06-26 20:05:36'),
(75, 17, 0, '', 'Gidrobud@|;Gidrobud@|;Gidrobud@|;', '<p>Підприємство проводить весь комплекс робіт з будівництва систем водопостачання, водовідведення та каналізації на всій території України.</p>@|;<p>Предприятие проводит весь комплекс работ по строительству систем водоснабжения, водоотведения и канализации на всей территории Украины.</p>@|;<p>The enterprise carries out the whole complex of works on the construction of water supply, sanitation and sewage systems throughout Ukraine.</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/gidrobud.kh.ua\\/ru","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/75\\/img\\/75-595173c93edda.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442@|;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442@|;Corporate site@|;"}', '', '[]', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 20:51:20', '2017-06-26 20:59:02'),
(76, 17, 0, '', 'Sonic Empire@|;Sonic Empire@|;Sonic Empire@|;', '<p>Магазин високоякісної та брендової акустики провідних виробників світу</p>@|;<p>Магазин высококачественной и брендовой акустики ведущих производителей мира</p>@|;<p>Shop for high quality and brand acoustics by leading manufacturers in the world</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/sonicempire.com.ua\\/","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/76\\/img\\/76-595177822b9af.png","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u0406\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d@|;\\u0418\\u043d\\u0442\\u0435\\u0440\\u043d\\u0435\\u0442 \\u043c\\u0430\\u0433\\u0430\\u0437\\u0438\\u043d@|;Online shop@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 21:07:14', '2017-06-26 21:07:14'),
(77, 17, 0, '', 'Stalker@|;Stalker@|;Stalker@|;', '<p>&laquo;Stalker&raquo; є офіційним дилером і партнером німецьких компаній Jungheinrich, H&ouml;rmann, Bito, Arntjen.</p>@|;<p>&laquo;Stalker&raquo; является официальным дилером и партнером немецких компаний Jungheinrich, H&ouml;rmann, Bito, Arntjen.</p>@|;<p>&quot;Stalker&quot; is the official dealer and partner of German companies Jungheinrich, H&ouml;rmann, Bito, Arntjen.</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/stalker.com.ua","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/77\\/img\\/77-59517962cce74.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u0411\\u0456\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0430\\u0439\\u0442@|;\\u0411\\u0438\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0430\\u0439\\u0442@|;Business site@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 21:15:14', '2017-06-26 21:15:15'),
(78, 17, 0, '', 'Дорога додому@|;Дорога домой@|;The Way Home@|;', '<p>Приватна садиба в самому серці Карпат - мальовничому містечку Микуличин.</p>@|;<p>Частная усадьба в самом сердце Карпат - живописном городке Микуличин.</p>@|;<p>Private estate in the heart of the Carpathians - a picturesque town of Mykulychyn.</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/doroga-dodomu.com.ua","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/78\\/img\\/78-59517b214ad66.png","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u0411\\u0456\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0430\\u0439\\u0442@|;\\u0411\\u0438\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0430\\u0439\\u0442@|;Business site@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 21:22:41', '2017-06-26 21:22:41'),
(79, 17, 0, '', 'Євроблокцентр@|;Евроблокцентр@|;Evroblockcentr@|;', '<p>Компанія представляє різноманітний вибір будівельних матеріалів від сухих сумішей до покрівель.</p>@|;<p>Компания представляет широкий выбор строительных материалов от сухих смесей к кровельным материалам.</p>@|;<p>The company presents a diverse selection of building materials from dry mixes to roofs.</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/evroblok.com.ua","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/79\\/img\\/79-59517c8a34650.png","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u0411\\u0456\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0430\\u0439\\u0442@|;\\u0411\\u0438\\u0437\\u043d\\u0435\\u0441 \\u0441\\u0430\\u0439\\u0442@|;Business site@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 21:28:42', '2017-06-26 21:28:42'),
(80, 17, 0, '', 'День project@|;День project@|;День project@|;', '<p>Функціональне, комфортне, практичне рішення вашого інтер&#39;єру.</p>@|;<p>Функциональное, комфортное, практичное решение вашего интерьера.</p>@|;<p>Functional, comfortable, practical solution to your interior.</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/dayproject.com.ua","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/80\\/img\\/80-59517f9fdafc3.png","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u0438\\u0439 \\u0441\\u0430\\u0439\\u0442@|;\\u041a\\u043e\\u0440\\u043f\\u043e\\u0440\\u0430\\u0442\\u0438\\u0432\\u043d\\u044b\\u0439 \\u0441\\u0430\\u0439\\u0442@|;Corporate site@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 21:41:51', '2017-06-26 21:41:51'),
(81, 17, 0, '', 'Pomoc wizowa@|;Pomoc wizowa@|;Pomoc wizowa@|;', '<p>Центр надання професійних візових послуг</p>@|;<p>Центр предоставления профессиональных визовых услуг</p>@|;<p>Center for the provision of professional visa services</p>@|;', '@|;@|;@|;', '{"\\u041f\\u043e\\u0441\\u0438\\u043b\\u0430\\u043d\\u043d\\u044f \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442":"http:\\/\\/www.pomocwizowa.in.ua","\\u0413\\u043e\\u043b\\u043e\\u0432\\u043d\\u0430 \\u043a\\u0430\\u0440\\u0442\\u0438\\u043d\\u043a\\u0430":"upload\\/articles\\/81\\/img\\/81-59518156703b4.jpg","\\u0412\\u0456\\u0434\\u043d\\u043e\\u0448\\u0435\\u043d\\u043d\\u044f \\u0434\\u043e \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0456\\u0457 \\u0441\\u0430\\u0439\\u0442\\u0443":"\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433@|;\\u041b\\u0435\\u043d\\u0434\\u0438\\u043d\\u0433@|;Landing page@|;"}', '', '', '', 0, '0000-00-00 00:00:00', '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 1, '2017-06-26 21:49:10', '2017-06-26 21:49:10');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `article_parent`, `link`, `title`, `img`, `short_description`, `description`, `imgs`, `fields`, `date`, `active`, `meta_title`, `meta_description`, `meta_keywords`, `priority`, `created_at`, `updated_at`) VALUES
(13, 0, 0, 'services', 'Послуги@|;Услуги@|;Services@|;', '', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; принесе Вам&nbsp;задоволення, а всім&nbsp;Вашим&nbsp;проектам - успіх!</p>@|;<p>Мы уверены, что сотрудничество со студией &laquo;FLEX-WEB&raquo; доставит Вам удовольствие, а всем Вашим проектам - успех!</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; will bring you pleasure, and all your projects are a success!</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","priority","active"],"attributes":{"Картинка послуги":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, 'FLEX@|;@|;@|;', 'FLEX - create studio@|;@|;@|;', 'flex-web@|;@|;@|;', 9, '2017-05-29 12:29:40', '2017-06-26 20:10:02'),
(14, 0, 0, 'contact', 'Контакти@|;Contacts@|;', '', '@|;@|;', '@|;@|;', '', '{"base":["title"],"attributes":{"Фон сторінки":{"type":"files","lang_active":false,"active":false}}}', '1970-01-01 01:00:00', 1, '@|;@|;', '@|;@|;', '@|;@|;', 0, '2017-05-29 12:31:32', '2017-05-29 12:31:32'),
(15, 0, 0, 'social', 'Соціальні мережі@|;Соціальні мережі@|;Social networks@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","active"],"attributes":{"Ссилка":{"type":"input","lang_active":false,"active":false},"Иконка":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 4, '2017-05-29 12:33:05', '2017-06-23 14:55:48'),
(16, 0, 0, 'news', 'Новини@|;Новости@|;News@|;', '', '<p>Останні&nbsp;новини зі світу розробки сайтів</p>@|;<p>Последние новости из мира разработки сайтов</p>@|;<p>Latest news from the world of site development</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","date","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Картинка новини":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 8, '2017-06-10 19:57:14', '2017-06-26 20:14:04'),
(17, 0, 0, 'portfolio', 'Портфоліо@|;Портфолио@|;Portfolio@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","priority","active"],"attributes":{"Головна картинка":{"type":"files","lang_active":false,"active":false},"Відношення до категорії сайту":{"type":"input","lang_active":true,"active":false},"Посилання на сайт":{"type":"input","lang_active":false,"active":true}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 7, '2017-06-10 20:01:09', '2017-06-26 20:20:28'),
(18, 0, 0, 'slider', 'Слайдер@|;Слайдер@|;Slider@|;', '', '@|;@|;@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","priority","active"],"attributes":{"Слайд":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 10, '2017-06-10 21:48:46', '2017-06-26 19:19:34'),
(19, 0, 0, 'clients', 'Наші клієнти@|;Наши клиенты@|;Our clients@|;', '', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх Вашого бізнесу.</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;FLEX-WEB&raquo; - это 100% успех Вашего бизнеса.</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; is 100% success of your business.</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","priority","active"],"attributes":{"Картинка клієнта":{"type":"files","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 5, '2017-06-22 14:02:20', '2017-06-23 14:55:20'),
(20, 0, 0, 'reviews', 'Відгуки@|;Отзывы@|;Reviews@|;', '', '<p>Ми впевнені, що співпраця зі студією &laquo;FLEX-WEB&raquo; - це 100% успіх Вашого бізнесу.</p>@|;<p>Мы уверенны, что сотрудничество со студией &laquo;FLEX-WEB&raquo; - это 100% успех Вашего бизнеса.</p>@|;<p>We are sure that cooperation with the studio &quot;FLEX-WEB&quot; is 100% success of your business.</p>@|;', '@|;@|;@|;', '[]', '{"base":["title","short_description","description","priority","active","meta_title","meta_description","meta_keywords"],"attributes":{"Фото клієнта":{"type":"files","lang_active":false,"active":false},"Ім''я клієнта":{"type":"input","lang_active":false,"active":false},"Посада клієнта":{"type":"input","lang_active":false,"active":false}}}', '0000-00-00 00:00:00', 1, '@|;@|;@|;', '@|;@|;@|;', '@|;@|;@|;', 6, '2017-06-23 14:51:50', '2017-06-23 14:54:51'),
(21, 0, 0, 'main', 'Головна сторінка@|;Главная страница@|;Main@|;', '', '@|;@|;@|;', '@|;@|;@|;', '', '{"base":[],"attributes":{}}', '1970-01-01 01:00:00', 1, 'Flex-web@|;@|;@|;', 'Flex-web studio@|;@|;@|;', 'flexweb@|;@|;@|;', 0, '2017-06-23 21:38:40', '2017-06-23 21:38:40');

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
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'root', 'info@flexweb.pro', '$2y$10$YUJwamG2gluo9K0eTdKP8ugN5bd2ZuO/7VfppFFN4dm6L.wS/CY6W', 'uOozbGtcPQtfmbfMijNSgs2Q9acgxmtNyD21BcoZ6FPQTps8dZnxjGzWoHEG', '2017-04-03 21:35:00', '2017-06-21 13:29:32'),
(3, 'admin', 'webtestingstudio@gmail.com', '$2y$10$fJOHQD8J1BJiVrhbQyJmlekMsHrj1BVzJrKzfFvtaWHr97ezesWPC', '53AD3bP7TANbr9rxnsxVaS4lGoeit4EyuqaPlBkrkQmkWpHGmXGOeutMaWVs', '2017-06-10 15:47:59', '2017-06-26 13:55:58');

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `langs`
--
ALTER TABLE `langs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `texts`
--
ALTER TABLE `texts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
