-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 21 2022 г., 07:56
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
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(11) NOT NULL,
  `caption` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `caption`, `quantity`) VALUES
(1, 'мужские рубашки', 13),
(2, 'женские рубашки', 19),
(3, 'рубашки с длинным рукавом', 32),
(4, 'рубашки с коротким рукавом', 0),
(5, 'мужские брюки', 11),
(6, 'женские брюки', 11),
(7, 'джинсовые рубашки', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id_product` int(11) NOT NULL,
  `id_catalog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id_product`, `id_catalog`) VALUES
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
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `url`) VALUES
(1, '../img_1.jpg'),
(2, '../img_2.jpg'),
(3, '../img_3.jpg'),
(4, '../img_4.jpg'),
(5, '../img_5.jpg'),
(6, '../img_6.jpg'),
(7, '../img_7.jpg'),
(8, '../img_8.jpg'),
(9, '../img_9.jpg'),
(10, '../img_10.jpg'),
(11, '../img_11.jpg'),
(12, '../img_12.jpg'),
(13, '../img_13.jpg'),
(14, '../img_14.jpg'),
(15, '../img_15.jpg'),
(16, '../img_16.jpg'),
(17, '../img_17.jpg'),
(18, '../img_18.jpg'),
(19, '../img_19.jpg'),
(20, '../img_20.jpg'),
(21, '../img_21.jpg'),
(22, '../img_22.jpg'),
(23, '../img_23.jpg'),
(24, '../img_24.jpg'),
(25, '../img_25.jpg'),
(26, '../img_26.jpg'),
(27, '../img_27.jpg'),
(28, '../img_28.jpg'),
(29, '../img_29.jpg'),
(30, '../img_30.jpg'),
(31, '../img_31.jpg'),
(32, '../img_32.jpg'),
(33, '../img_33.jpg'),
(34, '../img_34.jpg'),
(35, '../img_35.jpg'),
(36, '../img_36.jpg'),
(37, '../img_37.jpg'),
(38, '../img_38.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `pictures_product`
--

CREATE TABLE `pictures_product` (
  `id_product` int(11) NOT NULL,
  `id_images` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pictures_product`
--

INSERT INTO `pictures_product` (`id_product`, `id_images`) VALUES
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
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `caption` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(192) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `caption`, `price`, `description`, `preview`) VALUES
(1, 'рубашка medecine', '1376.00', 'Рубашка Medicine выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 1),
(2, 'рубашка defacto', '1799.00', 'Рубашка DeFacto выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 5),
(3, 'рубашка lyle & scott', '3777.00', 'Рубашка Lyle & Scott выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 9),
(4, 'рубашка o\'stin', '1299.00', 'Рубашка O\'stin выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 13),
(5, 'рубашка defacto', '2899.00', 'Рубашка DeFacto. Детали: прямой крой; планка и манжеты на пуговицах; карман на груди.', 5),
(6, 'рубашка colin\'s', '2390.00', 'Рубашка Colin\'s выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 17),
(7, 'рубашка zarina', '2599.00', 'Рубашка Zarina выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 21),
(8, 'брюки fila', '2599.00', 'Рубашка Fila выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 25),
(9, 'брюки sakha', '1799.00', 'Рубашка Sakha выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 29),
(10, 'брюки sakha', '1799.00', 'Рубашка Sakha выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 29),
(11, 'брюки zarina', '3799.00', 'Рубашка Zarina выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 21),
(12, 'брюки oodji', '1699.00', 'Рубашка oodji выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 33),
(13, 'брюки sela', '2599.00', 'Рубашка Sela выполнена из вискозной ткани с клетчатым узором. Детали: прямой крой; отложной воротник; планка и манжеты на пуговицах; карман на груди.', 35);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_catalog` (`id_catalog`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pictures_product`
--
ALTER TABLE `pictures_product`
  ADD KEY `pictures_product_ibfk_1` (`id_images`),
  ADD KEY `pictures_product_ibfk_2` (`id_product`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`preview`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `categories_ibfk_2` FOREIGN KEY (`id_catalog`) REFERENCES `catalog` (`id`);

--
-- Ограничения внешнего ключа таблицы `pictures_product`
--
ALTER TABLE `pictures_product`
  ADD CONSTRAINT `pictures_product_ibfk_1` FOREIGN KEY (`id_images`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `pictures_product_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`preview`) REFERENCES `images` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
