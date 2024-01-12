-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Sty 2024, 15:02
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
-- Baza danych: `bd9`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `id_pracownika` int(5) NOT NULL,
  `imie` char(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` char(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `pensja` float(6,2) NOT NULL,
  `data_dodania` datetime DEFAULT NULL,
  `data_mod` datetime DEFAULT NULL,
  `pop_pensja` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `pracownik`
--

INSERT INTO `pracownik` (`id_pracownika`, `imie`, `nazwisko`, `pensja`, `data_dodania`, `data_mod`, `pop_pensja`) VALUES
(1, 'John', 'Smith', 3400.00, '2024-01-08 14:30:38', '2024-01-08 14:31:18', 2500);

--
-- Wyzwalacze `pracownik`
--
DELIMITER $$
CREATE TRIGGER `data_dodania` BEFORE INSERT ON `pracownik` FOR EACH ROW BEGIN
 SET NEW.data_dodania = now();
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modyfikacja` BEFORE UPDATE ON `pracownik` FOR EACH ROW BEGIN
 SET NEW.data_mod = now();
 IF NEW.pensja!=OLD.pensja THEN
 SET NEW.pop_pensja = OLD.pensja;
 END IF;
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `pracownik_onDel` BEFORE DELETE ON `pracownik` FOR EACH ROW BEGIN
 
 INSERT INTO `pracownik_del`(`id_pracownika`, `imie`, `nazwisko`, `pensja`, `data_dodania`, `data_mod`, `pop_pensja`, `data_skasowania`) VALUES (OLD.id_pracownika,OLD.imie,OLD.nazwisko,OLD.pensja,OLD.data_dodania,OLD.data_mod,OLD.pop_pensja,NOW());
 END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik_del`
--

CREATE TABLE `pracownik_del` (
  `id_pracownika` int(5) NOT NULL,
  `imie` char(20) COLLATE utf8mb4_polish_ci NOT NULL,
  `nazwisko` char(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `pensja` float(6,2) NOT NULL,
  `data_dodania` datetime DEFAULT NULL,
  `data_mod` datetime DEFAULT NULL,
  `pop_pensja` float DEFAULT NULL,
  `data_skasowania` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanowiska`
--

CREATE TABLE `stanowiska` (
  `id_pracownika` int(11) NOT NULL,
  `stanowisko` text COLLATE utf8mb4_polish_ci NOT NULL,
  `numer_pokoju` float NOT NULL,
  `data_stanowisko` datetime NOT NULL,
  `data_mod` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `stanowiska`
--

INSERT INTO `stanowiska` (`id_pracownika`, `stanowisko`, `numer_pokoju`, `data_stanowisko`, `data_mod`) VALUES
(1, 'Informatyk', 101, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Operator_kamery', 102, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Starszy_Programista', 103, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Młodszy_Programista', 103, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'pracownik', 1, '2024-01-08 14:59:06', '0000-00-00 00:00:00');

--
-- Wyzwalacze `stanowiska`
--
DELIMITER $$
CREATE TRIGGER `data_dodania_zatrudnienie` BEFORE INSERT ON `stanowiska` FOR EACH ROW BEGIN
 SET NEW.data_stanowisko = now();
 END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `modyfikacja_zatrudnienie` BEFORE UPDATE ON `stanowiska` FOR EACH ROW BEGIN
 SET NEW.data_mod = now();
 END
$$
DELIMITER ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indeksy dla tabeli `pracownik_del`
--
ALTER TABLE `pracownik_del`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indeksy dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `id_pracownika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
