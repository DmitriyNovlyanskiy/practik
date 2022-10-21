-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 21 2022 г., 11:33
-- Версия сервера: 5.6.51
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lamoda`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `caption` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_categories`, `caption`, `description`) VALUES
(1, 'мужские рубашки', 'мужские рубашки'),
(2, 'женские рубашки', 'женские рубашки'),
(3, 'рубашки с длинным рукавом', 'рубашки с длинным рукавом'),
(4, 'рубашки с длинным рукавом', 'рубашки с длинным рукавом'),
(5, 'мужские брюки', 'мужские брюки'),
(6, 'женские брюки', 'женские брюки'),
(7, 'джинсовые рубашки', 'джинсовые рубашки');

-- --------------------------------------------------------

--
-- Структура таблицы `img`
--

CREATE TABLE `img` (
  `id_img` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `img`
--

INSERT INTO `img` (`id_img`, `url`, `alt`) VALUES
(1, '../img_1.jpg', 'картинка 1'),
(2, '../img_2.jpg', 'картинка 2'),
(3, '../img_3.jpg', 'картинка 3'),
(4, '../img_4.jpg', 'картинка 4'),
(5, '../img_5.jpg', 'картинка 5'),
(6, '../img_6.jpg', 'картинка 1'),
(7, '../img_7.jpg', 'картинка 1'),
(8, '../img_8.jpg', 'картинка 1'),
(9, '../img_9.jpg', 'картинка 1'),
(10, '../img_10.jpg', 'картинка 1'),
(11, '../img_11.jpg', 'картинка 1'),
(12, '../img_12.jpg', 'картинка 1'),
(13, '../img_13.jpg', 'картинка 1'),
(14, '../img_14.jpg', 'картинка 1'),
(15, '../img_15.jpg', 'картинка 1'),
(16, '../img_16.jpg', 'картинка 1'),
(17, '../img_17.jpg', 'картинка 1'),
(18, '../img_18.jpg', 'картинка 1'),
(19, '../img_19.jpg', 'картинка 1'),
(20, '../img_20.jpg', 'картинка 1'),
(21, '../img_21.jpg', 'картинка 1'),
(22, '../img_22.jpg', 'картинка 1'),
(23, '../img_23.jpg', 'картинка 1'),
(24, '../img_24.jpg', 'картинка 1'),
(25, '../img_25.jpg', 'картинка 1'),
(26, '../img_26.jpg', 'картинка 1'),
(27, '../img_27.jpg', 'картинка 1'),
(28, '../img_28.jpg', 'картинка 1'),
(29, '../img_29.jpg', 'картинка 1'),
(30, '../img_30.jpg', 'картинка 1'),
(31, '../img_31.jpg', 'картинка 1'),
(32, '../img_32.jpg', 'картинка 1'),
(33, '../img_33.jpg', 'картинка 1'),
(34, '../img_34.jpg', 'картинка 1'),
(35, '../img_35.jpg', 'картинка 1'),
(36, '../img_36.jpg', 'картинка 36'),
(37, '../img_37.jpg', 'картинка 37'),
(38, '../img_38.jpg', 'картинка 38');

-- --------------------------------------------------------

--
-- Структура таблицы `main_categorie`
--

CREATE TABLE `main_categorie` (
  `main_categorie` int(11) NOT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_categorie`
--

INSERT INTO `main_categorie` (`main_categorie`, `id_categories`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 5),
(9, 5),
(10, 6),
(11, 5),
(12, 6),
(13, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `more_categories`
--

CREATE TABLE `more_categories` (
  `id_product` int(11) NOT NULL,
  `id_categories` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `more_categories`
--

INSERT INTO `more_categories` (`id_product`, `id_categories`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(2, 7),
(3, 2),
(3, 3),
(3, 7),
(4, 2),
(4, 3),
(5, 7),
(5, 3),
(6, 2),
(6, 3),
(7, 3),
(7, 7),
(8, 1),
(8, 3),
(9, 5),
(10, 6),
(11, 5),
(12, 6),
(13, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `more_img`
--

CREATE TABLE `more_img` (
  `id_product` int(11) NOT NULL,
  `id_img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `more_img`
--

INSERT INTO `more_img` (`id_product`, `id_img`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(13, 35),
(13, 36),
(13, 37),
(13, 38),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(4, 15),
(4, 16),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(6, 17),
(6, 18),
(6, 19),
(6, 20),
(7, 21),
(7, 22),
(7, 23),
(7, 24),
(8, 25),
(8, 26),
(8, 27),
(8, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(11, 21),
(11, 22),
(11, 23),
(11, 24),
(12, 33),
(12, 34),
(13, 35),
(13, 36),
(13, 37),
(13, 38);

-- --------------------------------------------------------

--
-- Структура таблицы `preview`
--

CREATE TABLE `preview` (
  `main_img` int(11) NOT NULL,
  `id_images` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `preview`
--

INSERT INTO `preview` (`main_img`, `id_images`) VALUES
(1, 1),
(2, 5),
(3, 9),
(4, 13),
(5, 5),
(6, 17),
(7, 21),
(8, 25),
(9, 29),
(10, 29),
(11, 21),
(12, 33),
(13, 35);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `caption` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `price_no_discount` decimal(10,2) NOT NULL,
  `promo_code_price` decimal(10,2) NOT NULL,
  `description` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `caption`, `price`, `price_no_discount`, `promo_code_price`, `description`, `activity`) VALUES
(1, 'рубашка medecine', '1376.00', '0.00', '0.00', 'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(2, 'рубашка defacto', '1799.00', '0.00', '0.00', 'Рубашка DeFacto выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(3, 'рубашка lyle & scott', '3777.00', '0.00', '0.00', 'Рубашка Lyle & Scott выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 0),
(4, 'рубашка o\'stin', '1299.00', '0.00', '0.00', 'Рубашка O\'stin выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(5, 'рубашка defacto', '2899.00', '0.00', '0.00', 'Рубашка DeFacto. Детали: прямой крой; планка и манжеты на пуговицах; карман на груди.', 1),
(6, 'рубашка colin\'s', '2390.00', '0.00', '0.00', 'Рубашка Colin\'s выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(7, 'рубашка zarina', '2599.00', '0.00', '0.00', 'Рубашка Zarina выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(8, 'брюки fila', '2599.00', '0.00', '0.00', 'Рубашка Fila выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 0),
(9, 'брюки sakha', '1799.00', '0.00', '0.00', 'Рубашка Sakha выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 0),
(10, 'брюки sakha', '1799.00', '0.00', '0.00', 'Рубашка Sakha выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 0),
(11, 'брюки zarina', '3799.00', '0.00', '0.00', 'Рубашка Zarina выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(12, 'брюки oodji', '1699.00', '0.00', '0.00', 'Рубашка oodji выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(13, 'брюки sela', '2599.00', '0.00', '0.00', 'Рубашка Sela выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Индексы таблицы `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id_img`);

--
-- Индексы таблицы `main_categorie`
--
ALTER TABLE `main_categorie`
  ADD KEY `id_categories` (`id_categories`),
  ADD KEY `main_categorie_ibfk_2` (`main_categorie`);

--
-- Индексы таблицы `more_categories`
--
ALTER TABLE `more_categories`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_catalog` (`id_categories`);

--
-- Индексы таблицы `more_img`
--
ALTER TABLE `more_img`
  ADD KEY `pictures_product_ibfk_1` (`id_img`),
  ADD KEY `pictures_product_ibfk_2` (`id_product`);

--
-- Индексы таблицы `preview`
--
ALTER TABLE `preview`
  ADD KEY `id_images` (`id_images`),
  ADD KEY `main_img` (`main_img`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categories` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `img`
--
ALTER TABLE `img`
  MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `main_categorie`
--
ALTER TABLE `main_categorie`
  ADD CONSTRAINT `main_categorie_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`),
  ADD CONSTRAINT `main_categorie_ibfk_2` FOREIGN KEY (`main_categorie`) REFERENCES `product` (`id`);

--
-- Ограничения внешнего ключа таблицы `more_categories`
--
ALTER TABLE `more_categories`
  ADD CONSTRAINT `more_categories_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `more_categories_ibfk_2` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`);

--
-- Ограничения внешнего ключа таблицы `more_img`
--
ALTER TABLE `more_img`
  ADD CONSTRAINT `more_img_ibfk_1` FOREIGN KEY (`id_img`) REFERENCES `img` (`id_img`),
  ADD CONSTRAINT `more_img_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Ограничения внешнего ключа таблицы `preview`
--
ALTER TABLE `preview`
  ADD CONSTRAINT `preview_ibfk_1` FOREIGN KEY (`id_images`) REFERENCES `img` (`id_img`),
  ADD CONSTRAINT `preview_ibfk_2` FOREIGN KEY (`main_img`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
