-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 16, 2023 at 02:06 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `autorzy`
--

CREATE TABLE `autorzy` (
  `IDAutor` int(10) UNSIGNED NOT NULL,
  `Imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `autorzy`
--

INSERT INTO `autorzy` (`IDAutor`, `Imie`, `Nazwisko`) VALUES
(1, 'Henryk', 'Sienkiewicz'),
(2, 'Adam', 'Mickiewicz'),
(4, 'Czesław', 'Miłosz'),
(7, 'Maria', 'Konopnicka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `egzemplarze`
--

CREATE TABLE `egzemplarze` (
  `IDEgzemplarz` int(10) UNSIGNED NOT NULL,
  `KsiazkaID` int(10) UNSIGNED NOT NULL,
  `DoWypozyczenia` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `egzemplarze`
--

INSERT INTO `egzemplarze` (`IDEgzemplarz`, `KsiazkaID`, `DoWypozyczenia`) VALUES
(1, 1, 1),
(2, 1, 1),
(3, 1, 0),
(4, 2, 1),
(5, 2, 1),
(6, 3, 1),
(7, 4, 0),
(8, 4, 1),
(9, 4, 1),
(10, 5, 1),
(11, 5, 0),
(12, 2, 1),
(13, 7, 1),
(14, 7, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ksiazki`
--

CREATE TABLE `ksiazki` (
  `IDKsiazki` int(10) UNSIGNED NOT NULL,
  `AutorID` int(10) UNSIGNED NOT NULL,
  `Tytul` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `Wydawnictwo` text CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `RokWydania` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ksiazki`
--

INSERT INTO `ksiazki` (`IDKsiazki`, `AutorID`, `Tytul`, `Wydawnictwo`, `RokWydania`) VALUES
(1, 1, 'Latarnik', 'Ossolineum', 2002),
(2, 1, 'Bez dogmatu', 'Literka', 1974),
(3, 2, 'Konrad Wallenrod', 'Krokodyl', 1965),
(4, 2, 'Sonety krymskie', 'Ossolineum', 2014),
(5, 2, 'Prelekcje paryskie', 'Ossolineum', 2005),
(7, 4, 'Tło', 'Literka', 2003),
(9, 4, 'Na brzegu rzeki', 'Ossolineum', 1995);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `autorzy`
--
ALTER TABLE `autorzy`
  ADD PRIMARY KEY (`IDAutor`);

--
-- Indeksy dla tabeli `egzemplarze`
--
ALTER TABLE `egzemplarze`
  ADD PRIMARY KEY (`IDEgzemplarz`);

--
-- Indeksy dla tabeli `ksiazki`
--
ALTER TABLE `ksiazki`
  ADD PRIMARY KEY (`IDKsiazki`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autorzy`
--
ALTER TABLE `autorzy`
  MODIFY `IDAutor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `egzemplarze`
--
ALTER TABLE `egzemplarze`
  MODIFY `IDEgzemplarz` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ksiazki`
--
ALTER TABLE `ksiazki`
  MODIFY `IDKsiazki` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
