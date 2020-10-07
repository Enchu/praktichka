-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 07 2020 г., 11:35
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `placplac`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `idbooks` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `avtor` varchar(100) NOT NULL,
  `pricezalog` int(10) NOT NULL,
  `priceprokat` int(10) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `yearofpublishing` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`idbooks`, `name`, `avtor`, `pricezalog`, `priceprokat`, `genre`, `yearofpublishing`) VALUES
(1, 'Горе от ума', 'Александр Грибоедов', 350, 500, 'комедия', '2020-03-05');

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(10) NOT NULL,
  `Fam` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Patronomyc` varchar(100) NOT NULL,
  `DateBirth` date NOT NULL,
  `City` varchar(45) NOT NULL,
  `Street` varchar(45) NOT NULL,
  `House` varchar(45) NOT NULL,
  `Apartment` varchar(45) NOT NULL,
  `Telephone` int(20) NOT NULL,
  `Socialstatus` varchar(100) NOT NULL,
  `Dateregistration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `Fam`, `Name`, `Patronomyc`, `DateBirth`, `City`, `Street`, `House`, `Apartment`, `Telephone`, `Socialstatus`, `Dateregistration`) VALUES
(1, 'Анастафий', 'Сергей', 'Сергеевич', '2020-04-14', 'Москва', 'Фридриха', '12', '5', 915424242, 'Студент', '2020-08-12');

-- --------------------------------------------------------

--
-- Структура таблицы `periodofpublication`
--

CREATE TABLE `periodofpublication` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `numberpublication` int(30) NOT NULL,
  `monthpublication` int(30) NOT NULL,
  `yearofpublishing` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `periodofpublication`
--

INSERT INTO `periodofpublication` (`id`, `name`, `numberpublication`, `monthpublication`, `yearofpublishing`) VALUES
(1, 'Горе от ума', 323132, 12, 1975);

-- --------------------------------------------------------

--
-- Структура таблицы `shitbilet`
--

CREATE TABLE `shitbilet` (
  `idzap` int(10) DEFAULT NULL,
  `idshitbilit` int(10) NOT NULL,
  `idboks` int(10) NOT NULL,
  `dateissue` date NOT NULL,
  `datereturn` date NOT NULL,
  `idstaff` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shitbilet`
--

INSERT INTO `shitbilet` (`idzap`, `idshitbilit`, `idboks`, `dateissue`, `datereturn`, `idstaff`) VALUES
(1, 2, 1, '2020-07-07', '2020-10-02', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `Fam` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Patronomyc` varchar(45) NOT NULL,
  `dateemployment` date NOT NULL,
  `position` varchar(70) NOT NULL,
  `inn` int(15) NOT NULL,
  `retirement` int(20) NOT NULL,
  `passportseries` int(20) NOT NULL,
  `passport number` int(20) NOT NULL,
  `whopassport` varchar(100) NOT NULL,
  `datebirtch` date NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `house` varchar(100) NOT NULL,
  `apartment` varchar(100) NOT NULL,
  `telephone` int(20) NOT NULL,
  `maritalstatus` varchar(45) NOT NULL,
  `numberchildren` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `staff`
--

INSERT INTO `staff` (`id`, `Fam`, `Name`, `Patronomyc`, `dateemployment`, `position`, `inn`, `retirement`, `passportseries`, `passport number`, `whopassport`, `datebirtch`, `city`, `street`, `house`, `apartment`, `telephone`, `maritalstatus`, `numberchildren`) VALUES
(1, 'Фиксик', 'Михаил', 'Сальников', '2019-07-04', 'парп', 123131, 42342, 423243, 43432, 'Григорий Грибоевский', '2020-09-10', 'Москва', 'Большая почтовая', '54', '1', 43242423, 'Чист', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbooks`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `periodofpublication`
--
ALTER TABLE `periodofpublication`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shitbilet`
--
ALTER TABLE `shitbilet`
  ADD PRIMARY KEY (`idshitbilit`),
  ADD KEY `idstaff` (`idstaff`),
  ADD KEY `idboks` (`idboks`),
  ADD KEY `idzap` (`idzap`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `idbooks` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `periodofpublication`
--
ALTER TABLE `periodofpublication`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `shitbilet`
--
ALTER TABLE `shitbilet`
  MODIFY `idshitbilit` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `shitbilet`
--
ALTER TABLE `shitbilet`
  ADD CONSTRAINT `shitbilet_ibfk_1` FOREIGN KEY (`idboks`) REFERENCES `books` (`idbooks`),
  ADD CONSTRAINT `shitbilet_ibfk_2` FOREIGN KEY (`idstaff`) REFERENCES `staff` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
