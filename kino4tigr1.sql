-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Lis 06, 2024 at 11:34 AM
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
-- Database: `kino4tigr1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `BILETY`
--

CREATE TABLE `BILETY` (
  `ID` bigint(20) NOT NULL,
  `SEANS_ID` bigint(20) NOT NULL,
  `SPRZEDAWCA_ID` bigint(20) NOT NULL,
  `KLIENT_ID` bigint(20) NOT NULL,
  `CENA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BILETY`
--

INSERT INTO `BILETY` (`ID`, `SEANS_ID`, `SPRZEDAWCA_ID`, `KLIENT_ID`, `CENA`) VALUES
(1, 1, 2, 4, 25),
(2, 3, 3, 5, 17),
(3, 2, 1, 1, 21),
(4, 5, 5, 2, 12),
(5, 4, 4, 3, 43);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `FILMY`
--

CREATE TABLE `FILMY` (
  `ID` bigint(20) NOT NULL,
  `TYTUL` varchar(255) NOT NULL,
  `REZYSER` varchar(255) NOT NULL,
  `CZAS_TRWANIA_MIN` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FILMY`
--

INSERT INTO `FILMY` (`ID`, `TYTUL`, `REZYSER`, `CZAS_TRWANIA_MIN`) VALUES
(1, 'Straszny Film', ' Malcolm D. Lee, Keenen Ivory Wayans, David Zucker', 122),
(2, 'Szybcy i Wściekli : Tokio Drift', 'ustin Lin', 102),
(3, 'Tuż po zmroku', 'Benjamin Brewer', 291),
(4, 'Civil War', 'Alex Garland', 212),
(5, 'Diabeł z Przodkowa', 'Cypek', 123);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `FILMY_RODZAJ`
--

CREATE TABLE `FILMY_RODZAJ` (
  `ID` bigint(20) NOT NULL,
  `FILMY_ID` bigint(20) NOT NULL,
  `RODZAJ_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `FILMY_RODZAJ`
--

INSERT INTO `FILMY_RODZAJ` (`ID`, `FILMY_ID`, `RODZAJ_ID`) VALUES
(1, 1, 1),
(2, 2, 5),
(3, 3, 1),
(4, 4, 5),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `KLIENCI`
--

CREATE TABLE `KLIENCI` (
  `ID` bigint(20) NOT NULL,
  `IMIE` varchar(255) NOT NULL,
  `NAZWISKO` varchar(255) NOT NULL,
  `MAIL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `KLIENCI`
--

INSERT INTO `KLIENCI` (`ID`, `IMIE`, `NAZWISKO`, `MAIL`) VALUES
(1, 'Janusz', 'Męczykowski', 'janusz.meczykowski@wp.pl'),
(2, 'Jarosław', 'Kuc', 'jarekcuk@wp.pl'),
(3, 'Andrzej', 'Robinson', 'andrei2@o2.pl'),
(4, 'Piotr', 'Jaszczur', 'detka@grzybno.pl'),
(5, 'Kacper', 'Malinowski', 'malinakapi320@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `RODZAJ_FILMU`
--

CREATE TABLE `RODZAJ_FILMU` (
  `ID` bigint(20) NOT NULL,
  `NAZWA` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `RODZAJ_FILMU`
--

INSERT INTO `RODZAJ_FILMU` (`ID`, `NAZWA`) VALUES
(1, 'Horror'),
(2, 'Komedia'),
(3, 'Romantyczny'),
(4, 'Obyczajowy'),
(5, 'Akcji');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `SALE`
--

CREATE TABLE `SALE` (
  `ID` bigint(20) NOT NULL,
  `ILOSC_MIEJSC` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SALE`
--

INSERT INTO `SALE` (`ID`, `ILOSC_MIEJSC`) VALUES
(1, 200),
(2, 120),
(3, 300),
(4, 145),
(5, 50);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `SEANSE`
--

CREATE TABLE `SEANSE` (
  `ID` bigint(20) NOT NULL,
  `TERMIN` datetime NOT NULL,
  `SALA_ID` bigint(20) NOT NULL,
  `FILM_ID` bigint(20) NOT NULL,
  `LICZBA_WOLNYCH_MIEJSC` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SEANSE`
--

INSERT INTO `SEANSE` (`ID`, `TERMIN`, `SALA_ID`, `FILM_ID`, `LICZBA_WOLNYCH_MIEJSC`) VALUES
(1, '2024-12-13 20:23:44', 3, 2, 95),
(2, '2024-12-14 22:27:14', 4, 1, 20),
(3, '2024-12-15 19:23:34', 1, 3, 25),
(4, '2024-12-16 13:15:59', 2, 5, 70),
(5, '2024-10-15 14:25:50', 5, 4, 12);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `SPRZEDAWCY`
--

CREATE TABLE `SPRZEDAWCY` (
  `ID` bigint(20) NOT NULL,
  `IMIE` varchar(255) NOT NULL,
  `NAZWISKO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SPRZEDAWCY`
--

INSERT INTO `SPRZEDAWCY` (`ID`, `IMIE`, `NAZWISKO`) VALUES
(1, 'Jan', 'Bogucki'),
(2, 'Michał', 'Więcek'),
(3, 'Bożena', 'Michalska'),
(4, 'Krystyna', 'Piętkiewicz'),
(5, 'Maciej', 'Stasiak');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `BILETY`
--
ALTER TABLE `BILETY`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `seans_fk` (`SEANS_ID`),
  ADD KEY `sprzedawca_fk` (`SPRZEDAWCA_ID`),
  ADD KEY `klient_fk` (`KLIENT_ID`);

--
-- Indeksy dla tabeli `FILMY`
--
ALTER TABLE `FILMY`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `FILMY_RODZAJ`
--
ALTER TABLE `FILMY_RODZAJ`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `filmy_fk` (`FILMY_ID`),
  ADD KEY `rodzaj_fk` (`RODZAJ_ID`);

--
-- Indeksy dla tabeli `KLIENCI`
--
ALTER TABLE `KLIENCI`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `RODZAJ_FILMU`
--
ALTER TABLE `RODZAJ_FILMU`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `SALE`
--
ALTER TABLE `SALE`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `SEANSE`
--
ALTER TABLE `SEANSE`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sale_fk` (`SALA_ID`),
  ADD KEY `film_fk` (`FILM_ID`);

--
-- Indeksy dla tabeli `SPRZEDAWCY`
--
ALTER TABLE `SPRZEDAWCY`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BILETY`
--
ALTER TABLE `BILETY`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `FILMY`
--
ALTER TABLE `FILMY`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `FILMY_RODZAJ`
--
ALTER TABLE `FILMY_RODZAJ`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `KLIENCI`
--
ALTER TABLE `KLIENCI`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `RODZAJ_FILMU`
--
ALTER TABLE `RODZAJ_FILMU`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SALE`
--
ALTER TABLE `SALE`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SEANSE`
--
ALTER TABLE `SEANSE`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SPRZEDAWCY`
--
ALTER TABLE `SPRZEDAWCY`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BILETY`
--
ALTER TABLE `BILETY`
  ADD CONSTRAINT `klient_fk` FOREIGN KEY (`KLIENT_ID`) REFERENCES `KLIENCI` (`ID`),
  ADD CONSTRAINT `seans_fk` FOREIGN KEY (`SEANS_ID`) REFERENCES `SEANSE` (`ID`),
  ADD CONSTRAINT `sprzedawca_fk` FOREIGN KEY (`SPRZEDAWCA_ID`) REFERENCES `SPRZEDAWCY` (`ID`);

--
-- Constraints for table `FILMY_RODZAJ`
--
ALTER TABLE `FILMY_RODZAJ`
  ADD CONSTRAINT `filmy_fk` FOREIGN KEY (`FILMY_ID`) REFERENCES `FILMY` (`ID`),
  ADD CONSTRAINT `rodzaj_fk` FOREIGN KEY (`RODZAJ_ID`) REFERENCES `RODZAJ_FILMU` (`ID`);

--
-- Constraints for table `SEANSE`
--
ALTER TABLE `SEANSE`
  ADD CONSTRAINT `film_fk` FOREIGN KEY (`FILM_ID`) REFERENCES `FILMY` (`ID`),
  ADD CONSTRAINT `sale_fk` FOREIGN KEY (`SALA_ID`) REFERENCES `SALE` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
