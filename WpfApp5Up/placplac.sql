-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 29 2020 г., 14:15
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.1.22

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
  `genre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `Street` int(11) NOT NULL,
  `House` varchar(45) NOT NULL,
  `Apartment` varchar(45) NOT NULL,
  `Telephone` int(20) NOT NULL,
  `Socialstatus` varchar(100) NOT NULL,
  `Dateregistration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shitbilet`
--

CREATE TABLE `shitbilet` (
  `idzap` int(10) NOT NULL,
  `idshitbilit` int(10) NOT NULL,
  `idboks` int(10) NOT NULL,
  `dateissue` int(10) NOT NULL,
  `datereturn` int(10) NOT NULL,
  `idstaff` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`idbooks`);

--
-- Индексы таблицы `shitbilet`
--
ALTER TABLE `shitbilet`
  ADD PRIMARY KEY (`idboks`),
  ADD KEY `idstaff` (`idstaff`),
  ADD KEY `idshitbilit` (`idshitbilit`);

--
-- Индексы таблицы `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
