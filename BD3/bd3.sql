-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 12 Wrz 2023, 14:51
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
-- Baza danych: `bd3`
--
CREATE DATABASE IF NOT EXISTS `bd3` DEFAULT CHARACTER SET ucs2 COLLATE ucs2_polish_ci;
USE `bd3`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontynenty`
--

CREATE TABLE `kontynenty` (
  `id_kontynent` int(10) NOT NULL,
  `kontynent` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kontynenty`
--

INSERT INTO `kontynenty` (`id_kontynent`, `kontynent`) VALUES
(1, 'Azja'),
(2, 'Europa'),
(3, 'Afryka'),
(4, 'Australia'),
(5, 'Ameryka Północna'),
(6, 'Ameryka Południowa'),
(7, 'Antarktyda');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miasta`
--

CREATE TABLE `miasta` (
  `id_miasto` int(10) NOT NULL,
  `miasto` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `ludnosc` int(20) NOT NULL,
  `id_panstwa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `miasta`
--

INSERT INTO `miasta` (`id_miasto`, `miasto`, `ludnosc`, `id_panstwa`) VALUES
(1, 'Szczecin', 397000, 48),
(2, 'Warszawa', 1800000, 1),
(3, 'Gryfino', 19000, 1),
(4, 'Berlin', 3600000, 7),
(5, 'New York', 8300000, 3),
(6, 'Pekin', 21500000, 2),
(7, 'Delhi', 19000000, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `panstwa`
--

CREATE TABLE `panstwa` (
  `id_panstwo` int(10) NOT NULL,
  `panstwo` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `id_kontynent` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `panstwa`
--

INSERT INTO `panstwa` (`id_panstwo`, `panstwo`, `id_kontynent`) VALUES
(1, 'Polska', 2),
(2, 'Chiny', 1),
(3, 'USA', 5),
(4, 'Australia', 4),
(5, 'Nibylandia', 10),
(6, 'Argentyna', 6),
(7, 'Niemcy', 2),
(8, 'Wybrzeże Kości Słoniowej', 3),
(9, 'Burkina Fasso', 3),
(10, 'Indie', 1),
(11, 'Brazylia', 6);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kontynenty`
--
ALTER TABLE `kontynenty`
  ADD PRIMARY KEY (`id_kontynent`);

--
-- Indeksy dla tabeli `miasta`
--
ALTER TABLE `miasta`
  ADD PRIMARY KEY (`id_miasto`),
  ADD KEY `id_panstwa` (`id_panstwa`);

--
-- Indeksy dla tabeli `panstwa`
--
ALTER TABLE `panstwa`
  ADD PRIMARY KEY (`id_panstwo`),
  ADD KEY `id_kontynent` (`id_kontynent`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kontynenty`
--
ALTER TABLE `kontynenty`
  MODIFY `id_kontynent` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `miasta`
--
ALTER TABLE `miasta`
  MODIFY `id_miasto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `panstwa`
--
ALTER TABLE `panstwa`
  MODIFY `id_panstwo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
