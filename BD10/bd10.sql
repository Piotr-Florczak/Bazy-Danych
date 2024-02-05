-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lut 2024, 14:40
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bd10`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `panstwa_txt`
--

CREATE TABLE `panstwa_txt` (
  `id` int(2) NOT NULL,
  `panstwo` varchar(20) DEFAULT NULL,
  `powierzchnia` decimal(8,2) DEFAULT NULL,
  `ludnosc` int(9) DEFAULT NULL,
  `domena` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `panstwa_txt`
--

INSERT INTO `panstwa_txt` (`id`, `panstwo`, `powierzchnia`, `ludnosc`, `domena`) VALUES
(1, 'albania', '28748.00', 3039000, 'al'),
(2, 'andora', '468.00', 85600, 'ad'),
(3, 'austria', '83879.00', 8856000, 'at'),
(4, 'belgia', '30528.00', 11779000, 'be'),
(5, 'białoruś', '207600.00', 9340000, 'by'),
(6, 'bośnia i hercegowina', '51197.00', 3507000, 'ba'),
(7, 'bułgaria', '110910.00', 7061000, 'bg'),
(8, 'chorwacja', '56594.00', 4149000, 'hr'),
(9, 'czarnogóra', '13812.00', 623000, 'me'),
(10, 'czechy', '78879.00', 10500000, 'cz'),
(11, 'dania', '43098.00', 5823000, 'dk'),
(12, 'estonia', '45339.00', 1328000, 'ee'),
(13, 'finlandia', '338145.00', 5531000, 'fi'),
(14, 'francja', '643801.00', 64898000, 'fr'),
(15, 'grecja', '131957.00', 10432000, 'gr'),
(16, 'hiszpania', '505944.00', 47327000, 'es'),
(17, 'holandia', '41526.00', 17476000, 'nl'),
(18, 'irlandia', '70273.00', 5225000, 'ie'),
(19, 'islandia', '103125.00', 369000, 'is'),
(20, 'kosowo', '10887.00', 1920000, 'null'),
(21, 'lichtenstein', '160.00', 39711, 'li'),
(22, 'litwa', '65300.00', 2802000, 'lt'),
(23, 'luxemburg', '2586.00', 634700, 'lu'),
(24, 'łotwa', '64573.00', 1950000, 'lv'),
(25, 'macedonia północna', '25713.00', 2076000, 'mk'),
(26, 'mołdawia', '33843.00', 3553000, 'md'),
(27, 'niemcy', '357578.00', 83500000, 'de'),
(28, 'norwegia', '385207.00', 5425000, 'no'),
(29, 'polska', '312696.00', 37500000, 'pl'),
(30, 'portugalia', '92391.00', 10345000, 'pt'),
(31, 'rosja', '999999.99', 116990000, 'ru'),
(32, 'rumunia', '238391.00', 21230000, 'ro'),
(33, 'san marino', '61.00', 33600, 'sm'),
(34, 'serbia', '88361.00', 6974000, 'rs'),
(35, 'słowacja', '49035.00', 5446000, 'sk'),
(36, 'słowenia', '20273.00', 2107000, 'si'),
(37, 'szwajcaria', '41285.00', 8670000, 'ch'),
(38, 'szwecja', '450295.00', 10328000, 'se'),
(39, 'ukraina', '603700.00', 41167000, 'ua'),
(40, 'watykan', '0.44', 825, 'va'),
(41, 'węgry', '93030.00', 9728000, 'hu'),
(42, 'wielka brytania', '244820.00', 67081000, 'uk'),
(43, 'włochy', '302072.00', 60484000, 'it');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stolice_txt`
--

CREATE TABLE `stolice_txt` (
  `id` int(2) NOT NULL,
  `stolica` varchar(10) DEFAULT NULL,
  `id_panstwa` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `stolice_txt`
--

INSERT INTO `stolice_txt` (`id`, `stolica`, `id_panstwa`) VALUES
(1, 'amsterdam', 17),
(2, 'andora', 2),
(3, 'ateny', 15),
(4, 'belgrad', 34),
(5, 'berlin', 27),
(6, 'berno', 37),
(7, 'bratysława', 35),
(8, 'bruksela', 4),
(9, 'budapeszt', 41),
(10, 'bukareszt', 32),
(11, 'dublin', 18),
(12, 'helsinki', 13),
(13, 'kijów', 39),
(14, 'kiszyniów', 26),
(15, 'kopenhaga', 11),
(16, 'lizbona', 30),
(17, 'londyn', 42),
(18, 'lublana', 36),
(19, 'luxemburg', 23),
(20, 'madryt', 16),
(21, 'mińsk', 5),
(22, 'moskwa', 31),
(23, 'oslo', 28),
(24, 'paryż', 14),
(25, 'podgorica', 9),
(26, 'praga', 10),
(27, 'prisztina', 20),
(28, 'reykjavík', 19),
(29, 'ryga', 24),
(30, 'rzym', 43),
(31, 'san marino', 33),
(32, 'sarajewo', 6),
(33, 'skopje', 25),
(34, 'sofia', 7),
(35, 'sztokholm', 38),
(36, 'talin', 12),
(37, 'tirana', 1),
(38, 'vaduz', 21),
(39, 'warszawa', 29),
(40, 'watykan', 40),
(41, 'wiedeń', 3),
(42, 'wilno', 22),
(43, 'zagrzeb', 8);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `panstwa_txt`
--
ALTER TABLE `panstwa_txt`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stolice_txt`
--
ALTER TABLE `stolice_txt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_panstwa` (`id_panstwa`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `panstwa_txt`
--
ALTER TABLE `panstwa_txt`
  ADD CONSTRAINT `panstwa_txt_ibfk_1` FOREIGN KEY (`id`) REFERENCES `stolice_txt` (`id_panstwa`);

--
-- Ograniczenia dla tabeli `stolice_txt`
--
ALTER TABLE `stolice_txt`
  ADD CONSTRAINT `stolice_txt_ibfk_1` FOREIGN KEY (`id_panstwa`) REFERENCES `panstwa_txt` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
