-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 18 2021 г., 09:51
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kv`
--

-- --------------------------------------------------------

--
-- Структура таблицы `currency_page`
--

CREATE TABLE `currency_page` (
  `id_page` int(11) NOT NULL,
  `id_val` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `currency_page`
--

INSERT INTO `currency_page` (`id_page`, `id_val`) VALUES
(4, 7),
(1, 15),
(3, 16),
(2, 49);

-- --------------------------------------------------------

--
-- Структура таблицы `kod_val`
--

CREATE TABLE `kod_val` (
  `id_val` int(11) NOT NULL,
  `ID` varchar(7) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `EngName` varchar(22) DEFAULT NULL,
  `Nominal` int(6) DEFAULT NULL,
  `ParentCode` varchar(6) DEFAULT NULL,
  `ISO_Num_Code` varchar(3) DEFAULT NULL,
  `ISO_Char_Code` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `kod_val`
--

INSERT INTO `kod_val` (`id_val`, `ID`, `Name`, `EngName`, `Nominal`, `ParentCode`, `ISO_Num_Code`, `ISO_Char_Code`) VALUES
(1, 'R01010', 'Австралийский доллар', 'Australian Dollar', 1, 'R01010', '36', 'AUD'),
(2, 'R01015', 'Австрийский шиллинг', 'Austrian Shilling', 1000, 'R01015', '40', 'ATS'),
(3, 'R01020A', 'Азербайджанский манат', 'Azerbaijan Manat', 1, 'R01020', '944', 'AZN'),
(4, 'R01035', 'Фунт стерлингов Соединенного королевства', 'British Pound Sterling', 1, 'R01035', '826', 'GBP'),
(5, 'R01040F', 'Ангольская новая кванза', 'Angolan new Kwanza', 100000, 'R01040', '24', 'AON'),
(6, 'R01060', 'Армянский драм', 'Armenia Dram', 1000, 'R01060', '51', 'AMD'),
(7, 'R01090B', 'Белорусский рубль', 'Belarussian Ruble', 1, 'R01090', '933', 'BYN'),
(8, 'R01095', 'Бельгийский франк', 'Belgium Franc', 1000, 'R01095', '56', 'BEF'),
(9, 'R01100', 'Болгарский лев', 'Bulgarian lev', 1, 'R01100', '975', 'BGN'),
(10, 'R01115', 'Бразильский реал', 'Brazil Real', 1, 'R01115', '986', 'BRL'),
(11, 'R01135', 'Венгерский форинт', 'Hungarian Forint', 100, 'R01135', '348', 'HUF'),
(12, 'R01200', 'Гонконгский доллар', 'Hong Kong Dollar', 10, 'R01200', '344', 'HKD'),
(13, 'R01205', 'Греческая драхма', 'Greek Drachma', 10000, 'R01205', '300', 'GRD'),
(14, 'R01215', 'Датская крона', 'Danish Krone', 10, 'R01215', '208', 'DKK'),
(15, 'R01235', 'Доллар США', 'US Dollar', 1, 'R01235', '840', 'USD'),
(16, 'R01239', 'Евро', 'Euro', 1, 'R01239', '978', 'EUR'),
(17, 'R01270', 'Индийская рупия', 'Indian Rupee', 100, 'R01270', '356', 'INR'),
(18, 'R01305', 'Ирландский фунт', 'Irish Pound', 100, 'R01305', '372', 'IEP'),
(19, 'R01310', 'Исландская крона', 'Iceland Krona', 10000, 'R01310', '352', 'ISK'),
(20, 'R01315', 'Испанская песета', 'Spanish Peseta', 10000, 'R01315', '724', 'ESP'),
(21, 'R01325', 'Итальянская лира', 'Italian Lira', 100000, 'R01325', '380', 'ITL'),
(22, 'R01335', 'Казахстанский тенге', 'Kazakhstan Tenge', 100, 'R01335', '398', 'KZT'),
(23, 'R01350', 'Канадский доллар', 'Canadian Dollar', 1, 'R01350', '124', 'CAD'),
(24, 'R01370', 'Киргизский сом', 'Kyrgyzstan Som', 100, 'R01370', '417', 'KGS'),
(25, 'R01375', 'Китайский юань', 'China Yuan', 10, 'R01375', '156', 'CNY'),
(26, 'R01390', 'Кувейтский динар', 'Kuwaiti Dinar', 10, 'R01390', '414', 'KWD'),
(27, 'R01405', 'Латвийский лат', 'Latvian Lat', 1, 'R01405', '428', 'LVL'),
(28, 'R01420', 'Ливанский фунт', 'Lebanese Pound', 100000, 'R01420', '422', 'LBP'),
(29, 'R01435', 'Литовский лит', 'Lithuanian Lita', 1, 'R01435', '440', 'LTL'),
(30, 'R01436', 'Литовский талон', 'Lithuanian talon', 1, 'R01435', '', ''),
(31, 'R01500', 'Молдавский лей', 'Moldova Lei', 10, 'R01500', '498', 'MDL'),
(32, 'R01510', 'Немецкая марка', 'Deutsche Mark', 1, 'R01510', '276', 'DEM'),
(33, 'R01510A', 'Немецкая марка', 'Deutsche Mark', 100, 'R01510', '280', 'DEM'),
(34, 'R01523', 'Нидерландский гульден', 'Netherlands Gulden', 100, 'R01523', '528', 'NLG'),
(35, 'R01535', 'Норвежская крона', 'Norwegian Krone', 10, 'R01535', '578', 'NOK'),
(36, 'R01565', 'Польский злотый', 'Polish Zloty', 1, 'R01565', '985', 'PLN'),
(37, 'R01570', 'Португальский эскудо', 'Portuguese Escudo', 10000, 'R01570', '620', 'PTE'),
(38, 'R01585', 'Румынский лей', 'Romanian Leu', 10000, 'R01585', '642', 'ROL'),
(39, 'R01585F', 'Румынский лей', 'Romanian Leu', 10, 'R01585', '946', 'RON'),
(40, 'R01589', 'СДР (специальные права заимствования)', 'SDR', 1, 'R01589', '960', 'XDR'),
(41, 'R01625', 'Сингапурский доллар', 'Singapore Dollar', 1, 'R01625', '702', 'SGD'),
(42, 'R01665A', 'Суринамский доллар', 'Surinam Dollar', 1, 'R01665', '968', 'SRD'),
(43, 'R01670', 'Таджикский сомони', 'Tajikistan Ruble', 10, 'R01670', '972', 'TJS'),
(44, 'R01670B', 'Таджикский рубл', 'Tajikistan Ruble', 10, 'R01670', '762', 'TJR'),
(45, 'R01700J', 'Турецкая лира', 'Turkish Lira', 1, 'R01700', '949', 'TRY'),
(46, 'R01710', 'Туркменский манат', 'Turkmenistan Manat', 10000, 'R01710', '795', 'TMM'),
(47, 'R01710A', 'Новый туркменский манат', 'New Turkmenistan Manat', 1, 'R01710', '934', 'TMT'),
(48, 'R01717', 'Узбекский сум', 'Uzbekistan Sum', 1000, 'R01717', '860', 'UZS'),
(49, 'R01720', 'Украинская гривна', 'Ukrainian Hryvnia', 10, 'R01720', '980', 'UAH'),
(50, 'R01720A', 'Украинский карбованец', 'Ukrainian Hryvnia', 1, 'R01720', '', ''),
(51, 'R01740', 'Финляндская марка', 'Finnish Marka', 100, 'R01740', '246', 'FIM'),
(52, 'R01750', 'Французский франк', 'French Franc', 1000, 'R01750', '250', 'FRF'),
(53, 'R01760', 'Чешская крона', 'Czech Koruna', 10, 'R01760', '203', 'CZK'),
(54, 'R01770', 'Шведская крона', 'Swedish Krona', 10, 'R01770', '752', 'SEK'),
(55, 'R01775', 'Швейцарский франк', 'Swiss Franc', 1, 'R01775', '756', 'CHF'),
(56, 'R01790', 'ЭКЮ', 'ECU', 1, 'R01790', '954', 'XEU'),
(57, 'R01795', 'Эстонская крона', 'Estonian Kroon', 10, 'R01795', '233', 'EEK'),
(58, 'R01805', 'Югославский новый динар', 'Yugoslavian Dinar', 1, 'R01804', '890', 'YUN'),
(59, 'R01810', 'Южноафриканский рэнд', 'S.African Rand', 10, 'R01810', '710', 'ZAR'),
(60, 'R01815', 'Вон Республики Корея', 'South Korean Won', 1000, 'R01815', '410', 'KRW'),
(61, 'R01820', 'Японская иена', 'Japanese Yen', 100, 'R01820', '392', 'JPY');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `currency_page`
--
ALTER TABLE `currency_page`
  ADD PRIMARY KEY (`id_page`),
  ADD KEY `id_val` (`id_val`);

--
-- Индексы таблицы `kod_val`
--
ALTER TABLE `kod_val`
  ADD PRIMARY KEY (`id_val`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `currency_page`
--
ALTER TABLE `currency_page`
  MODIFY `id_page` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `kod_val`
--
ALTER TABLE `kod_val`
  MODIFY `id_val` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `currency_page`
--
ALTER TABLE `currency_page`
  ADD CONSTRAINT `id_val` FOREIGN KEY (`id_val`) REFERENCES `kod_val` (`id_val`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
